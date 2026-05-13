inline.NumInlined: 728
inline.NumDeleted: 161
begin_hunk_0_@Init_var_tables:bb.a

declare ptr @rb_id_table_create(i64 noundef) local_unnamed_addr #1

declare ptr @rb_st_init_numtable() local_unnamed_addr #1

declare i64 @rb_mutex_new() local_unnamed_addr #1

declare i64 @rb_obj_hide(i64 noundef) local_unnamed_addr #1

declare void @rb_vm_register_global_object(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ident_hash_new() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 1, 0) i64 @rb_mod_name0(i64 noundef %0, ptr noundef writeonly captures(none) initializes((0, 1)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @classname(i64 noundef %0, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 1, 0) i64 @classname(i64 noundef %0, ptr noundef writeonly captures(none) initializes((0, 1)) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store i8 0, ptr %1, align 1, !tbaa !18
  %i.c = inttoptr i64 %0 to ptr                   ; 14 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = and i64 %i.d, 65536
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 160      ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.a
  %i.i = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.j = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.j, i64 128
  %i.m = load i8, ptr %i.l, align 8, !tbaa !32, !range !34, !noundef !35
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.o = load i64, ptr %i.c, align 8, !tbaa !20
  %i.p = and i64 %i.o, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.r = load i64, ptr %i.j, align 8, !tbaa !36
  %i.s = call i32 @rb_st_lookup(ptr noundef nonnull %i.q, i64 noundef %i.r, ptr noundef nonnull %i.b) #26
  %.not5.i.i13.i = icmp eq i32 %i.s, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.b, align 8, !tbaa !16
  %i.u = inttoptr i64 %i.t to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.e, %bb.d, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.u, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.v = getelementptr i8, ptr %i.c, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.v, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.f
  %.0.i = phi ptr [ %i.i, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.w, %bb.f ], [ %i.k, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.x = getelementptr i8, ptr %.0.i, i64 128
  %i.y = load i64, ptr %i.x, align 8, !tbaa !37   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.m, label %bb.g

bb.g:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !20
  %i.ab = and i64 %i.aa, 65536
  %.not.i.i7 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i7, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i8

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i8:         ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.c, i64 160     ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25, label %bb.h

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i8, %bb.g
  %i.af = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit26

bb.h:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i8
  %i.ag = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i9 = icmp eq ptr %i.ag, null
  br i1 %.not.i9, label %.split.i20, label %bb.i

.split.i20:                                       ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit26

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.ag, i64 128
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !32, !range !34, !noundef !35
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.split7.i11, label %bb.l

.split7.i11:                                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.al = load i64, ptr %i.c, align 8, !tbaa !20
  %i.am = and i64 %i.al, 65536
  %.not.i.i.i10.i12 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i10.i12, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i16, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i13

RCLASS_CLASSEXT_TBL.exit.i.i11.i13:               ; preds = %.split7.i11
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 2 uses
  %.not.i.i12.i14 = icmp eq ptr %i.an, null
  br i1 %.not.i.i12.i14, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i16, label %bb.j

bb.j:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i13
  %i.ao = load i64, ptr %i.ag, align 8, !tbaa !36
  %i.ap = call i32 @rb_st_lookup(ptr noundef nonnull %i.an, i64 noundef %i.ao, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i15 = icmp eq i32 %i.ap, 0
  br i1 %.not5.i.i13.i15, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i16, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i16

RCLASS_EXT_READABLE_LOOKUP.exit17.i16:            ; preds = %bb.k, %bb.j, %RCLASS_CLASSEXT_TBL.exit.i.i11.i13, %.split7.i11
  %.0.i.i14.i17 = phi ptr [ %i.ar, %bb.k ], [ null, %bb.j ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i13 ], [ null, %.split7.i11 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i18 = icmp eq ptr %.0.i.i14.i17, null
  %i.as = getelementptr i8, ptr %i.c, i64 24
  %.0.i16.i19 = select i1 %.not.i15.i18, ptr %i.as, ptr %.0.i.i14.i17
  br label %RCLASS_EXT_READABLE.exit26

bb.l:                                             ; preds = %bb.i
  %i.at = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit26

RCLASS_EXT_READABLE.exit26:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25, %.split.i20, %RCLASS_EXT_READABLE_LOOKUP.exit17.i16, %bb.l
  %.0.i10 = phi ptr [ %i.af, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25 ], [ %i.at, %bb.l ], [ %i.ah, %.split.i20 ], [ %.0.i16.i19, %RCLASS_EXT_READABLE_LOOKUP.exit17.i16 ]
  %i.au = getelementptr i8, ptr %.0.i10, i64 125
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = and i8 %i.av, 1
  store i8 %i.aw, ptr %1, align 1, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %RCLASS_EXT_READABLE.exit, %RCLASS_EXT_READABLE.exit26
  %.0 = phi i64 [ %i.y, %RCLASS_EXT_READABLE.exit26 ], [ 4, %RCLASS_EXT_READABLE.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 1, 0) i64 @rb_mod_name(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = call fastcc i64 @classname(i64 noundef %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_mod_set_temporary_name(i64 noundef returned %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.sub_temporary_name_args, align 8 ; 5 uses
  %3 = alloca %struct.sub_temporary_name_args, align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !16
  %i.e = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 65536
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 160      ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.a
  %i.k = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.l = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.l, i64 128
  %i.o = load i8, ptr %i.n, align 8, !tbaa !32, !range !34, !noundef !35
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.q = load i64, ptr %i.e, align 8, !tbaa !20
  %i.r = and i64 %i.q, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.t = load i64, ptr %i.l, align 8, !tbaa !36
  %i.u = call i32 @rb_st_lookup(ptr noundef nonnull %i.s, i64 noundef %i.t, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.u, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.a, align 8, !tbaa !16
  %i.w = inttoptr i64 %i.v to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.e, %bb.d, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.w, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.x = getelementptr i8, ptr %i.e, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.x, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.f
  %.0.i = phi ptr [ %i.k, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.y, %bb.f ], [ %i.m, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.z = getelementptr i8, ptr %.0.i, i64 125
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.ac = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !16
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ac, ptr noundef nonnull @.str.1) #27
  unreachable

bb.h:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %4 = load i64, ptr %i.b, align 8, !tbaa !16
  %i.ad = icmp eq i64 %4, 4
  br i1 %i.ad, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ae = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i8 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i8, label %bb.j, label %rb_vm_lock_enter.exit

bb.j:                                             ; preds = %bb.i
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.c) #26
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.i, %bb.j
  %i.af = ptrtoint ptr %3 to i64                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ag = call i64 @rb_exec_recursive_paired(ptr noundef nonnull @set_sub_temporary_name_topmost, i64 noundef %0, i64 noundef %i.af, i64 noundef %i.af) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ah = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i9 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i9, label %bb.k, label %rb_vm_lock_leave.exit

bb.k:                                             ; preds = %rb_vm_lock_enter.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.c) #26
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %rb_vm_lock_enter.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.y

bb.l:                                             ; preds = %bb.h
  %i.ai = call i64 @rb_string_value(ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !40 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ao, ptr noundef nonnull @.str.3) #27
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !20
  %i.aq = and i64 %i.ap, 8192
  %.not.i.i10 = icmp eq i64 %i.aq, 0
  %i.ar = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  br i1 %.not.i.i10, label %RSTRING_END.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42
  br label %RSTRING_END.exit.i

RSTRING_END.exit.i:                               ; preds = %bb.o, %bb.n
  %i.at = phi ptr [ %i.as, %bb.o ], [ %i.ar, %bb.n ] ; 5 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = getelementptr i8, ptr %i.at, i64 %i.am  ; 4 uses
  %i.aw = call ptr @rb_enc_get(i64 noundef %i.aj) #26
  %.not.i11 = icmp ult ptr %i.at, %i.av
  br i1 %.not.i11, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %RSTRING_END.exit.i
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !42
  %.not33.i = icmp eq i8 %i.ax, 0
  br i1 %.not33.i, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p, %bb.v
  %.027.i = phi ptr [ %.229.lcssa.i, %bb.v ], [ %i.at, %bb.p ] ; 7 uses
  %.not48.i = icmp ult ptr %.027.i, %i.av
  br i1 %.not48.i, label %bb.q, label %is_constant_path.exit

bb.q:                                             ; preds = %.preheader.i
  %i.ay = getelementptr i8, ptr %.027.i, i64 2    ; 2 uses
  %.not34.i = icmp ugt ptr %i.ay, %i.av
  br i1 %.not34.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load i8, ptr %.027.i, align 1, !tbaa !42
  %i.ba = icmp eq i8 %i.az, 58
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr i8, ptr %.027.i, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !42
  %i.bd = icmp eq i8 %i.bc, 58
  %spec.select.i = select i1 %i.bd, ptr %i.ay, ptr %.027.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.128.i = phi ptr [ %.027.i, %bb.q ], [ %spec.select.i, %bb.s ], [ %.027.i, %bb.r ] ; 7 uses
  %.12843.i = ptrtoint ptr %.128.i to i64         ; 2 uses
  %i.be = icmp ult ptr %.128.i, %i.av
  br i1 %i.be, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.bf = getelementptr i8, ptr %.128.i, i64 %i.am
  %scevgep.i = getelementptr i8, ptr %i.bf, i64 %i.au
  %i.bg = sub i64 0, %.12843.i
  %scevgep44.i = getelementptr i8, ptr %scevgep.i, i64 %i.bg ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %.lr.ph.preheader.i
  %.22940.i = phi ptr [ %i.bi, %bb.u ], [ %.128.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.bh = load i8, ptr %.22940.i, align 1, !tbaa !42
  %.not35.i = icmp eq i8 %i.bh, 58
  br i1 %.not35.i, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.bi = getelementptr i8, ptr %.22940.i, i64 1  ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.bi, %scevgep44.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !43

.critedge.i:                                      ; preds = %bb.u, %.lr.ph.i, %bb.t
  %.229.lcssa.i = phi ptr [ %.128.i, %bb.t ], [ %.22940.i, %.lr.ph.i ], [ %scevgep44.i, %bb.u ] ; 3 uses
  %i.bj = icmp eq ptr %.128.i, %.229.lcssa.i
  br i1 %i.bj, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.critedge.i
  %i.bk = ptrtoint ptr %.229.lcssa.i to i64
  %i.bl = sub i64 %i.bk, %.12843.i
  %i.bm = call i32 @rb_enc_symname_type(ptr noundef %.128.i, i64 noundef %i.bl, ptr noundef %i.aw, i32 noundef 0) #26
  %.not36.i = icmp eq i32 %i.bm, 10
  br i1 %.not36.i, label %.preheader.i, label %.loopexit, !llvm.loop !45

is_constant_path.exit:                            ; preds = %.preheader.i
  %i.bn = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bn, ptr noundef nonnull @.str.4) #27
  unreachable

.loopexit:                                        ; preds = %.critedge.i, %bb.v, %bb.p, %RSTRING_END.exit.i
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !16
  %i.bp = call i64 @rb_str_new_frozen(i64 noundef %i.bo) #26 ; 2 uses
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !16
  %i.bq = call i64 @rb_obj_set_shareable(i64 noundef %i.bp) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.br = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i12 = icmp eq ptr %i.br, null
  br i1 %.not.i.i12, label %bb.w, label %rb_vm_lock_enter.exit13

bb.w:                                             ; preds = %.loopexit
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.d) #26
  br label %rb_vm_lock_enter.exit13

rb_vm_lock_enter.exit13:                          ; preds = %.loopexit, %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i64 %i.bu, ptr %2, align 8, !tbaa !46
  store i64 0, ptr %i.bs, align 8, !tbaa !48
  %i.bv = call i64 @rb_exec_recursive_paired(ptr noundef nonnull @set_sub_temporary_name_topmost, i64 noundef %0, i64 noundef %i.bt, i64 noundef %i.bt) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bw = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i14 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i14, label %bb.x, label %rb_vm_lock_leave.exit15

bb.x:                                             ; preds = %rb_vm_lock_enter.exit13
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.d) #26
  br label %rb_vm_lock_leave.exit15

rb_vm_lock_leave.exit15:                          ; preds = %rb_vm_lock_enter.exit13, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.y

bb.y:                                             ; preds = %rb_vm_lock_leave.exit15, %rb_vm_lock_leave.exit
  ret i64 %0
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_new_frozen(i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_set_shareable(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_class_path(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = call fastcc i64 @rb_tmp_class_path(i64 noundef %0, ptr noundef %i.a, ptr noundef nonnull @make_temporary_path) ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_str_dup(i64 noundef %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 4, %bb.a ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_tmp_class_path(i64 noundef %0, ptr noundef nonnull writeonly captures(none) initializes((0, 1)) %1, ptr noundef readonly captures(none) %2) unnamed_addr #0 {
end_hunk_0
