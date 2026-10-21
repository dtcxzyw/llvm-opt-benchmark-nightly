Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.11?download=true
inline.NumInlined: 8904
inline.NumDeleted: 4915
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class18ProtocolMemberDataENCNvMs4_B2w_NtB2w_21ProtocolInterfaceView7members0ENtCs6Wt4yPw39th_9itertools9Itertools20sorted_by_cached_keyNtB2w_24StructuralMemberPriorityNCNvMse_B2w_NtNtB2y_8relation19TypeRelationChecker29check_protocol_interface_pair0EB2A_:bb.a
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjEEEB1e_.exit.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc6 unwind label %bb.z

.noexc6:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjEEEB1e_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13144
  br label %_RINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class14ProtocolMember18sort_by_cached_keyNtBx_24StructuralMemberPriorityNCNvMse_Bx_NtNtBz_8relation19TypeRelationChecker29check_protocol_interface_pair0EBB_.exit

.split60.i:                                       ; preds = %.split60.i.preheader, %bb.n
  %.sroa.016.061.i = phi i64 [ %i.ad, %bb.n ], [ 0, %.split60.i.preheader ] ; 7 uses
  %i.ad = add nuw nsw i64 %.sroa.016.061.i, 1     ; 2 uses
  %i.ae = load i64, ptr %i.r, align 8, !noalias !13144, !noundef !3 ; 2 uses
  %i.af = icmp ult i64 %.sroa.016.061.i, %i.ae
  br i1 %i.af, label %.split.i, label %.invoke.i

.split.i:                                         ; preds = %.split60.i
  %i.ag = load ptr, ptr %i.p, align 8, !noalias !13144, !nonnull !3, !noundef !3 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.split.i
  %i.ah = phi i64 [ %.sroa.016.061.i, %.split.i ], [ %.sroa.021.0.i, %bb.l ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ah
  %.sroa.021.0.in.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.021.0.i = load i64, ptr %.sroa.021.0.in.i, align 8, !noalias !13145, !noundef !3 ; 6 uses
  %i.aj = icmp ult i64 %.sroa.021.0.i, %.sroa.016.061.i
  br i1 %i.aj, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.sroa.016.061.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %.sroa.021.0.i, ptr %i.al, align 8, !noalias !13145
  %i.am = icmp ult i64 %.sroa.021.0.i, %i.l
  br i1 %i.am, label %bb.n, label %.invoke.i

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.016.061.i ; 2 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.021.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false), !noalias !13145
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false), !alias.scope !13143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !13145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond.not.i = icmp eq i64 %i.ad, %i.l
  br i1 %exitcond.not.i, label %bb.i, label %.split60.i

.invoke.i:                                        ; preds = %bb.m, %.split60.i
  %i.ap = phi i64 [ %.sroa.016.061.i, %.split60.i ], [ %.sroa.021.0.i, %bb.m ]
  %i.aq = phi i64 [ %i.ae, %.split60.i ], [ %i.l, %bb.m ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #40
          to label %.cont.i unwind label %bb.h, !noalias !13145

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.o:                                             ; preds = %bb.s, %bb.h
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #41, !noalias !13145
  unreachable

bb.p:                                             ; preds = %.noexc5
  %i.as = icmp ult i64 %i.x, 21
  br i1 %i.as, label %bb.r, label %bb.q, !prof !4

bb.q:                                             ; preds = %bb.p
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYBT_NtNtB8_3cmp10PartialOrd2ltEB10_(ptr noalias noundef nonnull align 4 %i.v, i64 noundef %i.x, ptr noalias noundef nonnull %i.a)
          to label %.split63.i.preheader unwind label %bb.s, !noalias !13145

bb.r:                                             ; preds = %bb.p
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1t_(ptr noalias noundef nonnull align 4 %i.v, i64 noundef %i.x, i64 noundef 1, ptr noalias noundef nonnull %i.a)
          to label %.split63.i.preheader unwind label %bb.s, !noalias !13145

bb.s:                                             ; preds = %.invoke98.i, %bb.r, %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymEEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #43
          to label %.body unwind label %bb.o, !noalias !13145

bb.t:                                             ; preds = %bb.y
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymEEEB1e_.exit.i unwind label %bb.u, !noalias !13145

bb.u:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.v, !noalias !13145

bb.v:                                             ; preds = %bb.u
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #41, !noalias !13145
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymEEEB1e_.exit.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc7 unwind label %bb.z

.noexc7:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymEEEB1e_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13144
  br label %_RINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class14ProtocolMember18sort_by_cached_keyNtBx_24StructuralMemberPriorityNCNvMse_Bx_NtNtBz_8relation19TypeRelationChecker29check_protocol_interface_pair0EBB_.exit

.split63.i:                                       ; preds = %.split63.i.preheader, %bb.y
  %.sroa.0.064.i = phi i64 [ %i.aw, %bb.y ], [ 0, %.split63.i.preheader ] ; 7 uses
  %i.aw = add nuw nsw i64 %.sroa.0.064.i, 1       ; 2 uses
  %i.ax = load i64, ptr %i.w, align 8, !noalias !13144, !noundef !3 ; 2 uses
  %i.ay = icmp ult i64 %.sroa.0.064.i, %i.ax
  br i1 %i.ay, label %.split62.i, label %.invoke98.i

.split62.i:                                       ; preds = %.split63.i
  %i.az = load ptr, ptr %i.u, align 8, !noalias !13144, !nonnull !3, !noundef !3 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.split62.i
  %i.ba = phi i64 [ %.sroa.0.064.i, %.split62.i ], [ %i.bc, %bb.w ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ba
  %.sroa.07.0.in.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %.sroa.07.0.i = load i32, ptr %.sroa.07.0.in.i, align 4, !noalias !13145, !noundef !3 ; 2 uses
  %i.bc = zext i32 %.sroa.07.0.i to i64           ; 5 uses
  %i.bd = icmp samesign ugt i64 %.sroa.0.064.i, %i.bc
  br i1 %i.bd, label %bb.w, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.0.064.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %.sroa.07.0.i, ptr %i.bf, align 4, !noalias !13145
  %i.bg = icmp samesign ugt i64 %i.l, %i.bc
  br i1 %i.bg, label %bb.y, label %.invoke98.i

bb.y:                                             ; preds = %bb.x
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.0.064.i ; 2 uses
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.bc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false), !noalias !13145
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 32, i1 false), !alias.scope !13143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !13145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond78.not.i = icmp eq i64 %i.aw, %i.l
  br i1 %exitcond78.not.i, label %bb.t, label %.split63.i

.invoke98.i:                                      ; preds = %bb.x, %.split63.i
  %i.bj = phi i64 [ %.sroa.0.064.i, %.split63.i ], [ %i.bc, %bb.x ]
  %i.bk = phi i64 [ %i.ax, %.split63.i ], [ %i.l, %bb.x ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bj, i64 noundef %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #40
          to label %.cont99.i unwind label %bb.s, !noalias !13145

.cont99.i:                                        ; preds = %.invoke98.i
  unreachable

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymEEEB1e_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjEEEB1e_.exit.i, %bb.d, %bb.c
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j, %bb.s, %bb.u, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.z ], [ %i.au, %bb.u ], [ %i.ab, %bb.j ], [ %i.at, %bb.s ], [ %i.aa, %bb.h ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class14ProtocolMemberEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.h) #43
          to label %bb.ab unwind label %bb.aa

_RINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class14ProtocolMember18sort_by_cached_keyNtBx_24StructuralMemberPriorityNCNvMse_Bx_NtNtBz_8relation19TypeRelationChecker29check_protocol_interface_pair0EBB_.exit: ; preds = %.noexc7, %.noexc6, %bb.a
  %i.bm = load i64, ptr %i.h, align 8, !range !31, !noundef !3
  %i.bn = icmp ult i64 %i.l, 288230376151711744
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.l
  store ptr %i.j, ptr %0, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bm, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bo, ptr %i.br, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.aa:                                            ; preds = %.body
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.ab:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { i64, ptr } @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtNtNtBc_5slice4iter4IterB1G_EEENtCs6Wt4yPw39th_9itertools9Itertools13find_positionNCNvMs6_B1I_NtNtB1K_8relation19TypeRelationChecker26check_signature_pair_innersb_0EB1M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13185)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !13185, !noalias !13186, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBa_8adapters4take4TakeINtNtBW_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtNtNtBc_5slice4iter4IterB27_EEENtB6_15IteratorRefSpec13spec_try_folduNCINvNvXs_NtBW_9enumerateINtB4w_9EnumeratepENtB6_8Iterator8try_fold9enumerateB26_uINtNtNtBc_3ops12control_flow11ControlFlowTjB26_EENCINvNvB54_4find5checkB6l_NCINvYBR_NtCs6Wt4yPw39th_9itertools9Itertools13find_positionNCNvMs6_B29_NtNtB2b_8relation19TypeRelationChecker26check_signature_pair_innersb_0E0E0E0B5G_EB2d_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13187)
  %i.d = load i64, ptr %0, align 8, !range !18, !alias.scope !13188, !noalias !13186, !noundef !3
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13189)
  %.promoted.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !13190, !noalias !13186 ; 4 uses
  %.not.peel.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i, null
  br i1 %.not.peel.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13192)
  %i.g = add i64 %i.b, -1                         ; 3 uses
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !13185, !noalias !13193
  %i.h = load i64, ptr %.promoted.i.i.i.i, align 8, !range !16, !alias.scope !13194, !noalias !13195, !noundef !3
  %.not.i.i.peel.i.i.i.i = icmp eq i64 %i.h, 2    ; 2 uses
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %2, label %1

1:                                                ; preds = %bb.d
  br i1 %.not.i.i.peel.i.i.i.i, label %.sink.split.i.i.loopexit.i.i.i.i, label %bb.f

2:                                                ; preds = %bb.d
  store ptr null, ptr %i.f, align 8, !alias.scope !13190, !noalias !13186
  %.sroa.2.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.peel.i.i.i.i, ptr %.promoted.i.i.i.i, ptr null
  br label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBa_8adapters4take4TakeINtNtBW_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtNtNtBc_5slice4iter4IterB27_EEENtB6_15IteratorRefSpec13spec_try_folduNCINvNvXs_NtBW_9enumerateINtB4w_9EnumeratepENtB6_8Iterator8try_fold9enumerateB26_uINtNtNtBc_3ops12control_flow11ControlFlowTjB26_EENCINvNvB54_4find5checkB6l_NCINvYBR_NtCs6Wt4yPw39th_9itertools9Itertools13find_positionNCNvMs6_B29_NtNtB2b_8relation19TypeRelationChecker26check_signature_pair_innersb_0E0E0E0B5G_EB2d_.exit

.sink.split.i.i.loopexit.i.i.i.i:                 ; preds = %1
  store ptr null, ptr %i.f, align 8, !alias.scope !13190, !noalias !13186
  br label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBa_8adapters4take4TakeINtNtBW_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtNtNtBc_5slice4iter4IterB27_EEENtB6_15IteratorRefSpec13spec_try_folduNCINvNvXs_NtBW_9enumerateINtB4w_9EnumeratepENtB6_8Iterator8try_fold9enumerateB26_uINtNtNtBc_3ops12control_flow11ControlFlowTjB26_EENCINvNvB54_4find5checkB6l_NCINvYBR_NtCs6Wt4yPw39th_9itertools9Itertools13find_positionNCNvMs6_B29_NtNtB2b_8relation19TypeRelationChecker26check_signature_pair_innersb_0E0E0E0B5G_EB2d_.exit

bb.e:                                             ; preds = %bb.f, %bb.b
  %.sroa.4.0 = phi i64 [ %.sroa.4.1, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %i.j = phi i64 [ %i.m, %bb.f ], [ %i.b, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !13188, !noalias !13186, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBa_8adapters4take4TakeINtNtBW_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtNtNtBc_5slice4iter4IterB27_EEENtB6_15IteratorRefSpec13spec_try_folduNCINvNvXs_NtBW_9enumerateINtB4w_9EnumeratepENtB6_8Iterator8try_fold9enumerateB26_uINtNtNtBc_3ops12control_flow11ControlFlowTjB26_EENCINvNvB54_4find5checkB6l_NCINvYBR_NtCs6Wt4yPw39th_9itertools9Itertools13find_positionNCNvMs6_B29_NtNtB2b_8relation19TypeRelationChecker26check_signature_pair_innersb_0E0E0E0B5G_EB2d_.exit, label %bb.g

bb.f:                                             ; preds = %1, %bb.c
  %.sroa.4.1 = phi i64 [ 0, %bb.c ], [ 1, %1 ]
  %i.m = phi i64 [ %i.b, %bb.c ], [ %i.g, %1 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 16, i1 false), !alias.scope !13188, !noalias !13186
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13196)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !13197, !noalias !13186, !nonnull !3, !noundef !3
  %3 = add i64 %i.j, %.sroa.4.0
  %4 = add i64 %3, -1
  br label %bb.h

bb.h:                                             ; preds = %5, %bb.g
  %i.p = phi i64 [ %6, %5 ], [ %.sroa.4.0, %bb.g ] ; 2 uses
  %i.q = phi i64 [ %i.u, %5 ], [ %i.j, %bb.g ]
  %i.r = phi ptr [ %i.t, %5 ], [ %i.l, %bb.g ]    ; 5 uses
  %i.s = icmp eq ptr %i.r, %i.o
  br i1 %i.s, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBa_8adapters4take4TakeINtNtBW_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtNtNtBc_5slice4iter4IterB27_EEENtB6_15IteratorRefSpec13spec_try_folduNCINvNvXs_NtBW_9enumerateINtB4w_9EnumeratepENtB6_8Iterator8try_fold9enumerateB26_uINtNtNtBc_3ops12control_flow11ControlFlowTjB26_EENCINvNvB54_4find5checkB6l_NCINvYBR_NtCs6Wt4yPw39th_9itertools9Itertools13find_positionNCNvMs6_B29_NtNtB2b_8relation19TypeRelationChecker26check_signature_pair_innersb_0E0E0E0B5G_EB2d_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 2 uses
  store ptr %i.t, ptr %i.k, align 8, !alias.scope !13197, !noalias !13186
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13198)
  %i.u = add i64 %i.q, -1                         ; 3 uses
  store i64 %i.u, ptr %i.a, align 8, !alias.scope !13185, !noalias !13199
  %i.v = load i64, ptr %i.r, align 8, !range !16, !alias.scope !13200, !noalias !13201, !noundef !3
  %.not.i.i.i.i.i = icmp eq i64 %i.v, 2           ; 2 uses
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %.loopexit12.i.i, label %5

.loopexit12.i.i:                                  ; preds = %bb.i
  %.sroa.2.0.i.i.mux.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.r, ptr null
  br label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBa_8adapters4take4TakeINtNtBW_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtNtNtBc_5slice4iter4IterB27_EEENtB6_15IteratorRefSpec13spec_try_folduNCINvNvXs_NtBW_9enumerateINtB4w_9EnumeratepENtB6_8Iterator8try_fold9enumerateB26_uINtNtNtBc_3ops12control_flow11ControlFlowTjB26_EENCINvNvB54_4find5checkB6l_NCINvYBR_NtCs6Wt4yPw39th_9itertools9Itertools13find_positionNCNvMs6_B29_NtNtB2b_8relation19TypeRelationChecker26check_signature_pair_innersb_0E0E0E0B5G_EB2d_.exit

5:                                                ; preds = %bb.i
  %6 = add i64 %i.p, 1
  br i1 %.not.i.i.i.i.i, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBa_8adapters4take4TakeINtNtBW_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtNtNtBc_5slice4iter4IterB27_EEENtB6_15IteratorRefSpec13spec_try_folduNCINvNvXs_NtBW_9enumerateINtB4w_9EnumeratepENtB6_8Iterator8try_fold9enumerateB26_uINtNtNtBc_3ops12control_flow11ControlFlowTjB26_EENCINvNvB54_4find5checkB6l_NCINvYBR_NtCs6Wt4yPw39th_9itertools9Itertools13find_positionNCNvMs6_B29_NtNtB2b_8relation19TypeRelationChecker26check_signature_pair_innersb_0E0E0E0B5G_EB2d_.exit, label %bb.h

_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBa_8adapters4take4TakeINtNtBW_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtNtNtBc_5slice4iter4IterB27_EEENtB6_15IteratorRefSpec13spec_try_folduNCINvNvXs_NtBW_9enumerateINtB4w_9EnumeratepENtB6_8Iterator8try_fold9enumerateB26_uINtNtNtBc_3ops12control_flow11ControlFlowTjB26_EENCINvNvB54_4find5checkB6l_NCINvYBR_NtCs6Wt4yPw39th_9itertools9Itertools13find_positionNCNvMs6_B29_NtNtB2b_8relation19TypeRelationChecker26check_signature_pair_innersb_0E0E0E0B5G_EB2d_.exit: ; preds = %bb.h, %5, %bb.a, %2, %.sink.split.i.i.loopexit.i.i.i.i, %bb.e, %.loopexit12.i.i
  %.sroa.4.0.i.i = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ %.promoted.i.i.i.i, %.sink.split.i.i.loopexit.i.i.i.i ], [ %.sroa.2.0.i.i.i.i.i.i.i.i, %2 ], [ %.sroa.2.0.i.i.mux.i.i.i.i.i, %.loopexit12.i.i ], [ null, %bb.h ], [ %i.r, %5 ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ undef, %bb.a ], [ undef, %bb.e ], [ 0, %.sink.split.i.i.loopexit.i.i.i.i ], [ 0, %2 ], [ %4, %.loopexit12.i.i ], [ undef, %bb.h ], [ %i.p, %5 ]
  %.not = icmp eq ptr %.sroa.4.0.i.i, null
  %.sroa.0.0 = select i1 %.not, i64 undef, i64 %.sroa.0.0.i.i
  %i.x = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.y = insertvalue { i64, ptr } %i.x, ptr %.sroa.4.0.i.i, 1
  ret { i64, ptr } %i.y
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !13214
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !13214
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !13214
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !13214
  %.val.i = load i64, ptr %1, align 4, !noalias !13215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13216
  store i64 %.val.i, ptr %i.a, align 8, !noalias !13216
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13216
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !13217
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !13217
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !13217 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !13217
  %i.h = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !13217, !noundef !3
  %i.i = shl i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !13217, !noundef !3
  %i.l = or i64 %i.i, %i.k                        ; 2 uses
  %i.m = xor i64 %i.l, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.n = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.o = add i64 %i.m, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.q = xor i64 %i.p, %i.n                       ; 3 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 16)
  %i.s = xor i64 %i.r, %i.o                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 32)
  %i.u = add i64 %i.o, %i.q                       ; 3 uses
  %i.v = add i64 %i.s, %i.t                       ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 17)
  %i.x = xor i64 %i.u, %i.w                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 21)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = xor i64 %i.v, %i.l
  %i.ac = xor i64 %i.aa, 255
  %i.ad = add i64 %i.ab, %i.x                     ; 3 uses
  %i.ae = add i64 %i.z, %i.ac                     ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 17)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 21)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13)
  %i.au = xor i64 %i.at, %i.ar                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 2 uses
  %i.bl = add i64 %i.bi, %i.bg                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bp = xor i64 %i.bn, %i.bm
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = xor i64 %i.bq, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.br
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !13240
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !13240
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !13240
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !13240
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13242)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.i = load i8, ptr %i.h, align 1, !range !17, !alias.scope !13243, !noalias !13244, !noundef !3 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !13243, !noalias !13244, !noundef !3
  %i.l = and i64 %i.k, 72057594037927935
  %i.m = icmp ult i8 %i.i, -48
  %i.n = zext i8 %i.i to i64
  %i.o = add nsw i64 %i.n, -192
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 16)
  %.sroa.0.0.i.i.i.i = select i1 %i.m, i64 %spec.store.select.i.i.i.i, i64 %i.l
  %i.p = icmp ugt i8 %i.i, -49
  %i.q = load ptr, ptr %1, align 8, !alias.scope !13243, !noalias !13244
  %.sroa.01.0.i.i.i.i = select i1 %i.p, ptr %i.q, ptr %1
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i.i.i.i, i64 noundef range(i64 -192, 72057594037927936) %.sroa.0.0.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13245
  store i8 -1, ptr %i.a, align 1, !noalias !13245
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !13246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13245
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !13247
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !13247
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !13247 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !13247
  %i.r = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !13247, !noundef !3
  %i.s = shl i64 %i.r, 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !13247, !noundef !3
  %i.v = or i64 %i.s, %i.u                        ; 2 uses
  %i.w = xor i64 %i.v, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.x = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.y = add i64 %i.w, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.aa = xor i64 %i.z, %i.x                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 16)
  %i.ac = xor i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ae = add i64 %i.y, %i.aa                     ; 3 uses
  %i.af = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 17)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = xor i64 %i.af, %i.v
  %i.am = xor i64 %i.ak, 255
  %i.an = add i64 %i.al, %i.ah                    ; 3 uses
  %i.ao = add i64 %i.aj, %i.am                    ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 13)
  %i.aq = xor i64 %i.an, %i.ap                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 32)
  %i.au = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.av = add i64 %i.as, %i.at                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 17)
  %i.ax = xor i64 %i.au, %i.aw                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 21)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = add i64 %i.ax, %i.av                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.be = xor i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.be, %i.bc                    ; 3 uses
  %i.bj = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 17)
  %i.bl = xor i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 21)
  %i.bn = xor i64 %i.bm, %i.bj                    ; 3 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 32)
  %i.bp = add i64 %i.bl, %i.bj
  %i.bq = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 13)
end_hunk_0
