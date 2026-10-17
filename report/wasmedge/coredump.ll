Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/coredump?download=true
inline.NumInlined: 1566
inline.NumDeleted: 909
begin_hunk_0_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !27
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !27
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !87

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !27
  store i8 %i.ad, ptr %1, align 1, !tbaa !27
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !87

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !27
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !27
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !57
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !87

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !27
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !27
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !57
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !87

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !27
  store i8 %i.au, ptr %1, align 1, !tbaa !27
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !39    ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #22
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !87

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !27
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ad, label %bb.ae, !prof !87

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load i8, ptr %2, align 1, !tbaa !27
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !27
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !87

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bt = load i8, ptr %1, align 1, !tbaa !27
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !27
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i55 = icmp eq ptr %i.av, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bf, ptr %0, align 8, !tbaa !39
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !57
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !38
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.WasmEdge::AST::Instruction", align 16 ; 8 uses
  %4 = alloca %"class.WasmEdge::AST::Instruction", align 16 ; 8 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.g = load ptr, ptr %0, align 8, !tbaa !73     ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.d, 288230376151711743
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #25
  unreachable

_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #22 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %.011.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(26) %.0810.i.i.i.i.i) #20
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !275

_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre34 = load ptr, ptr %0, align 8, !tbaa !73
  br label %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit

_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit.loopexit, %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE11_M_allocateEm.exit.i
  %5 = phi ptr [ %.pre34, %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit.loopexit ], [ %i.g, %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72   ; 2 uses
  %.not4.i.i = icmp eq ptr %5, %i.q
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %5, %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit ] ; 2 uses
  tail call void @_ZN8WasmEdge3AST11Instruction5resetEv(ptr noundef nonnull align 16 dereferenceable(26) %.05.i.i) #20
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i16, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !73
  br label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exit

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exitthread-pre-split, %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit
  %i.s = phi ptr [ %.pr, %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exitthread-pre-split ], [ %5, %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exit
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #21
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN8WasmEdge3AST11InstructionESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionEEvT_S4_.exit, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.x, ptr %i.p, align 8, !tbaa !72
  store ptr %i.x, ptr %i.e, align 8, !tbaa !75
  br label %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.i                     ; 3 uses
  %.not = icmp ult i64 %i.ab, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKN8WasmEdge3AST11InstructionElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp sgt i64 %i.d, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit

.lr.ph.i.i.i.i.i17:                               ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i17
  %.012.i.i.i.i.i = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i17 ], [ %i.an, %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i17 ], [ %i.am, %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i ] ; 6 uses
  %.0910.i.i.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i.i.i17 ], [ %i.al, %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %4, ptr noundef nonnull align 16 dereferenceable(26) %.0910.i.i.i.i.i) #20
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i128, ptr %4, align 16, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %4, ptr noundef nonnull align 16 dereferenceable(26) %.0811.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !91
  store i128 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %.0811.i.i.i.i.i, align 16, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 16, !tbaa !27
  %i.ah = load <2 x i32>, ptr %i.af, align 16, !tbaa !27
  store <2 x i32> %i.ah, ptr %i.ad, align 16, !tbaa !27
  store <2 x i32> %i.ag, ptr %i.af, align 16, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 2 uses
  %i.aj = load i16, ptr %i.ae, align 8, !tbaa !27
  %i.ak = load i16, ptr %i.ai, align 8, !tbaa !27
  store i16 %i.ak, ptr %i.ae, align 8, !tbaa !27
  store i16 %i.aj, ptr %i.ai, align 8, !tbaa !27
  call void @_ZN8WasmEdge3AST11Instruction5resetEv(ptr noundef nonnull align 16 dereferenceable(26) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i

_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.an = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ao = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.g, label %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit.loopexit, !llvm.loop !276

_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit.loopexit: ; preds = %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !72
  br label %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit

_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit: ; preds = %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit.loopexit, %bb.f
  %i.ap = phi ptr [ %i.z, %bb.f ], [ %.pre, %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.g, %bb.f ], [ %i.am, %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit.loopexit ] ; 3 uses
  %.not.i18 = icmp eq ptr %i.ap, %.08.lcssa.i.i.i.i.i
  br i1 %.not.i18, label %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE15_M_erase_at_endEPS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit ] ; 2 uses
  call void @_ZN8WasmEdge3AST11Instruction5resetEv(ptr noundef nonnull align 16 dereferenceable(26) %.05.i.i.i) #20
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN8WasmEdge3AST11InstructionES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i
  store ptr %.08.lcssa.i.i.i.i.i, ptr %i.y, align 8, !tbaa !72
  br label %_ZNSt6vectorIN8WasmEdge3AST11InstructionESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZSt9__advanceIPKN8WasmEdge3AST11InstructionElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.ab ; 2 uses
  %i.ar = ashr exact i64 %i.ab, 5                 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i.i.i.i.i20, label %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27

.lr.ph.i.i.i.i.i20:                               ; preds = %_ZSt9__advanceIPKN8WasmEdge3AST11InstructionElEvRT_T0_St26random_access_iterator_tag.exit
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26, %.lr.ph.i.i.i.i.i20
  %.012.i.i.i.i.i21 = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i20 ], [ %i.bd, %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i20 ], [ %i.bc, %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26 ] ; 6 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %1, %.lr.ph.i.i.i.i.i20 ], [ %i.bb, %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26 ] ; 3 uses
  %.not.i.i.i.i.i.i24 = icmp eq ptr %.0811.i.i.i.i.i22, %.0910.i.i.i.i.i23
  br i1 %.not.i.i.i.i.i.i24, label %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 16 dereferenceable(26) %.0910.i.i.i.i.i23) #20
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i25 = load i128, ptr %3, align 16, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %3, ptr noundef nonnull align 16 dereferenceable(26) %.0811.i.i.i.i.i22, i64 16, i1 false), !tbaa.struct !91
  store i128 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i25, ptr %.0811.i.i.i.i.i22, align 16, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 16 ; 2 uses
  %i.aw = load <2 x i32>, ptr %i.at, align 16, !tbaa !27
  %i.ax = load <2 x i32>, ptr %i.av, align 16, !tbaa !27
  store <2 x i32> %i.ax, ptr %i.at, align 16, !tbaa !27
  store <2 x i32> %i.aw, ptr %i.av, align 16, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 24 ; 2 uses
  %i.az = load i16, ptr %i.au, align 8, !tbaa !27
  %i.ba = load i16, ptr %i.ay, align 8, !tbaa !27
  store i16 %i.ba, ptr %i.au, align 8, !tbaa !27
  store i16 %i.az, ptr %i.ay, align 8, !tbaa !27
  call void @_ZN8WasmEdge3AST11Instruction5resetEv(ptr noundef nonnull align 16 dereferenceable(26) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26

_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26: ; preds = %bb.j, %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 32
  %i.bd = add nsw i64 %.012.i.i.i.i.i21, -1
  %i.be = icmp sgt i64 %.012.i.i.i.i.i21, 1
  br i1 %i.be, label %bb.i, label %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27.loopexit, !llvm.loop !276

_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27.loopexit: ; preds = %_ZN8WasmEdge3AST11InstructionaSERKS1_.exit.i.i.i.i.i26
  %.pre33 = load ptr, ptr %i.y, align 8, !tbaa !72
  br label %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27

_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27: ; preds = %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27.loopexit, %_ZSt9__advanceIPKN8WasmEdge3AST11InstructionElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bf = phi ptr [ %.pre33, %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27.loopexit ], [ %i.z, %_ZSt9__advanceIPKN8WasmEdge3AST11InstructionElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN8WasmEdge3AST11InstructionEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %i.bf, %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.sink.i, %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27 ] ; 2 uses
  call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %.011.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(26) %.0810.i.i.i.i) #20
  %i.bg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN8WasmEdge3AST11InstructionEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !275

_ZSt22__uninitialized_copy_aIPKN8WasmEdge3AST11InstructionEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bf, %_ZSt4copyIPKN8WasmEdge3AST11InstructionEPS2_ET0_T_S7_S6_.exit27 ], [ %i.bh, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.y, align 8, !tbaa !72
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
  %i.f = load i16, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  store i16 %i.f, ptr %i.d, align 8, !tbaa !27
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
end_hunk_0
