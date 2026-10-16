Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/stacks?download=true
inline.NumInlined: 178
inline.NumDeleted: 108
begin_hunk_0_@_ZN2v88internal4wasm9StackPool3AddESt10unique_ptrINS1_11StackMemoryESt14default_deleteIS4_EE:bb.a
  %i.e = add i64 %i.d, %.058.i                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %.0.i = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZN2v88internal4wasm11StackMemory14allocated_sizeEv.exit, label %.lr.ph.i, !llvm.loop !1

_ZN2v88internal4wasm11StackMemory14allocated_sizeEv.exit: ; preds = %.lr.ph.i, %bb.a
  %.05.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.e, %.lr.ph.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, %.05.lcssa.i
  store i64 %i.i, ptr %i.g, align 8
  %i.j = load ptr, ptr %1, align 8                ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %.not.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal4wasm11StackMemory14allocated_sizeEv.exit
  %i.w = load i64, ptr %1, align 8
  store i64 %i.w, ptr %i.t, align 8
  store ptr null, ptr %1, align 8
  %i.x = load ptr, ptr %i.s, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.s, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit

bb.c:                                             ; preds = %_ZN2v88internal4wasm11StackMemory14allocated_sizeEv.exit
  tail call void @_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm9StackPool21ReleaseFinishedStacksEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((24, 32)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS6_EEEEvT_SB_(ptr noundef %i.b, ptr noundef %i.d)
  store ptr %i.b, ptr %i.c, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE5clearEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK2v88internal4wasm9StackPool4SizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.f, %i.h
  ret i64 %i.i
}

declare i64 @_ZN2v84base5Stack13GetStackStartEv() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt15__uniq_ptr_implIN2v88internal4wasm11StackMemoryESt14default_deleteIS3_EEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store ptr null, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt15__uniq_ptr_implIN2v88internal4wasm11StackMemoryESt14default_deleteIS3_EE5resetEPS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not5.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm11StackMemoryEEclEPS3_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZN2v88internal4wasm11StackMemory12StackSegmentD2Ev.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.f, %_ZN2v88internal4wasm11StackMemory12StackSegmentD2Ev.exit.i.i.i ], [ %i.d, %bb.b ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = tail call noundef ptr @_ZN2v88internal24GetPlatformPageAllocatorEv() #15 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #15, !inline_history !21 ; 2 uses
  %i.l = load ptr, ptr %.06.i.i.i, align 8
  %i.m = sub i64 0, %i.k
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = shl i64 %i.k, 1
  %i.r = add i64 %i.p, %i.q
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.n, i64 noundef %i.r) #15, !inline_history !21
  br i1 %i.v, label %_ZN2v88internal4wasm11StackMemory12StackSegmentD2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull align 8 dereferenceable(16) @_ZN2v88internal2V813kNoOOMDetailsE) #17
  unreachable

_ZN2v88internal4wasm11StackMemory12StackSegmentD2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 40) #18
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm11StackMemoryEEclEPS3_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNKSt14default_deleteIN2v88internal4wasm11StackMemoryEEclEPS3_.exit.i: ; preds = %_ZN2v88internal4wasm11StackMemory12StackSegmentD2Ev.exit.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 136) #18
  br label %_ZNSt15__uniq_ptr_implIN2v88internal4wasm11StackMemoryESt14default_deleteIS3_EE5resetEPS3_.exit

_ZNSt15__uniq_ptr_implIN2v88internal4wasm11StackMemoryESt14default_deleteIS3_EE5resetEPS3_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN2v88internal4wasm11StackMemoryEEclEPS3_.exit.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #16 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8
  store i64 %i.r, ptr %i.q, align 8
  store ptr null, ptr %2, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !alias.scope !36, !noalias !35
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !36, !noalias !35
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !35, !noalias !36
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !alias.scope !35, !noalias !36
  %i.ac = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !alias.scope !36, !noalias !35
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !alias.scope !36, !noalias !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.ae = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !36, !noalias !35
  store i64 %i.ae, ptr %.012.i.i.i, align 8, !alias.scope !35, !noalias !36
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !36, !noalias !35
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !26

_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %i.ai = add i64 %i.d, -8
  %i.aj = sub i64 %i.ai, %i.m                     ; 3 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.aj, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = and i64 %i.aj, -8                       ; 2 uses
  %i.an = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = getelementptr i8, ptr %1, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %bound0 = icmp ult ptr %i.ah, %i.aq
  %bound1 = icmp ult ptr %1, %i.ao
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec42, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.au = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.av = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !alias.scope !41, !noalias !39
  %wide.load48 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !41, !noalias !39
  %i.aw = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !alias.scope !42, !noalias !41
  store <2 x i64> %wide.load48, ptr %i.aw, align 8, !alias.scope !42, !noalias !41
  %i.ax = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !alias.scope !41, !noalias !39
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !alias.scope !41, !noalias !39
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.ay, label %middle.block50, label %vector.body43, !llvm.loop !33

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.al, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !alias.scope !40, !noalias !39
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !alias.scope !39, !noalias !40
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !40, !noalias !39
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !34

_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.as, %middle.block50 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #18
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS6_EEEEvT_SB_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EEEvPT_.exit
  %.05 = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EEEvPT_.exit ], [ %0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.05, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm11StackMemoryEEclEPS3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZN2v88internal4wasm11StackMemory12StackSegmentD2Ev.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.e, %_ZN2v88internal4wasm11StackMemory12StackSegmentD2Ev.exit.i.i.i.i.i ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = tail call noundef ptr @_ZN2v88internal24GetPlatformPageAllocatorEv() #15 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #15, !inline_history !43 ; 2 uses
  %i.k = load ptr, ptr %.06.i.i.i.i.i, align 8
  %i.l = sub i64 0, %i.j
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = shl i64 %i.j, 1
  %i.q = add i64 %i.o, %i.p
  %i.r = load ptr, ptr %i.f, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.m, i64 noundef %i.q) #15, !inline_history !43
  br i1 %i.u, label %_ZN2v88internal4wasm11StackMemory12StackSegmentD2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZN2v88internal2V823FatalProcessOutOfMemoryEPNS0_7IsolateEPKcRKNS_10OOMDetailsE(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull align 8 dereferenceable(16) @_ZN2v88internal2V813kNoOOMDetailsE) #17
  unreachable

_ZN2v88internal4wasm11StackMemory12StackSegmentD2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 40) #18
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm11StackMemoryEEclEPS3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNKSt14default_deleteIN2v88internal4wasm11StackMemoryEEclEPS3_.exit.i.i.i: ; preds = %_ZN2v88internal4wasm11StackMemory12StackSegmentD2Ev.exit.i.i.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef 136) #18
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EEEvPT_.exit

_ZSt8_DestroyISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EEEvPT_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN2v88internal4wasm11StackMemoryEEclEPS3_.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.v, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !7}
!1 = distinct !{!1, !7}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{ptr @_ZN2v88internal4wasm11StackMemory12StackSegmentC2Em}
!11 = !{ptr @_ZN2v88internal4wasm11StackMemory12StackSegmentD2Ev}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, i1 false, !"_ZN2v88internal4wasm11StackMemory3NewEv"}
!18 = distinct !{!18, !17, !"_ZN2v88internal4wasm11StackMemory3NewEv: argument 0"}
!19 = !{!18}
!20 = distinct !{null, null, null, ptr @_ZN2v88internal4wasm11StackMemoryD2Ev, ptr @_ZN2v88internal4wasm11StackMemory12StackSegmentD2Ev}
!21 = distinct !{null, null, ptr @_ZN2v88internal4wasm11StackMemoryD2Ev, ptr @_ZN2v88internal4wasm11StackMemory12StackSegmentD2Ev}
!22 = distinct !{!22, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!23 = distinct !{!23, !22, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!24 = distinct !{!24, !22, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!25 = distinct !{!25, !7, !37, !38}
!26 = distinct !{!26, !7, !38, !37}
!27 = distinct !{!27, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!28 = distinct !{!28, !27, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!29 = distinct !{!29, !27, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal4wasm11StackMemoryESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!30 = distinct !{!30, i1 false, !"LVerDomain"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !7, !37, !38}
!34 = distinct !{!34, !7, !37}
!35 = !{!23}
!36 = !{!24}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!28}
!40 = !{!29}
!41 = !{!29, !31}
!42 = !{!28, !32}
!43 = distinct !{null, null, null, null, ptr @_ZN2v88internal4wasm11StackMemoryD2Ev, ptr @_ZN2v88internal4wasm11StackMemory12StackSegmentD2Ev}
!44 = distinct !{!44, !7}
end_hunk_0
