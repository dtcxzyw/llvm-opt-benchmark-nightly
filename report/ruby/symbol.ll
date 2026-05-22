inline.NumInlined: 215
inline.NumDeleted: 75
begin_hunk_0_@rb_enc_symname_type:bb.a
  %i.ea = and i32 %i.dz, %3
  %.not65 = icmp eq i32 %i.ea, 0
  br i1 %.not65, label %enc_synmane_type_leading_chars.exit.thread91, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eb = getelementptr i8, ptr %.152, i64 1
  br label %.critedge

.critedge:                                        ; preds = %.critedge2, %enc_synmane_type_leading_chars.exit.thread, %bb.ap, %bb.au, %bb.as, %bb.ar, %enc_synmane_type_leading_chars.exit
  %.2 = phi ptr [ %i.cs, %enc_synmane_type_leading_chars.exit ], [ %i.cq, %enc_synmane_type_leading_chars.exit.thread ], [ %.051102, %bb.ap ], [ %i.dv, %bb.ar ], [ %i.dv, %bb.as ], [ %i.eb, %bb.au ], [ %i.dq, %.critedge2 ]
  %.1 = phi i32 [ %.sroa.0.4.extract.trunc, %enc_synmane_type_leading_chars.exit ], [ %.sroa.32.0.i.ph, %enc_synmane_type_leading_chars.exit.thread ], [ %.sroa.0.4.extract.trunc88, %bb.ap ], [ 14, %bb.ar ], [ 14, %bb.as ], [ 8, %bb.au ], [ %.sroa.0.4.extract.trunc88, %.critedge2 ]
  %i.ec = icmp eq ptr %.2, %i.c
  %i.ed = select i1 %i.ec, i32 %.1, i32 -1
  br label %enc_synmane_type_leading_chars.exit.thread91

enc_synmane_type_leading_chars.exit.thread91:     ; preds = %bb.b, %rb_enc_asciicompat.exit.i, %bb.a, %bb.n, %bb.at, %bb.aq, %bb.an, %enc_synmane_type_leading_chars.exit, %.critedge, %bb.ao
  %.050 = phi i32 [ %i.ed, %.critedge ], [ -1, %bb.aq ], [ -1, %enc_synmane_type_leading_chars.exit ], [ -1, %bb.ao ], [ 8, %bb.an ], [ -1, %bb.at ], [ -1, %bb.n ], [ -1, %bb.a ], [ -1, %rb_enc_asciicompat.exit.i ], [ -1, %bb.b ]
  ret i32 %.050
}

declare i32 @rb_enc_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @rb_static_id_valid_p(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %0, 8
  %i.b = or disjoint i64 %i.a, 12
  %i.c = icmp ugt i64 %0, 171
  %i.d = lshr i64 %0, 4
  %.0.in.i.i = select i1 %i.c, i64 %i.d, i64 %0
  %.0.i.i = trunc i64 %.0.in.i.i to i32
  %i.e = tail call fastcc i64 @get_id_serial_entry(i32 noundef %.0.i.i, i32 noundef 1)
  %i.f = icmp eq i64 %i.b, %i.e
  %i.g = zext i1 %i.f to i32
  ret i32 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_intern3(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sym_set_static_sym_entry, align 8 ; 5 uses
  %4 = alloca %struct.RString, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.a = call i64 @rb_setup_fake_str(ptr noundef nonnull %4, ptr noundef %0, i64 noundef %1, ptr noundef %2) #20 ; 2 uses
  call void @rb_obj_freeze_inline(i64 noundef %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i64 0, ptr %3, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.a, ptr %i.b, align 8, !tbaa !26
  %i.c = ptrtoint ptr %3 to i64
  %i.d = or disjoint i64 %i.c, 1
  %i.e = call i64 @rb_concurrent_set_find_or_insert(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), i64 noundef %i.d, ptr noundef null) #20 ; 6 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.e, -2
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = and i64 %i.i, 255
  %i.k = icmp eq i64 %i.j, 12
  br i1 %i.k, label %sym_find_or_insert_static_symbol.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.14) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.e, 0
  %i.m = and i64 %i.e, 6
  %i.n = icmp ne i64 %i.m, 0
  %i.o = or i1 %i.l, %i.n
  br i1 %i.o, label %RB_DYNAMIC_SYM_P.exit.thread.i.i, label %RB_DYNAMIC_SYM_P.exit.i.i

RB_DYNAMIC_SYM_P.exit.i.i:                        ; preds = %bb.d
  %i.p = inttoptr i64 %i.e to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27
  %i.r = and i64 %i.q, 31
  %i.s = icmp eq i64 %i.r, 20
  br i1 %i.s, label %sym_find_or_insert_static_symbol.exit, label %RB_DYNAMIC_SYM_P.exit.thread.i.i

RB_DYNAMIC_SYM_P.exit.thread.i.i:                 ; preds = %RB_DYNAMIC_SYM_P.exit.i.i, %bb.d
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.14) #23
  unreachable

sym_find_or_insert_static_symbol.exit:            ; preds = %bb.b, %RB_DYNAMIC_SYM_P.exit.i.i
  %.0.i.i = phi i64 [ %i.e, %RB_DYNAMIC_SYM_P.exit.i.i ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.t = call i64 @rb_sym2id(i64 noundef %.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i64 %i.t
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i64 @rb_setup_fake_str(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @rb_obj_freeze_inline(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_intern2(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call nonnull ptr @rb_usascii_encoding() #20
  %i.b = tail call i64 @rb_intern3(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_intern(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.b = tail call nonnull ptr @rb_usascii_encoding() #20
  %i.c = tail call i64 @rb_intern3(ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef nonnull %i.b)
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_intern_str(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.sym_set_static_sym_entry, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i64 0, ptr %1, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %0, ptr %i.a, align 8, !tbaa !26
  %i.b = ptrtoint ptr %1 to i64
  %i.c = or disjoint i64 %i.b, 1
  %i.d = call i64 @rb_concurrent_set_find_or_insert(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), i64 noundef %i.c, ptr noundef null) #20 ; 6 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.d, -2
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = and i64 %i.h, 255
  %i.j = icmp eq i64 %i.i, 12
  br i1 %i.j, label %sym_find_or_insert_static_symbol.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.14) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.d, 0
  %i.l = and i64 %i.d, 6
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %RB_DYNAMIC_SYM_P.exit.thread.i.i, label %RB_DYNAMIC_SYM_P.exit.i.i

RB_DYNAMIC_SYM_P.exit.i.i:                        ; preds = %bb.d
  %i.o = inttoptr i64 %i.d to ptr
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27
  %i.q = and i64 %i.p, 31
  %i.r = icmp eq i64 %i.q, 20
  br i1 %i.r, label %sym_find_or_insert_static_symbol.exit, label %RB_DYNAMIC_SYM_P.exit.thread.i.i

RB_DYNAMIC_SYM_P.exit.thread.i.i:                 ; preds = %RB_DYNAMIC_SYM_P.exit.i.i, %bb.d
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.14) #23
  unreachable

sym_find_or_insert_static_symbol.exit:            ; preds = %bb.b, %RB_DYNAMIC_SYM_P.exit.i.i
  %.0.i.i = phi i64 [ %i.d, %RB_DYNAMIC_SYM_P.exit.i.i ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.s = call i64 @rb_sym2id(i64 noundef %.0.i.i)
  ret i64 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_obj_is_symbol_table(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), align 8, !tbaa !11
  %i.b = icmp eq i64 %0, %i.a
  ret i1 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_sym_global_symbol_table_foreach_weak_reference(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.global_symbol_table_foreach_weak_reference_data, align 8 ; 5 uses
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %0, ptr %2, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !52
  call void @rb_concurrent_set_foreach_with_replace(i64 noundef %i.a, ptr noundef nonnull @rb_sym_global_symbol_table_foreach_weak_reference_i, ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @rb_sym_global_symbol_table_foreach_weak_reference_i(ptr noundef %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = load i64, ptr %0, align 8, !tbaa !18       ; 2 uses
  %3 = trunc i64 %2 to i1
  %i.a = and i64 %2, -2
  %i.b = inttoptr i64 %i.a to ptr
  %4 = getelementptr i8, ptr %i.b, i64 8
  %.sink = select i1 %3, ptr %4, ptr %0
  %.sink11 = load ptr, ptr %1, align 8, !tbaa !50
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.e = tail call i32 %.sink11(ptr noundef %.sink, ptr noundef %i.d) #20
  ret i32 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_gc_free_dsymbol(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !36
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), align 8, !tbaa !11
  %i.e = tail call i64 @rb_concurrent_set_delete_by_identity(i64 noundef %i.d, i64 noundef %0) #20 ; 0 uses
  store i64 0, ptr %i.b, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i64 @rb_concurrent_set_delete_by_identity(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 1, -6) i64 @rb_str_intern(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.sym_set_static_sym_entry, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i64 0, ptr %1, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %0, ptr %i.a, align 8, !tbaa !26
  %i.b = ptrtoint ptr %1 to i64
  %i.c = or disjoint i64 %i.b, 1
  %i.d = call i64 @rb_concurrent_set_find_or_insert(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ruby_global_symbols, i64 8), i64 noundef %i.c, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20 ; 6 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.d, -2
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = and i64 %i.h, 255
  %i.j = icmp eq i64 %i.i, 12
  br i1 %i.j, label %sym_find_or_insert_dynamic_symbol.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.14) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.d, 0
  %i.l = and i64 %i.d, 6
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %RB_DYNAMIC_SYM_P.exit.thread.i.i, label %RB_DYNAMIC_SYM_P.exit.i.i

RB_DYNAMIC_SYM_P.exit.i.i:                        ; preds = %bb.d
  %i.o = inttoptr i64 %i.d to ptr
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27
  %i.q = and i64 %i.p, 31
  %i.r = icmp eq i64 %i.q, 20
  br i1 %i.r, label %sym_find_or_insert_dynamic_symbol.exit, label %RB_DYNAMIC_SYM_P.exit.thread.i.i

RB_DYNAMIC_SYM_P.exit.thread.i.i:                 ; preds = %RB_DYNAMIC_SYM_P.exit.i.i, %bb.d
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.14) #23
  unreachable

sym_find_or_insert_dynamic_symbol.exit:           ; preds = %bb.b, %RB_DYNAMIC_SYM_P.exit.i.i
  %.0.i.i = phi i64 [ %i.d, %RB_DYNAMIC_SYM_P.exit.i.i ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i64 %.0.i.i
}

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
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 20
  br i1 %i.h, label %bb.b, label %RB_DYNAMIC_SYM_P.exit.thread

bb.b:                                             ; preds = %RB_DYNAMIC_SYM_P.exit
  %i.i = getelementptr i8, ptr %i.e, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !36
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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nounwind sspstrong memory(readwrite, argmem: none, target_mem: none) uwtable
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
  %i.e = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !18
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
end_hunk_0
