inline.NumInlined: 561
inline.NumDeleted: 126
begin_hunk_0_@rb_undef_methods_from:bb.a
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !75, !range !76, !noundef !77
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.n = load i64, ptr %i.b, align 8, !tbaa !19
  %i.o = and i64 %i.n, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.q = load i64, ptr %i.i, align 8, !tbaa !11
  %i.r = call i32 @rb_st_lookup(ptr noundef nonnull %i.p, i64 noundef %i.q, ptr noundef nonnull %i.a) #18
  %.not5.i.i13.i = icmp eq i32 %i.r, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !17
  %i.t = inttoptr i64 %i.s to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.e, %bb.d, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.t, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.u = getelementptr i8, ptr %i.b, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.u, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.b, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.f
  %.0.i = phi ptr [ %i.h, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.v, %bb.f ], [ %i.j, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.w = getelementptr i8, ptr %.0.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.y = inttoptr i64 %0 to ptr
  call void @rb_id_table_foreach(ptr noundef nonnull %i.x, ptr noundef nonnull @undef_method_i, ptr noundef %i.y) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %RCLASS_EXT_READABLE.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @undef_method_i(i64 noundef %0, i64 %1, ptr noundef %2) #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  tail call void @rb_add_method(i64 noundef %i.a, i64 noundef %0, i32 noundef 7, ptr noundef null, i32 noundef 0) #18
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @rb_special_singleton_class(i64 noundef %0) local_unnamed_addr #10 {
bb.a:
  switch i64 %0, label %special_singleton_class_of.exit [
    i64 4, label %bb.b
    i64 0, label %bb.c
    i64 20, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr @rb_cNilClass, align 8, !tbaa !17
  br label %special_singleton_class_of.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_cFalseClass, align 8, !tbaa !17
  br label %special_singleton_class_of.exit

bb.d:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_cTrueClass, align 8, !tbaa !17
  br label %special_singleton_class_of.exit

special_singleton_class_of.exit:                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.c, %bb.d ], [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ 4, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_freeze_singleton_class(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  %.pre = inttoptr i64 %0 to ptr                  ; 2 uses
  br i1 %i.d, label %RCLASS_SINGLETON_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = load i64, ptr %.pre, align 8, !tbaa !19
  %i.f = and i64 %i.e, 8223
  %or.cond = icmp eq i64 %i.f, 8194
  br i1 %or.cond, label %bb.d, label %RCLASS_SINGLETON_P.exit.thread

RCLASS_SINGLETON_P.exit.thread:                   ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.g = getelementptr i8, ptr %.pre, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %RCLASS_SINGLETON_P.exit.thread
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %i.k = and i64 %i.j, 10240
  %or.cond9 = icmp eq i64 %i.k, 8192
  br i1 %or.cond9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @rb_obj_freeze_inline(i64 noundef %i.h) #18
  br label %bb.d

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %RCLASS_SINGLETON_P.exit.thread, %bb.b, %bb.c
  ret void
}

declare void @rb_obj_freeze_inline(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @rb_singleton_class_get(i64 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  switch i64 %0, label %rb_special_singleton_class.exit [
    i64 4, label %bb.c
    i64 0, label %bb.d
    i64 20, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr @rb_cNilClass, align 8, !tbaa !17
  br label %rb_special_singleton_class.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load i64, ptr @rb_cFalseClass, align 8, !tbaa !17
  br label %rb_special_singleton_class.exit

bb.e:                                             ; preds = %bb.b
  %i.g = load i64, ptr @rb_cTrueClass, align 8, !tbaa !17
  br label %rb_special_singleton_class.exit

bb.f:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %0 to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !67   ; 4 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = and i64 %i.j, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %rb_special_singleton_class.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.f
  %i.o = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19
  %i.q = and i64 %i.p, 8223
  %or.cond = icmp eq i64 %i.q, 8194
  br i1 %or.cond, label %bb.g, label %rb_special_singleton_class.exit

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.r = getelementptr i8, ptr %i.o, i64 136
  %i.s = load i64, ptr %i.r, align 8, !tbaa !69
  %.not = icmp eq i64 %i.s, %0
  %. = select i1 %.not, i64 %i.j, i64 4
  br label %rb_special_singleton_class.exit

rb_special_singleton_class.exit:                  ; preds = %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.e, %bb.d, %bb.c, %bb.b, %bb.g
  %.0 = phi i64 [ 4, %bb.f ], [ %., %bb.g ], [ %i.g, %bb.e ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ 4, %bb.b ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @singleton_class_of(i64 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not57 = and i1 %i.b, %i.d                     ; 2 uses
  br i1 %.not57, label %rb_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 62)
  switch i64 %2, label %rb_type.exit.thread [
    i64 0, label %rb_type.exit.thread38
    i64 1, label %rb_type.exit.thread38
    i64 5, label %rb_type.exit.thread38
    i64 9, label %CHILLED_STRING_MUTATED.exit.thread
  ]

rb_type.exit:                                     ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 6 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  switch i32 %i.h, label %CHILLED_STRING_MUTATED.exit [
    i32 21, label %rb_type.exit.thread
    i32 10, label %rb_type.exit.thread
    i32 4, label %rb_type.exit.thread
    i32 20, label %rb_type.exit.thread
    i32 19, label %rb_type.exit.thread38
    i32 18, label %rb_type.exit.thread38
    i32 17, label %rb_type.exit.thread38
    i32 5, label %rbimpl_RB_TYPE_P_fastpath.exit.i
  ]

rb_type.exit.thread:                              ; preds = %bb.b, %rb_type.exit, %rb_type.exit, %rb_type.exit, %rb_type.exit
  %i.i = load i64, ptr @rb_eTypeError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.38) #22
  unreachable

rb_type.exit.thread38:                            ; preds = %bb.b, %bb.b, %bb.b, %rb_type.exit, %rb_type.exit, %rb_type.exit
  switch i64 %0, label %special_singleton_class_of.exit.thread [
    i64 4, label %special_singleton_class_of.exit
    i64 0, label %bb.c
    i64 20, label %bb.d
  ]

bb.c:                                             ; preds = %rb_type.exit.thread38
  br label %special_singleton_class_of.exit

bb.d:                                             ; preds = %rb_type.exit.thread38
  br label %special_singleton_class_of.exit

special_singleton_class_of.exit:                  ; preds = %rb_type.exit.thread38, %bb.c, %bb.d
  %.0.i30.in = phi ptr [ @rb_cTrueClass, %bb.d ], [ @rb_cFalseClass, %bb.c ], [ @rb_cNilClass, %rb_type.exit.thread38 ]
  %.0.i30 = load i64, ptr %.0.i30.in, align 8, !tbaa !17 ; 2 uses
  %i.j = icmp eq i64 %.0.i30, 4
  br i1 %i.j, label %special_singleton_class_of.exit.thread, label %bb.r

special_singleton_class_of.exit.thread:           ; preds = %rb_type.exit.thread38, %special_singleton_class_of.exit
  %3 = inttoptr i64 %0 to ptr
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.39, ptr noundef %3) #19
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rb_type.exit
  %i.k = and i64 %i.f, 31
  %i.l = icmp eq i64 %i.k, 5
  %i.m = and i64 %i.f, 49152
  %i.n = icmp ne i64 %i.m, 0
  %or.cond = and i1 %i.l, %i.n
  br i1 %or.cond, label %bb.e, label %CHILLED_STRING_P.exit.thread

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.o = and i64 %i.f, -49179
  store i64 %i.o, ptr %i.e, align 8, !tbaa !19
  %i.p = trunc i64 %i.f to i16
  %trunc.i = and i16 %i.p, -16384
  switch i16 %trunc.i, label %bb.h [
    i16 -32768, label %bb.f
    i16 16384, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  tail call void @rb_warn_unchilled_symbol_to_s(i64 noundef %0) #18
  br label %CHILLED_STRING_MUTATED.exit

bb.g:                                             ; preds = %bb.e
  tail call void @rb_warn_unchilled_literal(i64 noundef %0) #18
  br label %CHILLED_STRING_MUTATED.exit

bb.h:                                             ; preds = %bb.e
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.40) #19
  unreachable

CHILLED_STRING_P.exit.thread:                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.q = and i64 %i.f, 536870912
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %CHILLED_STRING_MUTATED.exit, label %bb.i

bb.i:                                             ; preds = %CHILLED_STRING_P.exit.thread
  %i.r = load i64, ptr @rb_eTypeError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.38) #22
  unreachable

CHILLED_STRING_MUTATED.exit:                      ; preds = %bb.g, %bb.f, %CHILLED_STRING_P.exit.thread, %rb_type.exit
  %i.s = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !82
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.j, label %rb_ractor_shareable_p.exit.thread45

CHILLED_STRING_MUTATED.exit.thread:               ; preds = %bb.b
  %i.t = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !82
  %.not.i43 = icmp eq ptr %i.t, null
  br i1 %.not.i43, label %.thread, label %rb_ractor_shareable_p.exit.thread45

bb.j:                                             ; preds = %CHILLED_STRING_MUTATED.exit
  %i.u = load i64, ptr %i.e, align 8, !tbaa !19
  %i.v = and i64 %i.u, 256
  %.not.i31 = icmp eq i64 %i.v, 0
  br i1 %.not.i31, label %rb_ractor_shareable_p.exit, label %.thread

.thread:                                          ; preds = %CHILLED_STRING_MUTATED.exit.thread, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  br label %bb.l

rb_ractor_shareable_p.exit.thread45:              ; preds = %CHILLED_STRING_MUTATED.exit, %CHILLED_STRING_MUTATED.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  br label %rb_vm_lock_enter.exit

rb_ractor_shareable_p.exit:                       ; preds = %bb.j
  %i.w = tail call zeroext i1 @rb_ractor_shareable_p_continue(i64 noundef %0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  br i1 %i.w, label %bb.k, label %rb_vm_lock_enter.exit

bb.k:                                             ; preds = %rb_ractor_shareable_p.exit
  %.pre = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !82
  %i.x = icmp eq ptr %.pre, null
  br i1 %i.x, label %bb.l, label %rb_vm_lock_enter.exit

bb.l:                                             ; preds = %.thread, %bb.k
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #18
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.l, %bb.k, %rb_ractor_shareable_p.exit.thread45, %rb_ractor_shareable_p.exit
  %i.y = phi i1 [ false, %rb_ractor_shareable_p.exit.thread45 ], [ false, %rb_ractor_shareable_p.exit ], [ true, %bb.k ], [ true, %bb.l ]
  %i.z = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !67 ; 4 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = and i64 %i.ab, 7
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = or i1 %i.ac, %i.ae
  br i1 %i.af, label %RCLASS_SINGLETON_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i33

rbimpl_RB_TYPE_P_fastpath.exit.i33:               ; preds = %rb_vm_lock_enter.exit
  %i.ag = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !19 ; 2 uses
  %i.ai = and i64 %i.ah, 8223
  %or.cond51 = icmp eq i64 %i.ai, 8194
  br i1 %or.cond51, label %bb.m, label %RCLASS_SINGLETON_P.exit.thread

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i33
  %i.aj = getelementptr i8, ptr %i.ag, i64 136
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !69
  %i.al = icmp eq i64 %i.ak, %0
  br i1 %i.al, label %bb.n, label %RCLASS_SINGLETON_P.exit.thread

RCLASS_SINGLETON_P.exit.thread:                   ; preds = %rb_vm_lock_enter.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i33, %bb.m
  %i.am = call i64 @rb_make_metaclass(i64 noundef %0, i64 poison) ; 2 uses
  %.phi.trans.insert = inttoptr i64 %i.am to ptr  ; 2 uses
  %.pre59 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %RCLASS_SINGLETON_P.exit.thread, %bb.m
  %.pre-phi = phi ptr [ %.phi.trans.insert, %RCLASS_SINGLETON_P.exit.thread ], [ %i.ag, %bb.m ] ; 2 uses
  %i.an = phi i64 [ %.pre59, %RCLASS_SINGLETON_P.exit.thread ], [ %i.ah, %bb.m ]
  %.026 = phi i64 [ %i.am, %RCLASS_SINGLETON_P.exit.thread ], [ %i.ab, %bb.m ] ; 3 uses
  %i.ao = load i64, ptr %i.z, align 8, !tbaa !19
  %i.ap = and i64 %i.ao, 2048
  %i.aq = or i64 %i.an, %i.ap
  store i64 %i.aq, ptr %.pre-phi, align 8, !tbaa !19
  %brmerge.not = and i1 %1, %.not57
  br i1 %brmerge.not, label %rbimpl_RB_TYPE_P_fastpath.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.n
  %i.ar = load i64, ptr %i.z, align 8, !tbaa !19
  %i.as = and i64 %i.ar, 31
  %i.at = icmp eq i64 %i.as, 2
  br i1 %i.at, label %bb.o, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.au = getelementptr i8, ptr %.pre-phi, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !67 ; 3 uses
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = and i64 %i.av, 7
  %i.ay = icmp eq i64 %i.ax, 0
  %.not5.i = and i1 %i.aw, %i.ay
  br i1 %.not5.i, label %RB_FL_TEST.exit, label %RB_FL_TEST.exit.thread

RB_FL_TEST.exit:                                  ; preds = %bb.o
  %i.az = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !19
  %i.bb = and i64 %i.ba, 8192
  %.not27 = icmp eq i64 %i.bb, 0
  br i1 %.not27, label %RB_FL_TEST.exit.thread, label %bb.p

bb.p:                                             ; preds = %RB_FL_TEST.exit
  %i.bc = getelementptr i8, ptr %i.az, i64 136
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !69
  %.not58 = icmp eq i64 %i.bd, %.026
  br i1 %.not58, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %RB_FL_TEST.exit.thread

RB_FL_TEST.exit.thread:                           ; preds = %bb.o, %bb.p, %RB_FL_TEST.exit
  %i.be = call fastcc i64 @make_metaclass(i64 noundef %.026) ; 0 uses
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.n, %RB_FL_TEST.exit.thread, %bb.p, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.bf = load ptr, ptr @ruby_single_main_ractor, align 8
  %.not.i.i35 = icmp eq ptr %i.bf, null
  %or.cond53 = select i1 %i.y, i1 %.not.i.i35, i1 false
  br i1 %or.cond53, label %bb.q, label %rb_vm_lock_leave.exit

bb.q:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #18
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.q, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.r

bb.r:                                             ; preds = %special_singleton_class_of.exit, %rb_vm_lock_leave.exit
  %.0 = phi i64 [ %.026, %rb_vm_lock_leave.exit ], [ %.0.i30, %special_singleton_class_of.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_singleton_method(i64 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @singleton_class_of(i64 noundef %0, i1 noundef zeroext false)
  %i.b = tail call i64 @rb_intern(ptr noundef nonnull %1) #18
  tail call void @rb_add_method_cfunc(i64 noundef %i.a, i64 noundef %i.b, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 1) #18
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_module_function(i64 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_intern(ptr noundef nonnull %1) #18
  tail call void @rb_add_method_cfunc(i64 noundef %0, i64 noundef %i.a, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 2) #18
  %i.b = tail call fastcc i64 @singleton_class_of(i64 noundef %0, i1 noundef zeroext false)
  %i.c = tail call i64 @rb_intern(ptr noundef nonnull %1) #18
  tail call void @rb_add_method_cfunc(i64 noundef %i.b, i64 noundef %i.c, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 1) #18
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_global_function(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_mKernel, align 8, !tbaa !17 ; 2 uses
  %i.b = tail call i64 @rb_intern(ptr noundef nonnull %0) #18
  tail call void @rb_add_method_cfunc(i64 noundef %i.a, i64 noundef %i.b, ptr noundef nonnull %1, i32 noundef %2, i32 noundef 2) #18
  %i.c = tail call fastcc i64 @singleton_class_of(i64 noundef %i.a, i1 noundef zeroext false)
  %i.d = tail call i64 @rb_intern(ptr noundef nonnull %0) #18
end_hunk_0
begin_hunk_1_@class_descendants_recursive:bb.a

bb.h:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i
  %i.ah = tail call ptr @rb_current_box() #18     ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.i

.split.i.i:                                       ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %i.ah, i64 128
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !75, !range !76, !noundef !77
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.split7.i.i, label %bb.l

.split7.i.i:                                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.am = load i64, ptr %i.d, align 8, !tbaa !19
  %i.an = and i64 %i.am, 65536
  %.not.i.i.i10.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i10.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i:               ; preds = %.split7.i.i
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i12.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.j

bb.j:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i
  %i.ap = load i64, ptr %i.ah, align 8, !tbaa !11
  %i.aq = call i32 @rb_st_lookup(ptr noundef nonnull %i.ao, i64 noundef %i.ap, ptr noundef nonnull %i.b) #18
  %.not5.i.i13.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not5.i.i13.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !17
  %i.as = inttoptr i64 %i.ar to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i:            ; preds = %bb.k, %bb.j, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i, %.split7.i.i
  %.0.i.i14.i.i = phi ptr [ %i.as, %bb.k ], [ null, %bb.j ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i ], [ null, %.split7.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.not.i15.i.i = icmp eq ptr %.0.i.i14.i.i, null
  %i.at = getelementptr i8, ptr %i.d, i64 24
  %.0.i16.i.i = select i1 %.not.i15.i.i, ptr %i.at, ptr %.0.i.i14.i.i
  br label %RCLASS_EXT_READABLE.exit.i

bb.l:                                             ; preds = %bb.i
  %i.au = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

RCLASS_EXT_READABLE.exit.i:                       ; preds = %bb.l, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, %.split.i.i, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i
  %.0.i.i = phi ptr [ %i.ag, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i ], [ %i.au, %bb.l ], [ %i.ai, %.split.i.i ], [ %.0.i16.i.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i ]
  %i.av = getelementptr i8, ptr %.0.i.i, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !44
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !45 ; 2 uses
  %.not7.i = icmp eq ptr %i.ba, null
  br i1 %.not7.i, label %rb_class_foreach_subclass.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %RCLASS_EXT_READABLE.exit.i, %.lr.ph.i
  %.08.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %i.ba, %RCLASS_EXT_READABLE.exit.i ] ; 2 uses
  %i.bb = load i64, ptr %.08.i, align 8, !tbaa !66
  %i.bc = getelementptr i8, ptr %.08.i, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !45 ; 2 uses
  call fastcc void @class_descendants_recursive(i64 noundef %i.bb, i64 noundef %1) #18, !inline_history !132
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %rb_class_foreach_subclass.exit, label %.lr.ph.i, !llvm.loop !86

bb.m:                                             ; preds = %bb.b, %bb.a
  %i.be = and i64 %i.e, 65536
  %.not.i.i.i15 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i15, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i38, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i16

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i16:      ; preds = %bb.m
  %i.bf = getelementptr i8, ptr %i.d, i64 160     ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !21
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i38, label %bb.n

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i38: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i16, %bb.m
  %i.bi = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit.i18

bb.n:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i16
  %i.bj = tail call ptr @rb_current_box() #18     ; 3 uses
  %.not.i.i17 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i17, label %.split.i.i33, label %bb.o

.split.i.i33:                                     ; preds = %bb.n
  %i.bk = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit.i18

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr i8, ptr %i.bj, i64 128
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !75, !range !76, !noundef !77
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.split7.i.i24, label %bb.r

.split7.i.i24:                                    ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !19
  %i.bp = and i64 %i.bo, 65536
  %.not.i.i.i10.i.i25 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i10.i.i25, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i29, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i26

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i26:             ; preds = %.split7.i.i24
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i.i27 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i12.i.i27, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i29, label %bb.p

bb.p:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i26
  %i.br = load i64, ptr %i.bj, align 8, !tbaa !11
  %i.bs = call i32 @rb_st_lookup(ptr noundef nonnull %i.bq, i64 noundef %i.br, ptr noundef nonnull %i.a) #18
  %.not5.i.i13.i.i28 = icmp eq i32 %i.bs, 0
  br i1 %.not5.i.i13.i.i28, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i29, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !17
  %i.bu = inttoptr i64 %i.bt to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i29

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i29:          ; preds = %bb.q, %bb.p, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i26, %.split7.i.i24
  %.0.i.i14.i.i30 = phi ptr [ %i.bu, %bb.q ], [ null, %bb.p ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i26 ], [ null, %.split7.i.i24 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not.i15.i.i31 = icmp eq ptr %.0.i.i14.i.i30, null
  %i.bv = getelementptr i8, ptr %i.d, i64 24
  %.0.i16.i.i32 = select i1 %.not.i15.i.i31, ptr %i.bv, ptr %.0.i.i14.i.i30
  br label %RCLASS_EXT_READABLE.exit.i18

bb.r:                                             ; preds = %bb.o
  %i.bw = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit.i18

RCLASS_EXT_READABLE.exit.i18:                     ; preds = %bb.r, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i29, %.split.i.i33, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i38
  %.0.i.i19 = phi ptr [ %i.bi, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i38 ], [ %i.bw, %bb.r ], [ %i.bk, %.split.i.i33 ], [ %.0.i16.i.i32, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i29 ]
  %i.bx = getelementptr i8, ptr %.0.i.i19, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !36
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !44
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !45 ; 2 uses
  %.not7.i20 = icmp eq ptr %i.cc, null
  br i1 %.not7.i20, label %rb_class_foreach_subclass.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %RCLASS_EXT_READABLE.exit.i18, %.lr.ph.i21
  %.08.i22 = phi ptr [ %i.cf, %.lr.ph.i21 ], [ %i.cc, %RCLASS_EXT_READABLE.exit.i18 ] ; 2 uses
  %i.cd = load i64, ptr %.08.i22, align 8, !tbaa !66
  %i.ce = getelementptr i8, ptr %.08.i22, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !45 ; 2 uses
  call fastcc void @class_descendants_recursive(i64 noundef %i.cd, i64 noundef %1) #18, !inline_history !132
  %.not.i23 = icmp eq ptr %i.cf, null
  br i1 %.not.i23, label %rb_class_foreach_subclass.exit, label %.lr.ph.i21, !llvm.loop !86

rb_class_foreach_subclass.exit:                   ; preds = %.lr.ph.i, %.lr.ph.i21, %RCLASS_EXT_READABLE.exit.i18, %RCLASS_EXT_READABLE.exit.i, %bb.f
  ret void
}

declare i64 @rb_gc_count() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare ptr @rb_resolve_refined_method(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @rb_st_add_direct(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_warn_unchilled_symbol_to_s(i64 noundef) local_unnamed_addr #2

declare void @rb_warn_unchilled_literal(i64 noundef) local_unnamed_addr #2

declare zeroext i1 @rb_ractor_shareable_p_continue(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_hash_new() local_unnamed_addr #2

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #6

declare i64 @rb_hash_keys(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_fatal(ptr noundef, ...) local_unnamed_addr #6

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ary_new_from_values(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rb_block_given_p() local_unnamed_addr #2

declare i64 @rb_block_proc() local_unnamed_addr #2

declare i32 @rb_keyword_given_p() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.uadd.sat.i16(i16, i16) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"rb_box_struct", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !14, i64 88, !14, i64 96, !13, i64 104, !13, i64 112, !14, i64 120, !16, i64 128, !16, i64 129}
!13 = !{!"long", !9, i64 0}
!14 = !{!"p1 _ZTS8st_table", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"_Bool", !9, i64 0}
!17 = !{!13, !13, i64 0}
!18 = !{!12, !14, i64 120}
!19 = !{!20, !13, i64 0}
!20 = !{!"RBasic", !13, i64 0, !13, i64 8}
!21 = !{!22, !14, i64 160}
!22 = !{!"RClass_boxable", !23, i64 0, !14, i64 160}
!23 = !{!"RClass_and_rb_classext_t", !24, i64 0, !25, i64 24}
!24 = !{!"RClass", !20, i64 0, !13, i64 16}
!25 = !{!"rb_classext_struct", !26, i64 0, !13, i64 8, !13, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !13, i64 48, !27, i64 56, !28, i64 64, !29, i64 72, !30, i64 80, !30, i64 88, !13, i64 96, !13, i64 104, !9, i64 112, !31, i64 120, !31, i64 122, !9, i64 124, !16, i64 125, !16, i64 125, !16, i64 125, !16, i64 125, !16, i64 125, !16, i64 125, !13, i64 128}
!26 = !{!"p1 _ZTS13rb_box_struct", !15, i64 0}
!27 = !{!"p1 _ZTS11rb_id_table", !15, i64 0}
!28 = !{!"p1 long", !15, i64 0}
!29 = !{!"p1 _ZTS18rb_subclass_anchor", !15, i64 0}
!30 = !{!"p1 _ZTS17rb_box_subclasses", !15, i64 0}
!31 = !{!"short", !9, i64 0}
!32 = !{!25, !27, i64 24}
!33 = !{!25, !27, i64 32}
!34 = !{!25, !27, i64 56}
!35 = !{!25, !28, i64 64}
!36 = !{!25, !29, i64 72}
!37 = !{!38, !30, i64 0}
!38 = !{!"rb_subclass_anchor", !30, i64 0, !39, i64 8}
!39 = !{!"p1 _ZTS17rb_subclass_entry", !15, i64 0}
!40 = !{!41, !14, i64 8}
!41 = !{!"rb_box_subclasses", !13, i64 0, !14, i64 8}
!42 = !{!25, !26, i64 0}
!43 = !{!12, !13, i64 8}
!44 = !{!38, !39, i64 8}
!45 = !{!46, !39, i64 8}
!46 = !{!"rb_subclass_entry", !13, i64 0, !39, i64 8, !39, i64 16}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!41, !13, i64 0}
!50 = !{!25, !30, i64 80}
!51 = !{!25, !30, i64 88}
!52 = !{!25, !27, i64 40}
!53 = !{!54, !13, i64 0}
!54 = !{!"rb_class_set_box_classext_args", !13, i64 0, !55, i64 8}
!55 = !{!"p1 _ZTS18rb_classext_struct", !15, i64 0}
!56 = !{!54, !55, i64 8}
!57 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!58 = !{!25, !13, i64 8}
!59 = !{!60, !27, i64 0}
!60 = !{!"duplicate_id_tbl_data", !27, i64 0, !13, i64 8}
!61 = !{!60, !13, i64 8}
!62 = !{!25, !13, i64 16}
!63 = !{!25, !13, i64 96}
!64 = !{!25, !13, i64 128}
!65 = !{!39, !39, i64 0}
!66 = !{!46, !13, i64 0}
!67 = !{!20, !13, i64 8}
!68 = !{!25, !13, i64 48}
!69 = !{!9, !9, i64 0}
!70 = distinct !{!70, !48}
!71 = distinct !{!71, !48}
!72 = !{!46, !39, i64 16}
!73 = !{!"branch_weights", i32 2146410443, i32 1073205}
!74 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!75 = !{!12, !16, i64 128}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = !{!79, !15, i64 0}
!79 = !{!"class_classext_foreach_arg", !15, i64 0, !15, i64 8}
!80 = !{!79, !15, i64 8}
!81 = !{!23, !9, i64 148}
!82 = !{!83, !83, i64 0}
!83 = !{!"p1 _ZTS16rb_ractor_struct", !15, i64 0}
!84 = distinct !{!84, !48, !85}
!85 = !{!"llvm.loop.peeled.count", i32 1}
!86 = distinct !{!86, !48}
!87 = !{!23, !27, i64 48}
!88 = !{!23, !28, i64 88}
!89 = distinct !{!89, !48}
!90 = !{!23, !31, i64 146}
!91 = !{!25, !31, i64 122}
!92 = !{!"branch_weights", i32 1073205, i32 2146410443}
!93 = !{!"branch_weights", !"expected", i32 2147054223, i32 429425}
!94 = !{!23, !31, i64 144}
!95 = !{ptr @rb_singleton_class_clone}
!96 = !{!97, !13, i64 8}
!97 = !{!"clone_method_arg", !13, i64 0, !13, i64 8}
!98 = !{!97, !13, i64 0}
!99 = !{!16, !16, i64 0}
!100 = distinct !{!100, !48}
!101 = !{!102, !13, i64 0}
!102 = !{!"cvc_table_copy_ctx", !13, i64 0, !27, i64 8}
!103 = !{!102, !27, i64 8}
!104 = !{!105, !27, i64 8}
!105 = !{!"clone_const_arg", !13, i64 0, !27, i64 8}
!106 = !{!105, !13, i64 0}
!107 = !{!108, !109, i64 16}
!108 = !{!"rb_method_entry_struct", !13, i64 0, !13, i64 8, !109, i64 16, !13, i64 24, !13, i64 32}
!109 = !{!"p1 _ZTS27rb_method_definition_struct", !15, i64 0}
!110 = !{!108, !13, i64 0}
!111 = !{!112, !13, i64 8}
!112 = !{!"rb_const_entry_struct", !8, i64 0, !8, i64 4, !13, i64 8, !13, i64 16}
!113 = !{!112, !13, i64 16}
!114 = distinct !{!114, !48}
!115 = distinct !{!115, !48}
!116 = !{!"branch_weights", i32 1999, i32 2147481649}
!117 = !{!"branch_weights", i32 2000, i32 2147481648}
!118 = !{!23, !27, i64 80}
!119 = distinct !{!119, !48}
!120 = distinct !{!120, !48}
!121 = distinct !{!121, !48}
!122 = distinct !{!122, !48}
!123 = !{!124, !124, i64 0}
!124 = !{!"long long", !9, i64 0}
!125 = distinct !{!125, !48}
!126 = distinct !{!126, !48}
!127 = distinct !{!127, !48}
!128 = distinct !{!128, !48}
!129 = !{!130, !13, i64 16}
!130 = !{!"subclass_traverse_data", !13, i64 0, !13, i64 8, !13, i64 16, !16, i64 24}
!131 = !{!130, !16, i64 24}
!132 = !{ptr @rb_class_foreach_subclass}
!133 = !{!130, !13, i64 8}
!134 = !{!130, !13, i64 0}
!135 = !{!136, !14, i64 0}
!136 = !{!"method_entry_arg", !14, i64 0, !8, i64 8}
!137 = !{!136, !8, i64 8}
!138 = distinct !{!138, !48}
!139 = distinct !{!139, !48}
!140 = !{!141, !13, i64 16}
!141 = !{!"st_table", !9, i64 0, !9, i64 1, !9, i64 2, !8, i64 4, !142, i64 8, !13, i64 16, !28, i64 24, !13, i64 32, !13, i64 40, !143, i64 48}
!142 = !{!"p1 _ZTS12st_hash_type", !15, i64 0}
!143 = !{!"p1 _ZTS14st_table_entry", !15, i64 0}
!144 = !{!108, !13, i64 32}
!145 = distinct !{!145, !48}
!146 = distinct !{!146, !48}
!147 = distinct !{!147, !48, !148, !149}
!148 = !{!"llvm.loop.isvectorized", i32 1}
!149 = !{!"llvm.loop.unroll.runtime.disable"}
!150 = distinct !{!150, !48, !149, !148}
!151 = distinct !{!151, !48}
!152 = !{!153, !8, i64 4}
!153 = !{!"rb_scan_args_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !16, i64 16, !16, i64 17, !16, i64 18}
!154 = !{!153, !8, i64 8}
!155 = !{!153, !16, i64 16}
!156 = !{!153, !8, i64 12}
!157 = !{!153, !16, i64 17}
!158 = !{!153, !16, i64 18}
!159 = !{!153, !8, i64 0}
!160 = !{!28, !28, i64 0}
!161 = distinct !{!161, !48}
!162 = distinct !{!162, !48}
!163 = distinct !{!163, !48}
!164 = !{!165, !165, i64 0}
end_hunk_1
