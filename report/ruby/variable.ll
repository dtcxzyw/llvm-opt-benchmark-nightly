inline.NumInlined: 728
inline.NumDeleted: 161
begin_hunk_0_@rb_alias_variable:bb.a
.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  br label %rb_vm_lock_enter.exit

rb_ractor_main_p.exit:                            ; preds = %bb.a
  %i.e = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit
  %i.f = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.16) #27
  unreachable

bb.c:                                             ; preds = %rb_ractor_main_p.exit
  %.pr = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %bb.d, label %rb_vm_lock_enter.exit

bb.d:                                             ; preds = %bb.c
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #26
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.d, %bb.c, %.thread
  %i.g = call fastcc ptr @rb_global_entry(i64 noundef %1) ; 2 uses
  %i.h = call i32 @rb_id_table_lookup(ptr noundef %i.c, i64 noundef %0, ptr noundef nonnull %i.a) #26
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_vm_lock_enter.exit
  %i.i = call noalias nonnull dereferenceable(24) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 24) #31 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %0, ptr %i.j, align 8, !tbaa !76
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = call i32 @rb_id_table_insert(ptr noundef %i.c, i64 noundef %0, i64 noundef %i.k) #26 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %rb_vm_lock_enter.exit
  %i.m = load i64, ptr %i.a, align 8, !tbaa !16
  %i.n = inttoptr i64 %i.m to ptr                 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58   ; 6 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !58
  %.not23 = icmp eq ptr %i.o, %i.p
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !77
  %.not24 = icmp eq i32 %i.r, 0
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call fastcc void @rb_vm_unlock()
  %i.s = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !16
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.18) #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = load i32, ptr %i.o, align 8, !tbaa !61
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr %i.o, align 8, !tbaa !61
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr i8, ptr %i.o, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %.not6.i = icmp eq ptr %i.x, null
  br i1 %.not6.i, label %free_global_variable.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.07.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.x, %bb.j ] ; 2 uses
  %i.y = getelementptr i8, ptr %.07.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !65   ; 2 uses
  call void @ruby_xfree(ptr noundef nonnull %.07.i) #26
  %.not.i26 = icmp eq ptr %i.z, null
  br i1 %.not.i26, label %free_global_variable.exit, label %.lr.ph.i, !llvm.loop !67

free_global_variable.exit:                        ; preds = %.lr.ph.i, %bb.j
  call void @ruby_xfree(ptr noundef nonnull %i.o) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %free_global_variable.exit, %bb.f, %bb.e
  %.0 = phi ptr [ %i.i, %bb.e ], [ %i.n, %bb.f ], [ %i.n, %free_global_variable.exit ], [ %i.n, %bb.i ] ; 2 uses
  %i.aa = load ptr, ptr %.0, align 8, !tbaa !58
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !58  ; 4 uses
  %.not25 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !61
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !61
  store ptr %i.ab, ptr %.0, align 8, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ae = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i27 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i27, label %bb.n, label %rb_vm_lock_leave.exit

bb.n:                                             ; preds = %bb.m
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #26
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare i32 @rb_id_table_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #11

declare i32 @rb_id_table_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_generic_fields_tbl_get() local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @generic_fields_tbl_, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_mark_generic_ivar(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = load ptr, ptr @generic_fields_tbl_, align 8, !tbaa !14
  %i.c = call i32 @rb_st_lookup(ptr noundef %i.b, i64 noundef %0, ptr noundef nonnull %i.a) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !16
  call void @rb_gc_mark_movable(i64 noundef %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_obj_fields_generic_uncached(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #26
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr @generic_fields_tbl_, align 8, !tbaa !14
  %i.e = call i32 @rb_st_lookup(ptr noundef %i.d, i64 noundef %0, ptr noundef nonnull %i.a) #26
  %.not2 = icmp eq i32 %i.e, 0
  br i1 %.not2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_vm_lock_enter.exit
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.19) #32
  unreachable

bb.d:                                             ; preds = %rb_vm_lock_enter.exit
  %i.f = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i3 = icmp eq ptr %i.f, null
  br i1 %.not.i.i3, label %bb.e, label %rb_vm_lock_leave.exit

bb.e:                                             ; preds = %bb.d
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #26
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.g = load i64, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %i.g
}

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_obj_fields(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = tail call i32 @rb_is_instance_id(i64 noundef %1) #33
  %.not.i = icmp eq i32 %i.d, 0
  %.pre = inttoptr i64 %0 to ptr                  ; 6 uses
  br i1 %.not.i, label %ivar_ractor_check.exit, label %bb.b, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %.pre, align 8, !tbaa !20
  %i.f = and i64 %i.e, 2048
  %.not3.i = icmp eq i64 %i.f, 0
  %i.g = load ptr, ptr @ruby_single_main_ractor, align 8
  %.not.i.i = icmp eq ptr %i.g, null
  %or.cond.i = select i1 %.not3.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %rb_ractor_main_p.exit.i, label %ivar_ractor_check.exit

rb_ractor_main_p.exit.i:                          ; preds = %bb.b
  %i.h = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.h, label %ivar_ractor_check.exit, label %bb.c, !prof !69

bb.c:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.i = tail call fastcc zeroext i1 @rb_ractor_shareable_p(i64 noundef %0)
  br i1 %i.i, label %bb.d, label %ivar_ractor_check.exit, !prof !94

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.45) #27
  unreachable

ivar_ractor_check.exit:                           ; preds = %bb.a, %bb.b, %rb_ractor_main_p.exit.i, %bb.c
  %2 = load i64, ptr %.pre, align 8, !tbaa !20    ; 6 uses
  %3 = and i64 %2, 578712547822141440
  %.not22 = icmp eq i64 %3, 0
  br i1 %.not22, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %ivar_ractor_check.exit
  %i.k = trunc i64 %2 to i32
  %i.l = and i32 %i.k, 31
  switch i32 %i.l, label %bb.n [
    i32 12, label %bb.f
    i32 9, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = and i64 %2, 64
  %.not23 = icmp eq i64 %i.m, 0
  br i1 %.not23, label %bb.n, label %bb.g, !prof !94

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %.pre, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !95
  br label %bb.ab

bb.h:                                             ; preds = %bb.e
  %i.p = and i64 %2, 1048576
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.i, label %bb.n, !prof !97

bb.i:                                             ; preds = %bb.h
  %i.q = lshr i64 %2, 13
  %i.r = and i64 %i.q, 127                        ; 2 uses
  %.not.i20 = icmp eq i64 %i.r, 0
  br i1 %.not.i20, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = and i64 %2, 1040384
  %.not.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr i8, ptr %.pre, i64 16
  br label %internal_RSTRUCT_GET.exit.i

bb.l:                                             ; preds = %bb.j
  %i.u = getelementptr i8, ptr %.pre, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  br label %internal_RSTRUCT_GET.exit.i

internal_RSTRUCT_GET.exit.i:                      ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi ptr [ %i.t, %bb.k ], [ %i.v, %bb.l ]
  %i.w = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.r
  br label %RSTRUCT_FIELDS_OBJ.exit

bb.m:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %.pre, i64 32
  br label %RSTRUCT_FIELDS_OBJ.exit

RSTRUCT_FIELDS_OBJ.exit:                          ; preds = %internal_RSTRUCT_GET.exit.i, %bb.m
  %.0.in.i = phi ptr [ %i.w, %internal_RSTRUCT_GET.exit.i ], [ %i.x, %bb.m ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !42
  br label %bb.ab

bb.n:                                             ; preds = %bb.e, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.y = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !98
  store volatile ptr %i.z, ptr %i.c, align 8, !tbaa !98
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.c, align 8, !tbaa !98 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aa = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 160 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !100
  %i.ac = icmp eq i64 %i.ab, %0
  br i1 %i.ac, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !110 ; 8 uses
  %i.af = icmp eq i64 %i.ae, 36
  br i1 %i.af, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = icmp eq i64 %i.ae, 0
  %i.ah = and i64 %i.ae, 7
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = or i1 %i.ag, %i.ai
  br i1 %i.aj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = inttoptr i64 %i.ae to ptr
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  br label %rb_imemo_fields_owner.exit

bb.r:                                             ; preds = %bb.p
  switch i64 %i.ae, label %bb.u [
    i64 0, label %rb_imemo_fields_owner.exit
    i64 4, label %bb.s
    i64 20, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  br label %rb_imemo_fields_owner.exit

bb.t:                                             ; preds = %bb.r
  br label %rb_imemo_fields_owner.exit

bb.u:                                             ; preds = %bb.r
  %i.am = trunc i64 %i.ae to i1
  br i1 %i.am, label %rb_imemo_fields_owner.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.an = and i64 %i.ae, 254
  %i.ao = icmp eq i64 %i.an, 12
  %spec.select.i.i = select i1 %i.ao, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_imemo_fields_owner.exit

rb_imemo_fields_owner.exit:                       ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.0.in.i.i = phi ptr [ %i.al, %bb.q ], [ @rb_cNilClass, %bb.s ], [ @rb_cTrueClass, %bb.t ], [ @rb_cFalseClass, %bb.r ], [ @rb_cInteger, %bb.u ], [ %spec.select.i.i, %bb.v ]
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !16
  %i.ap = icmp eq i64 %.0.i.i, %0
  br i1 %i.ap, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %rb_imemo_fields_owner.exit, %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.aq = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i.i21 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i21, label %bb.x, label %rb_vm_lock_enter.exit.i

bb.x:                                             ; preds = %bb.w
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #26
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.x, %bb.w
  %i.ar = load ptr, ptr @generic_fields_tbl_, align 8, !tbaa !14
  %i.as = call i32 @rb_st_lookup(ptr noundef %i.ar, i64 noundef %0, ptr noundef nonnull %i.a) #26
  %.not2.i = icmp eq i32 %i.as, 0
  br i1 %.not2.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %rb_vm_lock_enter.exit.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.19) #32
  unreachable

bb.z:                                             ; preds = %rb_vm_lock_enter.exit.i
  %i.at = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i3.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i3.i, label %bb.aa, label %rb_obj_fields_generic_uncached.exit

bb.aa:                                            ; preds = %bb.z
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #26
  br label %rb_obj_fields_generic_uncached.exit

rb_obj_fields_generic_uncached.exit:              ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.au = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.av = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 168
  store i64 %i.au, ptr %i.av, align 8, !tbaa !110
  store i64 %0, ptr %i.aa, align 8, !tbaa !100
  br label %bb.ab

bb.ab:                                            ; preds = %rb_imemo_fields_owner.exit, %rb_obj_fields_generic_uncached.exit, %bb.g, %RSTRUCT_FIELDS_OBJ.exit, %ivar_ractor_check.exit
  %.1 = phi i64 [ 0, %ivar_ractor_check.exit ], [ %i.o, %bb.g ], [ %.0.i, %RSTRUCT_FIELDS_OBJ.exit ], [ %i.au, %rb_obj_fields_generic_uncached.exit ], [ %i.ae, %rb_imemo_fields_owner.exit ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_free_generic_ivar(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = icmp eq i64 %0, 0
  %i.f = and i64 %0, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  %.pre.i = inttoptr i64 %0 to ptr                ; 7 uses
  %.pre = load i64, ptr %.pre.i, align 8, !tbaa !20 ; 7 uses
  br i1 %i.h, label %rb_obj_gen_fields_p.exit, label %rb_type.exit.i

rb_type.exit.i:                                   ; preds = %bb.a
  %i.i = trunc i64 %.pre to i32
  %i.j = and i32 %i.i, 31
  switch i32 %i.j, label %rb_obj_gen_fields_p.exit [
    i32 0, label %rb_obj_gen_fields_p.exit.thread
    i32 1, label %rb_obj_gen_fields_p.exit.thread
    i32 2, label %rb_obj_gen_fields_p.exit.thread
    i32 3, label %rb_obj_gen_fields_p.exit.thread
    i32 26, label %rb_obj_gen_fields_p.exit.thread
  ]

rb_obj_gen_fields_p.exit:                         ; preds = %bb.a, %rb_type.exit.i
  %1 = and i64 %.pre, 578712547822141440
  %.not17 = icmp eq i64 %1, 0
  br i1 %.not17, label %rb_obj_gen_fields_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_obj_gen_fields_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %0, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.k = trunc i64 %.pre to i32
  %i.l = and i32 %i.k, 31
  switch i32 %i.l, label %bb.k [
    i32 12, label %bb.c
    i32 9, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = and i64 %.pre, 64
  %.not18 = icmp eq i64 %i.m, 0
  br i1 %.not18, label %bb.k, label %bb.d, !prof !94

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %.pre.i, i64 16
  store i64 0, ptr %i.n, align 8, !tbaa !16
  br label %RSTRUCT_SET_FIELDS_OBJ.exit

bb.e:                                             ; preds = %bb.b
  %i.o = and i64 %.pre, 1048576
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.f, label %bb.k, !prof !97

bb.f:                                             ; preds = %bb.e
  %i.p = lshr i64 %.pre, 13
  %i.q = and i64 %i.p, 127                        ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = and i64 %.pre, 1040384
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %.pre.i, i64 16
  br label %RSTRUCT_CONST_PTR.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %.pre.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  br label %RSTRUCT_CONST_PTR.exit.i.i

RSTRUCT_CONST_PTR.exit.i.i:                       ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.s, %bb.h ], [ %i.u, %bb.i ]
  %i.v = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.q
  store i64 0, ptr %i.v, align 8, !tbaa !16
  br label %RSTRUCT_SET_FIELDS_OBJ.exit

bb.j:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %.pre.i, i64 32
  store i64 0, ptr %i.w, align 8, !tbaa !16
  br label %RSTRUCT_SET_FIELDS_OBJ.exit

bb.k:                                             ; preds = %bb.b, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !98
  store volatile ptr %i.y, ptr %i.a, align 8, !tbaa !98
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !98 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 160 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !100
  %i.ab = icmp eq i64 %i.aa, %0
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 36, ptr %i.z, align 8, !tbaa !100
  %i.ac = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 168
  store i64 36, ptr %i.ac, align 8, !tbaa !110
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.ad = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.n, label %rb_vm_lock_enter.exit

bb.n:                                             ; preds = %bb.m
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.d) #26
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.n, %bb.m
  %i.ae = load ptr, ptr @generic_fields_tbl_, align 8, !tbaa !14
  %i.af = call i32 @rb_st_delete(ptr noundef %i.ae, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #26
  %.not14 = icmp eq i32 %i.af, 0
  br i1 %.not14, label %bb.o, label %bb.p

bb.o:                                             ; preds = %rb_vm_lock_enter.exit
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.19) #32
  unreachable

bb.p:                                             ; preds = %rb_vm_lock_enter.exit
  %i.ag = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i15 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i15, label %bb.q, label %rb_vm_lock_leave.exit

bb.q:                                             ; preds = %bb.p
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.d) #26
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %RSTRUCT_SET_FIELDS_OBJ.exit

RSTRUCT_SET_FIELDS_OBJ.exit:                      ; preds = %bb.j, %RSTRUCT_CONST_PTR.exit.i.i, %rb_vm_lock_leave.exit, %bb.d
  %i.ah = load i64, ptr %.pre.i, align 8, !tbaa !20
  %i.ai = and i64 %i.ah, 4294967295
  store i64 %i.ai, ptr %.pre.i, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %rb_obj_gen_fields_p.exit.thread

rb_obj_gen_fields_p.exit.thread:                  ; preds = %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %RSTRUCT_SET_FIELDS_OBJ.exit, %rb_obj_gen_fields_p.exit
  ret void
}

declare i32 @rb_st_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_obj_replace_fields(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #26
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.a
  %i.c = call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0)
  call fastcc void @rb_obj_set_fields(i64 noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.c)
  %i.d = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i5 = icmp eq ptr %i.d, null
  br i1 %.not.i.i5, label %bb.c, label %rb_vm_lock_leave.exit

bb.c:                                             ; preds = %rb_vm_lock_enter.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #26
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %rb_vm_lock_enter.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_obj_set_fields(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call i32 @rb_is_instance_id(i64 noundef %2) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %ivar_ractor_check.exit, label %bb.b, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = and i64 %i.e, 2048
  %.not3.i = icmp eq i64 %i.f, 0
  %i.g = load ptr, ptr @ruby_single_main_ractor, align 8
  %.not.i.i = icmp eq ptr %i.g, null
  %or.cond.i = select i1 %.not3.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %rb_ractor_main_p.exit.i, label %ivar_ractor_check.exit

rb_ractor_main_p.exit.i:                          ; preds = %bb.b
  %i.h = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.h, label %ivar_ractor_check.exit, label %bb.c, !prof !69

bb.c:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.i = tail call fastcc zeroext i1 @rb_ractor_shareable_p(i64 noundef %0)
  br i1 %i.i, label %bb.d, label %ivar_ractor_check.exit, !prof !94

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.45) #27
  unreachable

ivar_ractor_check.exit:                           ; preds = %bb.a, %bb.b, %rb_ractor_main_p.exit.i, %bb.c
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %ivar_ractor_check.exit
  tail call void @rb_free_generic_ivar(i64 noundef %0)
  tail call void @rb_imemo_fields_clear(i64 noundef %3) #26
  br label %bb.w

bb.f:                                             ; preds = %ivar_ractor_check.exit
  %.not32 = icmp eq i64 %1, %3
  %.pre = inttoptr i64 %0 to ptr                  ; 7 uses
  br i1 %.not32, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load i64, ptr %.pre, align 8, !tbaa !20  ; 5 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 31
  switch i32 %i.m, label %bb.q [
    i32 12, label %bb.h
    i32 9, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.n = and i64 %i.k, 64
  %.not42 = icmp eq i64 %i.n, 0
  br i1 %.not42, label %bb.q, label %bb.i, !prof !94

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %.pre, i64 16
  store i64 %1, ptr %i.o, align 8, !tbaa !16
  %i.p = and i64 %1, 7
  %.not43 = icmp eq i64 %i.p, 0
  br i1 %.not43, label %bb.j, label %rb_obj_write.exit

bb.j:                                             ; preds = %bb.i
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %1) #26
  br label %rb_obj_write.exit

bb.k:                                             ; preds = %bb.g
  %i.q = and i64 %i.k, 1048576
  %.not33 = icmp eq i64 %i.q, 0
  br i1 %.not33, label %bb.l, label %bb.q, !prof !97

bb.l:                                             ; preds = %bb.k
  %i.r = lshr i64 %i.k, 13
  %i.s = and i64 %i.r, 127                        ; 2 uses
  %.not.i37 = icmp eq i64 %i.s, 0
  br i1 %.not.i37, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = and i64 %i.k, 1040384
  %.not.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr i8, ptr %.pre, i64 16
  br label %RSTRUCT_CONST_PTR.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.v = getelementptr i8, ptr %.pre, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42
  br label %RSTRUCT_CONST_PTR.exit.i.i

RSTRUCT_CONST_PTR.exit.i.i:                       ; preds = %bb.o, %bb.n
  %.0.i.i.i = phi ptr [ %i.u, %bb.n ], [ %i.w, %bb.o ]
  %i.x = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.s
  store i64 %1, ptr %i.x, align 8, !tbaa !16
  %i.y = and i64 %1, 7
  %.not40 = icmp eq i64 %i.y, 0
  br i1 %.not40, label %internal_RSTRUCT_SET.exit.sink.split.i, label %rb_obj_write.exit

bb.p:                                             ; preds = %bb.l
  %i.z = getelementptr i8, ptr %.pre, i64 32
  store i64 %1, ptr %i.z, align 8, !tbaa !16
  %i.aa = and i64 %1, 7
  %.not41 = icmp eq i64 %i.aa, 0
  br i1 %.not41, label %internal_RSTRUCT_SET.exit.sink.split.i, label %rb_obj_write.exit

internal_RSTRUCT_SET.exit.sink.split.i:           ; preds = %bb.p, %RSTRUCT_CONST_PTR.exit.i.i
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %1) #26
  br label %rb_obj_write.exit

bb.q:                                             ; preds = %bb.g, %bb.k, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ab = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i38 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i38, label %bb.r, label %rb_vm_lock_enter.exit

bb.r:                                             ; preds = %bb.q
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #26
  br label %rb_vm_lock_enter.exit

bb.s:                                             ; preds = %rb_vm_lock_leave.exit
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %1) #26
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %rb_vm_lock_leave.exit, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !98
  store volatile ptr %i.ad, ptr %i.a, align 8, !tbaa !98
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !98 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 168 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !110
  %.not35 = icmp eq i64 %i.af, %1
  br i1 %.not35, label %rb_obj_write.exit, label %bb.u

rb_vm_lock_enter.exit:                            ; preds = %bb.r, %bb.q
  %i.ag = load ptr, ptr @generic_fields_tbl_, align 8, !tbaa !14
  %i.ah = call i32 @rb_st_insert(ptr noundef %i.ag, i64 noundef %0, i64 noundef %1) #26 ; 0 uses
  %i.ai = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i39 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i39, label %bb.t, label %rb_vm_lock_leave.exit

bb.t:                                             ; preds = %rb_vm_lock_enter.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #26
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %rb_vm_lock_enter.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.aj = and i64 %1, 7
  %.not44 = icmp eq i64 %i.aj, 0
  br i1 %.not44, label %bb.s, label %rb_obj_written.exit

bb.u:                                             ; preds = %rb_obj_written.exit
  %i.ak = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 160
  store i64 %0, ptr %i.ak, align 8, !tbaa !100
  store i64 %1, ptr %i.ae, align 8, !tbaa !110
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %internal_RSTRUCT_SET.exit.sink.split.i, %bb.p, %RSTRUCT_CONST_PTR.exit.i.i, %bb.j, %bb.i, %rb_obj_written.exit, %bb.u
  %.not36 = icmp eq i64 %3, 0
  br i1 %.not36, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %rb_obj_write.exit
  call void @rb_imemo_fields_clear(i64 noundef %3) #26
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %rb_obj_write.exit, %bb.v
  %i.al = inttoptr i64 %1 to ptr
  %4 = load i64, ptr %i.al, align 8, !tbaa !20
  %5 = and i64 %4, -4294967296
  %i.am = load i64, ptr %.pre, align 8, !tbaa !20
  %i.an = and i64 %i.am, 4294967295
  %i.ao = or disjoint i64 %i.an, %5
  store i64 %i.ao, ptr %.pre, align 8, !tbaa !20
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_obj_field_get(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 31
  switch i32 %i.e, label %bb.f [
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 1, label %bb.g
    i32 26, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.f = icmp eq i64 %0, 0
  %i.g = and i64 %0, 7
  %i.h = icmp ne i64 %i.g, 0
  %.not5.i.i.i.i.not17 = or i1 %i.f, %i.h
  %i.i = and i64 %i.c, 16384
  %.not10.i.i = icmp eq i64 %i.i, 0
  %or.cond = or i1 %.not5.i.i.i.i.not17, %.not10.i.i
  br i1 %or.cond, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.c, !prof !111

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %bb.b
  %i.k = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.d

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.l = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.d:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.m = getelementptr i8, ptr %i.k, i64 128
  %i.n = load i8, ptr %i.m, align 8, !tbaa !32, !range !34, !noundef !35
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.split7.i.i, label %bb.e

.split7.i.i:                                      ; preds = %bb.d
  %i.p = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.k)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.b, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.c, %.split.i.i, %.split7.i.i, %bb.e
  %.0.i.i = phi ptr [ %i.j, %bb.c ], [ %i.q, %bb.e ], [ %i.l, %.split.i.i ], [ %i.p, %.split7.i.i ]
  %i.r = getelementptr i8, ptr %.0.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !112
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.t = and i32 %1, 524287
  %i.u = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.v = zext nneg i32 %i.t to i64
  %i.w = getelementptr [40 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !118
  %i.z = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef %i.y)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.f, %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %.013 = phi i64 [ %i.z, %bb.f ], [ %i.s, %RCLASS_WRITABLE_FIELDS_OBJ.exit ], [ %0, %bb.a ], [ %0, %bb.a ] ; 4 uses
  %i.aa = and i32 %1, 134217728
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.j, label %bb.h, !prof !97

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %.013, 0
  br i1 %.not.i, label %rb_imemo_fields_complex_tbl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = inttoptr i64 %.013 to ptr
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42
  br label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.ad, %bb.i ], [ null, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 36, ptr %i.a, align 8, !tbaa !16
  %i.ae = and i32 %1, 524287
  %i.af = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = getelementptr [40 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !118
  %i.ak = call i32 @rb_st_lookup(ptr noundef %.0.i, i64 noundef %i.aj, ptr noundef nonnull %i.a) #26 ; 0 uses
  %i.al = load i64, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.am = and i32 %1, 524287
  %i.an = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = getelementptr [40 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 28
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !120
  %i.as = add i16 %i.ar, -1
  %.not.i14 = icmp ne i64 %.013, 0
  tail call void @llvm.assume(i1 %.not.i14)
  %i.at = inttoptr i64 %.013 to ptr               ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !20
  %i.av = and i64 %i.au, 65536
  %.not5.i = icmp eq i64 %i.av, 0
  %i.aw = getelementptr i8, ptr %i.at, i64 16     ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.k, !prof !97

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.j, %bb.k
  %.0.i15 = phi ptr [ %i.ax, %bb.k ], [ %i.aw, %bb.j ]
  %i.ay = zext i16 %i.as to i64
  %i.az = getelementptr [8 x i8], ptr %.0.i15, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %rb_imemo_fields_ptr.exit, %rb_imemo_fields_complex_tbl.exit
  %.0 = phi i64 [ %i.al, %rb_imemo_fields_complex_tbl.exit ], [ %i.ba, %rb_imemo_fields_ptr.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_ivar_lookup(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rb_ractor_main_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 4 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 31
  switch i32 %i.j, label %bb.i [
    i32 2, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
    i32 3, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
    i32 26, label %.thread
    i32 1, label %.thread
  ]

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.b, %bb.b
  %i.k = and i64 %i.h, 16384
  %.not10.i.i = icmp eq i64 %i.k, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.c, !prof !121

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.l = getelementptr i8, ptr %i.g, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.m = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.d

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.n = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.d:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.o = getelementptr i8, ptr %i.m, i64 128
  %i.p = load i8, ptr %i.o, align 8, !tbaa !32, !range !34, !noundef !35
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.split7.i.i, label %bb.e

.split7.i.i:                                      ; preds = %bb.d
  %i.r = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.m)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.g, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.c, %.split.i.i, %.split7.i.i, %bb.e
  %.0.i.i = phi ptr [ %i.l, %bb.c ], [ %i.s, %bb.e ], [ %i.n, %.split.i.i ], [ %i.r, %.split7.i.i ]
  %i.t = getelementptr i8, ptr %.0.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !112
  %i.v = tail call i64 @rb_ivar_lookup(i64 noundef %i.u, i64 noundef %1, i64 noundef %2) ; 5 uses
  %.not = icmp eq i64 %i.v, %2
  br i1 %.not, label %rb_ractor_main_p.exit.thread, label %bb.f

bb.f:                                             ; preds = %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %i.w = tail call i32 @rb_is_instance_id(i64 noundef %1) #33
  %.not31 = icmp ne i32 %i.w, 0
  %i.x = load ptr, ptr @ruby_single_main_ractor, align 8
  %.not.i = icmp eq ptr %i.x, null
  %or.cond = select i1 %.not31, i1 %.not.i, i1 false
  br i1 %or.cond, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %bb.f
  %i.y = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.y, label %rb_ractor_main_p.exit.thread, label %bb.g, !prof !122

bb.g:                                             ; preds = %rb_ractor_main_p.exit
  %i.z = tail call fastcc zeroext i1 @rb_ractor_shareable_p(i64 noundef %i.v)
  br i1 %i.z, label %rb_ractor_main_p.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  %i.ab = tail call i64 @rb_id2str(i64 noundef %1) #26
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.20, i64 noundef %i.ab, i64 noundef %0) #27
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.ac = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef %1) ; 2 uses
  %.not32 = icmp eq i64 %i.ac, 0
  br i1 %.not32, label %rb_ractor_main_p.exit.thread, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.i
  %.phi.trans.insert = inttoptr i64 %i.ac to ptr  ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b, %bb.b
  %.pre-phi = phi ptr [ %.phi.trans.insert, %..thread_crit_edge ], [ %i.g, %bb.b ], [ %i.g, %bb.b ] ; 3 uses
  %3 = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.h, %bb.b ], [ %i.h, %bb.b ]
  %4 = lshr i64 %3, 32
  %5 = trunc nuw i64 %4 to i32                    ; 2 uses
  %i.ad = and i32 %5, 134217728
  %.not42 = icmp eq i32 %i.ad, 0
  br i1 %.not42, label %bb.j, label %rb_imemo_fields_complex_tbl.exit, !prof !97

rb_imemo_fields_complex_tbl.exit:                 ; preds = %.thread
  %i.ae = getelementptr i8, ptr %.pre-phi, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ag = call i32 @rb_st_lookup(ptr noundef %i.af, i64 noundef %1, ptr noundef nonnull %i.a) #26
  %.not33 = icmp eq i32 %i.ag, 0
  %i.ah = load i64, ptr %i.a, align 8
  %.0 = select i1 %.not33, i64 %2, i64 %i.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %rb_ractor_main_p.exit.thread

bb.j:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i16 0, ptr %i.b, align 2, !tbaa !123
  %i.ai = call zeroext i1 @rb_shape_get_iv_index(i32 noundef %5, i64 noundef %1, ptr noundef nonnull %i.b) #26
  br i1 %i.ai, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aj = load i64, ptr %.pre-phi, align 8, !tbaa !20
  %i.ak = and i64 %i.aj, 65536
  %.not5.i = icmp eq i64 %i.ak, 0
  %i.al = getelementptr i8, ptr %.pre-phi, i64 16 ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.l, !prof !97

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.k, %bb.l
  %.0.i37 = phi ptr [ %i.am, %bb.l ], [ %i.al, %bb.k ]
  %i.an = load i16, ptr %i.b, align 2, !tbaa !123
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr [8 x i8], ptr %.0.i37, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %rb_imemo_fields_ptr.exit
  %.1 = phi i64 [ %i.aq, %rb_imemo_fields_ptr.exit ], [ %2, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit.thread:                     ; preds = %bb.g, %rb_ractor_main_p.exit, %bb.f, %RCLASS_WRITABLE_FIELDS_OBJ.exit, %bb.i, %bb.m, %rb_imemo_fields_complex_tbl.exit, %bb.a
  %.4 = phi i64 [ %2, %bb.a ], [ %2, %bb.i ], [ %2, %RCLASS_WRITABLE_FIELDS_OBJ.exit ], [ %i.v, %bb.g ], [ %i.v, %rb_ractor_main_p.exit ], [ %i.v, %bb.f ], [ %.0, %rb_imemo_fields_complex_tbl.exit ], [ %.1, %bb.m ]
  ret i64 %.4
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_is_instance_id(i64 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc zeroext i1 @rb_ractor_shareable_p(i64 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 256
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @rb_ractor_shareable_p_continue(i64 noundef %0) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.h, %bb.c ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

declare i64 @rb_id2str(i64 noundef) local_unnamed_addr #1

declare zeroext i1 @rb_shape_get_iv_index(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_ivar_get(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_ivar_lookup(i64 noundef %0, i64 noundef %1, i64 noundef 4)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_ivar_get_at(i64 noundef %0, i16 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = and i64 %i.b, 30
  %switch = icmp eq i64 %i.c, 2
  br i1 %switch, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %.not5.i.i.i.i.not19 = or i1 %i.d, %i.f
  %i.g = and i64 %i.b, 16384
  %.not10.i.i = icmp eq i64 %i.g, 0
  %or.cond = or i1 %.not5.i.i.i.i.not19, %.not10.i.i
  br i1 %or.cond, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.c, !prof !111

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.a, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %bb.b
  %i.i = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.d

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.j = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.d:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !32, !range !34, !noundef !35
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7.i.i, label %bb.e

.split7.i.i:                                      ; preds = %bb.d
  %i.n = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.i)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.a, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.c, %.split.i.i, %.split7.i.i, %bb.e
  %.0.i.i = phi ptr [ %i.h, %bb.c ], [ %i.o, %bb.e ], [ %i.j, %.split.i.i ], [ %i.n, %.split7.i.i ]
  %i.p = getelementptr i8, ptr %.0.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !112  ; 2 uses
  %.not.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20
  %i.t = and i64 %i.s, 65536
  %.not5.i = icmp eq i64 %i.t, 0
  %i.u = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.f, !prof !97

bb.f:                                             ; preds = %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %RCLASS_WRITABLE_FIELDS_OBJ.exit, %bb.f
  %.0.i = phi ptr [ %i.v, %bb.f ], [ %i.u, %RCLASS_WRITABLE_FIELDS_OBJ.exit ]
  %i.w = zext i16 %1 to i64
  %i.x = getelementptr [8 x i8], ptr %.0.i, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16   ; 4 uses
  %i.z = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i11 = icmp eq ptr %i.z, null
  br i1 %.not.i11, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %rb_imemo_fields_ptr.exit
  %i.aa = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.aa, label %rb_ractor_main_p.exit.thread, label %bb.g, !prof !69

bb.g:                                             ; preds = %rb_ractor_main_p.exit
  %i.ab = tail call fastcc zeroext i1 @rb_ractor_shareable_p(i64 noundef %i.y)
  br i1 %i.ab, label %rb_ractor_main_p.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ac, ptr noundef nonnull @.str.21) #27
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.ad = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef %2) ; 2 uses
  %.not.i13 = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i13)
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.ag = and i64 %i.af, 65536
  %.not5.i14 = icmp eq i64 %i.ag, 0
  %i.ah = getelementptr i8, ptr %i.ae, i64 16     ; 2 uses
  br i1 %.not5.i14, label %rb_imemo_fields_ptr.exit16, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit16

rb_imemo_fields_ptr.exit16:                       ; preds = %bb.i, %bb.j
  %.0.i15 = phi ptr [ %i.ai, %bb.j ], [ %i.ah, %bb.i ]
  %i.aj = zext i16 %1 to i64
  %i.ak = getelementptr [8 x i8], ptr %.0.i15, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16
  br label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit.thread:                     ; preds = %rb_imemo_fields_ptr.exit, %rb_ractor_main_p.exit, %bb.g, %rb_imemo_fields_ptr.exit16
  %.0 = phi i64 [ %i.al, %rb_imemo_fields_ptr.exit16 ], [ %i.y, %bb.g ], [ %i.y, %rb_ractor_main_p.exit ], [ %i.y, %rb_imemo_fields_ptr.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_ivar_get_at_no_ractor_check(i64 noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = and i64 %i.b, 30
  %switch = icmp eq i64 %i.c, 2
  br i1 %switch, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %.not5.i.i.i.i.not6 = or i1 %i.d, %i.f
  %i.g = and i64 %i.b, 16384
  %.not10.i.i = icmp eq i64 %i.g, 0
  %or.cond = or i1 %.not5.i.i.i.i.not6, %.not10.i.i
  br i1 %or.cond, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.c, !prof !111

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.a, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %bb.b
  %i.i = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.d

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.j = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.d:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !32, !range !34, !noundef !35
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7.i.i, label %bb.e

.split7.i.i:                                      ; preds = %bb.d
  %i.n = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.i)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.a, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.c, %.split.i.i, %.split7.i.i, %bb.e
  %.0.i.i = phi ptr [ %i.h, %bb.c ], [ %i.o, %bb.e ], [ %i.j, %.split.i.i ], [ %i.n, %.split7.i.i ]
  %i.p = getelementptr i8, ptr %.0.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !112
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.r = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %.0 = phi i64 [ %i.r, %bb.f ], [ %i.q, %RCLASS_WRITABLE_FIELDS_OBJ.exit ] ; 2 uses
  %.not.i = icmp ne i64 %.0, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.s = inttoptr i64 %.0 to ptr                  ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !20
  %i.u = and i64 %i.t, 65536
  %.not5.i = icmp eq i64 %i.u, 0
  %i.v = getelementptr i8, ptr %i.s, i64 16       ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.h, !prof !97

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.w, %bb.h ], [ %i.v, %bb.g ]
  %i.x = zext i16 %1 to i64
  %i.y = getelementptr [8 x i8], ptr %.0.i, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !16
  ret i64 %i.z
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_attr_get(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_ivar_lookup(i64 noundef %0, i64 noundef %1, i64 noundef 4)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_evict_ivars_to_hash(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_ivar_count(i64 noundef %0)
  %i.b = tail call ptr @rb_st_init_numtable_with_size(i64 noundef %i.a) #26 ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  tail call fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef nonnull @rb_obj_copy_ivs_to_hash_table_i, i64 noundef %i.c, i1 noundef zeroext true)
  %i.d = tail call fastcc i32 @obj_transition_too_complex(i64 noundef %0, ptr noundef %i.b) ; 0 uses
  ret void
}

declare ptr @rb_st_init_numtable_with_size(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_ivar_count(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 6 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  switch i32 %i.h, label %bb.i [
    i32 1, label %rb_shape_obj_too_complex_p.exit.i
    i32 2, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
    i32 3, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
    i32 26, label %rb_shape_obj_too_complex_p.exit28
  ]

rb_shape_obj_too_complex_p.exit.i:                ; preds = %bb.b
  %1 = and i64 %i.f, 576460752303423488
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %rb_shape_obj_too_complex_p.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %rb_shape_obj_too_complex_p.exit.i
  %i.i = getelementptr i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = tail call i64 @rb_st_table_size(ptr noundef %i.j) #26
  br label %ROBJECT_FIELDS_COUNT.exit

rb_shape_obj_too_complex_p.exit.thread.i:         ; preds = %rb_shape_obj_too_complex_p.exit.i
  %2 = lshr i64 %i.f, 32
  %i.l = and i64 %2, 524287
  %i.m = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.n = getelementptr [40 x i8], ptr %i.m, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 28
  %i.p = load i16, ptr %i.o, align 4, !tbaa !120
  %i.q = zext i16 %i.p to i64
  br label %ROBJECT_FIELDS_COUNT.exit

ROBJECT_FIELDS_COUNT.exit:                        ; preds = %bb.c, %rb_shape_obj_too_complex_p.exit.thread.i
  %.0.i = phi i64 [ %i.k, %bb.c ], [ %i.q, %rb_shape_obj_too_complex_p.exit.thread.i ]
  %i.r = and i64 %.0.i, 4294967295
  br label %.thread

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.b, %bb.b
  %i.s = and i64 %i.f, 16384
  %.not10.i.i = icmp eq i64 %i.s, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.d, !prof !121

bb.d:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.t = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.u = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.e

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.v = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.e:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.w = getelementptr i8, ptr %i.u, i64 128
  %i.x = load i8, ptr %i.w, align 8, !tbaa !32, !range !34, !noundef !35
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.split7.i.i, label %bb.f

.split7.i.i:                                      ; preds = %bb.e
  %i.z = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.u)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.d, %.split.i.i, %.split7.i.i, %bb.f
  %.0.i.i = phi ptr [ %i.t, %bb.d ], [ %i.aa, %bb.f ], [ %i.v, %.split.i.i ], [ %i.z, %.split7.i.i ]
  %i.ab = getelementptr i8, ptr %.0.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !112 ; 3 uses
  %.not.not = icmp eq i64 %i.ac, 0
  br i1 %.not.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %i.ad = and i64 %i.ac, 7
  %.not38 = icmp eq i64 %i.ad, 0
  %i.ae = inttoptr i64 %i.ac to ptr               ; 3 uses
  br i1 %.not38, label %rb_shape_obj_too_complex_p.exit, label %rb_shape_obj_too_complex_p.exit.thread

rb_shape_obj_too_complex_p.exit:                  ; preds = %bb.g
  %3 = load i64, ptr %i.ae, align 8, !tbaa !20
  %4 = and i64 %3, 576460752303423488
  %.not39 = icmp eq i64 %4, 0
  br i1 %.not39, label %rb_shape_obj_too_complex_p.exit.thread, label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %rb_shape_obj_too_complex_p.exit
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.ah = tail call i64 @rb_st_table_size(ptr noundef %i.ag) #26
  br label %.thread

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.g, %rb_shape_obj_too_complex_p.exit
  %5 = load i64, ptr %i.ae, align 8, !tbaa !20
  %6 = lshr i64 %5, 32
  %7 = and i64 %6, 524287
  %i.ai = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.aj = getelementptr [40 x i8], ptr %i.ai, i64 %7
  %i.ak = getelementptr i8, ptr %i.aj, i64 28
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !120
  %i.am = zext i16 %i.al to i64
  br label %.thread

rb_shape_obj_too_complex_p.exit28:                ; preds = %bb.b
  %8 = and i64 %i.f, 576460752303423488
  %.not37 = icmp eq i64 %8, 0
  br i1 %.not37, label %bb.h, label %rb_imemo_fields_complex_tbl.exit31

rb_imemo_fields_complex_tbl.exit31:               ; preds = %rb_shape_obj_too_complex_p.exit28
  %i.an = getelementptr i8, ptr %i.e, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42
  %i.ap = tail call i64 @rb_st_table_size(ptr noundef %i.ao) #26
  br label %.thread

bb.h:                                             ; preds = %rb_shape_obj_too_complex_p.exit28
  %9 = lshr i64 %i.f, 32
  %i.aq = and i64 %9, 524287
  %i.ar = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.as = getelementptr [40 x i8], ptr %i.ar, i64 %i.aq
  %i.at = getelementptr i8, ptr %i.as, i64 28
  %i.au = load i16, ptr %i.at, align 4, !tbaa !120
  %i.av = zext i16 %i.au to i64
  br label %.thread

bb.i:                                             ; preds = %bb.b
  %i.aw = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0) ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = and i64 %i.aw, 7
  %.not40 = icmp eq i64 %i.ax, 0
  br i1 %.not40, label %rb_shape_obj_too_complex_p.exit32, label %rb_shape_obj_too_complex_p.exit32.thread

rb_shape_obj_too_complex_p.exit32:                ; preds = %bb.j
  %i.ay = inttoptr i64 %i.aw to ptr               ; 2 uses
  %10 = load i64, ptr %i.ay, align 8, !tbaa !20
  %11 = and i64 %10, 576460752303423488
  %.not41 = icmp eq i64 %11, 0
  br i1 %.not41, label %rb_shape_obj_too_complex_p.exit32.thread, label %rb_imemo_fields_complex_tbl.exit35

rb_imemo_fields_complex_tbl.exit35:               ; preds = %rb_shape_obj_too_complex_p.exit32
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !42
  %i.bb = tail call i64 @rb_st_table_size(ptr noundef %i.ba) #26 ; 0 uses
  br label %.thread

rb_shape_obj_too_complex_p.exit32.thread:         ; preds = %bb.j, %rb_shape_obj_too_complex_p.exit32
  %12 = load i64, ptr %i.e, align 8, !tbaa !20
  %13 = lshr i64 %12, 32
  %14 = and i64 %13, 524287
  %i.bc = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.bd = getelementptr [40 x i8], ptr %i.bc, i64 %14
  %i.be = getelementptr i8, ptr %i.bd, i64 28
  %i.bf = load i16, ptr %i.be, align 4, !tbaa !120
  %i.bg = zext i16 %i.bf to i64
  br label %.thread

.thread:                                          ; preds = %rb_shape_obj_too_complex_p.exit.thread, %rb_imemo_fields_complex_tbl.exit, %bb.i, %rb_shape_obj_too_complex_p.exit32.thread, %rb_imemo_fields_complex_tbl.exit35, %rb_imemo_fields_complex_tbl.exit31, %bb.h, %ROBJECT_FIELDS_COUNT.exit
  %.3 = phi i64 [ %i.av, %bb.h ], [ %i.r, %ROBJECT_FIELDS_COUNT.exit ], [ 0, %bb.i ], [ %i.ap, %rb_imemo_fields_complex_tbl.exit31 ], [ 0, %rb_imemo_fields_complex_tbl.exit35 ], [ %i.bg, %rb_shape_obj_too_complex_p.exit32.thread ], [ %i.am, %rb_shape_obj_too_complex_p.exit.thread ], [ %i.ah, %rb_imemo_fields_complex_tbl.exit ]
  %15 = load i64, ptr %i.e, align 8, !tbaa !20
  %16 = shl i64 %15, 5
  %sext = ashr i64 %16, 63
  %spec.select = add i64 %sext, %.3
  br label %bb.k

bb.k:                                             ; preds = %RCLASS_WRITABLE_FIELDS_OBJ.exit, %.thread, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ %spec.select, %.thread ], [ 0, %RCLASS_WRITABLE_FIELDS_OBJ.exit ]
  ret i64 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_obj_copy_ivs_to_hash_table(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  tail call fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef nonnull @rb_obj_copy_ivs_to_hash_table_i, i64 noundef %i.a, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @obj_transition_too_complex(i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call i32 @rb_shape_transition_complex(i64 noundef %0) #26 ; 4 uses
  %i.c = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 5 uses
  %i.e = and i64 %i.d, 31
  %cond = icmp eq i64 %i.e, 1
  br i1 %cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.d, 65536
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.g = and i64 %i.d, 4294901729
  %i.h = zext i32 %i.b to i64
  %i.i = shl nuw i64 %i.h, 32
  %i.j = or disjoint i64 %i.g, %i.i
  %i.k = or disjoint i64 %i.j, 65536
  store i64 %i.k, ptr %i.c, align 8, !tbaa !20
  %i.l = getelementptr i8, ptr %i.c, i64 16
  store ptr %1, ptr %i.l, align 8, !tbaa !42
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.c, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %i.o = and i64 %i.d, 4294967265
  %i.p = zext i32 %i.b to i64
  %i.q = shl nuw i64 %i.p, 32
  %i.r = or disjoint i64 %i.o, %i.q
  store i64 %i.r, ptr %i.c, align 8, !tbaa !20
  %i.s = getelementptr i8, ptr %i.c, i64 16
  store ptr %1, ptr %i.s, align 8, !tbaa !42
  %.not18 = icmp eq ptr %i.n, null
  br i1 %.not18, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_xfree(ptr noundef nonnull %i.n) #26
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.t = and i64 %i.d, 256
  %i.u = icmp ne i64 %i.t, 0
  %i.v = tail call i64 @rb_imemo_fields_new_complex_tbl(i64 noundef %0, ptr noundef %1, i1 noundef zeroext %i.u) #26 ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20
  %i.y = and i64 %i.x, 4294967295
  %i.z = zext i32 %i.b to i64
  %i.aa = shl nuw i64 %i.z, 32
  %i.ab = or disjoint i64 %i.y, %i.aa
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ac = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %bb.f, label %rb_vm_lock_enter.exit.i

bb.f:                                             ; preds = %bb.e
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #26
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.f, %bb.e
  %i.ad = call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0)
  call fastcc void @rb_obj_set_fields(i64 noundef %0, i64 noundef %i.v, i64 noundef 0, i64 noundef %i.ad)
  %i.ae = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i5.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i5.i, label %bb.g, label %rb_obj_replace_fields.exit

bb.g:                                             ; preds = %rb_vm_lock_enter.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #26
  br label %rb_obj_replace_fields.exit

rb_obj_replace_fields.exit:                       ; preds = %rb_vm_lock_enter.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.c, %bb.d, %rb_obj_replace_fields.exit
  ret i32 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_attr_delete(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_ivar_delete(i64 noundef %0, i64 noundef %1, i64 noundef 4)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_ivar_delete(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 4, 37) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = icmp ne i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp eq i64 %i.e, 0
  %.not3.i.i = and i1 %i.d, %i.f
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !124

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 4 uses
  %i.i = and i64 %i.h, 2048
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.j = and i64 %i.h, 31
  %i.k = icmp ne i64 %i.j, 5
  %i.l = and i64 %i.h, 49152
  %.not8.i = icmp eq i64 %i.l, 0
  %or.cond.i = or i1 %i.k, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !126

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #26
  %.pre = load i64, ptr %i.g, align 8, !tbaa !20
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.m = phi i64 [ %i.h, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %2, ptr %i.a, align 8, !tbaa !16
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 31                         ; 3 uses
  switch i32 %i.o, label %.thread [
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 1, label %.thread100
  ]

bb.c:                                             ; preds = %rb_check_frozen_inline.exit, %rb_check_frozen_inline.exit
  %i.p = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.c
  %i.q = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.q, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %bb.d, !prof !69

bb.d:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.r = tail call i32 @rb_is_instance_id(i64 noundef %1) #33
  %.not.i74 = icmp eq i32 %i.r, 0
  br i1 %.not.i74, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.47) #27
  unreachable

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.d, %rb_ractor_main_p.exit.i, %bb.c
  %i.t = load i64, ptr %i.g, align 8, !tbaa !20
  %i.u = and i64 %i.t, 16384
  %.not10.i.i = icmp eq i64 %i.u, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.f, !prof !121

bb.f:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.v = getelementptr i8, ptr %i.g, i64 24
  br label %bb.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.w = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.w, null
  br i1 %.not.i.i75, label %.split.i.i, label %bb.g

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.x = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %bb.i

bb.g:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.y = getelementptr i8, ptr %i.w, i64 128
  %i.z = load i8, ptr %i.y, align 8, !tbaa !32, !range !34, !noundef !35
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.split7.i.i, label %bb.h

.split7.i.i:                                      ; preds = %bb.g
  %i.ab = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.w)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.g, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.split7.i.i, %.split.i.i, %bb.f
  %.0.i.i = phi ptr [ %i.v, %bb.f ], [ %i.ac, %bb.h ], [ %i.x, %.split.i.i ], [ %i.ab, %.split7.i.i ]
  %i.ad = getelementptr i8, ptr %.0.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !112 ; 5 uses
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.aj, label %bb.j

.thread:                                          ; preds = %rb_check_frozen_inline.exit
  %i.af = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef %1) ; 3 uses
  %.not113 = icmp eq i64 %i.af, 0
  br i1 %.not113, label %bb.aj, label %.thread100

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i76 = icmp eq ptr %i.ag, null
  br i1 %.not.i76, label %bb.k, label %.thread100

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call i64 @rb_imemo_fields_clone(i64 noundef %i.ae) #26
  br label %.thread100

.thread100:                                       ; preds = %.thread, %rb_check_frozen_inline.exit, %bb.k, %bb.j
  %.06499103 = phi i64 [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %0, %rb_check_frozen_inline.exit ], [ %i.af, %.thread ] ; 2 uses
  %.165 = phi i64 [ %i.ah, %bb.k ], [ %i.ae, %bb.j ], [ %0, %rb_check_frozen_inline.exit ], [ %i.af, %.thread ] ; 10 uses
  %i.ai = inttoptr i64 %.165 to ptr               ; 8 uses
  %3 = load i64, ptr %i.ai, align 8, !tbaa !20
  %4 = lshr i64 %3, 32
  %5 = trunc nuw i64 %4 to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.aj = call i32 @rb_shape_transition_remove_ivar(i64 noundef %.165, i64 noundef %1, ptr noundef nonnull %i.b) #26 ; 6 uses
  %i.ak = and i32 %i.aj, 134217728
  %.not104 = icmp eq i32 %i.ak, 0
  br i1 %.not104, label %bb.t, label %bb.l, !prof !97

bb.l:                                             ; preds = %.thread100
  %i.al = and i32 %5, 134217728
  %.not105 = icmp eq i32 %i.al, 0
  br i1 %.not105, label %bb.m, label %bb.p, !prof !94

bb.m:                                             ; preds = %bb.l
  %i.am = icmp eq i32 %i.o, 1
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = call fastcc i32 @rb_evict_fields_to_hash(i64 noundef %0) ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ao = call fastcc i64 @imemo_fields_complex_from_obj(i64 noundef %0, i64 noundef %.165, i32 noundef %i.aj)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %.2 = phi i64 [ %.165, %bb.n ], [ %i.ao, %bb.o ], [ %.165, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %1, ptr %i.c, align 8, !tbaa !16
  %.not.i77 = icmp eq i64 %.2, 0
  br i1 %.not.i77, label %rb_imemo_fields_complex_tbl.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = inttoptr i64 %.2 to ptr
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !42
  br label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %bb.p, %bb.q
  %.0.i = phi ptr [ %i.ar, %bb.q ], [ null, %bb.p ]
  %i.as = call i32 @rb_st_delete(ptr noundef %.0.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #26
  %.not72 = icmp eq i32 %i.as, 0
  br i1 %.not72, label %bb.r, label %bb.s

bb.r:                                             ; preds = %rb_imemo_fields_complex_tbl.exit
  store i64 %2, ptr %i.a, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %rb_imemo_fields_complex_tbl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.ab

bb.t:                                             ; preds = %.thread100
  %i.at = icmp eq i32 %i.aj, %5
  br i1 %i.at, label %bb.ai, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i78 = icmp eq i64 %.165, 0
  br i1 %.not.i78, label %rb_imemo_fields_ptr.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.av = and i64 %i.au, 65536
  %.not5.i = icmp eq i64 %i.av, 0
  %i.aw = getelementptr i8, ptr %i.ai, i64 16     ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.w, !prof !97

bb.w:                                             ; preds = %bb.v
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.u, %bb.v, %bb.w
  %.0.i79 = phi ptr [ %i.ax, %bb.w ], [ null, %bb.u ], [ %i.aw, %bb.v ] ; 3 uses
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !7
  %i.az = and i32 %i.ay, 524287
  %i.ba = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113 ; 2 uses
  %i.bb = zext nneg i32 %i.az to i64
  %i.bc = getelementptr [40 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 28
  %i.be = load i16, ptr %i.bd, align 4, !tbaa !120
  %i.bf = add i16 %i.be, -1                       ; 2 uses
  %i.bg = zext i16 %i.bf to i64
  %i.bh = getelementptr [8 x i8], ptr %.0.i79, i64 %i.bg ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !16
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !16
  %i.bj = and i32 %i.aj, 524287
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr [40 x i8], ptr %i.ba, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 28
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !120 ; 3 uses
  %.not69 = icmp eq i16 %i.bn, 0
  br i1 %.not69, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.bo = zext i16 %i.bn to i32                   ; 2 uses
  %i.bp = zext i16 %i.bf to i32
  %i.bq = sub nsw i32 %i.bo, %i.bp                ; 2 uses
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = icmp slt i32 %i.bq, 0
  br i1 %i.bs, label %bb.y, label %rbimpl_size_mul_or_raise.exit, !prof !94

bb.y:                                             ; preds = %bb.x
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef range(i64 -65534, 4294967296) %i.br) #27
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.x
  %i.bt = getelementptr i8, ptr %i.bh, i64 8
  %i.bu = shl nuw nsw i64 %i.br, 3
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bh, ptr noundef nonnull align 1 %i.bt, i64 noundef %i.bu, i1 noundef false) #26
  %i.bv = load i64, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %i.bw = and i64 %i.bv, 4294967295
  %i.bx = zext i32 %i.aj to i64
  %i.by = shl nuw i64 %i.bx, 32
  %i.bz = or disjoint i64 %i.bw, %i.by
  store i64 %i.bz, ptr %i.ai, align 8, !tbaa !20
  %i.ca = and i64 %i.bv, 65536
  %.not70 = icmp eq i64 %i.ca, 0
  br i1 %.not70, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.cb = call i64 @rb_obj_embedded_size(i32 noundef %i.bo) #26
  %i.cc = call i64 @rb_gc_obj_slot_size(i64 noundef %.165) #26
  %.not71 = icmp ugt i64 %i.cb, %i.cc
  br i1 %.not71, label %bb.ab, label %rb_imemo_fields_ptr.exit83

rb_imemo_fields_ptr.exit83:                       ; preds = %bb.z
  %i.cd = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.ce = and i64 %i.cd, -65537
  store i64 %i.ce, ptr %i.ai, align 8, !tbaa !20
  %i.cf = zext i16 %i.bn to i64
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = getelementptr i8, ptr %i.ai, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ch, ptr noundef nonnull readonly align 1 %.0.i79, i64 noundef range(i64 1, 0) %i.cg, i1 noundef false) #26
  call void @ruby_xfree(ptr noundef nonnull %.0.i79) #26
  br label %bb.ab

bb.aa:                                            ; preds = %rb_imemo_fields_ptr.exit
  call void @rb_free_generic_ivar(i64 noundef %0)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %rb_imemo_fields_ptr.exit83, %bb.z, %rbimpl_size_mul_or_raise.exit, %bb.s
  %.4 = phi i64 [ %.2, %bb.s ], [ 0, %bb.aa ], [ %.165, %rb_imemo_fields_ptr.exit83 ], [ %.165, %bb.z ], [ %.165, %rbimpl_size_mul_or_raise.exit ] ; 6 uses
  %i.ci = load i64, ptr %i.g, align 8, !tbaa !20  ; 2 uses
  %i.cj = and i64 %i.ci, 4294967295
  %i.ck = zext i32 %i.aj to i64
  %i.cl = shl nuw i64 %i.ck, 32
  %i.cm = or disjoint i64 %i.cj, %i.cl
  store i64 %i.cm, ptr %i.g, align 8, !tbaa !20
  %.not73 = icmp eq i64 %.4, %.06499103
  br i1 %.not73, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  switch i32 %i.o, label %bb.ah [
    i32 1, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit
    i32 2, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i93
    i32 3, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i93
  ]

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i93:      ; preds = %bb.ac, %bb.ac
  %i.cn = and i64 %i.ci, 16384
  %.not10.i.i94 = icmp eq i64 %i.cn, 0
  br i1 %.not10.i.i94, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i88, label %bb.ad, !prof !121

bb.ad:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i93
  %i.co = getelementptr i8, ptr %i.g, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i88: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i93
  %i.cp = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i89, label %.split.i.i92, label %bb.ae

.split.i.i92:                                     ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i88
  %i.cq = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.ae:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i88
  %i.cr = getelementptr i8, ptr %i.cp, i64 128
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !32, !range !34, !noundef !35
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %.split7.i.i91, label %bb.af

.split7.i.i91:                                    ; preds = %bb.ae
  %i.cu = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.cp)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.cv = getelementptr i8, ptr %i.g, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i:                       ; preds = %bb.af, %.split7.i.i91, %.split.i.i92, %bb.ad
  %.0.i.i90 = phi ptr [ %i.co, %bb.ad ], [ %i.cv, %bb.af ], [ %i.cq, %.split.i.i92 ], [ %i.cu, %.split7.i.i91 ]
  %i.cw = getelementptr i8, ptr %.0.i.i90, i64 16
  store atomic volatile i64 %.4, ptr %i.cw seq_cst, align 8
  %i.cx = icmp eq i64 %.4, 0
  %i.cy = and i64 %.4, 7
  %i.cz = icmp ne i64 %i.cy, 0
  %i.da = or i1 %i.cx, %i.cz
  br i1 %i.da, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, label %bb.ag

bb.ag:                                            ; preds = %RCLASS_EXT_WRITABLE.exit.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %.4) #26
  br label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit

bb.ah:                                            ; preds = %bb.ac
  call fastcc void @rb_obj_set_fields(i64 noundef %0, i64 noundef %.4, i64 noundef %1, i64 noundef %.06499103)
  br label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit

RCLASS_WRITABLE_SET_FIELDS_OBJ.exit:              ; preds = %bb.ag, %RCLASS_EXT_WRITABLE.exit.i, %bb.ac, %bb.ah, %bb.ab
  %i.db = load i64, ptr %i.a, align 8, !tbaa !16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.t, %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit
  %.0 = phi i64 [ %i.db, %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit ], [ %2, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.aj

bb.aj:                                            ; preds = %.thread, %bb.i, %bb.ai
  %.1 = phi i64 [ %.0, %bb.ai ], [ %2, %bb.i ], [ %2, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_obj_init_too_complex(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @obj_transition_too_complex(i64 noundef %0, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ensure_iv_list_size(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = and i64 %i.b, 65536
  %.not = icmp eq i64 %i.c, 0
  %i.d = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  br i1 %.not, label %ROBJECT_FIELDS.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = zext i32 %2 to i64
  %i.g = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.e, i64 noundef %i.f, i64 noundef 8) #30
  br label %bb.d

ROBJECT_FIELDS.exit:                              ; preds = %bb.a
  %i.h = zext i32 %2 to i64
  %i.i = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.h, i64 noundef 8) #31 ; 2 uses
  %.not.i11 = icmp eq i32 %1, 0
  br i1 %.not.i11, label %ruby_nonempty_memcpy.exit, label %bb.c

bb.c:                                             ; preds = %ROBJECT_FIELDS.exit
  %i.j = zext i32 %1 to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.i, ptr noundef nonnull readonly align 1 %i.d, i64 noundef range(i64 1, 0) %i.k, i1 noundef false) #26
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %ROBJECT_FIELDS.exit, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !20
  %i.m = or i64 %i.l, 65536
  store i64 %i.m, ptr %i.a, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %ruby_nonempty_memcpy.exit, %bb.b
  %.sink = phi ptr [ %i.i, %ruby_nonempty_memcpy.exit ], [ %i.g, %bb.b ]
  store ptr %.sink, ptr %i.d, align 8, !tbaa !42
  ret void
}

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_ivar_foreach(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rb_obj_copy_ivs_to_hash_table_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr
  tail call void @rb_st_add_direct(ptr noundef %i.a, i64 noundef %0, i64 noundef %1) #26
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_obj_copy_fields_to_hash_table(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  tail call fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef nonnull @rb_obj_copy_ivs_to_hash_table_i, i64 noundef %i.a, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.iv_itr_data, align 8        ; 11 uses
  %5 = alloca %struct.iv_itr_data, align 8        ; 11 uses
  %6 = alloca %struct.iv_itr_data, align 8        ; 11 uses
  %7 = alloca %struct.iv_itr_data, align 8        ; 11 uses
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 6 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  switch i32 %i.h, label %bb.s [
    i32 26, label %imemo_type_p.exit
    i32 1, label %bb.f
    i32 2, label %bb.j
    i32 3, label %bb.j
  ]

imemo_type_p.exit:                                ; preds = %bb.b
  %i.i = and i64 %i.f, 61471
  %.not44 = icmp eq i64 %i.i, 53274
  br i1 %.not44, label %bb.c, label %bb.w

bb.c:                                             ; preds = %imemo_type_p.exit
  %i.j = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i64 %0, ptr %7, align 8, !tbaa !127
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !130
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %2, ptr %i.l, align 8, !tbaa !131
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %1, ptr %i.m, align 8, !tbaa !132
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !133
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 %i.j, ptr %i.o, align 8, !tbaa !134
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.p, i8 0, i64 7, i1 false)
  %8 = lshr i64 %i.f, 32
  %9 = trunc nuw i64 %8 to i32                    ; 2 uses
  %i.q = and i32 %9, 134217728
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.d, label %rb_imemo_fields_complex_tbl.exit.i

rb_imemo_fields_complex_tbl.exit.i:               ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.e, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.t = ptrtoint ptr %7 to i64
  %i.u = call i32 @rb_st_foreach(ptr noundef %i.s, ptr noundef nonnull @each_hash_iv, i64 noundef %i.t) #26 ; 0 uses
  br label %imemo_fields_each.exit

bb.d:                                             ; preds = %bb.c
  %i.v = and i64 %i.f, 65536
  %.not5.i.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  br i1 %.not5.i.i, label %rb_imemo_fields_ptr.exit.i, label %bb.e, !prof !97

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit.i

rb_imemo_fields_ptr.exit.i:                       ; preds = %bb.e, %bb.d
  %.0.i12.i = phi ptr [ %i.x, %bb.e ], [ %i.w, %bb.d ]
  store ptr %.0.i12.i, ptr %i.n, align 8, !tbaa !133
  %i.y = call zeroext i1 @rb_shape_foreach_field(i32 noundef %9, ptr noundef nonnull @iterate_over_shapes_callback, ptr noundef nonnull %7) #26 ; 0 uses
  br label %imemo_fields_each.exit

imemo_fields_each.exit:                           ; preds = %rb_imemo_fields_complex_tbl.exit.i, %rb_imemo_fields_ptr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.w

bb.f:                                             ; preds = %bb.b
  %i.z = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i64 %0, ptr %6, align 8, !tbaa !127
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !130
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %2, ptr %i.ab, align 8, !tbaa !131
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %i.ac, align 8, !tbaa !132
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !133
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 %i.z, ptr %i.ae, align 8, !tbaa !134
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.af, i8 0, i64 7, i1 false)
  %10 = lshr i64 %i.f, 32
  %11 = trunc nuw i64 %10 to i32                  ; 2 uses
  %i.ag = and i32 %11, 134217728
  %.not.i25 = icmp eq i32 %i.ag, 0
  br i1 %.not.i25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %i.e, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  %i.aj = ptrtoint ptr %6 to i64
  %i.ak = call i32 @rb_st_foreach(ptr noundef %i.ai, ptr noundef nonnull @each_hash_iv, i64 noundef %i.aj) #26 ; 0 uses
  br label %obj_fields_each.exit

bb.h:                                             ; preds = %bb.f
  %i.al = and i64 %i.f, 65536
  %.not.i.i = icmp eq i64 %i.al, 0
  %i.am = getelementptr i8, ptr %i.e, i64 16      ; 2 uses
  br i1 %.not.i.i, label %ROBJECT_FIELDS.exit.i, label %bb.i, !prof !97

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !42
  br label %ROBJECT_FIELDS.exit.i

ROBJECT_FIELDS.exit.i:                            ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.an, %bb.i ], [ %i.am, %bb.h ]
  store ptr %.0.i.i, ptr %i.ad, align 8, !tbaa !133
  %i.ao = call zeroext i1 @rb_shape_foreach_field(i32 noundef %11, ptr noundef nonnull @iterate_over_shapes_callback, ptr noundef nonnull %6) #26 ; 0 uses
  br label %obj_fields_each.exit

obj_fields_each.exit:                             ; preds = %bb.g, %ROBJECT_FIELDS.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.w

bb.j:                                             ; preds = %bb.b, %bb.b
  %i.ap = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i26 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i26, label %rb_ractor_main_p.exit.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.j
  %i.aq = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.aq, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %bb.k, !prof !69

bb.k:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.ar = tail call i32 @rb_is_instance_id(i64 noundef 0) #33
  %.not.i27 = icmp eq i32 %i.ar, 0
  br i1 %.not.i27, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.as, ptr noundef nonnull @.str.47) #27
  unreachable

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.k, %rb_ractor_main_p.exit.i, %bb.j
  %i.at = load i64, ptr %i.e, align 8, !tbaa !20
  %i.au = and i64 %i.at, 16384
  %.not10.i.i = icmp eq i64 %i.au, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.m, !prof !121

bb.m:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.av = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.aw = tail call ptr @rb_current_box() #26     ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i28, label %.split.i.i, label %bb.n

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.ax = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.n:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.ay = getelementptr i8, ptr %i.aw, i64 128
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !32, !range !34, !noundef !35
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.split7.i.i, label %bb.o

.split7.i.i:                                      ; preds = %bb.n
  %i.bb = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.aw)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.m, %.split.i.i, %.split7.i.i, %bb.o
  %.0.i.i29 = phi ptr [ %i.av, %bb.m ], [ %i.bc, %bb.o ], [ %i.ax, %.split.i.i ], [ %i.bb, %.split7.i.i ]
  %i.bd = getelementptr i8, ptr %.0.i.i29, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !112 ; 3 uses
  %.not = icmp eq i64 %i.be, 0
  br i1 %.not, label %bb.w, label %bb.p

bb.p:                                             ; preds = %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %i.bf = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 %i.be, ptr %5, align 8, !tbaa !127
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.bg, align 8, !tbaa !130
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.bh, align 8, !tbaa !131
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.bi, align 8, !tbaa !132
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !133
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 %i.bf, ptr %i.bk, align 8, !tbaa !134
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bl, i8 0, i64 7, i1 false)
  %i.bm = inttoptr i64 %i.be to ptr               ; 3 uses
  %12 = load i64, ptr %i.bm, align 8, !tbaa !20   ; 2 uses
  %13 = lshr i64 %12, 32
  %14 = trunc nuw i64 %13 to i32                  ; 2 uses
  %i.bn = and i32 %14, 134217728
  %.not.i30 = icmp eq i32 %i.bn, 0
  br i1 %.not.i30, label %bb.q, label %rb_imemo_fields_complex_tbl.exit.i31

rb_imemo_fields_complex_tbl.exit.i31:             ; preds = %bb.p
  %i.bo = getelementptr i8, ptr %i.bm, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !42
  %i.bq = ptrtoint ptr %5 to i64
  %i.br = call i32 @rb_st_foreach(ptr noundef %i.bp, ptr noundef nonnull @each_hash_iv, i64 noundef %i.bq) #26 ; 0 uses
  br label %imemo_fields_each.exit36

bb.q:                                             ; preds = %bb.p
  %i.bs = and i64 %12, 65536
  %.not5.i.i33 = icmp eq i64 %i.bs, 0
  %i.bt = getelementptr i8, ptr %i.bm, i64 16     ; 2 uses
  br i1 %.not5.i.i33, label %rb_imemo_fields_ptr.exit.i34, label %bb.r, !prof !97

bb.r:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit.i34

rb_imemo_fields_ptr.exit.i34:                     ; preds = %bb.r, %bb.q
  %.0.i12.i35 = phi ptr [ %i.bu, %bb.r ], [ %i.bt, %bb.q ]
  store ptr %.0.i12.i35, ptr %i.bj, align 8, !tbaa !133
  %i.bv = call zeroext i1 @rb_shape_foreach_field(i32 noundef %14, ptr noundef nonnull @iterate_over_shapes_callback, ptr noundef nonnull %5) #26 ; 0 uses
  br label %imemo_fields_each.exit36

imemo_fields_each.exit36:                         ; preds = %rb_imemo_fields_complex_tbl.exit.i31, %rb_imemo_fields_ptr.exit.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.w

bb.s:                                             ; preds = %bb.b
  %i.bw = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0) ; 3 uses
  %.not24 = icmp eq i64 %i.bw, 0
  br i1 %.not24, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 %i.bw, ptr %4, align 8, !tbaa !127
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.by, align 8, !tbaa !130
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %2, ptr %i.bz, align 8, !tbaa !131
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %1, ptr %i.ca, align 8, !tbaa !132
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr null, ptr %i.cb, align 8, !tbaa !133
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 %i.bx, ptr %i.cc, align 8, !tbaa !134
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.cd, i8 0, i64 7, i1 false)
  %i.ce = inttoptr i64 %i.bw to ptr               ; 3 uses
  %15 = load i64, ptr %i.ce, align 8, !tbaa !20   ; 2 uses
  %16 = lshr i64 %15, 32
  %17 = trunc nuw i64 %16 to i32                  ; 2 uses
  %i.cf = and i32 %17, 134217728
  %.not.i37 = icmp eq i32 %i.cf, 0
  br i1 %.not.i37, label %bb.u, label %rb_imemo_fields_complex_tbl.exit.i38

rb_imemo_fields_complex_tbl.exit.i38:             ; preds = %bb.t
  %i.cg = getelementptr i8, ptr %i.ce, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !42
  %i.ci = ptrtoint ptr %4 to i64
  %i.cj = call i32 @rb_st_foreach(ptr noundef %i.ch, ptr noundef nonnull @each_hash_iv, i64 noundef %i.ci) #26 ; 0 uses
  br label %imemo_fields_each.exit43

bb.u:                                             ; preds = %bb.t
  %i.ck = and i64 %15, 65536
  %.not5.i.i40 = icmp eq i64 %i.ck, 0
  %i.cl = getelementptr i8, ptr %i.ce, i64 16     ; 2 uses
  br i1 %.not5.i.i40, label %rb_imemo_fields_ptr.exit.i41, label %bb.v, !prof !97

bb.v:                                             ; preds = %bb.u
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit.i41

rb_imemo_fields_ptr.exit.i41:                     ; preds = %bb.v, %bb.u
  %.0.i12.i42 = phi ptr [ %i.cm, %bb.v ], [ %i.cl, %bb.u ]
  store ptr %.0.i12.i42, ptr %i.cb, align 8, !tbaa !133
  %i.cn = call zeroext i1 @rb_shape_foreach_field(i32 noundef %17, ptr noundef nonnull @iterate_over_shapes_callback, ptr noundef nonnull %4) #26 ; 0 uses
  br label %imemo_fields_each.exit43

imemo_fields_each.exit43:                         ; preds = %rb_imemo_fields_complex_tbl.exit.i38, %rb_imemo_fields_ptr.exit.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %imemo_fields_each.exit43, %RCLASS_WRITABLE_FIELDS_OBJ.exit, %imemo_fields_each.exit36, %imemo_type_p.exit, %imemo_fields_each.exit, %bb.a, %obj_fields_each.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_vm_set_ivar_id(i64 noundef %0, i64 noundef %1, i64 noundef returned %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not3.i.i = and i1 %i.b, %i.d
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !124

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 4 uses
  %i.g = and i64 %i.f, 2048
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.h = and i64 %i.f, 31
  %i.i = icmp ne i64 %i.h, 5
  %i.j = and i64 %i.f, 49152
  %.not8.i = icmp eq i64 %i.j, 0
  %or.cond.i = or i1 %i.i, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !126

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #26
  %.pre = load i64, ptr %i.e, align 8, !tbaa !20
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %3 = phi i64 [ %i.f, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %bb.b ]
  %4 = lshr i64 %3, 32                            ; 2 uses
  %5 = trunc nuw i64 %4 to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 %5, ptr %i.a, align 4, !tbaa !7
  %i.k = and i32 %5, 134217728
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %obj_ivar_set.exit

bb.c:                                             ; preds = %rb_check_frozen_inline.exit
  %i.l = call zeroext i1 @rb_shape_find_ivar(i32 noundef %5, i64 noundef %1, ptr noundef nonnull %i.a) #26
  br i1 %i.l, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre.i.i = load i32, ptr %i.a, align 4, !tbaa !7
  br label %obj_ivar_set.exit

bb.d:                                             ; preds = %bb.c
  %6 = and i64 %4, 524287
  %i.m = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.n = getelementptr [40 x i8], ptr %i.m, i64 %6
  %i.o = getelementptr i8, ptr %i.n, i64 28
  %i.p = load i16, ptr %i.o, align 4, !tbaa !120
  %i.q = icmp eq i16 %i.p, -1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.48) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = call i32 @rb_shape_transition_add_ivar(i64 noundef %0, i64 noundef %1) #26
  br label %obj_ivar_set.exit

obj_ivar_set.exit:                                ; preds = %rb_check_frozen_inline.exit, %._crit_edge.i.i, %bb.f
  %i.t = phi i32 [ %5, %rb_check_frozen_inline.exit ], [ %.pre.i.i, %._crit_edge.i.i ], [ %i.s, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.u = call fastcc zeroext i16 @obj_field_set(i64 noundef %0, i32 noundef %i.t, i64 noundef %1, i64 noundef %2) ; 0 uses
  ret i64 %2
}

declare i32 @rb_shape_transition_frozen(i64 noundef) local_unnamed_addr #1

declare void @rb_freeze_singleton_class(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_ivar_set(i64 noundef %0, i64 noundef %1, i64 noundef returned %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !124

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %i.h, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !126

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #26
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.j = tail call fastcc zeroext i16 @ivar_set(i64 noundef %0, i64 noundef %1, i64 noundef %2) ; 0 uses
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i16 @ivar_set(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = inttoptr i64 %0 to ptr
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 3 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = and i32 %i.f, 31
  switch i32 %i.g, label %bb.j [
    i32 1, label %bb.b
    i32 2, label %bb.g
    i32 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %3 = lshr i64 %i.e, 32                          ; 2 uses
  %4 = trunc nuw i64 %3 to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 %4, ptr %i.b, align 4, !tbaa !7
  %i.h = and i32 %4, 134217728
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.c, label %obj_ivar_set.exit

bb.c:                                             ; preds = %bb.b
  %i.i = call zeroext i1 @rb_shape_find_ivar(i32 noundef %4, i64 noundef %1, ptr noundef nonnull %i.b) #26
  br i1 %i.i, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre.i.i = load i32, ptr %i.b, align 4, !tbaa !7
  br label %obj_ivar_set.exit

bb.d:                                             ; preds = %bb.c
  %i.j = and i64 %3, 524287
  %i.k = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.l = getelementptr [40 x i8], ptr %i.k, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 28
  %i.n = load i16, ptr %i.m, align 4, !tbaa !120
  %i.o = icmp eq i16 %i.n, -1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.48) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = call i32 @rb_shape_transition_add_ivar(i64 noundef %0, i64 noundef %1) #26
  br label %obj_ivar_set.exit

obj_ivar_set.exit:                                ; preds = %bb.b, %._crit_edge.i.i, %bb.f
  %i.r = phi i32 [ %4, %bb.b ], [ %.pre.i.i, %._crit_edge.i.i ], [ %i.q, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.s = call fastcc zeroext i16 @obj_field_set(i64 noundef %0, i32 noundef %i.r, i64 noundef %1, i64 noundef %2)
  br label %bb.o

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.t = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i12 = icmp eq ptr %i.t, null
  br i1 %.not.i.i12, label %rb_ractor_main_p.exit.i, label %IVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit

rb_ractor_main_p.exit.i:                          ; preds = %bb.g
  %i.u = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.u, label %IVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit, label %bb.h, !prof !69

bb.h:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.v = tail call i32 @rb_is_instance_id(i64 noundef %1) #33
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %IVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.47) #27
  unreachable

IVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit:         ; preds = %bb.g, %rb_ractor_main_p.exit.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.x = call fastcc zeroext i16 @class_ivar_set(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %5 = lshr i64 %i.e, 32                          ; 2 uses
  %6 = trunc nuw i64 %5 to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 %6, ptr %i.a, align 4, !tbaa !7
  %i.y = and i32 %6, 134217728
  %.not.i.i13 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i13, label %bb.k, label %generic_ivar_set.exit

bb.k:                                             ; preds = %bb.j
  %i.z = call zeroext i1 @rb_shape_find_ivar(i32 noundef %6, i64 noundef %1, ptr noundef nonnull %i.a) #26
  br i1 %i.z, label %._crit_edge.i.i14, label %bb.l

._crit_edge.i.i14:                                ; preds = %bb.k
  %.pre.i.i15 = load i32, ptr %i.a, align 4, !tbaa !7
  br label %generic_ivar_set.exit

bb.l:                                             ; preds = %bb.k
  %i.aa = and i64 %5, 524287
  %i.ab = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.ac = getelementptr [40 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = getelementptr i8, ptr %i.ac, i64 28
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !120
  %i.af = icmp eq i16 %i.ae, -1
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ag, ptr noundef nonnull @.str.48) #27
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ah = call i32 @rb_shape_transition_add_ivar(i64 noundef %0, i64 noundef %1) #26
  br label %generic_ivar_set.exit

generic_ivar_set.exit:                            ; preds = %bb.j, %._crit_edge.i.i14, %bb.n
  %i.ai = phi i32 [ %6, %bb.j ], [ %.pre.i.i15, %._crit_edge.i.i14 ], [ %i.ah, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.aj = call fastcc zeroext i16 @generic_field_set(i64 noundef %0, i32 noundef %i.ai, i64 noundef %1, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %generic_ivar_set.exit, %IVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit, %obj_ivar_set.exit
  %.0 = phi i16 [ %i.aj, %generic_ivar_set.exit ], [ %i.s, %obj_ivar_set.exit ], [ %i.x, %IVAR_ACCESSOR_SHOULD_BE_MAIN_RACTOR.exit ]
  ret i16 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden zeroext i16 @rb_ivar_set_index(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @ivar_set(i64 noundef %0, i64 noundef %1, i64 noundef %2)
  ret i16 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ivar_set_internal(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @ivar_set(i64 noundef %0, i64 noundef %1, i64 noundef %2) ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden zeroext i16 @rb_obj_field_set(i64 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 31
  switch i32 %i.d, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc zeroext i16 @obj_field_set(i64 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3)
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.22) #32
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = tail call fastcc zeroext i16 @generic_field_set(i64 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0 = phi i16 [ %i.f, %bb.d ], [ %i.e, %bb.b ]
  ret i16 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i16 @obj_field_set(i64 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 7 uses
  %4 = load i64, ptr %i.a, align 8, !tbaa !20     ; 5 uses
  %5 = lshr i64 %4, 32                            ; 2 uses
  %6 = trunc nuw i64 %5 to i32                    ; 3 uses
  %i.b = and i32 %1, 134217728
  %.not38 = icmp eq i32 %i.b, 0
  br i1 %.not38, label %bb.i, label %bb.b, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %6, 134217728
  %.not39 = icmp eq i32 %i.c, 0
  br i1 %.not39, label %bb.c, label %bb.d, !prof !94

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @rb_evict_fields_to_hash(i64 noundef %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.031 = phi i32 [ %i.d, %bb.c ], [ %6, %bb.b ]
  %i.e = and i32 %1, 524287
  %i.f = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113 ; 2 uses
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr [40 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 28
  %i.j = load i16, ptr %i.i, align 4, !tbaa !120
  %i.k = and i32 %.031, 524287
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr [40 x i8], ptr %i.f, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 28
  %i.o = load i16, ptr %i.n, align 4, !tbaa !120
  %i.p = icmp ugt i16 %i.j, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.a, align 8, !tbaa !20
  %i.r = and i64 %i.q, 4294967295
  %i.s = zext i32 %1 to i64
  %i.t = shl nuw i64 %i.s, 32
  %i.u = or disjoint i64 %i.r, %i.t
  store i64 %i.u, ptr %i.a, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not36 = icmp eq i64 %2, 0
  br i1 %.not36, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.h, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !118
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.032 = phi i64 [ %2, %bb.f ], [ %i.w, %bb.g ]
  %i.x = getelementptr i8, ptr %i.a, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42
  %i.z = tail call i32 @rb_st_insert(ptr noundef %i.y, i64 noundef %.032, i64 noundef %3) #26 ; 0 uses
  %i.aa = icmp eq i64 %3, 0
  %i.ab = and i64 %3, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = or i1 %i.aa, %i.ac
  br i1 %i.ad, label %rb_obj_written.exit, label %rb_obj_written.exit.sink.split

bb.i:                                             ; preds = %bb.a
  %i.ae = and i32 %1, 524287
  %i.af = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113 ; 2 uses
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = getelementptr [40 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 28
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !120
  %i.ak = add i16 %i.aj, -1                       ; 5 uses
  %7 = and i64 %5, 524287
  %i.al = getelementptr [40 x i8], ptr %i.af, i64 %7 ; 3 uses
  %i.am = getelementptr i8, ptr %i.al, i64 28
  %i.an = load i16, ptr %i.am, align 4, !tbaa !120
  %.not = icmp ult i16 %i.ak, %i.an
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %8 = and i64 %4, 126100789566373888
  %.not.i.i = icmp eq i64 %8, 0
  br i1 %.not.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %i.al, i64 30
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !135
  br label %RSHAPE_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %bb.j
  %9 = lshr i64 %4, 54
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !136
  %10 = and i64 %9, 7
  %i.ar = add nuw nsw i64 %10, 4294967295
  %i.as = and i64 %i.ar, 4294967295
  %i.at = getelementptr [2 x i8], ptr %i.aq, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !123
  %i.av = getelementptr i8, ptr %i.al, i64 30
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !135
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.au, i16 %i.aw)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %.0.i = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.ap, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  %.not35 = icmp ult i16 %i.ak, %.0.i
  br i1 %.not35, label %bb.l, label %bb.k, !prof !97

bb.k:                                             ; preds = %RSHAPE_CAPACITY.exit
  %i.ax = tail call fastcc zeroext i16 @RSHAPE_CAPACITY(i32 noundef %6)
  %i.ay = zext i16 %i.ax to i32
  %i.az = tail call fastcc zeroext i16 @RSHAPE_CAPACITY(i32 noundef %1)
  %i.ba = zext i16 %i.az to i32
  tail call void @rb_ensure_iv_list_size(i64 noundef %0, i32 noundef %i.ay, i32 noundef %i.ba)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %RSHAPE_CAPACITY.exit
  %11 = phi i64 [ %.pre, %bb.k ], [ %4, %RSHAPE_CAPACITY.exit ]
  %i.bb = and i64 %11, 4294967295
  %i.bc = zext i32 %1 to i64
  %i.bd = shl nuw i64 %i.bc, 32
  %i.be = or disjoint i64 %i.bb, %i.bd            ; 2 uses
  store i64 %i.be, ptr %i.a, align 8, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.bf = phi i64 [ %i.be, %bb.l ], [ %4, %bb.i ]
  %i.bg = and i64 %i.bf, 65536
  %.not.i = icmp eq i64 %i.bg, 0
  %i.bh = getelementptr i8, ptr %i.a, i64 16      ; 2 uses
  br i1 %.not.i, label %ROBJECT_FIELDS.exit, label %bb.n, !prof !97

bb.n:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !42
  br label %ROBJECT_FIELDS.exit

ROBJECT_FIELDS.exit:                              ; preds = %bb.m, %bb.n
  %.0.i37 = phi ptr [ %i.bi, %bb.n ], [ %i.bh, %bb.m ]
  %i.bj = zext i16 %i.ak to i64
  %i.bk = getelementptr [8 x i8], ptr %.0.i37, i64 %i.bj
  store i64 %3, ptr %i.bk, align 8, !tbaa !16
  %i.bl = icmp eq i64 %3, 0
  %i.bm = and i64 %3, 7
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = or i1 %i.bl, %i.bn
  br i1 %i.bo, label %rb_obj_written.exit, label %rb_obj_written.exit.sink.split

rb_obj_written.exit.sink.split:                   ; preds = %ROBJECT_FIELDS.exit, %bb.h
  %.0.ph = phi i16 [ -1, %bb.h ], [ %i.ak, %ROBJECT_FIELDS.exit ]
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %3) #26
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %rb_obj_written.exit.sink.split, %ROBJECT_FIELDS.exit, %bb.h
  %.0 = phi i16 [ %i.ak, %ROBJECT_FIELDS.exit ], [ -1, %bb.h ], [ %.0.ph, %rb_obj_written.exit.sink.split ]
  ret i16 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i16 @generic_field_set(i64 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %1, 524287
  %i.b = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr [40 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !118
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %2, %bb.a ], [ %i.f, %bb.b ]    ; 4 uses
  %i.g = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef %.0) ; 8 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %i.g to ptr
  %4 = load i64, ptr %i.h, align 8, !tbaa !20
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %6, %bb.d ], [ 0, %bb.c ]      ; 5 uses
  %i.j = and i32 %1, 134217728
  %.not46.i = icmp eq i32 %i.j, 0                 ; 2 uses
  br i1 %.not46.i, label %bb.k, label %bb.f, !prof !97

bb.f:                                             ; preds = %bb.e
  %i.k = and i32 %i.i, 134217728
  %.not47.i = icmp eq i32 %i.k, 0
  br i1 %.not47.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = tail call fastcc i64 @imemo_fields_complex_from_obj(i64 noundef %0, i64 noundef %i.g, i32 noundef %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i64 [ %i.l, %bb.g ], [ %i.g, %bb.f ] ; 5 uses
  %.not.i.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i.i, label %rb_imemo_fields_complex_tbl.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = inttoptr i64 %.0.i to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  br label %rb_imemo_fields_complex_tbl.exit.i

rb_imemo_fields_complex_tbl.exit.i:               ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.o, %bb.i ], [ null, %bb.h ]
  %i.p = tail call i32 @rb_st_insert(ptr noundef %.0.i.i, i64 noundef %.0, i64 noundef %3) #26 ; 0 uses
  %i.q = icmp eq i64 %3, 0
  %i.r = and i64 %3, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = or i1 %i.q, %i.s
  br i1 %i.t, label %rb_obj_written.exit.i, label %bb.j

bb.j:                                             ; preds = %rb_imemo_fields_complex_tbl.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %.0.i, i64 noundef %3) #26
  br label %rb_obj_written.exit.i

rb_obj_written.exit.i:                            ; preds = %bb.j, %rb_imemo_fields_complex_tbl.exit.i
  %i.u = inttoptr i64 %.0.i to ptr
  br label %imemo_fields_set.exit

bb.k:                                             ; preds = %bb.e
  %i.v = and i32 %1, 524287
  %i.w = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113 ; 3 uses
  %i.x = zext nneg i32 %i.v to i64                ; 3 uses
  %i.y = getelementptr [40 x i8], ptr %i.w, i64 %i.x ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 28
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !120
  %i.ab = add i16 %i.aa, -1                       ; 2 uses
  %i.ac = lshr i32 %i.i, 22
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = and i8 %i.ad, 7                         ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i:         ; preds = %bb.k
  %i.af = and i32 %i.i, 524287
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr [40 x i8], ptr %i.w, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 30
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !135
  br label %RSHAPE_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.i.i:                ; preds = %bb.k
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !136
  %i.al = zext nneg i8 %i.ae to i64
  %i.am = add nuw nsw i64 %i.al, 4294967295
  %i.an = and i64 %i.am, 4294967295
  %i.ao = getelementptr [2 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !123
  %i.aq = and i32 %i.i, 524287
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr [40 x i8], ptr %i.w, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 30
  %i.au = load i16, ptr %i.at, align 2, !tbaa !135
  %spec.select.i.i = tail call i16 @llvm.umax.i16(i16 %i.ap, i16 %i.au)
  br label %RSHAPE_CAPACITY.exit.i

RSHAPE_CAPACITY.exit.i:                           ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i
  %.0.i37.i = phi i16 [ %spec.select.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i.i ], [ %i.aj, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i ]
  %.not36.i = icmp ult i16 %i.ab, %.0.i37.i
  br i1 %.not36.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %RSHAPE_CAPACITY.exit.i
  %i.av = lshr i32 %1, 22
  %i.aw = trunc i32 %i.av to i8
  %i.ax = and i8 %i.aw, 7                         ; 2 uses
  %.not.i.i38.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i38.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i42.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i39.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i42.i:       ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %i.y, i64 30
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !135
  br label %RSHAPE_CAPACITY.exit43.i

RSHAPE_EMBEDDED_CAPACITY.exit.i39.i:              ; preds = %bb.l
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !136
  %i.bb = zext nneg i8 %i.ax to i64
  %i.bc = add nuw nsw i64 %i.bb, 4294967295
  %i.bd = and i64 %i.bc, 4294967295
  %i.be = getelementptr [2 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !123
  %i.bg = getelementptr i8, ptr %i.y, i64 30
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !135
  %spec.select.i40.i = tail call i16 @llvm.umax.i16(i16 %i.bf, i16 %i.bh)
  br label %RSHAPE_CAPACITY.exit43.i

RSHAPE_CAPACITY.exit43.i:                         ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.i39.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i42.i
  %.0.i41.i = phi i16 [ %spec.select.i40.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i39.i ], [ %i.az, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i42.i ]
  %i.bi = tail call fastcc i64 @imemo_fields_copy_capa(i64 noundef %0, i64 noundef %i.g, i16 noundef zeroext %.0.i41.i)
  br label %bb.m

bb.m:                                             ; preds = %RSHAPE_CAPACITY.exit43.i, %RSHAPE_CAPACITY.exit.i
  %.1.i = phi i64 [ %i.bi, %RSHAPE_CAPACITY.exit43.i ], [ %i.g, %RSHAPE_CAPACITY.exit.i ] ; 5 uses
  %.not.i44.i = icmp ne i64 %.1.i, 0
  tail call void @llvm.assume(i1 %.not.i44.i)
  %i.bj = inttoptr i64 %.1.i to ptr               ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !20
  %i.bl = and i64 %i.bk, 65536
  %.not5.i.i = icmp eq i64 %i.bl, 0
  %i.bm = getelementptr i8, ptr %i.bj, i64 16     ; 2 uses
  br i1 %.not5.i.i, label %rb_imemo_fields_ptr.exit.i, label %bb.n, !prof !97

bb.n:                                             ; preds = %bb.m
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit.i

rb_imemo_fields_ptr.exit.i:                       ; preds = %bb.n, %bb.m
  %.0.i45.i = phi ptr [ %i.bn, %bb.n ], [ %i.bm, %bb.m ]
  %i.bo = zext i16 %i.ab to i64
  %i.bp = getelementptr [8 x i8], ptr %.0.i45.i, i64 %i.bo
  store i64 %3, ptr %i.bp, align 8, !tbaa !16
  %i.bq = icmp eq i64 %3, 0
  %i.br = and i64 %3, 7
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = or i1 %i.bq, %i.bs
  br i1 %i.bt, label %rb_obj_write.exit.i, label %bb.o

bb.o:                                             ; preds = %rb_imemo_fields_ptr.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %.1.i, i64 noundef %3) #26
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.o, %rb_imemo_fields_ptr.exit.i
  %i.bu = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113 ; 2 uses
  %i.bv = getelementptr [40 x i8], ptr %i.bu, i64 %i.x
  %i.bw = getelementptr i8, ptr %i.bv, i64 28
  %i.bx = load i16, ptr %i.bw, align 4, !tbaa !120
  %i.by = and i32 %i.i, 524287
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr [40 x i8], ptr %i.bu, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 28
  %i.cc = load i16, ptr %i.cb, align 4, !tbaa !120
  %i.cd = icmp ugt i16 %i.bx, %i.cc
  br i1 %i.cd, label %imemo_fields_set.exit, label %imemo_fields_set.exit.thread

imemo_fields_set.exit.thread:                     ; preds = %rb_obj_write.exit.i
  tail call fastcc void @rb_obj_set_fields(i64 noundef %0, i64 noundef %.1.i, i64 noundef %.0, i64 noundef %i.g)
  br label %bb.p

imemo_fields_set.exit:                            ; preds = %rb_obj_written.exit.i, %rb_obj_write.exit.i
  %.sink56.i = phi ptr [ %i.u, %rb_obj_written.exit.i ], [ %i.bj, %rb_obj_write.exit.i ] ; 2 uses
  %.2.ph.i = phi i64 [ %.0.i, %rb_obj_written.exit.i ], [ %.1.i, %rb_obj_write.exit.i ]
  %i.ce = load i64, ptr %.sink56.i, align 8, !tbaa !20
  %i.cf = and i64 %i.ce, 4294967295
  %i.cg = zext i32 %1 to i64
  %i.ch = shl nuw i64 %i.cg, 32
  %i.ci = or disjoint i64 %i.cf, %i.ch
  store i64 %i.ci, ptr %.sink56.i, align 8, !tbaa !20
  tail call fastcc void @rb_obj_set_fields(i64 noundef %0, i64 noundef %.2.ph.i, i64 noundef %.0, i64 noundef %i.g)
  br i1 %.not46.i, label %imemo_fields_set.exit._crit_edge, label %bb.q

imemo_fields_set.exit._crit_edge:                 ; preds = %imemo_fields_set.exit
  %.pre = and i32 %1, 524287
  %.pre18 = zext nneg i32 %.pre to i64
  br label %bb.p

bb.p:                                             ; preds = %imemo_fields_set.exit._crit_edge, %imemo_fields_set.exit.thread
  %.pre-phi19 = phi i64 [ %.pre18, %imemo_fields_set.exit._crit_edge ], [ %i.x, %imemo_fields_set.exit.thread ]
  %i.cj = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.ck = getelementptr [40 x i8], ptr %i.cj, i64 %.pre-phi19
  %i.cl = getelementptr i8, ptr %i.ck, i64 28
  %i.cm = load i16, ptr %i.cl, align 4, !tbaa !120
  %i.cn = add i16 %i.cm, -1
  br label %bb.q

bb.q:                                             ; preds = %imemo_fields_set.exit, %bb.p
  %i.co = phi i16 [ %i.cn, %bb.p ], [ -1, %imemo_fields_set.exit ]
  ret i16 %i.co
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 21) i64 @rb_ivar_defined(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = and i64 %i.f, 30
  %switch = icmp eq i64 %i.g, 2
  br i1 %switch, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %.sink.split

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.b
  %i.h = and i64 %i.f, 16384
  %.not10.i.i = icmp eq i64 %i.h, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.c, !prof !121

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.i = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.j = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.d

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.k = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.d:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.l = getelementptr i8, ptr %i.j, i64 128
  %i.m = load i8, ptr %i.l, align 8, !tbaa !32, !range !34, !noundef !35
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.split7.i.i, label %bb.e

.split7.i.i:                                      ; preds = %bb.d
  %i.o = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.j)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.c, %.split.i.i, %.split7.i.i, %bb.e
  %.0.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %bb.e ], [ %i.k, %.split.i.i ], [ %i.o, %.split7.i.i ]
  %i.q = getelementptr i8, ptr %.0.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !112  ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %.sink = phi i64 [ %i.r, %RCLASS_WRITABLE_FIELDS_OBJ.exit ], [ %0, %bb.b ]
  %i.s = tail call fastcc i64 @ivar_defined0(i64 noundef %.sink, i64 noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %RCLASS_WRITABLE_FIELDS_OBJ.exit, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %RCLASS_WRITABLE_FIELDS_OBJ.exit ], [ %i.s, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 0, 21) i64 @ivar_defined0(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  %.pre = inttoptr i64 %0 to ptr                  ; 4 uses
  br i1 %i.f, label %rb_shape_obj_too_complex_p.exit.thread, label %rb_shape_obj_too_complex_p.exit

rb_shape_obj_too_complex_p.exit:                  ; preds = %bb.a
  %2 = load i64, ptr %.pre, align 8, !tbaa !20    ; 2 uses
  %3 = and i64 %2, 576460752303423488
  %.not18 = icmp eq i64 %3, 0
  br i1 %.not18, label %rb_shape_obj_too_complex_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_shape_obj_too_complex_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.g = trunc i64 %2 to i32
  %i.h = and i32 %i.g, 31
  switch i32 %i.h, label %bb.d [
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 26, label %rb_imemo_fields_complex_tbl.exit15
    i32 1, label %rb_imemo_fields_complex_tbl.exit15
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.22) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0) ; 2 uses
  %.not.i13 = icmp eq i64 %i.i, 0
  br i1 %.not.i13, label %rb_imemo_fields_complex_tbl.exit15.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = inttoptr i64 %i.i to ptr
  br label %rb_imemo_fields_complex_tbl.exit15

rb_imemo_fields_complex_tbl.exit15:               ; preds = %bb.b, %bb.b, %bb.e
  %.pn = phi ptr [ %.pre, %bb.b ], [ %i.j, %bb.e ], [ %.pre, %bb.b ]
  %.011.in = getelementptr i8, ptr %.pn, i64 16
  %.011 = load ptr, ptr %.011.in, align 8, !tbaa !42 ; 2 uses
  %.not = icmp eq ptr %.011, null
  br i1 %.not, label %rb_imemo_fields_complex_tbl.exit15.thread, label %bb.f

bb.f:                                             ; preds = %rb_imemo_fields_complex_tbl.exit15
  %i.k = call i32 @rb_st_lookup(ptr noundef nonnull %.011, i64 noundef %1, ptr noundef nonnull %i.b) #26
  %.not12 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not12, i64 0, i64 20
  br label %rb_imemo_fields_complex_tbl.exit15.thread

rb_imemo_fields_complex_tbl.exit15.thread:        ; preds = %bb.d, %bb.f, %rb_imemo_fields_complex_tbl.exit15
  %.0 = phi i64 [ 0, %rb_imemo_fields_complex_tbl.exit15 ], [ %spec.select, %bb.f ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.g

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.a, %rb_shape_obj_too_complex_p.exit
  %4 = load i64, ptr %.pre, align 8, !tbaa !20
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  %i.l = call zeroext i1 @rb_shape_get_iv_index(i32 noundef %6, i64 noundef %1, ptr noundef nonnull %i.a) #26
  %i.m = select i1 %i.l, i64 20, i64 0
  br label %bb.g

bb.g:                                             ; preds = %rb_shape_obj_too_complex_p.exit.thread, %rb_imemo_fields_complex_tbl.exit15.thread
  %.1 = phi i64 [ %.0, %rb_imemo_fields_complex_tbl.exit15.thread ], [ %i.m, %rb_shape_obj_too_complex_p.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_copy_generic_ivar(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not3.i.i = and i1 %i.b, %i.d
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !124

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %i.g = and i64 %i.f, 2048
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.h = and i64 %i.f, 31
  %i.i = icmp ne i64 %i.h, 5
  %i.j = and i64 %i.f, 49152
  %.not8.i = icmp eq i64 %i.j, 0
  %or.cond.i = or i1 %i.i, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !126

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #26
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.k = icmp eq i64 %1, 0
  %i.l = and i64 %1, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  %.pre.i = inttoptr i64 %1 to ptr
  %.pre = load i64, ptr %.pre.i, align 8, !tbaa !20 ; 2 uses
  br i1 %i.n, label %rb_obj_gen_fields_p.exit, label %rb_type.exit.i

rb_type.exit.i:                                   ; preds = %rb_check_frozen_inline.exit
  %i.o = trunc i64 %.pre to i32
  %i.p = and i32 %i.o, 31
  switch i32 %i.p, label %rb_obj_gen_fields_p.exit [
    i32 0, label %rb_obj_gen_fields_p.exit.thread
    i32 1, label %rb_obj_gen_fields_p.exit.thread
    i32 2, label %rb_obj_gen_fields_p.exit.thread
    i32 3, label %rb_obj_gen_fields_p.exit.thread
    i32 26, label %rb_obj_gen_fields_p.exit.thread
  ]

rb_obj_gen_fields_p.exit:                         ; preds = %rb_check_frozen_inline.exit, %rb_type.exit.i
  %2 = and i64 %.pre, 578712547822141440
  %.not59 = icmp eq i64 %2, 0
  br i1 %.not59, label %rb_obj_gen_fields_p.exit.thread, label %bb.c

bb.c:                                             ; preds = %rb_obj_gen_fields_p.exit
  %i.q = tail call i32 @rb_obj_shape_id(i64 noundef %1) #26 ; 6 uses
  %i.r = tail call i64 @rb_obj_fields(i64 noundef %1, i64 noundef 0) ; 4 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %rb_obj_gen_fields_p.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i64 @rb_ivar_count(i64 noundef %i.r) ; 2 uses
  %.not44 = icmp eq i64 %i.s, 0
  br i1 %.not44, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.q, 134217728
  %.not60 = icmp eq i32 %i.t, 0
  br i1 %.not60, label %bb.f, label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %bb.e
  %i.u = inttoptr i64 %i.r to ptr
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42
  tail call void @rb_shape_copy_complex_ivars(i64 noundef %0, i64 noundef %1, i32 noundef %i.q, ptr noundef %i.w) #26
  br label %rb_obj_gen_fields_p.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = tail call i32 @rb_obj_shape_id(i64 noundef %0) #26
  %i.y = and i32 %i.q, 100663296
  %.not.i48 = icmp eq i32 %i.y, 0
  br i1 %.not.i48, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = tail call i32 @rb_shape_rebuild(i32 noundef %i.x, i32 noundef %i.q) #26 ; 2 uses
  %i.aa = and i32 %i.z, 134217728
  %.not61 = icmp eq i32 %i.aa, 0
  br i1 %.not61, label %bb.i, label %bb.h, !prof !97

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call ptr @rb_st_init_numtable_with_size(i64 noundef %i.s) #26 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  tail call fastcc void @rb_field_foreach(i64 noundef %1, ptr noundef nonnull @rb_obj_copy_ivs_to_hash_table_i, i64 noundef %i.ac, i1 noundef zeroext true)
  %i.ad = tail call fastcc i32 @obj_transition_too_complex(i64 noundef %0, ptr noundef %i.ab) ; 0 uses
  br label %rb_obj_gen_fields_p.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.f
  %.041 = phi i32 [ %i.q, %bb.f ], [ %i.z, %bb.g ] ; 5 uses
  %i.ae = and i32 %.041, 524287
  %i.af = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = getelementptr [40 x i8], ptr %i.af, i64 %i.ag ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 28
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !120
  %.not45 = icmp eq i16 %i.aj, 0
  br i1 %.not45, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !20
  %i.al = and i64 %i.ak, 4294967295
  %i.am = zext i32 %.041 to i64
  %i.an = shl nuw i64 %i.am, 32
  %i.ao = or disjoint i64 %i.al, %i.an
  store i64 %i.ao, ptr %i.e, align 8, !tbaa !20
  br label %rb_obj_gen_fields_p.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ap = lshr i32 %.041, 22
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = and i8 %i.aq, 7                         ; 2 uses
  %.not.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %bb.k
  %i.as = getelementptr i8, ptr %i.ah, i64 30
  %i.at = load i16, ptr %i.as, align 2, !tbaa !135
  br label %bb.l

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %bb.k
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !136
  %i.av = zext nneg i8 %i.ar to i64
  %i.aw = add nuw nsw i64 %i.av, 4294967295
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = getelementptr [2 x i8], ptr %i.au, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !123
  %i.ba = getelementptr i8, ptr %i.ah, i64 30
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !135
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.az, i16 %i.bb)
  br label %bb.l

bb.l:                                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i
  %.0.i49 = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.at, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  %i.bc = zext i16 %.0.i49 to i64
  %i.bd = load i64, ptr %i.e, align 8, !tbaa !20
  %i.be = and i64 %i.bd, 256
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = tail call i64 @rb_imemo_fields_new(i64 noundef %0, i64 noundef %i.bc, i1 noundef zeroext %i.bf) #26 ; 4 uses
  %i.bh = inttoptr i64 %i.r to ptr                ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bj = and i64 %i.bi, 65536
  %.not5.i = icmp eq i64 %i.bj, 0
  %i.bk = getelementptr i8, ptr %i.bh, i64 16     ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.m, !prof !97

bb.m:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.l, %bb.m
  %.0.i51 = phi ptr [ %i.bl, %bb.m ], [ %i.bk, %bb.l ]
  %.not.i52 = icmp eq i64 %i.bg, 0
  br i1 %.not.i52, label %rb_imemo_fields_ptr.exit55, label %bb.n

bb.n:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.bm = inttoptr i64 %i.bg to ptr               ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !20
  %i.bo = and i64 %i.bn, 65536
  %.not5.i53 = icmp eq i64 %i.bo, 0
  %i.bp = getelementptr i8, ptr %i.bm, i64 16     ; 2 uses
  br i1 %.not5.i53, label %rb_imemo_fields_ptr.exit55, label %bb.o, !prof !97

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit55

rb_imemo_fields_ptr.exit55:                       ; preds = %rb_imemo_fields_ptr.exit, %bb.n, %bb.o
  %.pre-phi = phi ptr [ %i.bm, %bb.o ], [ %i.bm, %bb.n ], [ null, %rb_imemo_fields_ptr.exit ] ; 2 uses
  %.0.i54 = phi ptr [ %i.bq, %bb.o ], [ %i.bp, %bb.n ], [ null, %rb_imemo_fields_ptr.exit ]
  tail call void @rb_shape_copy_fields(i64 noundef %i.bg, ptr noundef %.0.i54, i32 noundef %.041, ptr noundef %.0.i51, i32 noundef %i.q) #26
  %i.br = load i64, ptr %.pre-phi, align 8, !tbaa !20
  %i.bs = and i64 %i.br, 4294967295
  %i.bt = zext i32 %.041 to i64
  %i.bu = shl nuw i64 %i.bt, 32
  %i.bv = or disjoint i64 %i.bs, %i.bu
  store i64 %i.bv, ptr %.pre-phi, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bw = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.p, label %rb_vm_lock_enter.exit.i

bb.p:                                             ; preds = %rb_imemo_fields_ptr.exit55
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #26
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.p, %rb_imemo_fields_ptr.exit55
  %i.bx = call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0)
  call fastcc void @rb_obj_set_fields(i64 noundef %0, i64 noundef %i.bg, i64 noundef 0, i64 noundef %i.bx)
  %i.by = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i5.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i5.i, label %bb.q, label %rb_obj_replace_fields.exit

bb.q:                                             ; preds = %rb_vm_lock_enter.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #26
  br label %rb_obj_replace_fields.exit

rb_obj_replace_fields.exit:                       ; preds = %rb_vm_lock_enter.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %rb_obj_gen_fields_p.exit.thread

bb.r:                                             ; preds = %bb.d
  tail call void @rb_free_generic_ivar(i64 noundef %0)
  br label %rb_obj_gen_fields_p.exit.thread

rb_obj_gen_fields_p.exit.thread:                  ; preds = %bb.h, %bb.j, %rb_obj_replace_fields.exit, %rb_imemo_fields_complex_tbl.exit, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %bb.r, %bb.c, %rb_obj_gen_fields_p.exit
  ret void
}

declare i32 @rb_obj_shape_id(i64 noundef) local_unnamed_addr #1

declare void @rb_shape_copy_complex_ivars(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_shape_rebuild(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @rb_imemo_fields_new(i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext i16 @RSHAPE_CAPACITY(i32 noundef %0) unnamed_addr #16 {
bb.a:
  %i.a = lshr i32 %0, 22
  %i.b = trunc i32 %i.a to i8
  %i.c = and i8 %i.b, 7                           ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread, label %RSHAPE_EMBEDDED_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.thread:             ; preds = %bb.a
  %i.d = and i32 %0, 524287
  %i.e = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr [40 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 30
  %i.i = load i16, ptr %i.h, align 2, !tbaa !135
  br label %bb.b

RSHAPE_EMBEDDED_CAPACITY.exit:                    ; preds = %bb.a
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !136
  %i.k = zext nneg i8 %i.c to i64
  %i.l = add nuw nsw i64 %i.k, 4294967295
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr [2 x i8], ptr %i.j, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !123
  %i.p = and i32 %0, 524287
  %i.q = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
end_hunk_0
begin_hunk_1_@rb_mod_remove_cvar:bb.a
  store i64 %1, ptr %i.a, align 8, !tbaa !16
  %i.b = call i64 @rb_check_id(ptr noundef nonnull %i.a) #26 ; 5 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @rb_is_class_id(i64 noundef %i.b) #26, !callees !137, !inline_history !138
  %.not12.i = icmp eq i32 %i.d, 0
  br i1 %.not12.i, label %bb.d, label %check_id_type.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call i32 @rb_is_class_name(i64 noundef %i.c) #26, !callees !139, !inline_history !138
  %.not11.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i, label %bb.d, label %check_id_type.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = call i64 @rb_fstring_new(ptr noundef nonnull @.str.36, i64 noundef 30) #26
  call fastcc void @rb_name_err_raise_str(i64 noundef %i.f, i64 noundef %0, i64 noundef %i.c) #34
  unreachable

check_id_type.exit:                               ; preds = %bb.b
  %i.g = icmp ne i64 %0, 0
  %i.h = and i64 %0, 7
  %i.i = icmp eq i64 %i.h, 0
  %.not3.i.i = and i1 %i.g, %i.i
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !124

RB_OBJ_FROZEN.exit.i:                             ; preds = %check_id_type.exit
  %i.j = inttoptr i64 %0 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %i.l = and i64 %i.k, 2048
  %.not.i19 = icmp eq i64 %i.l, 0
  br i1 %.not.i19, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %check_id_type.exit
  call void @rb_error_frozen_object(i64 noundef %0) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.m = and i64 %i.k, 31
  %i.n = icmp ne i64 %i.m, 5
  %i.o = and i64 %i.k, 49152
  %.not8.i = icmp eq i64 %i.o, 0
  %or.cond.i = or i1 %i.n, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.e, !prof !126

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  call void @rb_str_modify(i64 noundef %0) #26
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.e
  %i.p = call fastcc i64 @rb_ivar_delete(i64 noundef %0, i64 noundef %i.b, i64 noundef 36) ; 2 uses
  %i.q = icmp eq i64 %i.p, 36
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_check_frozen_inline.exit
  ret i64 %i.p

bb.g:                                             ; preds = %rb_check_frozen_inline.exit
  %i.r = call i64 @rb_cvar_defined(i64 noundef %0, i64 noundef %i.b)
  %.not18 = icmp eq i64 %i.r, 0
  br i1 %.not18, label %check_id_type.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call i64 @rb_id2sym(i64 noundef %i.b) #26
  call fastcc void @rb_name_err_raise(ptr noundef nonnull @.str.37, i64 noundef %0, i64 noundef %i.s) #34
  unreachable

check_id_type.exit.thread:                        ; preds = %bb.c, %bb.g
  %i.t = load i64, ptr %i.a, align 8, !tbaa !16
  call fastcc void @rb_name_err_raise(ptr noundef nonnull @.str.38, i64 noundef %0, i64 noundef %i.t) #34
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_is_class_id(i64 noundef) local_unnamed_addr #14

declare i32 @rb_is_class_name(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_iv_get(i64 noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.b = tail call nonnull ptr @rb_usascii_encoding() #26
  %i.c = tail call i64 @rb_check_id_cstr(ptr noundef nonnull %1, i64 noundef %i.a, ptr noundef nonnull %i.b) #26 ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_ivar_lookup(i64 noundef %0, i64 noundef %i.c, i64 noundef 4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ 4, %bb.a ]
  ret i64 %.0
}

declare nonnull ptr @rb_usascii_encoding() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_iv_set(i64 noundef %0, ptr noundef nonnull %1, i64 noundef returned %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_intern(ptr noundef nonnull %1) #26
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not3.i.i.i = and i1 %i.b, %i.d
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !124

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %i.g = and i64 %i.f, 2048
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.h = and i64 %i.f, 31
  %i.i = icmp ne i64 %i.h, 5
  %i.j = and i64 %i.f, 49152
  %.not8.i.i = icmp eq i64 %i.j, 0
  %or.cond.i.i = or i1 %i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_ivar_set.exit, label %bb.b, !prof !126

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #26
  br label %rb_ivar_set.exit

rb_ivar_set.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.k = tail call fastcc zeroext i16 @ivar_set(i64 noundef %0, i64 noundef %i.a, i64 noundef %2) ; 0 uses
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i16 @class_ivar_set(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @rb_class_ensure_writable(i64 noundef %0) #26
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not5.i.i.i.i = and i1 %i.b, %i.d              ; 2 uses
  br i1 %.not5.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, !prof !124

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 16384
  %.not10.i.i = icmp eq i64 %i.g, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.b, !prof !121

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, %bb.a
  %i.i = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.c

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.j = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !32, !range !34, !noundef !35
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7.i.i, label %bb.d

.split7.i.i:                                      ; preds = %bb.c
  %i.n = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.i)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.d:                                             ; preds = %bb.c
  %i.o = inttoptr i64 %0 to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.b, %.split.i.i, %.split7.i.i, %bb.d
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.p, %bb.d ], [ %i.j, %.split.i.i ], [ %i.n, %.split7.i.i ]
  %i.q = getelementptr i8, ptr %.0.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !112  ; 10 uses
  %i.s = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.s, null                ; 2 uses
  %.not.i10 = icmp eq i64 %i.r, 0
  br i1 %.not.i10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %i.t = tail call i64 @rb_imemo_fields_new(i64 noundef %0, i64 noundef 1, i1 noundef zeroext true) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %i.u = phi i64 [ %i.t, %bb.e ], [ %i.r, %RCLASS_WRITABLE_FIELDS_OBJ.exit ] ; 7 uses
  %i.v = inttoptr i64 %i.u to ptr
  %4 = load i64, ptr %i.v, align 8, !tbaa !20     ; 3 uses
  %5 = lshr i64 %4, 32                            ; 4 uses
  %6 = trunc nuw i64 %5 to i32                    ; 4 uses
  %i.w = and i32 %6, 134217728
  %.not76.i = icmp eq i32 %i.w, 0
  br i1 %.not76.i, label %bb.g, label %bb.t, !prof !97

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 %6, ptr %i.a, align 4, !tbaa !7
  %i.x = call zeroext i1 @rb_shape_find_ivar(i32 noundef %6, i64 noundef %1, ptr noundef nonnull %i.a) #26 ; 3 uses
  br i1 %i.x, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.g
  %.pre.i.i = load i32, ptr %i.a, align 4, !tbaa !7
  br label %generic_shape_ivar.exit.i

bb.h:                                             ; preds = %bb.g
  %7 = and i64 %5, 524287
  %i.y = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.z = getelementptr [40 x i8], ptr %i.y, i64 %7
  %i.aa = getelementptr i8, ptr %i.z, i64 28
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !120
  %i.ac = icmp eq i16 %i.ab, -1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.48) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ae = call i32 @rb_shape_transition_add_ivar(i64 noundef %i.u, i64 noundef %1) #26
  br label %generic_shape_ivar.exit.i

generic_shape_ivar.exit.i:                        ; preds = %bb.j, %._crit_edge.i.i
  %i.af = phi i32 [ %i.ae, %bb.j ], [ %.pre.i.i, %._crit_edge.i.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ag = and i32 %i.af, 134217728
  %.not77.i = icmp eq i32 %i.ag, 0
  br i1 %.not77.i, label %bb.l, label %bb.k, !prof !97

bb.k:                                             ; preds = %generic_shape_ivar.exit.i
  %i.ah = call fastcc i64 @imemo_fields_complex_from_obj(i64 noundef %0, i64 noundef %i.u, i32 noundef %i.af)
  br label %bb.t

bb.l:                                             ; preds = %generic_shape_ivar.exit.i
  %i.ai = and i32 %i.af, 524287
  %i.aj = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113 ; 3 uses
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = getelementptr [40 x i8], ptr %i.aj, i64 %i.ak ; 3 uses
  %i.am = getelementptr i8, ptr %i.al, i64 28
  %i.an = load i16, ptr %i.am, align 4, !tbaa !120
  %i.ao = add i16 %i.an, -1                       ; 4 uses
  br i1 %i.x, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %8 = and i64 %4, 126100789566373888
  %.not.i.i.i = icmp eq i64 %8, 0
  br i1 %.not.i.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i:         ; preds = %bb.m
  %9 = and i64 %5, 524287
  %i.ap = getelementptr [40 x i8], ptr %i.aj, i64 %9
  %i.aq = getelementptr i8, ptr %i.ap, i64 30
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !135
  br label %RSHAPE_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.i.i:                ; preds = %bb.m
  %10 = lshr i64 %4, 54
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !136
  %11 = and i64 %10, 7
  %i.at = add nuw nsw i64 %11, 4294967295
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr [2 x i8], ptr %i.as, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !123
  %12 = and i64 %5, 524287
  %i.ax = getelementptr [40 x i8], ptr %i.aj, i64 %12
  %i.ay = getelementptr i8, ptr %i.ax, i64 30
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !135
  %spec.select.i.i = call i16 @llvm.umax.i16(i16 %i.aw, i16 %i.az)
  br label %RSHAPE_CAPACITY.exit.i

RSHAPE_CAPACITY.exit.i:                           ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i
  %.0.i62.i = phi i16 [ %spec.select.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i.i ], [ %i.ar, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i ]
  %.not57.i = icmp ult i16 %i.ao, %.0.i62.i
  br i1 %.not57.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %RSHAPE_CAPACITY.exit.i
  %i.ba = lshr i32 %i.af, 22
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = and i8 %i.bb, 7                         ; 2 uses
  %.not.i.i63.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i63.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i67.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i64.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i67.i:       ; preds = %bb.n
  %i.bd = getelementptr i8, ptr %i.al, i64 30
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !135
  br label %RSHAPE_CAPACITY.exit68.i

RSHAPE_EMBEDDED_CAPACITY.exit.i64.i:              ; preds = %bb.n
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !136
  %i.bg = zext nneg i8 %i.bc to i64
  %i.bh = add nuw nsw i64 %i.bg, 4294967295
  %i.bi = and i64 %i.bh, 4294967295
  %i.bj = getelementptr [2 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !123
  %i.bl = getelementptr i8, ptr %i.al, i64 30
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !135
  %spec.select.i65.i = call i16 @llvm.umax.i16(i16 %i.bk, i16 %i.bm)
  br label %RSHAPE_CAPACITY.exit68.i

RSHAPE_CAPACITY.exit68.i:                         ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.i64.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i67.i
  %.0.i66.i = phi i16 [ %spec.select.i65.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i64.i ], [ %i.be, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i67.i ]
  %i.bn = call fastcc i64 @imemo_fields_copy_capa(i64 noundef %0, i64 noundef %i.u, i16 noundef zeroext %.0.i66.i)
  br label %bb.o

bb.o:                                             ; preds = %RSHAPE_CAPACITY.exit68.i, %RSHAPE_CAPACITY.exit.i, %bb.l
  %.054.i = phi i64 [ %i.bn, %RSHAPE_CAPACITY.exit68.i ], [ %i.u, %RSHAPE_CAPACITY.exit.i ], [ %i.u, %bb.l ] ; 6 uses
  %.not.i69.i = icmp eq i64 %.054.i, 0
  br i1 %.not.i69.i, label %rb_imemo_fields_ptr.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = inttoptr i64 %.054.i to ptr             ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !20
  %i.bq = and i64 %i.bp, 65536
  %.not5.i.i = icmp eq i64 %i.bq, 0
  %i.br = getelementptr i8, ptr %i.bo, i64 16     ; 2 uses
  br i1 %.not5.i.i, label %rb_imemo_fields_ptr.exit.i, label %bb.q, !prof !97

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit.i

rb_imemo_fields_ptr.exit.i:                       ; preds = %bb.q, %bb.p, %bb.o
  %.0.i70.i = phi ptr [ %i.bs, %bb.q ], [ null, %bb.o ], [ %i.br, %bb.p ]
  %i.bt = icmp eq i64 %i.r, %.054.i
  %or.cond.i = and i1 %.not.i, %i.bt
  %i.bu = zext i16 %i.ao to i64
  %i.bv = getelementptr [8 x i8], ptr %.0.i70.i, i64 %i.bu ; 2 uses
  %i.bw = icmp eq i64 %2, 0
  %i.bx = and i64 %2, 7
  %i.by = icmp ne i64 %i.bx, 0
  %i.bz = or i1 %i.bw, %i.by                      ; 2 uses
  br i1 %or.cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %rb_imemo_fields_ptr.exit.i
  store atomic volatile i64 %2, ptr %i.bv seq_cst, align 8
  br i1 %i.bz, label %rb_obj_atomic_write.exit.i, label %rb_obj_atomic_write.exit.sink.split.i

bb.s:                                             ; preds = %rb_imemo_fields_ptr.exit.i
  store i64 %2, ptr %i.bv, align 8, !tbaa !16
  br i1 %i.bz, label %rb_obj_atomic_write.exit.i, label %rb_obj_atomic_write.exit.sink.split.i

rb_obj_atomic_write.exit.sink.split.i:            ; preds = %bb.s, %bb.r
  %.054.sink.i = phi i64 [ %i.r, %bb.r ], [ %.054.i, %bb.s ]
  call void @rb_gc_writebarrier(i64 noundef %.054.sink.i, i64 noundef %2) #26
  br label %rb_obj_atomic_write.exit.i

rb_obj_atomic_write.exit.i:                       ; preds = %rb_obj_atomic_write.exit.sink.split.i, %bb.s, %bb.r
  br i1 %i.x, label %class_fields_ivar_set.exit, label %.sink.split.i

bb.t:                                             ; preds = %bb.k, %bb.f
  %.055.i = phi i32 [ %6, %bb.f ], [ %i.af, %bb.k ]
  %.1.i = phi i64 [ %i.u, %bb.f ], [ %i.ah, %bb.k ] ; 2 uses
  %i.ca = icmp eq i64 %.1.i, %i.r
  %or.cond61.i = and i1 %.not.i, %i.ca
  br i1 %or.cond61.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cb = call i64 @rb_imemo_fields_clone(i64 noundef %i.r) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2.i = phi i64 [ %i.cb, %bb.u ], [ %.1.i, %bb.t ] ; 5 uses
  %.not.i71.i = icmp eq i64 %.2.i, 0
  br i1 %.not.i71.i, label %rb_imemo_fields_complex_tbl.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = inttoptr i64 %.2.i to ptr
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !42
  br label %rb_imemo_fields_complex_tbl.exit.i

rb_imemo_fields_complex_tbl.exit.i:               ; preds = %bb.w, %bb.v
  %.0.i72.i = phi ptr [ %i.ce, %bb.w ], [ null, %bb.v ]
  %i.cf = call i32 @rb_st_insert(ptr noundef %.0.i72.i, i64 noundef %1, i64 noundef %2) #26
  %.not58.i = icmp eq i32 %i.cf, 0                ; 2 uses
  %i.cg = icmp eq i64 %2, 0
  %i.ch = and i64 %2, 7
  %i.ci = icmp ne i64 %i.ch, 0
  %i.cj = or i1 %i.cg, %i.ci
  br i1 %i.cj, label %rb_obj_written.exit.i, label %bb.x

bb.x:                                             ; preds = %rb_imemo_fields_complex_tbl.exit.i
  call void @rb_gc_writebarrier(i64 noundef %.2.i, i64 noundef %2) #26
  br label %rb_obj_written.exit.i

rb_obj_written.exit.i:                            ; preds = %bb.x, %rb_imemo_fields_complex_tbl.exit.i
  %.not59.i = icmp eq i64 %.2.i, %i.r
  br i1 %.not59.i, label %class_fields_ivar_set.exit.thread, label %.sink.split.i

class_fields_ivar_set.exit.thread:                ; preds = %rb_obj_written.exit.i
  %.075.i23 = zext i1 %.not58.i to i8
  store i8 %.075.i23, ptr %3, align 1, !tbaa !18
  br label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit

.sink.split.i:                                    ; preds = %rb_obj_written.exit.i, %rb_obj_atomic_write.exit.i
  %.2.sink.i = phi i64 [ %.054.i, %rb_obj_atomic_write.exit.i ], [ %.2.i, %rb_obj_written.exit.i ] ; 2 uses
  %.055.sink.i = phi i32 [ %i.af, %rb_obj_atomic_write.exit.i ], [ %.055.i, %rb_obj_written.exit.i ]
  %.075.shrunk.ph.i = phi i1 [ true, %rb_obj_atomic_write.exit.i ], [ %.not58.i, %rb_obj_written.exit.i ]
  %.0.ph.i = phi i16 [ %i.ao, %rb_obj_atomic_write.exit.i ], [ -1, %rb_obj_written.exit.i ]
  %i.ck = inttoptr i64 %.2.sink.i to ptr          ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !20
  %i.cm = and i64 %i.cl, 4294967295
  %i.cn = zext i32 %.055.sink.i to i64
  %i.co = shl nuw i64 %i.cn, 32
  %i.cp = or disjoint i64 %i.cm, %i.co
  store i64 %i.cp, ptr %i.ck, align 8, !tbaa !20
  %i.cq = zext i1 %.075.shrunk.ph.i to i8
  br label %class_fields_ivar_set.exit

class_fields_ivar_set.exit:                       ; preds = %rb_obj_atomic_write.exit.i, %.sink.split.i
  %.075.shrunk.i = phi i8 [ %i.cq, %.sink.split.i ], [ 0, %rb_obj_atomic_write.exit.i ]
  %storemerge60.i = phi i64 [ %.2.sink.i, %.sink.split.i ], [ %.054.i, %rb_obj_atomic_write.exit.i ] ; 7 uses
  %.0.i = phi i16 [ %.0.ph.i, %.sink.split.i ], [ %i.ao, %rb_obj_atomic_write.exit.i ] ; 3 uses
  store i8 %.075.shrunk.i, ptr %3, align 1, !tbaa !18
  %.not = icmp eq i64 %storemerge60.i, %i.r
  br i1 %.not, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, label %bb.y

bb.y:                                             ; preds = %class_fields_ivar_set.exit
  br i1 %.not5.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i17, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i12, !prof !124

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i17:      ; preds = %bb.y
  %i.cr = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !20
  %i.ct = and i64 %i.cs, 16384
  %.not10.i.i18 = icmp eq i64 %i.ct, 0
  br i1 %.not10.i.i18, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i12, label %bb.z, !prof !121

bb.z:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i17
  %i.cu = getelementptr i8, ptr %i.cr, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i12: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i17, %bb.y
  %i.cv = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i13, label %.split.i.i16, label %bb.aa

.split.i.i16:                                     ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i12
  %i.cw = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.aa:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i12
  %i.cx = getelementptr i8, ptr %i.cv, i64 128
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !32, !range !34, !noundef !35
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %.split7.i.i15, label %bb.ab

.split7.i.i15:                                    ; preds = %bb.aa
  %i.da = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.cv)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.db = inttoptr i64 %0 to ptr
  %i.dc = getelementptr i8, ptr %i.db, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i:                       ; preds = %bb.ab, %.split7.i.i15, %.split.i.i16, %bb.z
  %.0.i.i14 = phi ptr [ %i.cu, %bb.z ], [ %i.dc, %bb.ab ], [ %i.cw, %.split.i.i16 ], [ %i.da, %.split7.i.i15 ]
  %i.dd = getelementptr i8, ptr %.0.i.i14, i64 16
  store atomic volatile i64 %storemerge60.i, ptr %i.dd seq_cst, align 8
  %i.de = icmp eq i64 %storemerge60.i, 0
  %i.df = and i64 %storemerge60.i, 7
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = or i1 %i.de, %i.dg
  br i1 %i.dh, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, label %bb.ac

bb.ac:                                            ; preds = %RCLASS_EXT_WRITABLE.exit.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %storemerge60.i) #26
  br label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit

RCLASS_WRITABLE_SET_FIELDS_OBJ.exit:              ; preds = %bb.ac, %RCLASS_EXT_WRITABLE.exit.i, %class_fields_ivar_set.exit.thread, %class_fields_ivar_set.exit
  %.0.i26 = phi i16 [ -1, %class_fields_ivar_set.exit.thread ], [ %.0.i, %class_fields_ivar_set.exit ], [ %.0.i, %RCLASS_EXT_WRITABLE.exit.i ], [ %.0.i, %bb.ac ]
  %storemerge60.i25 = phi i64 [ %i.r, %class_fields_ivar_set.exit.thread ], [ %i.r, %class_fields_ivar_set.exit ], [ %storemerge60.i, %RCLASS_EXT_WRITABLE.exit.i ], [ %storemerge60.i, %bb.ac ]
  %i.di = inttoptr i64 %storemerge60.i25 to ptr
  %13 = load i64, ptr %i.di, align 8, !tbaa !20
  %14 = and i64 %13, -4294967296
  %i.dj = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !20
  %i.dl = and i64 %i.dk, 4294967295
  %i.dm = or disjoint i64 %i.dl, %14
  store i64 %i.dm, ptr %i.dj, align 8, !tbaa !20
  ret i16 %.0.i26
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_fields_tbl_copy(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not5.i.i.i.i = and i1 %i.a, %i.c
  br i1 %.not5.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, !prof !124

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.a
  %i.d = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = and i64 %i.e, 16384
  %.not10.i.i = icmp eq i64 %i.f, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.b, !prof !121

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, %bb.a
  %i.h = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.c

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.i = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.j = getelementptr i8, ptr %i.h, i64 128
  %i.k = load i8, ptr %i.j, align 8, !tbaa !32, !range !34, !noundef !35
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.split7.i.i, label %bb.d

.split7.i.i:                                      ; preds = %bb.c
  %i.m = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef nonnull %i.h)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.d:                                             ; preds = %bb.c
  %i.n = inttoptr i64 %1 to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.b, %.split.i.i, %.split7.i.i, %bb.d
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.o, %bb.d ], [ %i.i, %.split.i.i ], [ %i.m, %.split7.i.i ]
  %i.p = getelementptr i8, ptr %.0.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !112  ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %i.r = tail call i64 @rb_imemo_fields_clone(i64 noundef %i.q) #26 ; 4 uses
  %i.s = icmp ne i64 %0, 0
  %i.t = and i64 %0, 7
  %i.u = icmp eq i64 %i.t, 0
  %.not5.i.i.i.i6 = and i1 %i.s, %i.u
  br i1 %.not5.i.i.i.i6, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i12, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i7, !prof !124

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i12:      ; preds = %bb.e
  %i.v = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20
  %i.x = and i64 %i.w, 16384
  %.not10.i.i13 = icmp eq i64 %i.x, 0
  br i1 %.not10.i.i13, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i7, label %bb.f, !prof !121

bb.f:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i12
  %i.y = getelementptr i8, ptr %i.v, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i7: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i12, %bb.e
  %i.z = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.z, null
  br i1 %.not.i.i8, label %.split.i.i11, label %bb.g

.split.i.i11:                                     ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i7
  %i.aa = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.g:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i7
  %i.ab = getelementptr i8, ptr %i.z, i64 128
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !32, !range !34, !noundef !35
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.split7.i.i10, label %bb.h

.split7.i.i10:                                    ; preds = %bb.g
  %i.ae = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.z)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.h:                                             ; preds = %bb.g
  %i.af = inttoptr i64 %0 to ptr
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i:                       ; preds = %bb.h, %.split7.i.i10, %.split.i.i11, %bb.f
  %.0.i.i9 = phi ptr [ %i.y, %bb.f ], [ %i.ag, %bb.h ], [ %i.aa, %.split.i.i11 ], [ %i.ae, %.split7.i.i10 ]
  %i.ah = getelementptr i8, ptr %.0.i.i9, i64 16
  store atomic volatile i64 %i.r, ptr %i.ah seq_cst, align 8
  %i.ai = icmp eq i64 %i.r, 0
  %i.aj = and i64 %i.r, 7
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = or i1 %i.ai, %i.ak
  br i1 %i.al, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, label %bb.i

bb.i:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.r) #26
  br label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit

RCLASS_WRITABLE_SET_FIELDS_OBJ.exit:              ; preds = %RCLASS_EXT_WRITABLE.exit.i, %bb.i
  %i.am = inttoptr i64 %1 to ptr
  %2 = load i64, ptr %i.am, align 8, !tbaa !20
  %3 = and i64 %2, -4294967296
  %i.an = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !20
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = or disjoint i64 %i.ap, %3
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, %RCLASS_WRITABLE_FIELDS_OBJ.exit
  ret void
}

declare i64 @rb_imemo_fields_clone(i64 noundef) local_unnamed_addr #1

declare void @rb_vm_lock_enter_body(ptr noundef) local_unnamed_addr #1

declare i64 @rb_exec_recursive_paired(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @set_sub_temporary_name_topmost(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not11 = icmp eq i64 %i.b, 0
  br i1 %.not11, label %.sink.split, label %.split9

.split9:                                          ; preds = %bb.b
  %i.c = tail call i64 @rb_ary_hidden_new(i64 noundef 0) #26
  store i64 %i.c, ptr %i.a, align 8, !tbaa !46
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %.split9
  %.sink = phi i64 [ %i.b, %.split9 ], [ 0, %bb.b ]
  tail call fastcc void @set_sub_temporary_name_foreach(i64 noundef %0, ptr noundef nonnull %i.a, i64 noundef %.sink)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 20, %.sink.split ]
  ret i64 %.0
}

declare i64 @rb_ary_hidden_new(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @set_sub_temporary_name_foreach(i64 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not5.i.i.i.i = and i1 %i.b, %i.d
  br i1 %.not5.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, !prof !124

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 16384
  %.not10.i.i = icmp eq i64 %i.g, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.b, !prof !121

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, %bb.a
  %i.i = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.c

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.j = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !32, !range !34, !noundef !35
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7.i.i, label %bb.d

.split7.i.i:                                      ; preds = %bb.c
  %i.n = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.i)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = inttoptr i64 %0 to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i:                       ; preds = %bb.d, %.split7.i.i, %.split.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.p, %bb.d ], [ %i.j, %.split.i.i ], [ %i.n, %.split7.i.i ] ; 2 uses
  %i.q = getelementptr i8, ptr %.0.i.i, i64 128
  store i64 %2, ptr %i.q, align 8, !tbaa !16
  %i.r = icmp eq i64 %2, 0                        ; 2 uses
  %i.s = and i64 %2, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %RCLASS_WRITE_CLASSPATH.exit, label %bb.e

bb.e:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %2) #26
  br label %RCLASS_WRITE_CLASSPATH.exit

RCLASS_WRITE_CLASSPATH.exit:                      ; preds = %RCLASS_EXT_WRITABLE.exit.i, %bb.e
  %i.v = getelementptr i8, ptr %.0.i.i, i64 125   ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  %i.x = and i8 %i.w, -2
  store i8 %i.x, ptr %i.v, align 1
  %i.y = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !20
  %i.aa = and i64 %i.z, 65536
  %.not.i.i15 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i15, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %RCLASS_WRITE_CLASSPATH.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 160     ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.f

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %RCLASS_WRITE_CLASSPATH.exit
  %i.ae = getelementptr i8, ptr %i.y, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.af = tail call ptr @rb_current_box() #26     ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %.split.i, label %bb.g

.split.i:                                         ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %i.y, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %i.af, i64 128
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !32, !range !34, !noundef !35
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.split7.i, label %bb.j

.split7.i:                                        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ak = load i64, ptr %i.y, align 8, !tbaa !20
  %i.al = and i64 %i.ak, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.h

bb.h:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.an = load i64, ptr %i.af, align 8, !tbaa !36
  %i.ao = call i32 @rb_st_lookup(ptr noundef nonnull %i.am, i64 noundef %i.an, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.ao, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !16
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.i, %bb.h, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.aq, %bb.i ], [ null, %bb.h ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.ar = getelementptr i8, ptr %i.y, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.ar, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.j:                                             ; preds = %bb.g
  %i.as = getelementptr i8, ptr %i.y, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.j
  %.0.i = phi ptr [ %i.ae, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.as, %bb.j ], [ %i.ag, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.at = getelementptr i8, ptr %.0.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !199 ; 3 uses
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %bb.p, label %bb.k

bb.k:                                             ; preds = %RCLASS_EXT_READABLE.exit
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @rb_id_table_foreach(ptr noundef nonnull %i.au, ptr noundef nonnull @set_sub_temporary_name_i, ptr noundef %1) #26
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.av = load i64, ptr %1, align 8, !tbaa !46    ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !20 ; 2 uses
  %i.ay = and i64 %i.ax, 8192
  %.not.i16 = icmp eq i64 %i.ay, 0
  br i1 %.not.i16, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = lshr i64 %i.ax, 15
  %i.ba = and i64 %i.az, 127
  br label %rb_array_len.exit

bb.o:                                             ; preds = %bb.m
end_hunk_1
begin_hunk_2_@set_sub_temporary_name_i:bb.a
bb.h:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.ah = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ai = getelementptr i8, ptr %2, i64 8
  store i64 %0, ptr %i.ai, align 8, !tbaa !48
  %i.aj = call i64 @rb_exec_recursive_paired(ptr noundef nonnull @set_sub_temporary_name_recursive, i64 noundef %i.d, i64 noundef %i.ah, i64 noundef %i.ah) #26 ; 0 uses
  br label %rb_namespace_p.exit.thread

rb_namespace_p.exit.thread:                       ; preds = %bb.a, %bb.h, %RCLASS_EXT_READABLE.exit, %rb_namespace_p.exit
  ret i32 0
}

declare void @rb_ary_set_len(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @set_sub_temporary_name_recursive(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not10 = icmp eq i64 %i.b, 0
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @rb_ary_last(i32 noundef 0, ptr noundef null, i64 noundef %i.b) #26
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48
  %i.f = tail call i64 @rb_id2str(i64 noundef %i.e) #26
  %i.g = tail call i64 @rb_str_dup(i64 noundef %i.c) #26 ; 3 uses
  %i.h = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.43, i64 noundef 2) #26 ; 0 uses
  %i.i = tail call i64 @rb_str_append(i64 noundef %i.g, i64 noundef %i.f) #26 ; 0 uses
  %i.j = tail call i64 @rb_fstring(i64 noundef %i.g) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ]
  tail call fastcc void @set_sub_temporary_name_foreach(i64 noundef %0, ptr noundef nonnull %i.a, i64 noundef %.0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.08 = phi i64 [ 20, %bb.d ], [ 0, %bb.a ]
  ret i64 %.08
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @build_const_path(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_id2str(i64 noundef %1) #26
  %i.b = tail call i64 @rb_str_dup(i64 noundef %0) #26 ; 3 uses
  %i.c = tail call i64 @rb_str_cat(i64 noundef %i.b, ptr noundef nonnull @.str.43, i64 noundef 2) #26 ; 0 uses
  %i.d = tail call i64 @rb_str_append(i64 noundef %i.b, i64 noundef %i.a) #26 ; 0 uses
  %i.e = tail call i64 @rb_fstring(i64 noundef %i.b) #26
  ret i64 %i.e
}

declare i64 @rb_ary_last(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_vm_lock_leave_body(ptr noundef) local_unnamed_addr #1

declare i32 @rb_enc_symname_type(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_fstring(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #6

declare i64 @rb_str_quote_unprintable(i64 noundef) local_unnamed_addr #1

declare ptr @rb_id2name(i64 noundef) local_unnamed_addr #1

declare i64 @rb_id_quote_unprintable(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal void @rb_gvar_undef_compactor(ptr readnone captures(none) %0) #4 {
bb.a:
  ret void
}

declare i64 @rb_gc_location(i64 noundef) local_unnamed_addr #1

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_eval_cmd_call_kw(i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @trace_ev(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.06 = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not7 = icmp eq ptr %.06, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.08 = phi ptr [ %.06, %.lr.ph ], [ %.0, %bb.b ] ; 3 uses
  %i.c = getelementptr i8, ptr %.08, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.e = getelementptr i8, ptr %.08, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !79
  %i.g = load i64, ptr %i.b, align 8, !tbaa !91
  tail call void %i.d(i64 noundef %i.f, i64 noundef %i.g) #26
  %i.h = getelementptr i8, ptr %.08, i64 24
  %.0 = load ptr, ptr %i.h, align 8, !tbaa !78    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !231

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @trace_en(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.trace_var, align 8          ; 4 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !77
  %i.c = getelementptr i8, ptr %i.a, i64 48       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !65
  %.not12.i = icmp eq ptr %i.d, null
  br i1 %.not12.i, label %remove_trace.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %i.f = phi ptr [ %i.l, %bb.c ], [ %i.d, %bb.a ] ; 4 uses
  %i.g = phi ptr [ %i.k, %bb.c ], [ %i.e, %bb.a ]
  %.013.i = phi ptr [ %.1.i, %bb.c ], [ %1, %bb.a ]
  %i.h = load i32, ptr %i.f, align 8, !tbaa !83
  %.not11.i = icmp eq i32 %i.h, 0
  br i1 %.not11.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  store ptr %i.j, ptr %i.g, align 8, !tbaa !65
  tail call void @ruby_xfree(ptr noundef nonnull %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi ptr [ %.013.i, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.k = getelementptr i8, ptr %.1.i, i64 24      ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !85

._crit_edge.loopexit.i:                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !65
  br label %remove_trace.exit

remove_trace.exit:                                ; preds = %bb.a, %._crit_edge.loopexit.i
  %i.m = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ null, %bb.a ]
  store ptr %i.m, ptr %i.c, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret i64 4
}

declare void @rb_vm_unlock_body() local_unnamed_addr #1

declare void @rb_vm_lock_body() local_unnamed_addr #1

declare zeroext i1 @rb_ractor_main_p_() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

declare void @rb_imemo_fields_clear(i64 noundef) local_unnamed_addr #1

declare zeroext i1 @rb_ractor_shareable_p_continue(i64 noundef) local_unnamed_addr #1

declare i32 @rb_shape_transition_complex(i64 noundef) local_unnamed_addr #1

declare i64 @rb_imemo_fields_new_complex_tbl(i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @rb_shape_transition_remove_ivar(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @rb_evict_fields_to_hash(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %1 = load i64, ptr %i.a, align 8, !tbaa !20
  %2 = lshr i64 %1, 32
  %3 = and i64 %2, 524287
  %i.b = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.c = getelementptr [40 x i8], ptr %i.b, i64 %3
  %i.d = getelementptr i8, ptr %i.c, i64 28
  %i.e = load i16, ptr %i.d, align 4, !tbaa !120
  %i.f = zext i16 %i.e to i64
  %i.g = tail call ptr @rb_st_init_numtable_with_size(i64 noundef %i.f) #26 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  tail call fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef nonnull @rb_obj_copy_ivs_to_hash_table_i, i64 noundef %i.h, i1 noundef zeroext false)
  %i.i = tail call fastcc i32 @obj_transition_too_complex(i64 noundef %0, ptr noundef %i.g)
  ret i32 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @imemo_fields_complex_from_obj(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %i.a, align 8, !tbaa !20
  %4 = lshr i64 %3, 32
  %5 = and i64 %4, 524287
  %i.b = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.c = getelementptr [40 x i8], ptr %i.b, i64 %5
  %i.d = getelementptr i8, ptr %i.c, i64 28
  %i.e = load i16, ptr %i.d, align 4, !tbaa !120
  %i.f = zext i16 %i.e to i64
  %i.g = add nuw nsw i64 %i.f, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ 1, %bb.a ]
  %i.i = inttoptr i64 %0 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  %i.k = and i64 %i.j, 256
  %i.l = icmp ne i64 %i.k, 0
  %i.m = tail call i64 @rb_imemo_fields_new_complex(i64 noundef %0, i64 noundef %i.h, i1 noundef zeroext %i.l) #26 ; 3 uses
  tail call fastcc void @rb_field_foreach(i64 noundef %1, ptr noundef nonnull @imemo_fields_complex_from_obj_i, i64 noundef %i.m, i1 noundef zeroext false)
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20
  %i.p = and i64 %i.o, 4294967295
  %i.q = zext i32 %2 to i64
  %i.r = shl nuw i64 %i.q, 32
  %i.s = or disjoint i64 %i.p, %i.r
  store i64 %i.s, ptr %i.n, align 8, !tbaa !20
  ret i64 %i.m
}

declare i64 @rb_obj_embedded_size(i32 noundef) local_unnamed_addr #1

declare i64 @rb_gc_obj_slot_size(i64 noundef) local_unnamed_addr #1

declare i64 @rb_imemo_fields_new_complex(i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @imemo_fields_complex_from_obj_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %rb_imemo_fields_complex_tbl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %2 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  br label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  tail call void @rb_st_add_direct(ptr noundef %.0.i, i64 noundef %0, i64 noundef %1) #26
  %i.d = icmp eq i64 %1, 0
  %i.e = and i64 %1, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rb_obj_written.exit, label %bb.c

bb.c:                                             ; preds = %rb_imemo_fields_complex_tbl.exit
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %1) #26
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %rb_imemo_fields_complex_tbl.exit, %bb.c
  ret i32 0
}

declare void @rb_st_add_direct(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #3

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

declare zeroext i1 @rb_shape_find_ivar(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_shape_transition_add_ivar(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

declare void @rb_set_boxed_class_shape_id(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @imemo_fields_copy_capa(i64 noundef %0, i64 noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %2 to i64
  %i.b = inttoptr i64 %0 to ptr
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  %i.d = and i64 %i.c, 256
  %i.e = icmp ne i64 %i.d, 0
  %i.f = tail call i64 @rb_imemo_fields_new(i64 noundef %0, i64 noundef %i.a, i1 noundef zeroext %i.e) #26 ; 6 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %1 to ptr                   ; 3 uses
  %3 = load i64, ptr %i.g, align 8, !tbaa !20     ; 3 uses
  %4 = lshr i64 %3, 32
  %5 = and i64 %4, 524287
  %i.h = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.i = getelementptr [40 x i8], ptr %i.h, i64 %5
  %i.j = getelementptr i8, ptr %i.i, i64 28
  %i.k = load i16, ptr %i.j, align 4, !tbaa !120  ; 3 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rb_imemo_fields_ptr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  %i.n = and i64 %i.m, 65536
  %.not5.i = icmp eq i64 %i.n, 0
  %i.o = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.d ], [ null, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.q = and i64 %3, 65536
  %.not5.i19 = icmp eq i64 %i.q, 0
  %i.r = getelementptr i8, ptr %i.g, i64 16       ; 2 uses
  br i1 %.not5.i19, label %rbimpl_size_mul_or_raise.exit, label %bb.e, !prof !97

bb.e:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  br label %rbimpl_size_mul_or_raise.exit

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.e, %rb_imemo_fields_ptr.exit
  %.0.i20 = phi ptr [ %i.s, %bb.e ], [ %i.r, %rb_imemo_fields_ptr.exit ]
  %.not.i22 = icmp eq i16 %i.k, 0
  br i1 %.not.i22, label %ruby_nonempty_memcpy.exit.thread, label %.lr.ph.preheader

ruby_nonempty_memcpy.exit.thread:                 ; preds = %rbimpl_size_mul_or_raise.exit
  %6 = and i64 %3, -4294967296
  %i.t = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20
  %i.v = and i64 %i.u, 4294967295
  %i.w = or disjoint i64 %i.v, %6
  store i64 %i.w, ptr %i.t, align 8, !tbaa !20
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %rbimpl_size_mul_or_raise.exit
  %i.x = zext i16 %i.k to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0.i, ptr noundef nonnull readonly align 1 %.0.i20, i64 noundef range(i64 1, 0) %i.y, i1 noundef false) #26
  %.pre = load i64, ptr %i.g, align 8, !tbaa !20
  %7 = and i64 %.pre, -4294967296
  %i.z = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !20
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = or disjoint i64 %i.ab, %7
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !20
  %wide.trip.count = zext i16 %i.k to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %rb_obj_written.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %rb_obj_written.exit ] ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16 ; 3 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = and i64 %i.ae, 7
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = or i1 %i.af, %i.ah
  br i1 %i.ai, label %rb_obj_written.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  tail call void @rb_gc_writebarrier(i64 noundef %i.f, i64 noundef %i.ae) #26
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %.lr.ph, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !232

.loopexit:                                        ; preds = %rb_obj_written.exit, %ruby_nonempty_memcpy.exit.thread, %bb.a
  ret i64 %i.f
}

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @each_hash_iv(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp ugt i64 %0, 171
  %i.b = and i64 %0, 14
  %i.c = icmp eq i64 %i.b, 14
  %i.d = and i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !131
  %i.j = tail call i32 %i.g(i64 noundef %0, i64 noundef %1, i64 noundef %i.i) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare zeroext i1 @rb_shape_foreach_field(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @iterate_over_shapes_callback(i32 noundef %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !134, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %0, 524287
  %i.e = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr [40 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !233
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = load i64, ptr %1, align 8, !tbaa !127    ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20   ; 3 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 31
  switch i32 %i.o, label %bb.h [
    i32 1, label %bb.d
    i32 26, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %i.m, 65536
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  br i1 %.not.i, label %ROBJECT_FIELDS.exit, label %bb.e, !prof !97

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  br label %ROBJECT_FIELDS.exit

bb.f:                                             ; preds = %bb.c
  %.not.i13 = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i13)
  %i.s = and i64 %i.m, 65536
  %.not5.i = icmp eq i64 %i.s, 0
  %i.t = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  br i1 %.not5.i, label %ROBJECT_FIELDS.exit, label %bb.g, !prof !97

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  br label %ROBJECT_FIELDS.exit

bb.h:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.22) #32
  unreachable

ROBJECT_FIELDS.exit:                              ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.012 = phi ptr [ %i.q, %bb.d ], [ %i.r, %bb.e ], [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  %i.v = and i32 %0, 524287
  %i.w = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.x = zext nneg i32 %i.v to i64
  %i.y = getelementptr [40 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 28
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !120
  %i.ab = add i16 %i.aa, -1
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr [8 x i8], ptr %.012, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.af = getelementptr i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !132
  %i.ah = getelementptr i8, ptr %i.y, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.aj = getelementptr i8, ptr %1, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !131
  %i.al = tail call i32 %i.ag(i64 noundef %i.ai, i64 noundef %i.ae, i64 noundef %i.ak) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %ROBJECT_FIELDS.exit
  %.0 = phi i32 [ %i.al, %ROBJECT_FIELDS.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @rb_name_err_raise_str(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = tail call i64 @rb_name_err_new(i64 noundef %0, i64 noundef %1, i64 noundef %2) #26
  tail call void @rb_exc_raise(i64 noundef %i.a) #27
  unreachable
}

declare i64 @rb_name_err_new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @autoload_table_mark(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_mark_tbl_no_pin(ptr noundef %0) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @autoload_table_free(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_st_free_table(ptr noundef %0) #26
  ret void
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
define internal i64 @autoload_table_memsize(ptr noundef readonly %0) #23 {
bb.a:
  %i.a = tail call i64 @rb_st_memsize(ptr noundef %0) #28
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @autoload_table_compact(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_gc_ref_update_table_values_only(ptr noundef %0) #26
  ret void
}

declare void @rb_mark_tbl_no_pin(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_st_memsize(ptr noundef) local_unnamed_addr #6

declare void @rb_gc_ref_update_table_values_only(ptr noundef) local_unnamed_addr #1

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @autoload_const_mark_and_move(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  tail call void @rb_gc_mark_and_move(ptr noundef %i.a) #26
  %i.b = getelementptr i8, ptr %0, i64 16
  tail call void @rb_gc_mark_and_move(ptr noundef %i.b) #26
  %i.c = getelementptr i8, ptr %0, i64 48
  tail call void @rb_gc_mark_and_move(ptr noundef %i.c) #26
  %i.d = getelementptr i8, ptr %0, i64 64
  tail call void @rb_gc_mark_and_move(ptr noundef %i.d) #26
  %i.e = getelementptr i8, ptr %0, i64 24
  tail call void @rb_gc_mark_and_move(ptr noundef %i.e) #26
  ret void
}
end_hunk_2
