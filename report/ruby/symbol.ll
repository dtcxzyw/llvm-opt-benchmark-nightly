Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/symbol?download=true
inline.NumInlined: 215
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rb_str_intern:bb.a

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @rb_builtin_class_name(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_id2sym(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %0, 1
  %i.b = icmp eq i64 %i.a, 0
  %i.c = icmp ugt i64 %0, 171
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %0, 8
  %i.e = or disjoint i64 %i.d, 12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %0, 4
  %.0.i.i = trunc i64 %i.f to i32
  %i.g = tail call fastcc i64 @get_id_serial_entry(i32 noundef %.0.i.i, i32 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.g, %bb.c ], [ %i.e, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_sym2str(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %RB_DYNAMIC_SYM_P.exit.thread, label %RB_DYNAMIC_SYM_P.exit

RB_DYNAMIC_SYM_P.exit:                            ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 20
  br i1 %i.h, label %bb.b, label %RB_DYNAMIC_SYM_P.exit.thread

bb.b:                                             ; preds = %RB_DYNAMIC_SYM_P.exit
  %i.i = getelementptr i8, ptr %i.e, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38
  br label %bb.c

RB_DYNAMIC_SYM_P.exit.thread:                     ; preds = %bb.a, %RB_DYNAMIC_SYM_P.exit
  %i.k = icmp ugt i64 %0, 44031
  %.0.in.i.i.i.i.v = select i1 %i.k, i64 12, i64 8
  %.0.in.i.i.i.i = lshr i64 %0, %.0.in.i.i.i.i.v
  %.0.i.i.i.i = trunc i64 %.0.in.i.i.i.i to i32
  %i.l = tail call fastcc i64 @get_id_serial_entry(i32 noundef %.0.i.i.i.i, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %RB_DYNAMIC_SYM_P.exit.thread, %bb.b
  %.0 = phi i64 [ %i.j, %bb.b ], [ %i.l, %RB_DYNAMIC_SYM_P.exit.thread ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_id2name(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, 171
  %i.b = lshr i64 %0, 4
  %.0.in.i.i.i.i = select i1 %i.a, i64 %i.b, i64 %0
  %.0.i.i.i.i = trunc i64 %.0.in.i.i.i.i to i32
  %i.c = tail call fastcc i64 @get_id_serial_entry(i32 noundef %.0.i.i.i.i, i32 noundef 0) ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  ret ptr %.0
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define hidden range(i64 15, 68719476736) i64 @rb_make_internal_id() local_unnamed_addr #7 {
bb.a:
  %i.a = atomicrmw volatile add ptr @ruby_global_symbols, i32 1 seq_cst, align 4
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 4
  %i.d = or disjoint i64 %i.c, 15
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 15, 0) i64 @rb_make_temporary_id(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i64 4294901760, %0                   ; 2 uses
  %i.b = load atomic volatile i32, ptr @ruby_global_symbols seq_cst, align 8
  %i.c = zext i32 %i.b to i64
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !20
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.7, i64 noundef %0) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = shl i64 %i.a, 4
  %i.g = or disjoint i64 %i.f, 15
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_sym_all_symbols() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !34
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #20
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), align 8, !tbaa !16
  %i.d = call i32 @rb_concurrent_set_size(i64 noundef %i.c) #20
  %i.e = zext i32 %i.d to i64
  %i.f = call i64 @rb_ary_new_capa(i64 noundef %i.e) #20 ; 2 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), align 8, !tbaa !16
  %i.h = inttoptr i64 %i.f to ptr
  call void @rb_concurrent_set_foreach_with_replace(i64 noundef %i.g, ptr noundef nonnull @symbols_i, ptr noundef %i.h) #20
  %i.i = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !34
  %.not.i.i5 = icmp eq ptr %i.i, null
  br i1 %.not.i.i5, label %bb.c, label %rb_vm_lock_leave.exit

bb.c:                                             ; preds = %rb_vm_lock_enter.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #20
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %rb_vm_lock_enter.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i64 %i.f
}

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #2

declare i32 @rb_concurrent_set_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 3) i32 @symbols_i(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = load i64, ptr %0, align 8, !tbaa !20     ; 4 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -2
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i32 @rb_objspace_garbage_object_p(i64 noundef %i.b) #20
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ %i.b, %bb.c ]
  %i.h = tail call i64 @rb_ary_push(i64 noundef %i.a, i64 noundef %.sink) #20 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi i32 [ 2, %bb.c ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: norecurse nounwind sspstrong uwtable
define dso_local range(i64 0, 4294967296) i64 @rb_sym_immortal_count() local_unnamed_addr #7 {
bb.a:
  %i.a = load atomic volatile i32, ptr @ruby_global_symbols seq_cst, align 8
  %i.b = add i32 %i.a, -1
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @rb_is_const_id(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ugt i64 %0, 171
  %i.b = and i64 %0, 14
  %i.c = icmp eq i64 %i.b, 10
  %i.d = and i1 %i.a, %i.c
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @rb_is_class_id(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ugt i64 %0, 171
  %i.b = and i64 %0, 14
  %i.c = icmp eq i64 %i.b, 12
  %i.d = and i1 %i.a, %i.c
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @rb_is_global_id(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ugt i64 %0, 171
  %i.b = and i64 %0, 14
  %i.c = icmp eq i64 %i.b, 6
  %i.d = and i1 %i.a, %i.c
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @rb_is_instance_id(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ugt i64 %0, 171
  %i.b = and i64 %0, 14
  %i.c = icmp eq i64 %i.b, 2
  %i.d = and i1 %i.a, %i.c
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @rb_is_attrset_id(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %0, 146
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %0, 171
  %i.c = and i64 %0, 14
  %i.d = icmp eq i64 %i.c, 8
  %i.e = and i1 %i.b, %i.d
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ 1, %bb.a ], [ %i.f, %bb.b ]
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @rb_is_local_id(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ugt i64 %0, 171
  %i.b = and i64 %0, 14
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i1 %i.a, %i.c
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @rb_is_junk_id(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ugt i64 %0, 171
  %i.b = and i64 %0, 14
  %i.c = icmp eq i64 %i.b, 14
  %i.d = and i1 %i.a, %i.c
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @rb_is_const_sym(i64 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = and i64 %0, 255
  %i.b = icmp eq i64 %i.a, 12
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %0, 8
  %i.d = icmp ult i64 %0, 44032
  br i1 %i.d, label %sym_type.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i64 [ %i.c, %bb.b ], [ %i.g, %bb.c ]
  %i.h = and i64 %.0.i, 14
  %i.i = icmp eq i64 %i.h, 10
  %i.j = zext i1 %i.i to i32
  br label %sym_type.exit

sym_type.exit:                                    ; preds = %bb.b, %bb.d
  %.06.i = phi i32 [ %i.j, %bb.d ], [ 0, %bb.b ]
  ret i32 %.06.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @rb_is_attrset_sym(i64 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = and i64 %0, 255
  %i.b = icmp eq i64 %i.a, 12
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %0, 8
  %i.d = icmp ult i64 %0, 44032
  br i1 %i.d, label %sym_type.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i64 [ %i.c, %bb.b ], [ %i.g, %bb.c ]
  %i.h = and i64 %.0.i, 14
  %i.i = icmp eq i64 %i.h, 8
  %i.j = zext i1 %i.i to i32
  br label %sym_type.exit

sym_type.exit:                                    ; preds = %bb.b, %bb.d
  %.06.i = phi i32 [ %i.j, %bb.d ], [ 0, %bb.b ]
  ret i32 %.06.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_check_id(ptr nofree noundef nonnull captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile i64, ptr %0, align 8, !tbaa !20 ; 8 uses
  %i.b = and i64 %i.a, 255
  %i.c = icmp eq i64 %i.b, 12
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.a, 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.a, 0
  %i.f = and i64 %i.a, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %RB_DYNAMIC_SYM_P.exit

RB_DYNAMIC_SYM_P.exit:                            ; preds = %bb.c
  %i.i = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = and i64 %i.j, 31
  switch i64 %i.k, label %rbimpl_RB_TYPE_P_fastpath.exit.thread [
    i64 20, label %bb.d
    i64 5, label %bb.h
  ]

bb.d:                                             ; preds = %RB_DYNAMIC_SYM_P.exit
  %i.l = getelementptr i8, ptr %i.i, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %i.n = and i64 %i.m, -15
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.i, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !38
  store volatile i64 %i.p, ptr %0, align 8, !tbaa !20
  br label %bb.k

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %RB_DYNAMIC_SYM_P.exit, %bb.c
  %i.q = tail call i64 @rb_check_string_type(i64 noundef %i.a) #20 ; 3 uses
  %i.r = icmp eq i64 %i.q, 4
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.s = load i64, ptr @rb_eTypeError, align 8, !tbaa !20
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.8, i64 noundef %i.a) #21
  unreachable

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  store volatile i64 %i.q, ptr %0, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %RB_DYNAMIC_SYM_P.exit, %bb.g
  %.0 = phi i64 [ %i.a, %RB_DYNAMIC_SYM_P.exit ], [ %i.q, %bb.g ] ; 5 uses
  %i.t = tail call ptr @rb_enc_get(i64 noundef %.0) #20 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 20
  %.val.i.i = load i32, ptr %i.u, align 4, !tbaa !24
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_asciicompat.exit.i, label %sym_check_asciionly.exit

rb_enc_asciicompat.exit.i:                        ; preds = %bb.h
  %i.v = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.t) #22
  %.not3.i.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i.i, label %bb.i, label %sym_check_asciionly.exit

bb.i:                                             ; preds = %rb_enc_asciicompat.exit.i
  %i.w = tail call i32 @rb_enc_str_coderange(i64 noundef %.0) #20
  %cond = icmp eq i32 %i.w, 3145728
  br i1 %cond, label %bb.j, label %sym_check_asciionly.exit

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr @rb_eEncodingError, align 8, !tbaa !20
  %i.y = tail call ptr @rb_enc_get(i64 noundef %.0) #20
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val.i = load ptr, ptr %i.z, align 8, !tbaa !25
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.114, ptr noundef %.val.i, i64 noundef %.0) #21
  unreachable

sym_check_asciionly.exit:                         ; preds = %bb.i, %bb.h, %rb_enc_asciicompat.exit.i
  %i.aa = tail call fastcc i64 @lookup_str_id(i64 noundef %.0)
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %sym_check_asciionly.exit, %bb.e, %bb.b
  %.017 = phi i64 [ %i.d, %bb.b ], [ %i.aa, %sym_check_asciionly.exit ], [ 0, %bb.e ], [ %i.m, %bb.d ]
  ret i64 %.017
}

declare i64 @rb_check_string_type(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @lookup_str_id(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.sym_set_static_sym_entry, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i64 0, ptr %1, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %0, ptr %i.a, align 8, !tbaa !28
  %i.b = ptrtoint ptr %1 to i64
  %i.c = or disjoint i64 %i.b, 1
  %i.d = call i64 @rb_concurrent_set_find(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), i64 noundef %i.c) #20 ; 6 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %sym_find.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %i.d, -2
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %i.i = and i64 %i.h, 255
  %i.j = icmp eq i64 %i.i, 12
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.14) #23
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = and i64 %i.d, 6
  %.not5.i = icmp eq i64 %i.k, 0
  br i1 %.not5.i, label %RB_DYNAMIC_SYM_P.exit.i.i, label %RB_DYNAMIC_SYM_P.exit.thread.i.i

RB_DYNAMIC_SYM_P.exit.i.i:                        ; preds = %bb.e
  %i.l = inttoptr i64 %i.d to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !30
  %i.n = and i64 %i.m, 31
end_hunk_0
