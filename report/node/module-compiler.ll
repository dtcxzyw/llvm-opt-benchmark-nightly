inline.NumInlined: 5481
inline.NumDeleted: 2947
begin_hunk_0_@_ZN2v88internal4wasm16CompilationState8SetErrorEv:bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i
  store ptr %i.g, ptr %i.h, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i:    ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EEEvT_S9_.exit.i.i.i, %bb.b
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #29
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl8SetErrorEv.exit

_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl8SetErrorEv.exit: ; preds = %bb.a, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16CompilationState19SetWireBytesStorageESt10shared_ptrINS1_16WireBytesStorageEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load <2 x ptr>, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29
  %i.e = load ptr, ptr %i.c, align 8              ; 8 uses
  store <2 x ptr> %i.d, ptr %i.b, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN2v88internal4wasm16WireBytesStorageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #29, !inline_history !33
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #29, !inline_history !33
  br label %_ZNSt12__shared_ptrIN2v88internal4wasm16WireBytesStorageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt12__shared_ptrIN2v88internal4wasm16WireBytesStorageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !10

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #29
  br label %_ZNSt12__shared_ptrIN2v88internal4wasm16WireBytesStorageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88internal4wasm16WireBytesStorageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal4wasm16CompilationState19GetWireBytesStorageEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.22") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29, !noalias !34
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !noalias !34 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !noalias !34
  store <2 x ptr> %i.e, ptr %0, align 8, !alias.scope !34
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl19GetWireBytesStorageEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !noalias !34
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !noalias !34
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !noalias !34
  br label %_ZNK2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl19GetWireBytesStorageEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !34 ; 0 uses
  br label %_ZNK2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl19GetWireBytesStorageEv.exit

_ZNK2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl19GetWireBytesStorageEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29, !noalias !34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16CompilationState11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS4_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 6 uses
  store ptr null, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = and i32 %i.e, 1
  %.not12.i = icmp eq i32 %i.f, 0
  br i1 %.not12.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext 0) #29, !inline_history !37
  %.pre.i = load i32, ptr %i.d, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ %.pre.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.k = and i32 %i.j, 4
  %.not12.1.i = icmp eq i32 %i.k, 0
  br i1 %.not12.1.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext 2) #29, !inline_history !37
  %.pre15.i = load i32, ptr %i.d, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i32 [ %.pre15.i, %bb.d ], [ %i.j, %bb.c ]
  %i.p = and i32 %i.o, 4
  %.not13.i = icmp eq i32 %i.p, 0
  br i1 %.not13.i, label %bb.f, label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %.not.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.a, ptr %i.r, align 8
  %i.u = load ptr, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.q, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 10 uses
  %i.y = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 4 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #32
  unreachable

_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i1 = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i1)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #31 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  store i64 %i.a, ptr %i.aj, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.x, %i.r
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %2 = sub i64 %i.y, %i.z
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ak = lshr i64 %3, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader15, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.am = add i64 %i.y, -8
  %i.an = sub i64 %i.am, %i.z
  %i.ao = and i64 %i.an, -8
  %i.ap = add i64 %i.ao, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.ap
  %scevgep11 = getelementptr i8, ptr %i.x, i64 %i.ap
  %bound0 = icmp ult ptr %i.ai, %scevgep11
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ai, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.x, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.at ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.x, i64 %i.at ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.au = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !alias.scope !43, !noalias !38
  %wide.load13 = load <2 x i64>, ptr %i.au, align 8, !alias.scope !43, !noalias !38
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !46, !noalias !43
  store <2 x i64> %wide.load13, ptr %i.av, align 8, !alias.scope !46, !noalias !43
  %i.aw = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !alias.scope !43, !noalias !38
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !alias.scope !43, !noalias !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.ay = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !41, !noalias !38
  store i64 %i.ay, ptr %.012.i.i.i.i, align 8, !alias.scope !38, !noalias !41
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !41, !noalias !38
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !51

_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ai, %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i ], [ %i.ar, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  %i.bc = load ptr, ptr %i.s, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.be) #30
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, %bb.j
  store ptr %i.ai, ptr %i.w, align 8
  store ptr %i.bb, ptr %i.q, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.bf, ptr %i.s, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit.thread

_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit.thread: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit, %bb.g
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #29
  br label %_ZNSt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS3_EED2Ev.exit

_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit: ; preds = %bb.e
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #29
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal4wasm24CompilationEventCallbackEEclEPS3_.exit.i

_ZNKSt14default_deleteIN2v88internal4wasm24CompilationEventCallbackEEclEPS3_.exit.i: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit
  %i.bg = load ptr, ptr %i.b, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #29, !inline_history !52
  br label %_ZNSt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit.thread, %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit, %_ZNKSt14default_deleteIN2v88internal4wasm24CompilationEventCallbackEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16CompilationState18TierUpAllFunctionsEv(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::wasm::WasmCodeRefScope", align 8 ; 4 uses
  %2 = alloca %class.DummyDelegate, align 8       ; 5 uses
  %3 = alloca %"class.std::weak_ptr", align 16    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @_ZN2v88internal4wasm16WasmCodeRefScopeC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #29
  %i.f = load ptr, ptr %0, align 8
  %.not51.i = icmp eq i32 %i.e, 0                 ; 2 uses
  br i1 %.not51.i, label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder6CommitEv.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  br label %bb.j

._crit_edge.i:                                    ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit.i
  %i.h = ptrtoint ptr %.sroa.24.1.i to i64        ; 2 uses
  %i.i = icmp eq ptr %.sroa.12.1.i, %.sroa.17.1.i
  br i1 %i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder6CommitEv.exit.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.j = getelementptr i8, ptr %i.f, i64 280
  %.val.val.i.i = load ptr, ptr %i.j, align 8
  %i.k = ptrtoint ptr %.sroa.17.1.i to i64
  %i.l = ptrtoint ptr %.sroa.12.1.i to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl22CommitCompilationUnitsENS_4base6VectorINS1_19WasmCompilationUnitEEES7_(ptr noundef nonnull align 8 dereferenceable(416) %.val.val.i.i, ptr null, i64 0, ptr %.sroa.12.1.i, i64 %i.n)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder6CommitEv.exit.i

_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder6CommitEv.exit.i: ; preds = %bb.b, %._crit_edge.i, %bb.a
  %.sroa.24.0.lcssa64.i = phi i64 [ %i.h, %bb.b ], [ %i.h, %._crit_edge.i ], [ 0, %bb.a ]
  %.sroa.12.0.lcssa63.i = phi ptr [ %.sroa.12.1.i, %bb.b ], [ %.sroa.12.1.i, %._crit_edge.i ], [ null, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl18TierUpAllFunctionsEvE13DummyDelegate, i64 16), ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = load <2 x ptr>, ptr %i.o, align 8
  store <2 x ptr> %i.r, ptr %3, align 16
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt8weak_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder6CommitEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 6 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i24.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i24.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.s, align 4
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.f

_ZNSt8weak_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder6CommitEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_123ExecuteCompilationUnitsESt8weak_ptrINS1_12NativeModuleEEPNS0_8CountersEPNS_11JobDelegateENS2_15CompilationTierE(ptr noundef %3, ptr noundef %i.y, ptr noundef nonnull %2, i32 noundef 1)
  br label %_ZNSt10__weak_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_123ExecuteCompilationUnitsESt8weak_ptrINS1_12NativeModuleEEPNS0_8CountersEPNS_11JobDelegateENS2_15CompilationTierE(ptr noundef %3, ptr noundef %i.aa, ptr noundef nonnull %2, i32 noundef 1)
  %i.ab = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i25.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i25.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.s, align 4             ; 2 uses
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.s, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.ac, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZNSt10__weak_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.ag = load ptr, ptr %i.q, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #29, !inline_history !53
  br label %_ZNSt10__weak_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt10__weak_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %_ZNSt8weak_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i
  %i.aj = phi ptr [ %i.x, %_ZNSt8weak_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i ], [ %i.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i ], [ %i.z, %bb.i ]
  br i1 %.not51.i, label %._crit_edge50.i, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %_ZNSt10__weak_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  br label %bb.r

bb.j:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit.i, %.lr.ph.i
  %.045.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ca, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit.i ] ; 2 uses
  %.sroa.24.044.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.24.1.i, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit.i ] ; 6 uses
  %.sroa.17.043.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.17.1.i, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit.i ] ; 6 uses
  %.sroa.12.042.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.12.1.i, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit.i ] ; 9 uses
  %i.al = load i32, ptr %i.g, align 4
  %i.am = add i32 %i.al, %.045.i                  ; 3 uses
  %i.an = load ptr, ptr %0, align 8
  %i.ao = call noundef ptr @_ZNK2v88internal4wasm12NativeModule7GetCodeEj(ptr noundef nonnull align 8 dereferenceable(552) %i.an, i32 noundef %i.am) #29 ; 2 uses
  %.not23.i = icmp eq ptr %i.ao, null
  br i1 %.not23.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 100
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = and i8 %i.aq, 24
  %i.as = icmp eq i8 %i.ar, 16
  br i1 %i.as, label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not.i.i26.i = icmp eq ptr %.sroa.17.043.i, %.sroa.24.044.i
  br i1 %.not.i.i26.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.am, ptr %.sroa.17.043.i, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.17.043.i, i64 4
  store i8 2, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.17.043.i, i64 5
  store i8 0, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.17.043.i, i64 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit.i

bb.n:                                             ; preds = %bb.l
  %i.aw = ptrtoint ptr %.sroa.24.044.i to i64     ; 2 uses
  %i.ax = ptrtoint ptr %.sroa.12.042.i to i64     ; 3 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 4 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.o, label %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #32
  unreachable

_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.n
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i.i27.i = icmp ne i64 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i.i27.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #31 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay ; 3 uses
  store i32 %i.am, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i8 2, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 5
  store i8 0, ptr %i.bj, align 1
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.12.042.i, %.sroa.24.044.i
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bk = ptrtoaddr ptr %i.bg to i64
  %4 = sub i64 %i.aw, %i.ax
  %5 = add i64 %4, -8                             ; 2 uses
  %i.bl = lshr i64 %5, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  %i.bn = sub i64 %i.bk, %i.ax
  %diff.check = icmp ult i64 %i.bn, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bm, 4611686018427387900     ; 3 uses
  %i.bo = shl i64 %n.vec, 3                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bg, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %.sroa.12.042.i, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.br ; 2 uses
  %next.gep7 = getelementptr i8, ptr %.sroa.12.042.i, i64 %i.br ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.bs = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 4, !alias.scope !57, !noalias !54
  %wide.load8 = load <2 x i64>, ptr %i.bs, align 4, !alias.scope !57, !noalias !54
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !54, !noalias !57
  store <2 x i64> %wide.load8, ptr %i.bt, align 4, !alias.scope !54, !noalias !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.i.i.preheader10:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.12.042.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader10 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.bv = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !57, !noalias !54
  store i64 %i.bv, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !54, !noalias !57
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %.sroa.24.044.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !60

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bg, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.bp, %middle.block ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i25.i.i.i.i = icmp eq ptr %.sroa.12.042.i, null
  br i1 %.not.i25.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.12.042.i, i64 noundef %i.ay) #30
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.p, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i.i
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  br label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit.i

_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit.i: ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.m, %bb.k
  %.sroa.12.1.i = phi ptr [ %.sroa.12.042.i, %bb.k ], [ %i.bg, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %.sroa.12.042.i, %bb.m ] ; 6 uses
  %.sroa.17.1.i = phi ptr [ %.sroa.17.043.i, %bb.k ], [ %i.by, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.av, %bb.m ] ; 3 uses
  %.sroa.24.1.i = phi ptr [ %.sroa.24.044.i, %bb.k ], [ %i.bz, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %.sroa.24.044.i, %bb.m ] ; 2 uses
  %i.ca = add nuw i32 %.045.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ca, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !61

._crit_edge50.i:                                  ; preds = %bb.u, %_ZNSt10__weak_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %.not.i.i.i.i28.i = icmp eq ptr %.sroa.12.0.lcssa63.i, null
  br i1 %.not.i.i.i.i28.i, label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl18TierUpAllFunctionsEv.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge50.i
  %i.cb = ptrtoint ptr %.sroa.12.0.lcssa63.i to i64
  %i.cc = sub i64 %.sroa.24.0.lcssa64.i, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.12.0.lcssa63.i, i64 noundef %i.cc) #30
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl18TierUpAllFunctionsEv.exit

bb.r:                                             ; preds = %bb.u, %.lr.ph49.i
  %.01948.i = phi i32 [ 0, %.lr.ph49.i ], [ %i.co, %bb.u ] ; 2 uses
  %i.cd = load i32, ptr %i.ak, align 4
  %i.ce = add i32 %i.cd, %.01948.i                ; 2 uses
  %i.cf = load ptr, ptr %0, align 8
  %i.cg = call noundef ptr @_ZNK2v88internal4wasm12NativeModule7GetCodeEj(ptr noundef nonnull align 8 dereferenceable(552) %i.cf, i32 noundef %i.ce) #29 ; 2 uses
  %.not.i = icmp eq ptr %i.cg, null
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 100
  %i.ci = load i8, ptr %i.ch, align 4
  %i.cj = and i8 %i.ci, 24
  %i.ck = icmp eq i8 %i.cj, 16
  br i1 %i.ck, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cl = call noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() #29
  %i.cm = load ptr, ptr %i.aj, align 8
  %i.cn = load ptr, ptr %0, align 8
  call void @_ZN2v88internal4wasm10WasmEngine15CompileFunctionEPNS0_8CountersEPNS1_12NativeModuleEjNS1_13ExecutionTierE(ptr noundef nonnull align 8 dereferenceable(8488) %i.cl, ptr noundef %i.cm, ptr noundef %i.cn, i32 noundef %i.ce, i8 noundef signext 2) #29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = add nuw i32 %.01948.i, 1                ; 2 uses
  %exitcond53.not.i = icmp eq i32 %i.co, %i.e
  br i1 %exitcond53.not.i, label %._crit_edge50.i, label %bb.r, !llvm.loop !62

_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl18TierUpAllFunctionsEv.exit: ; preds = %._crit_edge50.i, %bb.q
  call void @_ZN2v88internal4wasm16WasmCodeRefScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16CompilationState22AllowAnotherTopTierJobEj(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i.i = load i32, ptr %i.c, align 8
  %i.d = sub nsw i32 %1, %.val.i.i
  %i.e = sext i32 %i.d to i64
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  store atomic i8 0, ptr %i.g monotonic, align 1
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 576
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 688 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #29
  %i.m = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8__detail9_Map_baseIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS7_ENS_10_Select1stESt8equal_toIjESt4hashIjENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i32 0, ptr %i.n, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16CompilationState37AllowAnotherTopTierJobForAllFunctionsEv(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add i32 %i.g, %i.e                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 688 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #29
  %i.k = icmp ult i32 %i.e, %i.h
  br i1 %i.k, label %.lr.ph.i, label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl37AllowAnotherTopTierJobForAllFunctionsEv.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 600
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.q = zext i32 %i.e to i64
  %wide.trip.count.i = zext i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt13unordered_mapIjN2v88internal4wasm20FunctionTypeFeedbackESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.q, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNSt13unordered_mapIjN2v88internal4wasm20FunctionTypeFeedbackESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread.i ] ; 6 uses
  %.val.i.i = load i32, ptr %i.m, align 8
  %i.r = trunc nuw i64 %indvars.iv.i to i32
  %i.s = sub nsw i32 %i.r, %.val.i.i
  %i.t = sext i32 %i.s to i64
  %i.u = load ptr, ptr %i.l, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store atomic i8 0, ptr %i.v monotonic, align 1
  %i.w = load i64, ptr %i.n, align 8
  %.not.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.not.i.i.i, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.p, %bb.b ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8 ; 4 uses
  %i.x = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.x, label %_ZNSt13unordered_mapIjN2v88internal4wasm20FunctionTypeFeedbackESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp eq i64 %indvars.iv.i, %i.aa
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm21CompileToNativeModuleEPNS0_7IsolateENS1_19WasmEnabledFeaturesENS1_20WasmDetectedFeaturesENS1_18CompileTimeImportsEPNS1_12ErrorThrowerESt10shared_ptrIKNS1_10WasmModuleEENS_4base11OwnedVectorIKhEEiNS_7metrics8Recorder9ContextIdEPNS1_18ProfileInformationE:bb.a
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !noalias !178
  %.not.i.i.i.i35.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i.i35.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fn = load i32, ptr %i.fl, align 4, !noalias !178
  %i.fo = add nsw i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fl, align 4, !noalias !178
  br label %_ZNSt10shared_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.fp = atomicrmw volatile add ptr %i.fl, i32 1 acq_rel, align 4, !noalias !178 ; 0 uses
  br label %_ZNSt10shared_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i: ; preds = %bb.az, %bb.ay, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !178
  %i.fq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !76, !noalias !178, !noundef !77
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.ba, label %.critedge.i.i

bb.ba:                                            ; preds = %_ZNSt10shared_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.55) #32, !noalias !178
  unreachable

.critedge.i.i:                                    ; preds = %_ZNSt10shared_ptrIN2v88internal4wasm12NativeModuleEEC2ERKS4_.exit.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 216 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !178
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fj, i64 280 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !178 ; 8 uses
  %i.fw = call noundef zeroext i1 @_ZN2v84base9TimeTicks16IsHighResolutionEv() #29, !noalias !178
  br i1 %i.fw, label %bb.bb, label %bb.bu

bb.bb:                                            ; preds = %.critedge.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 58656
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 63600
  %i.fz = getelementptr i8, ptr %1, i64 58664
  %.val14.i.i = load ptr, ptr %i.fz, align 8, !noalias !178 ; 2 uses
  %i.ga = load <2 x ptr>, ptr %i.fx, align 8, !noalias !178
  %i.gb = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31, !noalias !184 ; 16 uses
  %.not.i.i.i.i.i38.i = icmp eq ptr %.val14.i.i, null
  br i1 %.not.i.i.i.i.i38.i, label %_ZNSt10shared_ptrIN2v88internal8CountersEEC2ERKS3_.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gc = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 8 ; 3 uses
  %i.gd = load i8, ptr @__libc_single_threaded, align 1, !noalias !184
  %.not.i.i.i.i.i.i39.i = icmp eq i8 %i.gd, 0
  br i1 %.not.i.i.i.i.i.i39.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ge = load i32, ptr %i.gc, align 4, !noalias !184
  %i.gf = add nsw i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gc, align 4, !noalias !184
  br label %_ZNSt10shared_ptrIN2v88internal8CountersEEC2ERKS3_.exit.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.gg = atomicrmw volatile add ptr %i.gc, i32 1 acq_rel, align 4, !noalias !184 ; 0 uses
  br label %_ZNSt10shared_ptrIN2v88internal8CountersEEC2ERKS3_.exit.i.i.i

_ZNSt10shared_ptrIN2v88internal8CountersEEC2ERKS3_.exit.i.i.i: ; preds = %bb.be, %bb.bd, %bb.bb
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 63608
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !184 ; 2 uses
  %i.gj = load <2 x ptr>, ptr %i.fy, align 8, !noalias !184
  %.not.i.i.i5.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i5.i.i.i, label %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt10shared_ptrIN2v88internal8CountersEEC2ERKS3_.exit.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 3 uses
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !noalias !184
  %.not.i.i.i.i6.i.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i6.i.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gm = load i32, ptr %i.gk, align 4, !noalias !184
  %i.gn = add nsw i32 %i.gm, 1
  store i32 %i.gn, ptr %i.gk, align 4, !noalias !184
  br label %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.go = atomicrmw volatile add ptr %i.gk, i32 1 acq_rel, align 4, !noalias !184 ; 0 uses
  br label %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit.i.i.i

_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit.i.i.i: ; preds = %bb.bh, %bb.bg, %_ZNSt10shared_ptrIN2v88internal8CountersEEC2ERKS3_.exit.i.i.i
  br i1 %.not.i.i.i34.i, label %_ZSt11make_uniqueIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackEJRKSt10shared_ptrINS1_8CountersEERKS5_INS1_7metrics8RecorderEERNS0_7metrics8Recorder9ContextIdERS5_INS2_12NativeModuleEENS4_11CompileModeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fk, i64 12 ; 3 uses
  %i.gq = load i8, ptr @__libc_single_threaded, align 1, !noalias !184
  %.not.i.i.i.i8.i.i.i = icmp eq i8 %i.gq, 0
  br i1 %.not.i.i.i.i8.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gr = load i32, ptr %i.gp, align 4, !noalias !184
  %i.gs = add nsw i32 %i.gr, 1
  store i32 %i.gs, ptr %i.gp, align 4, !noalias !184
  br label %_ZSt11make_uniqueIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackEJRKSt10shared_ptrINS1_8CountersEERKS5_INS1_7metrics8RecorderEERNS0_7metrics8Recorder9ContextIdERS5_INS2_12NativeModuleEENS4_11CompileModeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.gt = atomicrmw volatile add ptr %i.gp, i32 1 acq_rel, align 4, !noalias !184 ; 0 uses
  br label %_ZSt11make_uniqueIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackEJRKSt10shared_ptrINS1_8CountersEERKS5_INS1_7metrics8RecorderEERNS0_7metrics8Recorder9ContextIdERS5_INS2_12NativeModuleEENS4_11CompileModeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i

_ZSt11make_uniqueIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackEJRKSt10shared_ptrINS1_8CountersEERKS5_INS1_7metrics8RecorderEERNS0_7metrics8Recorder9ContextIdERS5_INS2_12NativeModuleEENS4_11CompileModeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i: ; preds = %bb.bk, %bb.bj, %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackE, i64 16), ptr %i.gb, align 8, !noalias !184
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gv = call i64 @_ZN2v84base9TimeTicks3NowEv() #29, !noalias !184
  store i64 %i.gv, ptr %i.gu, align 8, !noalias !184
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store <2 x ptr> %i.ga, ptr %i.gw, align 8, !noalias !184
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  store <2 x ptr> %i.gj, ptr %i.gx, align 8, !noalias !184
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  store i64 %9, ptr %i.gy, align 8, !noalias !184
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  store ptr %i.fj, ptr %i.gz, align 8, !noalias !184
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gb, i64 64
  store ptr %i.fk, ptr %i.ha, align 8, !noalias !184
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gb, i64 72
  store i32 0, ptr %i.hb, align 8, !noalias !184
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fv, i64 264 ; 3 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hc) #29, !noalias !178
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fv, i64 296 ; 3 uses
  %i.he = load i32, ptr %i.hd, align 4, !noalias !178 ; 2 uses
  %i.hf = and i32 %i.he, 1
  %.not12.i.i.i = icmp eq i32 %i.hf, 0
  br i1 %.not12.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZSt11make_uniqueIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackEJRKSt10shared_ptrINS1_8CountersEERKS5_INS1_7metrics8RecorderEERNS0_7metrics8Recorder9ContextIdERS5_INS2_12NativeModuleEENS4_11CompileModeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i
  %i.hg = load ptr, ptr %i.gb, align 8, !noalias !178
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !178
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, i8 noundef zeroext 0) #29, !noalias !178, !inline_history !187
  %.pre.i.i.i14 = load i32, ptr %i.hd, align 4, !noalias !178
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZSt11make_uniqueIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackEJRKSt10shared_ptrINS1_8CountersEERKS5_INS1_7metrics8RecorderEERNS0_7metrics8Recorder9ContextIdERS5_INS2_12NativeModuleEENS4_11CompileModeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i
  %i.hj = phi i32 [ %.pre.i.i.i14, %bb.bl ], [ %i.he, %_ZSt11make_uniqueIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackEJRKSt10shared_ptrINS1_8CountersEERKS5_INS1_7metrics8RecorderEERNS0_7metrics8Recorder9ContextIdERS5_INS2_12NativeModuleEENS4_11CompileModeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i ] ; 2 uses
  %i.hk = and i32 %i.hj, 4
  %.not12.1.i.i.i = icmp eq i32 %i.hk, 0
  br i1 %.not12.1.i.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hl = load ptr, ptr %i.gb, align 8, !noalias !178
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !178
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, i8 noundef zeroext 2) #29, !noalias !178, !inline_history !187
  %.pre15.i.i.i = load i32, ptr %i.hd, align 4, !noalias !178
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ho = phi i32 [ %.pre15.i.i.i, %bb.bn ], [ %i.hj, %bb.bm ]
  %i.hp = and i32 %i.ho, 4
  %.not13.i.i.i = icmp eq i32 %i.hp, 0
  br i1 %.not13.i.i.i, label %bb.bp, label %_ZNKSt14default_deleteIN2v88internal4wasm24CompilationEventCallbackEEclEPS3_.exit.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fv, i64 280 ; 4 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !178 ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fv, i64 288 ; 3 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !178
  %.not.i.i.i40.i = icmp eq ptr %i.hr, %i.ht
  br i1 %.not.i.i.i40.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hu = ptrtoint ptr %i.gb to i64
  store i64 %i.hu, ptr %i.hr, align 8, !noalias !178
  %i.hv = load ptr, ptr %i.hq, align 8, !noalias !178
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store ptr %i.hw, ptr %i.hq, align 8, !noalias !178
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit.thread.i.i

bb.br:                                            ; preds = %bb.bp
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fv, i64 272 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !178 ; 10 uses
  %i.hz = ptrtoint ptr %i.hr to i64               ; 3 uses
  %i.ia = ptrtoint ptr %i.hy to i64               ; 4 uses
  %i.ib = sub i64 %i.hz, %i.ia                    ; 3 uses
  %i.ic = icmp eq i64 %i.ib, 9223372036854775800
  br i1 %i.ic, label %bb.bs, label %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #32, !noalias !178
  unreachable

_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.br
  %i.id = ashr exact i64 %i.ib, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.id, i64 1)
  %i.ie = add nsw i64 %.sroa.speculated.i.i.i.i, %i.id ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.id
  %i.ig = call i64 @llvm.umin.i64(i64 %i.ie, i64 1152921504606846975)
  %i.ih = select i1 %i.if, i64 1152921504606846975, i64 %i.ig ; 3 uses
  %.not.i.i32.i.i = icmp ne i64 %i.ih, 0
  call void @llvm.assume(i1 %.not.i.i32.i.i)
  %i.ii = shl nuw nsw i64 %i.ih, 3
  %i.ij = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #31, !noalias !178 ; 10 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ib
  %i.il = ptrtoint ptr %i.gb to i64
  store i64 %i.il, ptr %i.ik, align 8, !noalias !178
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.hy, %i.hr
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %32 = sub i64 %i.hz, %i.ia
  %33 = add i64 %32, -8                           ; 2 uses
  %i.im = lshr i64 %33, 3
  %i.in = add nuw nsw i64 %i.im, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %33, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader86, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.io = add i64 %i.hz, -8
  %i.ip = sub i64 %i.io, %i.ia
  %i.iq = and i64 %i.ip, -8
  %i.ir = add i64 %i.iq, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ij, i64 %i.ir
  %scevgep82 = getelementptr i8, ptr %i.hy, i64 %i.ir
  %bound0 = icmp ult ptr %i.ij, %scevgep82
  %bound1 = icmp ult ptr %i.hy, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader86, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.in, 4611686018427387900     ; 3 uses
  %i.is = shl i64 %n.vec, 3                       ; 2 uses
  %i.it = getelementptr i8, ptr %i.ij, i64 %i.is  ; 2 uses
  %i.iu = getelementptr i8, ptr %i.hy, i64 %i.is
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ij, i64 %i.iv ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.hy, i64 %i.iv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.iw = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep83, align 8, !alias.scope !193, !noalias !196
  %wide.load84 = load <2 x i64>, ptr %i.iw, align 8, !alias.scope !193, !noalias !196
  %i.ix = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !197, !noalias !199
  store <2 x i64> %wide.load84, ptr %i.ix, align 8, !alias.scope !197, !noalias !199
  %i.iy = getelementptr i8, ptr %next.gep83, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep83, align 8, !alias.scope !193, !noalias !196
  store <2 x ptr> splat (ptr null), ptr %i.iy, align 8, !alias.scope !193, !noalias !196
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.in, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader86

.lr.ph.i.i.i.i.i.i.preheader86:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ij, %vector.memcheck ], [ %i.ij, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.it, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.hy, %vector.memcheck ], [ %i.hy, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.iu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader86, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader86 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader86 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.ja = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !191, !noalias !196
  store i64 %i.ja, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !188, !noalias !201
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !191, !noalias !196
  %i.jb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i33.i.i = icmp eq ptr %i.jb, %i.hr
  br i1 %.not.i.i.i.i33.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !202

_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ij, %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.it, %middle.block ], [ %i.jc, %.lr.ph.i.i.i.i.i.i ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i
  %i.je = load ptr, ptr %i.hs, align 8, !noalias !178
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = sub i64 %i.jf, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.jg) #30, !noalias !178
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i: ; preds = %bb.bt, %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i
  store ptr %i.ij, ptr %i.hx, align 8, !noalias !178
  store ptr %i.jd, ptr %i.hq, align 8, !noalias !178
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ih
  store ptr %i.jh, ptr %i.hs, align 8, !noalias !178
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit.thread.i.i

_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit.thread.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, %bb.bq
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hc) #29, !noalias !178
  br label %bb.bu

_ZNKSt14default_deleteIN2v88internal4wasm24CompilationEventCallbackEEclEPS3_.exit.i.i.i: ; preds = %bb.bo
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hc) #29, !noalias !178
  %i.ji = load ptr, ptr %i.gb, align 8, !noalias !178
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !noalias !178
  call void %i.jk(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gb) #29, !noalias !178, !inline_history !203
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm24CompilationEventCallbackEEclEPS3_.exit.i.i.i, %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit.thread.i.i, %.critedge.i.i
  %i.jl = load ptr, ptr %i.fu, align 8, !noalias !204
  %i.jm = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #31, !noalias !207 ; 7 uses
  store ptr %i.fj, ptr %i.jm, align 8, !noalias !207
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jn, i8 0, i64 48, i1 false), !noalias !207
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl29InitializeCompilationProgressEPNS1_18ProfileInformationE(ptr noundef nonnull align 8 dereferenceable(416) %i.jl, ptr noundef readonly %10), !noalias !204
  %i.jo = ptrtoint ptr %i.jm to i64
  store i64 %i.jo, ptr %14, align 8, !noalias !178
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl26InitializeCompilationUnitsESt10unique_ptrINS2_22CompilationUnitBuilderESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(416) %i.fv, ptr noundef %14), !noalias !178
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jq = load ptr, ptr %i.jp, align 8, !noalias !178 ; 3 uses
  %.not.i.i.i.i.i.i.i36.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i.i.i.i.i36.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 48
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !178
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jq to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef %i.jv) #30, !noalias !178
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.bv, %bb.bu
  %i.jw = load ptr, ptr %i.jn, align 8, !noalias !178 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !noalias !178
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = ptrtoint ptr %i.jw to i64
  %i.kb = sub i64 %i.jz, %i.ka
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.kb) #30, !noalias !178
  br label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit.i.i: ; preds = %bb.bw, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef 56) #30, !noalias !178
  %i.kc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 923), align 1, !range !76, !noalias !178, !noundef !77
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ft, i64 704
  %i.kf = load i8, ptr %i.ke, align 8, !noalias !178
  %i.kg = icmp eq i8 %i.kf, 0
  br i1 %i.kg, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29, !noalias !178
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_117ValidateFunctionsERKNS1_12NativeModuleENS2_17OnlyLazyFunctionsE(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef nonnull align 8 dereferenceable(552) %i.fj, i1 noundef zeroext true), !noalias !178
  %i.kh = load i32, ptr %15, align 8, !noalias !178 ; 2 uses
  %.not.i.i = icmp eq i32 %i.kh, -1
  %i.ki = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !noalias !178 ; 3 uses
  br i1 %.not.i.i, label %.critedge13.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void (ptr, ptr, ...) @_ZN2v88internal4wasm12ErrorThrower12CompileErrorEPKcz(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull @.str.81, ptr noundef %i.kj, i32 noundef %i.kh) #29, !noalias !178
  %i.kk = load ptr, ptr %i.ki, align 8, !noalias !178 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bz
  %i.kn = load i64, ptr %i.kl, align 8, !noalias !178
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #30, !noalias !178
  br label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit.i.i

_ZN2v88internal4wasm9WasmErrorD2Ev.exit.i.i:      ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29, !noalias !178
  br label %_ZN2v88internal4wasm12_GLOBAL__N_119CompileNativeModuleEPNS0_7IsolateENS_7metrics8Recorder9ContextIdEPNS1_12ErrorThrowerESt10shared_ptrINS1_12NativeModuleEEPNS1_18ProfileInformationE.exit.i

.critedge13.i.i:                                  ; preds = %bb.by
  %i.kp = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.kq = icmp eq ptr %i.kj, %i.kp
  br i1 %i.kq, label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit21.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19.i.i: ; preds = %.critedge13.i.i
  %i.kr = load i64, ptr %i.kp, align 8, !noalias !178
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.ks) #30, !noalias !178
  br label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit21.i.i

_ZN2v88internal4wasm9WasmErrorD2Ev.exit21.i.i:    ; preds = %.critedge13.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29, !noalias !178
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit21.i.i, %bb.bx, %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.fv, i64 40 ; 2 uses
  %i.ku = load atomic i8, ptr %i.kt monotonic, align 1, !range !76, !noalias !178, !noundef !77
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl25WaitForBaselineCompileJobEv.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kw = getelementptr inbounds nuw i8, ptr %i.fv, i64 216 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !noalias !178 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !178
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 56
end_hunk_1
begin_hunk_2_@_ZNO2v88internal4wasm15AsyncCompileJob13FinishCompileEb:bb.a
  %i.gx = load ptr, ptr %5, align 8
  %.not.i61 = icmp eq ptr %i.gx, null
  br i1 %.not.i61, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit63, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = load atomic volatile i8, ptr %i.gz monotonic, align 1
  %.not1.i62 = icmp eq i8 %i.ha, 0
  br i1 %.not1.i62, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit63, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hb = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #29 ; 2 uses
  %i.hc = load ptr, ptr %i.gy, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hg = load i64, ptr %i.hf, align 8
  %i.hh = load ptr, ptr %i.hb, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(8) %i.hb, ptr noundef %i.hc, ptr noundef %i.he, i64 noundef %i.hg) #29, !inline_history !229
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit63

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit63: ; preds = %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void
}

declare void @_ZN2v88internal4wasm19LoadProfileFromFileEPKNS1_10WasmModuleENS_4base6VectorIKhEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.1148") align 8, ptr noundef, ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl16ApplyPgoInfoLateEPNS1_18ProfileInformationE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [2 x %"class.std::unique_ptr.1514"], align 16 ; 6 uses
  %3 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.a = load atomic volatile i64, ptr @_ZZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl16ApplyPgoInfoLateEPNS1_18ProfileInformationEE29trace_event_unique_atomic3700 acquire, align 8 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #29 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.78) #29 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store atomic volatile i64 %i.h, ptr @_ZZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl16ApplyPgoInfoLateEPNS1_18ProfileInformationEE29trace_event_unique_atomic3700 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr null, ptr %3, align 8
  %i.i = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.j = and i8 %i.i, 5
  %.not48 = icmp eq i8 %i.j, 0
  br i1 %.not48, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.k = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #29 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.106, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %2, i32 noundef 0) #29, !inline_history !221
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #29, !inline_history !222
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.u = load ptr, ptr %2, align 16               ; 3 uses
  %.not.i.1 = icmp eq ptr %i.u, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #29, !inline_history !222
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.106, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.o, ptr %i.aa, align 8
  store ptr %i.y, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.c
  %i.ab = load ptr, ptr %0, align 8               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 216
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #29
  %i.af = load ptr, ptr %1, align 8               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not49103 = icmp eq ptr %i.af, %i.ah
  br i1 %.not49103, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 84
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit, %bb.e
  %.sroa.30.0.lcssa = phi ptr [ null, %bb.e ], [ %.sroa.30.1, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit ] ; 2 uses
  %.sroa.19.0.lcssa = phi ptr [ null, %bb.e ], [ %.sroa.19.1, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %bb.e ], [ %.sroa.12.1, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not50110 = icmp eq ptr %i.al, %i.an
  br i1 %.not50110, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 84
  br label %bb.p

bb.f:                                             ; preds = %.lr.ph, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit
  %.044107 = phi ptr [ %i.af, %.lr.ph ], [ %i.cg, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit ] ; 2 uses
  %.sroa.12.0106 = phi ptr [ null, %.lr.ph ], [ %.sroa.12.1, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit ] ; 9 uses
  %.sroa.19.0105 = phi ptr [ null, %.lr.ph ], [ %.sroa.19.1, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit ] ; 9 uses
  %.sroa.30.0104 = phi ptr [ null, %.lr.ph ], [ %.sroa.30.1, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit ] ; 3 uses
  %i.aq = load i32, ptr %.044107, align 4         ; 3 uses
  %i.ar = load i32, ptr %i.aj, align 4
  %i.as = sub i32 %i.aq, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = load ptr, ptr %i.ai, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  %i.ax = and i8 %i.aw, 51
  %or.cond93 = icmp eq i8 %i.ax, 0
  br i1 %or.cond93, label %bb.g, label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit

bb.g:                                             ; preds = %bb.f
  %i.ay = or disjoint i8 %i.aw, 1
  store i8 %i.ay, ptr %i.av, align 1
  %.not.i.i = icmp eq ptr %.sroa.19.0105, %.sroa.30.0104
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.aq, ptr %.sroa.19.0105, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.19.0105, i64 4
  store i8 1, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.19.0105, i64 5
  store i8 0, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.19.0105, i64 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit

bb.i:                                             ; preds = %bb.g
  %i.bc = ptrtoint ptr %.sroa.19.0105 to i64      ; 2 uses
  %i.bd = ptrtoint ptr %.sroa.12.0106 to i64      ; 3 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 4 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.j, label %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #32
  unreachable

_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #31 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be ; 3 uses
  store i32 %i.aq, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i8 1, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 5
  store i8 0, ptr %i.bp, align 1
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.12.0106, %.sroa.19.0105
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bq = ptrtoaddr ptr %i.bm to i64
  %4 = sub i64 %i.bc, %i.bd
  %5 = add i64 %4, -8                             ; 2 uses
  %i.br = lshr i64 %5, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  %i.bt = sub i64 %i.bq, %i.bd
  %diff.check = icmp ult i64 %i.bt, 32
  %or.cond155 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond155, label %.lr.ph.i.i.i.i.i.i.preheader158, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bs, 4611686018427387900     ; 3 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bm, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %.sroa.12.0106, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.bx ; 2 uses
  %next.gep134 = getelementptr i8, ptr %.sroa.12.0106, i64 %i.bx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.by = getelementptr i8, ptr %next.gep134, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep134, align 4, !alias.scope !249, !noalias !246
  %wide.load135 = load <2 x i64>, ptr %i.by, align 4, !alias.scope !249, !noalias !246
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !246, !noalias !249
  store <2 x i64> %wide.load135, ptr %i.bz, align 4, !alias.scope !246, !noalias !249
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader158

.lr.ph.i.i.i.i.i.i.preheader158:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.12.0106, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader158, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader158 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader158 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.cb = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !249, !noalias !246
  store i64 %i.cb, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !246, !noalias !249
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, %.sroa.19.0105
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !252

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bm, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bv, %middle.block ], [ %i.cd, %.lr.ph.i.i.i.i.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i25.i.i.i = icmp eq ptr %.sroa.12.0106, null
  br i1 %.not.i25.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.12.0106, i64 noundef %i.be) #30
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  br label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit

_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit: ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.h, %bb.f
  %.sroa.30.1 = phi ptr [ %.sroa.30.0104, %bb.h ], [ %.sroa.30.0104, %bb.f ], [ %i.cf, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 2 uses
  %.sroa.19.1 = phi ptr [ %i.bb, %bb.h ], [ %.sroa.19.0105, %bb.f ], [ %i.ce, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0106, %bb.h ], [ %.sroa.12.0106, %bb.f ], [ %i.bm, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.044107, i64 4 ; 2 uses
  %.not49 = icmp eq ptr %i.cg, %i.ah
  br i1 %.not49, label %._crit_edge, label %bb.f

._crit_edge117:                                   ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit71, %._crit_edge
  %.sroa.30.2.lcssa = phi ptr [ %.sroa.30.0.lcssa, %._crit_edge ], [ %.sroa.30.3, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit71 ]
  %.sroa.19.2.lcssa = phi ptr [ %.sroa.19.0.lcssa, %._crit_edge ], [ %.sroa.19.3, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit71 ] ; 2 uses
  %.sroa.12.2.lcssa = phi ptr [ %.sroa.12.0.lcssa, %._crit_edge ], [ %.sroa.12.3, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit71 ] ; 6 uses
  %i.ch = icmp eq ptr %.sroa.12.2.lcssa, %.sroa.19.2.lcssa
  br i1 %i.ch, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge117
  %i.ci = getelementptr i8, ptr %i.ab, i64 280
  %.val.val.i = load ptr, ptr %i.ci, align 8
  %i.cj = ptrtoint ptr %.sroa.19.2.lcssa to i64
  %i.ck = ptrtoint ptr %.sroa.12.2.lcssa to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 3
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl22CommitCompilationUnitsENS_4base6VectorINS1_19WasmCompilationUnitEEES7_(ptr noundef nonnull align 8 dereferenceable(416) %.val.val.i, ptr null, i64 0, ptr %.sroa.12.2.lcssa, i64 %i.cm)
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %._crit_edge117, %bb.l
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #29
  %.not.i.i.i.i56 = icmp eq ptr %.sroa.12.2.lcssa, null
  br i1 %.not.i.i.i.i56, label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.cn = ptrtoint ptr %.sroa.30.2.lcssa to i64
  %i.co = ptrtoint ptr %.sroa.12.2.lcssa to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.12.2.lcssa, i64 noundef %i.cp) #30
  br label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderD2Ev.exit

_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderD2Ev.exit: ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %bb.m
  %i.cq = load ptr, ptr %3, align 8
  %.not.i57 = icmp eq ptr %i.cq, null
  br i1 %.not.i57, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderD2Ev.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = load atomic volatile i8, ptr %i.cs monotonic, align 1
  %.not1.i = icmp eq i8 %i.ct, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #29 ; 2 uses
  %i.cv = load ptr, ptr %i.cr, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = load ptr, ptr %i.cu, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef %i.cv, ptr noundef %i.cx, i64 noundef %i.cz) #29, !inline_history !229
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderD2Ev.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.p:                                             ; preds = %.lr.ph116, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit71
  %.046114 = phi ptr [ %i.al, %.lr.ph116 ], [ %i.ez, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit71 ] ; 2 uses
  %.sroa.12.2113 = phi ptr [ %.sroa.12.0.lcssa, %.lr.ph116 ], [ %.sroa.12.3, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit71 ] ; 9 uses
  %.sroa.19.2112 = phi ptr [ %.sroa.19.0.lcssa, %.lr.ph116 ], [ %.sroa.19.3, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit71 ] ; 9 uses
  %.sroa.30.2111 = phi ptr [ %.sroa.30.0.lcssa, %.lr.ph116 ], [ %.sroa.30.3, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit71 ] ; 3 uses
  %i.dd = load i32, ptr %.046114, align 4         ; 3 uses
  %i.de = load i32, ptr %i.ap, align 4
  %i.df = sub i32 %i.dd, %i.de
  %i.dg = sext i32 %i.df to i64
  %i.dh = load ptr, ptr %i.ao, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1             ; 4 uses
  %i.dk = and i8 %i.dj, 3
  %i.dl = icmp eq i8 %i.dk, 2
  %i.dm = and i8 %i.dj, 12
  %i.dn = icmp eq i8 %i.dm, 8
  %or.cond = or i1 %i.dl, %i.dn
  %i.do = and i8 %i.dj, 48
  %i.dp = icmp eq i8 %i.do, 32
  %or.cond95 = or i1 %i.dp, %or.cond
  br i1 %or.cond95, label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit71, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = and i8 %i.dj, -13
  %i.dr = or disjoint i8 %i.dq, 8
  store i8 %i.dr, ptr %i.di, align 1
  %.not.i.i58 = icmp eq ptr %.sroa.19.2112, %.sroa.30.2111
  br i1 %.not.i.i58, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.dd, ptr %.sroa.19.2112, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.19.2112, i64 4
  store i8 2, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.19.2112, i64 5
  store i8 0, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.19.2112, i64 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit71

bb.s:                                             ; preds = %bb.q
  %i.dv = ptrtoint ptr %.sroa.19.2112 to i64      ; 2 uses
  %i.dw = ptrtoint ptr %.sroa.12.2113 to i64      ; 3 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 4 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775800
  br i1 %i.dy, label %bb.t, label %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i59

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #32
  unreachable

_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i59: ; preds = %bb.s
  %i.dz = ashr exact i64 %i.dx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i60 = call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i.i60, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = call i64 @llvm.umin.i64(i64 %i.ea, i64 1152921504606846975)
  %i.ed = select i1 %i.eb, i64 1152921504606846975, i64 %i.ec ; 3 uses
  %.not.i.i.i.i61 = icmp ne i64 %i.ed, 0
  call void @llvm.assume(i1 %.not.i.i.i.i61)
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #31 ; 8 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dx ; 3 uses
  store i32 %i.dd, ptr %i.eg, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i8 2, ptr %i.eh, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 5
  store i8 0, ptr %i.ei, align 1
  %.not10.i.i.i.i.i.i62 = icmp eq ptr %.sroa.12.2113, %.sroa.19.2112
  br i1 %.not10.i.i.i.i.i.i62, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i67, label %.lr.ph.i.i.i.i.i.i63.preheader

.lr.ph.i.i.i.i.i.i63.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i59
  %i.ej = ptrtoaddr ptr %i.ef to i64
  %6 = sub i64 %i.dv, %i.dw
  %7 = add i64 %6, -8                             ; 2 uses
  %i.ek = lshr i64 %7, 3
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check140 = icmp ult i64 %7, 24
  %i.em = sub i64 %i.ej, %i.dw
  %diff.check138 = icmp ult i64 %i.em, 32
  %or.cond156 = or i1 %min.iters.check140, %diff.check138
  br i1 %or.cond156, label %.lr.ph.i.i.i.i.i.i63.preheader157, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph.i.i.i.i.i.i63.preheader
  %n.vec143 = and i64 %i.el, 4611686018427387900  ; 3 uses
  %i.en = shl i64 %n.vec143, 3                    ; 2 uses
  %i.eo = getelementptr i8, ptr %i.ef, i64 %i.en  ; 2 uses
  %i.ep = getelementptr i8, ptr %.sroa.12.2113, i64 %i.en
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph141
  %index145 = phi i64 [ 0, %vector.ph141 ], [ %index.next150, %vector.body144 ] ; 2 uses
  %i.eq = shl i64 %index145, 3                    ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.ef, i64 %i.eq ; 2 uses
  %next.gep147 = getelementptr i8, ptr %.sroa.12.2113, i64 %i.eq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.er = getelementptr i8, ptr %next.gep147, i64 16
  %wide.load148 = load <2 x i64>, ptr %next.gep147, align 4, !alias.scope !256, !noalias !253
  %wide.load149 = load <2 x i64>, ptr %i.er, align 4, !alias.scope !256, !noalias !253
  %i.es = getelementptr i8, ptr %next.gep146, i64 16
  store <2 x i64> %wide.load148, ptr %next.gep146, align 4, !alias.scope !253, !noalias !256
  store <2 x i64> %wide.load149, ptr %i.es, align 4, !alias.scope !253, !noalias !256
  %index.next150 = add nuw i64 %index145, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next150, %n.vec143
  br i1 %i.et, label %middle.block151, label %vector.body144, !llvm.loop !258

middle.block151:                                  ; preds = %vector.body144
  %cmp.n152 = icmp eq i64 %i.el, %n.vec143
  br i1 %cmp.n152, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i67, label %.lr.ph.i.i.i.i.i.i63.preheader157

.lr.ph.i.i.i.i.i.i63.preheader157:                ; preds = %.lr.ph.i.i.i.i.i.i63.preheader, %middle.block151
  %.012.i.i.i.i.i.i64.ph = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i63.preheader ], [ %i.eo, %middle.block151 ]
  %.0911.i.i.i.i.i.i65.ph = phi ptr [ %.sroa.12.2113, %.lr.ph.i.i.i.i.i.i63.preheader ], [ %i.ep, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i63

.lr.ph.i.i.i.i.i.i63:                             ; preds = %.lr.ph.i.i.i.i.i.i63.preheader157, %.lr.ph.i.i.i.i.i.i63
  %.012.i.i.i.i.i.i64 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.i63 ], [ %.012.i.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i.i63.preheader157 ] ; 2 uses
  %.0911.i.i.i.i.i.i65 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i63 ], [ %.0911.i.i.i.i.i.i65.ph, %.lr.ph.i.i.i.i.i.i63.preheader157 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.eu = load i64, ptr %.0911.i.i.i.i.i.i65, align 4, !alias.scope !256, !noalias !253
  store i64 %i.eu, ptr %.012.i.i.i.i.i.i64, align 4, !alias.scope !253, !noalias !256
  %i.ev = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i65, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i64, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i66 = icmp eq ptr %i.ev, %.sroa.19.2112
  br i1 %.not.i.i.i.i.i.i66, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i67, label %.lr.ph.i.i.i.i.i.i63, !llvm.loop !259

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i67: ; preds = %.lr.ph.i.i.i.i.i.i63, %middle.block151, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i59
  %.0.lcssa.i.i.i.i.i.i68 = phi ptr [ %i.ef, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i59 ], [ %i.eo, %middle.block151 ], [ %i.ew, %.lr.ph.i.i.i.i.i.i63 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i68, i64 8
  %.not.i25.i.i.i69 = icmp eq ptr %.sroa.12.2113, null
  br i1 %.not.i25.i.i.i69, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i70, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i67
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.12.2113, i64 noundef %i.dx) #30
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i70

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i70: ; preds = %bb.u, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i67
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ed
  br label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit71

_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit71: ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i70, %bb.r, %bb.p
  %.sroa.30.3 = phi ptr [ %.sroa.30.2111, %bb.p ], [ %.sroa.30.2111, %bb.r ], [ %i.ey, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i70 ] ; 2 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.2112, %bb.p ], [ %i.du, %bb.r ], [ %i.ex, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i70 ] ; 2 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.2113, %bb.p ], [ %.sroa.12.2113, %bb.r ], [ %i.ef, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i70 ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.046114, i64 4 ; 2 uses
  %.not50 = icmp eq ptr %i.ez, %i.an
  br i1 %.not50, label %._crit_edge117, label %bb.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN2v88internal4wasm18ProfileInformationESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #30
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm18ProfileInformationEEclEPS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #30
  br label %_ZNKSt14default_deleteIN2v88internal4wasm18ProfileInformationEEclEPS3_.exit

_ZNKSt14default_deleteIN2v88internal4wasm18ProfileInformationEEclEPS3_.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #30
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm18ProfileInformationEEclEPS3_.exit, %bb.a
  ret void
}

declare noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #6

declare ptr @_ZN2v88internal7Factory17NewStringFromUtf8ENS_4base6VectorIKcEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #6

declare { ptr, i64 } @_ZNK2v88internal4wasm15ModuleWireBytes13GetNameOrNullENS1_12WireBytesRefE(ptr noundef nonnull align 8 dereferenceable(16), i64) local_unnamed_addr #6

declare void @_ZN2v88internal5Debug14OnAfterCompileENS0_12DirectHandleINS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(256), ptr) local_unnamed_addr #6

declare void @_ZN2v88internal4wasm12NativeModule18RemoveCompiledCodeENS2_12RemoveFilterE(ptr noundef nonnull align 8 dereferenceable(552), i32 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal4wasm12NativeModule12LogWasmCodesEPNS0_7IsolateENS0_6TaggedINS0_6ScriptEEE(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm15AsyncCompileJob18FinishSuccessfullyEv(ptr noundef nonnull align 8 dereferenceable(356) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca [2 x %"class.std::unique_ptr.1514"], align 16 ; 6 uses
  %2 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %3 = alloca %"class.v8::Context::BackupIncumbentScope", align 8 ; 4 uses
  %4 = alloca %"class.std::unique_ptr.1106", align 8 ; 2 uses
  %i.a = load atomic volatile i64, ptr @_ZZN2v88internal4wasm15AsyncCompileJob18FinishSuccessfullyEvE29trace_event_unique_atomic3216 acquire, align 8 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #29 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.52) #29 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store atomic volatile i64 %i.h, ptr @_ZZN2v88internal4wasm15AsyncCompileJob18FinishSuccessfullyEvE29trace_event_unique_atomic3216 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr null, ptr %2, align 8
  %i.i = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.j = and i8 %i.i, 5
  %.not10 = icmp eq i8 %i.j, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.k = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #29 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.67, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %1, i32 noundef 0) #29, !inline_history !221
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #29, !inline_history !222
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.u = load ptr, ptr %1, align 16               ; 3 uses
  %.not.i.1 = icmp eq ptr %i.u, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #29, !inline_history !222
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm23AsyncStreamingProcessor19ProcessFunctionBodyENS_4base6VectorIKhEEj:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.bv = tail call noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() #29 ; 2 uses
  %i.bw = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31, !noalias !294 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal4wasm29ValidateFunctionsStreamingJobE, i64 16), ptr %i.bw, align 8, !noalias !294
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.p, ptr %i.bx, align 8, !noalias !294
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i32 %i.t, ptr %i.by, align 8, !noalias !294
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.bb, ptr %i.bz, align 8, !noalias !294
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr @.constant.74, ptr %4, align 8, !noalias !297
  %i.ca = ptrtoint ptr %i.bw to i64
  store i64 %i.ca, ptr %5, align 8, !noalias !297
  %i.cb = load ptr, ptr %i.bv, align 8, !noalias !297
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 136
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !297
  call void %i.cd(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.13") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i8 noundef zeroext 1, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #29, !inline_history !300
  %i.ce = load ptr, ptr %5, align 8, !noalias !297 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN2v88Platform9CreateJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit, label %_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i: ; preds = %_ZN2v88internal4wasm33ValidateFunctionsStreamingJobData10InitializeEi.exit
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #29, !inline_history !301
  br label %_ZN2v88Platform9CreateJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit

_ZN2v88Platform9CreateJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit: ; preds = %_ZN2v88internal4wasm33ValidateFunctionsStreamingJobData10InitializeEi.exit, %_ZNKSt14default_deleteIN2v87JobTaskEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ci = load ptr, ptr %6, align 8
  store ptr null, ptr %6, align 8
  %i.cj = load ptr, ptr %i.az, align 8            ; 3 uses
  store ptr %i.ci, ptr %i.az, align 8
  %.not.i.i.i.i13 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i13, label %_ZNSt10unique_ptrIN2v88internal4wasm29ValidateFunctionsStreamingJobESt14default_deleteIS3_EED2Ev.exit, label %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZN2v88Platform9CreateJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cj) #29, !inline_history !302
  %.pr = load ptr, ptr %6, align 8                ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal4wasm29ValidateFunctionsStreamingJobESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit
  %i.cn = load ptr, ptr %.pr, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr) #29, !inline_history !303
  br label %_ZNSt10unique_ptrIN2v88internal4wasm29ValidateFunctionsStreamingJobESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal4wasm29ValidateFunctionsStreamingJobESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN2v88Platform9CreateJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE.exit, %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.pre = load ptr, ptr %i.az, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm29ValidateFunctionsStreamingJobESt14default_deleteIS3_EED2Ev.exit, %.critedge8
  %i.cq = phi ptr [ %.pre, %_ZNSt10unique_ptrIN2v88internal4wasm29ValidateFunctionsStreamingJobESt14default_deleteIS3_EED2Ev.exit ], [ %i.ba, %.critedge8 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ct = load atomic ptr, ptr %i.cs monotonic, align 8 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 4 uses
  store i32 %i.h, ptr %i.ct, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %1, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 %2, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store atomic ptr %i.cu, ptr %i.cs release, align 8
  %i.cv = load ptr, ptr %i.cr, align 8            ; 3 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = sdiv exact i64 %i.cy, 24                ; 3 uses
  %i.da = icmp ugt i64 %i.cz, 15
  br i1 %i.da, label %_ZN2v84base4bits12IsPowerOfTwoImEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit.i, label %bb.q

_ZN2v84base4bits12IsPowerOfTwoImEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit.i: ; preds = %bb.p
  %i.db = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.cz)
  %i.dc = icmp samesign ult i64 %i.db, 2
  %i.dd = and i64 %i.cz, 16383
  %i.de = icmp eq i64 %i.dd, 0
  %or.cond.i = or i1 %i.dc, %i.de
  br i1 %or.cond.i, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.old10.i = icmp eq ptr %i.cu, %i.cv
  br i1 %.old10.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN2v84base4bits12IsPowerOfTwoImEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.dg
  %i.di = icmp eq ptr %i.cu, %i.dh
  br i1 %i.di, label %bb.s, label %.critedge10

bb.s:                                             ; preds = %bb.r, %bb.q, %_ZN2v84base4bits12IsPowerOfTwoImEEbT_Qoosr3stdE13is_integral_vIS3_Esr3stdE9is_enum_vIS3_E.exit.i
  %i.dj = load ptr, ptr %i.cq, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.cq) #29, !inline_history !304
  br label %.critedge10

.critedge10:                                      ; preds = %bb.k, %bb.h, %bb.j, %bb.s, %bb.r, %bb.c
  %i.dm = load ptr, ptr %i.q, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 192
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 280
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.dr, align 8
  %.val11 = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr i8, ptr %i.dq, i64 312
  %.val12 = load ptr, ptr %i.ds, align 8
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl42InitializeCompilationUnitForSingleFunctionEPNS2_22CompilationUnitBuilderEi(ptr %.val11, ptr %.val12, ptr noundef %.val, i32 noundef %i.h)
  br label %bb.t

bb.t:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit, %.critedge10
  ret i1 true
}

declare void @_ZN2v88internal4wasm13ModuleDecoder18DecodeFunctionBodyEjjj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl42InitializeCompilationUnitForSingleFunctionEPNS2_22CompilationUnitBuilderEi(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.312.val, ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 216
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub i32 %1, %i.d
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.312.val, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1               ; 3 uses
  %i.i = and i8 %i.h, 3                           ; 4 uses
  %i.j = lshr i8 %i.h, 2
  %i.k = and i8 %i.j, 3                           ; 4 uses
  %i.l = lshr i8 %i.h, 4
  %i.m = and i8 %i.l, 3                           ; 2 uses
  %i.n = icmp samesign ult i8 %i.m, %i.i
  br i1 %i.n, label %bb.b, label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder15AddBaselineUnitEiNS1_13ExecutionTierE.exit

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %.not.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr %i.q, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i8 %i.i, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  store i8 0, ptr %i.u, align 1
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.p, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder15AddBaselineUnitEiNS1_13ExecutionTierE.exit

bb.d:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.o, align 8              ; 7 uses
  %i.y = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.e, label %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #32
  unreachable

_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #31 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa ; 3 uses
  store i32 %1, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i8 %i.i, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 5
  store i8 0, ptr %i.al, align 1
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.x, %i.q
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = ptrtoaddr ptr %i.ai to i64
  %2 = sub i64 %i.y, %i.z
  %3 = add i64 %2, -8                             ; 2 uses
  %i.an = lshr i64 %3, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.ap = sub i64 %i.am, %i.z
  %diff.check = icmp ult i64 %i.ap, 32
  %or.cond35 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond35, label %.lr.ph.i.i.i.i.i.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ai, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.x, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.at ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.x, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.au = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 4, !alias.scope !308, !noalias !305
  %wide.load15 = load <2 x i64>, ptr %i.au, align 4, !alias.scope !308, !noalias !305
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !305, !noalias !308
  store <2 x i64> %wide.load15, ptr %i.av, align 4, !alias.scope !305, !noalias !308
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !310

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader38

.lr.ph.i.i.i.i.i.i.preheader38:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader38, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader38 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader38 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !308, !noalias !305
  store i64 %i.ax, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !305, !noalias !308
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.q
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !311

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i25.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i25.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #30
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i
  store ptr %i.ai, ptr %i.o, align 8
  store ptr %i.ba, ptr %i.p, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.bb, ptr %i.r, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder15AddBaselineUnitEiNS1_13ExecutionTierE.exit

_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder15AddBaselineUnitEiNS1_13ExecutionTierE.exit: ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.c, %bb.a
  %i.bc = icmp samesign uge i8 %i.m, %i.k
  %.not = icmp eq i8 %i.i, %i.k
  %or.cond = or i1 %i.bc, %.not
  br i1 %or.cond, label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder15AddBaselineUnitEiNS1_13ExecutionTierE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %.not.i.i17 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not.i.i17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %1, ptr %i.bf, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i8 %i.k, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 5
  store i8 0, ptr %i.bj, align 1
  %i.bk = load ptr, ptr %i.be, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.be, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit

bb.i:                                             ; preds = %bb.g
  %i.bm = load ptr, ptr %i.bd, align 8            ; 7 uses
  %i.bn = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.j, label %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i18

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #32
  unreachable

_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i18: ; preds = %bb.i
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i19 = tail call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i19, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i20 = icmp ne i64 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i20)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #31 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp ; 3 uses
  store i32 %1, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i8 %i.k, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 5
  store i8 0, ptr %i.ca, align 1
  %.not10.i.i.i.i.i.i21 = icmp eq ptr %i.bm, %i.bf
  br i1 %.not10.i.i.i.i.i.i21, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i26, label %.lr.ph.i.i.i.i.i.i22.preheader

.lr.ph.i.i.i.i.i.i22.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i18
  %i.cb = ptrtoaddr ptr %i.bx to i64
  %4 = sub i64 %i.bn, %i.bo
  %5 = add i64 %4, -8                             ; 2 uses
  %i.cc = lshr i64 %5, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check20 = icmp ult i64 %5, 56
  %i.ce = sub i64 %i.cb, %i.bo
  %diff.check18 = icmp ult i64 %i.ce, 32
  %or.cond36 = or i1 %min.iters.check20, %diff.check18
  br i1 %or.cond36, label %.lr.ph.i.i.i.i.i.i22.preheader37, label %vector.ph21

vector.ph21:                                      ; preds = %.lr.ph.i.i.i.i.i.i22.preheader
  %n.vec23 = and i64 %i.cd, 4611686018427387900   ; 3 uses
  %i.cf = shl i64 %n.vec23, 3                     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph21
  %index25 = phi i64 [ 0, %vector.ph21 ], [ %index.next30, %vector.body24 ] ; 2 uses
  %i.ci = shl i64 %index25, 3                     ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.cj = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load28 = load <2 x i64>, ptr %next.gep27, align 4, !alias.scope !315, !noalias !312
  %wide.load29 = load <2 x i64>, ptr %i.cj, align 4, !alias.scope !315, !noalias !312
  %i.ck = getelementptr i8, ptr %next.gep26, i64 16
  store <2 x i64> %wide.load28, ptr %next.gep26, align 4, !alias.scope !312, !noalias !315
  store <2 x i64> %wide.load29, ptr %i.ck, align 4, !alias.scope !312, !noalias !315
  %index.next30 = add nuw i64 %index25, 4         ; 2 uses
  %i.cl = icmp eq i64 %index.next30, %n.vec23
  br i1 %i.cl, label %middle.block31, label %vector.body24, !llvm.loop !317

middle.block31:                                   ; preds = %vector.body24
  %cmp.n32 = icmp eq i64 %i.cd, %n.vec23
  br i1 %cmp.n32, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i26, label %.lr.ph.i.i.i.i.i.i22.preheader37

.lr.ph.i.i.i.i.i.i22.preheader37:                 ; preds = %.lr.ph.i.i.i.i.i.i22.preheader, %middle.block31
  %.012.i.i.i.i.i.i23.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i22.preheader ], [ %i.cg, %middle.block31 ]
  %.0911.i.i.i.i.i.i24.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i22.preheader ], [ %i.ch, %middle.block31 ]
  br label %.lr.ph.i.i.i.i.i.i22

.lr.ph.i.i.i.i.i.i22:                             ; preds = %.lr.ph.i.i.i.i.i.i22.preheader37, %.lr.ph.i.i.i.i.i.i22
  %.012.i.i.i.i.i.i23 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i22 ], [ %.012.i.i.i.i.i.i23.ph, %.lr.ph.i.i.i.i.i.i22.preheader37 ] ; 2 uses
  %.0911.i.i.i.i.i.i24 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i22 ], [ %.0911.i.i.i.i.i.i24.ph, %.lr.ph.i.i.i.i.i.i22.preheader37 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i24, align 4, !alias.scope !315, !noalias !312
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i23, align 4, !alias.scope !312, !noalias !315
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i24, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i23, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i25 = icmp eq ptr %i.cn, %i.bf
  br i1 %.not.i.i.i.i.i.i25, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i26, label %.lr.ph.i.i.i.i.i.i22, !llvm.loop !318

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i26: ; preds = %.lr.ph.i.i.i.i.i.i22, %middle.block31, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i18
  %.0.lcssa.i.i.i.i.i.i27 = phi ptr [ %i.bx, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i18 ], [ %i.cg, %middle.block31 ], [ %i.co, %.lr.ph.i.i.i.i.i.i22 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i27, i64 8
  %.not.i25.i.i.i28 = icmp eq ptr %i.bm, null
  br i1 %.not.i25.i.i.i28, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i29, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #30
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i29

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i29: ; preds = %bb.k, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i.i26
  store ptr %i.bx, ptr %i.bd, align 8
  store ptr %i.cp, ptr %i.be, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.bg, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit

_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder14AddTopTierUnitEiNS1_13ExecutionTierE.exit: ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRiRNS2_13ExecutionTierENS2_12ForDebuggingEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i29, %bb.h, %_ZN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilder15AddBaselineUnitEiNS1_13ExecutionTierE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm23AsyncStreamingProcessor15OnFinishedChunkEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8             ; 6 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %_ZN2v88internal4wasm23AsyncStreamingProcessor22CommitCompilationUnitsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  %or.cond.i.i = select i1 %i.f, i1 %i.k, i1 false
  br i1 %or.cond.i.i, label %_ZN2v88internal4wasm23AsyncStreamingProcessor22CommitCompilationUnitsEv.exit, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %.val.i.i = load ptr, ptr %.val, align 8
  %i.l = getelementptr i8, ptr %.val.i.i, i64 280
  %.val.val.i.i = load ptr, ptr %i.l, align 8
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = ptrtoint ptr %i.h to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl22CommitCompilationUnitsENS_4base6VectorINS1_19WasmCompilationUnitEEES7_(ptr noundef nonnull align 8 dereferenceable(416) %.val.val.i.i, ptr %i.c, i64 %i.p, ptr %i.h, i64 %i.t)
  %i.u = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE5clearEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  store ptr %i.u, ptr %i.d, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE5clearEv.exit.i.i.i

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE5clearEv.exit.i.i.i: ; preds = %bb.c, %._crit_edge.i.i
  %i.w = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.i, align 8
  %.not.i.i1.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i1.i.i.i, label %_ZN2v88internal4wasm23AsyncStreamingProcessor22CommitCompilationUnitsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE5clearEv.exit.i.i.i
  store ptr %i.w, ptr %i.i, align 8
  br label %_ZN2v88internal4wasm23AsyncStreamingProcessor22CommitCompilationUnitsEv.exit

_ZN2v88internal4wasm23AsyncStreamingProcessor22CommitCompilationUnitsEv.exit: ; preds = %bb.d, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE5clearEv.exit.i.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm23AsyncStreamingProcessor16OnFinishedStreamENS_4base11OwnedVectorIKhEEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.1644", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::wasm::Result.1205", align 16 ; 12 uses
  %5 = alloca %"class.v8::internal::wasm::WasmDetectedFeatures", align 8 ; 5 uses
  %6 = alloca %"class.v8::internal::wasm::WasmError", align 8 ; 6 uses
  %7 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.1206", align 16 ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"class.v8::internal::SaveAndSwitchContext", align 8 ; 4 uses
  %10 = alloca %"class.std::shared_ptr.553", align 16 ; 3 uses
  %11 = alloca %"class.v8::base::OwnedVector.1041", align 8 ; 4 uses
  %12 = alloca %"class.std::shared_ptr.66", align 16 ; 6 uses
  %13 = alloca %"class.std::shared_ptr.66", align 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN2v88internal4wasm13ModuleDecoder14FinishDecodingEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::wasm::Result.1205") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #29
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load i32, ptr %i.e, align 16
  %.not = icmp ne i32 %i.f, -1
  %narrow = or i1 %2, %.not                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not62 = icmp eq ptr %i.h, null
  br i1 %.not62, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #29
  %i.l = load ptr, ptr %i.g, align 8              ; 3 uses
  store ptr null, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #29, !inline_history !319
  br label %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN2v89JobHandleEEclEPS1_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load atomic i8, ptr %i.p seq_cst, align 8, !range !76, !noundef !77
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load atomic i64, ptr %i.s monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = or i64 %i.x, %i.t
  store i64 %i.y, ptr %i.w, align 8
  %i.z = select i1 %i.r, i1 true, i1 %narrow
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EE5resetEPS1_.exit, %bb.a
  %.2 = phi i1 [ %i.z, %_ZNSt10unique_ptrIN2v89JobHandleESt14default_deleteIS1_EE5resetEPS1_.exit ], [ %narrow, %bb.a ]
  %i.aa = load ptr, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 26 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
end_hunk_3
begin_hunk_4_@"_ZNSt17_Function_handlerIFbiEZN2v88internal4wasm12_GLOBAL__N_117ValidateFunctionsEPKNS3_10WasmModuleENS1_4base6VectorIKhEENS3_19WasmEnabledFeaturesENS4_17OnlyLazyFunctionsEPNS3_20WasmDetectedFeaturesEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation":bb.a

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal4wasm12_GLOBAL__N_117ValidateFunctionsEPKNS3_10WasmModuleENS1_4base6VectorIKhEENS3_19WasmEnabledFeaturesENS4_17OnlyLazyFunctionsEPNS3_20WasmDetectedFeaturesEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2v88internal4wasm12_GLOBAL__N_117ValidateFunctionsEPKNS3_10WasmModuleENS1_4base6VectorIKhEENS3_19WasmEnabledFeaturesENS4_17OnlyLazyFunctionsEPNS3_20WasmDetectedFeaturesEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZThn32_N2v88internal14CancelableTask3RunEv(ptr noundef %0) unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = cmpxchg ptr %i.a, i32 0, i32 2 acq_rel acquire, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN2v88internal14CancelableTask3RunEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #29, !inline_history !269
  br label %_ZN2v88internal14CancelableTask3RunEv.exit

_ZN2v88internal14CancelableTask3RunEv.exit:       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl22CommitCompilationUnitsENS_4base6VectorINS1_19WasmCompilationUnitEEES7_(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca [2 x %"struct.std::pair.1542"], align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29
  %i.b = icmp eq i64 %2, 0                        ; 2 uses
  %i.c = icmp eq i64 %4, 0                        ; 2 uses
  %or.cond = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.i = load atomic i32, ptr %i.h monotonic, align 8 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(156) %i.d) #29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.j, align 8           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val23.i = load ptr, ptr %i.k, align 8
  %i.l = ptrtoint ptr %.val23.i to i64
  %i.m = ptrtoint ptr %.val.i to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 3
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = add nsw i32 %i.i, 1                      ; 2 uses
  %i.r = icmp eq i32 %i.q, %i.p
  %i.s = select i1 %i.r, i32 0, i32 %i.q
  %i.t = cmpxchg weak ptr %i.h, i32 %i.i, i32 %i.s monotonic monotonic, align 4 ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.t, 1
  br i1 %i.u, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i: ; preds = %bb.b, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i
  %i.v = phi { i32, i1 } [ %i.aa, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i ], [ %i.t, %bb.b ]
  %i.w = extractvalue { i32, i1 } %i.v, 0         ; 3 uses
  %i.x = add nsw i32 %i.w, 1                      ; 2 uses
  %i.y = icmp eq i32 %i.x, %i.p
  %i.z = select i1 %i.y, i32 0, i32 %i.x
  %i.aa = cmpxchg weak ptr %i.h, i32 %i.w, i32 %i.z monotonic monotonic, align 4 ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.aa, 1
  br i1 %i.ab, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i, !llvm.loop !355

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i:    ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i, %bb.b
  %.078.lcssa.i = phi i32 [ %i.i, %bb.b ], [ %i.w, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i ]
  %i.ac = sext i32 %.078.lcssa.i to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ac
  %.val25.i = load ptr, ptr %i.ad, align 8        ; 2 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(156) %i.d) #29
  %i.ae = getelementptr inbounds nuw i8, ptr %.val25.i, i64 8 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i32 0, ptr %5, align 8, !alias.scope !356
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.af, align 8
  %.sroa.277.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %.sroa.277.0..sroa_idx.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.ag, align 8, !alias.scope !359
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %3, ptr %i.ah, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %.val25.i, i64 16
  br label %bb.e

bb.c:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ao = trunc nuw i8 %.sroa.565.4.i to i1
  %.not.i.i.i.i.i.i = icmp ne ptr %.sroa.063.4.i, null
  %or.cond.not.i = select i1 %i.ao, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.063.4.i) #29
  br label %bb.s

bb.e:                                             ; preds = %.loopexit.i, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i
  %.0.idx101.i = phi i64 [ 0, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i ], [ %.0.add.i, %.loopexit.i ] ; 2 uses
  %.sroa.565.0100.i = phi i8 [ 0, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i ], [ %.sroa.565.4.i, %.loopexit.i ] ; 2 uses
  %.sroa.063.099.i = phi ptr [ undef, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i ], [ %.sroa.063.4.i, %.loopexit.i ] ; 2 uses
  %.0.ptr102.i = getelementptr inbounds nuw i8, ptr %5, i64 %.0.idx101.i ; 3 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.ptr102.i, i64 16
  %.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8 ; 3 uses
  %i.ap = icmp eq i64 %.sroa.4.sroa.4.0.copyload.i, 0
  br i1 %i.ap, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.ptr102.i, i64 8
  %.sroa.4.sroa.3.0.copyload.i = load ptr, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.0.ptr102.i, align 8
  %i.aq = sext i32 %.sroa.0.0.copyload.i to i64   ; 4 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aq
  %i.as = atomicrmw add ptr %i.ar, i64 %.sroa.4.sroa.4.0.copyload.i monotonic, align 8 ; 0 uses
  %.idx.i = shl nuw nsw i64 %.sroa.4.sroa.4.0.copyload.i, 3
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.3.0.copyload.i, i64 %.idx.i
  %i.au = getelementptr inbounds i8, ptr %i.al, i64 %i.aq
  %i.av = getelementptr inbounds [32 x i8], ptr %i.am, i64 %i.aq ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds [24 x i8], ptr %i.an, i64 %i.aq ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE9push_backERKS3_.exit.i, %.lr.ph.i
  %.02096.i = phi ptr [ %.sroa.4.sroa.3.0.copyload.i, %.lr.ph.i ], [ %i.eb, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE9push_backERKS3_.exit.i ] ; 2 uses
  %.sroa.565.195.i = phi i8 [ %.sroa.565.0100.i, %.lr.ph.i ], [ %.sroa.565.3.i, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE9push_backERKS3_.exit.i ] ; 3 uses
  %.sroa.063.194.i = phi ptr [ %.sroa.063.099.i, %.lr.ph.i ], [ %.sroa.063.3.i, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE9push_backERKS3_.exit.i ] ; 3 uses
  %i.bb = load i64, ptr %.02096.i, align 4        ; 5 uses
  %sext.i = shl i64 %i.bb, 32
  %i.bc = load ptr, ptr %i.aj, align 8
  %i.bd = ashr exact i64 %sext.i, 27
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = icmp ult i32 %i.bg, 4097
  br i1 %i.bi, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.bj = load ptr, ptr %i.az, align 8            ; 5 uses
  %i.bk = load ptr, ptr %i.ba, align 8
  %.not.i35.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i35.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.bb, ptr %i.bj, align 4
  %i.bl = load ptr, ptr %i.az, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bm, ptr %i.az, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE9push_backERKS3_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %i.ay, align 8            ; 7 uses
  %i.bo = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 4 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775800
  br i1 %i.br, label %bb.j, label %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #32
  unreachable

_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bs = ashr exact i64 %i.bq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 1152921504606846975)
  %i.bw = select i1 %i.bu, i64 1152921504606846975, i64 %i.bv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #31 ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bq
  store i64 %i.bb, ptr %i.bz, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bj
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ca = ptrtoaddr ptr %i.by to i64
  %6 = sub i64 %i.bo, %i.bp
  %7 = add i64 %6, -8                             ; 2 uses
  %i.cb = lshr i64 %7, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 24
  %i.cd = sub i64 %i.ca, %i.bp
  %diff.check = icmp ult i64 %i.cd, 32
  %or.cond29 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond29, label %.lr.ph.i.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cc, 4611686018427387900     ; 3 uses
  %i.ce = shl i64 %n.vec, 3                       ; 2 uses
  %i.cf = getelementptr i8, ptr %i.by, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bn, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.ch ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bn, i64 %i.ch ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.ci = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep26, align 4, !alias.scope !365, !noalias !362
  %wide.load27 = load <2 x i64>, ptr %i.ci, align 4, !alias.scope !365, !noalias !362
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !362, !noalias !365
  store <2 x i64> %wide.load27, ptr %i.cj, align 4, !alias.scope !362, !noalias !365
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.i.preheader30:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.cl = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !365, !noalias !362
  store i64 %i.cl, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !362, !noalias !365
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i36.i = icmp eq ptr %i.cm, %i.bj
  br i1 %.not.i.i.i.i.i36.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !368

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.by, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cf, %middle.block ], [ %i.cn, %.lr.ph.i.i.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bq) #30
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.by, ptr %i.ay, align 8
  store ptr %i.co, ptr %i.az, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw
  store ptr %i.cp, ptr %i.ba, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE9push_backERKS3_.exit.i

bb.l:                                             ; preds = %bb.f
  %i.cq = trunc nuw i8 %.sroa.565.195.i to i1
  br i1 %i.cq, label %bb.m, label %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i

_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i: ; preds = %bb.l
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #29
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i, %bb.l
  %.sroa.063.2.i = phi ptr [ %.sroa.063.194.i, %bb.l ], [ %i.ak, %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i ]
  store atomic i8 1, ptr %i.au monotonic, align 1
  %i.cr = load ptr, ptr %i.aw, align 8            ; 6 uses
  %i.cs = load ptr, ptr %i.ax, align 8
  %.not.i.i.i = icmp eq ptr %i.cr, %i.cs
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.bh, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %i.bb, ptr %i.ct, align 8
  %i.cu = load ptr, ptr %i.aw, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  store ptr %i.cv, ptr %i.aw, align 8
  %.val.pre.i.i = load ptr, ptr %i.av, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE12emplace_backIJRmRNS2_19WasmCompilationUnitEEEERS5_DpOT_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %.val21.i.i.i.i = load ptr, ptr %i.av, align 8  ; 5 uses
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = ptrtoint ptr %.val21.i.i.i.i to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 4 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775792
  br i1 %i.cz, label %bb.p, label %_ZNKSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #32
  unreachable

_ZNKSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.da = ashr exact i64 %i.cy, 4                 ; 3 uses
  %i.db = icmp eq ptr %i.cr, %.val21.i.i.i.i      ; 2 uses
  %.sroa.speculated.i.i.i.i.i = select i1 %i.db, i64 1, i64 %i.da
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.da ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.da
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 576460752303423487)
  %i.df = select i1 %i.dd, i64 576460752303423487, i64 %i.de ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.df, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.dg = shl nuw nsw i64 %i.df, 4
  %i.dh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #31 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cy ; 2 uses
  store i64 %i.bh, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.bb, ptr %i.dj, align 8
  br i1 %i.db, label %_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit29.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dh, %_ZNKSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i ], [ %.val21.i.i.i.i, %_ZNKSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !369
  %i.dk = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dk, %i.cr
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit29.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !373

_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit29.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dh, %_ZNKSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i30.i.i.i.i = icmp eq ptr %.val21.i.i.i.i, null
  br i1 %.not.i30.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE17_M_realloc_insertIJRmRNS2_19WasmCompilationUnitEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit29.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val21.i.i.i.i, i64 noundef %i.cy) #30
  br label %_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE17_M_realloc_insertIJRmRNS2_19WasmCompilationUnitEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE17_M_realloc_insertIJRmRNS2_19WasmCompilationUnitEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit29.i.i.i.i
  store ptr %i.dh, ptr %i.av, align 8
  store ptr %i.dm, ptr %i.aw, align 8
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.df
  store ptr %i.dn, ptr %i.ax, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE12emplace_backIJRmRNS2_19WasmCompilationUnitEEEERS5_DpOT_.exit.i.i

_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE12emplace_backIJRmRNS2_19WasmCompilationUnitEEEERS5_DpOT_.exit.i.i: ; preds = %_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE17_M_realloc_insertIJRmRNS2_19WasmCompilationUnitEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, %bb.n
  %.val4.i.i = phi ptr [ %i.cv, %bb.n ], [ %i.dm, %_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE17_M_realloc_insertIJRmRNS2_19WasmCompilationUnitEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i ] ; 2 uses
  %.val.i.i = phi ptr [ %.val.pre.i.i, %bb.n ], [ %i.dh, %_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE17_M_realloc_insertIJRmRNS2_19WasmCompilationUnitEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i ] ; 4 uses
  %i.do = getelementptr inbounds i8, ptr %.val4.i.i, i64 -16 ; 2 uses
  %i.dp = load <2 x i64>, ptr %i.do, align 8
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.do, align 8
  %i.dq = ptrtoint ptr %.val4.i.i to i64
  %i.dr = ptrtoint ptr %.val.i.i to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 4                 ; 2 uses
  %i.du = add nsw i64 %i.dt, -1                   ; 2 uses
  %i.dv = icmp sgt i64 %i.dt, 1
  br i1 %i.dv, label %.lr.ph.i.i.i.i, label %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE7emplaceIJRmRNS2_19WasmCompilationUnitEEEEvDpOT_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE12emplace_backIJRmRNS2_19WasmCompilationUnitEEEERS5_DpOT_.exit.i.i, %bb.r
  %.07.i.i.i.i = phi i64 [ %.098.i.i.i.i, %bb.r ], [ %i.du, %_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE12emplace_backIJRmRNS2_19WasmCompilationUnitEEEERS5_DpOT_.exit.i.i ] ; 4 uses
  %.098.in.i.i.i.i = add nsw i64 %.07.i.i.i.i, -1
  %.098.i.i.i.i = sdiv i64 %.098.in.i.i.i.i, 2    ; 3 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %.098.i.i.i.i ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.dw, align 8
  %i.dx = icmp ult i64 %.val2.i.i.i.i.i, %.sroa.02.0.copyload.i.i.i
  br i1 %i.dx, label %bb.r, label %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE7emplaceIJRmRNS2_19WasmCompilationUnitEEEEvDpOT_.exit.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %.07.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i64 16, i1 false)
  %i.dz = icmp sgt i64 %.07.i.i.i.i, 2
  br i1 %i.dz, label %.lr.ph.i.i.i.i, label %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE7emplaceIJRmRNS2_19WasmCompilationUnitEEEEvDpOT_.exit.i, !llvm.loop !374

_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE7emplaceIJRmRNS2_19WasmCompilationUnitEEEEvDpOT_.exit.i: ; preds = %bb.r, %.lr.ph.i.i.i.i, %_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE12emplace_backIJRmRNS2_19WasmCompilationUnitEEEERS5_DpOT_.exit.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %i.du, %_ZNSt6vectorIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESaIS5_EE12emplace_backIJRmRNS2_19WasmCompilationUnitEEEERS5_DpOT_.exit.i.i ], [ %.098.i.i.i.i, %bb.r ], [ %.07.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ea = getelementptr inbounds [16 x i8], ptr %.val.i.i, i64 %.0.lcssa.i.i.i.i
  store <2 x i64> %i.dp, ptr %i.ea, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE9push_backERKS3_.exit.i

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE9push_backERKS3_.exit.i: ; preds = %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE7emplaceIJRmRNS2_19WasmCompilationUnitEEEEvDpOT_.exit.i, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.h
  %.sroa.063.3.i = phi ptr [ %.sroa.063.2.i, %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE7emplaceIJRmRNS2_19WasmCompilationUnitEEEEvDpOT_.exit.i ], [ %.sroa.063.194.i, %bb.h ], [ %.sroa.063.194.i, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 2 uses
  %.sroa.565.3.i = phi i8 [ 1, %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues7BigUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE7emplaceIJRmRNS2_19WasmCompilationUnitEEEEvDpOT_.exit.i ], [ %.sroa.565.195.i, %bb.h ], [ %.sroa.565.195.i, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.02096.i, i64 8 ; 2 uses
  %.not22.i = icmp eq ptr %i.eb, %i.at
  br i1 %.not22.i, label %.loopexit.i, label %bb.f

.loopexit.i:                                      ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE9push_backERKS3_.exit.i, %bb.e
  %.sroa.063.4.i = phi ptr [ %.sroa.063.099.i, %bb.e ], [ %.sroa.063.3.i, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE9push_backERKS3_.exit.i ] ; 3 uses
  %.sroa.565.4.i = phi i8 [ %.sroa.565.0100.i, %bb.e ], [ %.sroa.565.3.i, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE9push_backERKS3_.exit.i ] ; 2 uses
  %.0.add.i = add nuw nsw i64 %.0.idx101.i, 24    ; 2 uses
  %.not.i = icmp eq i64 %.0.add.i, 48
  br i1 %.not.i, label %bb.c, label %bb.e
end_hunk_4
begin_hunk_5_@_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl33SchedulePublishCompilationResultsESt6vectorINS1_19UnpublishedWasmCodeESaIS5_EENS2_15CompilationTierE:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i21
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm18AssumptionsJournalEEclEPS3_.exit.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #30
  br label %_ZNKSt14default_deleteIN2v88internal4wasm18AssumptionsJournalEEclEPS3_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm18AssumptionsJournalEEclEPS3_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef 24) #30
  br label %_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm18AssumptionsJournalEEclEPS3_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i21
  %i.ch = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i1.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZN2v88internal4wasm8WasmCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(112) %i.ch) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 112) #30
  br label %_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN2v88internal4wasm18AssumptionsJournalESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.ci, %i.by
  br i1 %.not.i.i.i.i22, label %_ZSt8_DestroyIPN2v88internal4wasm19UnpublishedWasmCodeEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i.i21, !llvm.loop !333

_ZSt8_DestroyIPN2v88internal4wasm19UnpublishedWasmCodeEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIN2v88internal4wasm19UnpublishedWasmCodeEEvPT_.exit.i.i.i.i
  store ptr %i.bx, ptr %i.be, align 8
  br label %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE5clearEv.exit

_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE5clearEv.exit: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl25PublishCompilationResultsESt6vectorINS1_19UnpublishedWasmCodeESaIS5_EE.exit, %_ZSt8_DestroyIPN2v88internal4wasm19UnpublishedWasmCodeEEvT_S5_.exit.i.i
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #29
  %i.cj = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.ck = load ptr, ptr %i.bi, align 8
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit24.thread, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit24

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit24.thread: ; preds = %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE5clearEv.exit
  store i8 0, ptr %i.d, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #29
  br label %bb.m

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit24:    ; preds = %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE5clearEv.exit
  %i.cm = load ptr, ptr %i.bf, align 8
  %i.cn = load <2 x ptr>, ptr %1, align 8
  store ptr %i.cj, ptr %1, align 8
  %i.co = load ptr, ptr %i.bi, align 8
  store ptr %i.co, ptr %i.be, align 8
  %i.cp = load ptr, ptr %i.bj, align 8
  store ptr %i.cp, ptr %i.bf, align 8
  store <2 x ptr> %i.cn, ptr %i.bh, align 8
  store ptr %i.cm, ptr %i.bj, align 8
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #29
  br label %bb.h

bb.m:                                             ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.thread, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit24.thread
  ret void
}

declare void @_ZN2v84base3FPU17SetFlushDenormalsEb(i1 noundef zeroext) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN2v84base3FPU17GetFlushDenormalsEv() local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EE3popEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %0) unnamed_addr #22 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val2 = load ptr, ptr %i.a, align 8            ; 3 uses
  %i.b = ptrtoint ptr %.val2 to i64
  %i.c = ptrtoint ptr %.val to i64                ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %bb.b, label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEESt4lessIS7_EEvT_SF_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %.val2, i64 -16 ; 4 uses
  %i.g = load <2 x i64>, ptr %i.f, align 8
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.f, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.val, i64 16, i1 false)
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.h, %i.c                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 4                   ; 3 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = sdiv i64 %i.k, 2
  %i.m = icmp sgt i64 %i.j, 2
  br i1 %i.m, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.041.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = shl i64 %.041.i.i.i, 1                   ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.q
  %.val2.i.i.i.i = load i64, ptr %i.p, align 8
  %.val3.i.i.i.i = load i64, ptr %i.r, align 8
  %i.s = icmp ult i64 %.val2.i.i.i.i, %.val3.i.i.i.i
  %spec.select.i.i.i = select i1 %i.s, i64 %i.q, i64 %i.o ; 4 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %.val, i64 %spec.select.i.i.i
  %i.u = getelementptr inbounds [16 x i8], ptr %.val, i64 %.041.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.v = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.v, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !421

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.w = and i64 %i.i, 16
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.y = add nsw i64 %i.j, -2
  %i.z = ashr exact i64 %i.y, 1
  %i.aa = icmp eq i64 %.0.lcssa.i.i.i, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = shl nsw i64 %.0.lcssa.i.i.i, 1
  %i.ac = or disjoint i64 %i.ab, 1                ; 2 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.ac
  %i.ae = getelementptr inbounds [16 x i8], ptr %.val, i64 %.0.lcssa.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.ac, %bb.d ], [ %.0.lcssa.i.i.i, %bb.c ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.af = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.07.i.i.i.i = phi i64 [ %.098.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 4 uses
  %.098.in.i.i.i.i = add nsw i64 %.07.i.i.i.i, -1
  %.098.i.i.i.i = sdiv i64 %.098.in.i.i.i.i, 2    ; 3 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.098.i.i.i.i ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.ag, align 8
  %i.ah = icmp ult i64 %.val2.i.i.i.i.i, %.sroa.03.0.copyload.i.i
  br i1 %i.ah, label %bb.f, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.07.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.aj = icmp sgt i64 %.07.i.i.i.i, 2
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i, !llvm.loop !162

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %.098.i.i.i.i, %bb.f ], [ %.07.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ak = getelementptr inbounds [16 x i8], ptr %.val, i64 %.0.lcssa.i.i.i.i
  store <2 x i64> %i.g, ptr %i.ak, align 8
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEESt4lessIS7_EEvT_SF_T0_.exit

_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEESt4lessIS7_EEvT_SF_T0_.exit: ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i
  %i.al = phi ptr [ %.val2, %bb.a ], [ %.pre, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i ]
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -16
  store ptr %i.am, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = icmp eq ptr %2, %3
  br i1 %i.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.d = ptrtoint ptr %2 to i64                   ; 7 uses
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 16 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 7 uses
  %i.m = sub i64 %i.k, %i.l
  %.not = icmp ult i64 %i.m, %i.e
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.o = sub i64 %i.l, %i.n                       ; 6 uses
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = icmp ugt i64 %i.p, %i.f
  br i1 %i.q, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.e
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %.idx ; 4 uses
  %4 = sub i64 %i.c, %i.d
  %5 = add i64 %4, -8                             ; 2 uses
  %i.s = lshr i64 %5, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check124 = icmp ult i64 %5, 56
  %i.u = sub i64 %i.c, %i.d
  %diff.check122 = icmp ult i64 %i.u, 32
  %or.cond = or i1 %min.iters.check124, %diff.check122
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %bb.d
  %n.vec127 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %i.v = shl i64 %n.vec127, 3                     ; 2 uses
  %i.w = getelementptr i8, ptr %i.j, i64 %i.v
  %i.x = getelementptr i8, ptr %i.r, i64 %i.v
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph125
  %index129 = phi i64 [ 0, %vector.ph125 ], [ %index.next134, %vector.body128 ] ; 2 uses
  %i.y = shl i64 %index129, 3                     ; 2 uses
  %next.gep130 = getelementptr i8, ptr %i.j, i64 %i.y ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.r, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep131, i64 16
  %wide.load132 = load <2 x i64>, ptr %next.gep131, align 4
  %wide.load133 = load <2 x i64>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep130, i64 16
  store <2 x i64> %wide.load132, ptr %next.gep130, align 4
  store <2 x i64> %wide.load133, ptr %i.aa, align 4
  %index.next134 = add nuw i64 %index129, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next134, %n.vec127
  br i1 %i.ab, label %middle.block135, label %vector.body128, !llvm.loop !422

middle.block135:                                  ; preds = %vector.body128
  %cmp.n136 = icmp eq i64 %i.t, %n.vec127
  br i1 %cmp.n136, label %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block135
  %.08.i.i.i.i.i.ph = phi ptr [ %i.j, %bb.d ], [ %i.w, %middle.block135 ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.r, %bb.d ], [ %i.x, %middle.block135 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i64, ptr %.sroa.04.07.i.i.i.i.i, align 4
  store i64 %i.ac, ptr %.08.i.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.af = icmp eq ptr %i.ad, %i.j
  br i1 %i.af, label %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !423

_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block135
  %i.ag = load ptr, ptr %i.i, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.e
  store ptr %i.ah, ptr %i.i, align 8
  %i.ai = ptrtoint ptr %i.r to i64
  %i.aj = sub i64 %i.ai, %i.n                     ; 3 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 1
  br i1 %i.al, label %bb.e, label %bb.f, !prof !104

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.am = sub nsw i64 0, %i.ak
  %i.an = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.am
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.an, ptr align 4 %1, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIPN2v88internal4wasm19WasmCompilationUnitES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.ao = icmp eq i64 %i.aj, 8
  br i1 %i.ao, label %bb.g, label %_ZSt13move_backwardIPN2v88internal4wasm19WasmCompilationUnitES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds i8, ptr %i.j, i64 -8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.ap, ptr noundef nonnull align 4 dereferenceable(6) %1, i64 6, i1 false)
  br label %_ZSt13move_backwardIPN2v88internal4wasm19WasmCompilationUnitES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN2v88internal4wasm19WasmCompilationUnitES4_ET0_T_S6_S5_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aq = icmp sgt i64 %i.e, 8
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !104

bb.h:                                             ; preds = %_ZSt13move_backwardIPN2v88internal4wasm19WasmCompilationUnitES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.e, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.i:                                             ; preds = %_ZSt13move_backwardIPN2v88internal4wasm19WasmCompilationUnitES4_ET0_T_S6_S5_.exit
  %i.ar = icmp eq i64 %i.e, 8
  br i1 %i.ar, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %1, ptr noundef nonnull align 4 dereferenceable(6) %2, i64 6, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.as = getelementptr inbounds i8, ptr %2, i64 %i.o ; 4 uses
  %i.at = icmp eq ptr %i.as, %3
  br i1 %i.at, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.au = add i64 %i.c, %i.n
  %i.av = add i64 %i.l, %i.d
  %6 = sub i64 %i.au, %i.av
  %7 = add i64 %6, -8                             ; 2 uses
  %i.aw = lshr i64 %7, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 56
  %i.ay = sub i64 %i.n, %i.d
  %diff.check = icmp ult i64 %i.ay, 32
  %or.cond195 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond195, label %.lr.ph.i.i.i.i.preheader204, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ax, 4611686018427387900     ; 3 uses
  %i.az = shl i64 %n.vec, 3                       ; 2 uses
  %i.ba = getelementptr i8, ptr %i.j, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.as, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.bc ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.as, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep100, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep100, align 4
  %wide.load101 = load <2 x i64>, ptr %i.bd, align 4
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load101, ptr %i.be, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !424

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader204

.lr.ph.i.i.i.i.preheader204:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.as, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader204, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader204 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader204 ] ; 2 uses
  %i.bg = load i64, ptr %.sroa.04.07.i.i.i.i, align 4
  store i64 %i.bg, ptr %.08.i.i.i.i, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.bj = icmp eq ptr %i.bh, %3
  br i1 %i.bj, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !425

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.i, align 8
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bk = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit ], [ %i.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bl = ptrtoaddr ptr %i.bk to i64
  %i.bm = sub nuw nsw i64 %i.f, %i.p
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm ; 6 uses
  store ptr %i.bn, ptr %i.i, align 8
  %i.bo = icmp eq ptr %1, %i.j
  br i1 %i.bo, label %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit47, label %.lr.ph.i.i.i.i.i43.preheader

.lr.ph.i.i.i.i.i43.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %8 = sub i64 %i.l, %i.n
  %9 = add i64 %8, -8                             ; 2 uses
  %i.bp = lshr i64 %9, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check106 = icmp ult i64 %9, 104
  br i1 %min.iters.check106, label %.lr.ph.i.i.i.i.i43.preheader203, label %vector.memcheck103

vector.memcheck103:                               ; preds = %.lr.ph.i.i.i.i.i43.preheader
  %i.br = add i64 %i.e, %i.bl
  %i.bs = sub i64 %i.br, %i.l
  %diff.check104 = icmp ult i64 %i.bs, 32
  br i1 %diff.check104, label %.lr.ph.i.i.i.i.i43.preheader203, label %vector.ph107

vector.ph107:                                     ; preds = %vector.memcheck103
  %n.vec109 = and i64 %i.bq, 4611686018427387900  ; 3 uses
  %i.bt = shl i64 %n.vec109, 3                    ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bn, i64 %i.bt
  %i.bv = getelementptr i8, ptr %1, i64 %i.bt
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next116, %vector.body110 ] ; 2 uses
  %i.bw = shl i64 %index111, 3                    ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.bn, i64 %i.bw ; 2 uses
  %next.gep113 = getelementptr i8, ptr %1, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep113, i64 16
  %wide.load114 = load <2 x i64>, ptr %next.gep113, align 4
  %wide.load115 = load <2 x i64>, ptr %i.bx, align 4
  %i.by = getelementptr i8, ptr %next.gep112, i64 16
  store <2 x i64> %wide.load114, ptr %next.gep112, align 4
  store <2 x i64> %wide.load115, ptr %i.by, align 4
  %index.next116 = add nuw i64 %index111, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.bz, label %middle.block117, label %vector.body110, !llvm.loop !426

middle.block117:                                  ; preds = %vector.body110
  %cmp.n118 = icmp eq i64 %i.bq, %n.vec109
  br i1 %cmp.n118, label %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit47.loopexit, label %.lr.ph.i.i.i.i.i43.preheader203

.lr.ph.i.i.i.i.i43.preheader203:                  ; preds = %vector.memcheck103, %.lr.ph.i.i.i.i.i43.preheader, %middle.block117
  %.08.i.i.i.i.i44.ph = phi ptr [ %i.bn, %vector.memcheck103 ], [ %i.bn, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.bu, %middle.block117 ]
  %.sroa.04.07.i.i.i.i.i45.ph = phi ptr [ %1, %vector.memcheck103 ], [ %1, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.bv, %middle.block117 ]
  br label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.lr.ph.i.i.i.i.i43.preheader203, %.lr.ph.i.i.i.i.i43
  %.08.i.i.i.i.i44 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i43 ], [ %.08.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i43.preheader203 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i45 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i43 ], [ %.sroa.04.07.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i43.preheader203 ] ; 2 uses
  %i.ca = load i64, ptr %.sroa.04.07.i.i.i.i.i45, align 4
  store i64 %i.ca, ptr %.08.i.i.i.i.i44, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i45, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i44, i64 8
  %i.cd = icmp eq ptr %i.cb, %i.j
  br i1 %i.cd, label %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit47.loopexit, label %.lr.ph.i.i.i.i.i43, !llvm.loop !427

_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit47.loopexit: ; preds = %.lr.ph.i.i.i.i.i43, %middle.block117
  %.pre80 = load ptr, ptr %i.i, align 8
  br label %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit47

_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit47: ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit47.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %i.ce = phi ptr [ %.pre80, %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit47.loopexit ], [ %i.bn, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.o
  store ptr %i.cf, ptr %i.i, align 8
  %i.cg = icmp sgt i64 %i.o, 8
  br i1 %i.cg, label %bb.k, label %bb.l, !prof !104

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit47
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.o, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.l:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit47
  %i.ch = icmp eq i64 %i.o, 8
  br i1 %i.ch, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %1, ptr noundef nonnull align 4 dereferenceable(6) %2, i64 6, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.n:                                             ; preds = %bb.b
  %i.ci = load ptr, ptr %0, align 8               ; 7 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 4 uses
  %i.ck = sub i64 %i.l, %i.cj
  %i.cl = ashr exact i64 %i.ck, 3                 ; 4 uses
  %i.cm = sub nsw i64 1152921504606846975, %i.cl
  %i.cn = icmp ult i64 %i.cm, %i.f
  br i1 %i.cn, label %bb.o, label %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #32
  unreachable

_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 %i.f)
  %i.co = add nsw i64 %.sroa.speculated.i, %i.cl  ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cl
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %.not.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #31
  br label %_ZNSt12_Vector_baseIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.cu = phi ptr [ %i.ct, %bb.p ], [ null, %_ZNKSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.cv = icmp eq ptr %i.ci, %1
  br i1 %i.cv, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i49.preheader

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %_ZNSt12_Vector_baseIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_M_allocateEm.exit
  %i.cw = ptrtoaddr ptr %i.cu to i64
  %i.cx = add i64 %i.a, -8
  %i.cy = sub i64 %i.cx, %i.cj                    ; 2 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check142 = icmp ult i64 %i.cy, 56
  %i.db = sub i64 %i.cw, %i.cj
  %diff.check140 = icmp ult i64 %i.db, 32
  %or.cond196 = or i1 %min.iters.check142, %diff.check140
  br i1 %or.cond196, label %.lr.ph.i.i.i.i.i49.preheader201, label %vector.ph143

vector.ph143:                                     ; preds = %.lr.ph.i.i.i.i.i49.preheader
  %n.vec145 = and i64 %i.da, 4611686018427387900  ; 3 uses
  %i.dc = shl i64 %n.vec145, 3                    ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cu, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %i.ci, i64 %i.dc
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph143
  %index147 = phi i64 [ 0, %vector.ph143 ], [ %index.next152, %vector.body146 ] ; 2 uses
  %i.df = shl i64 %index147, 3                    ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.cu, i64 %i.df ; 2 uses
  %next.gep149 = getelementptr i8, ptr %i.ci, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep149, i64 16
  %wide.load150 = load <2 x i64>, ptr %next.gep149, align 4
  %wide.load151 = load <2 x i64>, ptr %i.dg, align 4
  %i.dh = getelementptr i8, ptr %next.gep148, i64 16
  store <2 x i64> %wide.load150, ptr %next.gep148, align 4
  store <2 x i64> %wide.load151, ptr %i.dh, align 4
  %index.next152 = add nuw i64 %index147, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.di, label %middle.block153, label %vector.body146, !llvm.loop !428

middle.block153:                                  ; preds = %vector.body146
  %cmp.n154 = icmp eq i64 %i.da, %n.vec145
  br i1 %cmp.n154, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i49.preheader201

.lr.ph.i.i.i.i.i49.preheader201:                  ; preds = %.lr.ph.i.i.i.i.i49.preheader, %middle.block153
  %.08.i.i.i.i.i50.ph = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.dd, %middle.block153 ]
  %.sroa.04.07.i.i.i.i.i51.ph = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.de, %middle.block153 ]
  br label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader201, %.lr.ph.i.i.i.i.i49
  %.08.i.i.i.i.i50 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i49 ], [ %.08.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i49.preheader201 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i51 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i49 ], [ %.sroa.04.07.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i49.preheader201 ] ; 2 uses
  %i.dj = load i64, ptr %.sroa.04.07.i.i.i.i.i51, align 4
  store i64 %i.dj, ptr %.08.i.i.i.i.i50, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i51, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i50, i64 8 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %1
  br i1 %i.dm, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i49, !llvm.loop !429

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i49, %middle.block153, %_ZNSt12_Vector_baseIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i52 = phi ptr [ %i.cu, %_ZNSt12_Vector_baseIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE11_M_allocateEm.exit ], [ %i.dd, %middle.block153 ], [ %i.dl, %.lr.ph.i.i.i.i.i49 ] ; 4 uses
  %10 = sub i64 %i.c, %i.d
  %11 = add i64 %10, -8                           ; 2 uses
  %i.dn = lshr i64 %11, 3
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %11, 56
  %.0.lcssa.i.i.i.i.i52158 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i52 to i64
  %i.dp = sub i64 %.0.lcssa.i.i.i.i.i52158, %i.d
  %diff.check159 = icmp ult i64 %i.dp, 32
  %or.cond197 = select i1 %min.iters.check161, i1 true, i1 %diff.check159
  br i1 %or.cond197, label %.lr.ph.i.i.i.i53.preheader, label %vector.ph162

vector.ph162:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %n.vec164 = and i64 %i.do, 4611686018427387900  ; 3 uses
  %i.dq = shl i64 %n.vec164, 3                    ; 2 uses
  %i.dr = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i52, i64 %i.dq ; 2 uses
  %i.ds = getelementptr i8, ptr %2, i64 %i.dq
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.dt = shl i64 %index166, 3                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i52, i64 %i.dt ; 2 uses
  %next.gep168 = getelementptr i8, ptr %2, i64 %i.dt ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 4
  %wide.load170 = load <2 x i64>, ptr %i.du, align 4
  %i.dv = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 4
  store <2 x i64> %wide.load170, ptr %i.dv, align 4
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.dw, label %middle.block172, label %vector.body165, !llvm.loop !430

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.do, %n.vec164
  br i1 %cmp.n173, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit57, label %.lr.ph.i.i.i.i53.preheader

.lr.ph.i.i.i.i53.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %middle.block172
  %.08.i.i.i.i54.ph = phi ptr [ %.0.lcssa.i.i.i.i.i52, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.dr, %middle.block172 ]
  %.sroa.04.07.i.i.i.i55.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.ds, %middle.block172 ]
  br label %.lr.ph.i.i.i.i53

.lr.ph.i.i.i.i53:                                 ; preds = %.lr.ph.i.i.i.i53.preheader, %.lr.ph.i.i.i.i53
  %.08.i.i.i.i54 = phi ptr [ %i.dz, %.lr.ph.i.i.i.i53 ], [ %.08.i.i.i.i54.ph, %.lr.ph.i.i.i.i53.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i55 = phi ptr [ %i.dy, %.lr.ph.i.i.i.i53 ], [ %.sroa.04.07.i.i.i.i55.ph, %.lr.ph.i.i.i.i53.preheader ] ; 2 uses
  %i.dx = load i64, ptr %.sroa.04.07.i.i.i.i55, align 4
  store i64 %i.dx, ptr %.08.i.i.i.i54, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i55, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i54, i64 8 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %3
  br i1 %i.ea, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit57, label %.lr.ph.i.i.i.i53, !llvm.loop !431

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit57: ; preds = %.lr.ph.i.i.i.i53, %middle.block172
  %.lcssa98 = phi ptr [ %i.dr, %middle.block172 ], [ %i.dz, %.lr.ph.i.i.i.i53 ] ; 5 uses
  %i.eb = icmp eq ptr %1, %i.j
  br i1 %i.eb, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, label %.lr.ph.i.i.i.i.i58.preheader

.lr.ph.i.i.i.i.i58.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit57
  %.lcssa98177 = ptrtoaddr ptr %.lcssa98 to i64
  %i.ec = add i64 %i.l, -8
  %i.ed = sub i64 %i.ec, %i.a                     ; 2 uses
  %i.ee = lshr i64 %i.ed, 3
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %min.iters.check180 = icmp ult i64 %i.ed, 56
  %i.eg = sub i64 %.lcssa98177, %i.a
  %diff.check178 = icmp ult i64 %i.eg, 32
  %or.cond198 = select i1 %min.iters.check180, i1 true, i1 %diff.check178
  br i1 %or.cond198, label %.lr.ph.i.i.i.i.i58.preheader199, label %vector.ph181

vector.ph181:                                     ; preds = %.lr.ph.i.i.i.i.i58.preheader
  %n.vec183 = and i64 %i.ef, 4611686018427387900  ; 3 uses
  %i.eh = shl i64 %n.vec183, 3                    ; 2 uses
  %i.ei = getelementptr i8, ptr %.lcssa98, i64 %i.eh ; 2 uses
  %i.ej = getelementptr i8, ptr %1, i64 %i.eh
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph181
  %index185 = phi i64 [ 0, %vector.ph181 ], [ %index.next190, %vector.body184 ] ; 2 uses
  %i.ek = shl i64 %index185, 3                    ; 2 uses
  %next.gep186 = getelementptr i8, ptr %.lcssa98, i64 %i.ek ; 2 uses
  %next.gep187 = getelementptr i8, ptr %1, i64 %i.ek ; 2 uses
  %i.el = getelementptr i8, ptr %next.gep187, i64 16
  %wide.load188 = load <2 x i64>, ptr %next.gep187, align 4
  %wide.load189 = load <2 x i64>, ptr %i.el, align 4
  %i.em = getelementptr i8, ptr %next.gep186, i64 16
  store <2 x i64> %wide.load188, ptr %next.gep186, align 4
  store <2 x i64> %wide.load189, ptr %i.em, align 4
  %index.next190 = add nuw i64 %index185, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.en, label %middle.block191, label %vector.body184, !llvm.loop !432

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.ef, %n.vec183
  br i1 %cmp.n192, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, label %.lr.ph.i.i.i.i.i58.preheader199

.lr.ph.i.i.i.i.i58.preheader199:                  ; preds = %.lr.ph.i.i.i.i.i58.preheader, %middle.block191
  %.08.i.i.i.i.i59.ph = phi ptr [ %.lcssa98, %.lr.ph.i.i.i.i.i58.preheader ], [ %i.ei, %middle.block191 ]
  %.sroa.04.07.i.i.i.i.i60.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i58.preheader ], [ %i.ej, %middle.block191 ]
  br label %.lr.ph.i.i.i.i.i58

.lr.ph.i.i.i.i.i58:                               ; preds = %.lr.ph.i.i.i.i.i58.preheader199, %.lr.ph.i.i.i.i.i58
  %.08.i.i.i.i.i59 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i58 ], [ %.08.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i58.preheader199 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i60 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i58 ], [ %.sroa.04.07.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i58.preheader199 ] ; 2 uses
  %i.eo = load i64, ptr %.sroa.04.07.i.i.i.i.i60, align 4
  store i64 %i.eo, ptr %.08.i.i.i.i.i59, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i60, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i59, i64 8 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.j
  br i1 %i.er, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, label %.lr.ph.i.i.i.i.i58, !llvm.loop !433

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit62: ; preds = %.lr.ph.i.i.i.i.i58, %middle.block191, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit57
  %.0.lcssa.i.i.i.i.i61 = phi ptr [ %.lcssa98, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit57 ], [ %i.ei, %middle.block191 ], [ %i.eq, %.lr.ph.i.i.i.i.i58 ]
  %.not.i63 = icmp eq ptr %i.ci, null
  br i1 %.not.i63, label %_ZNSt12_Vector_baseIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit62
  %i.es = load ptr, ptr %i.g, align 8
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.et, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.eu) #30
  br label %_ZNSt12_Vector_baseIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal4wasm19WasmCompilationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, %bb.q
  store ptr %i.cu, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i61, ptr %i.i, align 8
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cr
  store ptr %i.ev, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19WasmCompilationUnitESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN2v88internal4wasm19WasmCompilationUnitESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #23 comdat {
bb.a:
  tail call void @abort() #32
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #24

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #32
  unreachable

_ZNKSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x i64>, ptr %2, align 8
  store ptr null, ptr %2, align 8
  store <2 x i64> %i.s, ptr %i.q, align 8
  store ptr null, ptr %i.r, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x i64>, ptr %.0911.i.i.i, align 8, !alias.scope !437, !noalias !434
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !437, !noalias !434
  store <2 x i64> %i.u, ptr %.012.i.i.i, align 8, !alias.scope !434, !noalias !437
  store ptr null, ptr %i.t, align 8, !alias.scope !437, !noalias !434
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !420

_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

end_hunk_5
begin_hunk_6_@_ZN2v88internal4wasm15AsyncCompileJob22PrepareAndStartCompile15RunInForegroundEPS2_:bb.a

bb.n:                                             ; preds = %bb.m
  %i.aj = load i32, ptr %i.ah, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4
  br label %_ZNSt10shared_ptrIKN2v88internal4wasm10WasmModuleEEC2ERKS5_.exit13

bb.o:                                             ; preds = %bb.m
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN2v88internal4wasm10WasmModuleEEC2ERKS5_.exit13

_ZNSt10shared_ptrIKN2v88internal4wasm10WasmModuleEEC2ERKS5_.exit13: ; preds = %bb.l, %bb.n, %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = call noundef zeroext i1 @_ZN2v88internal4wasm15AsyncCompileJob23GetOrCreateNativeModuleESt10shared_ptrIKNS1_10WasmModuleEEm(ptr noundef nonnull align 8 dereferenceable(356) %1, ptr noundef nonnull %3, i64 noundef %i.an)
  %i.ap = load ptr, ptr %i.af, align 8            ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18, label %bb.p

bb.p:                                             ; preds = %_ZNSt10shared_ptrIKN2v88internal4wasm10WasmModuleEEC2ERKS5_.exit13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.aq, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4
  %i.av = load ptr, ptr %i.ap, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #29, !inline_history !219
  %i.ay = load ptr, ptr %i.ap, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #29, !inline_history !219
  br label %_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18

bb.r:                                             ; preds = %bb.p
  %i.bb = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i15 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i15, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

bb.t:                                             ; preds = %bb.r
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i17 = phi i32 [ %i.at, %bb.s ], [ %i.bd, %bb.t ]
  %i.be = icmp eq i32 %.0.i.i.i.i17, 1
  br i1 %i.be, label %bb.u, label %_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18, !prof !10

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #29
  br label %_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18

_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18: ; preds = %_ZNSt10shared_ptrIKN2v88internal4wasm10WasmModuleEEC2ERKS5_.exit13, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16, %bb.u
  br i1 %i.ao, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18
  tail call void @_ZNO2v88internal4wasm15AsyncCompileJob13FinishCompileEb(ptr noundef nonnull align 8 dereferenceable(356) %1, i1 noundef zeroext true)
  br label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit40

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.bg = load i8, ptr %i.bf, align 1, !range !76, !noundef !77
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 923), align 1, !range !76
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond = select i1 %i.bh, i1 true, i1 %i.bj
  br i1 %or.cond, label %_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bl = load ptr, ptr %i.bk, align 8
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_117ValidateFunctionsERKNS1_12NativeModuleENS2_17OnlyLazyFunctionsE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(552) %i.bl, i1 noundef zeroext true)
  %i.bm = load i32, ptr %4, align 8
  %.not = icmp eq i32 %i.bm, -1
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.x
  %i.br = load i64, ptr %i.bp, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #30
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.not, label %_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %.critedge
  call void @_ZNO2v88internal4wasm15AsyncCompileJob6FailedEv(ptr noundef nonnull align 8 dereferenceable(356) %1)
  br label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit40

_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g, %_ZNSt10shared_ptrIKN2v88internal4wasm10WasmModuleEEC2ERKS5_.exit, %.critedge, %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @_ZN2v88internal21CancelableTaskManager13CancelAndWaitEv(ptr noundef nonnull align 8 dereferenceable(81) %i.bt) #29
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 280
  %i.bx = load ptr, ptr %i.bw, align 8            ; 10 uses
  %i.by = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31, !noalias !491 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal4wasm15AsyncCompileJob24CompilationStateCallbackE, i64 16), ptr %i.by, align 8, !noalias !491
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %1, ptr %i.bz, align 8, !noalias !491
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 264 ; 6 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) #29
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 296 ; 6 uses
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = and i32 %i.cc, 1
  %.not12.i = icmp eq i32 %i.cd, 0
  br i1 %.not12.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ce = load ptr, ptr %i.by, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.by, i8 noundef zeroext 0) #29, !inline_history !37
  %.pre.i = load i32, ptr %i.cb, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ch = phi i32 [ %.pre.i, %bb.z ], [ %i.cc, %_ZNSt12__shared_ptrIKN2v88internal4wasm10WasmModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ci = and i32 %i.ch, 4
  %.not12.1.i = icmp eq i32 %i.ci, 0
  br i1 %.not12.1.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load ptr, ptr %i.by, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.by, i8 noundef zeroext 2) #29, !inline_history !37
  %.pre15.i = load i32, ptr %i.cb, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cm = phi i32 [ %.pre15.i, %bb.ab ], [ %i.ch, %bb.aa ]
  %i.cn = and i32 %i.cm, 4
  %.not13.i = icmp eq i32 %i.cn, 0
  br i1 %.not13.i, label %bb.ad, label %_ZNKSt14default_deleteIN2v88internal4wasm24CompilationEventCallbackEEclEPS3_.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 280 ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 288 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %.not.i.i19 = icmp eq ptr %i.cp, %i.cr
  br i1 %.not.i.i19, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = ptrtoint ptr %i.by to i64
  store i64 %i.cs, ptr %i.cp, align 8
  %i.ct = load ptr, ptr %i.co, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cu, ptr %i.co, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bx, i64 272 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8            ; 10 uses
  %i.cx = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cy = ptrtoint ptr %i.cw to i64               ; 4 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 3 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775800
  br i1 %i.da, label %bb.ag, label %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #32
  unreachable

_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.af
  %i.db = ashr exact i64 %i.cz, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i, %i.db ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.db
  %i.de = call i64 @llvm.umin.i64(i64 %i.dc, i64 1152921504606846975)
  %i.df = select i1 %i.dd, i64 1152921504606846975, i64 %i.de ; 3 uses
  %.not.i.i41 = icmp ne i64 %i.df, 0
  call void @llvm.assume(i1 %.not.i.i41)
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #31 ; 10 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz
  %i.dj = ptrtoint ptr %i.by to i64
  store i64 %i.dj, ptr %i.di, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.cw, %i.cp
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %6 = sub i64 %i.cx, %i.cy
  %7 = add i64 %6, -8                             ; 2 uses
  %i.dk = lshr i64 %7, 3
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader145, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dm = add i64 %i.cx, -8
  %i.dn = sub i64 %i.dm, %i.cy
  %i.do = and i64 %i.dn, -8
  %i.dp = add i64 %i.do, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dh, i64 %i.dp
  %scevgep118 = getelementptr i8, ptr %i.cw, i64 %i.dp
  %bound0 = icmp ult ptr %i.dh, %scevgep118
  %bound1 = icmp ult ptr %i.cw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader145, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dl, 4611686018427387900     ; 3 uses
  %i.dq = shl i64 %n.vec, 3                       ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dh, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %i.cw, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dh, i64 %i.dt ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.cw, i64 %i.dt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.du = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep119, align 8, !alias.scope !499, !noalias !494
  %wide.load120 = load <2 x i64>, ptr %i.du, align 8, !alias.scope !499, !noalias !494
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !502, !noalias !499
  store <2 x i64> %wide.load120, ptr %i.dv, align 8, !alias.scope !502, !noalias !499
  %i.dw = getelementptr i8, ptr %next.gep119, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep119, align 8, !alias.scope !499, !noalias !494
  store <2 x ptr> splat (ptr null), ptr %i.dw, align 8, !alias.scope !499, !noalias !494
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !504

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader145

.lr.ph.i.i.i.i.preheader145:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dh, %vector.memcheck ], [ %i.dh, %.lr.ph.i.i.i.i.preheader ], [ %i.dr, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader145, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader145 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader145 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.dy = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !497, !noalias !494
  store i64 %i.dy, ptr %.012.i.i.i.i, align 8, !alias.scope !494, !noalias !497
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !497, !noalias !494
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.dz, %i.cp
  br i1 %.not.i.i.i.i42, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !505

_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dh, %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i ], [ %i.dr, %middle.block ], [ %i.ea, %.lr.ph.i.i.i.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cw, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  %i.ec = load ptr, ptr %i.cq, align 8
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.ee) #30
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, %bb.ah
  store ptr %i.dh, ptr %i.cv, align 8
  store ptr %i.eb, ptr %i.co, align 8
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.df
  store ptr %i.ef, ptr %i.cq, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit.thread

_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit.thread: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit, %bb.ae
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) #29
  br label %_ZNSt10unique_ptrIN2v88internal4wasm15AsyncCompileJob24CompilationStateCallbackESt14default_deleteIS4_EED2Ev.exit

_ZNKSt14default_deleteIN2v88internal4wasm24CompilationEventCallbackEEclEPS3_.exit.i: ; preds = %bb.ac
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) #29
  %i.eg = load ptr, ptr %i.by, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.by) #29, !inline_history !52
  br label %_ZNSt10unique_ptrIN2v88internal4wasm15AsyncCompileJob24CompilationStateCallbackESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal4wasm15AsyncCompileJob24CompilationStateCallbackESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm24CompilationEventCallbackEEclEPS3_.exit.i, %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit.thread
  %i.ej = call noundef zeroext i1 @_ZN2v84base9TimeTicks16IsHighResolutionEv() #29
  br i1 %i.ej, label %bb.ai, label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackESt14default_deleteIS4_EED2Ev.exit

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm15AsyncCompileJob24CompilationStateCallbackESt14default_deleteIS4_EED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.el = load ptr, ptr %i.ek, align 8
  %.not.i21 = icmp eq ptr %i.el, null
  %i.em = select i1 %.not.i21, i32 1, i32 2
  %i.en = load ptr, ptr %1, align 8               ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 58656
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 63600
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.er = getelementptr i8, ptr %i.en, i64 58664
  %.val8 = load ptr, ptr %i.er, align 8           ; 2 uses
  %i.es = load <2 x ptr>, ptr %i.eo, align 8
  %i.et = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31, !noalias !506 ; 14 uses
  %.not.i.i.i.i22 = icmp eq ptr %.val8, null
  br i1 %.not.i.i.i.i22, label %_ZNSt10shared_ptrIN2v88internal8CountersEEC2ERKS3_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eu = getelementptr inbounds nuw i8, ptr %.val8, i64 8 ; 3 uses
  %i.ev = load i8, ptr @__libc_single_threaded, align 1, !noalias !506
  %.not.i.i.i.i.i = icmp eq i8 %i.ev, 0
  br i1 %.not.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = load i32, ptr %i.eu, align 4, !noalias !506
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %i.eu, align 4, !noalias !506
  br label %_ZNSt10shared_ptrIN2v88internal8CountersEEC2ERKS3_.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.ey = atomicrmw volatile add ptr %i.eu, i32 1 acq_rel, align 4, !noalias !506 ; 0 uses
  br label %_ZNSt10shared_ptrIN2v88internal8CountersEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN2v88internal8CountersEEC2ERKS3_.exit.i: ; preds = %bb.al, %bb.ak, %bb.ai
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 63608
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !506 ; 2 uses
  %i.fb = load <2 x ptr>, ptr %i.ep, align 8, !noalias !506
  %.not.i.i.i5.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i5.i, label %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt10shared_ptrIN2v88internal8CountersEEC2ERKS3_.exit.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 3 uses
  %i.fd = load i8, ptr @__libc_single_threaded, align 1, !noalias !506
  %.not.i.i.i.i6.i = icmp eq i8 %i.fd, 0
  br i1 %.not.i.i.i.i6.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fe = load i32, ptr %i.fc, align 4, !noalias !506
  %i.ff = add nsw i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fc, align 4, !noalias !506
  br label %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.fg = atomicrmw volatile add ptr %i.fc, i32 1 acq_rel, align 4, !noalias !506 ; 0 uses
  br label %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit.i: ; preds = %bb.ao, %bb.an, %_ZNSt10shared_ptrIN2v88internal8CountersEEC2ERKS3_.exit.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.eq, align 8, !noalias !506
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !506 ; 2 uses
  %i.fj = load <2 x ptr>, ptr %i.bu, align 8, !noalias !506
  %.not.i.i.i7.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i7.i, label %_ZSt11make_uniqueIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackEJRKSt10shared_ptrINS1_8CountersEERKS5_INS1_7metrics8RecorderEERNS0_7metrics8Recorder9ContextIdERS5_INS2_12NativeModuleEERNS4_11CompileModeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 12 ; 3 uses
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !noalias !506
  %.not.i.i.i.i8.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i.i8.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fm = load i32, ptr %i.fk, align 4, !noalias !506
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fk, align 4, !noalias !506
  br label %_ZSt11make_uniqueIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackEJRKSt10shared_ptrINS1_8CountersEERKS5_INS1_7metrics8RecorderEERNS0_7metrics8Recorder9ContextIdERS5_INS2_12NativeModuleEERNS4_11CompileModeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.fo = atomicrmw volatile add ptr %i.fk, i32 1 acq_rel, align 4, !noalias !506 ; 0 uses
  br label %_ZSt11make_uniqueIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackEJRKSt10shared_ptrINS1_8CountersEERKS5_INS1_7metrics8RecorderEERNS0_7metrics8Recorder9ContextIdERS5_INS2_12NativeModuleEERNS4_11CompileModeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackEJRKSt10shared_ptrINS1_8CountersEERKS5_INS1_7metrics8RecorderEERNS0_7metrics8Recorder9ContextIdERS5_INS2_12NativeModuleEERNS4_11CompileModeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZNSt10shared_ptrIN2v88internal7metrics8RecorderEEC2ERKS4_.exit.i, %bb.aq, %bb.ar
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackE, i64 16), ptr %i.et, align 8, !noalias !506
  %i.fp = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fq = call i64 @_ZN2v84base9TimeTicks3NowEv() #29, !noalias !506
  store i64 %i.fq, ptr %i.fp, align 8, !noalias !506
  %i.fr = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <2 x ptr> %i.es, ptr %i.fr, align 8, !noalias !506
  %i.fs = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store <2 x ptr> %i.fb, ptr %i.fs, align 8, !noalias !506
  %i.ft = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store i64 %.sroa.0.0.copyload.i, ptr %i.ft, align 8, !noalias !506
  %i.fu = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  store <2 x ptr> %i.fj, ptr %i.fu, align 8, !noalias !506
  %i.fv = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  store i32 %i.em, ptr %i.fv, align 8, !noalias !506
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) #29
  %i.fw = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.fx = and i32 %i.fw, 1
  %.not12.i23 = icmp eq i32 %i.fx, 0
  br i1 %.not12.i23, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZSt11make_uniqueIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackEJRKSt10shared_ptrINS1_8CountersEERKS5_INS1_7metrics8RecorderEERNS0_7metrics8Recorder9ContextIdERS5_INS2_12NativeModuleEERNS4_11CompileModeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @_ZN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallback4callENS1_16CompilationEventE(ptr noundef nonnull align 8 dereferenceable(8) %i.et, i8 noundef zeroext 0) #29, !inline_history !37
  %.pre.i24 = load i32, ptr %i.cb, align 4
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZSt11make_uniqueIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackEJRKSt10shared_ptrINS1_8CountersEERKS5_INS1_7metrics8RecorderEERNS0_7metrics8Recorder9ContextIdERS5_INS2_12NativeModuleEERNS4_11CompileModeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.fy = phi i32 [ %.pre.i24, %bb.as ], [ %i.fw, %_ZSt11make_uniqueIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackEJRKSt10shared_ptrINS1_8CountersEERKS5_INS1_7metrics8RecorderEERNS0_7metrics8Recorder9ContextIdERS5_INS2_12NativeModuleEERNS4_11CompileModeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ] ; 2 uses
  %i.fz = and i32 %i.fy, 4
  %.not12.1.i25 = icmp eq i32 %i.fz, 0
  br i1 %.not12.1.i25, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ga = load ptr, ptr %i.et, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(8) %i.et, i8 noundef zeroext 2) #29, !inline_history !37
  %.pre15.i26 = load i32, ptr %i.cb, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.gd = phi i32 [ %.pre15.i26, %bb.au ], [ %i.fy, %bb.at ]
  %i.ge = and i32 %i.gd, 4
  %.not13.i27 = icmp eq i32 %i.ge, 0
  br i1 %.not13.i27, label %bb.aw, label %_ZNKSt14default_deleteIN2v88internal4wasm24CompilationEventCallbackEEclEPS3_.exit.i31

bb.aw:                                            ; preds = %bb.av
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bx, i64 280 ; 4 uses
  %i.gg = load ptr, ptr %i.gf, align 8            ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bx, i64 288 ; 3 uses
  %i.gi = load ptr, ptr %i.gh, align 8
  %.not.i.i28 = icmp eq ptr %i.gg, %i.gi
  br i1 %.not.i.i28, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gj = ptrtoint ptr %i.et to i64
  store i64 %i.gj, ptr %i.gg, align 8
  %i.gk = load ptr, ptr %i.gf, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store ptr %i.gl, ptr %i.gf, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit29.thread

bb.ay:                                            ; preds = %bb.aw
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bx, i64 272 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8            ; 10 uses
  %i.go = ptrtoint ptr %i.gg to i64               ; 3 uses
  %i.gp = ptrtoint ptr %i.gn to i64               ; 4 uses
  %i.gq = sub i64 %i.go, %i.gp                    ; 3 uses
  %i.gr = icmp eq i64 %i.gq, 9223372036854775800
  br i1 %i.gr, label %bb.az, label %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i43

bb.az:                                            ; preds = %bb.ay
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #32
  unreachable

_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i43: ; preds = %bb.ay
  %i.gs = ashr exact i64 %i.gq, 3                 ; 3 uses
  %.sroa.speculated.i.i44 = call i64 @llvm.umax.i64(i64 %i.gs, i64 1)
  %i.gt = add nsw i64 %.sroa.speculated.i.i44, %i.gs ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.gs
  %i.gv = call i64 @llvm.umin.i64(i64 %i.gt, i64 1152921504606846975)
  %i.gw = select i1 %i.gu, i64 1152921504606846975, i64 %i.gv ; 3 uses
  %.not.i.i45 = icmp ne i64 %i.gw, 0
  call void @llvm.assume(i1 %.not.i.i45)
  %i.gx = shl nuw nsw i64 %i.gw, 3
  %i.gy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gx) #31 ; 10 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gq
  %i.ha = ptrtoint ptr %i.et to i64
  store i64 %i.ha, ptr %i.gz, align 8
  %.not10.i.i.i.i46 = icmp eq ptr %i.gn, %i.gg
  br i1 %.not10.i.i.i.i46, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i58, label %.lr.ph.i.i.i.i47.preheader

.lr.ph.i.i.i.i47.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i43
  %8 = sub i64 %i.go, %i.gp
  %9 = add i64 %8, -8                             ; 2 uses
  %i.hb = lshr i64 %9, 3
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 2 uses
  %min.iters.check129 = icmp ult i64 %9, 152
  br i1 %min.iters.check129, label %.lr.ph.i.i.i.i47.preheader144, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.lr.ph.i.i.i.i47.preheader
  %i.hd = add i64 %i.go, -8
  %i.he = sub i64 %i.hd, %i.gp
  %i.hf = and i64 %i.he, -8
  %i.hg = add i64 %i.hf, 8                        ; 2 uses
  %scevgep123 = getelementptr i8, ptr %i.gy, i64 %i.hg
  %scevgep124 = getelementptr i8, ptr %i.gn, i64 %i.hg
  %bound0125 = icmp ult ptr %i.gy, %scevgep124
  %bound1126 = icmp ult ptr %i.gn, %scevgep123
  %found.conflict127 = and i1 %bound0125, %bound1126
  br i1 %found.conflict127, label %.lr.ph.i.i.i.i47.preheader144, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck122
  %n.vec132 = and i64 %i.hc, 4611686018427387900  ; 3 uses
  %i.hh = shl i64 %n.vec132, 3                    ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gy, i64 %i.hh  ; 2 uses
  %i.hj = getelementptr i8, ptr %i.gn, i64 %i.hh
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph130
  %index134 = phi i64 [ 0, %vector.ph130 ], [ %index.next139, %vector.body133 ] ; 2 uses
  %i.hk = shl i64 %index134, 3                    ; 2 uses
  %next.gep135 = getelementptr i8, ptr %i.gy, i64 %i.hk ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.gn, i64 %i.hk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.hl = getelementptr i8, ptr %next.gep136, i64 16
  %wide.load137 = load <2 x i64>, ptr %next.gep136, align 8, !alias.scope !514, !noalias !509
  %wide.load138 = load <2 x i64>, ptr %i.hl, align 8, !alias.scope !514, !noalias !509
  %i.hm = getelementptr i8, ptr %next.gep135, i64 16
  store <2 x i64> %wide.load137, ptr %next.gep135, align 8, !alias.scope !517, !noalias !514
  store <2 x i64> %wide.load138, ptr %i.hm, align 8, !alias.scope !517, !noalias !514
  %i.hn = getelementptr i8, ptr %next.gep136, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep136, align 8, !alias.scope !514, !noalias !509
  store <2 x ptr> splat (ptr null), ptr %i.hn, align 8, !alias.scope !514, !noalias !509
  %index.next139 = add nuw i64 %index134, 4       ; 2 uses
  %i.ho = icmp eq i64 %index.next139, %n.vec132
  br i1 %i.ho, label %middle.block140, label %vector.body133, !llvm.loop !519

middle.block140:                                  ; preds = %vector.body133
  %cmp.n141 = icmp eq i64 %i.hc, %n.vec132
  br i1 %cmp.n141, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i58, label %.lr.ph.i.i.i.i47.preheader144

.lr.ph.i.i.i.i47.preheader144:                    ; preds = %vector.memcheck122, %.lr.ph.i.i.i.i47.preheader, %middle.block140
  %.012.i.i.i.i48.ph = phi ptr [ %i.gy, %vector.memcheck122 ], [ %i.gy, %.lr.ph.i.i.i.i47.preheader ], [ %i.hi, %middle.block140 ]
  %.0911.i.i.i.i49.ph = phi ptr [ %i.gn, %vector.memcheck122 ], [ %i.gn, %.lr.ph.i.i.i.i47.preheader ], [ %i.hj, %middle.block140 ]
  br label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %.lr.ph.i.i.i.i47.preheader144, %.lr.ph.i.i.i.i47
  %.012.i.i.i.i48 = phi ptr [ %i.hr, %.lr.ph.i.i.i.i47 ], [ %.012.i.i.i.i48.ph, %.lr.ph.i.i.i.i47.preheader144 ] ; 2 uses
  %.0911.i.i.i.i49 = phi ptr [ %i.hq, %.lr.ph.i.i.i.i47 ], [ %.0911.i.i.i.i49.ph, %.lr.ph.i.i.i.i47.preheader144 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.hp = load i64, ptr %.0911.i.i.i.i49, align 8, !alias.scope !512, !noalias !509
  store i64 %i.hp, ptr %.012.i.i.i.i48, align 8, !alias.scope !509, !noalias !512
  store ptr null, ptr %.0911.i.i.i.i49, align 8, !alias.scope !512, !noalias !509
  %i.hq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i49, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i48, i64 8 ; 2 uses
  %.not.i.i.i.i50 = icmp eq ptr %i.hq, %i.gg
  br i1 %.not.i.i.i.i50, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i58, label %.lr.ph.i.i.i.i47, !llvm.loop !520

_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i58: ; preds = %.lr.ph.i.i.i.i47, %middle.block140, %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i43
  %.0.lcssa.i.i.i.i52 = phi ptr [ %i.gy, %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i43 ], [ %i.hi, %middle.block140 ], [ %i.hr, %.lr.ph.i.i.i.i47 ]
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i52, i64 8
  %.not.i23.i60 = icmp eq ptr %i.gn, null
  br i1 %.not.i23.i60, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit61, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i58
  %i.ht = load ptr, ptr %i.gh, align 8
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = sub i64 %i.hu, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.hv) #30
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit61

_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit61: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i58, %bb.ba
  store ptr %i.gy, ptr %i.gm, align 8
  store ptr %i.hs, ptr %i.gf, align 8
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.gw
  store ptr %i.hw, ptr %i.gh, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit29.thread

_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit29.thread: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm24CompilationEventCallbackESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit61, %bb.ax
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) #29
  br label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackESt14default_deleteIS4_EED2Ev.exit

_ZNKSt14default_deleteIN2v88internal4wasm24CompilationEventCallbackEEclEPS3_.exit.i31: ; preds = %bb.av
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) #29
  %i.hx = load ptr, ptr %i.et, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.et) #29, !inline_history !52
  br label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl11AddCallbackESt10unique_ptrINS1_24CompilationEventCallbackESt14default_deleteIS5_EE.exit29.thread, %_ZNKSt14default_deleteIN2v88internal4wasm24CompilationEventCallbackEEclEPS3_.exit.i31, %_ZNSt10unique_ptrIN2v88internal4wasm15AsyncCompileJob24CompilationStateCallbackESt14default_deleteIS4_EED2Ev.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ib = load i8, ptr %i.ia, align 8, !range !76, !noundef !77
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.bb, label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit40

bb.bb:                                            ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackESt14default_deleteIS4_EED2Ev.exit
  %i.id = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 280
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !521
  %i.ig = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #31, !noalias !524 ; 7 uses
  store ptr %i.id, ptr %i.ig, align 8, !noalias !524
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ih, i8 0, i64 48, i1 false), !noalias !524
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl29InitializeCompilationProgressEPNS1_18ProfileInformationE(ptr noundef nonnull align 8 dereferenceable(416) %i.if, ptr noundef null), !noalias !521
  %i.ii = ptrtoint ptr %i.ig to i64
  store i64 %i.ii, ptr %5, align 8
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl26InitializeCompilationUnitsESt10unique_ptrINS2_22CompilationUnitBuilderESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(416) %i.bx, ptr noundef %5)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8            ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %i.ik to i64
  %i.ip = sub i64 %i.in, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.ip) #30
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %i.iq = load ptr, ptr %i.ih, align 8            ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderEEclEPS4_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = ptrtoint ptr %i.iq to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.iv) #30
  br label %_ZNKSt14default_deleteIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderEEclEPS4_.exit.i

_ZNKSt14default_deleteIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderEEclEPS4_.exit.i: ; preds = %bb.bd, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ig, i64 noundef 56) #30
  %i.iw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 708), align 4
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.be, label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit40

bb.be:                                            ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderEEclEPS4_.exit.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.bx, i64 216 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8            ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 56
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = call noundef zeroext i1 %i.jc(ptr noundef nonnull align 8 dereferenceable(8) %i.iz) #29, !inline_history !527
  br i1 %i.jd, label %bb.bf, label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit40

bb.bf:                                            ; preds = %bb.be
  %i.je = load ptr, ptr %i.iy, align 8            ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(8) %i.je) #29, !inline_history !527
  br label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit40

_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit40: ; preds = %bb.bf, %bb.be, %_ZNKSt14default_deleteIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderEEclEPS4_.exit.i, %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_123CompilationTimeCallbackESt14default_deleteIS4_EED2Ev.exit, %bb.y, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm24CompilationEventCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm15AsyncCompileJob24CompilationStateCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm15AsyncCompileJob24CompilationStateCallback4callENS1_16CompilationEventE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %3 = alloca %"class.std::unique_ptr.1221", align 8 ; 5 uses
  %4 = alloca %"class.std::shared_ptr.66", align 8 ; 8 uses
  %5 = alloca %"class.std::shared_ptr.66", align 16 ; 3 uses
  %6 = alloca %"class.std::shared_ptr.66", align 8 ; 2 uses
  %7 = alloca %"class.std::shared_ptr.66", align 16 ; 3 uses
  switch i8 %1, label %bb.aq [
    i8 0, label %bb.b
    i8 2, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
end_hunk_6
