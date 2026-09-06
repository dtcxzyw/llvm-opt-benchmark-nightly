Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/coredump?download=true
inline.NumInlined: 1566
inline.NumDeleted: 909
begin_hunk_0_@_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag:bb.a
  br label %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZSt9__advanceIPKN8WasmEdge3AST11InstructionElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.ac ; 2 uses
  %i.as = ashr exact i64 %i.ac, 5                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i.i.i20, label %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27

.lr.ph.i.i.i.i.i20:                               ; preds = %_ZSt9__advanceIPKN8WasmEdge3AST11InstructionElEvRT_T0_St26random_access_iterator_tag.exit
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26, %.lr.ph.i.i.i.i.i20
  %.012.i.i.i.i.i21 = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i20 ], [ %i.be, %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i20 ], [ %i.bd, %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26 ] ; 6 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %1, %.lr.ph.i.i.i.i.i20 ], [ %i.bc, %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26 ] ; 3 uses
  %.not.i.i.i.i.i.i24 = icmp eq ptr %.0811.i.i.i.i.i22, %.0910.i.i.i.i.i23
  br i1 %.not.i.i.i.i.i.i24, label %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 16 dereferenceable(26) %.0910.i.i.i.i.i23) #20
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i25 = load i128, ptr %3, align 16, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 16 dereferenceable(26) %.0811.i.i.i.i.i22, i64 16, i1 false), !tbaa.struct !91
  store i128 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i25, ptr %.0811.i.i.i.i.i22, align 16, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 16 ; 2 uses
  %i.ax = load <2 x i32>, ptr %i.au, align 16, !tbaa !27
  %i.ay = load <2 x i32>, ptr %i.aw, align 16, !tbaa !27
  store <2 x i32> %i.ay, ptr %i.au, align 16, !tbaa !27
  store <2 x i32> %i.ax, ptr %i.aw, align 16, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 24 ; 2 uses
  %i.ba = load i16, ptr %i.av, align 8
  %i.bb = load i16, ptr %i.az, align 8
  store i16 %i.bb, ptr %i.av, align 8
  store i16 %i.ba, ptr %i.az, align 8
  call void @_ZN8WasmEdge3AST11Instruction5resetEv(ptr noundef nonnull align 16 dereferenceable(26) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26

_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26: ; preds = %bb.j, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 32
  %i.be = add nsw i64 %.012.i.i.i.i.i21, -1
  %i.bf = icmp sgt i64 %.012.i.i.i.i.i21, 1
  br i1 %i.bf, label %bb.i, label %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27.loopexit, !llvm.loop !276

_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27.loopexit: ; preds = %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26
  %.pre33 = load ptr, ptr %i.z, align 8, !tbaa !72
  br label %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27

_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27: ; preds = %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27.loopexit, %_ZSt9__advanceIPKN8WasmEdge3AST11InstructionElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = phi ptr [ %.pre33, %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27.loopexit ], [ %i.aa, %_ZSt9__advanceIPKN8WasmEdge3AST11InstructionElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN8WasmEdge3AST11InstructionEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %i.bg, %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.sink.i, %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27 ] ; 2 uses
  call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %.011.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(26) %.0810.i.i.i.i) #20
  %i.bh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN8WasmEdge3AST11InstructionEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !275

_ZSt22__uninitialized_copy_aIPKN8WasmEdge3AST11InstructionEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bg, %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27 ], [ %i.bi, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.z, align 8, !tbaa !72
  br label %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i, %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit, %_ZSt22__uninitialized_copy_aIPKN8WasmEdge3AST11InstructionEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE13_M_deallocateEPS2_m.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %0, ptr noundef nonnull align 16 dereferenceable(26) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x i32>, ptr %i.b, align 16, !tbaa !27
  store <2 x i32> %i.c, ptr %i.a, align 16, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i16, ptr %i.e, align 8              ; 2 uses
  store i16 %i.f, ptr %i.d, align 8
  %i.g = lshr i16 %i.f, 8                         ; 2 uses
  %i.h = trunc nuw i16 %i.g to i8                 ; 3 uses
  %i.i = trunc i16 %i.g to i1
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 16, !tbaa !27
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 4
  %i.m = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #22
          to label %bb.c unwind label %bb.v       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 2 uses
  %i.q = load i32, ptr %0, align 16, !tbaa !27    ; 2 uses
  switch i32 %i.q, label %bb.d [
    i32 0, label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit
    i32 1, label %bb.e
  ], !prof !277

bb.d:                                             ; preds = %bb.c
  %i.r = zext i32 %i.q to i64
  %.idx.i.i = shl nuw nsw i64 %i.r, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.p, i64 %.idx.i.i, i1 false)
  br label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !278
  br label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit

bb.f:                                             ; preds = %bb.a
  %i.s = and i8 %i.h, 2
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %0, align 16, !tbaa !27
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #22
          to label %bb.h unwind label %bb.v       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 2 uses
  %i.aa = load i32, ptr %0, align 16, !tbaa !27   ; 2 uses
  switch i32 %i.aa, label %bb.i [
    i32 0, label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit
    i32 1, label %bb.j
  ], !prof !277

bb.i:                                             ; preds = %bb.h
  %i.ab = zext i32 %i.aa to i64
  %.idx.i.i11 = shl nuw nsw i64 %i.ab, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.z, i64 %.idx.i.i11, i1 false)
  br label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.z, align 4, !tbaa !27
  store i64 %i.ac, ptr %i.w, align 4, !tbaa !27
  br label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit

bb.k:                                             ; preds = %bb.f
  %i.ad = and i8 %i.h, 4
  %.not9 = icmp eq i8 %i.ad, 0
  br i1 %.not9, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %bb.m unwind label %bb.v       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %1, align 16, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ae, ptr noundef nonnull align 4 dereferenceable(32) %i.af, i64 32, i1 false), !tbaa.struct !279
  store ptr %i.ae, ptr %0, align 16, !tbaa !27
  br label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit

bb.n:                                             ; preds = %bb.k
  %i.ag = and i8 %i.h, 8
  %.not10 = icmp eq i8 %i.ag, 0
  br i1 %.not10, label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22
          to label %bb.p unwind label %bb.v       ; 6 uses

bb.p:                                             ; preds = %bb.o
  %i.ai = load ptr, ptr %1, align 16, !tbaa !27   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !280 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !69 ; 4 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.p
  %i.ar = getelementptr inbounds i8, ptr null, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !70
  br label %bb.u

bb.q:                                             ; preds = %bb.p
  %2 = sdiv exact i64 %i.aq, 28
  %i.at = icmp ugt i64 %2, 329406144173384850
  br i1 %i.at, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST11Instruction15CatchDescriptorEE8allocateEmPKv.exit.i.i.i.i.i, !prof !74

.noexc.i.i.i:                                     ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST11Instruction15CatchDescriptorEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #22
          to label %.noexc14 unwind label %bb.v   ; 4 uses

.noexc14:                                         ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST11Instruction15CatchDescriptorEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !69
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.aq ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !70
  %3 = icmp sgt i64 %i.aq, 28
  br i1 %3, label %bb.r, label %bb.s, !prof !281

bb.r:                                             ; preds = %.noexc14
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.au, ptr align 4 %i.an, i64 %i.aq, i1 false)
  br label %bb.u

bb.s:                                             ; preds = %.noexc14
  %i.ax = icmp eq i64 %i.aq, 28
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.au, ptr noundef nonnull align 4 dereferenceable(28) %i.an, i64 28, i1 false), !tbaa.struct !282
  br label %bb.u

bb.u:                                             ; preds = %.thread, %bb.t, %bb.s, %bb.r
  %i.ay = phi ptr [ %i.av, %bb.t ], [ %i.av, %bb.s ], [ %i.av, %bb.r ], [ %i.ar, %.thread ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !280
  store ptr %i.ah, ptr %0, align 16, !tbaa !27
  br label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit

_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit: ; preds = %bb.h, %bb.c, %bb.j, %bb.i, %bb.e, %bb.d, %bb.n, %bb.u, %bb.m
  ret void

bb.v:                                             ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST11Instruction15CatchDescriptorEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i, %bb.o, %bb.l, %bb.g, %bb.b
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #23
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !53     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #25
  unreachable

_ZNKSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72   ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !73     ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc26.thread, label %bb.c

.noexc26.thread:                                  ; preds = %_ZNKSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr null, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store ptr %i.y, ptr %i.z, align 8, !tbaa !75
  br label %.loopexit

bb.c:                                             ; preds = %_ZNKSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = icmp ugt i64 %i.w, 9223372036854775776
  br i1 %i.aa, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !74

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #22
          to label %.noexc26 unwind label %bb.f   ; 4 uses

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !73
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !72
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !75
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc26, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ab, %.noexc26 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.t, %.noexc26 ] ; 2 uses
  tail call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(26) %.sroa.04.08.i.i.i.i.i.i.i.i) #20
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc26.thread
  %i.ah = phi ptr [ %i.x, %.noexc26.thread ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ null, %.noexc26.thread ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ai, ptr noundef nonnull align 8 dereferenceable(12) %i.aj, i64 12, i1 false), !tbaa.struct !66
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.p, %.loopexit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.c, %.loopexit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.ak = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !76, !alias.scope !291, !noalias !290
  store <2 x ptr> %i.ak, ptr %.012.i.i.i, align 8, !tbaa !76, !alias.scope !290, !noalias !291
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !75, !alias.scope !291, !noalias !290
  store ptr %i.an, ptr %i.al, align 8, !tbaa !75, !alias.scope !290, !noalias !291
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !291, !noalias !290
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef nonnull align 8 dereferenceable(12) %i.ap, i64 12, i1 false), !tbaa.struct !66, !alias.scope !292
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !286

_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.ar, %.lr.ph.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.ba, %.lr.ph.i.i.i28 ], [ %i.as, %_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i30 = phi ptr [ %i.az, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.at = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !tbaa !76, !alias.scope !294, !noalias !293
  store <2 x ptr> %i.at, ptr %.012.i.i.i29, align 8, !tbaa !76, !alias.scope !293, !noalias !294
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !75, !alias.scope !294, !noalias !293
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !75, !alias.scope !293, !noalias !294
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !294, !noalias !293
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ax, ptr noundef nonnull align 8 dereferenceable(12) %i.ay, i64 12, i1 false), !tbaa.struct !66, !alias.scope !295
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 40 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.az, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !286

_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.as, %_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ba, %.lr.ph.i.i.i28 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN8WasmEdge3AST13GlobalSegmentESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !55
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.be) #21
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST13GlobalSegmentESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN8WasmEdge3AST13GlobalSegmentESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN8WasmEdge3AST13GlobalSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !53
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !54
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !55
  ret void

bb.e:                                             ; preds = %bb.f
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %.noexc.i.i.i.i.i, %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
