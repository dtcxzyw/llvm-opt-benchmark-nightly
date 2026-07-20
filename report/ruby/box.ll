inline.NumInlined: 122
inline.NumDeleted: 55
begin_hunk_0_@rb_loading_box:bb.a
bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ @root_box, %bb.a ]
  ret ptr %.0
}

declare ptr @rb_vm_loading_box(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_current_box_in_crash_report() local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i8, ptr @ruby_box_crashed, align 1, !tbaa !11, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %rb_current_box.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @main_box, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %rb_current_box.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  store volatile ptr %i.f, ptr %i.a, align 8, !tbaa !16
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = tail call ptr @rb_vm_current_box(ptr noundef %.0..0..0..0..0..0..0..0..i.i) #25
  br label %rb_current_box.exit

rb_current_box.exit:                              ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %bb.c ], [ @root_box, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_box_gc_update_references(ptr nofree noundef captures(address_is_null) %0) #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !20     ; 2 uses
  %.not32 = icmp eq i64 %i.a, 0
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @rb_gc_location(i64 noundef %i.a) #25
  store i64 %i.b, ptr %0, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %.not33 = icmp eq i64 %i.d, 0
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i64 @rb_gc_location(i64 noundef %i.d) #25
  store i64 %i.e, ptr %i.c, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25
  %i.h = tail call i64 @rb_gc_location(i64 noundef %i.g) #25
  store i64 %i.h, ptr %i.f, align 8, !tbaa !25
  %i.i = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26
  %i.k = tail call i64 @rb_gc_location(i64 noundef %i.j) #25
  store i64 %i.k, ptr %i.i, align 8, !tbaa !26
  %i.l = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %i.n = tail call i64 @rb_gc_location(i64 noundef %i.m) #25
  store i64 %i.n, ptr %i.l, align 8, !tbaa !27
  %i.o = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %.not34 = icmp eq i64 %i.p, 0
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i64 @rb_gc_location(i64 noundef %i.p) #25
  store i64 %i.q, ptr %i.o, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !29
  %i.t = tail call i64 @rb_gc_location(i64 noundef %i.s) #25
  store i64 %i.t, ptr %i.r, align 8, !tbaa !29
  %i.u = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !30
  %i.w = tail call i64 @rb_gc_location(i64 noundef %i.v) #25
  store i64 %i.w, ptr %i.u, align 8, !tbaa !30
  %i.x = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31
  %i.z = tail call i64 @rb_gc_location(i64 noundef %i.y) #25
  store i64 %i.z, ptr %i.x, align 8, !tbaa !31
  %i.aa = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ac = tail call i64 @rb_gc_location(i64 noundef %i.ab) #25
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !32
  %i.ad = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !33
  %i.af = tail call i64 @rb_gc_location(i64 noundef %i.ae) #25
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !33
  %i.ag = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !34
  %i.ai = tail call i64 @rb_gc_location(i64 noundef %i.ah) #25
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare i64 @rb_gc_location(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_box_entry_mark(ptr nofree noundef readonly captures(address_is_null) %0) #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !20
  tail call void @rb_gc_mark(i64 noundef %i.a) #25
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  tail call void @rb_gc_mark(i64 noundef %i.c) #25
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25
  tail call void @rb_gc_mark(i64 noundef %i.e) #25
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  tail call void @rb_gc_mark(i64 noundef %i.g) #25
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27
  tail call void @rb_gc_mark(i64 noundef %i.i) #25
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28
  tail call void @rb_gc_mark(i64 noundef %i.k) #25
  %i.l = getelementptr i8, ptr %0, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !29
  tail call void @rb_gc_mark(i64 noundef %i.m) #25
  %i.n = getelementptr i8, ptr %0, i64 64
  %i.o = load i64, ptr %i.n, align 8, !tbaa !30
  tail call void @rb_gc_mark(i64 noundef %i.o) #25
  %i.p = getelementptr i8, ptr %0, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !31
  tail call void @rb_gc_mark(i64 noundef %i.q) #25
  %i.r = getelementptr i8, ptr %0, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  tail call void @rb_gc_mark(i64 noundef %i.s) #25
  %i.t = getelementptr i8, ptr %0, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 2 uses
  %.not20 = icmp eq ptr %i.u, null
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @rb_mark_tbl(ptr noundef nonnull %i.u) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr i8, ptr %0, i64 104
  %i.w = load i64, ptr %i.v, align 8, !tbaa !33
  tail call void @rb_gc_mark(i64 noundef %i.w) #25
  %i.x = getelementptr i8, ptr %0, i64 112
  %i.y = load i64, ptr %i.x, align 8, !tbaa !34
  tail call void @rb_gc_mark(i64 noundef %i.y) #25
  %i.z = getelementptr i8, ptr %0, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not21 = icmp eq ptr %i.aa, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @rb_mark_tbl(ptr noundef nonnull %i.aa) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  ret void
}

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #4

declare void @rb_mark_tbl(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_box_entry_alloc(i64 noundef %0) #3 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 136, ptr noundef nonnull @rb_box_data_type) #25 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.e, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 17 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = load i64, ptr @rb_cObject, align 8, !tbaa !41
  %i.j = tail call i64 @rb_obj_alloc(i64 noundef %i.i) #25 ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !24
  tail call void @rb_define_singleton_method(i64 noundef %i.j, ptr noundef nonnull @.str.27, ptr noundef nonnull @box_main_to_s, i32 noundef 0) #25
  %i.l = load i64, ptr %i.k, align 8, !tbaa !24
  %i.m = tail call i64 @rb_singleton_class(i64 noundef %i.l) #25
  tail call void @rb_define_alias(i64 noundef %i.m, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.27) #25
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @root_box, i64 24), align 8, !tbaa !25
  %i.o = tail call i64 @rb_ary_dup(i64 noundef %i.n) #25
  %i.p = getelementptr i8, ptr %i.h, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !25
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @root_box, i64 48), align 16, !tbaa !26
  %i.r = tail call i64 @rb_ary_dup(i64 noundef %i.q) #25
  %i.s = getelementptr i8, ptr %i.h, i64 48
  store i64 %i.r, ptr %i.s, align 8, !tbaa !26
  %i.t = tail call i64 @rb_ary_new() #25
  %i.u = getelementptr i8, ptr %i.h, i64 32
  store i64 %i.t, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr i8, ptr %i.h, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !28
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @root_box, i64 56), align 8, !tbaa !29
  %i.x = tail call i64 @rb_ary_dup(i64 noundef %i.w) #25
  %i.y = getelementptr i8, ptr %i.h, i64 56
  store i64 %i.x, ptr %i.y, align 8, !tbaa !29
  %i.z = tail call i64 @rb_ary_new() #25
  %i.aa = getelementptr i8, ptr %i.h, i64 64
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !30
  %i.ab = tail call ptr @rb_st_init_numtable() #25
  %i.ac = getelementptr i8, ptr %i.h, i64 88
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !42
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @root_box, i64 72), align 8, !tbaa !31
  %i.ae = tail call i64 @rb_hash_dup(i64 noundef %i.ad) #25
  %i.af = getelementptr i8, ptr %i.h, i64 72
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !31
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @root_box, i64 80), align 16, !tbaa !32
  %i.ah = tail call i64 @rb_hash_dup(i64 noundef %i.ag) #25
  %i.ai = getelementptr i8, ptr %i.h, i64 80
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !32
  %i.aj = tail call ptr @rb_st_init_strtable() #25
  %i.ak = getelementptr i8, ptr %i.h, i64 96
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !35
  %i.al = tail call i64 @rb_hash_new_with_size(i64 noundef 0) #25
  %i.am = getelementptr i8, ptr %i.h, i64 104
  store i64 %i.al, ptr %i.am, align 8, !tbaa !33
  %i.an = tail call i64 @rb_hash_new_with_size(i64 noundef 0) #25
  %i.ao = getelementptr i8, ptr %i.h, i64 112
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !34
  %i.ap = tail call ptr @rb_st_init_numtable() #25
  %i.aq = getelementptr i8, ptr %i.h, i64 120
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !36
  %i.ar = getelementptr i8, ptr %i.h, i64 128
  store i8 1, ptr %i.ar, align 8, !tbaa !43
  %i.as = getelementptr i8, ptr %i.h, i64 129
  store i8 1, ptr %i.as, align 1, !tbaa !44
  ret i64 %i.a
}

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_get_box_t(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %get_box_struct_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pr.i = load i64, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 13) #25 ; 3 uses
  store i64 %i.b, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !45

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.b
  %.lcssa.i = phi i64 [ %.pr.i, %bb.b ], [ %i.b, %.lr.ph.i ]
  %i.c = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %.lcssa.i) #25 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = and i64 %i.c, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !47

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %rbimpl_intern_const.exit
  %i.h = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %i.j = and i64 %i.i, 95
  %or.cond.not.i.i = icmp eq i64 %i.j, 76
  br i1 %or.cond.not.i.i, label %bb.c, label %.critedge.i.i, !prof !49

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.m = and i64 %i.l, -2                         ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = trunc i64 %i.l to i1
  %i.p = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  br i1 %i.o, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %i.q, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %i.s = icmp eq i64 %i.m, ptrtoint (ptr @rb_box_data_type to i64)
  br i1 %i.s, label %get_box_struct_internal.exit, label %.preheader.i.i, !prof !50

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.e
  %.016.i.i = phi ptr [ %i.u, %bb.e ], [ %i.n, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.t = getelementptr i8, ptr %.016.i.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51   ; 2 uses
  %i.v = icmp eq ptr %i.u, @rb_box_data_type
  br i1 %i.v, label %get_box_struct_internal.exit, label %.preheader.i.i, !llvm.loop !56

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit
  %i.w = tail call ptr @rb_check_typeddata(i64 noundef %i.c, ptr noundef nonnull @rb_box_data_type) #25
  br label %get_box_struct_internal.exit

get_box_struct_internal.exit:                     ; preds = %bb.e, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i, %bb.a
  %.0 = phi ptr [ @root_box, %bb.a ], [ %i.w, %.critedge.i.i ], [ %i.r, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.r, %bb.e ]
  ret ptr %.0
}

declare i64 @rb_attr_get(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden i64 @rb_get_box_object(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !20
  ret i64 %i.a
}

; Function Attrs: nofree nounwind sspstrong uwtable
define hidden void @rb_box_cleanup_local_extension(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !57
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48
  %i.e = and i64 %i.d, 8192
  %.not.i.i = icmp eq i64 %i.e, 0
  %i.f = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  br i1 %.not.i.i, label %box_ext_cleanup_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59
  br label %box_ext_cleanup_free.exit

box_ext_cleanup_free.exit:                        ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %i.f, %bb.b ]
  %i.i = tail call i32 @unlink(ptr noundef %i.h) #25 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %box_ext_cleanup_free.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal void @box_ext_cleanup_free(ptr nofree noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !48
  %i.b = and i64 %i.a, 8192
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.c, %bb.a ]
  %i.f = tail call i32 @unlink(ptr noundef %i.e) #25 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_box_local_extension(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %4 = alloca %struct.stat, align 8               ; 5 uses
  %i.b = alloca [4096 x i8], align 16             ; 8 uses
  %i.c = alloca [4096 x i8], align 16             ; 5 uses
  %i.d = alloca [4096 x i8], align 16             ; 6 uses
  %i.e = alloca [1024 x i8], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.f = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.l = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %i.n = and i64 %i.m, 8192
  %.not.i14 = icmp eq i64 %i.n, 0
  %i.o = getelementptr i8, ptr %i.l, i64 24       ; 2 uses
  br i1 %.not.i14, label %RSTRING_PTR.exit15, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59
  br label %RSTRING_PTR.exit15

RSTRING_PTR.exit15:                               ; preds = %RSTRING_PTR.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.o, %RSTRING_PTR.exit ] ; 6 uses
  %i.r = icmp eq i64 %0, 4
  br i1 %i.r, label %rb_get_box_t.exit, label %bb.d

bb.d:                                             ; preds = %RSTRING_PTR.exit15
  %.pr.i.i = load i64, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.s = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 13) #25 ; 3 uses
  store i64 %i.s, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !45

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.d
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.d ], [ %i.s, %.lr.ph.i.i ]
  %i.t = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %.lcssa.i.i) #25 ; 4 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = and i64 %i.t, 7
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !47

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %rbimpl_intern_const.exit.i
  %i.y = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !48
  %i.aa = and i64 %i.z, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.aa, 76
  br i1 %or.cond.not.i.i.i, label %bb.e, label %.critedge.i.i.i, !prof !49

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.ab = getelementptr i8, ptr %i.y, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !37 ; 2 uses
  %i.ad = and i64 %i.ac, -2                       ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = trunc i64 %i.ac to i1
  %i.ag = getelementptr i8, ptr %i.y, i64 32      ; 2 uses
  br i1 %i.af, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.f, %bb.e
  %i.ai = phi ptr [ %i.ah, %bb.f ], [ %i.ag, %bb.e ] ; 2 uses
  %i.aj = icmp eq i64 %i.ad, ptrtoint (ptr @rb_box_data_type to i64)
  br i1 %i.aj, label %rb_get_box_t.exit, label %.preheader.i.i.i, !prof !50

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.g
  %.016.i.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ae, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i.i
  %i.ak = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51 ; 2 uses
  %i.am = icmp eq ptr %i.al, @rb_box_data_type
  br i1 %i.am, label %rb_get_box_t.exit, label %.preheader.i.i.i, !llvm.loop !56

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %rbimpl_intern_const.exit.i
  %i.an = tail call ptr @rb_check_typeddata(i64 noundef %i.t, ptr noundef nonnull @rb_box_data_type) #25
  br label %rb_get_box_t.exit

rb_get_box_t.exit:                                ; preds = %bb.g, %RSTRING_PTR.exit15, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.0.i = phi ptr [ @root_box, %RSTRING_PTR.exit15 ], [ %i.an, %.critedge.i.i.i ], [ %i.ai, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.ai, %bb.g ]
  %i.ao = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #26 ; 3 uses
  %i.ap = getelementptr i8, ptr %i.q, i64 %i.ao   ; 3 uses
  %i.aq = icmp ugt ptr %i.ap, %i.q
  br i1 %i.aq, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %rb_get_box_t.exit
  %i.ar = ptrtoint ptr %i.ap to i64
  br label %bb.h

bb.h:                                             ; preds = %.tail.thread.i, %.lr.ph.i
  %.025.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.bg, %.tail.thread.i ] ; 7 uses
  %i.as = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.025.i, ptr noundef nonnull dereferenceable(4) @.str.28) #26
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.i, label %sub_0.i

sub_0.i:                                          ; preds = %bb.h
  %i.au = load i8, ptr %.025.i, align 1
  %.not.i17 = icmp eq i8 %i.au, 46
  br i1 %.not.i17, label %sub_1.i, label %.tail.thread.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.av = getelementptr inbounds nuw i8, ptr %.025.i, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  %.not28.i = icmp eq i8 %i.aw, 111
  br i1 %.not28.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_1.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.025.i, i64 2
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.i, label %.tail.thread.i

bb.i:                                             ; preds = %.tail.i, %bb.h
  %i.ba = ptrtoint ptr %.025.i to i64
  %i.bb = ptrtoint ptr %i.q to i64
  %i.bc = sub i64 %i.ba, %i.bb
  br label %.loopexit.i

.tail.thread.i:                                   ; preds = %.tail.i, %sub_1.i, %sub_0.i
  %i.bd = ptrtoint ptr %.025.i to i64
  %i.be = sub i64 %i.ar, %i.bd
  %i.bf = icmp slt i64 %i.be, 4
  %i.bg = getelementptr i8, ptr %.025.i, i64 -1   ; 2 uses
  %i.bh = icmp ugt ptr %i.bg, %i.q
  %or.cond.i = and i1 %i.bh, %i.bf
  br i1 %or.cond.i, label %bb.h, label %.loopexit.i, !llvm.loop !60

.loopexit.i:                                      ; preds = %.tail.thread.i, %bb.i, %rb_get_box_t.exit
  %.021.i = phi i64 [ %i.bc, %bb.i ], [ %i.ao, %rb_get_box_t.exit ], [ %i.ao, %.tail.thread.i ] ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.021.i, i64 4095) ; 2 uses
  %.not.i.i16 = icmp eq i64 %.021.i, 0
  br i1 %.not.i.i16, label %fname_without_suffix.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit.i
  %i.bi = call ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.q, i64 noundef range(i64 1, 4096) %spec.select.i, i64 noundef 4096) #25, !alias.scope !61 ; 0 uses
  br label %fname_without_suffix.exit

fname_without_suffix.exit:                        ; preds = %.loopexit.i, %bb.j
  %i.bj = getelementptr i8, ptr %i.c, i64 %spec.select.i
  store i8 0, ptr %i.bj, align 1, !tbaa !59
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %fname_without_suffix.exit
  %.011.i = phi ptr [ %i.k, %fname_without_suffix.exit ], [ %i.bl, %bb.k ] ; 2 uses
  %i.bk = getelementptr i8, ptr %.011.i, i64 1
  %i.bl = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bk, ptr noundef nonnull readonly dereferenceable(1) %i.c) #26 ; 2 uses
  %.not.i18 = icmp eq ptr %i.bl, null
  br i1 %.not.i18, label %bb.l, label %bb.k, !llvm.loop !65

bb.l:                                             ; preds = %bb.k
  %i.bm = call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %.011.i, i64 noundef 4096) #25 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.0.i19 = phi ptr [ %i.d, %bb.l ], [ %i.bo, %bb.o ] ; 3 uses
  %i.bn = load i8, ptr %.0.i19, align 1, !tbaa !59
  switch i8 %i.bn, label %bb.o [
    i8 0, label %escaped_basename.exit
    i8 47, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  store i8 43, ptr %.0.i19, align 1, !tbaa !59
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = getelementptr i8, ptr %.0.i19, i64 1
  br label %bb.m, !llvm.loop !66

escaped_basename.exit:                            ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %.0.i, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !67 ; 2 uses
  %i.br = load i8, ptr @tmp_dir_has_dirsep, align 1, !tbaa !11, !range !18, !noundef !19
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = load ptr, ptr @tmp_dir, align 8, !tbaa !68 ; 2 uses
  %i.bu = call i32 @getpid() #25                  ; 2 uses
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %escaped_basename.exit
  %i.bv = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.b, i64 noundef 4096, ptr noundef nonnull @.str.30, ptr noundef %i.bt, ptr noundef nonnull @.str.1, i32 noundef %i.bu, i64 noundef %i.bq, ptr noundef nonnull %i.d) #25
  br label %sprint_ext_filename.exit

bb.q:                                             ; preds = %escaped_basename.exit
  %i.bw = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.b, i64 noundef 4096, ptr noundef nonnull @.str.31, ptr noundef %i.bt, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %i.bu, i64 noundef %i.bq, ptr noundef nonnull %i.d) #25
  br label %sprint_ext_filename.exit

sprint_ext_filename.exit:                         ; preds = %bb.p, %bb.q
  %.0.i20 = phi i32 [ %i.bv, %bb.p ], [ %i.bw, %bb.q ]
  %i.bx = icmp sgt i32 %.0.i20, 4095
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %sprint_ext_filename.exit
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.2) #27
  unreachable

bb.s:                                             ; preds = %sprint_ext_filename.exit
  %i.by = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.b) #25 ; 2 uses
  %i.bz = call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef null, ptr noundef nonnull @box_ext_cleanup_type) #25
  store i64 %i.bz, ptr %3, align 8, !tbaa !41
  %i.ca = call i32 (ptr, i32, ...) @open(ptr noundef readonly %i.k, i32 noundef 524288) #25 ; 8 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %copy_ext_file.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.cc = call i32 @fstat(i32 noundef %i.ca, ptr noundef nonnull %4) #25
  %.not.i21 = icmp eq i32 %i.cc, 0
  br i1 %.not.i21, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = call i32 @close(i32 noundef %i.ca) #25  ; 0 uses
  br label %copy_ext_file.exit.thread29

bb.v:                                             ; preds = %bb.t
  %i.ce = call i32 (ptr, i32, ...) @open(ptr noundef nonnull readonly %i.b, i32 noundef 524481, i32 noundef 448) #25 ; 5 uses
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cg = call i32 @close(i32 noundef %i.ca) #25  ; 0 uses
  br label %copy_ext_file.exit.thread29

bb.x:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !69
  %i.cj = and i32 %i.ci, 511
  %i.ck = call i32 @fchmod(i32 noundef %i.ce, i32 noundef %i.cj) #25
  %.not26.i = icmp eq i32 %i.ck, 0
  br i1 %.not26.i, label %.preheader.i, label %.loopexit.i22

.preheader.i:                                     ; preds = %bb.x, %.preheader.i
  %i.cl = call i64 @copy_file_range(i32 noundef %i.ca, ptr noundef null, i32 noundef %i.ce, ptr noundef null, i64 noundef -9223372036854775808, i32 noundef 0) #25 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  %i.cn = icmp slt i64 %i.cl, 0
  %..i = select i1 %i.cn, i32 3, i32 0
  %.021.i23 = select i1 %i.cm, i32 2, i32 %..i
  switch i32 %.021.i23, label %.unreachabledefault.i [
    i32 0, label %.preheader.i
    i32 3, label %bb.y
    i32 2, label %.loopexit.i22
  ]

bb.y:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.co = call i64 @read(i32 noundef range(i32 0, -2147483648) %i.ca, ptr noundef nonnull %i.a, i64 noundef 1024) #25 ; 2 uses
  %.not22.i.i = icmp eq i64 %i.co, 0
  br i1 %.not22.i.i, label %copy_stream.exit.i, label %.lr.ph.i.i24

.critedge.loopexit.i.i:                           ; preds = %.preheader.i.i
  %i.cp = call i64 @read(i32 noundef range(i32 0, -2147483648) %i.ca, ptr noundef nonnull %i.a, i64 noundef 1024) #25 ; 2 uses
  %.not.i.i25 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i25, label %copy_stream.exit.i, label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %bb.y, %.critedge.loopexit.i.i
  %i.cq = phi i64 [ %i.cp, %.critedge.loopexit.i.i ], [ %i.co, %bb.y ] ; 3 uses
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %copy_stream.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i24, %bb.z
  %.015.i.i = phi i64 [ %i.cw, %bb.z ], [ 0, %.lr.ph.i.i24 ] ; 4 uses
  %.not21.i.i = icmp ult i64 %.015.i.i, %i.cq
  br i1 %.not21.i.i, label %bb.z, label %.critedge.loopexit.i.i

bb.z:                                             ; preds = %.preheader.i.i
  %i.cs = getelementptr i8, ptr %i.a, i64 %.015.i.i
  %i.ct = sub nuw nsw i64 %i.cq, %.015.i.i
  %i.cu = call i64 @write(i32 noundef range(i32 0, -2147483648) %i.ce, ptr noundef %i.cs, i64 noundef %i.ct) #25 ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  %i.cw = add nuw i64 %i.cu, %.015.i.i
  br i1 %i.cv, label %.preheader.i.i, label %bb.aa, !llvm.loop !72

bb.aa:                                            ; preds = %bb.z
  br label %copy_stream.exit.i, !llvm.loop !73

copy_stream.exit.i:                               ; preds = %.lr.ph.i.i24, %.critedge.loopexit.i.i, %bb.aa, %bb.y
  %.4.i.i = phi i32 [ 4, %bb.aa ], [ 0, %bb.y ], [ 3, %.lr.ph.i.i24 ], [ 0, %.critedge.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit.i22

.loopexit.i22:                                    ; preds = %.preheader.i, %copy_stream.exit.i, %bb.x
  %.022.i = phi i32 [ 6, %bb.x ], [ %.4.i.i, %copy_stream.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.cx = call i32 @close(i32 noundef %i.ca) #25  ; 0 uses
  %i.cy = call i32 @close(i32 noundef %i.ce) #25  ; 0 uses
  %.not27.i = icmp eq i32 %.022.i, 0
  br i1 %.not27.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.loopexit.i22
  %i.cz = call i32 @unlink(ptr noundef nonnull readonly %i.b) #25 ; 0 uses
  br label %copy_ext_file.exit.thread29

.unreachabledefault.i:                            ; preds = %.preheader.i
  unreachable

copy_ext_file.exit.thread29:                      ; preds = %bb.u, %bb.w, %bb.ab
  %.2.i.ph = phi i32 [ %.022.i, %bb.ab ], [ 2, %bb.w ], [ 5, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %copy_ext_file.exit.thread

copy_ext_file.exit.thread:                        ; preds = %bb.s, %copy_ext_file.exit.thread29
  %.3.i28 = phi i32 [ %.2.i.ph, %copy_ext_file.exit.thread29 ], [ 1, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.da = call fastcc ptr @copy_ext_file_error(ptr noundef %i.e, i32 noundef %.3.i28) ; 0 uses
  %i.db = load i64, ptr @rb_eLoadError, align 8, !tbaa !41
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.db, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.b, i64 noundef %2, ptr noundef nonnull %i.e) #28
  unreachable

bb.ac:                                            ; preds = %.loopexit.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.dc = inttoptr i64 %i.by to ptr
  %i.dd = load i64, ptr %3, align 8, !tbaa !41
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = getelementptr i8, ptr %i.de, i64 32
  store ptr %i.dc, ptr %i.df, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret i64 %i.by
}

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #8

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #4

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef nonnull ptr @copy_ext_file_error(ptr noundef nonnull returned %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #3 {
bb.a:
  switch i32 %1, label %bb.i [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %0, ptr noundef nonnull align 1 dereferenceable(30) @.str.33, i64 noundef 30, i1 false) #25
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %0, ptr noundef nonnull align 1 dereferenceable(29) @.str.34, i64 noundef 29, i1 false) #25
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %0, ptr noundef nonnull align 1 dereferenceable(34) @.str.35, i64 noundef 34, i1 false) #25
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %0, ptr noundef nonnull align 1 dereferenceable(35) @.str.36, i64 noundef 35, i1 false) #25
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %0, ptr noundef nonnull align 1 dereferenceable(54) @.str.37, i64 noundef 54, i1 false) #25
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %0, ptr noundef nonnull align 1 dereferenceable(55) @.str.38, i64 noundef 55, i1 false) #25
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.a = tail call ptr @rb_errno_ptr() #25
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7
  %i.c = tail call ptr @strerror(i32 noundef %i.b) #25
  %i.d = tail call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024) #25 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.39, i32 noundef %1) #27
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret ptr %0
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_initialize_main_box() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !74
  %.b = load i1, ptr @box_experimental_warned, align 4
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @rb_category_warn(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @ruby_api_version_name) #29
  store i1 true, ptr @box_experimental_warned, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr @rb_cBox, align 8, !tbaa !41
  %i.c = tail call i64 @rb_class_new_instance(i32 noundef 0, ptr noundef null, i64 noundef %i.b) #25 ; 4 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %rb_get_box_t.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.pr.i.i = load i64, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.e = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 13) #25 ; 3 uses
  store i64 %i.e, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !45

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.d
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.d ], [ %i.e, %.lr.ph.i.i ]
  %i.f = tail call i64 @rb_attr_get(i64 noundef %i.c, i64 noundef %.lcssa.i.i) #25 ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i64 %i.f, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !47

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %rbimpl_intern_const.exit.i
  %i.k = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48
  %i.m = and i64 %i.l, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.m, 76
  br i1 %or.cond.not.i.i.i, label %bb.e, label %.critedge.i.i.i, !prof !49

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.n = getelementptr i8, ptr %i.k, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %i.p = and i64 %i.o, -2                         ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = trunc i64 %i.o to i1
  %i.s = getelementptr i8, ptr %i.k, i64 32       ; 2 uses
  br i1 %i.r, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.f, %bb.e
  %i.u = phi ptr [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %i.v = icmp eq i64 %i.p, ptrtoint (ptr @rb_box_data_type to i64)
  br i1 %i.v, label %rb_get_box_t.exit, label %.preheader.i.i.i, !prof !50

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.g
  %.016.i.i.i = phi ptr [ %i.x, %bb.g ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i.i
  %i.w = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51   ; 2 uses
  %i.y = icmp eq ptr %i.x, @rb_box_data_type
  br i1 %i.y, label %rb_get_box_t.exit, label %.preheader.i.i.i, !llvm.loop !56

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %rbimpl_intern_const.exit.i
  %i.z = tail call ptr @rb_check_typeddata(i64 noundef %i.f, ptr noundef nonnull @rb_box_data_type) #25
  br label %rb_get_box_t.exit

rb_get_box_t.exit:                                ; preds = %bb.g, %bb.c, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.0.i = phi ptr [ @root_box, %bb.c ], [ %i.z, %.critedge.i.i.i ], [ %i.u, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.u, %bb.g ] ; 6 uses
  store i64 %i.c, ptr %.0.i, align 8, !tbaa !20
  %i.aa = getelementptr i8, ptr %.0.i, i64 128
  store i8 1, ptr %i.aa, align 8, !tbaa !43
  %i.ab = getelementptr i8, ptr %.0.i, i64 129
  store i8 0, ptr %i.ab, align 1, !tbaa !44
  %i.ac = load i64, ptr @rb_cBox, align 8, !tbaa !41
  %.pr.i = load i64, ptr @rb_initialize_main_box.rbimpl_id, align 8, !tbaa !41 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %rb_get_box_t.exit, %.lr.ph.i
  %i.ad = tail call i64 @rb_intern2(ptr noundef nonnull @.str.5, i64 noundef 4) #25 ; 3 uses
  store i64 %i.ad, ptr @rb_initialize_main_box.rbimpl_id, align 8, !tbaa !41
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !45

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %rb_get_box_t.exit
  %.lcssa.i = phi i64 [ %.pr.i, %rb_get_box_t.exit ], [ %i.ad, %.lr.ph.i ]
  tail call void @rb_const_set(i64 noundef %i.ac, i64 noundef %.lcssa.i, i64 noundef %i.c) #25
  store ptr %.0.i, ptr @main_box, align 8, !tbaa !13
  %i.ae = getelementptr i8, ptr %i.a, i64 576
  store ptr %.0.i, ptr %i.ae, align 8, !tbaa !76
  %i.af = load i64, ptr @rb_cObject, align 8, !tbaa !41
  %i.ag = tail call fastcc ptr @RCLASS_EXT_WRITABLE_IN_BOX(i64 noundef %i.af, ptr noundef nonnull %.0.i) ; 0 uses
  ret void
}

; Function Attrs: cold
declare void @rb_category_warn(i32 noundef, ptr noundef, ...) local_unnamed_addr #10

declare i64 @rb_class_new_instance(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @rb_const_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @RCLASS_EXT_WRITABLE_IN_BOX(i64 noundef %0, ptr noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 128
  %i.e = load i8, ptr %i.d, align 8, !tbaa !43, !range !18, !noundef !19
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre10 = inttoptr i64 %0 to ptr
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = icmp ne i64 %0, 0
  %i.h = and i64 %0, 7
  %i.i = icmp eq i64 %i.h, 0
  %.not5.i.i = and i1 %i.g, %i.i                  ; 2 uses
  %i.j = inttoptr i64 %0 to ptr                   ; 11 uses
  br i1 %.not5.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit:            ; preds = %bb.c
  %i.k = load i64, ptr %i.j, align 8, !tbaa !48
  %i.l = and i64 %i.k, 16384
  %.not9 = icmp eq i64 %i.l, 0
  br i1 %.not9, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit
  %.pre-phi11 = phi ptr [ %.pre10, %._crit_edge ], [ %i.j, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit ]
  %i.m = getelementptr i8, ptr %.pre-phi11, i64 24
  br label %RCLASS_EXT_WRITABLE_LOOKUP.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread:     ; preds = %bb.c, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.n = load i64, ptr %i.j, align 8, !tbaa !48
  %i.o = and i64 %i.n, 65536
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread.i, label %RCLASS_CLASSEXT_TBL.exit.i.i

RCLASS_CLASSEXT_TBL.exit.i.i:                     ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread
  %i.p = getelementptr i8, ptr %i.j, i64 160
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i
  %i.r = load i64, ptr %1, align 8, !tbaa !20
  %i.s = call i32 @rb_st_lookup(ptr noundef nonnull %i.q, i64 noundef %i.r, ptr noundef nonnull %i.b) #25
  %.not5.i.i7 = icmp eq i32 %i.s, 0
  br i1 %.not5.i.i7, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.i

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread.i:   ; preds = %bb.e, %RCLASS_CLASSEXT_TBL.exit.i.i, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.f

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.i:          ; preds = %bb.e
  %i.t = load i64, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.f, label %RCLASS_EXT_WRITABLE_LOOKUP.exit

bb.f:                                             ; preds = %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.i, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.v = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !109
  %.not.i.i25.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i25.i, label %bb.g, label %rb_vm_lock_enter.exit.i

bb.g:                                             ; preds = %bb.f
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.c) #25
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.g, %bb.f
  %i.w = getelementptr i8, ptr %i.j, i64 160      ; 6 uses
  %i.x = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.y = load i64, ptr %i.j, align 8, !tbaa !48
  %i.z = and i64 %i.y, 65536
  %.not.i.i26.us.i = icmp eq i64 %i.z, 0          ; 2 uses
  br i1 %.not5.i.i, label %rb_vm_lock_enter.exit.split.us.i, label %rb_vm_lock_enter.exit.split.i

rb_vm_lock_enter.exit.split.us.i:                 ; preds = %rb_vm_lock_enter.exit.i
  br i1 %.not.i.i26.us.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us.i, label %RCLASS_CLASSEXT_TBL.exit.i27.us.i

RCLASS_CLASSEXT_TBL.exit.i27.us.i:                ; preds = %rb_vm_lock_enter.exit.split.us.i
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !100 ; 2 uses
  %.not.i28.us.i = icmp eq ptr %i.aa, null
  br i1 %.not.i28.us.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us.i, label %bb.h

bb.h:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i27.us.i
  %i.ab = load i64, ptr %1, align 8, !tbaa !20
  %i.ac = call i32 @rb_st_lookup(ptr noundef nonnull %i.aa, i64 noundef %i.ab, ptr noundef nonnull %i.a) #25
  %.not5.i29.us.i = icmp eq i32 %i.ac, 0
  br i1 %.not5.i29.us.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.us.i

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.us.i:     ; preds = %bb.h
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not23.us.i = icmp eq i64 %i.ad, 0
  br i1 %.not23.us.i, label %bb.i, label %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.us.i

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us.i: ; preds = %bb.h, %RCLASS_CLASSEXT_TBL.exit.i27.us.i, %rb_vm_lock_enter.exit.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.i

bb.i:                                             ; preds = %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us.i, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.us.i
  %i.af = call ptr @rb_class_duplicate_classext(ptr noundef %i.x, i64 noundef %0, ptr noundef %1) #25 ; 3 uses
  %i.ag = load i64, ptr %i.j, align 8, !tbaa !48
  %i.ah = and i64 %i.ag, 65536
  %.not.i.i32.us.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i32.us.i, label %RCLASS_CLASSEXT_TBL.exit.thread.i.us.i, label %RCLASS_CLASSEXT_TBL.exit.i33.us.i

RCLASS_CLASSEXT_TBL.exit.i33.us.i:                ; preds = %bb.i
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !100 ; 2 uses
  %.not.i34.us.i = icmp eq ptr %i.ai, null
  br i1 %.not.i34.us.i, label %RCLASS_CLASSEXT_TBL.exit.thread.i.us.i, label %RCLASS_SET_BOX_CLASSEXT.exit.us.i

RCLASS_CLASSEXT_TBL.exit.thread.i.us.i:           ; preds = %RCLASS_CLASSEXT_TBL.exit.i33.us.i, %bb.i
  %i.aj = call ptr @rb_st_init_numtable_with_size(i64 noundef 1) #25 ; 2 uses
  store ptr %i.aj, ptr %i.w, align 8, !tbaa !100
  br label %RCLASS_SET_BOX_CLASSEXT.exit.us.i

RCLASS_SET_BOX_CLASSEXT.exit.us.i:                ; preds = %RCLASS_CLASSEXT_TBL.exit.thread.i.us.i, %RCLASS_CLASSEXT_TBL.exit.i33.us.i
  %.0.i35.us.i = phi ptr [ %i.ai, %RCLASS_CLASSEXT_TBL.exit.i33.us.i ], [ %i.aj, %RCLASS_CLASSEXT_TBL.exit.thread.i.us.i ]
  %i.ak = call i64 @rb_st_table_size(ptr noundef %.0.i35.us.i) #25
  %.not41.us.i = icmp eq i64 %i.ak, 0
  call void @rb_class_set_box_classext(i64 noundef %0, ptr noundef %1, ptr noundef %i.af) #25
  br i1 %.not41.us.i, label %bb.j, label %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.us.i

bb.j:                                             ; preds = %RCLASS_SET_BOX_CLASSEXT.exit.us.i
end_hunk_0
begin_hunk_1_@Init_Box:bb.a
  %i.aq = tail call i64 @rb_hash_new() #25        ; 2 uses
  store i64 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @root_box, i64 80), align 16, !tbaa !32
  %i.ar = tail call i64 @rb_obj_hide(i64 noundef %i.aq) #25 ; 0 uses
  %i.as = tail call i64 @rb_hash_new_with_size(i64 noundef 0) #25
  store i64 %i.as, ptr getelementptr inbounds nuw (i8, ptr @root_box, i64 104), align 8, !tbaa !33
  %i.at = tail call i64 @rb_hash_new_with_size(i64 noundef 0) #25
  store i64 %i.at, ptr getelementptr inbounds nuw (i8, ptr @root_box, i64 112), align 16, !tbaa !34
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @root_box, i64 120), align 8, !tbaa !36
  %i.au = getelementptr i8, ptr %i.ag, i64 568
  store ptr @root_box, ptr %i.au, align 8, !tbaa !110
  %i.av = load i8, ptr @ruby_box_enabled, align 1, !tbaa !11, !range !18, !noundef !19
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %bb.k

bb.h:                                             ; preds = %system_tmpdir.exit.tail
  %.pr.i.i = load i64, ptr @initialize_root_box.rbimpl_id, align 8, !tbaa !41 ; 2 uses
  %.not4.i.i1 = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i1, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.ax = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 13) #25 ; 3 uses
  store i64 %i.ax, ptr @initialize_root_box.rbimpl_id, align 8, !tbaa !41
  %.not.i.i2 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i2, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !45

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.h
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.h ], [ %i.ax, %.lr.ph.i.i ]
  %i.ay = load i64, ptr @rb_cBox, align 8, !tbaa !41
  %i.az = tail call i64 @rb_obj_alloc(i64 noundef %i.ay) #25 ; 5 uses
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = and i64 %i.az, 7
  %i.bc = icmp eq i64 %i.bb, 0
  %.not4.i.i.i = and i1 %i.ba, %i.bc
  %i.bd = inttoptr i64 %i.az to ptr               ; 4 uses
  br i1 %.not4.i.i.i, label %bb.i, label %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.i

bb.i:                                             ; preds = %rbimpl_intern_const.exit.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !48
  %i.bf = or i64 %i.be, 16384
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !48
  br label %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.i

RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.i:        ; preds = %bb.i, %rbimpl_intern_const.exit.i
  %i.bg = load i64, ptr @rb_cObject, align 8, !tbaa !41
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !111
  %i.bk = getelementptr i8, ptr %i.bd, i64 56
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !112
  %i.bl = getelementptr i8, ptr %i.bd, i64 149    ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = or i8 %i.bm, 4
  store i8 %i.bn, ptr %i.bl, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bo = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !109
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %rb_vm_lock_enter.exit.i.i, label %rb_vm_lock_enter.exit.split.us.i.i

rb_vm_lock_enter.exit.i.i:                        ; preds = %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.i
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #25
  %.pre.i.i = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !109
  %i.bp = icmp eq ptr %.pre.i.i, null
  br i1 %i.bp, label %bb.j, label %rb_vm_lock_enter.exit.split.us.i.i

rb_vm_lock_enter.exit.split.us.i.i:               ; preds = %rb_vm_lock_enter.exit.i.i, %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.i
  %box_id_counter.promoted.i.i = load i64, ptr @box_id_counter, align 8, !tbaa !41
  %i.bq = add i64 %box_id_counter.promoted.i.i, 1 ; 2 uses
  store i64 %i.bq, ptr @box_id_counter, align 8, !tbaa !41
  br label %box_generate_id.exit.i

bb.j:                                             ; preds = %rb_vm_lock_enter.exit.i.i
  %i.br = load i64, ptr @box_id_counter, align 8, !tbaa !41
  %i.bs = add i64 %i.br, 1                        ; 2 uses
  store i64 %i.bs, ptr @box_id_counter, align 8, !tbaa !41
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #25
  br label %box_generate_id.exit.i

box_generate_id.exit.i:                           ; preds = %bb.j, %rb_vm_lock_enter.exit.split.us.i.i
  %.us-phi.i.i = phi i64 [ %i.bq, %rb_vm_lock_enter.exit.split.us.i.i ], [ %i.bs, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i64 %.us-phi.i.i, ptr getelementptr inbounds nuw (i8, ptr @root_box, i64 8), align 8, !tbaa !67
  store i64 %i.az, ptr @root_box, align 16, !tbaa !20
  %i.bt = load i64, ptr @rb_cBoxEntry, align 8, !tbaa !41
  %i.bu = call i64 @rb_data_typed_object_wrap(i64 noundef %i.bt, ptr noundef nonnull @root_box, ptr noundef nonnull @rb_root_box_data_type) #25
  %i.bv = call i64 @rb_ivar_set(i64 noundef %i.az, i64 noundef %.lcssa.i.i, i64 noundef %i.bu) #25 ; 0 uses
  br label %initialize_root_box.exit

bb.k:                                             ; preds = %system_tmpdir.exit.tail
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @root_box, i64 8), align 8, !tbaa !67
  store i64 4, ptr @root_box, align 16, !tbaa !20
  br label %initialize_root_box.exit

initialize_root_box.exit:                         ; preds = %box_generate_id.exit.i, %bb.k
  %i.bw = load i64, ptr @rb_cBox, align 8, !tbaa !41
  %i.bx = call i64 @rb_define_module_under(i64 noundef %i.bw, ptr noundef nonnull @.str.12) #25 ; 2 uses
  store i64 %i.bx, ptr @rb_mBoxLoader, align 8, !tbaa !41
  call void @rb_define_private_method(i64 noundef %i.bx, ptr noundef nonnull @.str.13, ptr noundef nonnull @rb_box_loading_func, i32 noundef -1) #25
  %i.by = load i64, ptr @rb_mBoxLoader, align 8, !tbaa !41
  call void @rb_define_singleton_method(i64 noundef %i.by, ptr noundef nonnull @.str.13, ptr noundef nonnull @rb_box_loading_func, i32 noundef -1) #25
  %i.bz = load i64, ptr @rb_mBoxLoader, align 8, !tbaa !41
  call void @rb_define_private_method(i64 noundef %i.bz, ptr noundef nonnull @.str.14, ptr noundef nonnull @rb_box_loading_func, i32 noundef -1) #25
  %i.ca = load i64, ptr @rb_mBoxLoader, align 8, !tbaa !41
  call void @rb_define_singleton_method(i64 noundef %i.ca, ptr noundef nonnull @.str.14, ptr noundef nonnull @rb_box_loading_func, i32 noundef -1) #25
  %i.cb = load i64, ptr @rb_mBoxLoader, align 8, !tbaa !41
  call void @rb_define_private_method(i64 noundef %i.cb, ptr noundef nonnull @.str.15, ptr noundef nonnull @rb_box_loading_func, i32 noundef -1) #25
  %i.cc = load i64, ptr @rb_mBoxLoader, align 8, !tbaa !41
  call void @rb_define_singleton_method(i64 noundef %i.cc, ptr noundef nonnull @.str.15, ptr noundef nonnull @rb_box_loading_func, i32 noundef -1) #25
  %i.cd = load i8, ptr @ruby_box_enabled, align 1, !tbaa !11, !range !18, !noundef !19
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %initialize_root_box.exit
  %i.cf = load i64, ptr @rb_cObject, align 8, !tbaa !41
  %i.cg = load i64, ptr @rb_mBoxLoader, align 8, !tbaa !41
  call void @rb_include_module(i64 noundef %i.cf, i64 noundef %i.cg) #25
  %i.ch = load i64, ptr @rb_cBox, align 8, !tbaa !41
  call void @rb_define_singleton_method(i64 noundef %i.ch, ptr noundef nonnull @.str.16, ptr noundef nonnull @rb_box_s_root, i32 noundef 0) #25
  %i.ci = load i64, ptr @rb_cBox, align 8, !tbaa !41
  call void @rb_define_singleton_method(i64 noundef %i.ci, ptr noundef nonnull @.str.17, ptr noundef nonnull @rb_box_s_main, i32 noundef 0) #25
  %i.cj = load i64, ptr @rb_cBox, align 8, !tbaa !41
  call void @rb_define_method(i64 noundef %i.cj, ptr noundef nonnull @.str.18, ptr noundef nonnull @rb_box_root_p, i32 noundef 0) #25
  %i.ck = load i64, ptr @rb_cBox, align 8, !tbaa !41
  call void @rb_define_method(i64 noundef %i.ck, ptr noundef nonnull @.str.19, ptr noundef nonnull @rb_box_main_p, i32 noundef 0) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %initialize_root_box.exit
  %i.cl = load i64, ptr @rb_cBox, align 8, !tbaa !41
  call void @rb_define_singleton_method(i64 noundef %i.cl, ptr noundef nonnull @.str.20, ptr noundef nonnull @rb_box_s_getenabled, i32 noundef 0) #25
  %i.cm = load i64, ptr @rb_cBox, align 8, !tbaa !41
  call void @rb_define_singleton_method(i64 noundef %i.cm, ptr noundef nonnull @.str.21, ptr noundef nonnull @rb_box_s_current, i32 noundef 0) #25
  %i.cn = load i64, ptr @rb_cBox, align 8, !tbaa !41
  call void @rb_define_method(i64 noundef %i.cn, ptr noundef nonnull @.str.22, ptr noundef nonnull @rb_box_load_path, i32 noundef 0) #25
  %i.co = load i64, ptr @rb_cBox, align 8, !tbaa !41
  call void @rb_define_method(i64 noundef %i.co, ptr noundef nonnull @.str.15, ptr noundef nonnull @rb_box_load, i32 noundef -1) #25
  %i.cp = load i64, ptr @rb_cBox, align 8, !tbaa !41
  call void @rb_define_method(i64 noundef %i.cp, ptr noundef nonnull @.str.13, ptr noundef nonnull @rb_box_require, i32 noundef 1) #25
  %i.cq = load i64, ptr @rb_cBox, align 8, !tbaa !41
  call void @rb_define_method(i64 noundef %i.cq, ptr noundef nonnull @.str.14, ptr noundef nonnull @rb_box_require_relative, i32 noundef 1) #25
  %i.cr = load i64, ptr @rb_cBox, align 8, !tbaa !41
  call void @rb_define_method(i64 noundef %i.cr, ptr noundef nonnull @.str.23, ptr noundef nonnull @rb_box_eval, i32 noundef 1) #25
  %i.cs = load i64, ptr @rb_cBox, align 8, !tbaa !41
  call void @rb_define_method(i64 noundef %i.cs, ptr noundef nonnull @.str.24, ptr noundef nonnull @rb_box_inspect, i32 noundef 0) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

declare i64 @rb_define_module(ptr noundef) local_unnamed_addr #4

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @box_initialize(i64 noundef returned %0) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.pr.i = load i64, ptr @box_initialize.rbimpl_id, align 8, !tbaa !41 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 13) #25 ; 3 uses
  store i64 %i.b, ptr @box_initialize.rbimpl_id, align 8, !tbaa !41
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !45

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.b, %.lr.ph.i ]
  %i.c = load i8, ptr @ruby_box_enabled, align 1, !tbaa !11, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  %i.e = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !41
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.44) #28
  unreachable

bb.c:                                             ; preds = %rbimpl_intern_const.exit
  %i.f = load i64, ptr @rb_cBoxEntry, align 8, !tbaa !41
  %i.g = tail call i64 @rb_class_new_instance_pass_kw(i32 noundef 0, ptr noundef null, i64 noundef %i.f) #25 ; 5 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = and i64 %i.g, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !47

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.c
  %i.l = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %i.n = and i64 %i.m, 95
  %or.cond.not.i.i = icmp eq i64 %i.n, 76
  br i1 %or.cond.not.i.i, label %bb.d, label %.critedge.i.i, !prof !49

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.o = getelementptr i8, ptr %i.l, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37   ; 2 uses
  %i.q = and i64 %i.p, -2                         ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = trunc i64 %i.p to i1
  %i.t = getelementptr i8, ptr %i.l, i64 32       ; 2 uses
  br i1 %i.s, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.e, %bb.d
  %i.v = phi ptr [ %i.u, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  %i.w = icmp eq i64 %i.q, ptrtoint (ptr @rb_box_data_type to i64)
  br i1 %i.w, label %get_box_struct_internal.exit, label %.preheader.i.i, !prof !50

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.f
  %.016.i.i = phi ptr [ %i.y, %bb.f ], [ %i.r, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i
  %i.x = getelementptr i8, ptr %.016.i.i, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !51   ; 2 uses
  %i.z = icmp eq ptr %i.y, @rb_box_data_type
  br i1 %i.z, label %get_box_struct_internal.exit, label %.preheader.i.i, !llvm.loop !56

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.c
  %i.aa = tail call ptr @rb_check_typeddata(i64 noundef %i.g, ptr noundef nonnull @rb_box_data_type) #25
  br label %get_box_struct_internal.exit

get_box_struct_internal.exit:                     ; preds = %bb.f, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.aa, %.critedge.i.i ], [ %i.v, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.v, %bb.f ] ; 4 uses
  store i64 %0, ptr %.1.i.i, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ab = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !109
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %rb_vm_lock_enter.exit.i, label %rb_vm_lock_enter.exit.split.us.i

rb_vm_lock_enter.exit.i:                          ; preds = %get_box_struct_internal.exit
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #25
  %.pre.i = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !109
  %i.ac = icmp eq ptr %.pre.i, null
  br i1 %i.ac, label %bb.g, label %rb_vm_lock_enter.exit.split.us.i

rb_vm_lock_enter.exit.split.us.i:                 ; preds = %rb_vm_lock_enter.exit.i, %get_box_struct_internal.exit
  %box_id_counter.promoted.i = load i64, ptr @box_id_counter, align 8, !tbaa !41
  %i.ad = add i64 %box_id_counter.promoted.i, 1   ; 2 uses
  store i64 %i.ad, ptr @box_id_counter, align 8, !tbaa !41
  br label %box_generate_id.exit

bb.g:                                             ; preds = %rb_vm_lock_enter.exit.i
  %i.ae = load i64, ptr @box_id_counter, align 8, !tbaa !41
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.af, ptr @box_id_counter, align 8, !tbaa !41
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #25
  br label %box_generate_id.exit

box_generate_id.exit:                             ; preds = %rb_vm_lock_enter.exit.split.us.i, %bb.g
  %.us-phi.i = phi i64 [ %i.ad, %rb_vm_lock_enter.exit.split.us.i ], [ %i.af, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ag = getelementptr i8, ptr %.1.i.i, i64 8
  store i64 %.us-phi.i, ptr %i.ag, align 8, !tbaa !67
  %i.ah = getelementptr i8, ptr %.1.i.i, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !25
  call void @rb_define_singleton_method(i64 noundef %i.ai, ptr noundef nonnull @.str.45, ptr noundef nonnull @rb_resolve_feature_path, i32 noundef 1) #25
  %i.aj = icmp ne i64 %0, 0
  %i.ak = and i64 %0, 7
  %i.al = icmp eq i64 %i.ak, 0
  %.not4.i.i = and i1 %i.aj, %i.al
  %i.am = inttoptr i64 %0 to ptr                  ; 4 uses
  br i1 %.not4.i.i, label %bb.h, label %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit

bb.h:                                             ; preds = %box_generate_id.exit
  %i.an = load i64, ptr %i.am, align 8, !tbaa !48
  %i.ao = or i64 %i.an, 16384
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !48
  br label %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit

RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit:          ; preds = %box_generate_id.exit, %bb.h
  %i.ap = load i64, ptr @rb_cObject, align 8, !tbaa !41
  %i.aq = call fastcc ptr @RCLASS_EXT_WRITABLE_IN_BOX(i64 noundef %i.ap, ptr noundef nonnull %.1.i.i)
  %i.ar = getelementptr i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !112
  %i.at = getelementptr i8, ptr %i.am, i64 56
  store ptr %i.as, ptr %i.at, align 8, !tbaa !112
  %i.au = getelementptr i8, ptr %i.am, i64 149    ; 2 uses
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = or i8 %i.av, 4
  store i8 %i.aw, ptr %i.au, align 1
  %i.ax = call i64 @rb_ivar_set(i64 noundef %0, i64 noundef %.lcssa.i, i64 noundef %i.g) #25 ; 0 uses
  ret i64 %0
}

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_define_module_under(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @rb_include_module(i64 noundef, i64 noundef) local_unnamed_addr #4

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @rb_box_s_root(i64 %0) #2 {
bb.a:
  %i.a = load i64, ptr @root_box, align 16, !tbaa !20
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @rb_box_s_main(i64 %0) #15 {
bb.a:
  %i.a = load ptr, ptr @main_box, align 8, !tbaa !13
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_box_root_p(i64 noundef %0) #3 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %rb_get_box_t.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pr.i.i = load i64, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 13) #25 ; 3 uses
  store i64 %i.b, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !45

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.b
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.b ], [ %i.b, %.lr.ph.i.i ]
  %i.c = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %.lcssa.i.i) #25 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = and i64 %i.c, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !47

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %rbimpl_intern_const.exit.i
  %i.h = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %i.j = and i64 %i.i, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.j, 76
  br i1 %or.cond.not.i.i.i, label %bb.c, label %.critedge.i.i.i, !prof !49

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.m = and i64 %i.l, -2                         ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = trunc i64 %i.l to i1
  %i.p = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  br i1 %i.o, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %i.q, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %i.s = icmp eq i64 %i.m, ptrtoint (ptr @rb_box_data_type to i64)
  br i1 %i.s, label %rb_get_box_t.exit, label %.preheader.i.i.i, !prof !50

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.e
  %.016.i.i.i = phi ptr [ %i.u, %bb.e ], [ %i.n, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.t = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51   ; 2 uses
  %i.v = icmp eq ptr %i.u, @rb_box_data_type
  br i1 %i.v, label %rb_get_box_t.exit, label %.preheader.i.i.i, !llvm.loop !56

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %rbimpl_intern_const.exit.i
  %i.w = tail call ptr @rb_check_typeddata(i64 noundef %i.c, ptr noundef nonnull @rb_box_data_type) #25
  br label %rb_get_box_t.exit

rb_get_box_t.exit:                                ; preds = %bb.e, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.0.i = phi ptr [ %i.r, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.w, %.critedge.i.i.i ], [ %i.r, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.f, label %rb_get_box_t.exit.thread

rb_get_box_t.exit.thread:                         ; preds = %bb.a, %rb_get_box_t.exit
  %.0.i4 = phi ptr [ %.0.i, %rb_get_box_t.exit ], [ @root_box, %bb.a ]
  %i.x = getelementptr i8, ptr %.0.i4, i64 128
  %i.y = load i8, ptr %i.x, align 8, !tbaa !43, !range !18, !noundef !19
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = select i1 %i.z, i64 0, i64 20
  br label %bb.f

bb.f:                                             ; preds = %rb_get_box_t.exit.thread, %rb_get_box_t.exit
  %i.ab = phi i64 [ 0, %rb_get_box_t.exit ], [ %i.aa, %rb_get_box_t.exit.thread ]
  ret i64 %i.ab
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_box_main_p(i64 noundef %0) #3 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %rb_get_box_t.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pr.i.i = load i64, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 13) #25 ; 3 uses
  store i64 %i.b, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !45

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.b
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.b ], [ %i.b, %.lr.ph.i.i ]
  %i.c = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %.lcssa.i.i) #25 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = and i64 %i.c, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !47

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %rbimpl_intern_const.exit.i
  %i.h = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %i.j = and i64 %i.i, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.j, 76
  br i1 %or.cond.not.i.i.i, label %bb.c, label %.critedge.i.i.i, !prof !49

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.m = and i64 %i.l, -2                         ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = trunc i64 %i.l to i1
  %i.p = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  br i1 %i.o, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %i.q, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %i.s = icmp eq i64 %i.m, ptrtoint (ptr @rb_box_data_type to i64)
  br i1 %i.s, label %rb_get_box_t.exit, label %.preheader.i.i.i, !prof !50

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.e
  %.016.i.i.i = phi ptr [ %i.u, %bb.e ], [ %i.n, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.t = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51   ; 2 uses
  %i.v = icmp eq ptr %i.u, @rb_box_data_type
  br i1 %i.v, label %rb_get_box_t.exit, label %.preheader.i.i.i, !llvm.loop !56

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %rbimpl_intern_const.exit.i
  %i.w = tail call ptr @rb_check_typeddata(i64 noundef %i.c, ptr noundef nonnull @rb_box_data_type) #25
  br label %rb_get_box_t.exit

rb_get_box_t.exit:                                ; preds = %bb.e, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.0.i = phi ptr [ %i.r, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.w, %.critedge.i.i.i ], [ %i.r, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.g, label %rb_get_box_t.exit.thread

rb_get_box_t.exit.thread:                         ; preds = %bb.a, %rb_get_box_t.exit
  %.0.i5 = phi ptr [ %.0.i, %rb_get_box_t.exit ], [ @root_box, %bb.a ] ; 2 uses
  %i.x = getelementptr i8, ptr %.0.i5, i64 128
  %i.y = load i8, ptr %i.x, align 8, !tbaa !43, !range !18, !noundef !19
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_get_box_t.exit.thread
  %i.aa = getelementptr i8, ptr %.0.i5, i64 129
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !44, !range !18, !noundef !19
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = select i1 %i.ac, i64 0, i64 20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %rb_get_box_t.exit.thread, %rb_get_box_t.exit
  %i.ae = phi i64 [ 0, %rb_get_box_t.exit.thread ], [ 0, %rb_get_box_t.exit ], [ %i.ad, %bb.f ]
  ret i64 %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @rb_box_s_getenabled(i64 %0) #2 {
bb.a:
  %i.a = load i8, ptr @ruby_box_enabled, align 1, !tbaa !11, !range !18, !noundef !19
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = select i1 %i.b, i64 20, i64 0
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_box_s_current(i64 %0) #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i8, ptr @ruby_box_enabled, align 1, !tbaa !11, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !16
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = tail call ptr @rb_vm_current_box(ptr noundef %.0..0..0..0..0..0..i) #25
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.g, %bb.b ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_box_load_path(i64 noundef %0) #3 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %rb_get_box_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pr.i.i = load i64, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 13) #25 ; 3 uses
  store i64 %i.b, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !45

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.b
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.b ], [ %i.b, %.lr.ph.i.i ]
  %i.c = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %.lcssa.i.i) #25 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = and i64 %i.c, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !47

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %rbimpl_intern_const.exit.i
  %i.h = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %i.j = and i64 %i.i, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.j, 76
  br i1 %or.cond.not.i.i.i, label %bb.c, label %.critedge.i.i.i, !prof !49

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.m = and i64 %i.l, -2                         ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = trunc i64 %i.l to i1
  %i.p = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  br i1 %i.o, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %i.q, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %i.s = icmp eq i64 %i.m, ptrtoint (ptr @rb_box_data_type to i64)
  br i1 %i.s, label %rb_get_box_t.exit, label %.preheader.i.i.i, !prof !50

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.e
  %.016.i.i.i = phi ptr [ %i.u, %bb.e ], [ %i.n, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.t = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51   ; 2 uses
  %i.v = icmp eq ptr %i.u, @rb_box_data_type
  br i1 %i.v, label %rb_get_box_t.exit, label %.preheader.i.i.i, !llvm.loop !56

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %rbimpl_intern_const.exit.i
  %i.w = tail call ptr @rb_check_typeddata(i64 noundef %i.c, ptr noundef nonnull @rb_box_data_type) #25
  br label %rb_get_box_t.exit

rb_get_box_t.exit:                                ; preds = %bb.e, %bb.a, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.0.i = phi ptr [ @root_box, %bb.a ], [ %i.w, %.critedge.i.i.i ], [ %i.r, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.r, %bb.e ]
  %i.x = getelementptr i8, ptr %.0.i, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !25
  ret i64 %i.y
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_box_load(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !41
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41
  %i.f = icmp eq i32 %0, 2
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.g = phi i64 [ %i.e, %bb.b ], [ 4, %.preheader ]
  %.185.i.lcssa = phi i1 [ %i.f, %bb.b ], [ true, %.preheader ]
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #28
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  store volatile ptr %i.i, ptr %i.a, align 8, !tbaa !16
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @rb_vm_frame_flag_set_box_require(ptr noundef %.0..0..0..0..0..0..i) #25
  %i.j = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.c, i64 noundef %i.g) #25
  %i.k = tail call i64 @rb_load_entrypoint(i64 noundef %i.j) #25
  ret i64 %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_box_require(i64 %0, i64 noundef %1) #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !16
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @rb_vm_frame_flag_set_box_require(ptr noundef %.0..0..0..0..0..0..i) #25
  %i.d = tail call i64 @rb_require_string(i64 noundef %1) #25
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_box_require_relative(i64 %0, i64 noundef %1) #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !16
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @rb_vm_frame_flag_set_box_require(ptr noundef %.0..0..0..0..0..0..i) #25
  %i.d = tail call i64 @rb_require_relative_entrypoint(i64 noundef %1) #25
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_box_eval(i64 noundef %0, i64 noundef %1) #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !41
  %i.b = call i64 @rb_string_value(ptr noundef nonnull %i.a) #25 ; 0 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !41
  %i.d = call i64 @rb_str_new_static(ptr noundef nonnull @.str.23, i64 noundef 4) #25
  %i.e = call ptr @rb_iseq_compile_iseq(i64 noundef %i.c, i64 noundef %i.d) #25
  %i.f = icmp eq i64 %0, 4
  br i1 %i.f, label %rb_get_box_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pr.i.i = load i64, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.g = call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 13) #25 ; 3 uses
  store i64 %i.g, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !45

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.b
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.b ], [ %i.g, %.lr.ph.i.i ]
  %i.h = call i64 @rb_attr_get(i64 noundef %0, i64 noundef %.lcssa.i.i) #25 ; 4 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = and i64 %i.h, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !47

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %rbimpl_intern_const.exit.i
  %i.m = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48
  %i.o = and i64 %i.n, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.o, 76
  br i1 %or.cond.not.i.i.i, label %bb.c, label %.critedge.i.i.i, !prof !49

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.p = getelementptr i8, ptr %i.m, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !37   ; 2 uses
  %i.r = and i64 %i.q, -2                         ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = trunc i64 %i.q to i1
  %i.u = getelementptr i8, ptr %i.m, i64 32       ; 2 uses
  br i1 %i.t, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.d, %bb.c
  %i.w = phi ptr [ %i.v, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %i.x = icmp eq i64 %i.r, ptrtoint (ptr @rb_box_data_type to i64)
  br i1 %i.x, label %rb_get_box_t.exit, label %.preheader.i.i.i, !prof !50

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.e
  %.016.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.s, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.y = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51   ; 2 uses
  %i.aa = icmp eq ptr %i.z, @rb_box_data_type
  br i1 %i.aa, label %rb_get_box_t.exit, label %.preheader.i.i.i, !llvm.loop !56

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %rbimpl_intern_const.exit.i
  %i.ab = call ptr @rb_check_typeddata(i64 noundef %i.h, ptr noundef nonnull @rb_box_data_type) #25
  br label %rb_get_box_t.exit

rb_get_box_t.exit:                                ; preds = %bb.e, %bb.a, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.0.i = phi ptr [ @root_box, %bb.a ], [ %i.ab, %.critedge.i.i.i ], [ %i.w, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.w, %bb.e ]
  %i.ac = call i64 @rb_iseq_eval(ptr noundef %i.e, ptr noundef %.0.i) #25
  ret i64 %i.ac
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_box_inspect(i64 noundef %0) #3 {
bb.a:
  switch i64 %0, label %bb.c [
    i64 0, label %bb.b
    i64 4, label %rb_get_box_t.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.49, i64 noundef 17) #25
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %.pr.i.i = load i64, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 13) #25 ; 3 uses
  store i64 %i.b, ptr @rb_get_box_t.rbimpl_id, align 8, !tbaa !41
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !45

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.c
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.c ], [ %i.b, %.lr.ph.i.i ]
  %i.c = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %.lcssa.i.i) #25 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = and i64 %i.c, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !47

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %rbimpl_intern_const.exit.i
  %i.h = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %i.j = and i64 %i.i, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.j, 76
  br i1 %or.cond.not.i.i.i, label %bb.d, label %.critedge.i.i.i, !prof !49

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.m = and i64 %i.l, -2                         ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = trunc i64 %i.l to i1
  %i.p = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  br i1 %i.o, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %i.q, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %i.s = icmp eq i64 %i.m, ptrtoint (ptr @rb_box_data_type to i64)
  br i1 %i.s, label %rb_get_box_t.exit, label %.preheader.i.i.i, !prof !50

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.f
  %.016.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.n, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.t = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51   ; 2 uses
  %i.v = icmp eq ptr %i.u, @rb_box_data_type
  br i1 %i.v, label %rb_get_box_t.exit, label %.preheader.i.i.i, !llvm.loop !56

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %rbimpl_intern_const.exit.i
  %i.w = tail call ptr @rb_check_typeddata(i64 noundef %i.c, ptr noundef nonnull @rb_box_data_type) #25
  br label %rb_get_box_t.exit

rb_get_box_t.exit:                                ; preds = %bb.f, %bb.a, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.0.i = phi ptr [ @root_box, %bb.a ], [ %i.w, %.critedge.i.i.i ], [ %i.r, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.r, %bb.f ] ; 4 uses
  %i.x = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.50, i64 noundef 12) #25 ; 7 uses
  %i.y = getelementptr i8, ptr %.0.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !67   ; 3 uses
  %i.aa = add i64 %i.z, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.aa, -1
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rb_get_box_t.exit
  %i.ab = shl nsw i64 %i.z, 1
  %i.ac = or disjoint i64 %i.ab, 1
  br label %rb_long2num_inline.exit

bb.h:                                             ; preds = %rb_get_box_t.exit
  %i.ad = tail call i64 @rb_int2big(i64 noundef %i.z) #25
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.g, %bb.h
  %.0.i25 = phi i64 [ %i.ac, %bb.g ], [ %i.ad, %bb.h ]
  %.pr.i = load i64, ptr @rb_box_inspect.rbimpl_id, align 8, !tbaa !41 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %rb_long2num_inline.exit, %.lr.ph.i
  %i.ae = tail call i64 @rb_intern2(ptr noundef nonnull @.str.27, i64 noundef 4) #25 ; 3 uses
  store i64 %i.ae, ptr @rb_box_inspect.rbimpl_id, align 8, !tbaa !41
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %.lr.ph.i, %rb_long2num_inline.exit
  %.lcssa.i = phi i64 [ %.pr.i, %rb_long2num_inline.exit ], [ %i.ae, %.lr.ph.i ]
  %i.af = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.0.i25, i64 noundef %.lcssa.i, i32 noundef 0) #25
  %i.ag = tail call i64 @rb_str_concat(i64 noundef %i.x, i64 noundef %i.af) #25 ; 0 uses
  %i.ah = getelementptr i8, ptr %.0.i, i64 128    ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !43, !range !18, !noundef !19
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.ak = tail call i64 @rb_str_cat(i64 noundef %i.x, ptr noundef nonnull @.str.51, i64 noundef 5) #25 ; 0 uses
  %.pre = load i8, ptr %i.ah, align 8, !tbaa !43, !range !18
  %i.al = trunc nuw i8 %.pre to i1
  br i1 %i.al, label %.critedge, label %.critedge23

.critedge:                                        ; preds = %.loopexit, %bb.i
  %i.am = tail call i64 @rb_str_cat(i64 noundef %i.x, ptr noundef nonnull @.str.52, i64 noundef 5) #25 ; 0 uses
  %.pre28 = load i8, ptr %i.ah, align 8, !tbaa !43, !range !18
  %i.an = trunc nuw i8 %.pre28 to i1
  br i1 %i.an, label %bb.j, label %.critedge23

bb.j:                                             ; preds = %.critedge
  %i.ao = getelementptr i8, ptr %.0.i, i64 129
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !44, !range !18, !noundef !19
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %.critedge23.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = tail call i64 @rb_str_cat(i64 noundef %i.x, ptr noundef nonnull @.str.53, i64 noundef 5) #25 ; 0 uses
  br label %.critedge24

.critedge23:                                      ; preds = %bb.i, %.critedge
  %.phi.trans.insert = getelementptr i8, ptr %.0.i, i64 129
  %.pre29 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !44, !range !18
  %i.as = trunc nuw i8 %.pre29 to i1
  br i1 %i.as, label %.critedge23.thread, label %.critedge24

.critedge23.thread:                               ; preds = %bb.j, %.critedge23
  %i.at = tail call i64 @rb_str_cat(i64 noundef %i.x, ptr noundef nonnull @.str.54, i64 noundef 9) #25 ; 0 uses
  br label %.critedge24

.critedge24:                                      ; preds = %.critedge23, %.critedge23.thread, %bb.k
  %i.au = tail call i64 @rb_str_cat(i64 noundef %i.x, ptr noundef nonnull @.str.55, i64 noundef 1) #25 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge24, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ %i.x, %.critedge24 ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #16

; Function Attrs: nounwind sspstrong uwtable
define internal void @box_entry_free(ptr noundef %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.b, ptr noundef nonnull @free_classext_for_box, i64 noundef %i.c) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !33
  tail call void @rb_hash_foreach(i64 noundef %i.f, ptr noundef nonnull @cleanup_local_extension_i, i64 noundef 0) #25
  %i.g = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.h, ptr noundef nonnull @free_loading_table_entry, i64 noundef 0) #25 ; 0 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !35
  tail call void @rb_st_free_table(ptr noundef %i.j) #25
  store ptr null, ptr %i.g, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %.not9.i = icmp eq ptr %i.l, null
  br i1 %.not9.i, label %box_root_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.l, ptr noundef nonnull @free_loaded_feature_index_i, i64 noundef 0) #25 ; 0 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !42
  tail call void @rb_st_free_table(ptr noundef %i.n) #25
  br label %box_root_free.exit

box_root_free.exit:                               ; preds = %bb.e, %bb.f
  tail call void @ruby_xfree(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
define internal i64 @box_entry_memsize(ptr nofree noundef readonly captures(none) %0) #17 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_st_memsize(ptr noundef nonnull %i.b) #26
  %i.d = add i64 %i.c, 136
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.d, %bb.b ], [ 136, %bb.a ]   ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @rb_st_memsize(ptr noundef nonnull %i.f) #26
  %i.h = add i64 %i.g, %.0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.h, %bb.d ], [ %.0, %bb.c ]
  ret i64 %.1
}

declare i32 @rb_st_foreach(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @free_classext_for_box(i64 %0, i64 noundef %1, i64 noundef %2) #3 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.b = icmp eq i64 %1, 0
  %i.c = and i64 %1, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  %.pre = inttoptr i64 %1 to ptr                  ; 2 uses
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit16

rbimpl_RB_TYPE_P_fastpath.exit16:                 ; preds = %bb.a
  %i.f = load i64, ptr %.pre, align 8, !tbaa !48
  %i.g = and i64 %i.f, 31
  switch i64 %i.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread [
    i64 2, label %bb.b
    i64 3, label %bb.b
    i64 28, label %bb.c
  ]

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit16, %rbimpl_RB_TYPE_P_fastpath.exit16
  %i.h = tail call ptr @rb_class_unlink_classext(i64 noundef %1, ptr noundef %i.a) #25
  tail call void @rb_class_classext_free(i64 noundef %1, ptr noundef %i.h, i1 noundef zeroext false) #25
  br label %bb.d

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit16
  %i.i = tail call ptr @rb_class_unlink_classext(i64 noundef %1, ptr noundef %i.a) #25
  tail call void @rb_iclass_classext_free(i64 noundef %1, ptr noundef %i.i, i1 noundef zeroext false) #25
  br label %bb.d

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit16, %bb.a
  %i.j = load i64, ptr %.pre, align 8, !tbaa !48
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 31
  %i.m = tail call ptr @rb_type_str(i32 noundef %i.l) #25
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.26, ptr noundef %i.m) #27
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @box_root_free(ptr nofree noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.b, ptr noundef nonnull @free_loading_table_entry, i64 noundef 0) #25 ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !35
  tail call void @rb_st_free_table(ptr noundef %i.d) #25
  store ptr null, ptr %i.a, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.f, ptr noundef nonnull @free_loaded_feature_index_i, i64 noundef 0) #25 ; 0 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !42
  tail call void @rb_st_free_table(ptr noundef %i.h) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #4

declare ptr @rb_class_unlink_classext(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @rb_class_classext_free(i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @rb_iclass_classext_free(i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare ptr @rb_type_str(i32 noundef) local_unnamed_addr #4

declare void @rb_hash_foreach(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @cleanup_local_extension_i(i64 %0, i64 %1, i64 %2) #1 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @free_loading_table_entry(i64 noundef %0, i64 %1, i64 %2) #3 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  tail call void @ruby_xfree(ptr noundef %i.a) #25
  ret i32 2
}

declare void @rb_st_free_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @free_loaded_feature_index_i(i64 %0, i64 noundef %1, i64 %2) #3 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = inttoptr i64 %1 to ptr
  tail call void @ruby_xfree(ptr noundef %3) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_st_memsize(ptr noundef) local_unnamed_addr #18

declare i64 @rb_obj_alloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @box_main_to_s(i64 %0) #3 {
bb.a:
  %i.a = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.17, i64 noundef 4) #25
  ret i64 %i.a
}

declare void @rb_define_alias(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_singleton_class(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_dup(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_new() local_unnamed_addr #4

declare ptr @rb_st_init_numtable() local_unnamed_addr #4

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_new_with_size(i64 noundef) local_unnamed_addr #4

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #19

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #21

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal void @box_ext_cleanup_mark(ptr noundef %0) #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  tail call void @rb_gc_mark(i64 noundef %i.a) #25
  ret void
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

declare i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #21

declare i64 @copy_file_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #22

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #21

declare ptr @rb_errno_ptr() local_unnamed_addr #4

declare ptr @rb_class_duplicate_classext(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @rb_vm_lock_enter_body(ptr noundef) local_unnamed_addr #4

declare ptr @rb_st_init_numtable_with_size(i64 noundef) local_unnamed_addr #4

declare i64 @rb_st_table_size(ptr noundef) local_unnamed_addr #4

declare void @rb_class_set_box_classext(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @rb_vm_lock_leave_body(ptr noundef) local_unnamed_addr #4

declare noalias nonnull ptr @ruby_strdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #19

declare i64 @rb_class_new_instance_pass_kw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_resolve_feature_path(i64 noundef, i64 noundef) #4

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_hidden_new(i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_new() local_unnamed_addr #4

declare i64 @rb_obj_hide(i64 noundef) local_unnamed_addr #4

declare extern_weak void @rb_define_private_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_box_loading_func(i32 noundef %0, ptr noundef %1, i64 %2) #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !16
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @rb_vm_frame_flag_set_box_require(ptr noundef %.0..0..0..0..0..0..i) #25
  %i.d = tail call i64 @rb_call_super(i32 noundef %0, ptr noundef %1) #25
  ret i64 %i.d
}

declare void @rb_vm_frame_flag_set_box_require(ptr noundef) local_unnamed_addr #4

declare i64 @rb_call_super(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_ary_new_from_args(i64 noundef, ...) local_unnamed_addr #4

declare i64 @rb_load_entrypoint(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare i64 @rb_require_string(i64 noundef) local_unnamed_addr #4

declare i64 @rb_require_relative_entrypoint(i64 noundef) local_unnamed_addr #4

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #4

declare ptr @rb_iseq_compile_iseq(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_iseq_eval(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_str_concat(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #4

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind sspstrong memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
end_hunk_1
