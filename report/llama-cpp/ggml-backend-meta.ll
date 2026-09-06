Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-backend-meta?download=true
inline.NumInlined: 2841
inline.NumDeleted: 1289
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt6vectorISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EE17_M_default_appendEm:bb.a
  %wide.load = load <2 x i64>, ptr %next.gep41, align 8, !tbaa !153, !alias.scope !338, !noalias !336
  %wide.load42 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !153, !alias.scope !338, !noalias !336
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !153, !alias.scope !339, !noalias !338
  store <2 x i64> %wide.load42, ptr %i.ak, align 8, !tbaa !153, !alias.scope !339, !noalias !338
  %i.al = getelementptr i8, ptr %next.gep41, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep41, align 8, !tbaa !153, !alias.scope !338, !noalias !336
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !153, !alias.scope !338, !noalias !336
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !332

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader44

.lr.ph.i.i.i.preheader44:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader44, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader44 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader44 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.an = load i64, ptr %.0911.i.i.i, align 8, !tbaa !153, !alias.scope !337, !noalias !336
  store i64 %i.an, ptr %.012.i.i.i, align 8, !tbaa !153, !alias.scope !336, !noalias !337
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !153, !alias.scope !337, !noalias !336
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !333

_ZNSt6vectorISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EE13_M_deallocateEPS3_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.aq = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aq) #29
  br label %_ZNSt12_Vector_baseISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZNSt6vectorISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !150
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !151
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.as, ptr %i.h, align 8, !tbaa !138
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10unique_ptrI19ggml_backend_buffer27ggml_backend_buffer_deleterESaIS3_EE13_M_deallocateEPS3_m.exit37, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @ggml_free(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL26ggml_backend_meta_get_nameP12ggml_backend(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %ggml_backend_is_meta.exit.thread, label %ggml_backend_is_meta.exit

ggml_backend_is_meta.exit:                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.c = icmp eq ptr %i.b, @_ZL26ggml_backend_meta_get_nameP12ggml_backend
  br i1 %i.c, label %bb.b, label %ggml_backend_is_meta.exit.thread

ggml_backend_is_meta.exit.thread:                 ; preds = %bb.a, %ggml_backend_is_meta.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1855, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.26) #26
  unreachable

bb.b:                                             ; preds = %ggml_backend_is_meta.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL22ggml_backend_meta_freeP12ggml_backend(ptr noundef %0) #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %ggml_backend_is_meta.exit.thread, label %ggml_backend_is_meta.exit

ggml_backend_is_meta.exit:                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.c = icmp eq ptr %i.b, @_ZL26ggml_backend_meta_get_nameP12ggml_backend
  br i1 %i.c, label %bb.b, label %ggml_backend_is_meta.exit.thread

ggml_backend_is_meta.exit.thread:                 ; preds = %bb.a, %ggml_backend_is_meta.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1861, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.26) #26
  unreachable

bb.b:                                             ; preds = %ggml_backend_is_meta.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN25ggml_backend_meta_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.e) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 176) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL34ggml_backend_meta_set_tensor_asyncP12ggml_backendP11ggml_tensorPKvmm(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 {
bb.a:
  %5 = alloca %struct.ggml_backend_meta_split_state, align 8 ; 6 uses
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %ggml_backend_is_meta.exit.thread.i, label %ggml_backend_is_meta.exit.i

ggml_backend_is_meta.exit.i:                      ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.c = icmp eq ptr %i.b, @_ZL26ggml_backend_meta_get_nameP12ggml_backend
  br i1 %i.c, label %ggml_backend_meta_n_backends.exit, label %ggml_backend_is_meta.exit.thread.i

ggml_backend_is_meta.exit.thread.i:               ; preds = %ggml_backend_is_meta.exit.i, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 2502, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.124) #26
  unreachable

ggml_backend_meta_n_backends.exit:                ; preds = %ggml_backend_is_meta.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !131  ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !130  ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 80                  ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %ggml_backend_meta_n_backends.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1869, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.29) #26
  unreachable

bb.c:                                             ; preds = %ggml_backend_meta_n_backends.exit
  %i.o = tail call zeroext i1 @ggml_is_contiguous(ptr noundef %1)
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1870, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.30) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call fastcc void @_ZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorb(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull %1, i1 noundef zeroext false), !inline_history !7
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 2120
  %i.q = load i32, ptr %i.p, align 8, !tbaa !160
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1873, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.31) #26
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 2056
  %i.t = load i32, ptr %i.s, align 8, !tbaa !161
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1874, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.32) #26
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = load i32, ptr %5, align 8, !tbaa !162    ; 2 uses
  switch i32 %i.v, label %bb.o [
    i32 0, label %bb.j
    i32 1, label %bb.j
    i32 2, label %bb.j
    i32 10, label %.preheader
  ]

.preheader:                                       ; preds = %bb.i
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %.loopexit, label %ggml_backend_is_meta.exit.i54

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %1, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 56
  %i.z = load i64, ptr %i.y, align 8, !tbaa !77   ; 4 uses
  %i.aa = urem i64 %4, %i.z
  %i.ab = udiv exact i64 %4, %i.z
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1883, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.34) #26
  unreachable

bb.l:                                             ; preds = %bb.j
  %.not61 = icmp eq ptr %i.h, %i.i
  br i1 %.not61, label %._crit_edge.thread, label %ggml_backend_is_meta.exit.i51

._crit_edge:                                      ; preds = %bb.n
  %i.ad = icmp eq i64 %.1, %i.z
  br i1 %i.ad, label %.loopexit, label %._crit_edge.thread

ggml_backend_is_meta.exit.i51:                    ; preds = %bb.l, %bb.n
  %.04660 = phi i64 [ %i.as, %bb.n ], [ 0, %bb.l ] ; 3 uses
  %.04759 = phi i64 [ %.1, %bb.n ], [ 0, %bb.l ]  ; 3 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.af = icmp eq ptr %i.ae, @_ZL26ggml_backend_meta_get_nameP12ggml_backend
  br i1 %i.af, label %ggml_backend_meta_simple_backend.exit, label %ggml_backend_is_meta.exit.thread.i52

ggml_backend_is_meta.exit.thread.i52:             ; preds = %ggml_backend_is_meta.exit.i51
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 2508, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.124) #26
  unreachable

ggml_backend_meta_simple_backend.exit:            ; preds = %ggml_backend_is_meta.exit.i51
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !130
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.ai, i64 %.04660
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !147
  %i.al = tail call fastcc noundef ptr @_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm(ptr noundef nonnull %1, i64 noundef %.04660) ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %i.w
  %i.an = getelementptr i8, ptr %i.am, i64 56
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !77 ; 4 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %ggml_backend_meta_simple_backend.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.04759
  tail call void @ggml_backend_tensor_set_2d_async(ptr noundef %i.ak, ptr noundef nonnull %i.al, ptr noundef %i.aq, i64 noundef 0, i64 noundef %i.ao, i64 noundef %i.ab, i64 noundef %i.ao, i64 noundef %i.z)
  %i.ar = add i64 %i.ao, %.04759
  br label %bb.n

bb.n:                                             ; preds = %ggml_backend_meta_simple_backend.exit, %bb.m
  %.1 = phi i64 [ %i.ar, %bb.m ], [ %.04759, %ggml_backend_meta_simple_backend.exit ] ; 2 uses
  %i.as = add nuw i64 %.04660, 1                  ; 2 uses
  %exitcond63.not = icmp eq i64 %i.as, %i.m
  br i1 %exitcond63.not, label %._crit_edge, label %ggml_backend_is_meta.exit.i51, !llvm.loop !340

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1898, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.35) #26
  unreachable

ggml_backend_is_meta.exit.i54:                    ; preds = %.preheader, %ggml_backend_meta_simple_backend.exit56
  %.058 = phi i64 [ %i.bb, %ggml_backend_meta_simple_backend.exit56 ], [ 0, %.preheader ] ; 3 uses
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.au = icmp eq ptr %i.at, @_ZL26ggml_backend_meta_get_nameP12ggml_backend
  br i1 %i.au, label %ggml_backend_meta_simple_backend.exit56, label %ggml_backend_is_meta.exit.thread.i55

ggml_backend_is_meta.exit.thread.i55:             ; preds = %ggml_backend_is_meta.exit.i54
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 2508, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.124) #26
  unreachable

ggml_backend_meta_simple_backend.exit56:          ; preds = %ggml_backend_is_meta.exit.i54
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !130
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %i.ax, i64 %.058
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !147
  %i.ba = tail call fastcc noundef ptr @_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm(ptr noundef nonnull %1, i64 noundef %.058)
  tail call void @ggml_backend_tensor_set_async(ptr noundef %i.az, ptr noundef %i.ba, ptr noundef %2, i64 noundef 0, i64 noundef %4)
  %i.bb = add nuw i64 %.058, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.m
  br i1 %exitcond.not, label %.loopexit, label %ggml_backend_is_meta.exit.i54, !llvm.loop !341

bb.o:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1907, ptr noundef nonnull @.str.9) #26
  unreachable

.loopexit:                                        ; preds = %ggml_backend_meta_simple_backend.exit56, %.preheader, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL34ggml_backend_meta_get_tensor_asyncP12ggml_backendPK11ggml_tensorPvmm(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 {
bb.a:
  %5 = alloca %struct.ggml_backend_meta_split_state, align 8 ; 6 uses
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %ggml_backend_is_meta.exit.thread.i, label %ggml_backend_is_meta.exit.i

ggml_backend_is_meta.exit.i:                      ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.c = icmp eq ptr %i.b, @_ZL26ggml_backend_meta_get_nameP12ggml_backend
  br i1 %i.c, label %ggml_backend_meta_n_backends.exit, label %ggml_backend_is_meta.exit.thread.i

ggml_backend_is_meta.exit.thread.i:               ; preds = %ggml_backend_is_meta.exit.i, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 2502, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.124) #26
  unreachable

ggml_backend_meta_n_backends.exit:                ; preds = %ggml_backend_is_meta.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !131  ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !130  ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 80
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %ggml_backend_meta_n_backends.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1914, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.29) #26
  unreachable

bb.c:                                             ; preds = %ggml_backend_meta_n_backends.exit
  %i.o = tail call zeroext i1 @ggml_is_contiguous(ptr noundef %1)
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1915, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.30) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call fastcc void @_ZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorb(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull %1, i1 noundef zeroext false), !inline_history !7
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 2120
  %i.q = load i32, ptr %i.p, align 8, !tbaa !160
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1918, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.31) #26
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 2056
  %i.t = load i32, ptr %i.s, align 8, !tbaa !161
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1919, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.32) #26
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = load i32, ptr %5, align 8, !tbaa !162    ; 2 uses
  switch i32 %i.v, label %bb.o [
    i32 0, label %bb.j
    i32 1, label %bb.j
    i32 2, label %bb.j
    i32 10, label %ggml_backend_is_meta.exit.i50
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %1, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 56
  %i.z = load i64, ptr %i.y, align 8, !tbaa !77   ; 4 uses
  %i.aa = urem i64 %4, %i.z
  %i.ab = udiv exact i64 %4, %i.z
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1928, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.34) #26
  unreachable

bb.l:                                             ; preds = %bb.j
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %._crit_edge.thread, label %ggml_backend_is_meta.exit.i47

._crit_edge:                                      ; preds = %bb.n
  %i.ad = icmp eq i64 %.1, %i.z
  br i1 %i.ad, label %bb.p, label %._crit_edge.thread

ggml_backend_is_meta.exit.i47:                    ; preds = %bb.l, %bb.n
  %.055 = phi i64 [ %i.as, %bb.n ], [ 0, %bb.l ]  ; 3 uses
  %.04354 = phi i64 [ %.1, %bb.n ], [ 0, %bb.l ]  ; 3 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.af = icmp eq ptr %i.ae, @_ZL26ggml_backend_meta_get_nameP12ggml_backend
  br i1 %i.af, label %ggml_backend_meta_simple_backend.exit, label %ggml_backend_is_meta.exit.thread.i48

ggml_backend_is_meta.exit.thread.i48:             ; preds = %ggml_backend_is_meta.exit.i47
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 2508, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.124) #26
  unreachable

ggml_backend_meta_simple_backend.exit:            ; preds = %ggml_backend_is_meta.exit.i47
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !130
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.ai, i64 %.055
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !147
  %i.al = tail call fastcc noundef ptr @_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm(ptr noundef nonnull %1, i64 noundef %.055) ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %i.w
  %i.an = getelementptr i8, ptr %i.am, i64 56
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !77 ; 4 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %ggml_backend_meta_simple_backend.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.04354
  tail call void @ggml_backend_tensor_get_2d_async(ptr noundef %i.ak, ptr noundef nonnull %i.al, ptr noundef %i.aq, i64 noundef 0, i64 noundef %i.ao, i64 noundef %i.ab, i64 noundef %i.ao, i64 noundef %i.z)
  %i.ar = add i64 %i.ao, %.04354
  br label %bb.n

bb.n:                                             ; preds = %ggml_backend_meta_simple_backend.exit, %bb.m
  %.1 = phi i64 [ %i.ar, %bb.m ], [ %.04354, %ggml_backend_meta_simple_backend.exit ] ; 2 uses
  %i.as = add nuw i64 %.055, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %ggml_backend_is_meta.exit.i47, !llvm.loop !342

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1943, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.35) #26
  unreachable

ggml_backend_is_meta.exit.i50:                    ; preds = %bb.i
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.au = icmp eq ptr %i.at, @_ZL26ggml_backend_meta_get_nameP12ggml_backend
  br i1 %i.au, label %ggml_backend_meta_simple_backend.exit52, label %ggml_backend_is_meta.exit.thread.i51

ggml_backend_is_meta.exit.thread.i51:             ; preds = %ggml_backend_is_meta.exit.i50
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 2508, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.124) #26
  unreachable

ggml_backend_meta_simple_backend.exit52:          ; preds = %ggml_backend_is_meta.exit.i50
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !130
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !147
  %i.az = tail call fastcc noundef ptr @_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm(ptr noundef nonnull %1, i64 noundef 0)
  tail call void @ggml_backend_tensor_get_async(ptr noundef %i.ay, ptr noundef %i.az, ptr noundef %2, i64 noundef 0, i64 noundef %4)
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1952, ptr noundef nonnull @.str.9) #26
  unreachable

bb.p:                                             ; preds = %._crit_edge, %ggml_backend_meta_simple_backend.exit52
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL29ggml_backend_meta_synchronizeP12ggml_backend(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %ggml_backend_is_meta.exit.thread.i, label %ggml_backend_is_meta.exit.i

ggml_backend_is_meta.exit.i:                      ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.c = icmp eq ptr %i.b, @_ZL26ggml_backend_meta_get_nameP12ggml_backend
  br i1 %i.c, label %ggml_backend_meta_n_backends.exit, label %ggml_backend_is_meta.exit.thread.i

ggml_backend_is_meta.exit.thread.i:               ; preds = %ggml_backend_is_meta.exit.i, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 2502, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.124) #26
  unreachable

ggml_backend_meta_n_backends.exit:                ; preds = %ggml_backend_is_meta.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !131  ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !130  ; 2 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %._crit_edge, label %ggml_backend_is_meta.exit.i6.preheader

ggml_backend_is_meta.exit.i6.preheader:           ; preds = %ggml_backend_meta_n_backends.exit
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 80
  br label %ggml_backend_is_meta.exit.i6

._crit_edge:                                      ; preds = %ggml_backend_meta_simple_backend.exit, %ggml_backend_meta_n_backends.exit
  ret void

ggml_backend_is_meta.exit.i6:                     ; preds = %ggml_backend_is_meta.exit.i6.preheader, %ggml_backend_meta_simple_backend.exit
  %.08 = phi i64 [ %i.u, %ggml_backend_meta_simple_backend.exit ], [ 0, %ggml_backend_is_meta.exit.i6.preheader ] ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.o = icmp eq ptr %i.n, @_ZL26ggml_backend_meta_get_nameP12ggml_backend
  br i1 %i.o, label %ggml_backend_meta_simple_backend.exit, label %ggml_backend_is_meta.exit.thread.i7

ggml_backend_is_meta.exit.thread.i7:              ; preds = %ggml_backend_is_meta.exit.i6
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 2508, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.124) #26
  unreachable

ggml_backend_meta_simple_backend.exit:            ; preds = %ggml_backend_is_meta.exit.i6
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !130
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.r, i64 %.08
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !147
  tail call void @ggml_backend_synchronize(ptr noundef %i.t)
  %i.u = add nuw i64 %.08, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %ggml_backend_is_meta.exit.i6, !llvm.loop !343
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL31ggml_backend_meta_graph_computeP12ggml_backendP11ggml_cgraph(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.38", align 8    ; 15 uses
  %3 = alloca %class.anon.176, align 8            ; 12 uses
  %4 = alloca %struct.ggml_backend_meta_split_state, align 8 ; 4 uses
  %5 = alloca %struct.ggml_backend_meta_split_state, align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 17 uses
  %i.c = alloca ptr, align 8                      ; 35 uses
  %6 = alloca %"class.std::set", align 8          ; 12 uses
  %7 = alloca %class.anon.158, align 8            ; 6 uses
  %8 = alloca %struct.ggml_backend_meta_split_state, align 8 ; 5 uses
  %9 = alloca %struct.ggml_init_params, align 8   ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %10 = alloca %class.anon.160, align 8           ; 7 uses
  %11 = alloca %class.anon.161, align 8           ; 5 uses
  %12 = alloca %class.anon.162, align 8           ; 7 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !164
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !377
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1965, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.88) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %ggml_backend_is_meta.exit.thread.i, label %ggml_backend_is_meta.exit.i

ggml_backend_is_meta.exit.i:                      ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !157
  %i.k = icmp eq ptr %i.j, @_ZL26ggml_backend_meta_get_nameP12ggml_backend
  br i1 %i.k, label %ggml_backend_meta_n_backends.exit, label %ggml_backend_is_meta.exit.thread.i

ggml_backend_is_meta.exit.thread.i:               ; preds = %ggml_backend_is_meta.exit.i, %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 2502, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.124) #26
  unreachable

ggml_backend_meta_n_backends.exit:                ; preds = %ggml_backend_is_meta.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !85   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 6 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !130  ; 6 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 80                  ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store ptr %i.m, ptr %i.c, align 8, !tbaa !170
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load i64, ptr %i.v, align 8, !tbaa !378  ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.d
end_hunk_0
begin_hunk_1_@_ZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorb:bb.a
  %n.vec = and i64 %i.jt, 4294967292              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.jt
  %xtraiter375 = and i64 %i.jt, 3                 ; 2 uses
  %lcmp.mod376.not = icmp eq i64 %xtraiter375, 0
  br label %.preheader597

.preheader597:                                    ; preds = %.preheader597.lr.ph, %bb.hu
  %.095.i918 = phi i64 [ 0, %.preheader597.lr.ph ], [ %i.nd, %bb.hu ] ; 3 uses
  %.phi.trans.insert = getelementptr [8 x i8], ptr %i.jc, i64 %.095.i918 ; 11 uses
  br i1 %.not934, label %.preheader.._crit_edge_crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader597
  br i1 %or.cond339, label %vector.body313, label %.lr.ph.preheader361

vector.body313:                                   ; preds = %.lr.ph.preheader, %vector.body313
  %index314 = phi i64 [ %index.next315, %vector.body313 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.kb = getelementptr [8 x i8], ptr %.phi.trans.insert, i64 %index314 ; 2 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 16
  store <2 x i64> zeroinitializer, ptr %i.kb, align 8, !tbaa !77, !alias.scope !455
  store <2 x i64> zeroinitializer, ptr %i.kc, align 8, !tbaa !77, !alias.scope !455
  %index.next315 = add nuw i64 %index314, 4       ; 2 uses
  %i.kd = icmp eq i64 %index.next315, %n.vec312
  br i1 %i.kd, label %middle.block316, label %vector.body313, !llvm.loop !405

middle.block316:                                  ; preds = %vector.body313
  br i1 %cmp.n317, label %.lr.ph915, label %.lr.ph.preheader361

.lr.ph.preheader361:                              ; preds = %.lr.ph.preheader, %middle.block316
  %.094.i913.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec312, %middle.block316 ] ; 3 uses
  br i1 %lcmp.mod373.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader361, %.lr.ph.prol
  %.094.i913.prol = phi i64 [ %i.kf, %.lr.ph.prol ], [ %.094.i913.ph, %.lr.ph.preheader361 ] ; 2 uses
  %prol.iter374 = phi i64 [ %prol.iter374.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader361 ]
  %i.ke = mul i64 %.094.i913.prol, %i.ix
  %gep.prol = getelementptr [8 x i8], ptr %.phi.trans.insert, i64 %i.ke
  store i64 0, ptr %gep.prol, align 8, !tbaa !77, !alias.scope !455
  %i.kf = add nuw nsw i64 %.094.i913.prol, 1      ; 2 uses
  %prol.iter374.next = add i64 %prol.iter374, 1   ; 2 uses
  %prol.iter374.cmp.not = icmp eq i64 %prol.iter374.next, %xtraiter372
  br i1 %prol.iter374.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !406

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader361
  %.094.i913.unr = phi i64 [ %.094.i913.ph, %.lr.ph.preheader361 ], [ %i.kf, %.lr.ph.prol ]
  %i.kg = sub nsw i64 %.094.i913.ph, %i.jt
  %i.kh = icmp ugt i64 %i.kg, -4
  br i1 %i.kh, label %.lr.ph915, label %.lr.ph

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader597
  %.pre995 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !77, !alias.scope !455
  br label %._crit_edge

.lr.ph915:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block316
  %invariant.gep916 = getelementptr [8 x i8], ptr %i.ju, i64 %.095.i918 ; 6 uses
  %.promoted = load i64, ptr %.phi.trans.insert, align 8, !tbaa !77, !alias.scope !455 ; 2 uses
  br i1 %or.cond340, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph915
  %i.ki = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ki, %vector.ph ], [ %i.kr, %vector.body ]
  %vec.phi303 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ks, %vector.body ]
  %i.kj = getelementptr [8 x i8], ptr %invariant.gep916, i64 %index ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 16
  %wide.load = load <2 x i64>, ptr %i.kj, align 8, !tbaa !77
  %wide.load304 = load <2 x i64>, ptr %i.kk, align 8, !tbaa !77
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %index ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %wide.load305 = load <2 x i32>, ptr %i.kl, align 4, !tbaa !161
  %wide.load306 = load <2 x i32>, ptr %i.km, align 4, !tbaa !161
  %i.kn = zext <2 x i32> %wide.load305 to <2 x i64>
  %i.ko = zext <2 x i32> %wide.load306 to <2 x i64>
  %i.kp = mul nsw <2 x i64> %wide.load, %i.kn
  %i.kq = mul nsw <2 x i64> %wide.load304, %i.ko
  %i.kr = add <2 x i64> %i.kp, %vec.phi           ; 2 uses
  %i.ks = add <2 x i64> %i.kq, %vec.phi303        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kt = icmp eq i64 %index.next, %n.vec
  br i1 %i.kt, label %middle.block, label %vector.body, !llvm.loop !407

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ks, %i.kr
  %i.ku = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph915, %middle.block
  %.ph = phi i64 [ %.promoted, %.lr.ph915 ], [ %i.ku, %middle.block ] ; 2 uses
  %.093.i914.ph = phi i64 [ 0, %.lr.ph915 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod376.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.kv = phi i64 [ %i.lc, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %.093.i914.prol = phi i64 [ %i.ld, %scalar.ph.prol ], [ %.093.i914.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter377 = phi i64 [ %prol.iter377.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.kw = mul i64 %.093.i914.prol, %i.ix
  %gep917.prol = getelementptr [8 x i8], ptr %invariant.gep916, i64 %i.kw
  %i.kx = load i64, ptr %gep917.prol, align 8, !tbaa !77
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.093.i914.prol
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !161
  %i.la = zext i32 %i.kz to i64
  %i.lb = mul nsw i64 %i.kx, %i.la
  %i.lc = add nsw i64 %i.lb, %i.kv                ; 3 uses
  %i.ld = add nuw nsw i64 %.093.i914.prol, 1      ; 2 uses
  %prol.iter377.next = add i64 %prol.iter377, 1   ; 2 uses
  %prol.iter377.cmp.not = icmp eq i64 %prol.iter377.next, %xtraiter375
  br i1 %prol.iter377.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !408

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa370.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.lc, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.lc, %scalar.ph.prol ]
  %.093.i914.unr = phi i64 [ %.093.i914.ph, %scalar.ph.preheader ], [ %i.ld, %scalar.ph.prol ]
  %i.le = sub nsw i64 %.093.i914.ph, %i.jt
  %i.lf = icmp ugt i64 %i.le, -4
  br i1 %i.lf, label %._crit_edge.loopexit, label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.094.i913 = phi i64 [ %i.ln, %.lr.ph ], [ %.094.i913.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.lg = mul i64 %.094.i913, %i.ix
  %gep = getelementptr [8 x i8], ptr %.phi.trans.insert, i64 %i.lg
  store i64 0, ptr %gep, align 8, !tbaa !77, !alias.scope !455
  %i.lh = add nuw nsw i64 %.094.i913, 1
  %i.li = mul i64 %i.lh, %i.ix
  %gep.1 = getelementptr [8 x i8], ptr %.phi.trans.insert, i64 %i.li
  store i64 0, ptr %gep.1, align 8, !tbaa !77, !alias.scope !455
  %i.lj = add nuw nsw i64 %.094.i913, 2
  %i.lk = mul i64 %i.lj, %i.ix
  %gep.2 = getelementptr [8 x i8], ptr %.phi.trans.insert, i64 %i.lk
  store i64 0, ptr %gep.2, align 8, !tbaa !77, !alias.scope !455
  %i.ll = add nuw nsw i64 %.094.i913, 3
  %i.lm = mul i64 %i.ll, %i.ix
  %gep.3 = getelementptr [8 x i8], ptr %.phi.trans.insert, i64 %i.lm
  store i64 0, ptr %gep.3, align 8, !tbaa !77, !alias.scope !455
  %i.ln = add nuw nsw i64 %.094.i913, 4           ; 2 uses
  %exitcond969.not.3 = icmp eq i64 %i.ln, %i.jt
  br i1 %exitcond969.not.3, label %.lr.ph915, label %.lr.ph, !llvm.loop !409

._crit_edge.loopexit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa301 = phi i64 [ %i.ku, %middle.block ], [ %.lcssa370.unr, %scalar.ph.prol.loopexit ], [ %i.mw, %scalar.ph ] ; 2 uses
  store i64 %.lcssa301, ptr %.phi.trans.insert, align 8, !tbaa !77, !alias.scope !455
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader.._crit_edge_crit_edge
  %i.lo = phi i64 [ %.pre995, %.preheader.._crit_edge_crit_edge ], [ %.lcssa301, %._crit_edge.loopexit ]
  %i.lp = load i64, ptr %i.ji, align 8, !tbaa !77
  %i.lq = mul nsw i64 %i.lp, %i.lo                ; 4 uses
  store i64 %i.lq, ptr %.phi.trans.insert, align 8, !tbaa !77, !alias.scope !455
  %.not115.i = icmp eq i64 %i.lq, 0
  %.pre996 = load i64, ptr %i.jy, align 8, !tbaa !77 ; 2 uses
  %.not116.i = icmp eq i64 %.pre996, 0
  %or.cond1232 = select i1 %.not115.i, i1 %.not116.i, i1 false
  br i1 %or.cond1232, label %bb.hu, label %bb.hp

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.lr = phi i64 [ %i.mw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %.093.i914 = phi i64 [ %i.mx, %scalar.ph ], [ %.093.i914.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ls = mul i64 %.093.i914, %i.ix
  %gep917 = getelementptr [8 x i8], ptr %invariant.gep916, i64 %i.ls
  %i.lt = load i64, ptr %gep917, align 8, !tbaa !77
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.093.i914
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !161
  %i.lw = zext i32 %i.lv to i64
  %i.lx = mul nsw i64 %i.lt, %i.lw
  %i.ly = add nsw i64 %i.lx, %i.lr
  %i.lz = add nuw nsw i64 %.093.i914, 1           ; 2 uses
  %i.ma = mul i64 %i.lz, %i.ix
  %gep917.1 = getelementptr [8 x i8], ptr %invariant.gep916, i64 %i.ma
  %i.mb = load i64, ptr %gep917.1, align 8, !tbaa !77
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.lz
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !161
  %i.me = zext i32 %i.md to i64
  %i.mf = mul nsw i64 %i.mb, %i.me
  %i.mg = add nsw i64 %i.mf, %i.ly
  %i.mh = add nuw nsw i64 %.093.i914, 2           ; 2 uses
  %i.mi = mul i64 %i.mh, %i.ix
  %gep917.2 = getelementptr [8 x i8], ptr %invariant.gep916, i64 %i.mi
  %i.mj = load i64, ptr %gep917.2, align 8, !tbaa !77
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.mh
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !161
  %i.mm = zext i32 %i.ml to i64
  %i.mn = mul nsw i64 %i.mj, %i.mm
  %i.mo = add nsw i64 %i.mn, %i.mg
  %i.mp = add nuw nsw i64 %.093.i914, 3           ; 2 uses
  %i.mq = mul i64 %i.mp, %i.ix
  %gep917.3 = getelementptr [8 x i8], ptr %invariant.gep916, i64 %i.mq
  %i.mr = load i64, ptr %gep917.3, align 8, !tbaa !77
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.mp
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !161
  %i.mu = zext i32 %i.mt to i64
  %i.mv = mul nsw i64 %i.mr, %i.mu
  %i.mw = add nsw i64 %i.mv, %i.mo                ; 2 uses
  %i.mx = add nuw nsw i64 %.093.i914, 4           ; 2 uses
  %exitcond970.not.3 = icmp eq i64 %i.mx, %i.jt
  br i1 %exitcond970.not.3, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !410

bb.hp:                                            ; preds = %._crit_edge
  %i.my = mul nsw i64 %.pre996, %i.ka             ; 2 uses
  %i.mz = srem i64 %i.lq, %i.my
  %i.na = sdiv exact i64 %i.lq, %i.my
  %i.nb = icmp eq i64 %i.mz, 0
  br i1 %i.nb, label %bb.ht, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1086, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.50) #26
          to label %bb.hr unwind label %bb.hs, !inline_history !390

bb.hr:                                            ; preds = %bb.hq
  unreachable

bb.hs:                                            ; preds = %bb.hq
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.id

bb.ht:                                            ; preds = %bb.hp
  store i64 %i.na, ptr %.phi.trans.insert, align 8, !tbaa !77, !alias.scope !455
  br label %bb.hu

bb.hu:                                            ; preds = %._crit_edge, %bb.ht
  %i.nd = add nuw i64 %.095.i918, 1               ; 2 uses
  %exitcond972.not = icmp eq i64 %i.nd, %umax
  br i1 %exitcond972.not, label %.loopexit600, label %.preheader597, !llvm.loop !411

bb.hv:                                            ; preds = %bb.ho
  br i1 %i.jb, label %.preheader601, label %bb.hx

.preheader601:                                    ; preds = %bb.hv
  br i1 %.not931, label %.loopexit600, label %.preheader598.lr.ph

.preheader598.lr.ph:                              ; preds = %.preheader601
  %i.ne = getelementptr inbounds nuw i8, ptr %i.jo, i64 2120
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !160 ; 3 uses
  %i.ng = zext i32 %i.nf to i64                   ; 5 uses
  %.not933 = icmp eq i32 %i.nf, 0
  %i.nh = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.jo, i64 2056 ; 6 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.nk = zext nneg i32 %i.jp to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.nk
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !77
  %factor.op.mul = mul i64 %i.nm, %i.jf           ; 2 uses
  %i.nn = load i64, ptr %i.ji, align 8, !tbaa !77
  br i1 %.not933, label %.preheader598, label %.preheader598.us.preheader

.preheader598.us.preheader:                       ; preds = %.preheader598.lr.ph
  %min.iters.check322 = icmp ugt i32 %i.nf, 3
  %or.cond341 = select i1 %min.iters.check322, i1 %ident.check320.not, i1 false
  %n.vec324 = and i64 %i.ng, 4294967292           ; 3 uses
  %cmp.n336 = icmp eq i64 %n.vec324, %i.ng
  %xtraiter = and i64 %i.ng, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader598.us

.preheader598.us:                                 ; preds = %.preheader598.us.preheader, %bb.hw
  %.092.i909.us = phi i64 [ %i.ok, %bb.hw ], [ 0, %.preheader598.us.preheader ] ; 3 uses
  %invariant.gep.us = getelementptr [8 x i8], ptr %i.nh, i64 %.092.i909.us ; 6 uses
  br i1 %or.cond341, label %vector.body325, label %scalar.ph321.preheader

vector.body325:                                   ; preds = %.preheader598.us, %vector.body325
  %index326 = phi i64 [ %index.next333, %vector.body325 ], [ 0, %.preheader598.us ] ; 3 uses
  %vec.phi327 = phi <2 x i64> [ %i.nw, %vector.body325 ], [ zeroinitializer, %.preheader598.us ]
  %vec.phi328 = phi <2 x i64> [ %i.nx, %vector.body325 ], [ zeroinitializer, %.preheader598.us ]
  %i.no = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %index326 ; 2 uses
  %i.np = getelementptr i8, ptr %i.no, i64 16
  %wide.load329 = load <2 x i64>, ptr %i.no, align 8, !tbaa !77
  %wide.load330 = load <2 x i64>, ptr %i.np, align 8, !tbaa !77
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %index326 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %wide.load331 = load <2 x i32>, ptr %i.nq, align 4, !tbaa !161
  %wide.load332 = load <2 x i32>, ptr %i.nr, align 4, !tbaa !161
  %i.ns = zext <2 x i32> %wide.load331 to <2 x i64>
  %i.nt = zext <2 x i32> %wide.load332 to <2 x i64>
  %i.nu = mul nsw <2 x i64> %wide.load329, %i.ns
  %i.nv = mul nsw <2 x i64> %wide.load330, %i.nt
  %i.nw = add <2 x i64> %i.nu, %vec.phi327        ; 2 uses
  %i.nx = add <2 x i64> %i.nv, %vec.phi328        ; 2 uses
  %index.next333 = add nuw i64 %index326, 4       ; 2 uses
  %i.ny = icmp eq i64 %index.next333, %n.vec324
  br i1 %i.ny, label %middle.block334, label %vector.body325, !llvm.loop !412

middle.block334:                                  ; preds = %vector.body325
  %bin.rdx335 = add <2 x i64> %i.nx, %i.nw
  %i.nz = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx335) ; 2 uses
  br i1 %cmp.n336, label %._crit_edge.us910, label %scalar.ph321.preheader

scalar.ph321.preheader:                           ; preds = %.preheader598.us, %middle.block334
  %.0.i908.us.ph = phi i64 [ 0, %.preheader598.us ], [ %n.vec324, %middle.block334 ] ; 3 uses
  %.091.i907.us.ph = phi i64 [ 0, %.preheader598.us ], [ %i.nz, %middle.block334 ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph321.prol.loopexit, label %scalar.ph321.prol

scalar.ph321.prol:                                ; preds = %scalar.ph321.preheader, %scalar.ph321.prol
  %.0.i908.us.prol = phi i64 [ %i.oh, %scalar.ph321.prol ], [ %.0.i908.us.ph, %scalar.ph321.preheader ] ; 3 uses
  %.091.i907.us.prol = phi i64 [ %i.og, %scalar.ph321.prol ], [ %.091.i907.us.ph, %scalar.ph321.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph321.prol ], [ 0, %scalar.ph321.preheader ]
  %i.oa = mul i64 %.0.i908.us.prol, %i.ix
  %gep.us.prol = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.oa
  %i.ob = load i64, ptr %gep.us.prol, align 8, !tbaa !77
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %.0.i908.us.prol
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !161
  %i.oe = zext i32 %i.od to i64
  %i.of = mul nsw i64 %i.ob, %i.oe
  %i.og = add nsw i64 %i.of, %.091.i907.us.prol   ; 3 uses
  %i.oh = add nuw nsw i64 %.0.i908.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph321.prol.loopexit, label %scalar.ph321.prol, !llvm.loop !413

scalar.ph321.prol.loopexit:                       ; preds = %scalar.ph321.prol, %scalar.ph321.preheader
  %.lcssa367.unr = phi i64 [ poison, %scalar.ph321.preheader ], [ %i.og, %scalar.ph321.prol ]
  %.0.i908.us.unr = phi i64 [ %.0.i908.us.ph, %scalar.ph321.preheader ], [ %i.oh, %scalar.ph321.prol ]
  %.091.i907.us.unr = phi i64 [ %.091.i907.us.ph, %scalar.ph321.preheader ], [ %i.og, %scalar.ph321.prol ]
  %i.oi = sub nsw i64 %.0.i908.us.ph, %i.ng
  %i.oj = icmp ugt i64 %i.oi, -4
  br i1 %i.oj, label %._crit_edge.us910, label %scalar.ph321

bb.hw:                                            ; preds = %._crit_edge.us910
  %i.ok = add nuw i64 %.092.i909.us, 1            ; 2 uses
  %exitcond966.not = icmp eq i64 %i.ok, %umax
  br i1 %exitcond966.not, label %.loopexit600, label %.preheader598.us, !llvm.loop !414

scalar.ph321:                                     ; preds = %scalar.ph321.prol.loopexit, %scalar.ph321
  %.0.i908.us = phi i64 [ %i.pq, %scalar.ph321 ], [ %.0.i908.us.unr, %scalar.ph321.prol.loopexit ] ; 6 uses
  %.091.i907.us = phi i64 [ %i.pp, %scalar.ph321 ], [ %.091.i907.us.unr, %scalar.ph321.prol.loopexit ]
  %i.ol = mul i64 %.0.i908.us, %i.ix
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.ol
  %i.om = load i64, ptr %gep.us, align 8, !tbaa !77
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %.0.i908.us
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !161
  %i.op = zext i32 %i.oo to i64
  %i.oq = mul nsw i64 %i.om, %i.op
  %i.or = add nsw i64 %i.oq, %.091.i907.us
  %i.os = add nuw nsw i64 %.0.i908.us, 1          ; 2 uses
  %i.ot = mul i64 %i.os, %i.ix
  %gep.us.1 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.ot
  %i.ou = load i64, ptr %gep.us.1, align 8, !tbaa !77
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.os
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !161
  %i.ox = zext i32 %i.ow to i64
  %i.oy = mul nsw i64 %i.ou, %i.ox
  %i.oz = add nsw i64 %i.oy, %i.or
  %i.pa = add nuw nsw i64 %.0.i908.us, 2          ; 2 uses
  %i.pb = mul i64 %i.pa, %i.ix
  %gep.us.2 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.pb
  %i.pc = load i64, ptr %gep.us.2, align 8, !tbaa !77
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.pa
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !161
  %i.pf = zext i32 %i.pe to i64
  %i.pg = mul nsw i64 %i.pc, %i.pf
  %i.ph = add nsw i64 %i.pg, %i.oz
  %i.pi = add nuw nsw i64 %.0.i908.us, 3          ; 2 uses
  %i.pj = mul i64 %i.pi, %i.ix
  %gep.us.3 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.pj
  %i.pk = load i64, ptr %gep.us.3, align 8, !tbaa !77
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.pi
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !161
  %i.pn = zext i32 %i.pm to i64
  %i.po = mul nsw i64 %i.pk, %i.pn
  %i.pp = add nsw i64 %i.po, %i.ph                ; 2 uses
  %i.pq = add nuw nsw i64 %.0.i908.us, 4          ; 2 uses
  %exitcond965.not.3 = icmp eq i64 %i.pq, %i.ng
  br i1 %exitcond965.not.3, label %._crit_edge.us910, label %scalar.ph321, !llvm.loop !415

._crit_edge.us910:                                ; preds = %scalar.ph321.prol.loopexit, %scalar.ph321, %middle.block334
  %.lcssa300 = phi i64 [ %i.nz, %middle.block334 ], [ %.lcssa367.unr, %scalar.ph321.prol.loopexit ], [ %i.pp, %scalar.ph321 ]
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.092.i909.us
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !77, !alias.scope !455
  %.reass.us = mul i64 %i.ps, %factor.op.mul
  %i.pt = mul nsw i64 %.lcssa300, %i.nn
  %i.pu = icmp eq i64 %.reass.us, %i.pt
  br i1 %i.pu, label %bb.hw, label %.split.us912

bb.hx:                                            ; preds = %bb.hv
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1091, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.31) #26
          to label %bb.hy unwind label %bb.hz, !inline_history !390

bb.hy:                                            ; preds = %bb.hx
  unreachable

bb.hz:                                            ; preds = %bb.hx
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.id

bb.ia:                                            ; preds = %.preheader598
  %i.pw = add nuw i64 %.092.i909, 1               ; 2 uses
  %exitcond968.not = icmp eq i64 %i.pw, %umax
  br i1 %exitcond968.not, label %.loopexit600, label %.preheader598, !llvm.loop !414

.preheader598:                                    ; preds = %.preheader598.lr.ph, %bb.ia
  %.092.i909 = phi i64 [ %i.pw, %bb.ia ], [ 0, %.preheader598.lr.ph ] ; 2 uses
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.092.i909
  %i.py = load i64, ptr %i.px, align 8, !tbaa !77, !alias.scope !455
  %.reass = mul i64 %i.py, %factor.op.mul
  %i.pz = icmp eq i64 %.reass, 0
  br i1 %i.pz, label %bb.ia, label %.split.us912

.split.us912:                                     ; preds = %._crit_edge.us910, %.preheader598
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1099, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.51) #26
          to label %bb.ib unwind label %bb.ic, !inline_history !390
end_hunk_1
begin_hunk_2_@"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK3$_6clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EE":bb.a
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.c

._crit_edge.unr-lcssa:                            ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.unr-lcssa ]
  %.04454.epil.init = phi i64 [ 1, %.lr.ph ], [ %i.as, %._crit_edge.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.04454.epil = phi i64 [ %.04454.epil.init, %.epil.preheader ], [ %i.k, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.j = load i64, ptr %i.i, align 8, !tbaa !77
  %i.k = mul nsw i64 %i.j, %.04454.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !523

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %.lcssa87 = phi i64 [ %i.as, %._crit_edge.unr-lcssa ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 2120
  %i.m = load i32, ptr %i.l, align 8, !tbaa !160
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.d, label %.critedge

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.c ] ; 9 uses
  %.04454 = phi i64 [ 1, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.c ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.p = load i64, ptr %i.o, align 8, !tbaa !77
  %i.q = mul nsw i64 %i.p, %.04454
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !77
  %i.u = mul nsw i64 %i.t, %i.q
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !77
  %i.y = mul nsw i64 %i.x, %i.u
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !77
  %i.ac = mul nsw i64 %i.ab, %i.y
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !77
  %i.ag = mul nsw i64 %i.af, %i.ac
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !77
  %i.ak = mul nsw i64 %i.aj, %i.ag
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !77
  %i.ao = mul nsw i64 %i.an, %i.ak
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !77
  %i.as = mul nsw i64 %i.ar, %i.ao                ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.unr-lcssa, label %bb.c, !llvm.loop !524

bb.d:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 2056
  %i.au = load i32, ptr %i.at, align 8, !tbaa !161
  %i.av = zext i32 %i.au to i64
  %i.aw = sdiv i64 %.lcssa87, %i.av               ; 6 uses
  %i.ax = load ptr, ptr %.pre77.pre, align 8, !tbaa !174
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 152
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !174
  %i.ba = tail call i32 @ggml_n_dims(ptr noundef %i.az)
  %i.bb = add nsw i32 %i.ba, -1
  %i.bc = icmp eq i32 %i.b, %i.bb
  %.pre = load ptr, ptr %2, align 8, !tbaa !236   ; 10 uses
  br i1 %i.bc, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre, i64 2056
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !161
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %0, i8 0, i64 2128, i1 false)
  %i.bg = load ptr, ptr %1, align 8, !tbaa !527, !nonnull !82, !align !242
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !174
  %i.bi = tail call i32 @ggml_n_dims(ptr noundef %i.bh)
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr %0, align 8, !tbaa !162
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 1, ptr %i.bk, align 8, !tbaa !161
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2120
  store i32 1, ptr %i.bl, align 8, !tbaa !160
  br label %bb.aa

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.bm = load i32, ptr %.pre, align 8, !tbaa !162
  %i.bn = icmp eq i32 %i.bm, 0
  %.pre76 = load ptr, ptr %1, align 8, !tbaa !527 ; 7 uses
  br i1 %i.bn, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bo = load ptr, ptr %.pre76, align 8, !tbaa !174 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !77 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 152
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !174
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !77
  %i.bv = icmp eq i64 %i.bq, %i.bu
  br i1 %i.bv, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !77
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre, i64 2056
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !161
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !528, !nonnull !82, !align !242
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !77 ; 3 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.critedge63, label %.lr.ph58

.lr.ph58:                                         ; preds = %.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  br label %.backedge

._crit_edge59:                                    ; preds = %bb.k
  br i1 %spec.select, label %.critedge63, label %.critedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph58
  %.04057 = phi i64 [ 0, %.lr.ph58 ], [ %.04057.be, %.backedge.backedge ] ; 3 uses
  %.04156 = phi i1 [ true, %.lr.ph58 ], [ %.04156.be, %.backedge.backedge ]
  br i1 %.04156, label %bb.k, label %.thread

bb.k:                                             ; preds = %.backedge
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.04057
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !77 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = icmp eq i64 %i.ch, %i.bq
  %spec.select = or i1 %i.ci, %i.cj               ; 2 uses
  %i.ck = add nuw i64 %.04057, 1                  ; 2 uses
  %exitcond71.not = icmp eq i64 %i.ck, %i.ce
  br i1 %exitcond71.not, label %._crit_edge59, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.k, %.thread
  %.04057.be = phi i64 [ %i.ck, %bb.k ], [ %i.cl, %.thread ]
  %.04156.be = phi i1 [ %spec.select, %bb.k ], [ false, %.thread ]
  br label %.backedge, !llvm.loop !525

.thread:                                          ; preds = %.backedge
  %i.cl = add nuw i64 %.04057, 1                  ; 2 uses
  %exitcond71.not84 = icmp eq i64 %i.cl, %i.ce
  br i1 %exitcond71.not84, label %.critedge, label %.backedge.backedge

.critedge63:                                      ; preds = %.preheader, %._crit_edge59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %0, i8 0, i64 2128, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !162
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 1, ptr %i.cm, align 8, !tbaa !161
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 2120
  store i32 1, ptr %i.cn, align 8, !tbaa !160
  br label %bb.aa

.critedge:                                        ; preds = %.thread, %._crit_edge59, %bb.g, %bb.h, %bb.i, %bb.j, %._crit_edge
  %i.co = phi ptr [ %i.a, %._crit_edge ], [ %.pre, %bb.j ], [ %.pre, %bb.i ], [ %.pre, %bb.h ], [ %.pre, %bb.g ], [ %.pre, %._crit_edge59 ], [ %.pre, %.thread ] ; 2 uses
  %i.cp = phi ptr [ %.pre77.pre, %._crit_edge ], [ %.pre76, %bb.j ], [ %.pre76, %bb.i ], [ %.pre76, %bb.h ], [ %.pre76, %bb.g ], [ %.pre76, %._crit_edge59 ], [ %.pre76, %.thread ]
  %.145 = phi i64 [ %.lcssa87, %._crit_edge ], [ %i.aw, %bb.j ], [ %i.aw, %bb.i ], [ %i.aw, %bb.h ], [ %i.aw, %bb.g ], [ %i.aw, %._crit_edge59 ], [ %i.aw, %.thread ] ; 9 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !174 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !77 ; 4 uses
  %i.ct = srem i64 %i.cs, %.145
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.w, %bb.u, %bb.s, %.critedge
  %.062.lcssa.wide = phi i32 [ 0, %.critedge ], [ 1, %bb.s ], [ 2, %bb.u ], [ 3, %bb.w ]
  %.lcssa = phi i64 [ %i.cs, %.critedge ], [ %i.dk, %bb.s ], [ %i.dq, %bb.u ], [ %i.dw, %bb.w ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %0, i8 0, i64 2128, i1 false)
  store i32 %.062.lcssa.wide, ptr %0, align 8, !tbaa !162
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.cw = sdiv exact i64 %.lcssa, %.145
  %i.cx = trunc i64 %i.cw to i32
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !161
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 2120
  store i32 1, ptr %i.cy, align 8, !tbaa !160
  br label %bb.aa

bb.m:                                             ; preds = %.critedge
  %i.cz = icmp sgt i64 %i.cs, %.145
  br i1 %i.cz, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.x, %bb.v, %bb.t, %bb.m
  %.062.lcssa66.wide = phi i32 [ 0, %bb.m ], [ 1, %bb.t ], [ 2, %bb.v ], [ 3, %bb.x ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 2120
  %i.db = load i32, ptr %i.da, align 8, !tbaa !160
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 646, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.61) #26
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 2056
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !161
  %i.df = icmp eq i32 %i.de, 1
  br i1 %i.df, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 647, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.62) #26
  unreachable

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %0, i8 0, i64 2128, i1 false)
  store i32 %.062.lcssa66.wide, ptr %0, align 8, !tbaa !162
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 1, ptr %i.dg, align 8, !tbaa !161
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 2120
  store i32 1, ptr %i.dh, align 8, !tbaa !160
  br label %bb.aa

bb.s:                                             ; preds = %bb.m
  %i.di = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !77
  %i.dk = mul nsw i64 %i.dj, %i.cs                ; 4 uses
  %i.dl = srem i64 %i.dk, %.145
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.l, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dn = icmp sgt i64 %i.dk, %.145
  br i1 %i.dn, label %bb.n, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !77
  %i.dq = mul nsw i64 %i.dp, %i.dk                ; 4 uses
  %i.dr = srem i64 %i.dq, %.145
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.l, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dt = icmp sgt i64 %i.dq, %.145
  br i1 %i.dt, label %bb.n, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !77
  %i.dw = mul nsw i64 %i.dv, %i.dq                ; 3 uses
  %i.dx = srem i64 %i.dw, %.145
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.l, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dz = icmp sgt i64 %i.dw, %.145
  br i1 %i.dz, label %bb.n, label %.critedge49

.critedge49:                                      ; preds = %bb.x
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !207
  %i.ec = tail call ptr @ggml_op_name(i32 noundef %i.eb)
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 651, ptr noundef nonnull @.str.63, ptr noundef %i.ec) #26
  unreachable

bb.y:                                             ; preds = %bb.a, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2128) %0, ptr noundef nonnull align 8 dereferenceable(2128) %i.a, i64 2128, i1 false), !tbaa.struct !238
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 658, ptr noundef nonnull @.str.9) #26
  unreachable

bb.aa:                                            ; preds = %bb.l, %bb.r, %.critedge63, %bb.f, %bb.y
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK3$_8clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EE"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !530, !nonnull !82, !align !242
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174
  %i.c = tail call zeroext i1 @ggml_is_contiguous(ptr noundef %i.b)
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !530, !nonnull !82, !align !242
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !174
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !174
  %i.h = tail call zeroext i1 @ggml_is_contiguous(ptr noundef %i.g)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !531, !nonnull !82, !align !242
  tail call fastcc void @"_ZZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorbENK3$_6clERKSt6vectorI29ggml_backend_meta_split_stateSaIS6_EE"(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.w

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr %2, align 8, !tbaa !236    ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !162  ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !530, !nonnull !82, !align !242
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !174  ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.r = load i64, ptr %i.o, align 8, !tbaa !77
  %i.s = icmp eq i64 %i.r, 1
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !174 ; 8 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !77
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = load i64, ptr %i.q, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !77
  %.not30 = icmp eq i64 %i.w, %i.y
  br i1 %.not30, label %bb.g, label %.critedge33

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !77
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !77
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !77
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !77
  %.not30.1 = icmp eq i64 %i.ag, %i.ai
  br i1 %.not30.1, label %bb.j, label %.critedge33

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !77
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !77
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !77
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !77
  %.not30.2 = icmp eq i64 %i.aq, %i.as
  br i1 %.not30.2, label %bb.m, label %.critedge33

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !77
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !77
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %.critedge36, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !77
end_hunk_2
begin_hunk_3_@_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer:bb.a
bb.c:                                             ; preds = %bb.b
  tail call void @_ZN32ggml_backend_meta_buffer_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(300) dereferenceable(300) %i.d) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 304) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZL33ggml_backend_meta_buffer_get_baseP19ggml_backend_buffer(ptr nofree readnone captures(none) %0) #13 {
bb.a:
  ret ptr inttoptr (i64 1152921504606846976 to ptr)
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL36ggml_backend_meta_buffer_init_tensorP19ggml_backend_bufferP11ggml_tensor(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %ggml_backend_buffer_is_meta.exit.thread, label %ggml_backend_buffer_is_meta.exit

ggml_backend_buffer_is_meta.exit:                 ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !182
  %i.b = icmp eq ptr %i.a, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.b, label %bb.b, label %ggml_backend_buffer_is_meta.exit.thread

ggml_backend_buffer_is_meta.exit.thread:          ; preds = %bb.a, %ggml_backend_buffer_is_meta.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1308, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.99) #26
  unreachable

bb.b:                                             ; preds = %ggml_backend_buffer_is_meta.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 220
  %i.f = load i32, ptr %i.e, align 4, !tbaa !203  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  store i32 %i.f, ptr %i.g, align 8, !tbaa !202
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i.i, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.j, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !174
  %i.m = icmp ult ptr %i.l, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.m, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.m, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = icmp eq ptr %.19.i.i.i.i, %i.j
  br i1 %i.n, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.thread.i, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i

_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i: ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !174
  %i.q = icmp ult ptr %1, %i.p
  br i1 %i.q, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.thread.i, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit

_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.thread.i: ; preds = %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.s = sext i32 %i.f to i64
  %i.t = getelementptr inbounds [72 x i8], ptr %i.r, i64 %i.s
  br label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit

_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit: ; preds = %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.thread.i
  %.0.i = phi ptr [ %i.t, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.thread.i ], [ %i.d, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i ]
  tail call fastcc void @_ZL41ggml_backend_meta_buffer_init_tensor_implR41ggml_backend_meta_simple_tensor_containerP11ggml_tensor(ptr noundef nonnull align 8 dereferenceable(72) %.0.i, ptr noundef %1)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL38ggml_backend_meta_buffer_memset_tensorP19ggml_backend_bufferP11ggml_tensorhmm(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.ggml_backend_meta_split_state, align 8 ; 9 uses
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %ggml_backend_buffer_is_meta.exit.thread.i, label %ggml_backend_buffer_is_meta.exit.i

ggml_backend_buffer_is_meta.exit.i:               ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !182
  %i.b = icmp eq ptr %i.a, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.b, label %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit, label %ggml_backend_buffer_is_meta.exit.thread.i

ggml_backend_buffer_is_meta.exit.thread.i:        ; preds = %ggml_backend_buffer_is_meta.exit.i, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 463, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.43) #26
  unreachable

_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit: ; preds = %ggml_backend_buffer_is_meta.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151  ; 6 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !150  ; 6 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call fastcc void @_ZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorb(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull %1, i1 noundef zeroext false), !inline_history !7
  %i.m = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %1)
  %i.n = load i32, ptr %5, align 8                ; 5 uses
  %i.o = icmp eq i32 %i.n, 10
  %or.cond = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1319, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.105) #26
  unreachable

bb.c:                                             ; preds = %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 2120
  %i.q = load i32, ptr %i.p, align 8, !tbaa !160  ; 5 uses
  %i.r = icmp ne i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 2056 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp ne i32 %i.t, 1
  %or.cond6 = select i1 %i.r, i1 true, i1 %i.u
  br i1 %or.cond6, label %bb.d, label %bb.at

bb.d:                                             ; preds = %bb.c
  %or.cond9 = icmp ult i32 %i.n, 4
  br i1 %or.cond9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1322, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.106) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1323, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.107) #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !77
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1324, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.108) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.y = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.y, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #26
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.j
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %.noexc170

.noexc170:                                        ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #28 ; 3 uses
  %i.aa = add i64 %i.i, -8
  %i.ab = sub i64 %i.aa, %i.j
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.z, i8 0, i64 %i.ad, i1 false), !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.k
  %i.af = ptrtoint ptr %i.ae to i64
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %.noexc170, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc170 ] ; 2 uses
  %.sroa.0214.0 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.z, %.noexc170 ] ; 10 uses
  switch i32 %i.n, label %.invoke [
    i32 0, label %bb.k
    i32 1, label %bb.ad
  ]

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !77
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.m, label %.invoke

bb.l:                                             ; preds = %.invoke
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.m:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = load i64, ptr %i.al, align 8, !tbaa !77 ; 4 uses
  %i.an = urem i64 %3, %i.am
  %i.ao = udiv exact i64 %3, %i.am                ; 2 uses
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %bb.o, label %.invoke309

bb.n:                                             ; preds = %.invoke309
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.o:                                             ; preds = %bb.m
  %i.ar = urem i64 %4, %i.am
  %i.as = udiv exact i64 %4, %i.am                ; 3 uses
  %i.at = icmp eq i64 %i.ar, 0
  br i1 %i.at, label %bb.p, label %.invoke309

.invoke309:                                       ; preds = %bb.m, %bb.o
  %i.au = phi i32 [ 1332, %bb.o ], [ 1331, %bb.m ]
  %i.av = phi ptr [ @.str.111, %bb.o ], [ @.str.110, %bb.m ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.au, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.av) #26
          to label %.cont310 unwind label %bb.n

.cont310:                                         ; preds = %.invoke309
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.aw = add nsw i64 %i.as, %i.ao
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !77
  %.not162 = icmp sgt i64 %i.aw, %i.ay
  br i1 %.not162, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1335, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.112) #26
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.t:                                             ; preds = %bb.p
  %i.ba = load i32, ptr %1, align 8, !tbaa !212
  %i.bb = invoke i64 @ggml_blck_size(i32 noundef %i.ba)
          to label %.preheader226 unwind label %bb.ab ; 2 uses

.preheader226:                                    ; preds = %bb.t
  %i.bc = zext i32 %i.q to i64
  %.not269 = icmp eq i32 %i.q, 0
  br i1 %.not269, label %.loopexit, label %.preheader225.lr.ph

.preheader225.lr.ph:                              ; preds = %.preheader226
  %i.bd = icmp ne ptr %i.g, %i.h
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bg = icmp sgt i64 %i.as, 0
  %.fr264 = freeze i1 %i.bd
  br i1 %.fr264, label %.preheader225.us.preheader, label %.loopexit

.preheader225.us.preheader:                       ; preds = %.preheader225.lr.ph
  %umax284 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  br label %.preheader225.us

.preheader225.us:                                 ; preds = %.preheader225.us.preheader, %._crit_edge256.us
  %.0143257.us = phi i64 [ %i.ds, %._crit_edge256.us ], [ 0, %.preheader225.us.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0143257.us
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !161 ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %.not270 = icmp eq i32 %i.bi, 0
  br i1 %.not270, label %._crit_edge256.us, label %.preheader.lr.ph.us

.preheader.us:                                    ; preds = %.preheader.lr.ph.us, %._crit_edge254.us
  %.0142255.us = phi i64 [ 0, %.preheader.lr.ph.us ], [ %i.dv, %._crit_edge254.us ]
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.us258, %.preheader.us
  %.0141252.us = phi i64 [ 0, %.preheader.us ], [ %i.dr, %._crit_edge.us258 ] ; 6 uses
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !178 ; 3 uses
  %.not.i.i171.us = icmp eq ptr %i.bk, null
  br i1 %.not.i.i171.us, label %.split.us259.invoke, label %ggml_backend_buffer_is_meta.exit.i172.us

ggml_backend_buffer_is_meta.exit.i172.us:         ; preds = %bb.u
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !182
  %i.bm = icmp eq ptr %i.bl, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.bm, label %bb.v, label %.split.us259.invoke

bb.v:                                             ; preds = %ggml_backend_buffer_is_meta.exit.i172.us
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !184 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 224
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 232
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !151
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !150
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3
  %i.bx = icmp ult i64 %.0141252.us, %i.bw
  br i1 %i.bx, label %bb.w, label %.split.us259.invoke

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !29 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %.not10.i.i.i.i.i.us = icmp eq ptr %i.bz, null
  br i1 %.not10.i.i.i.i.i.us, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us, label %.lr.ph.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.us:                              ; preds = %bb.w, %.lr.ph.i.i.i.i.i.us
  %.012.i.i.i.i.i.us = phi ptr [ %.1.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.us ], [ %i.bz, %bb.w ] ; 3 uses
  %.0811.i.i.i.i.i.us = phi ptr [ %.19.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.us ], [ %i.ca, %bb.w ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !174
  %i.cd = icmp ult ptr %i.cc, %1                  ; 2 uses
  %.19.i.i.i.i.i.us = select i1 %i.cd, ptr %.0811.i.i.i.i.i.us, ptr %.012.i.i.i.i.i.us ; 3 uses
  %.1.in.v.i.i.i.i.i.us = select i1 %i.cd, i64 24, i64 16
  %.1.in.i.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us, i64 %.1.in.v.i.i.i.i.i.us
  %.1.i.i.i.i.i.us = load ptr, ptr %.1.in.i.i.i.i.i.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i.i.us = icmp eq ptr %.1.i.i.i.i.i.us, null
  br i1 %.not.i.i.i.i.i.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.us
  %i.ce = icmp eq ptr %.19.i.i.i.i.i.us, %i.ca
  br i1 %i.ce, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us

_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us: ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.us, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !174
  %i.ch = icmp ult ptr %1, %i.cg
  br i1 %i.ch, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us, label %.lr.ph.i.i.i.preheader.i.us

_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us: ; preds = %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us, %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 216
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !202
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [72 x i8], ptr %i.ci, i64 %i.cl ; 2 uses
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %.pre.i.us = load ptr, ptr %.phi.trans.insert.i.us, align 8, !tbaa !29 ; 2 uses
  %.not10.i.i.i.i.us = icmp eq ptr %.pre.i.us, null
  br i1 %.not10.i.i.i.i.us, label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us, label %.lr.ph.i.i.i.preheader.i.us

.lr.ph.i.i.i.preheader.i.us:                      ; preds = %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us
  %.pn.i.us = phi ptr [ %i.cm, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us ], [ %i.bo, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us ]
  %i.cn = phi ptr [ %.pre.i.us, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us ], [ %i.bz, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us ]
  %i.co = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 32 ; 2 uses
  br label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %.lr.ph.i.i.i.i.us, %.lr.ph.i.i.i.preheader.i.us
  %.012.i.i.i.i.us = phi ptr [ %.1.i.i.i.i.us, %.lr.ph.i.i.i.i.us ], [ %i.cn, %.lr.ph.i.i.i.preheader.i.us ] ; 3 uses
  %.0811.i.i.i.i.us = phi ptr [ %.19.i.i.i.i.us, %.lr.ph.i.i.i.i.us ], [ %i.co, %.lr.ph.i.i.i.preheader.i.us ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.us, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !174
  %i.cr = icmp ult ptr %i.cq, %1                  ; 2 uses
  %.19.i.i.i.i.us = select i1 %i.cr, ptr %.0811.i.i.i.i.us, ptr %.012.i.i.i.i.us ; 4 uses
  %.1.in.v.i.i.i.i.us = select i1 %i.cr, i64 24, i64 16
  %.1.in.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.us, i64 %.1.in.v.i.i.i.i.us
  %.1.i.i.i.i.us = load ptr, ptr %.1.in.i.i.i.i.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i174.us = icmp eq ptr %.1.i.i.i.i.us, null
  br i1 %.not.i.i.i.i174.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us, label %.lr.ph.i.i.i.i.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.us
  %i.cs = icmp eq ptr %.19.i.i.i.i.us, %i.co
  br i1 %i.cs, label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us

_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us: ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us
  %i.ct = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.us, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !174
  %i.cv = icmp ult ptr %1, %i.cu
  br i1 %i.cv, label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us, label %bb.x

bb.x:                                             ; preds = %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us
  %i.cw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.us, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !125
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.0141252.us
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !174
  br label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us

_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us: ; preds = %bb.x, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us
  %.0.i.us = phi ptr [ %i.cz, %bb.x ], [ null, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us ], [ null, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us ], [ null, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us ] ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %i.dx, i64 %.0141252.us
  %i.db = load i64, ptr %i.da, align 8, !tbaa !77 ; 2 uses
  %i.dc = srem i64 %i.db, %i.bb
  %i.dd = sdiv exact i64 %i.db, %i.bb
  %i.de = icmp eq i64 %i.dc, 0
  br i1 %i.de, label %bb.y, label %.split.us259.invoke

bb.y:                                             ; preds = %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us
  %i.df = load i64, ptr %i.ak, align 8, !tbaa !77
  %i.dg = mul i64 %i.df, %i.dd                    ; 2 uses
  br i1 %i.bg, label %.lr.ph251.us, label %._crit_edge.us258

bb.z:                                             ; preds = %.lr.ph251.us, %bb.aa
  %.0140250.us = phi i64 [ 0, %.lr.ph251.us ], [ %i.dm, %bb.aa ] ; 2 uses
  %i.dh = load i64, ptr %i.dt, align 8, !tbaa !77
  %i.di = add nsw i64 %.0140250.us, %i.ao
  %i.dj = load i64, ptr %i.du, align 8, !tbaa !77
  %i.dk = mul i64 %i.dj, %i.di
  %i.dl = add i64 %i.dk, %i.dh
  invoke void @ggml_backend_tensor_memset(ptr noundef nonnull %.0.i.us, i8 noundef zeroext %2, i64 noundef %i.dl, i64 noundef %i.dg)
          to label %bb.aa unwind label %.split263.us

bb.aa:                                            ; preds = %bb.z
  %i.dm = add nuw nsw i64 %.0140250.us, 1         ; 2 uses
  %i.dn = icmp slt i64 %i.dm, %i.as
  br i1 %i.dn, label %bb.z, label %._crit_edge.us258, !llvm.loop !612

._crit_edge.us258:                                ; preds = %bb.aa, %bb.y
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0214.0, i64 %.0141252.us ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !77
  %i.dq = add i64 %i.dp, %i.dg
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !77
  %i.dr = add nuw i64 %.0141252.us, 1             ; 2 uses
  %exitcond285.not = icmp eq i64 %i.dr, %umax284
  br i1 %exitcond285.not, label %._crit_edge254.us, label %bb.u, !llvm.loop !613

._crit_edge256.us:                                ; preds = %._crit_edge254.us, %.preheader225.us
  %i.ds = add nuw nsw i64 %.0143257.us, 1         ; 2 uses
  %exitcond287.not = icmp eq i64 %i.ds, %i.bc
  br i1 %exitcond287.not, label %.loopexit, label %.preheader225.us, !llvm.loop !614

.lr.ph251.us:                                     ; preds = %bb.y
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0214.0, i64 %.0141252.us
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.us, i64 56
  br label %bb.z

._crit_edge254.us:                                ; preds = %._crit_edge.us258
  %i.dv = add nuw nsw i64 %.0142255.us, 1         ; 2 uses
  %exitcond286.not = icmp eq i64 %i.dv, %i.bj
  br i1 %exitcond286.not, label %._crit_edge256.us, label %.preheader.us, !llvm.loop !615

.preheader.lr.ph.us:                              ; preds = %.preheader225.us
  %i.dw = mul i64 %.0143257.us, %i.l
  %i.dx = getelementptr [8 x i8], ptr %i.bf, i64 %i.dw
  br label %.preheader.us

.split263.us:                                     ; preds = %bb.z
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ab:                                            ; preds = %bb.t
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.split.us259.invoke:                              ; preds = %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us, %bb.v, %ggml_backend_buffer_is_meta.exit.i172.us, %bb.u
  %i.ea = phi i32 [ 476, %ggml_backend_buffer_is_meta.exit.i172.us ], [ 478, %bb.v ], [ 476, %bb.u ], [ 1342, %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us ]
  %i.eb = phi ptr [ @.str.86, %ggml_backend_buffer_is_meta.exit.i172.us ], [ @.str.87, %bb.v ], [ @.str.86, %bb.u ], [ @.str.113, %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.ea, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.eb) #26
          to label %.split.us259.cont unwind label %bb.ac

.split.us259.cont:                                ; preds = %.split.us259.invoke
  unreachable

bb.ac:                                            ; preds = %.split.us259.invoke
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.invoke:                                          ; preds = %bb.k, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ed = phi i32 [ 1355, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ 1328, %bb.k ]
  %i.ee = phi ptr [ @.str.114, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ @.str.109, %bb.k ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.ed, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.ee) #26
          to label %.cont unwind label %bb.l

.cont:                                            ; preds = %.invoke
  unreachable

bb.ad:                                            ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !77 ; 4 uses
  %i.eh = urem i64 %3, %i.eg
  %i.ei = udiv exact i64 %3, %i.eg                ; 2 uses
  %i.ej = icmp eq i64 %i.eh, 0
  br i1 %i.ej, label %bb.af, label %.invoke311

bb.ae:                                            ; preds = %.invoke311
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.af:                                            ; preds = %bb.ad
  %i.el = urem i64 %4, %i.eg
  %i.em = udiv exact i64 %4, %i.eg                ; 3 uses
  %i.en = icmp eq i64 %i.el, 0
  br i1 %i.en, label %bb.ag, label %.invoke311

.invoke311:                                       ; preds = %bb.ad, %bb.af
  %i.eo = phi i32 [ 1359, %bb.af ], [ 1358, %bb.ad ]
  %i.ep = phi ptr [ @.str.111, %bb.af ], [ @.str.110, %bb.ad ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.eo, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.ep) #26
          to label %.cont312 unwind label %bb.ae

.cont312:                                         ; preds = %.invoke311
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.eq = add nsw i64 %i.em, %i.ei
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.es = load i64, ptr %i.er, align 8, !tbaa !77
  %.not158 = icmp sgt i64 %i.eq, %i.es
  br i1 %.not158, label %bb.an, label %.preheader229

.preheader229:                                    ; preds = %bb.ag
  %i.et = zext i32 %i.q to i64
  %.not267 = icmp eq i32 %i.q, 0
  br i1 %.not267, label %.loopexit, label %.preheader228.lr.ph

.preheader228.lr.ph:                              ; preds = %.preheader229
  %i.eu = icmp ne ptr %i.g, %i.h
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ey = icmp sgt i64 %i.em, 0
  %.fr249 = freeze i1 %i.eu
  br i1 %.fr249, label %.preheader228.us.preheader, label %.loopexit

.preheader228.us.preheader:                       ; preds = %.preheader228.lr.ph
  %umax280 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  br label %.preheader228.us

.preheader228.us:                                 ; preds = %.preheader228.us.preheader, %._crit_edge245.us
  %.0139246.us = phi i64 [ %i.hh, %._crit_edge245.us ], [ 0, %.preheader228.us.preheader ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0139246.us
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !161 ; 2 uses
  %i.fb = zext i32 %i.fa to i64
  %.not268 = icmp eq i32 %i.fa, 0
  br i1 %.not268, label %._crit_edge245.us, label %.preheader227.lr.ph.us

.preheader227.us:                                 ; preds = %.preheader227.lr.ph.us, %._crit_edge243.us
  %.0138244.us = phi i64 [ 0, %.preheader227.lr.ph.us ], [ %i.hk, %._crit_edge243.us ]
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.us, %.preheader227.us
  %.0137241.us = phi i64 [ 0, %.preheader227.us ], [ %i.hg, %._crit_edge.us ] ; 6 uses
  %i.fc = load ptr, ptr %i.ev, align 8, !tbaa !178 ; 3 uses
  %.not.i.i177.us = icmp eq ptr %i.fc, null
  br i1 %.not.i.i177.us, label %.split.us.invoke, label %ggml_backend_buffer_is_meta.exit.i178.us

ggml_backend_buffer_is_meta.exit.i178.us:         ; preds = %bb.ah
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !182
  %i.fe = icmp eq ptr %i.fd, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.fe, label %bb.ai, label %.split.us.invoke

bb.ai:                                            ; preds = %ggml_backend_buffer_is_meta.exit.i178.us
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 96
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !184 ; 7 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 224
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 232
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !151
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !150
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ashr exact i64 %i.fn, 3
  %i.fp = icmp ult i64 %.0137241.us, %i.fo
  br i1 %i.fp, label %bb.aj, label %.split.us.invoke

bb.aj:                                            ; preds = %bb.ai
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !29 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fg, i64 32 ; 2 uses
  %.not10.i.i.i.i.i180.us = icmp eq ptr %i.fr, null
  br i1 %.not10.i.i.i.i.i180.us, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i205.us, label %.lr.ph.i.i.i.i.i181.us

.lr.ph.i.i.i.i.i181.us:                           ; preds = %bb.aj, %.lr.ph.i.i.i.i.i181.us
  %.012.i.i.i.i.i182.us = phi ptr [ %.1.i.i.i.i.i187.us, %.lr.ph.i.i.i.i.i181.us ], [ %i.fr, %bb.aj ] ; 3 uses
  %.0811.i.i.i.i.i183.us = phi ptr [ %.19.i.i.i.i.i184.us, %.lr.ph.i.i.i.i.i181.us ], [ %i.fs, %bb.aj ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i182.us, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !174
  %i.fv = icmp ult ptr %i.fu, %1                  ; 2 uses
  %.19.i.i.i.i.i184.us = select i1 %i.fv, ptr %.0811.i.i.i.i.i183.us, ptr %.012.i.i.i.i.i182.us ; 3 uses
  %.1.in.v.i.i.i.i.i185.us = select i1 %i.fv, i64 24, i64 16
  %.1.in.i.i.i.i.i186.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i182.us, i64 %.1.in.v.i.i.i.i.i185.us
  %.1.i.i.i.i.i187.us = load ptr, ptr %.1.in.i.i.i.i.i186.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i.i188.us = icmp eq ptr %.1.i.i.i.i.i187.us, null
  br i1 %.not.i.i.i.i.i188.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i189.us, label %.lr.ph.i.i.i.i.i181.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i189.us: ; preds = %.lr.ph.i.i.i.i.i181.us
  %i.fw = icmp eq ptr %.19.i.i.i.i.i184.us, %i.fs
  br i1 %i.fw, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i205.us, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i190.us

_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i190.us: ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i189.us
  %i.fx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i184.us, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !174
  %i.fz = icmp ult ptr %1, %i.fy
  br i1 %i.fz, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i205.us, label %.lr.ph.i.i.i.preheader.i192.us

_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i205.us: ; preds = %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i190.us, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i189.us, %bb.aj
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fg, i64 216
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !202
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [72 x i8], ptr %i.ga, i64 %i.gd ; 2 uses
  %.phi.trans.insert.i206.us = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %.pre.i207.us = load ptr, ptr %.phi.trans.insert.i206.us, align 8, !tbaa !29 ; 2 uses
  %.not10.i.i.i.i208.us = icmp eq ptr %.pre.i207.us, null
  br i1 %.not10.i.i.i.i208.us, label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit211.us, label %.lr.ph.i.i.i.preheader.i192.us

.lr.ph.i.i.i.preheader.i192.us:                   ; preds = %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i205.us, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i190.us
  %.pn.i193.us = phi ptr [ %i.ge, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i205.us ], [ %i.fg, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i190.us ]
  %i.gf = phi ptr [ %.pre.i207.us, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i205.us ], [ %i.fr, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i190.us ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.pn.i193.us, i64 32 ; 2 uses
  br label %.lr.ph.i.i.i.i194.us

.lr.ph.i.i.i.i194.us:                             ; preds = %.lr.ph.i.i.i.i194.us, %.lr.ph.i.i.i.preheader.i192.us
  %.012.i.i.i.i195.us = phi ptr [ %.1.i.i.i.i200.us, %.lr.ph.i.i.i.i194.us ], [ %i.gf, %.lr.ph.i.i.i.preheader.i192.us ] ; 3 uses
  %.0811.i.i.i.i196.us = phi ptr [ %.19.i.i.i.i197.us, %.lr.ph.i.i.i.i194.us ], [ %i.gg, %.lr.ph.i.i.i.preheader.i192.us ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i195.us, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !174
  %i.gj = icmp ult ptr %i.gi, %1                  ; 2 uses
  %.19.i.i.i.i197.us = select i1 %i.gj, ptr %.0811.i.i.i.i196.us, ptr %.012.i.i.i.i195.us ; 4 uses
  %.1.in.v.i.i.i.i198.us = select i1 %i.gj, i64 24, i64 16
  %.1.in.i.i.i.i199.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i195.us, i64 %.1.in.v.i.i.i.i198.us
  %.1.i.i.i.i200.us = load ptr, ptr %.1.in.i.i.i.i199.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i201.us = icmp eq ptr %.1.i.i.i.i200.us, null
  br i1 %.not.i.i.i.i201.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i202.us, label %.lr.ph.i.i.i.i194.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i202.us: ; preds = %.lr.ph.i.i.i.i194.us
  %i.gk = icmp eq ptr %.19.i.i.i.i197.us, %i.gg
  br i1 %i.gk, label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit211.us, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i203.us

_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i203.us: ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i202.us
  %i.gl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i197.us, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !174
  %i.gn = icmp ult ptr %1, %i.gm
  br i1 %i.gn, label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit211.us, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i203.us
  %i.go = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i197.us, i64 40
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !125
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.0137241.us
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !174
  br label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit211.us

_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit211.us: ; preds = %bb.ak, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i203.us, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i202.us, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i205.us
  %.0.i204.us = phi ptr [ %i.gr, %bb.ak ], [ null, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i203.us ], [ null, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i205.us ], [ null, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i202.us ] ; 2 uses
  %i.gs = getelementptr [8 x i8], ptr %i.hm, i64 %.0137241.us
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !77
  %i.gu = load i64, ptr %i.ex, align 8, !tbaa !77
  %i.gv = mul i64 %i.gu, %i.gt                    ; 2 uses
  br i1 %i.ey, label %.lr.ph240.us, label %._crit_edge.us

bb.al:                                            ; preds = %.lr.ph240.us, %bb.am
  %.0136239.us = phi i64 [ 0, %.lr.ph240.us ], [ %i.hb, %bb.am ] ; 2 uses
  %i.gw = load i64, ptr %i.hi, align 8, !tbaa !77
  %i.gx = add nsw i64 %.0136239.us, %i.ei
  %i.gy = load i64, ptr %i.hj, align 8, !tbaa !77
  %i.gz = mul i64 %i.gy, %i.gx
  %i.ha = add i64 %i.gz, %i.gw
  invoke void @ggml_backend_tensor_memset(ptr noundef nonnull %.0.i204.us, i8 noundef zeroext %2, i64 noundef %i.ha, i64 noundef %i.gv)
          to label %bb.am unwind label %.split248.us

bb.am:                                            ; preds = %bb.al
  %i.hb = add nuw nsw i64 %.0136239.us, 1         ; 2 uses
  %i.hc = icmp slt i64 %i.hb, %i.em
  br i1 %i.hc, label %bb.al, label %._crit_edge.us, !llvm.loop !616

._crit_edge.us:                                   ; preds = %bb.am, %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit211.us
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0214.0, i64 %.0137241.us ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !77
  %i.hf = add i64 %i.he, %i.gv
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !77
  %i.hg = add nuw i64 %.0137241.us, 1             ; 2 uses
  %exitcond281.not = icmp eq i64 %i.hg, %umax280
  br i1 %exitcond281.not, label %._crit_edge243.us, label %bb.ah, !llvm.loop !617

._crit_edge245.us:                                ; preds = %._crit_edge243.us, %.preheader228.us
  %i.hh = add nuw nsw i64 %.0139246.us, 1         ; 2 uses
  %exitcond283.not = icmp eq i64 %i.hh, %i.et
  br i1 %exitcond283.not, label %.loopexit, label %.preheader228.us, !llvm.loop !618

.lr.ph240.us:                                     ; preds = %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit211.us
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0214.0, i64 %.0137241.us
  %i.hj = getelementptr inbounds nuw i8, ptr %.0.i204.us, i64 64
  br label %bb.al

._crit_edge243.us:                                ; preds = %._crit_edge.us
  %i.hk = add nuw nsw i64 %.0138244.us, 1         ; 2 uses
  %exitcond282.not = icmp eq i64 %i.hk, %i.fb
  br i1 %exitcond282.not, label %._crit_edge245.us, label %.preheader227.us, !llvm.loop !619

.preheader227.lr.ph.us:                           ; preds = %.preheader228.us
  %i.hl = mul i64 %.0139246.us, %i.l
  %i.hm = getelementptr [8 x i8], ptr %i.ew, i64 %i.hl
  br label %.preheader227.us

.split248.us:                                     ; preds = %bb.al
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.an:                                            ; preds = %bb.ag
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1362, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.115) #26
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.split.us.invoke:                                 ; preds = %bb.ai, %ggml_backend_buffer_is_meta.exit.i178.us, %bb.ah
  %i.hp = phi i32 [ 476, %ggml_backend_buffer_is_meta.exit.i178.us ], [ 476, %bb.ah ], [ 478, %bb.ai ]
  %i.hq = phi ptr [ @.str.86, %ggml_backend_buffer_is_meta.exit.i178.us ], [ @.str.86, %bb.ah ], [ @.str.87, %bb.ai ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.hp, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.hq) #26
          to label %.split.us.cont unwind label %bb.aq

.split.us.cont:                                   ; preds = %.split.us.invoke
  unreachable

bb.aq:                                            ; preds = %.split.us.invoke
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit:                                        ; preds = %._crit_edge245.us, %._crit_edge256.us, %.preheader228.lr.ph, %.preheader225.lr.ph, %.preheader229, %.preheader226
  %.not.i.i.i = icmp eq ptr %.sroa.0214.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %.loopexit
  %i.hs = ptrtoint ptr %.sroa.0214.0 to i64
  %i.ht = sub i64 %.sroa.13.0, %i.hs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.0, i64 noundef %i.ht) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.as:                                            ; preds = %bb.ae, %bb.aq, %bb.ap, %bb.n, %bb.ab, %bb.ac, %bb.s, %bb.l
  %.pn163.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.ac ], [ %i.aj, %bb.l ], [ %i.aq, %bb.n ], [ %i.az, %bb.s ], [ %i.dz, %bb.ab ], [ %i.hr, %bb.aq ], [ %i.ek, %bb.ae ], [ %i.ho, %bb.ap ] ; 2 uses
  %.not.i.i.i212 = icmp eq ptr %.sroa.0214.0, null
  br i1 %.not.i.i.i212, label %_ZNSt6vectorImSaImEED2Ev.exit213, label %.thread

.thread:                                          ; preds = %.split263.us, %.split248.us, %bb.as
  %.pn163.pn.pn.pn.pn223 = phi { ptr, i32 } [ %.pn163.pn.pn.pn.pn, %bb.as ], [ %i.hn, %.split248.us ], [ %i.dy, %.split263.us ]
  %i.hu = ptrtoint ptr %.sroa.0214.0 to i64
  %i.hv = sub i64 %.sroa.13.0, %i.hu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.0, i64 noundef %i.hv) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit213

_ZNSt6vectorImSaImEED2Ev.exit213:                 ; preds = %.thread, %bb.as
  %.pn163.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn163.pn.pn.pn.pn223, %.thread ], [ %.pn163.pn.pn.pn.pn, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn163.pn.pn.pn.pn.pn

bb.at:                                            ; preds = %bb.c
  switch i32 %i.n, label %bb.bc [
    i32 0, label %bb.au
    i32 1, label %bb.au
    i32 2, label %bb.au
    i32 11, label %bb.az
    i32 10, label %bb.bb
  ]

bb.au:                                            ; preds = %bb.at, %bb.at, %bb.at
  %i.hw = zext nneg i32 %i.n to i64               ; 2 uses
  %i.hx = getelementptr [8 x i8], ptr %1, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 56
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !77 ; 4 uses
  %i.ia = urem i64 %3, %i.hz
  %i.ib = udiv exact i64 %3, %i.hz                ; 2 uses
  %i.ic = icmp eq i64 %i.ia, 0
  br i1 %i.ic, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1385, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.33) #26
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.id = urem i64 %4, %i.hz
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1386, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.34) #26
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.if = add i64 %4, %3
  %i.ig = udiv i64 %i.if, %i.hz                   ; 2 uses
  %.not266 = icmp eq ptr %i.g, %i.h
  br i1 %.not266, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.lr.ph238

.lr.ph238:                                        ; preds = %bb.ay
  %i.ih = icmp slt i64 %i.ib, %i.ig
  %.fr = freeze i1 %i.ih
  br i1 %.fr, label %.lr.ph238.split.us, label %.lr.ph238.split

.lr.ph238.split.us:                               ; preds = %.lr.ph238, %..loopexit232_crit_edge.us
  %.0135237.us = phi i64 [ %i.iq, %..loopexit232_crit_edge.us ], [ 0, %.lr.ph238 ] ; 2 uses
  %i.ii = tail call fastcc noundef ptr @_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm(ptr noundef nonnull %1, i64 noundef %.0135237.us) ; 2 uses
  %i.ij = getelementptr [8 x i8], ptr %i.ii, i64 %i.hw
  %i.ik = getelementptr i8, ptr %i.ij, i64 56
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !77 ; 3 uses
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %..loopexit232_crit_edge.us, label %.preheader231.us

.preheader231.us:                                 ; preds = %.lr.ph238.split.us, %.preheader231.us
  %.0134235.us = phi i64 [ %i.io, %.preheader231.us ], [ %i.ib, %.lr.ph238.split.us ] ; 2 uses
  %i.in = mul i64 %.0134235.us, %i.il
  tail call void @ggml_backend_tensor_memset(ptr noundef nonnull %i.ii, i8 noundef zeroext %2, i64 noundef %i.in, i64 noundef %i.il)
  %i.io = add nsw i64 %.0134235.us, 1             ; 2 uses
  %i.ip = icmp slt i64 %i.io, %i.ig
  br i1 %i.ip, label %.preheader231.us, label %..loopexit232_crit_edge.us, !llvm.loop !620

..loopexit232_crit_edge.us:                       ; preds = %.preheader231.us, %.lr.ph238.split.us
  %i.iq = add nuw i64 %.0135237.us, 1             ; 2 uses
  %exitcond279.not = icmp eq i64 %i.iq, %i.l
  br i1 %exitcond279.not, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.lr.ph238.split.us, !llvm.loop !621

.lr.ph238.split:                                  ; preds = %.lr.ph238, %.lr.ph238.split
  %.0135237 = phi i64 [ %i.is, %.lr.ph238.split ], [ 0, %.lr.ph238 ] ; 2 uses
  %i.ir = tail call fastcc noundef ptr @_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm(ptr noundef nonnull %1, i64 noundef %.0135237) ; 0 uses
  %i.is = add nuw i64 %.0135237, 1                ; 2 uses
  %exitcond277.not = icmp eq i64 %i.is, %i.l
  br i1 %exitcond277.not, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.lr.ph238.split, !llvm.loop !621

bb.az:                                            ; preds = %bb.at
  %i.it = icmp eq i8 %2, 0
  br i1 %i.it, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1401, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.116) #26
  unreachable

bb.bb:                                            ; preds = %bb.az, %bb.at
  %.not265 = icmp eq ptr %i.g, %i.h
  br i1 %.not265, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bb, %.lr.ph
  %.0234 = phi i64 [ %i.iv, %.lr.ph ], [ 0, %bb.bb ] ; 2 uses
  %i.iu = tail call fastcc noundef ptr @_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm(ptr noundef nonnull %1, i64 noundef %.0234)
  tail call void @ggml_backend_tensor_memset(ptr noundef %i.iu, i8 noundef zeroext %2, i64 noundef %3, i64 noundef %4)
  %i.iv = add nuw i64 %.0234, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.iv, %i.l
  br i1 %exitcond.not, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.lr.ph, !llvm.loop !622

bb.bc:                                            ; preds = %bb.at
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1411, ptr noundef nonnull @.str.9) #26
  unreachable

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.lr.ph, %.lr.ph238.split, %..loopexit232_crit_edge.us, %bb.bb, %bb.ay, %bb.ar, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL35ggml_backend_meta_buffer_set_tensorP19ggml_backend_bufferP11ggml_tensorPKvmm(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.ggml_backend_meta_split_state, align 8 ; 11 uses
  %6 = alloca %"class.std::vector.220", align 8   ; 12 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %ggml_backend_buffer_is_meta.exit.thread.i, label %ggml_backend_buffer_is_meta.exit.i

ggml_backend_buffer_is_meta.exit.i:               ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !182
  %i.c = icmp eq ptr %i.b, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.c, label %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit, label %ggml_backend_buffer_is_meta.exit.thread.i

ggml_backend_buffer_is_meta.exit.thread.i:        ; preds = %ggml_backend_buffer_is_meta.exit.i, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 463, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.43) #26
  unreachable

_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit: ; preds = %ggml_backend_buffer_is_meta.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151  ; 6 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !150  ; 6 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call fastcc void @_ZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorb(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull %1, i1 noundef zeroext false), !inline_history !7
  %i.n = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %1)
  %i.o = load i32, ptr %5, align 8                ; 5 uses
  %i.p = icmp eq i32 %i.o, 10
  %or.cond = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1419, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.105) #26
  unreachable

bb.c:                                             ; preds = %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 2120
  %i.r = load i32, ptr %i.q, align 8, !tbaa !160  ; 5 uses
  %i.s = icmp ne i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 2056 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp ne i32 %i.u, 1
  %or.cond6 = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond6, label %bb.d, label %bb.ar

bb.d:                                             ; preds = %bb.c
  %or.cond9 = icmp ult i32 %i.o, 4
  br i1 %or.cond9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1422, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.106) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not225 = icmp eq i32 %i.u, 0
  br i1 %.not225, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1423, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.107) #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !77
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1424, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.108) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.m, 1152921504606846975
  br i1 %i.z, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #26
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.j
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %.noexc240

.noexc240:                                        ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28 ; 3 uses
  %i.ab = add i64 %i.j, -8
  %i.ac = sub i64 %i.ab, %i.k
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aa, i8 0, i64 %i.ae, i1 false), !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.l
  %i.ag = ptrtoint ptr %i.af to i64
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %.noexc240, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc240 ] ; 2 uses
  %.sroa.0302.0 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aa, %.noexc240 ] ; 8 uses
  switch i32 %i.o, label %.invoke [
    i32 0, label %bb.k
    i32 1, label %bb.ae
  ]

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !77
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.m, label %.invoke

bb.l:                                             ; preds = %.invoke
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.m:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !77 ; 4 uses
  %i.ao = urem i64 %3, %i.an
  %i.ap = udiv exact i64 %3, %i.an                ; 2 uses
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %bb.o, label %.invoke497

bb.n:                                             ; preds = %.invoke497
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  %i.as = urem i64 %4, %i.an
  %i.at = udiv exact i64 %4, %i.an                ; 3 uses
  %i.au = icmp eq i64 %i.as, 0
  br i1 %i.au, label %bb.p, label %.invoke497

.invoke497:                                       ; preds = %bb.m, %bb.o
  %i.av = phi i32 [ 1433, %bb.o ], [ 1432, %bb.m ]
  %i.aw = phi ptr [ @.str.111, %bb.o ], [ @.str.110, %bb.m ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.av, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.aw) #26
          to label %.cont498 unwind label %bb.n

.cont498:                                         ; preds = %.invoke497
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ax = add nsw i64 %i.at, %i.ap
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !77
  %.not231 = icmp sgt i64 %i.ax, %i.az
  br i1 %.not231, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1436, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.112) #26
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.t:                                             ; preds = %bb.p
  %i.bb = load i32, ptr %1, align 8, !tbaa !212
  %i.bc = invoke i64 @ggml_blck_size(i32 noundef %i.bb)
          to label %.preheader315 unwind label %bb.aa ; 2 uses

.preheader315:                                    ; preds = %bb.t
  %i.bd = zext i32 %i.r to i64
  %.not411 = icmp eq i32 %i.r, 0
  br i1 %.not411, label %._crit_edge401, label %.preheader314.lr.ph

.preheader314.lr.ph:                              ; preds = %.preheader315
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %umax433 = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  br label %.preheader314

.preheader314:                                    ; preds = %.preheader314.lr.ph, %._crit_edge389
  %.0186400 = phi i64 [ 0, %.preheader314.lr.ph ], [ %.1187.lcssa, %._crit_edge389 ] ; 3 uses
  %.0196399 = phi i64 [ 0, %.preheader314.lr.ph ], [ %i.dz, %._crit_edge389 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.0196399
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !161 ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %.not413 = icmp eq i32 %i.bh, 0
  br i1 %.not413, label %._crit_edge389, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader314
  %i.bj = mul i64 %.0196399, %i.m
  %i.bk = getelementptr [8 x i8], ptr %i.bf, i64 %i.bj
  br i1 %.not.i.i.i.i, label %._crit_edge389, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge385.us
  %.1187388.us = phi i64 [ %i.dq, %._crit_edge385.us ], [ %.0186400, %.preheader.lr.ph ]
  %.0195387.us = phi i64 [ %i.du, %._crit_edge385.us ], [ 0, %.preheader.lr.ph ]
  br label %bb.u

bb.u:                                             ; preds = %.preheader.us, %bb.z
  %.2383.us = phi i64 [ %.1187388.us, %.preheader.us ], [ %i.dq, %bb.z ] ; 2 uses
  %.0194382.us = phi i64 [ 0, %.preheader.us ], [ %i.dt, %bb.z ] ; 5 uses
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !178 ; 3 uses
  %.not.i.i241.us = icmp eq ptr %i.bl, null
  br i1 %.not.i.i241.us, label %.split392.us.invoke, label %ggml_backend_buffer_is_meta.exit.i242.us

ggml_backend_buffer_is_meta.exit.i242.us:         ; preds = %bb.u
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !182
  %i.bn = icmp eq ptr %i.bm, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.bn, label %bb.v, label %.split392.us.invoke

bb.v:                                             ; preds = %ggml_backend_buffer_is_meta.exit.i242.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !184 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 224
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 232
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !151
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !150
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = icmp ult i64 %.0194382.us, %i.bx
  br i1 %i.by, label %bb.w, label %.split392.us.invoke

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !29 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %.not10.i.i.i.i.i.us = icmp eq ptr %i.ca, null
  br i1 %.not10.i.i.i.i.i.us, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us, label %.lr.ph.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.us:                              ; preds = %bb.w, %.lr.ph.i.i.i.i.i.us
  %.012.i.i.i.i.i.us = phi ptr [ %.1.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.us ], [ %i.ca, %bb.w ] ; 3 uses
  %.0811.i.i.i.i.i.us = phi ptr [ %.19.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.us ], [ %i.cb, %bb.w ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !174
  %i.ce = icmp ult ptr %i.cd, %1                  ; 2 uses
  %.19.i.i.i.i.i.us = select i1 %i.ce, ptr %.0811.i.i.i.i.i.us, ptr %.012.i.i.i.i.i.us ; 3 uses
  %.1.in.v.i.i.i.i.i.us = select i1 %i.ce, i64 24, i64 16
  %.1.in.i.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us, i64 %.1.in.v.i.i.i.i.i.us
  %.1.i.i.i.i.i.us = load ptr, ptr %.1.in.i.i.i.i.i.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i.i.us = icmp eq ptr %.1.i.i.i.i.i.us, null
  br i1 %.not.i.i.i.i.i.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.us
  %i.cf = icmp eq ptr %.19.i.i.i.i.i.us, %i.cb
  br i1 %i.cf, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us

_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us: ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.us, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !174
  %i.ci = icmp ult ptr %1, %i.ch
  br i1 %i.ci, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us, label %.lr.ph.i.i.i.preheader.i.us

_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us: ; preds = %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us, %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 216
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !202
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [72 x i8], ptr %i.cj, i64 %i.cm ; 2 uses
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %.pre.i.us = load ptr, ptr %.phi.trans.insert.i.us, align 8, !tbaa !29 ; 2 uses
  %.not10.i.i.i.i.us = icmp eq ptr %.pre.i.us, null
  br i1 %.not10.i.i.i.i.us, label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us, label %.lr.ph.i.i.i.preheader.i.us

.lr.ph.i.i.i.preheader.i.us:                      ; preds = %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us
  %.pn.i.us = phi ptr [ %i.cn, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us ], [ %i.bp, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us ]
  %i.co = phi ptr [ %.pre.i.us, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us ], [ %i.ca, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 32 ; 2 uses
  br label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %.lr.ph.i.i.i.i.us, %.lr.ph.i.i.i.preheader.i.us
  %.012.i.i.i.i.us = phi ptr [ %.1.i.i.i.i.us, %.lr.ph.i.i.i.i.us ], [ %i.co, %.lr.ph.i.i.i.preheader.i.us ] ; 3 uses
  %.0811.i.i.i.i.us = phi ptr [ %.19.i.i.i.i.us, %.lr.ph.i.i.i.i.us ], [ %i.cp, %.lr.ph.i.i.i.preheader.i.us ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.us, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !174
  %i.cs = icmp ult ptr %i.cr, %1                  ; 2 uses
  %.19.i.i.i.i.us = select i1 %i.cs, ptr %.0811.i.i.i.i.us, ptr %.012.i.i.i.i.us ; 4 uses
  %.1.in.v.i.i.i.i.us = select i1 %i.cs, i64 24, i64 16
  %.1.in.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.us, i64 %.1.in.v.i.i.i.i.us
  %.1.i.i.i.i.us = load ptr, ptr %.1.in.i.i.i.i.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i244.us = icmp eq ptr %.1.i.i.i.i.us, null
  br i1 %.not.i.i.i.i244.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us, label %.lr.ph.i.i.i.i.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.us
  %i.ct = icmp eq ptr %.19.i.i.i.i.us, %i.cp
  br i1 %i.ct, label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us

_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us: ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us
  %i.cu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.us, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !174
  %i.cw = icmp ult ptr %1, %i.cv
  br i1 %i.cw, label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us, label %bb.x

bb.x:                                             ; preds = %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.us, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !125
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.0194382.us
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !174
  br label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us

_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us: ; preds = %bb.x, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us
  %.0.i.us = phi ptr [ %i.da, %bb.x ], [ null, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us ], [ null, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us ], [ null, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us ] ; 2 uses
  %i.db = getelementptr [8 x i8], ptr %i.bk, i64 %.0194382.us
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !77 ; 2 uses
  %i.dd = srem i64 %i.dc, %i.bc
  %i.de = sdiv exact i64 %i.dc, %i.bc
  %i.df = icmp eq i64 %i.dd, 0
  br i1 %i.df, label %bb.y, label %.split392.us.invoke

bb.y:                                             ; preds = %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us
  %i.dg = load i64, ptr %i.al, align 8, !tbaa !77
  %i.dh = mul i64 %i.dg, %i.de                    ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %.2383.us
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0302.0, i64 %.0194382.us ; 3 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !77
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.us, i64 56
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !77 ; 2 uses
  %i.dn = mul i64 %i.dm, %i.ap
  %i.do = add i64 %i.dn, %i.dk
  %i.dp = load i64, ptr %i.am, align 8, !tbaa !77
  invoke void @ggml_backend_tensor_set_2d(ptr noundef nonnull %.0.i.us, ptr noundef %i.di, i64 noundef %i.do, i64 noundef %i.dh, i64 noundef %i.at, i64 noundef %i.dm, i64 noundef %i.dp)
          to label %bb.z unwind label %.split396.us

bb.z:                                             ; preds = %bb.y
  %i.dq = add i64 %i.dh, %.2383.us                ; 3 uses
  %i.dr = load i64, ptr %i.dj, align 8, !tbaa !77
  %i.ds = add i64 %i.dr, %i.dh
  store i64 %i.ds, ptr %i.dj, align 8, !tbaa !77
  %i.dt = add nuw i64 %.0194382.us, 1             ; 2 uses
  %exitcond434.not = icmp eq i64 %i.dt, %umax433
  br i1 %exitcond434.not, label %._crit_edge385.us, label %bb.u, !llvm.loop !623

._crit_edge385.us:                                ; preds = %bb.z
  %i.du = add nuw nsw i64 %.0195387.us, 1         ; 2 uses
  %exitcond435.not = icmp eq i64 %i.du, %i.bi
  br i1 %exitcond435.not, label %._crit_edge389, label %.preheader.us, !llvm.loop !624

.split396.us:                                     ; preds = %bb.y
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.thread

._crit_edge401.loopexit:                          ; preds = %._crit_edge389
  %i.dw = mul i64 %.1187.lcssa, %i.at
  br label %._crit_edge401

._crit_edge401:                                   ; preds = %._crit_edge401.loopexit, %.preheader315
  %.0186.lcssa = phi i64 [ 0, %.preheader315 ], [ %i.dw, %._crit_edge401.loopexit ]
  %i.dx = icmp eq i64 %.0186.lcssa, %4
  br i1 %i.dx, label %bb.ao, label %bb.ac

bb.aa:                                            ; preds = %bb.ac, %bb.t
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

._crit_edge389:                                   ; preds = %._crit_edge385.us, %.preheader.lr.ph, %.preheader314
  %.1187.lcssa = phi i64 [ %.0186400, %.preheader314 ], [ %.0186400, %.preheader.lr.ph ], [ %i.dq, %._crit_edge385.us ] ; 2 uses
  %i.dz = add nuw nsw i64 %.0196399, 1            ; 2 uses
  %exitcond436.not = icmp eq i64 %i.dz, %i.bd
  br i1 %exitcond436.not, label %._crit_edge401.loopexit, label %.preheader314, !llvm.loop !625

.split392.us.invoke:                              ; preds = %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us, %bb.v, %ggml_backend_buffer_is_meta.exit.i242.us, %bb.u
  %i.ea = phi i32 [ 476, %ggml_backend_buffer_is_meta.exit.i242.us ], [ 478, %bb.v ], [ 476, %bb.u ], [ 1443, %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us ]
  %i.eb = phi ptr [ @.str.86, %ggml_backend_buffer_is_meta.exit.i242.us ], [ @.str.87, %bb.v ], [ @.str.86, %bb.u ], [ @.str.113, %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.ea, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.eb) #26
          to label %.split392.us.cont unwind label %bb.ab

.split392.us.cont:                                ; preds = %.split392.us.invoke
  unreachable

bb.ab:                                            ; preds = %.split392.us.invoke
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ac:                                            ; preds = %._crit_edge401
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1453, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.117) #26
          to label %bb.ad unwind label %bb.aa

bb.ad:                                            ; preds = %bb.ac
  unreachable

.invoke:                                          ; preds = %bb.k, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ed = phi i32 [ 1456, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ 1429, %bb.k ]
  %i.ee = phi ptr [ @.str.114, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ @.str.109, %bb.k ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.ed, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.ee) #26
          to label %.cont unwind label %bb.l

.cont:                                            ; preds = %.invoke
  unreachable

bb.ae:                                            ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !77 ; 4 uses
  %i.eh = urem i64 %3, %i.eg
  %i.ei = udiv exact i64 %3, %i.eg                ; 2 uses
  %i.ej = icmp eq i64 %i.eh, 0
  br i1 %i.ej, label %bb.ag, label %.invoke499

bb.af:                                            ; preds = %.invoke499
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ag:                                            ; preds = %bb.ae
  %i.el = urem i64 %4, %i.eg
  %i.em = udiv exact i64 %4, %i.eg                ; 3 uses
  %i.en = icmp eq i64 %i.el, 0
  br i1 %i.en, label %bb.ah, label %.invoke499

.invoke499:                                       ; preds = %bb.ae, %bb.ag
  %i.eo = phi i32 [ 1460, %bb.ag ], [ 1459, %bb.ae ]
  %i.ep = phi ptr [ @.str.111, %bb.ag ], [ @.str.110, %bb.ae ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.eo, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.ep) #26
          to label %.cont500 unwind label %bb.af

.cont500:                                         ; preds = %.invoke499
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.eq = add nsw i64 %i.em, %i.ei
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.es = load i64, ptr %i.er, align 8, !tbaa !77
  %.not226 = icmp sgt i64 %i.eq, %i.es
  br i1 %.not226, label %.invoke501, label %.preheader318

.preheader318:                                    ; preds = %bb.ah
  %i.et = zext i32 %i.r to i64
  %.not408 = icmp eq i32 %i.r, 0
  br i1 %.not408, label %._crit_edge378, label %.preheader317.lr.ph

.preheader317.lr.ph:                              ; preds = %.preheader318
  %i.eu = icmp ne ptr %i.h, %i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.fr = freeze i1 %i.eu
  br i1 %.fr, label %.preheader317.us.preheader, label %._crit_edge378

.preheader317.us.preheader:                       ; preds = %.preheader317.lr.ph
  %umax429 = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  br label %.preheader317.us

.preheader317.us:                                 ; preds = %.preheader317.us.preheader, %._crit_edge368.split.us.us
  %.3377.us = phi i64 [ %.4.lcssa.us, %._crit_edge368.split.us.us ], [ 0, %.preheader317.us.preheader ] ; 2 uses
  %.0193376.us = phi i64 [ %i.hk, %._crit_edge368.split.us.us ], [ 0, %.preheader317.us.preheader ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.0193376.us
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !161 ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %.not410 = icmp eq i32 %i.ez, 0
  br i1 %.not410, label %._crit_edge368.split.us.us, label %.preheader316.lr.ph.us

.preheader316.lr.ph.us:                           ; preds = %.preheader317.us
  %i.fb = mul i64 %.0193376.us, %i.m
  %i.fc = getelementptr [8 x i8], ptr %i.ew, i64 %i.fb
  br label %.preheader316.us.us

.preheader316.us.us:                              ; preds = %._crit_edge364.us.us, %.preheader316.lr.ph.us
  %.4367.us.us = phi i64 [ %.3377.us, %.preheader316.lr.ph.us ], [ %i.hf, %._crit_edge364.us.us ]
  %.0192366.us.us = phi i64 [ 0, %.preheader316.lr.ph.us ], [ %i.hj, %._crit_edge364.us.us ]
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %.preheader316.us.us
  %.5362.us.us = phi i64 [ %.4367.us.us, %.preheader316.us.us ], [ %i.hf, %bb.al ] ; 2 uses
  %.0191361.us.us = phi i64 [ 0, %.preheader316.us.us ], [ %i.hi, %bb.al ] ; 5 uses
  %i.fd = load ptr, ptr %i.ev, align 8, !tbaa !178 ; 3 uses
  %.not.i.i247.us.us = icmp eq ptr %i.fd, null
  br i1 %.not.i.i247.us.us, label %.split371.us.invoke, label %ggml_backend_buffer_is_meta.exit.i248.us.us

ggml_backend_buffer_is_meta.exit.i248.us.us:      ; preds = %bb.ai
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !182
  %i.ff = icmp eq ptr %i.fe, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.ff, label %bb.aj, label %.split371.us.invoke

bb.aj:                                            ; preds = %ggml_backend_buffer_is_meta.exit.i248.us.us
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 96
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !184 ; 7 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 224
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 232
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !151
  %i.fl = load ptr, ptr %i.fi, align 8, !tbaa !150
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 3
  %i.fq = icmp ult i64 %.0191361.us.us, %i.fp
  br i1 %i.fq, label %bb.ak, label %.split371.us.invoke

bb.ak:                                            ; preds = %bb.aj
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !29 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fh, i64 32 ; 2 uses
  %.not10.i.i.i.i.i250.us.us = icmp eq ptr %i.fs, null
  br i1 %.not10.i.i.i.i.i250.us.us, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i275.us.us, label %.lr.ph.i.i.i.i.i251.us.us

.lr.ph.i.i.i.i.i251.us.us:                        ; preds = %bb.ak, %.lr.ph.i.i.i.i.i251.us.us
  %.012.i.i.i.i.i252.us.us = phi ptr [ %.1.i.i.i.i.i257.us.us, %.lr.ph.i.i.i.i.i251.us.us ], [ %i.fs, %bb.ak ] ; 3 uses
  %.0811.i.i.i.i.i253.us.us = phi ptr [ %.19.i.i.i.i.i254.us.us, %.lr.ph.i.i.i.i.i251.us.us ], [ %i.ft, %bb.ak ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i252.us.us, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !174
  %i.fw = icmp ult ptr %i.fv, %1                  ; 2 uses
  %.19.i.i.i.i.i254.us.us = select i1 %i.fw, ptr %.0811.i.i.i.i.i253.us.us, ptr %.012.i.i.i.i.i252.us.us ; 3 uses
  %.1.in.v.i.i.i.i.i255.us.us = select i1 %i.fw, i64 24, i64 16
  %.1.in.i.i.i.i.i256.us.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i252.us.us, i64 %.1.in.v.i.i.i.i.i255.us.us
  %.1.i.i.i.i.i257.us.us = load ptr, ptr %.1.in.i.i.i.i.i256.us.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i.i258.us.us = icmp eq ptr %.1.i.i.i.i.i257.us.us, null
  br i1 %.not.i.i.i.i.i258.us.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i259.us.us, label %.lr.ph.i.i.i.i.i251.us.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i259.us.us: ; preds = %.lr.ph.i.i.i.i.i251.us.us
  %i.fx = icmp eq ptr %.19.i.i.i.i.i254.us.us, %i.ft
  br i1 %i.fx, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i275.us.us, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i260.us.us

_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i260.us.us: ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i259.us.us
  %i.fy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i254.us.us, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !174
  %i.ga = icmp ult ptr %1, %i.fz
  br i1 %i.ga, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i275.us.us, label %.lr.ph.i.i.i.preheader.i262.us.us

_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i275.us.us: ; preds = %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i260.us.us, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i259.us.us, %bb.ak
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fh, i64 72
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fh, i64 216
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !202
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [72 x i8], ptr %i.gb, i64 %i.ge ; 2 uses
  %.phi.trans.insert.i276.us.us = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %.pre.i277.us.us = load ptr, ptr %.phi.trans.insert.i276.us.us, align 8, !tbaa !29, !nonnull !82, !noundef !82
  br label %.lr.ph.i.i.i.preheader.i262.us.us

.lr.ph.i.i.i.preheader.i262.us.us:                ; preds = %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i275.us.us, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i260.us.us
  %.pn.i263.us.us = phi ptr [ %i.gf, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i275.us.us ], [ %i.fh, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i260.us.us ]
  %i.gg = phi ptr [ %.pre.i277.us.us, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i275.us.us ], [ %i.fs, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i260.us.us ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.pn.i263.us.us, i64 32 ; 2 uses
  br label %.lr.ph.i.i.i.i264.us.us

.lr.ph.i.i.i.i264.us.us:                          ; preds = %.lr.ph.i.i.i.i264.us.us, %.lr.ph.i.i.i.preheader.i262.us.us
  %.012.i.i.i.i265.us.us = phi ptr [ %.1.i.i.i.i270.us.us, %.lr.ph.i.i.i.i264.us.us ], [ %i.gg, %.lr.ph.i.i.i.preheader.i262.us.us ] ; 3 uses
  %.0811.i.i.i.i266.us.us = phi ptr [ %.19.i.i.i.i267.us.us, %.lr.ph.i.i.i.i264.us.us ], [ %i.gh, %.lr.ph.i.i.i.preheader.i262.us.us ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i265.us.us, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !174
  %i.gk = icmp ult ptr %i.gj, %1                  ; 2 uses
  %.19.i.i.i.i267.us.us = select i1 %i.gk, ptr %.0811.i.i.i.i266.us.us, ptr %.012.i.i.i.i265.us.us ; 4 uses
  %.1.in.v.i.i.i.i268.us.us = select i1 %i.gk, i64 24, i64 16
  %.1.in.i.i.i.i269.us.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i265.us.us, i64 %.1.in.v.i.i.i.i268.us.us
  %.1.i.i.i.i270.us.us = load ptr, ptr %.1.in.i.i.i.i269.us.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i271.us.us = icmp eq ptr %.1.i.i.i.i270.us.us, null
  br i1 %.not.i.i.i.i271.us.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i272.us.us, label %.lr.ph.i.i.i.i264.us.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i272.us.us: ; preds = %.lr.ph.i.i.i.i264.us.us
  %i.gl = icmp ne ptr %.19.i.i.i.i267.us.us, %i.gh
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i267.us.us, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !174
  %i.go = icmp uge ptr %1, %i.gn
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i267.us.us, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !125
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %.0191361.us.us
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !174 ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %i.fc, i64 %.0191361.us.us
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !77
  %i.gv = load i64, ptr %i.ex, align 8, !tbaa !77
  %i.gw = mul i64 %i.gv, %i.gu                    ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 %.5362.us.us
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0302.0, i64 %.0191361.us.us ; 3 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !77
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 64
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !77 ; 2 uses
  %i.hc = mul i64 %i.hb, %i.ei
  %i.hd = add i64 %i.hc, %i.gz
  %i.he = load i64, ptr %i.ef, align 8, !tbaa !77
  invoke void @ggml_backend_tensor_set_2d(ptr noundef nonnull %i.gs, ptr noundef %i.gx, i64 noundef %i.hd, i64 noundef %i.gw, i64 noundef %i.em, i64 noundef %i.hb, i64 noundef %i.he)
          to label %bb.al unwind label %.split373.us.split.us

bb.al:                                            ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i272.us.us
  %i.hf = add i64 %i.gw, %.5362.us.us             ; 3 uses
  %i.hg = load i64, ptr %i.gy, align 8, !tbaa !77
  %i.hh = add i64 %i.hg, %i.gw
  store i64 %i.hh, ptr %i.gy, align 8, !tbaa !77
  %i.hi = add nuw i64 %.0191361.us.us, 1          ; 2 uses
  %exitcond430.not = icmp eq i64 %i.hi, %umax429
  br i1 %exitcond430.not, label %._crit_edge364.us.us, label %bb.ai, !llvm.loop !626

._crit_edge364.us.us:                             ; preds = %bb.al
  %i.hj = add nuw nsw i64 %.0192366.us.us, 1      ; 2 uses
  %exitcond431.not = icmp eq i64 %i.hj, %i.fa
  br i1 %exitcond431.not, label %._crit_edge368.split.us.us, label %.preheader316.us.us, !llvm.loop !627

._crit_edge368.split.us.us:                       ; preds = %._crit_edge364.us.us, %.preheader317.us
  %.4.lcssa.us = phi i64 [ %.3377.us, %.preheader317.us ], [ %i.hf, %._crit_edge364.us.us ] ; 2 uses
  %i.hk = add nuw nsw i64 %.0193376.us, 1         ; 2 uses
  %exitcond432.not = icmp eq i64 %i.hk, %i.et
  br i1 %exitcond432.not, label %._crit_edge378.loopexit, label %.preheader317.us, !llvm.loop !628

.split373.us.split.us:                            ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i272.us.us
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.am:                                            ; preds = %.invoke501
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

._crit_edge378.loopexit:                          ; preds = %._crit_edge368.split.us.us
  %i.hn = mul i64 %.4.lcssa.us, %i.em
  br label %._crit_edge378

._crit_edge378:                                   ; preds = %.preheader317.lr.ph, %._crit_edge378.loopexit, %.preheader318
  %.3.lcssa = phi i64 [ 0, %.preheader318 ], [ %i.hn, %._crit_edge378.loopexit ], [ 0, %.preheader317.lr.ph ]
  %i.ho = icmp eq i64 %.3.lcssa, %4
  br i1 %i.ho, label %bb.ao, label %.invoke501

.split371.us.invoke:                              ; preds = %bb.aj, %bb.ai, %ggml_backend_buffer_is_meta.exit.i248.us.us
  %i.hp = phi i32 [ 476, %bb.ai ], [ 476, %ggml_backend_buffer_is_meta.exit.i248.us.us ], [ 478, %bb.aj ]
  %i.hq = phi ptr [ @.str.86, %bb.ai ], [ @.str.86, %ggml_backend_buffer_is_meta.exit.i248.us.us ], [ @.str.87, %bb.aj ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.hp, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.hq) #26
          to label %.split371.us.cont unwind label %bb.an

.split371.us.cont:                                ; preds = %.split371.us.invoke
  unreachable

bb.an:                                            ; preds = %.split371.us.invoke
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.invoke501:                                       ; preds = %bb.ah, %._crit_edge378
  %i.hs = phi i32 [ 1478, %._crit_edge378 ], [ 1463, %bb.ah ]
  %i.ht = phi ptr [ @.str.117, %._crit_edge378 ], [ @.str.115, %bb.ah ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.hs, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.ht) #26
          to label %.cont502 unwind label %bb.am

.cont502:                                         ; preds = %.invoke501
  unreachable

bb.ao:                                            ; preds = %._crit_edge378, %._crit_edge401
  %.not.i.i.i = icmp eq ptr %.sroa.0302.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hu = ptrtoint ptr %.sroa.0302.0 to i64
  %i.hv = sub i64 %.sroa.13.0, %i.hu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0302.0, i64 noundef %i.hv) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.aq:                                            ; preds = %bb.af, %bb.an, %bb.am, %bb.n, %bb.aa, %bb.ab, %bb.s, %bb.l
  %.pn232.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.ab ], [ %i.ak, %bb.l ], [ %i.ar, %bb.n ], [ %i.ba, %bb.s ], [ %i.dy, %bb.aa ], [ %i.hr, %bb.an ], [ %i.ek, %bb.af ], [ %i.hm, %bb.am ] ; 2 uses
  %.not.i.i.i282 = icmp eq ptr %.sroa.0302.0, null
  br i1 %.not.i.i.i282, label %_ZNSt6vectorImSaImEED2Ev.exit283, label %.thread

.thread:                                          ; preds = %.split396.us, %.split373.us.split.us, %bb.aq
  %.pn232.pn.pn.pn.pn311 = phi { ptr, i32 } [ %.pn232.pn.pn.pn.pn, %bb.aq ], [ %i.hl, %.split373.us.split.us ], [ %i.dv, %.split396.us ]
  %i.hw = ptrtoint ptr %.sroa.0302.0 to i64
  %i.hx = sub i64 %.sroa.13.0, %i.hw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0302.0, i64 noundef %i.hx) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit283

bb.ar:                                            ; preds = %bb.c
  switch i32 %i.o, label %bb.bt [
    i32 0, label %bb.as
    i32 1, label %bb.as
    i32 2, label %bb.as
    i32 10, label %.preheader319
    i32 11, label %bb.ba
  ]

.preheader319:                                    ; preds = %bb.ar
  %.not406 = icmp eq ptr %i.h, %i.i
  br i1 %.not406, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.lr.ph354

bb.as:                                            ; preds = %bb.ar, %bb.ar, %bb.ar
  %i.hy = zext nneg i32 %i.o to i64               ; 2 uses
  %i.hz = getelementptr [8 x i8], ptr %1, i64 %i.hy
  %i.ia = getelementptr i8, ptr %i.hz, i64 56
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !77 ; 6 uses
  %i.ic = urem i64 %3, %i.ib
  %i.id = udiv exact i64 %3, %i.ib                ; 2 uses
  %i.ie = icmp eq i64 %i.ic, 0
  br i1 %i.ie, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1488, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.33) #26
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.if = urem i64 %4, %i.ib
  %i.ig = icmp eq i64 %i.if, 0
  br i1 %i.ig, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1489, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.34) #26
  unreachable

bb.aw:                                            ; preds = %bb.au
  %.not407 = icmp eq ptr %i.h, %i.i
  br i1 %.not407, label %._crit_edge359.thread, label %.lr.ph358

.lr.ph358:                                        ; preds = %bb.aw
  %i.ih = add i64 %4, %3
  %i.ii = udiv i64 %i.ih, %i.ib
  %i.ij = sub nsw i64 %i.ii, %i.id
  br label %bb.ax

._crit_edge359:                                   ; preds = %bb.az
  %i.ik = icmp eq i64 %.1190, %i.ib
  br i1 %i.ik, label %_ZNSt6vectorImSaImEED2Ev.exit, label %._crit_edge359.thread

bb.ax:                                            ; preds = %.lr.ph358, %bb.az
  %.0188356 = phi i64 [ 0, %.lr.ph358 ], [ %i.it, %bb.az ] ; 2 uses
  %.0189355 = phi i64 [ 0, %.lr.ph358 ], [ %.1190, %bb.az ] ; 3 uses
  %i.il = tail call fastcc noundef ptr @_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm(ptr noundef nonnull %1, i64 noundef %.0188356) ; 2 uses
  %i.im = getelementptr [8 x i8], ptr %i.il, i64 %i.hy
  %i.in = getelementptr i8, ptr %i.im, i64 56
  %i.io = load i64, ptr %i.in, align 8, !tbaa !77 ; 5 uses
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iq = mul i64 %i.io, %i.id
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 %.0189355
  tail call void @ggml_backend_tensor_set_2d(ptr noundef nonnull %i.il, ptr noundef %i.ir, i64 noundef %i.iq, i64 noundef %i.io, i64 noundef %i.ij, i64 noundef %i.io, i64 noundef %i.ib)
  %i.is = add i64 %i.io, %.0189355
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.1190 = phi i64 [ %i.is, %bb.ay ], [ %.0189355, %bb.ax ] ; 2 uses
  %i.it = add nuw i64 %.0188356, 1                ; 2 uses
  %exitcond428.not = icmp eq i64 %i.it, %i.m
  br i1 %exitcond428.not, label %._crit_edge359, label %bb.ax, !llvm.loop !629

._crit_edge359.thread:                            ; preds = %bb.aw, %._crit_edge359
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1503, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.35) #26
  unreachable

.lr.ph354:                                        ; preds = %.preheader319, %.lr.ph354
  %.0185353 = phi i64 [ %i.iv, %.lr.ph354 ], [ 0, %.preheader319 ] ; 2 uses
  %i.iu = tail call fastcc noundef ptr @_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm(ptr noundef nonnull %1, i64 noundef %.0185353)
  tail call void @ggml_backend_tensor_set(ptr noundef %i.iu, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  %i.iv = add nuw i64 %.0185353, 1                ; 2 uses
  %exitcond426.not = icmp eq i64 %i.iv, %i.m
  br i1 %exitcond426.not, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.lr.ph354, !llvm.loop !630

bb.ba:                                            ; preds = %bb.ar
  %i.iw = load i32, ptr %1, align 8, !tbaa !212
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1512, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.118) #26
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.iy = and i64 %3, 3
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1513, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.119) #26
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ja = and i64 %4, 3
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1514, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.120) #26
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.jc = lshr exact i64 %4, 2                    ; 5 uses
  %.not403 = icmp eq ptr %i.h, %i.i               ; 3 uses
  br i1 %.not403, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bg
  %i.jd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.m, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.jk, %vector.body ]
  %vec.phi506 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.jl, %vector.body ]
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %index ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load = load <2 x i64>, ptr %i.je, align 8, !tbaa !77
  %wide.load507 = load <2 x i64>, ptr %i.jf, align 8, !tbaa !77
  %i.jg = icmp ne <2 x i64> %wide.load, zeroinitializer
  %i.jh = icmp ne <2 x i64> %wide.load507, zeroinitializer
  %i.ji = zext <2 x i1> %i.jg to <2 x i64>
  %i.jj = zext <2 x i1> %i.jh to <2 x i64>
  %i.jk = add <2 x i64> %vec.phi, %i.ji           ; 2 uses
  %i.jl = add <2 x i64> %vec.phi506, %i.jj        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jm = icmp eq i64 %index.next, %n.vec
  br i1 %i.jm, label %middle.block, label %vector.body, !llvm.loop !631

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.jl, %i.jk
  %i.jn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.0183342.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.0184341.ph = phi i64 [ 0, %.lr.ph ], [ %i.jn, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.bg
  %.0184.lcssa = phi i64 [ 0, %bb.bg ], [ %i.jn, %middle.block ], [ %i.jy, %scalar.ph ] ; 2 uses
  %.not = icmp eq i64 %.0184.lcssa, 0             ; 4 uses
  %spec.select = select i1 %.not, i64 %i.m, i64 %.0184.lcssa
  %i.jo = icmp ugt i64 %4, 9223372036854775804
  br i1 %i.jo, label %.noexc285, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc285:                                        ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #26
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge
  %.not.i.i.i.i284 = icmp eq i64 %4, 0
  br i1 %.not.i.i.i.i284, label %._crit_edge345.thread, label %.noexc286

.noexc286:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.jp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #28 ; 8 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %4 ; 3 uses
  store float 0.000000e+00, ptr %i.jp, align 4, !tbaa !258
  %i.jr = add nsw i64 %i.jc, -1                   ; 2 uses
  %i.js = icmp eq i64 %i.jr, 0
  br i1 %i.js, label %.lr.ph344, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc286
  %i.jt = getelementptr i8, ptr %i.jp, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.jr, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jt, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !258
  br label %.lr.ph344

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0183342 = phi i64 [ %i.jz, %scalar.ph ], [ %.0183342.ph, %scalar.ph.preheader ] ; 2 uses
  %.0184341 = phi i64 [ %i.jy, %scalar.ph ], [ %.0184341.ph, %scalar.ph.preheader ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.0183342
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !77
  %i.jw = icmp ne i64 %i.jv, 0
  %i.jx = zext i1 %i.jw to i64
  %i.jy = add i64 %.0184341, %i.jx                ; 2 uses
  %i.jz = add nuw i64 %.0183342, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.jz, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !632

.lr.ph344:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc286
  %i.ka = uitofp i64 %spec.select to float        ; 2 uses
  %min.iters.check509 = icmp ult i64 %4, 16
  br i1 %min.iters.check509, label %scalar.ph508.preheader, label %vector.ph510

vector.ph510:                                     ; preds = %.lr.ph344
  %n.vec511 = and i64 %i.jc, 2305843009213693948  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ka, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body512

vector.body512:                                   ; preds = %vector.body512, %vector.ph510
  %index513 = phi i64 [ 0, %vector.ph510 ], [ %index.next515, %vector.body512 ] ; 3 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index513
  %wide.load514 = load <4 x float>, ptr %i.kb, align 4, !tbaa !258
  %i.kc = fdiv <4 x float> %wide.load514, %broadcast.splat
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %index513
  store <4 x float> %i.kc, ptr %i.kd, align 4, !tbaa !258
  %index.next515 = add nuw i64 %index513, 4       ; 2 uses
  %i.ke = icmp eq i64 %index.next515, %n.vec511
  br i1 %i.ke, label %middle.block516, label %vector.body512, !llvm.loop !633

middle.block516:                                  ; preds = %vector.body512
  %cmp.n517 = icmp eq i64 %i.jc, %n.vec511
end_hunk_3
begin_hunk_4_@_ZL35ggml_backend_meta_buffer_set_tensorP19ggml_backend_bufferP11ggml_tensorPKvmm:bb.a
  %i.kw = ptrtoint ptr %.sroa.11.0466471489 to i64
  %i.kx = ptrtoint ptr %.sroa.0296.0464474487 to i64
  %i.ky = sub i64 %i.kw, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0296.0464474487, i64 noundef %i.ky) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

.lr.ph348.split:                                  ; preds = %.lr.ph348.split.preheader, %bb.bp
  %.0346 = phi i64 [ %i.le, %bb.bp ], [ 0, %.lr.ph348.split.preheader ] ; 3 uses
  %i.kz = invoke fastcc noundef ptr @_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm(ptr noundef nonnull %1, i64 noundef %.0346)
          to label %bb.bo unwind label %.split

bb.bo:                                            ; preds = %.lr.ph348.split
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %.0346
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !77
  %i.lc = icmp eq i64 %i.lb, 0
  %i.ld = load ptr, ptr %6, align 8
  %spec.select313 = select i1 %i.lc, ptr %i.ld, ptr %.sroa.0296.0464474486493
  invoke void @ggml_backend_tensor_set(ptr noundef %i.kz, ptr noundef %spec.select313, i64 noundef %3, i64 noundef %4)
          to label %bb.bp unwind label %.split351

bb.bp:                                            ; preds = %bb.bo
  %i.le = add nuw i64 %.0346, 1                   ; 2 uses
  %exitcond422.not = icmp eq i64 %i.le, %i.m
  br i1 %exitcond422.not, label %._crit_edge349, label %.lr.ph348.split, !llvm.loop !635

.split:                                           ; preds = %.lr.ph348.split
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.split351:                                        ; preds = %bb.bo
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %.split351, %.split351.us, %.split, %.split.us, %bb.bi
  %.sroa.0296.0464472 = phi ptr [ %i.jp, %bb.bi ], [ %.sroa.0296.0464474, %.split.us ], [ %.sroa.0296.0464474486493, %.split ], [ %.sroa.0296.0464474486493, %.split351 ], [ %.sroa.0296.0464474, %.split351.us ] ; 3 uses
  %.sroa.11.0466469 = phi ptr [ %i.jq, %bb.bi ], [ %.sroa.11.0466471, %.split.us ], [ %.sroa.11.0466471488492, %.split ], [ %.sroa.11.0466471488492, %.split351 ], [ %.sroa.11.0466471, %.split351.us ]
  %.pn.pn = phi { ptr, i32 } [ %i.kk, %bb.bi ], [ %i.ko, %.split.us ], [ %i.lf, %.split ], [ %i.lg, %.split351 ], [ %i.kp, %.split351.us ] ; 2 uses
  %i.lh = load ptr, ptr %6, align 8, !tbaa !261   ; 3 uses
  %.not.i.i.i292 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i292, label %_ZNSt6vectorIfSaIfEED2Ev.exit293, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.li = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !262
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.lh to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.lh, i64 noundef %i.lm) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit293

_ZNSt6vectorIfSaIfEED2Ev.exit293:                 ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.not.i.i.i294 = icmp eq ptr %.sroa.0296.0464472, null
  br i1 %.not.i.i.i294, label %_ZNSt6vectorImSaImEED2Ev.exit283, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit293
  %i.ln = ptrtoint ptr %.sroa.11.0466469 to i64
  %i.lo = ptrtoint ptr %.sroa.0296.0464472 to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0296.0464472, i64 noundef %i.lp) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit283

bb.bt:                                            ; preds = %bb.ar
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1539, ptr noundef nonnull @.str.9) #26
  unreachable

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.lr.ph354, %.preheader319, %bb.bn, %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.ap, %bb.ao, %._crit_edge359
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

_ZNSt6vectorImSaImEED2Ev.exit283:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit293, %bb.bs, %bb.aq, %.thread
  %.pn232.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn232.pn.pn.pn.pn311, %.thread ], [ %.pn.pn, %bb.bs ], [ %.pn232.pn.pn.pn.pn, %bb.aq ], [ %.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit293 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn232.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL35ggml_backend_meta_buffer_get_tensorP19ggml_backend_bufferPK11ggml_tensorPvmm(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.ggml_backend_meta_split_state, align 8 ; 9 uses
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %ggml_backend_buffer_is_meta.exit.thread.i, label %ggml_backend_buffer_is_meta.exit.i

ggml_backend_buffer_is_meta.exit.i:               ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !182
  %i.b = icmp eq ptr %i.a, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.b, label %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit, label %ggml_backend_buffer_is_meta.exit.thread.i

ggml_backend_buffer_is_meta.exit.thread.i:        ; preds = %ggml_backend_buffer_is_meta.exit.i, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 463, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.43) #26
  unreachable

_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit: ; preds = %ggml_backend_buffer_is_meta.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151  ; 5 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !150  ; 5 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call fastcc void @_ZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorb(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull %1, i1 noundef zeroext false), !inline_history !7
  %i.m = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %1)
  %i.n = load i32, ptr %5, align 8                ; 5 uses
  %i.o = icmp eq i32 %i.n, 10
  %or.cond = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1547, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.105) #26
  unreachable

bb.c:                                             ; preds = %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 2120
  %i.q = load i32, ptr %i.p, align 8, !tbaa !160  ; 5 uses
  %i.r = icmp ne i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 2056 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp ne i32 %i.t, 1
  %or.cond6 = select i1 %i.r, i1 true, i1 %i.u
  br i1 %or.cond6, label %bb.d, label %bb.ar

bb.d:                                             ; preds = %bb.c
  %or.cond9 = icmp ult i32 %i.n, 4
  br i1 %or.cond9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1550, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.106) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1551, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.107) #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !77
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1552, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.108) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.y = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.y, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #26
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.j
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %.noexc185

.noexc185:                                        ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #28 ; 3 uses
  %i.aa = add i64 %i.i, -8
  %i.ab = sub i64 %i.aa, %i.j
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.z, i8 0, i64 %i.ad, i1 false), !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.k
  %i.af = ptrtoint ptr %i.ae to i64
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %.noexc185, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc185 ] ; 2 uses
  %.sroa.0229.0 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.z, %.noexc185 ] ; 8 uses
  switch i32 %i.n, label %.invoke [
    i32 0, label %bb.k
    i32 1, label %bb.ae
  ]

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !77
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.m, label %.invoke

bb.l:                                             ; preds = %.invoke
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.m:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !77 ; 4 uses
  %i.an = urem i64 %3, %i.am
  %i.ao = udiv exact i64 %3, %i.am                ; 2 uses
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %bb.o, label %.invoke340

bb.n:                                             ; preds = %.invoke340
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  %i.ar = urem i64 %4, %i.am
  %i.as = udiv exact i64 %4, %i.am                ; 3 uses
  %i.at = icmp eq i64 %i.ar, 0
  br i1 %i.at, label %bb.p, label %.invoke340

.invoke340:                                       ; preds = %bb.m, %bb.o
  %i.au = phi i32 [ 1561, %bb.o ], [ 1560, %bb.m ]
  %i.av = phi ptr [ @.str.111, %bb.o ], [ @.str.110, %bb.m ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.au, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.av) #26
          to label %.cont341 unwind label %bb.n

.cont341:                                         ; preds = %.invoke340
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.aw = add nsw i64 %i.as, %i.ao
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !77
  %.not177 = icmp sgt i64 %i.aw, %i.ay
  br i1 %.not177, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1564, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.112) #26
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.t:                                             ; preds = %bb.p
  %i.ba = load i32, ptr %1, align 8, !tbaa !212
  %i.bb = invoke i64 @ggml_blck_size(i32 noundef %i.ba)
          to label %.preheader241 unwind label %bb.aa ; 2 uses

.preheader241:                                    ; preds = %bb.t
  %i.bc = zext i32 %i.q to i64
  %.not310 = icmp eq i32 %i.q, 0
  br i1 %.not310, label %._crit_edge302, label %.preheader240.lr.ph

.preheader240.lr.ph:                              ; preds = %.preheader241
  %i.bd = icmp ne ptr %i.g, %i.h
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fr305 = freeze i1 %i.bd
  br i1 %.fr305, label %.preheader240.us.preheader, label %._crit_edge302

.preheader240.us.preheader:                       ; preds = %.preheader240.lr.ph
  %umax320 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  br label %.preheader240.us

.preheader240.us:                                 ; preds = %.preheader240.us.preheader, %._crit_edge292.split.us.us
  %.0301.us = phi i64 [ %.1.lcssa.us, %._crit_edge292.split.us.us ], [ 0, %.preheader240.us.preheader ] ; 2 uses
  %.0153300.us = phi i64 [ %i.dv, %._crit_edge292.split.us.us ], [ 0, %.preheader240.us.preheader ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0153300.us
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !161 ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %.not312 = icmp eq i32 %i.bh, 0
  br i1 %.not312, label %._crit_edge292.split.us.us, label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader240.us
  %i.bj = mul i64 %.0153300.us, %i.l
  %i.bk = getelementptr [8 x i8], ptr %i.bf, i64 %i.bj
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge288.us.us, %.preheader.lr.ph.us
  %.1291.us.us = phi i64 [ %.0301.us, %.preheader.lr.ph.us ], [ %i.dq, %._crit_edge288.us.us ]
  %.0152290.us.us = phi i64 [ 0, %.preheader.lr.ph.us ], [ %i.du, %._crit_edge288.us.us ]
  br label %bb.u

bb.u:                                             ; preds = %bb.z, %.preheader.us.us
  %.2286.us.us = phi i64 [ %.1291.us.us, %.preheader.us.us ], [ %i.dq, %bb.z ] ; 2 uses
  %.0151285.us.us = phi i64 [ 0, %.preheader.us.us ], [ %i.dt, %bb.z ] ; 5 uses
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !178 ; 3 uses
  %.not.i.i186.us.us = icmp eq ptr %i.bl, null
  br i1 %.not.i.i186.us.us, label %.split.us294.invoke, label %ggml_backend_buffer_is_meta.exit.i187.us.us

ggml_backend_buffer_is_meta.exit.i187.us.us:      ; preds = %bb.u
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !182
  %i.bn = icmp eq ptr %i.bm, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.bn, label %bb.v, label %.split.us294.invoke

bb.v:                                             ; preds = %ggml_backend_buffer_is_meta.exit.i187.us.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !184 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 224
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 232
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !151
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !150
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = icmp ult i64 %.0151285.us.us, %i.bx
  br i1 %i.by, label %bb.w, label %.split.us294.invoke

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !29 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %.not10.i.i.i.i.i.us.us = icmp eq ptr %i.ca, null
  br i1 %.not10.i.i.i.i.i.us.us, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us.us, label %.lr.ph.i.i.i.i.i.us.us

.lr.ph.i.i.i.i.i.us.us:                           ; preds = %bb.w, %.lr.ph.i.i.i.i.i.us.us
  %.012.i.i.i.i.i.us.us = phi ptr [ %.1.i.i.i.i.i.us.us, %.lr.ph.i.i.i.i.i.us.us ], [ %i.ca, %bb.w ] ; 3 uses
  %.0811.i.i.i.i.i.us.us = phi ptr [ %.19.i.i.i.i.i.us.us, %.lr.ph.i.i.i.i.i.us.us ], [ %i.cb, %bb.w ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us.us, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !174
  %i.ce = icmp ult ptr %i.cd, %1                  ; 2 uses
  %.19.i.i.i.i.i.us.us = select i1 %i.ce, ptr %.0811.i.i.i.i.i.us.us, ptr %.012.i.i.i.i.i.us.us ; 3 uses
  %.1.in.v.i.i.i.i.i.us.us = select i1 %i.ce, i64 24, i64 16
  %.1.in.i.i.i.i.i.us.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us.us, i64 %.1.in.v.i.i.i.i.i.us.us
  %.1.i.i.i.i.i.us.us = load ptr, ptr %.1.in.i.i.i.i.i.us.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i.i.us.us = icmp eq ptr %.1.i.i.i.i.i.us.us, null
  br i1 %.not.i.i.i.i.i.us.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us.us, label %.lr.ph.i.i.i.i.i.us.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us.us: ; preds = %.lr.ph.i.i.i.i.i.us.us
  %i.cf = icmp eq ptr %.19.i.i.i.i.i.us.us, %i.cb
  br i1 %i.cf, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us.us, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us.us

_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us.us: ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us.us
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.us.us, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !174
  %i.ci = icmp ult ptr %1, %i.ch
  br i1 %i.ci, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us.us, label %.lr.ph.i.i.i.preheader.i.us.us

_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us.us: ; preds = %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us.us, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us.us, %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 216
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !202
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [72 x i8], ptr %i.cj, i64 %i.cm ; 2 uses
  %.phi.trans.insert.i.us.us = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %.pre.i.us.us = load ptr, ptr %.phi.trans.insert.i.us.us, align 8, !tbaa !29 ; 2 uses
  %.not10.i.i.i.i.us.us = icmp eq ptr %.pre.i.us.us, null
  br i1 %.not10.i.i.i.i.us.us, label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us.us, label %.lr.ph.i.i.i.preheader.i.us.us

.lr.ph.i.i.i.preheader.i.us.us:                   ; preds = %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us.us, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us.us
  %.pn.i.us.us = phi ptr [ %i.cn, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us.us ], [ %i.bp, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us.us ]
  %i.co = phi ptr [ %.pre.i.us.us, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us.us ], [ %i.ca, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us.us ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn.i.us.us, i64 32 ; 2 uses
  br label %.lr.ph.i.i.i.i.us.us

.lr.ph.i.i.i.i.us.us:                             ; preds = %.lr.ph.i.i.i.i.us.us, %.lr.ph.i.i.i.preheader.i.us.us
  %.012.i.i.i.i.us.us = phi ptr [ %.1.i.i.i.i.us.us, %.lr.ph.i.i.i.i.us.us ], [ %i.co, %.lr.ph.i.i.i.preheader.i.us.us ] ; 3 uses
  %.0811.i.i.i.i.us.us = phi ptr [ %.19.i.i.i.i.us.us, %.lr.ph.i.i.i.i.us.us ], [ %i.cp, %.lr.ph.i.i.i.preheader.i.us.us ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.us.us, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !174
  %i.cs = icmp ult ptr %i.cr, %1                  ; 2 uses
  %.19.i.i.i.i.us.us = select i1 %i.cs, ptr %.0811.i.i.i.i.us.us, ptr %.012.i.i.i.i.us.us ; 4 uses
  %.1.in.v.i.i.i.i.us.us = select i1 %i.cs, i64 24, i64 16
  %.1.in.i.i.i.i.us.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.us.us, i64 %.1.in.v.i.i.i.i.us.us
  %.1.i.i.i.i.us.us = load ptr, ptr %.1.in.i.i.i.i.us.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i189.us.us = icmp eq ptr %.1.i.i.i.i.us.us, null
  br i1 %.not.i.i.i.i189.us.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us.us, label %.lr.ph.i.i.i.i.us.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us.us: ; preds = %.lr.ph.i.i.i.i.us.us
  %i.ct = icmp eq ptr %.19.i.i.i.i.us.us, %i.cp
  br i1 %i.ct, label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us.us, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us.us

_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us.us: ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us.us
  %i.cu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.us.us, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !174
  %i.cw = icmp ult ptr %1, %i.cv
  br i1 %i.cw, label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us.us, label %bb.x

bb.x:                                             ; preds = %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us.us
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.us.us, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !125
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.0151285.us.us
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !174
  br label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us.us

_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us.us: ; preds = %bb.x, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us.us, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us.us, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us.us
  %.0.i.us.us = phi ptr [ %i.da, %bb.x ], [ null, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us.us ], [ null, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us.us ], [ null, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us.us ] ; 2 uses
  %i.db = getelementptr [8 x i8], ptr %i.bk, i64 %.0151285.us.us
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !77 ; 2 uses
  %i.dd = srem i64 %i.dc, %i.bb
  %i.de = sdiv exact i64 %i.dc, %i.bb
  %i.df = icmp eq i64 %i.dd, 0
  br i1 %i.df, label %bb.y, label %.split.us294.invoke

bb.y:                                             ; preds = %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us.us
  %i.dg = load i64, ptr %i.ak, align 8, !tbaa !77
  %i.dh = mul i64 %i.dg, %i.de                    ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %.2286.us.us
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0229.0, i64 %.0151285.us.us ; 3 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !77
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.us.us, i64 56
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !77 ; 2 uses
  %i.dn = mul i64 %i.dm, %i.ao
  %i.do = add i64 %i.dn, %i.dk
  %i.dp = load i64, ptr %i.al, align 8, !tbaa !77
  invoke void @ggml_backend_tensor_get_2d(ptr noundef nonnull %.0.i.us.us, ptr noundef %i.di, i64 noundef %i.do, i64 noundef %i.dh, i64 noundef %i.as, i64 noundef %i.dm, i64 noundef %i.dp)
          to label %bb.z unwind label %.split298.us.split.us

bb.z:                                             ; preds = %bb.y
  %i.dq = add i64 %i.dh, %.2286.us.us             ; 3 uses
  %i.dr = load i64, ptr %i.dj, align 8, !tbaa !77
  %i.ds = add i64 %i.dr, %i.dh
  store i64 %i.ds, ptr %i.dj, align 8, !tbaa !77
  %i.dt = add nuw i64 %.0151285.us.us, 1          ; 2 uses
  %exitcond321.not = icmp eq i64 %i.dt, %umax320
  br i1 %exitcond321.not, label %._crit_edge288.us.us, label %bb.u, !llvm.loop !636

._crit_edge288.us.us:                             ; preds = %bb.z
  %i.du = add nuw nsw i64 %.0152290.us.us, 1      ; 2 uses
  %exitcond322.not = icmp eq i64 %i.du, %i.bi
  br i1 %exitcond322.not, label %._crit_edge292.split.us.us, label %.preheader.us.us, !llvm.loop !637

._crit_edge292.split.us.us:                       ; preds = %._crit_edge288.us.us, %.preheader240.us
  %.1.lcssa.us = phi i64 [ %.0301.us, %.preheader240.us ], [ %i.dq, %._crit_edge288.us.us ] ; 2 uses
  %i.dv = add nuw nsw i64 %.0153300.us, 1         ; 2 uses
  %exitcond323.not = icmp eq i64 %i.dv, %i.bc
  br i1 %exitcond323.not, label %._crit_edge302.loopexit, label %.preheader240.us, !llvm.loop !638

.split298.us.split.us:                            ; preds = %bb.y
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.thread

._crit_edge302.loopexit:                          ; preds = %._crit_edge292.split.us.us
  %i.dx = mul i64 %.1.lcssa.us, %i.as
  br label %._crit_edge302

._crit_edge302:                                   ; preds = %.preheader240.lr.ph, %._crit_edge302.loopexit, %.preheader241
  %.0.lcssa = phi i64 [ 0, %.preheader241 ], [ %i.dx, %._crit_edge302.loopexit ], [ 0, %.preheader240.lr.ph ]
  %i.dy = icmp eq i64 %.0.lcssa, %4
  br i1 %i.dy, label %bb.ao, label %bb.ac

bb.aa:                                            ; preds = %bb.ac, %bb.t
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.split.us294.invoke:                              ; preds = %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us.us, %bb.v, %bb.u, %ggml_backend_buffer_is_meta.exit.i187.us.us
  %i.ea = phi i32 [ 476, %bb.u ], [ 478, %bb.v ], [ 476, %ggml_backend_buffer_is_meta.exit.i187.us.us ], [ 1571, %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us.us ]
  %i.eb = phi ptr [ @.str.86, %bb.u ], [ @.str.87, %bb.v ], [ @.str.86, %ggml_backend_buffer_is_meta.exit.i187.us.us ], [ @.str.113, %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us.us ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.ea, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.eb) #26
          to label %.split.us294.cont unwind label %bb.ab

.split.us294.cont:                                ; preds = %.split.us294.invoke
  unreachable

bb.ab:                                            ; preds = %.split.us294.invoke
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ac:                                            ; preds = %._crit_edge302
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1581, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.117) #26
          to label %bb.ad unwind label %bb.aa

bb.ad:                                            ; preds = %bb.ac
  unreachable

.invoke:                                          ; preds = %bb.k, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ed = phi i32 [ 1584, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ 1557, %bb.k ]
  %i.ee = phi ptr [ @.str.114, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ @.str.109, %bb.k ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.ed, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.ee) #26
          to label %.cont unwind label %bb.l

.cont:                                            ; preds = %.invoke
  unreachable

bb.ae:                                            ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !77 ; 4 uses
  %i.eh = urem i64 %3, %i.eg
  %i.ei = udiv exact i64 %3, %i.eg                ; 2 uses
  %i.ej = icmp eq i64 %i.eh, 0
  br i1 %i.ej, label %bb.ag, label %.invoke342

bb.af:                                            ; preds = %.invoke342
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ag:                                            ; preds = %bb.ae
  %i.el = urem i64 %4, %i.eg
  %i.em = udiv exact i64 %4, %i.eg                ; 3 uses
  %i.en = icmp eq i64 %i.el, 0
  br i1 %i.en, label %bb.ah, label %.invoke342

.invoke342:                                       ; preds = %bb.ae, %bb.ag
  %i.eo = phi i32 [ 1588, %bb.ag ], [ 1587, %bb.ae ]
  %i.ep = phi ptr [ @.str.111, %bb.ag ], [ @.str.110, %bb.ae ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.eo, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.ep) #26
          to label %.cont343 unwind label %bb.af

.cont343:                                         ; preds = %.invoke342
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.eq = add nsw i64 %i.em, %i.ei
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.es = load i64, ptr %i.er, align 8, !tbaa !77
  %.not173 = icmp sgt i64 %i.eq, %i.es
  br i1 %.not173, label %.invoke344, label %.preheader244

.preheader244:                                    ; preds = %bb.ah
  %i.et = zext i32 %i.q to i64
  %.not307 = icmp eq i32 %i.q, 0
  br i1 %.not307, label %._crit_edge282, label %.preheader243.lr.ph

.preheader243.lr.ph:                              ; preds = %.preheader244
  %i.eu = icmp ne ptr %i.g, %i.h
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.fr = freeze i1 %i.eu
  br i1 %.fr, label %.preheader243.us.preheader, label %._crit_edge282

.preheader243.us.preheader:                       ; preds = %.preheader243.lr.ph
  %umax316 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  br label %.preheader243.us

.preheader243.us:                                 ; preds = %.preheader243.us.preheader, %._crit_edge275.split.us.us
  %.3281.us = phi i64 [ %.4.lcssa.us, %._crit_edge275.split.us.us ], [ 0, %.preheader243.us.preheader ] ; 2 uses
  %.0150280.us = phi i64 [ %i.hk, %._crit_edge275.split.us.us ], [ 0, %.preheader243.us.preheader ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0150280.us
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !161 ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %.not309 = icmp eq i32 %i.ez, 0
  br i1 %.not309, label %._crit_edge275.split.us.us, label %.preheader242.lr.ph.us

.preheader242.lr.ph.us:                           ; preds = %.preheader243.us
  %i.fb = mul i64 %.0150280.us, %i.l
  %i.fc = getelementptr [8 x i8], ptr %i.ew, i64 %i.fb
  br label %.preheader242.us.us

.preheader242.us.us:                              ; preds = %._crit_edge271.us.us, %.preheader242.lr.ph.us
  %.4274.us.us = phi i64 [ %.3281.us, %.preheader242.lr.ph.us ], [ %i.hf, %._crit_edge271.us.us ]
  %.0149273.us.us = phi i64 [ 0, %.preheader242.lr.ph.us ], [ %i.hj, %._crit_edge271.us.us ]
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %.preheader242.us.us
  %.5269.us.us = phi i64 [ %.4274.us.us, %.preheader242.us.us ], [ %i.hf, %bb.al ] ; 2 uses
  %.0148268.us.us = phi i64 [ 0, %.preheader242.us.us ], [ %i.hi, %bb.al ] ; 5 uses
  %i.fd = load ptr, ptr %i.ev, align 8, !tbaa !178 ; 3 uses
  %.not.i.i192.us.us = icmp eq ptr %i.fd, null
  br i1 %.not.i.i192.us.us, label %.split.us.invoke, label %ggml_backend_buffer_is_meta.exit.i193.us.us

ggml_backend_buffer_is_meta.exit.i193.us.us:      ; preds = %bb.ai
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !182
  %i.ff = icmp eq ptr %i.fe, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.ff, label %bb.aj, label %.split.us.invoke

bb.aj:                                            ; preds = %ggml_backend_buffer_is_meta.exit.i193.us.us
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 96
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !184 ; 7 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 224
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 232
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !151
  %i.fl = load ptr, ptr %i.fi, align 8, !tbaa !150
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 3
  %i.fq = icmp ult i64 %.0148268.us.us, %i.fp
  br i1 %i.fq, label %bb.ak, label %.split.us.invoke

bb.ak:                                            ; preds = %bb.aj
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !29 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fh, i64 32 ; 2 uses
  %.not10.i.i.i.i.i195.us.us = icmp eq ptr %i.fs, null
  br i1 %.not10.i.i.i.i.i195.us.us, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i220.us.us, label %.lr.ph.i.i.i.i.i196.us.us

.lr.ph.i.i.i.i.i196.us.us:                        ; preds = %bb.ak, %.lr.ph.i.i.i.i.i196.us.us
  %.012.i.i.i.i.i197.us.us = phi ptr [ %.1.i.i.i.i.i202.us.us, %.lr.ph.i.i.i.i.i196.us.us ], [ %i.fs, %bb.ak ] ; 3 uses
  %.0811.i.i.i.i.i198.us.us = phi ptr [ %.19.i.i.i.i.i199.us.us, %.lr.ph.i.i.i.i.i196.us.us ], [ %i.ft, %bb.ak ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i197.us.us, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !174
  %i.fw = icmp ult ptr %i.fv, %1                  ; 2 uses
  %.19.i.i.i.i.i199.us.us = select i1 %i.fw, ptr %.0811.i.i.i.i.i198.us.us, ptr %.012.i.i.i.i.i197.us.us ; 3 uses
  %.1.in.v.i.i.i.i.i200.us.us = select i1 %i.fw, i64 24, i64 16
  %.1.in.i.i.i.i.i201.us.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i197.us.us, i64 %.1.in.v.i.i.i.i.i200.us.us
  %.1.i.i.i.i.i202.us.us = load ptr, ptr %.1.in.i.i.i.i.i201.us.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i.i203.us.us = icmp eq ptr %.1.i.i.i.i.i202.us.us, null
  br i1 %.not.i.i.i.i.i203.us.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i204.us.us, label %.lr.ph.i.i.i.i.i196.us.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i204.us.us: ; preds = %.lr.ph.i.i.i.i.i196.us.us
  %i.fx = icmp eq ptr %.19.i.i.i.i.i199.us.us, %i.ft
  br i1 %i.fx, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i220.us.us, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i205.us.us

_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i205.us.us: ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i204.us.us
  %i.fy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i199.us.us, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !174
  %i.ga = icmp ult ptr %1, %i.fz
  br i1 %i.ga, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i220.us.us, label %.lr.ph.i.i.i.preheader.i207.us.us

_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i220.us.us: ; preds = %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i205.us.us, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i204.us.us, %bb.ak
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fh, i64 72
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fh, i64 216
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !202
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [72 x i8], ptr %i.gb, i64 %i.ge ; 2 uses
  %.phi.trans.insert.i221.us.us = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %.pre.i222.us.us = load ptr, ptr %.phi.trans.insert.i221.us.us, align 8, !tbaa !29, !nonnull !82, !noundef !82
  br label %.lr.ph.i.i.i.preheader.i207.us.us

.lr.ph.i.i.i.preheader.i207.us.us:                ; preds = %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i220.us.us, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i205.us.us
  %.pn.i208.us.us = phi ptr [ %i.gf, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i220.us.us ], [ %i.fh, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i205.us.us ]
  %i.gg = phi ptr [ %.pre.i222.us.us, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i220.us.us ], [ %i.fs, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i205.us.us ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.pn.i208.us.us, i64 32 ; 2 uses
  br label %.lr.ph.i.i.i.i209.us.us

.lr.ph.i.i.i.i209.us.us:                          ; preds = %.lr.ph.i.i.i.i209.us.us, %.lr.ph.i.i.i.preheader.i207.us.us
  %.012.i.i.i.i210.us.us = phi ptr [ %.1.i.i.i.i215.us.us, %.lr.ph.i.i.i.i209.us.us ], [ %i.gg, %.lr.ph.i.i.i.preheader.i207.us.us ] ; 3 uses
  %.0811.i.i.i.i211.us.us = phi ptr [ %.19.i.i.i.i212.us.us, %.lr.ph.i.i.i.i209.us.us ], [ %i.gh, %.lr.ph.i.i.i.preheader.i207.us.us ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i210.us.us, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !174
  %i.gk = icmp ult ptr %i.gj, %1                  ; 2 uses
  %.19.i.i.i.i212.us.us = select i1 %i.gk, ptr %.0811.i.i.i.i211.us.us, ptr %.012.i.i.i.i210.us.us ; 4 uses
  %.1.in.v.i.i.i.i213.us.us = select i1 %i.gk, i64 24, i64 16
  %.1.in.i.i.i.i214.us.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i210.us.us, i64 %.1.in.v.i.i.i.i213.us.us
  %.1.i.i.i.i215.us.us = load ptr, ptr %.1.in.i.i.i.i214.us.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i216.us.us = icmp eq ptr %.1.i.i.i.i215.us.us, null
  br i1 %.not.i.i.i.i216.us.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i217.us.us, label %.lr.ph.i.i.i.i209.us.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i217.us.us: ; preds = %.lr.ph.i.i.i.i209.us.us
  %i.gl = icmp ne ptr %.19.i.i.i.i212.us.us, %i.gh
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i212.us.us, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !174
  %i.go = icmp uge ptr %1, %i.gn
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i212.us.us, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !125
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %.0148268.us.us
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !174 ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %i.fc, i64 %.0148268.us.us
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !77
  %i.gv = load i64, ptr %i.ex, align 8, !tbaa !77
  %i.gw = mul i64 %i.gv, %i.gu                    ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 %.5269.us.us
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0229.0, i64 %.0148268.us.us ; 3 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !77
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 64
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !77 ; 2 uses
  %i.hc = mul i64 %i.hb, %i.ei
  %i.hd = add i64 %i.hc, %i.gz
  %i.he = load i64, ptr %i.ef, align 8, !tbaa !77
  invoke void @ggml_backend_tensor_get_2d(ptr noundef nonnull %i.gs, ptr noundef %i.gx, i64 noundef %i.hd, i64 noundef %i.gw, i64 noundef %i.em, i64 noundef %i.hb, i64 noundef %i.he)
          to label %bb.al unwind label %.split278.us.split.us

bb.al:                                            ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i217.us.us
  %i.hf = add i64 %i.gw, %.5269.us.us             ; 3 uses
  %i.hg = load i64, ptr %i.gy, align 8, !tbaa !77
  %i.hh = add i64 %i.hg, %i.gw
  store i64 %i.hh, ptr %i.gy, align 8, !tbaa !77
  %i.hi = add nuw i64 %.0148268.us.us, 1          ; 2 uses
  %exitcond317.not = icmp eq i64 %i.hi, %umax316
  br i1 %exitcond317.not, label %._crit_edge271.us.us, label %bb.ai, !llvm.loop !639

._crit_edge271.us.us:                             ; preds = %bb.al
  %i.hj = add nuw nsw i64 %.0149273.us.us, 1      ; 2 uses
  %exitcond318.not = icmp eq i64 %i.hj, %i.fa
  br i1 %exitcond318.not, label %._crit_edge275.split.us.us, label %.preheader242.us.us, !llvm.loop !640

._crit_edge275.split.us.us:                       ; preds = %._crit_edge271.us.us, %.preheader243.us
  %.4.lcssa.us = phi i64 [ %.3281.us, %.preheader243.us ], [ %i.hf, %._crit_edge271.us.us ] ; 2 uses
  %i.hk = add nuw nsw i64 %.0150280.us, 1         ; 2 uses
  %exitcond319.not = icmp eq i64 %i.hk, %i.et
  br i1 %exitcond319.not, label %._crit_edge282.loopexit, label %.preheader243.us, !llvm.loop !641

.split278.us.split.us:                            ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i217.us.us
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.am:                                            ; preds = %.invoke344
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

._crit_edge282.loopexit:                          ; preds = %._crit_edge275.split.us.us
  %i.hn = mul i64 %.4.lcssa.us, %i.em
  br label %._crit_edge282

._crit_edge282:                                   ; preds = %.preheader243.lr.ph, %._crit_edge282.loopexit, %.preheader244
  %.3.lcssa = phi i64 [ 0, %.preheader244 ], [ %i.hn, %._crit_edge282.loopexit ], [ 0, %.preheader243.lr.ph ]
  %i.ho = icmp eq i64 %.3.lcssa, %4
  br i1 %i.ho, label %bb.ao, label %.invoke344

.split.us.invoke:                                 ; preds = %bb.aj, %bb.ai, %ggml_backend_buffer_is_meta.exit.i193.us.us
  %i.hp = phi i32 [ 476, %bb.ai ], [ 476, %ggml_backend_buffer_is_meta.exit.i193.us.us ], [ 478, %bb.aj ]
  %i.hq = phi ptr [ @.str.86, %bb.ai ], [ @.str.86, %ggml_backend_buffer_is_meta.exit.i193.us.us ], [ @.str.87, %bb.aj ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.hp, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.hq) #26
          to label %.split.us.cont unwind label %bb.an

.split.us.cont:                                   ; preds = %.split.us.invoke
  unreachable

bb.an:                                            ; preds = %.split.us.invoke
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.invoke344:                                       ; preds = %bb.ah, %._crit_edge282
  %i.hs = phi i32 [ 1606, %._crit_edge282 ], [ 1591, %bb.ah ]
  %i.ht = phi ptr [ @.str.117, %._crit_edge282 ], [ @.str.115, %bb.ah ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef %i.hs, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.ht) #26
          to label %.cont345 unwind label %bb.am

.cont345:                                         ; preds = %.invoke344
  unreachable

bb.ao:                                            ; preds = %._crit_edge282, %._crit_edge302
  %.not.i.i.i = icmp eq ptr %.sroa.0229.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hu = ptrtoint ptr %.sroa.0229.0 to i64
  %i.hv = sub i64 %.sroa.13.0, %i.hu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0229.0, i64 noundef %i.hv) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.aq:                                            ; preds = %bb.af, %bb.an, %bb.am, %bb.n, %bb.aa, %bb.ab, %bb.s, %bb.l
  %.pn178.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.ab ], [ %i.aj, %bb.l ], [ %i.aq, %bb.n ], [ %i.az, %bb.s ], [ %i.dz, %bb.aa ], [ %i.hr, %bb.an ], [ %i.ek, %bb.af ], [ %i.hm, %bb.am ] ; 2 uses
  %.not.i.i.i227 = icmp eq ptr %.sroa.0229.0, null
  br i1 %.not.i.i.i227, label %_ZNSt6vectorImSaImEED2Ev.exit228, label %.thread

.thread:                                          ; preds = %.split298.us.split.us, %.split278.us.split.us, %bb.aq
  %.pn178.pn.pn.pn.pn238 = phi { ptr, i32 } [ %.pn178.pn.pn.pn.pn, %bb.aq ], [ %i.hl, %.split278.us.split.us ], [ %i.dw, %.split298.us.split.us ]
  %i.hw = ptrtoint ptr %.sroa.0229.0 to i64
  %i.hx = sub i64 %.sroa.13.0, %i.hw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0229.0, i64 noundef %i.hx) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit228

_ZNSt6vectorImSaImEED2Ev.exit228:                 ; preds = %.thread, %bb.aq
  %.pn178.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn178.pn.pn.pn.pn238, %.thread ], [ %.pn178.pn.pn.pn.pn, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn178.pn.pn.pn.pn.pn

bb.ar:                                            ; preds = %bb.c
  switch i32 %i.n, label %bb.bb [
    i32 0, label %bb.as
    i32 1, label %bb.as
    i32 2, label %bb.as
    i32 10, label %bb.ba
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar, %bb.ar
  %i.hy = zext nneg i32 %i.n to i64               ; 2 uses
  %i.hz = getelementptr [8 x i8], ptr %1, i64 %i.hy
  %i.ia = getelementptr i8, ptr %i.hz, i64 56
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !77 ; 6 uses
  %i.ic = urem i64 %3, %i.ib
  %i.id = udiv exact i64 %3, %i.ib                ; 2 uses
  %i.ie = icmp eq i64 %i.ic, 0
  br i1 %i.ie, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1616, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.33) #26
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.if = urem i64 %4, %i.ib
  %i.ig = icmp eq i64 %i.if, 0
  br i1 %i.ig, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1617, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.34) #26
  unreachable

bb.aw:                                            ; preds = %bb.au
  %.not306 = icmp eq ptr %i.g, %i.h
  br i1 %.not306, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aw
  %i.ih = add i64 %4, %3
  %i.ii = udiv i64 %i.ih, %i.ib
  %i.ij = sub nsw i64 %i.ii, %i.id
  br label %bb.ax

._crit_edge:                                      ; preds = %bb.az
  %i.ik = icmp eq i64 %.1147, %i.ib
  br i1 %i.ik, label %_ZNSt6vectorImSaImEED2Ev.exit, label %._crit_edge.thread

bb.ax:                                            ; preds = %.lr.ph, %bb.az
  %.0145267 = phi i64 [ 0, %.lr.ph ], [ %i.it, %bb.az ] ; 2 uses
  %.0146266 = phi i64 [ 0, %.lr.ph ], [ %.1147, %bb.az ] ; 3 uses
  %i.il = tail call fastcc noundef ptr @_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm(ptr noundef nonnull %1, i64 noundef %.0145267) ; 2 uses
  %i.im = getelementptr [8 x i8], ptr %i.il, i64 %i.hy
  %i.in = getelementptr i8, ptr %i.im, i64 56
  %i.io = load i64, ptr %i.in, align 8, !tbaa !77 ; 5 uses
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iq = mul i64 %i.io, %i.id
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 %.0146266
  tail call void @ggml_backend_tensor_get_2d(ptr noundef nonnull %i.il, ptr noundef %i.ir, i64 noundef %i.iq, i64 noundef %i.io, i64 noundef %i.ij, i64 noundef %i.io, i64 noundef %i.ib)
  %i.is = add i64 %i.io, %.0146266
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.1147 = phi i64 [ %i.is, %bb.ay ], [ %.0146266, %bb.ax ] ; 2 uses
  %i.it = add nuw i64 %.0145267, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.it, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %bb.ax, !llvm.loop !642

._crit_edge.thread:                               ; preds = %bb.aw, %._crit_edge
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1631, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.35) #26
  unreachable

bb.ba:                                            ; preds = %bb.ar
  %i.iu = tail call fastcc noundef ptr @_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm(ptr noundef nonnull %1, i64 noundef 0)
  tail call void @ggml_backend_tensor_get(ptr noundef %i.iu, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.bb:                                            ; preds = %bb.ar
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1639, ptr noundef nonnull @.str.9) #26
  unreachable

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.ap, %bb.ao, %bb.ba, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL30ggml_backend_meta_buffer_clearP19ggml_backend_bufferh(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1) #0 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %ggml_backend_buffer_is_meta.exit.thread.i, label %ggml_backend_buffer_is_meta.exit.i

ggml_backend_buffer_is_meta.exit.i:               ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !182
  %i.b = icmp eq ptr %i.a, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.b, label %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit, label %ggml_backend_buffer_is_meta.exit.thread.i

ggml_backend_buffer_is_meta.exit.thread.i:        ; preds = %ggml_backend_buffer_is_meta.exit.i, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 463, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.43) #26
  unreachable

_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit: ; preds = %ggml_backend_buffer_is_meta.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !150  ; 2 uses
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %._crit_edge, label %ggml_backend_buffer_is_meta.exit.i7.preheader

ggml_backend_buffer_is_meta.exit.i7.preheader:    ; preds = %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  br label %ggml_backend_buffer_is_meta.exit.i7

._crit_edge:                                      ; preds = %_ZL38ggml_backend_meta_buffer_simple_bufferP19ggml_backend_bufferm.exit, %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit
  ret void

ggml_backend_buffer_is_meta.exit.i7:              ; preds = %ggml_backend_buffer_is_meta.exit.i7.preheader, %_ZL38ggml_backend_meta_buffer_simple_bufferP19ggml_backend_bufferm.exit
  %.09 = phi i64 [ %i.aa, %_ZL38ggml_backend_meta_buffer_simple_bufferP19ggml_backend_bufferm.exit ], [ 0, %ggml_backend_buffer_is_meta.exit.i7.preheader ] ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !182
  %i.n = icmp eq ptr %i.m, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.n, label %bb.b, label %ggml_backend_buffer_is_meta.exit.thread.i8

ggml_backend_buffer_is_meta.exit.thread.i8:       ; preds = %ggml_backend_buffer_is_meta.exit.i7
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 469, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.43) #26
  unreachable

bb.b:                                             ; preds = %ggml_backend_buffer_is_meta.exit.i7
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !184  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !151
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !150  ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %i.x = icmp ult i64 %.09, %i.w
  br i1 %i.x, label %_ZL38ggml_backend_meta_buffer_simple_bufferP19ggml_backend_bufferm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 471, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.87) #26
  unreachable

_ZL38ggml_backend_meta_buffer_simple_bufferP19ggml_backend_bufferm.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.09
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !153
  tail call void @ggml_backend_buffer_clear(ptr noundef %i.z, i8 noundef zeroext %1)
  %i.aa = add nuw i64 %.09, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %ggml_backend_buffer_is_meta.exit.i7, !llvm.loop !643
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL30ggml_backend_meta_buffer_resetP19ggml_backend_buffer(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %ggml_backend_buffer_is_meta.exit.thread, label %ggml_backend_buffer_is_meta.exit

ggml_backend_buffer_is_meta.exit:                 ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !182
  %i.b = icmp eq ptr %i.a, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.b, label %bb.b, label %ggml_backend_buffer_is_meta.exit.thread

ggml_backend_buffer_is_meta.exit.thread:          ; preds = %bb.a, %ggml_backend_buffer_is_meta.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1652, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.99) #26
  unreachable

bb.b:                                             ; preds = %ggml_backend_buffer_is_meta.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 232 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !150
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %._crit_edge, label %ggml_backend_buffer_is_meta.exit.i

._crit_edge:                                      ; preds = %_ZL38ggml_backend_meta_buffer_simple_bufferP19ggml_backend_bufferm.exit, %bb.b
  ret void

ggml_backend_buffer_is_meta.exit.i:               ; preds = %bb.b, %_ZL38ggml_backend_meta_buffer_simple_bufferP19ggml_backend_bufferm.exit
  %.06 = phi i64 [ %i.w, %_ZL38ggml_backend_meta_buffer_simple_bufferP19ggml_backend_bufferm.exit ], [ 0, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !182
  %i.j = icmp eq ptr %i.i, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.j, label %bb.c, label %ggml_backend_buffer_is_meta.exit.thread.i

ggml_backend_buffer_is_meta.exit.thread.i:        ; preds = %ggml_backend_buffer_is_meta.exit.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 469, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.43) #26
  unreachable

bb.c:                                             ; preds = %ggml_backend_buffer_is_meta.exit.i
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !184  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !151
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !150  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = icmp ult i64 %.06, %i.s
  br i1 %i.t, label %_ZL38ggml_backend_meta_buffer_simple_bufferP19ggml_backend_bufferm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 471, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.87) #26
  unreachable

_ZL38ggml_backend_meta_buffer_simple_bufferP19ggml_backend_bufferm.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.06
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !153
end_hunk_4
