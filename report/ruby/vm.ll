Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/vm?download=true
inline.NumInlined: 3276
inline.NumDeleted: 575
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@rb_find_defined_class_by_owner:bb.a

RCLASS_CLASSEXT_TBL.exit.i.i11.i32:               ; preds = %.split7.i30
  %i.bn = load ptr, ptr %i.bc, align 8, !tbaa !216 ; 2 uses
  %.not.i.i12.i33 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i12.i33, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i35, label %bb.m

bb.m:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i32
  %i.bo = load i64, ptr %i.bg, align 8, !tbaa !217
  %i.bp = call i32 @rb_st_lookup(ptr noundef nonnull %i.bn, i64 noundef %i.bo, ptr noundef nonnull %i.a) #23
  %.not5.i.i13.i34 = icmp eq i32 %i.bp, 0
  br i1 %.not5.i.i13.i34, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i35, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !50
  %i.br = inttoptr i64 %i.bq to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i35

RCLASS_EXT_READABLE_LOOKUP.exit17.i35:            ; preds = %bb.n, %bb.m, %RCLASS_CLASSEXT_TBL.exit.i.i11.i32, %.split7.i30
  %.0.i.i14.i36 = phi ptr [ %i.br, %bb.n ], [ null, %bb.m ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i32 ], [ null, %.split7.i30 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i15.i37 = icmp eq ptr %.0.i.i14.i36, null
  %i.bs = getelementptr i8, ptr %i.az, i64 24
  %.0.i16.i38 = select i1 %.not.i15.i37, ptr %i.bs, ptr %.0.i.i14.i36
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.bt = getelementptr i8, ptr %i.az, i64 24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %RCLASS_EXT_READABLE_LOOKUP.exit17.i35, %.split.i39, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i44
  %.0.i29 = phi ptr [ %i.bf, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i44 ], [ %i.bt, %bb.o ], [ %i.bh, %.split.i39 ], [ %.0.i16.i38, %RCLASS_EXT_READABLE_LOOKUP.exit17.i35 ]
  %i.bu = getelementptr i8, ptr %.0.i29, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !218 ; 2 uses
  %i.bw = and i64 %i.bv, -5
  %.not53 = icmp eq i64 %i.bw, 0
  br i1 %.not53, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.p, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit24.thread
  %.219 = phi i64 [ %0, %rbimpl_RB_TYPE_P_fastpath.exit24.thread ], [ %.156, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %0, %bb.p ]
  ret i64 %.219
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @RCLASS_EXT_READABLE(i64 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !114
  %i.d = and i64 %i.c, 65536
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit

RCLASS_PRIME_CLASSEXT_READABLE_P.exit:            ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 160      ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !216
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread:     ; preds = %bb.a, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit
  %i.h = getelementptr i8, ptr %i.b, i64 24
  br label %bb.g

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit
  %i.i = tail call ptr @rb_current_box() #23      ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 24
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !146, !range !147, !noundef !101
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7, label %bb.f

.split7:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.n = load i64, ptr %i.b, align 8, !tbaa !114
  %i.o = and i64 %i.n, 65536
  %.not.i.i.i10 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i10, label %RCLASS_EXT_READABLE_LOOKUP.exit17, label %RCLASS_CLASSEXT_TBL.exit.i.i11

RCLASS_CLASSEXT_TBL.exit.i.i11:                   ; preds = %.split7
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !216  ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.p, null
  br i1 %.not.i.i12, label %RCLASS_EXT_READABLE_LOOKUP.exit17, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11
  %i.q = load i64, ptr %i.i, align 8, !tbaa !217
  %i.r = call i32 @rb_st_lookup(ptr noundef nonnull %i.p, i64 noundef %i.q, ptr noundef nonnull %i.a) #23
  %.not5.i.i13 = icmp eq i32 %i.r, 0
  br i1 %.not5.i.i13, label %RCLASS_EXT_READABLE_LOOKUP.exit17, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !50
  %i.t = inttoptr i64 %i.s to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17

RCLASS_EXT_READABLE_LOOKUP.exit17:                ; preds = %.split7, %RCLASS_CLASSEXT_TBL.exit.i.i11, %bb.d, %bb.e
  %.0.i.i14 = phi ptr [ %i.t, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11 ], [ null, %.split7 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i15 = icmp eq ptr %.0.i.i14, null
  %i.u = getelementptr i8, ptr %i.b, i64 24
  %.0.i16 = select i1 %.not.i15, ptr %i.u, ptr %.0.i.i14
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.b, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.split, %RCLASS_EXT_READABLE_LOOKUP.exit17, %bb.f, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread
  %.0 = phi ptr [ %i.h, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread ], [ %i.v, %bb.f ], [ %i.j, %.split ], [ %.0.i16, %RCLASS_EXT_READABLE_LOOKUP.exit17 ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_aliased_callable_method_entry(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @aliased_callable_method_entry(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @aliased_callable_method_entry(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !220
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %rb_obj_write.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !221
  %i.j = getelementptr i8, ptr %i.d, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !222
  %i.l = tail call i64 @rb_find_defined_class_by_owner(i64 noundef %i.i, i64 noundef %i.k)
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !223
  %i.o = tail call ptr @rb_method_entry_complement_defined_class(ptr noundef nonnull %i.d, i64 noundef %i.n, i64 noundef %i.l) ; 6 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !119  ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !501
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.p, i64 8
  %i.u = ptrtoint ptr %i.o to i64                 ; 3 uses
  store i64 %i.u, ptr %i.t, align 8, !tbaa !50
  %i.v = icmp eq ptr %i.o, null
  %i.w = and i64 %i.u, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %rb_obj_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.z, i64 noundef %i.u) #23
  br label %rb_obj_write.exit

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %i.p, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !225
  %i.ac = tail call noalias nonnull dereferenceable(56) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 56) #61 ; 6 uses
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = and i8 %i.ad, -16
  %i.af = or disjoint i8 %i.ae, 6
  store i8 %i.af, ptr %i.ac, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i64 %i.ab, ptr %i.ag, align 8, !tbaa !225
  %i.ah = atomicrmw volatile add ptr @method_serial, i32 1 seq_cst, align 4
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !226
  %i.ak = tail call ptr @rb_current_box() #23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !227
  tail call void @rb_method_definition_set(ptr noundef nonnull %0, ptr noundef nonnull %i.ac, ptr noundef %i.o)
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.d, %bb.c, %bb.a, %bb.e
  %.0 = phi ptr [ %i.d, %bb.a ], [ %i.o, %bb.e ], [ %i.o, %bb.c ], [ %i.o, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @rb_vm_cc_general(ptr nofree noundef writeonly captures(none) initializes((24, 32)) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  store ptr @vm_call_general, ptr %i.a, align 8, !tbaa !199
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_general(ptr noundef %0, ptr noundef captures(address) %1, ptr noundef %2) #2 {
bb.a:
  %i.a = tail call fastcc i64 @vm_call_method(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_yield_with_cfunc(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !229
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 3 uses
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %3, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.025.i = phi i64 [ %i.e, %bb.b ], [ 4, %bb.a ]
  %i.f = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107  ; 7 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110  ; 5 uses
  %i.j = getelementptr i8, ptr %i.g, i64 -56      ; 3 uses
  %i.k = getelementptr i8, ptr %i.i, i64 56
  %.not.i27.i = icmp ugt ptr %i.j, %i.k
  br i1 %.not.i27.i, label %vm_push_frame.exit.i, label %bb.d, !prof !109

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit.i:                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !230
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = or i64 %i.n, 1
  %i.p = getelementptr i8, ptr %i.i, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !50
  %i.q = getelementptr i8, ptr %i.i, i64 16       ; 2 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !50
  %i.r = getelementptr i8, ptr %i.i, i64 24
  store i64 1717960833, ptr %i.q, align 8, !tbaa !50
  store ptr null, ptr %i.j, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.g, i64 -48
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.g, i64 -40
  store ptr %i.c, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.g, i64 -32
  store i64 %i.a, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.g, i64 -24
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.g, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.j, ptr %i.f, align 8, !tbaa !107
  %i.s = getelementptr i8, ptr %i.c, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !233
  %i.u = getelementptr i8, ptr %i.c, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !234
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = tail call i64 %i.t(i64 noundef %.025.i, i64 noundef %i.w, i32 noundef %2, ptr noundef %3, i64 noundef 4) #23, !inline_history !502
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.z = getelementptr i8, ptr %0, i64 32
  %i.aa = load atomic volatile i32, ptr %i.z monotonic, align 8
  %i.ab = getelementptr i8, ptr %0, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !108
  %i.ad = xor i32 %i.ac, -1
  %i.ae = and i32 %i.aa, %i.ad
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %vm_yield_with_cfunc.exit, label %bb.e, !prof !109

bb.e:                                             ; preds = %vm_push_frame.exit.i
  %i.af = getelementptr i8, ptr %0, i64 48
  %.val.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.ag = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %vm_yield_with_cfunc.exit

vm_yield_with_cfunc.exit:                         ; preds = %vm_push_frame.exit.i, %bb.e
  %i.ah = getelementptr i8, ptr %i.y, i64 56
  store ptr %i.ah, ptr %i.f, align 8, !tbaa !107
  ret i64 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_yield_with_cfunc(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6, ptr noundef %7) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %4, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.025 = phi i64 [ %i.d, %bb.b ], [ 4, %bb.a ]
  %i.e = icmp eq i64 %6, 0
  br i1 %i.e, label %rb_vm_bh_to_procval.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i64 %6, 3
  switch i64 %i.f, label %bb.e [
    i64 1, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i
    i64 3, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = and i64 %6, 255
  %i.h = icmp eq i64 %i.g, 12
  br i1 %i.h, label %vm_block_handler_type.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = and i64 %6, 7
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %RB_SYMBOL_P.exit.i.i, label %rb_vm_bh_to_procval.exit

RB_SYMBOL_P.exit.i.i:                             ; preds = %bb.f
  %i.j = inttoptr i64 %6 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !114
  %.fr10.i.i = freeze i64 %i.k
  %i.l = and i64 %.fr10.i.i, 31
  %i.m = icmp eq i64 %i.l, 20
  br i1 %i.m, label %vm_block_handler_type.exit.i, label %rb_vm_bh_to_procval.exit

RB_SYMBOL_P.exit.thread7.fold.split.i.i:          ; preds = %bb.d, %bb.d
  %i.n = and i64 %6, -4
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr @rb_cProc, align 8, !tbaa !50
  %i.q = tail call i64 @rb_vm_make_proc_lambda(ptr noundef readnone %0, ptr noundef %i.o, i64 noundef %i.p, i8 noundef signext 0), !inline_history !1
  br label %rb_vm_bh_to_procval.exit

vm_block_handler_type.exit.i:                     ; preds = %RB_SYMBOL_P.exit.i.i, %bb.e
  %i.r = tail call i64 @rb_sym_to_proc(i64 noundef %6) #23
  br label %rb_vm_bh_to_procval.exit

rb_vm_bh_to_procval.exit:                         ; preds = %bb.c, %bb.f, %RB_SYMBOL_P.exit.i.i, %RB_SYMBOL_P.exit.thread7.fold.split.i.i, %vm_block_handler_type.exit.i
  %.0.i = phi i64 [ 4, %bb.c ], [ %i.q, %RB_SYMBOL_P.exit.thread7.fold.split.i.i ], [ %i.r, %vm_block_handler_type.exit.i ], [ %6, %bb.f ], [ %6, %RB_SYMBOL_P.exit.i.i ]
  %i.s = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107  ; 7 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !110  ; 5 uses
  %i.w = getelementptr i8, ptr %i.t, i64 -56      ; 3 uses
  %i.x = getelementptr i8, ptr %i.v, i64 56
  %.not.i27 = icmp ugt ptr %i.w, %i.x
  br i1 %.not.i27, label %vm_push_frame.exit, label %bb.g, !prof !109

bb.g:                                             ; preds = %rb_vm_bh_to_procval.exit
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %rb_vm_bh_to_procval.exit
  %i.y = ptrtoint ptr %7 to i64
  %i.z = getelementptr i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !230
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = or i64 %i.ab, 1
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !64
  %.not26 = icmp eq i32 %5, 0
  %.not = icmp eq ptr %7, null
  %i.ae = select i1 %.not, i64 1717960833, i64 1717960897 ; 2 uses
  %i.af = or disjoint i64 %i.ae, 1024
  %spec.select = select i1 %.not26, i64 %i.ae, i64 %i.af
  %i.ag = getelementptr i8, ptr %i.v, i64 8
  store i64 %i.y, ptr %i.v, align 8, !tbaa !50
  %i.ah = getelementptr i8, ptr %i.v, i64 16      ; 2 uses
  store i64 %i.ac, ptr %i.ag, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.v, i64 24
  store i64 %spec.select, ptr %i.ah, align 8, !tbaa !50
  store ptr null, ptr %i.w, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -48
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -40
  store ptr %i.ad, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -32
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -24
  store ptr %i.ah, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.w, ptr %i.s, align 8, !tbaa !107
  %i.aj = getelementptr i8, ptr %i.b, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !233
  %i.al = getelementptr i8, ptr %i.b, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !234
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = tail call i64 %i.ak(i64 noundef %.025, i64 noundef %i.an, i32 noundef %3, ptr noundef %4, i64 noundef %.0.i) #23
  %i.ap = load ptr, ptr %i.s, align 8, !tbaa !107
  %i.aq = getelementptr i8, ptr %0, i64 32
  %i.ar = load atomic volatile i32, ptr %i.aq monotonic, align 8
  %i.as = getelementptr i8, ptr %0, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !108
  %i.au = xor i32 %i.at, -1
  %i.av = and i32 %i.ar, %i.au
  %.not.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i, label %rb_vm_pop_frame.exit, label %bb.h, !prof !109

end_hunk_0
begin_hunk_1_@rb_str_eql_internal:bb.a
bb.f:                                             ; preds = %RSTRING_PTR.exit15
  %bcmp = tail call i32 @bcmp(ptr %i.l, ptr %i.q, i64 %i.c)
  %i.s = icmp eq i32 %bcmp, 0
  %. = select i1 %i.s, i64 20, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %RSTRING_PTR.exit15, %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %., %bb.f ], [ 20, %RSTRING_PTR.exit15 ]
  ret i64 %.0
}

declare i32 @rb_str_comparable(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_obj_equal(i64 noundef, i64 noundef) #44

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @uncallable_object(i64 noundef %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @rb_id2str(i64 noundef %1) #23 ; 5 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr @rb_eNotImpError, align 8, !tbaa !50
  %i.g = inttoptr i64 %0 to ptr
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.142, i64 noundef %i.a, ptr noundef %i.g) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !114  ; 5 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr @rb_eNotImpError, align 8, !tbaa !50
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.143, i64 noundef %i.a, ptr noundef nonnull %i.h) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = trunc i64 %i.i to i32
  %i.m = and i32 %i.l, 31                         ; 2 uses
  switch i32 %i.m, label %rb_type_str.exit [
    i32 0, label %bb.af
    i32 1, label %bb.ae
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 14, label %bb.r
    i32 15, label %bb.s
    i32 17, label %bb.t
    i32 18, label %bb.u
    i32 19, label %bb.v
    i32 20, label %bb.w
    i32 21, label %bb.x
    i32 26, label %bb.y
    i32 22, label %bb.z
    i32 27, label %bb.aa
    i32 28, label %bb.ab
    i32 29, label %bb.ac
    i32 30, label %bb.ad
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.ae

bb.g:                                             ; preds = %bb.e
  br label %bb.ae

bb.h:                                             ; preds = %bb.e
  br label %bb.ae

bb.i:                                             ; preds = %bb.e
  br label %bb.ae

bb.j:                                             ; preds = %bb.e
  br label %bb.ae

bb.k:                                             ; preds = %bb.e
  br label %bb.ae

bb.l:                                             ; preds = %bb.e
  br label %bb.ae

bb.m:                                             ; preds = %bb.e
  br label %bb.ae

bb.n:                                             ; preds = %bb.e
  br label %bb.ae

bb.o:                                             ; preds = %bb.e
  br label %bb.ae

bb.p:                                             ; preds = %bb.e
  br label %bb.ae

bb.q:                                             ; preds = %bb.e
  br label %bb.ae

bb.r:                                             ; preds = %bb.e
  br label %bb.ae

bb.s:                                             ; preds = %bb.e
  br label %bb.ae

bb.t:                                             ; preds = %bb.e
  br label %bb.af

bb.u:                                             ; preds = %bb.e
  br label %bb.af

bb.v:                                             ; preds = %bb.e
  br label %bb.af

bb.w:                                             ; preds = %bb.e
  br label %bb.af

bb.x:                                             ; preds = %bb.e
  br label %bb.af

bb.y:                                             ; preds = %bb.e
  br label %bb.af

bb.z:                                             ; preds = %bb.e
  br label %bb.af

bb.aa:                                            ; preds = %bb.e
  br label %bb.af

bb.ab:                                            ; preds = %bb.e
  br label %bb.af

bb.ac:                                            ; preds = %bb.e
  br label %bb.af

bb.ad:                                            ; preds = %bb.e
  br label %bb.af

rb_type_str.exit:                                 ; preds = %bb.e
  %i.n = load i64, ptr @rb_eNotImpError, align 8, !tbaa !50
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.144, i64 noundef %i.a, i32 noundef %i.m, ptr noundef nonnull %i.h, i64 noundef %i.i) #42
  unreachable

bb.ae:                                            ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i.ph.ph = phi ptr [ @.str.45, %bb.s ], [ @.str.32, %bb.f ], [ @.str.33, %bb.g ], [ @.str.34, %bb.h ], [ @.str.35, %bb.i ], [ @.str.36, %bb.j ], [ @.str.37, %bb.k ], [ @.str.38, %bb.l ], [ @.str.39, %bb.m ], [ @.str.40, %bb.n ], [ @.str.41, %bb.o ], [ @.str.42, %bb.p ], [ @.str.43, %bb.q ], [ @.str.44, %bb.r ], [ @.str.31, %bb.e ]
  %i.o = load i64, ptr @rb_eNotImpError, align 8, !tbaa !50
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.145, i64 noundef %i.a, ptr noundef nonnull %.0.i.ph.ph, ptr noundef nonnull %i.h, i64 noundef %i.i) #42
  unreachable

bb.af:                                            ; preds = %bb.e, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.ad
  %.0.i.ph = phi ptr [ @.str.30, %bb.e ], [ @.str.55, %bb.ac ], [ @.str.54, %bb.ab ], [ @.str.53, %bb.aa ], [ @.str.52, %bb.z ], [ @.str.51, %bb.y ], [ @.str.50, %bb.x ], [ @.str.49, %bb.w ], [ @.str.48, %bb.v ], [ @.str.47, %bb.u ], [ @.str.46, %bb.t ], [ @.str.56, %bb.ad ]
  %i.p = load i64, ptr @rb_eNotImpError, align 8, !tbaa !50
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.146, i64 noundef %i.a, ptr noundef nonnull %.0.i.ph, ptr noundef nonnull %i.h, i64 noundef %i.i) #42
  unreachable
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc ptr @gccct_method_search_slowpath(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef range(i32 0, 1023) %2, ptr noundef nonnull %3) unnamed_addr #30 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !417    ; 2 uses
  %i.b = tail call ptr @rb_vm_search_method_slowpath(ptr noundef nonnull %3, i64 noundef %1), !inline_history !722 ; 5 uses
  %.not.i = icmp eq i64 %i.a, 0
  %.not10.i = icmp eq ptr %i.b, @vm_empty_cc
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not10.i
  br i1 %or.cond.i, label %vm_search_method_slowpath0.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = icmp eq ptr %i.b, null
  %i.e = and i64 %i.c, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %vm_search_method_slowpath0.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @rb_gc_writebarrier(i64 noundef %i.a, i64 noundef %i.c) #23, !inline_history !722
  br label %vm_search_method_slowpath0.exit

vm_search_method_slowpath0.exit:                  ; preds = %bb.a, %bb.b, %bb.c
  %i.h = getelementptr i8, ptr %0, i64 1336
  %i.i = zext nneg i32 %2 to i64
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  store ptr %i.b, ptr %i.j, align 8, !tbaa !325
  ret ptr %i.b
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @vm_call_method(ptr noundef %0, ptr noundef captures(address) %1, ptr noundef %2) unnamed_addr #11 {
bb.a:
  %3 = alloca %struct.rb_callcache, align 8       ; 6 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !242
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 8          ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !248  ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val45 = load ptr, ptr %i.e, align 8, !tbaa !210 ; 3 uses
  %.not = icmp eq ptr %.val45, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %.val45, align 8, !tbaa !193
  %i.g = trunc i64 %i.f to i32
  %i.h = lshr i32 %i.g, 16
  %i.i = and i32 %i.h, 3
  switch i32 %i.i, label %default.unreachable56 [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.g
    i32 0, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = tail call fastcc i64 @vm_call_method_each_type(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.b to i64                 ; 3 uses
  %.not.i.i = trunc i64 %i.k to i1
  br i1 %.not.i.i, label %vm_ci_flag.exit, label %vm_ci_flag.exit.thread

vm_ci_flag.exit:                                  ; preds = %bb.d
  %i.l = and i64 %i.k, 262144
  %.not42 = icmp eq i64 %i.l, 0
  br i1 %.not42, label %bb.e, label %bb.f

vm_ci_flag.exit.thread:                           ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.b, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !196  ; 2 uses
  %i.o = and i64 %i.n, 4
  %.not4255 = icmp eq i64 %i.o, 0
  br i1 %.not4255, label %.thread, label %bb.f

bb.e:                                             ; preds = %vm_ci_flag.exit
  %i.p = trunc i64 %i.k to i32
  %i.q = lshr i32 %i.p, 16
  br label %vm_ci_flag.exit49

.thread:                                          ; preds = %vm_ci_flag.exit.thread
  %i.r = trunc i64 %i.n to i32
  br label %vm_ci_flag.exit49

vm_ci_flag.exit49:                                ; preds = %bb.e, %.thread
  %.0.i48 = phi i32 [ %i.q, %bb.e ], [ %i.r, %.thread ]
  %i.s = and i32 %.0.i48, 8
  %spec.select = or disjoint i32 %i.s, 1
  %i.t = getelementptr i8, ptr %i.d, i64 32
  store i32 %spec.select, ptr %i.t, align 8, !tbaa !64
  %i.u = getelementptr i8, ptr %i.d, i64 24
  store ptr @vm_call_method_missing, ptr %i.u, align 8, !tbaa !199
  %i.v = load ptr, ptr %2, align 8, !tbaa !242
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !240
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !248
  %i.y = getelementptr i8, ptr %i.x, i64 32
  %.val.i = load i32, ptr %i.y, align 8, !tbaa !64
  %i.z = tail call fastcc i64 @vm_call_method_missing_body(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %i.w, i32 noundef %.val.i), !inline_history !462
  br label %bb.p

bb.f:                                             ; preds = %vm_ci_flag.exit.thread, %vm_ci_flag.exit
  %i.aa = tail call fastcc i64 @vm_call_method_each_type(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.p

bb.g:                                             ; preds = %bb.b
  %i.ab = ptrtoint ptr %i.b to i64                ; 2 uses
  %.not.i.i50 = trunc i64 %i.ab to i1
  br i1 %.not.i.i50, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = lshr i32 %i.ac, 16
  br label %vm_ci_flag.exit52

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.b, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !196
  %i.ag = trunc i64 %i.af to i32
  br label %vm_ci_flag.exit52

vm_ci_flag.exit52:                                ; preds = %bb.h, %bb.i
  %.0.i51 = phi i32 [ %i.ad, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = and i32 %.0.i51, 1028
  %.not40 = icmp eq i32 %i.ah, 0
  br i1 %.not40, label %bb.j, label %bb.m

bb.j:                                             ; preds = %vm_ci_flag.exit52
  %i.ai = getelementptr i8, ptr %.val45, i64 8
  %.val46 = load i64, ptr %i.ai, align 8, !tbaa !221 ; 2 uses
  %i.aj = inttoptr i64 %.val46 to ptr
  %i.ak = getelementptr i8, ptr %i.aj, i64 128
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !250 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4
  %i.an = select i1 %i.am, i64 %.val46, i64 %i.al
  %i.ao = getelementptr i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !111
  %i.aq = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.ap, i64 noundef %i.an) #23
  %.not41 = icmp eq i64 %i.aq, 0
  br i1 %.not41, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr i8, ptr %i.d, i64 32
  store i32 2, ptr %i.ar, align 8, !tbaa !64
  %i.as = load ptr, ptr %2, align 8, !tbaa !242
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !240
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !248
  %i.av = getelementptr i8, ptr %i.au, i64 32
  %.val.i53 = load i32, ptr %i.av, align 8, !tbaa !64
  %i.aw = tail call fastcc i64 @vm_call_method_missing_body(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.at, i32 noundef %.val.i53), !inline_history !462
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !tbaa.struct !723
  %i.ax = load i64, ptr %3, align 8, !tbaa !114
  %i.ay = or i64 %i.ax, 1048576
  store i64 %i.ay, ptr %3, align 8, !tbaa !114
  store ptr %3, ptr %i.c, align 8, !tbaa !248
  %i.az = call fastcc i64 @vm_call_method_each_type(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.p

bb.m:                                             ; preds = %vm_ci_flag.exit52
  %i.ba = tail call fastcc i64 @vm_call_method_each_type(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.p

default.unreachable56:                            ; preds = %bb.b
  unreachable

bb.n:                                             ; preds = %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.147) #57
  unreachable

bb.o:                                             ; preds = %bb.a
  %i.bb = tail call fastcc i64 @vm_call_method_nome(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.l, %bb.o, %bb.m, %bb.f, %vm_ci_flag.exit49, %bb.c
  %.1 = phi i64 [ %i.j, %bb.c ], [ %i.aa, %bb.f ], [ %i.z, %vm_ci_flag.exit49 ], [ %i.ba, %bb.m ], [ %i.bb, %bb.o ], [ %i.az, %bb.l ], [ %i.aw, %bb.k ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_call_method_each_type(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.rb_callcache, align 8       ; 8 uses
  %4 = alloca %struct.rb_callcache, align 8       ; 8 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct.rb_callcache, align 8       ; 8 uses
  %6 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %7 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %8 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %9 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %10 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %11 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %12 = alloca %struct.rb_callcache, align 8      ; 7 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !242
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !240  ; 23 uses
  %i.g = getelementptr i8, ptr %2, i64 8          ; 10 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !248  ; 19 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 7 uses
  %.val165 = load ptr, ptr %i.i, align 8, !tbaa !210 ; 2 uses
  %i.j = getelementptr i8, ptr %.val165, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119  ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 15                          ; 2 uses
  switch i8 %i.m, label %bb.dc [
    i8 0, label %bb.b
    i8 8, label %bb.e
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.ac
    i8 10, label %bb.ap
    i8 4, label %bb.aq
    i8 6, label %bb.au
    i8 9, label %bb.av
    i8 11, label %bb.bp
    i8 5, label %bb.aw
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %.val166 = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.o = getelementptr i8, ptr %.val166, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !158
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load i16, ptr %i.q, align 8
  %i.s = and i16 %i.r, 8192
end_hunk_1
begin_hunk_2_@vm_call_method_each_type:bb.a
  br i1 %.not.i67.i, label %.split.i.i, label %bb.cn

.split.i.i:                                       ; preds = %bb.cm
  %i.qi = getelementptr i8, ptr %i.qa, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.cn:                                            ; preds = %bb.cm
  %i.qj = getelementptr i8, ptr %i.qh, i64 128
  %i.qk = load i8, ptr %i.qj, align 8, !tbaa !146, !range !147, !noundef !101
  %i.ql = trunc nuw i8 %i.qk to i1
  br i1 %i.ql, label %.split7.i.i, label %bb.cq

.split7.i.i:                                      ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.qm = load i64, ptr %i.qa, align 8, !tbaa !114
  %i.qn = and i64 %i.qm, 65536
  %.not.i.i.i10.i.i = icmp eq i64 %i.qn, 0
  br i1 %.not.i.i.i10.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i:               ; preds = %.split7.i.i
  %i.qo = load ptr, ptr %i.qd, align 8, !tbaa !216 ; 2 uses
  %.not.i.i12.i.i = icmp eq ptr %i.qo, null
  br i1 %.not.i.i12.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.co

bb.co:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i
  %i.qp = load i64, ptr %i.qh, align 8, !tbaa !217
  %i.qq = call i32 @rb_st_lookup(ptr noundef nonnull %i.qo, i64 noundef %i.qp, ptr noundef nonnull %i.a) #23, !inline_history !725
  %.not5.i.i13.i.i = icmp eq i32 %i.qq, 0
  br i1 %.not5.i.i13.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qr = load i64, ptr %i.a, align 8, !tbaa !50
  %i.qs = inttoptr i64 %i.qr to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i:            ; preds = %bb.cp, %bb.co, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i, %.split7.i.i
  %.0.i.i14.i.i = phi ptr [ %i.qs, %bb.cp ], [ null, %bb.co ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i ], [ null, %.split7.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i15.i.i = icmp eq ptr %.0.i.i14.i.i, null
  %i.qt = getelementptr i8, ptr %i.qa, i64 24
  %.0.i16.i.i = select i1 %.not.i15.i.i, ptr %i.qt, ptr %.0.i.i14.i.i
  br label %RCLASS_EXT_READABLE.exit.i

bb.cq:                                            ; preds = %bb.cn
  %i.qu = getelementptr i8, ptr %i.qa, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

RCLASS_EXT_READABLE.exit.i:                       ; preds = %bb.cq, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, %.split.i.i, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i
  %.0.i68.i = phi ptr [ %i.qg, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i ], [ %i.qu, %bb.cq ], [ %i.qi, %.split.i.i ], [ %.0.i16.i.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i ]
  %i.qv = getelementptr i8, ptr %.0.i68.i, i64 8
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !218 ; 2 uses
  %.not46.i = icmp eq i64 %i.qw, 0
  br i1 %.not46.i, label %search_refined_method.exit.thread, label %bb.cr

bb.cr:                                            ; preds = %RCLASS_EXT_READABLE.exit.i
  %i.qx = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %i.qw, i64 noundef %.0.i.i, ptr noundef null), !inline_history !725 ; 3 uses
  %.not.i.i69.i = icmp eq ptr %i.qx, null
  br i1 %.not.i.i69.i, label %search_refined_method.exit.thread, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qy = getelementptr i8, ptr %i.qx, i64 16
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !119 ; 2 uses
  %.not7.i.i70.i = icmp eq ptr %i.qz, null
  br i1 %.not7.i.i70.i, label %search_refined_method.exit.thread, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ra = load i8, ptr %i.qz, align 8
  %i.rb = and i8 %i.ra, 15
  %i.rc = icmp eq i8 %i.rb, 7
  br i1 %i.rc, label %search_refined_method.exit.thread, label %search_refined_method.exit.thread268

search_refined_method.exit:                       ; preds = %.thread.i
  %.not.i230 = icmp eq ptr %.135.i, null
  br i1 %.not.i230, label %search_refined_method.exit.thread, label %search_refined_method.exit.thread268

search_refined_method.exit.thread268:             ; preds = %bb.ck, %bb.ct, %search_refined_method.exit
  %.341.i271 = phi ptr [ %.135.i, %search_refined_method.exit ], [ %i.pp, %bb.ck ], [ %i.qx, %bb.ct ] ; 3 uses
  %i.rd = load ptr, ptr %2, align 8, !tbaa !242
  %i.re = getelementptr i8, ptr %i.rd, i64 8
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !207
  %.not24.i = icmp eq ptr %i.rf, null
  br i1 %.not24.i, label %bb.db, label %bb.cu

bb.cu:                                            ; preds = %search_refined_method.exit.thread268
  %i.rg = load ptr, ptr %i.g, align 8, !tbaa !248
  %i.rh = getelementptr i8, ptr %i.rg, i64 16
  %.val.i231 = load ptr, ptr %i.rh, align 8, !tbaa !210
  %i.ri = getelementptr i8, ptr %.val.i231, i64 8
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !221
  %i.rk = call i64 @rb_imemo_new(i32 noundef 11, i64 noundef %i.rj, i64 noundef 40, i1 noundef zeroext true) #23 ; 6 uses
  %i.rl = inttoptr i64 %i.rk to ptr               ; 8 uses
  %i.rm = getelementptr i8, ptr %i.rl, i64 16
  store ptr %.341.i271, ptr %i.rm, align 8, !tbaa !195
  %i.rn = getelementptr i8, ptr %i.rl, i64 24
  store ptr @vm_call_general, ptr %i.rn, align 8, !tbaa !199
  %i.ro = load i64, ptr %i.rl, align 8, !tbaa !50
  %i.rp = or i64 %i.ro, 524288
  store i64 %i.rp, ptr %i.rl, align 8, !tbaa !50
  %i.rq = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.rr = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !120
  %.not.i.i.i.i257 = icmp eq ptr %i.rr, null
  br i1 %.not.i.i.i.i257, label %bb.cv, label %rb_vm_lock_enter.exit.i.i

bb.cv:                                            ; preds = %bb.cu
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #23
  br label %rb_vm_lock_enter.exit.i.i

rb_vm_lock_enter.exit.i.i:                        ; preds = %bb.cv, %bb.cu
  %i.rs = getelementptr i8, ptr %i.rq, i64 1312
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !321
  %i.ru = call i32 @rb_set_insert(ptr noundef %i.rt, i64 noundef %i.rk) #23 ; 0 uses
  %i.rv = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !120
  %.not.i.i2.i.i = icmp eq ptr %i.rv, null
  br i1 %.not.i.i2.i.i, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %rb_vm_lock_enter.exit.i.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #23
  br label %bb.cx

bb.cx:                                            ; preds = %rb_vm_lock_enter.exit.i.i, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.rw = getelementptr i8, ptr %.341.i271, i64 16
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !119
  %i.ry = load i8, ptr %i.rx, align 8
  %i.rz = and i8 %i.ry, 14
  %switch.i = icmp eq i8 %i.rz, 2
  br i1 %switch.i, label %bb.cy, label %vm_cc_new.exit

bb.cy:                                            ; preds = %bb.cx
  %i.sa = load i64, ptr %i.rl, align 8, !tbaa !114 ; 2 uses
  %i.sb = and i64 %i.sa, 1048576
  %.not.i.i.i259 = icmp eq i64 %i.sb, 0
  br i1 %.not.i.i.i259, label %bb.cz, label %vm_cc_attr_index_initialize.exit.i

bb.cz:                                            ; preds = %bb.cy
  %i.sc = or i64 %i.sa, 65536
  store i64 %i.sc, ptr %i.rl, align 8, !tbaa !50
  br label %vm_cc_attr_index_initialize.exit.i

vm_cc_attr_index_initialize.exit.i:               ; preds = %bb.cz, %bb.cy
  %i.sd = getelementptr i8, ptr %i.rl, i64 32
  store i64 4294967295, ptr %i.sd, align 8, !tbaa !50
  br label %vm_cc_new.exit

vm_cc_new.exit:                                   ; preds = %bb.cx, %vm_cc_attr_index_initialize.exit.i
  store ptr %i.rl, ptr %i.g, align 8, !tbaa !248
  %i.se = load ptr, ptr %i.nd, align 8, !tbaa !155
  %i.sf = load ptr, ptr %2, align 8, !tbaa !242
  %i.sg = getelementptr i8, ptr %i.sf, i64 8
  store i64 %i.rk, ptr %i.sg, align 8, !tbaa !50
  %i.sh = icmp eq i64 %i.rk, 0
  %i.si = and i64 %i.rk, 7
  %i.sj = icmp ne i64 %i.si, 0
  %i.sk = or i1 %i.sh, %i.sj
  br i1 %i.sk, label %rb_obj_write.exit, label %bb.da

bb.da:                                            ; preds = %vm_cc_new.exit
  %i.sl = ptrtoint ptr %i.se to i64
  call void @rb_gc_writebarrier(i64 noundef %i.sl, i64 noundef %i.rk) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %vm_cc_new.exit, %bb.da
  %i.sm = call fastcc i64 @vm_call_method(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !728
  br label %vm_call_refined.exit

bb.db:                                            ; preds = %search_refined_method.exit.thread268
  store i64 3190810, ptr %3, align 8, !tbaa !348
  %i.sn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 36, ptr %i.sn, align 8, !tbaa !209
  %i.so = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.341.i271, ptr %i.so, align 8, !tbaa !210
  %i.sp = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @vm_call_general, ptr %i.sp, align 8, !tbaa !249
  %i.sq = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.sq, align 8, !tbaa !350
  store ptr %3, ptr %i.g, align 8, !tbaa !248
  %i.sr = call fastcc i64 @vm_call_method(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2), !inline_history !728
  br label %vm_call_refined.exit

search_refined_method.exit.thread:                ; preds = %bb.bt, %bb.bu, %bb.bv, %bb.ct, %bb.cj, %bb.ck, %bb.cr, %bb.cs, %RCLASS_EXT_READABLE.exit.i, %search_refined_method.exit
  %i.ss = call fastcc i64 @vm_call_method_nome(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2), !inline_history !728
  br label %vm_call_refined.exit

vm_call_refined.exit:                             ; preds = %rb_obj_write.exit, %bb.db, %search_refined_method.exit.thread
  %.0.i232 = phi i64 [ %i.sm, %rb_obj_write.exit ], [ %i.sr, %bb.db ], [ %i.ss, %search_refined_method.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %vm_call_bmethod.exit

bb.dc:                                            ; preds = %bb.a
  %i.st = zext nneg i8 %i.m to i32
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.148, i32 noundef %i.st) #57
  unreachable

vm_call_bmethod.exit:                             ; preds = %bb.at, %bb.as, %CC_SET_FASTPATH.exit218, %vm_ci_mid.exit214, %rb_ec_hooks.exit211, %CC_SET_FASTPATH.exit, %CC_SET_FASTPATH.exit197, %vm_ci_mid.exit179, %rb_ec_hooks.exit176, %vm_ci_mid.exit193, %rb_ec_hooks.exit190, %vm_call_refined.exit, %vm_call_zsuper.exit, %bb.av, %bb.au, %bb.ap, %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ 36, %bb.c ], [ 36, %bb.d ], [ %i.x, %bb.e ], [ %.016.i228, %vm_call_zsuper.exit ], [ %i.ep, %rb_ec_hooks.exit190 ], [ %i.jh, %bb.ap ], [ %i.ho, %rb_ec_hooks.exit211 ], [ %i.kb, %bb.au ], [ %i.kc, %bb.av ], [ %.0.i232, %vm_call_refined.exit ], [ %i.gb, %CC_SET_FASTPATH.exit197 ], [ %i.cz, %CC_SET_FASTPATH.exit ], [ %i.bm, %rb_ec_hooks.exit176 ], [ %i.bm, %vm_ci_mid.exit179 ], [ %i.ep, %vm_ci_mid.exit193 ], [ %i.ja, %CC_SET_FASTPATH.exit218 ], [ %i.ho, %vm_ci_mid.exit214 ], [ 36, %bb.as ], [ %i.js, %bb.at ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_method_missing(ptr noundef %0, ptr noundef captures(address) %1, ptr noundef %2) #2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !242
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240
  %i.c = getelementptr i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !248
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %.val = load i32, ptr %i.e, align 8, !tbaa !64
  %i.f = tail call fastcc i64 @vm_call_method_missing_body(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %i.b, i32 noundef %.val)
  ret i64 %i.f
}

declare i64 @rb_obj_is_kind_of(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_call_method_nome(ptr noundef %0, ptr noundef captures(address) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !242
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 4 uses
  %.not.i.i.i = trunc i64 %i.c to i1
  br i1 %.not.i.i.i, label %bb.b, label %vm_ci_flag.exit.thread.i

vm_ci_flag.exit.thread.i:                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !196  ; 2 uses
  %i.f = and i64 %i.e, 8
  %.not21.i = icmp eq i64 %i.f, 0
  %i.g = trunc i64 %i.e to i32                    ; 3 uses
  %i.h = lshr i32 %i.g, 10
  %i.i = and i32 %i.h, 8
  %spec.select.i = xor i32 %i.i, 8
  %.025.i = select i1 %.not21.i, i32 0, i32 %spec.select.i
  %i.j = and i32 %i.g, 4
  %i.k = lshr i32 %i.g, 4
  %i.l = and i32 %i.k, 16
  %spec.select10.i = or disjoint i32 %i.l, %i.j
  %.2.i = or disjoint i32 %spec.select10.i, %.025.i
  %i.m = getelementptr i8, ptr %i.b, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !190
  br label %vm_ci_mid.exit

bb.b:                                             ; preds = %bb.a
  %i.o = and i64 %i.c, 524288
  %.not.i = icmp eq i64 %i.o, 0
  %i.p = trunc i64 %i.c to i32                    ; 3 uses
  %i.q = lshr i32 %i.p, 26
  %i.r = and i32 %i.q, 8
  %spec.select37.i = xor i32 %i.r, 8
  %.034.i = select i1 %.not.i, i32 0, i32 %spec.select37.i
  %i.s = lshr i32 %i.p, 16
  %i.t = and i32 %i.s, 4
  %i.u = lshr i32 %i.p, 20
  %i.v = and i32 %i.u, 16
  %spec.select1029.i = or disjoint i32 %i.v, %i.t
  %.2.i25 = or disjoint i32 %spec.select1029.i, %.034.i
  %i.w = lshr i64 %i.c, 32
  br label %vm_ci_mid.exit

vm_ci_mid.exit:                                   ; preds = %bb.b, %vm_ci_flag.exit.thread.i
  %.2.i26 = phi i32 [ %.2.i25, %bb.b ], [ %.2.i, %vm_ci_flag.exit.thread.i ] ; 3 uses
  %.0.i = phi i64 [ %i.w, %bb.b ], [ %i.n, %vm_ci_flag.exit.thread.i ]
  %i.x = icmp eq i64 %.0.i, 2913
  br i1 %i.x, label %bb.c, label %bb.h

bb.c:                                             ; preds = %vm_ci_mid.exit
  %i.y = getelementptr i8, ptr %2, i64 40         ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !416  ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.d, !prof !109

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call fastcc i32 @RARRAY_LENINT(i64 noundef %i.z)
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !416
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !114
  %i.ae = and i64 %i.ad, 8192
  %.not.i21 = icmp eq i64 %i.ae, 0
  br i1 %.not.i21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  br label %rb_array_const_ptr.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %i.ac, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.e, %bb.f
  %.0.i22 = phi ptr [ %i.af, %bb.e ], [ %i.ah, %bb.f ]
  %i.ai = getelementptr i8, ptr %2, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !244
  tail call fastcc void @vm_raise_method_missing(ptr noundef %0, i32 noundef %i.aa, ptr noundef %.0.i22, i64 noundef %i.aj, i32 noundef %.2.i26) #58
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.ak = getelementptr i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !110
  %i.am = getelementptr i8, ptr %2, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !245 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.al, i64 %i.ap
  %i.ar = getelementptr i8, ptr %2, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !244
  tail call fastcc void @vm_raise_method_missing(ptr noundef %0, i32 noundef %i.an, ptr noundef %i.aq, i64 noundef %i.as, i32 noundef %.2.i26) #58
  unreachable

bb.h:                                             ; preds = %vm_ci_mid.exit
  %i.at = tail call fastcc i64 @vm_call_method_missing_body(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %i.b, i32 noundef %.2.i26)
  ret i64 %i.at
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_fwd_setup(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val20 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %.val20, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158  ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !212  ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 240
  %i.l = load i32, ptr %i.k, align 8, !tbaa !211  ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !242
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !240  ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %.not.i.i = trunc i64 %i.o to i1
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 1
  %i.r = and i32 %i.q, 32767
  br label %vm_ci_argc.exit23

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr i8, ptr %i.n, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !197
  %i.u = trunc i64 %i.t to i32
  br label %vm_ci_argc.exit23

vm_ci_argc.exit23:                                ; preds = %bb.b, %bb.c
  %.pn = phi i32 [ %i.r, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.v = add i32 %.pn, %i.l
  %i.w = add i32 %.pn, %i.j                       ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !110
  %i.z = getelementptr i8, ptr %2, i64 32         ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !245
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr [8 x i8], ptr %i.y, i64 %i.ac
  %i.ae = tail call fastcc i32 @vm_callee_setup_arg(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %.val20, ptr noundef %i.ad, i32 noundef %i.w, i32 noundef %i.v) ; 2 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !242
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !240 ; 2 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %.not.i.i.i = trunc i64 %i.ai to i1
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %vm_ci_argc.exit23
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = lshr i32 %i.aj, 16
  br label %vm_ci_flag.exit.i

bb.e:                                             ; preds = %vm_ci_argc.exit23
  %i.al = getelementptr i8, ptr %i.ag, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !196
  %i.an = trunc i64 %i.am to i32
  br label %vm_ci_flag.exit.i

vm_ci_flag.exit.i:                                ; preds = %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.ak, %bb.d ], [ %i.an, %bb.e ]
  %i.ao = and i32 %.0.i.i, 128
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !109

bb.f:                                             ; preds = %vm_ci_flag.exit.i
  %i.ap = getelementptr i8, ptr %i.ah, i64 16
  %.val.i = load ptr, ptr %i.ap, align 8, !tbaa !210 ; 2 uses
  %i.aq = getelementptr i8, ptr %.val.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !119
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %.val14.i = load ptr, ptr %i.as, align 8, !tbaa !64 ; 2 uses
  %i.at = load ptr, ptr %i.x, align 8, !tbaa !110
  %i.au = load i32, ptr %i.z, align 8, !tbaa !245
  %i.av = sext i32 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr [8 x i8], ptr %i.at, i64 %i.aw ; 2 uses
  %i.ay = sext i32 %i.w to i64
  %i.az = getelementptr [8 x i8], ptr %i.ax, i64 %i.ay ; 5 uses
  %i.ba = getelementptr i8, ptr %i.ax, i64 -8
  store ptr %i.ba, ptr %i.x, align 8, !tbaa !110
  %i.bb = getelementptr i8, ptr %2, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !244
  %i.bd = getelementptr i8, ptr %2, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !243
  %i.bf = ptrtoint ptr %.val.i to i64
  %i.bg = getelementptr i8, ptr %.val14.i, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !158 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !177
  %i.bk = sext i32 %i.ae to i64
  %i.bl = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = sub i32 %i.l, %i.j                      ; 5 uses
  %i.bn = getelementptr i8, ptr %i.bh, i64 264
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !308
  %i.bp = getelementptr i8, ptr %0, i64 16        ; 2 uses
end_hunk_2
begin_hunk_3_@vm_invoke_symbol_block:bb.a
  br i1 %i.q, label %.critedge50, label %.critedge, !prof !200

.critedge50:                                      ; preds = %bb.f, %bb.e, %bb.d, %vm_ci_kwarg.exit
  tail call fastcc void @CALLER_SETUP_ARG(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef -2)
  %i.r = getelementptr i8, ptr %2, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !416  ; 2 uses
  %.not47 = icmp eq i64 %i.s, 0
  br i1 %.not47, label %bb.h, label %bb.g, !prof !109

bb.g:                                             ; preds = %.critedge50
  %i.t = tail call i64 @rb_ary_shift(i64 noundef %i.s) #23
  %i.u = getelementptr i8, ptr %2, i64 24         ; 2 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !244
  %i.v = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110  ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.x, ptr %i.v, align 8, !tbaa !110
  %i.y = getelementptr i8, ptr %i.w, i64 -8       ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !50
  store i64 %i.z, ptr %i.w, align 8, !tbaa !50
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !244
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !50
  br label %bb.k

bb.h:                                             ; preds = %.critedge50
  %i.ab = load i32, ptr %i.h, align 8, !tbaa !245 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = load i64, ptr @rb_eArgError, align 8, !tbaa !50
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.163) #42
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !110
  %i.ag = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.h, align 8, !tbaa !245
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr [8 x i8], ptr %i.af, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !50
  %i.am = getelementptr i8, ptr %2, i64 24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !244
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.j ]
  %i.an = getelementptr i8, ptr %2, i64 36
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !246, !range !147, !noundef !101
  %i.ap = shl nuw nsw i8 %i.ao, 6
  %i.aq = zext nneg i8 %i.ap to i32
  %spec.select = or disjoint i32 %.0, %i.aq
  br label %bb.n

.critedge:                                        ; preds = %vm_ci_flag.exit, %.thread, %vm_ci_kwarg.exit
  %i.ar = icmp slt i32 %i.i, 1
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.as = load i64, ptr @rb_eArgError, align 8, !tbaa !50
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.as, ptr noundef nonnull @.str.163) #42
  unreachable

bb.m:                                             ; preds = %.critedge
  %i.at = getelementptr i8, ptr %2, i64 32
  %i.au = getelementptr i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !110
  %i.aw = add nsw i32 %i.i, -1                    ; 2 uses
  store i32 %i.aw, ptr %i.at, align 8, !tbaa !245
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.av, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !50
  %i.bc = getelementptr i8, ptr %2, i64 24
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !244
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m
  %.1 = phi i32 [ %.0.i, %bb.m ], [ %spec.select, %bb.k ]
  %i.bd = tail call fastcc i64 @vm_call_symbol(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %5, i32 noundef %.1)
  ret i64 %i.bd
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @vm_call_opt_struct_aset0(ptr nofree noundef readonly captures(none) %0, i64 noundef returned %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !244  ; 6 uses
  %i.c = icmp ne i64 %i.b, 0
  %i.d = and i64 %i.b, 7
  %i.e = icmp eq i64 %i.d, 0
  %.not3.i.i = and i1 %i.c, %i.e
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !191

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !114  ; 4 uses
  %i.h = and i64 %i.g, 2048
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !312

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %i.b) #42
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.i = and i64 %i.g, 31
  %i.j = icmp ne i64 %i.i, 5
  %i.k = and i64 %i.g, 49152
  %.not8.i = icmp eq i64 %i.k, 0
  %or.cond.i = or i1 %i.j, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !353

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %i.b) #23
  %.pre = load i64, ptr %i.f, align 8, !tbaa !114
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.l = phi i64 [ %i.g, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %bb.b ]
  %i.m = getelementptr i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !248
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %.val = load ptr, ptr %i.o, align 8, !tbaa !210
  %i.p = getelementptr i8, ptr %.val, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !119
  %i.r = getelementptr i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !64
  %i.t = zext i32 %i.s to i64
  %i.u = and i64 %i.l, 1040384
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_check_frozen_inline.exit
  %i.v = getelementptr i8, ptr %i.f, i64 16
  br label %RSTRUCT_CONST_PTR.exit.i

bb.d:                                             ; preds = %rb_check_frozen_inline.exit
  %i.w = getelementptr i8, ptr %i.f, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64
  br label %RSTRUCT_CONST_PTR.exit.i

RSTRUCT_CONST_PTR.exit.i:                         ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.v, %bb.c ], [ %i.x, %bb.d ]
  %i.y = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.t
  store i64 %1, ptr %i.y, align 8, !tbaa !50
  %i.z = icmp eq i64 %1, 0
  %i.aa = and i64 %1, 7
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = or i1 %i.z, %i.ab
  br i1 %i.ac, label %internal_RSTRUCT_SET.exit, label %bb.e

bb.e:                                             ; preds = %RSTRUCT_CONST_PTR.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.b, i64 noundef %1) #23
  br label %internal_RSTRUCT_SET.exit

internal_RSTRUCT_SET.exit:                        ; preds = %RSTRUCT_CONST_PTR.exit.i, %bb.e
  ret i64 %1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @refined_method_callable_without_refinement(ptr nofree readonly captures(ret: address, provenance) %.16.val.8.val) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %.16.val.8.val, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !220
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @rb_notimplement() #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.16.val.8.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119  ; 2 uses
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %i.e, align 8
  %i.g = and i8 %i.f, 15
  %i.h = icmp eq i8 %i.g, 7
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ null, %bb.e ], [ %.16.val.8.val, %bb.d ]
  ret ptr %.0
}

; Function Attrs: noreturn
declare void @rb_notimplement() local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_super_method(ptr noundef %0, ptr noundef captures(address) %1, ptr noundef %2) #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.147) #57
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @vm_call_method(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  ret i64 %i.b
}

declare i64 @rb_hash_lookup(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_call_method_missing_body(ptr noundef %0, ptr noundef captures(address) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.rb_forwarding_call_data, align 8 ; 6 uses
  %6 = alloca %struct.rb_callinfo, align 8        ; 6 uses
  %7 = alloca %struct.rb_callcache, align 8       ; 6 uses
  %i.b = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110  ; 2 uses
  %i.d = getelementptr i8, ptr %2, i64 32         ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !245  ; 3 uses
  %i.f = sext i32 %i.e to i64
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr [8 x i8], ptr %i.c, i64 %i.g ; 3 uses
  %i.i = ptrtoint ptr %3 to i64                   ; 3 uses
  %.not.i.i = trunc i64 %i.i to i1                ; 3 uses
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.i to i32
  %i.k = lshr i32 %i.j, 16
  br label %vm_ci_flag.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %3, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !196
  %i.n = trunc i64 %i.m to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.k, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %i.o = or i32 %.0.i, 1028
  %i.p = add i32 %i.e, 1                          ; 3 uses
  store i32 %i.p, ptr %i.d, align 8, !tbaa !245
  %i.q = getelementptr i8, ptr %i.c, i64 64
  %.not = icmp ugt ptr %1, %i.q
  br i1 %.not, label %bb.e, label %bb.d, !prof !109

bb.d:                                             ; preds = %vm_ci_flag.exit
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

bb.e:                                             ; preds = %vm_ci_flag.exit
  %i.r = icmp ugt i32 %i.p, 1
  br i1 %i.r, label %rbimpl_size_mul_or_raise.exit, label %bb.f

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.e
  %i.s = zext i32 %i.e to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = getelementptr i8, ptr %i.h, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.u, ptr noundef nonnull align 1 %i.h, i64 noundef %i.t, i1 noundef false) #23
  br label %bb.f

bb.f:                                             ; preds = %rbimpl_size_mul_or_raise.exit, %bb.e
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = lshr i64 %i.i, 32
  br label %vm_ci_mid.exit

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %3, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !190
  br label %vm_ci_mid.exit

vm_ci_mid.exit:                                   ; preds = %bb.g, %bb.h
  %.0.i31 = phi i64 [ %i.v, %bb.g ], [ %i.x, %bb.h ]
  %i.y = tail call i64 @rb_id2sym(i64 noundef %.0.i31) #23
  store i64 %i.y, ptr %i.h, align 8, !tbaa !50
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !110
  %i.ab = getelementptr i8, ptr %0, i64 145
  %i.ac = trunc i32 %4 to i8
  store i8 %i.ac, ptr %i.ab, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 106522, ptr %6, align 8, !tbaa !351
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %.not.i.i, label %vm_ci_kwarg.exit, label %bb.i

bb.i:                                             ; preds = %vm_ci_mid.exit
  %i.ae = getelementptr i8, ptr %3, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !251
  br label %vm_ci_kwarg.exit

vm_ci_kwarg.exit:                                 ; preds = %vm_ci_mid.exit, %bb.i
  %.0.i33 = phi ptr [ %i.af, %bb.i ], [ null, %vm_ci_mid.exit ]
  store ptr %.0.i33, ptr %i.ad, align 8, !tbaa !251
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 2913, ptr %i.ag, align 8, !tbaa !190
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ai = zext i32 %i.o to i64
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !196
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ak = zext i32 %i.p to i64
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !197
  store ptr %6, ptr %5, align 8, !tbaa !240
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = and i32 %.0.i, 8192
  %.not29 = icmp eq i32 %i.am, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  br i1 %.not29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %vm_ci_kwarg.exit
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ao = load ptr, ptr %2, align 8, !tbaa !242
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !286
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !286
  br label %bb.k

bb.k:                                             ; preds = %vm_ci_kwarg.exit, %bb.j
  store ptr %5, ptr %2, align 8, !tbaa !242
  store i64 3190810, ptr %7, align 8, !tbaa !348
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 36, ptr %i.ar, align 8, !tbaa !209
  %i.as = getelementptr i8, ptr %2, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !244 ; 6 uses
  %i.au = icmp eq i64 %i.at, 0
  %i.av = and i64 %i.at, 7
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = or i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = inttoptr i64 %i.at to ptr
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  br label %rb_class_of.exit

bb.m:                                             ; preds = %bb.k
  switch i64 %i.at, label %bb.p [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.n
    i64 20, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  br label %rb_class_of.exit

bb.o:                                             ; preds = %bb.m
  br label %rb_class_of.exit

bb.p:                                             ; preds = %bb.m
  %i.ba = trunc i64 %i.at to i1
  br i1 %i.ba, label %rb_class_of.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = and i64 %i.at, 254
  %i.bc = icmp eq i64 %i.bb, 12
  %spec.select.i = select i1 %i.bc, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.in.i = phi ptr [ %i.az, %bb.l ], [ @rb_cNilClass, %bb.n ], [ @rb_cTrueClass, %bb.o ], [ @rb_cFalseClass, %bb.m ], [ @rb_cInteger, %bb.p ], [ %spec.select.i, %bb.q ]
  %.0.i34 = load i64, ptr %.0.in.i, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bd = call fastcc ptr @search_method0(i64 noundef %.0.i34, i64 noundef 2913, ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %rb_callable_method_entry_without_refinements.exit, label %bb.r

bb.r:                                             ; preds = %rb_class_of.exit
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !333 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not9.i.i.i, label %rb_callable_method_entry_without_refinements.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load i8, ptr %i.bf, align 8
  %i.bh = and i8 %i.bg, 15
  switch i8 %i.bh, label %search_method_protect.exit.thread.fold.split.i.i [
    i8 7, label %rb_callable_method_entry_without_refinements.exit
    i8 11, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.bi = call fastcc ptr @resolve_refined_method(i64 noundef 4, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.a) ; 3 uses
  %.not22.i.i = icmp eq ptr %i.bi, null
  br i1 %.not22.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !333 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not23.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = load i8, ptr %i.bk, align 8
  %i.bm = and i8 %i.bl, 15
  %i.bn = icmp eq i8 %i.bm, 7
  br i1 %i.bn, label %bb.w, label %rb_callable_method_entry_without_refinements.exit

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  br label %rb_callable_method_entry_without_refinements.exit

search_method_protect.exit.thread.fold.split.i.i: ; preds = %bb.s
  br label %rb_callable_method_entry_without_refinements.exit

rb_callable_method_entry_without_refinements.exit: ; preds = %rb_class_of.exit, %bb.r, %bb.s, %bb.v, %bb.w, %search_method_protect.exit.thread.fold.split.i.i
  %.1.i.i = phi ptr [ null, %bb.w ], [ %i.bi, %bb.v ], [ null, %bb.s ], [ null, %rb_class_of.exit ], [ null, %bb.r ], [ %i.bd, %search_method_protect.exit.thread.fold.split.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !50
  %i.bq = call fastcc ptr @prepare_callable_method_entry(i64 noundef %i.bp, i64 noundef 2913, ptr noundef %.1.i.i, i32 noundef 1)
end_hunk_3
