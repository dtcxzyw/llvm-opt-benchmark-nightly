Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/class?download=true
inline.NumInlined: 561
inline.NumDeleted: 126
begin_hunk_0_@rb_class_duplicate_classext:bb.a
  %.not.i45.i = icmp eq ptr %i.el, null
  br i1 %.not.i45.i, label %RCLASS_CLASSEXT_TBL.exit.thread.i.i, label %bb.ab

RCLASS_CLASSEXT_TBL.exit.thread.i.i:              ; preds = %RCLASS_CLASSEXT_TBL.exit.i44.i, %RCLASSEXT_SET_INCLUDER.exit.i
  %i.em = call ptr @rb_st_init_numtable_with_size(i64 noundef 1) #18 ; 2 uses
  %i.en = getelementptr i8, ptr %i.cc, i64 160
  store ptr %i.em, ptr %i.en, align 8, !tbaa !33
  br label %bb.ab

bb.ab:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.thread.i.i, %RCLASS_CLASSEXT_TBL.exit.i44.i
  %.0.i46.i = phi ptr [ %i.el, %RCLASS_CLASSEXT_TBL.exit.i44.i ], [ %i.em, %RCLASS_CLASSEXT_TBL.exit.thread.i.i ]
  %i.eo = call i64 @rb_st_table_size(ptr noundef %.0.i46.i) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i64 %i.ca, ptr %3, align 8, !tbaa !56
  store ptr %i.cw, ptr %i.bx, align 8, !tbaa !57
  %i.ep = load i64, ptr %i.cc, align 8, !tbaa !22
  %i.eq = and i64 %i.ep, 65536
  %.not.i.i.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i.i.i, label %RCLASS_SET_BOX_CLASSEXT.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.er = getelementptr i8, ptr %i.cc, i64 160
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !33
  br label %RCLASS_SET_BOX_CLASSEXT.exit.i

RCLASS_SET_BOX_CLASSEXT.exit.i:                   ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i = phi ptr [ %i.es, %bb.ac ], [ null, %bb.ab ]
  %i.et = load i64, ptr %2, align 8, !tbaa !18
  %i.eu = call i32 @rb_st_update(ptr noundef %.0.i.i.i.i, i64 noundef %i.et, ptr noundef nonnull @set_box_classext_update, i64 noundef %i.by) #18 ; 0 uses
  %i.ev = load ptr, ptr %i.bz, align 8, !tbaa !20
  %i.ew = call i64 @rb_obj_id(i64 noundef range(i64 1, 0) %i.ca) #18
  %i.ex = call i32 @rb_st_insert(ptr noundef %i.ev, i64 noundef %i.ew, i64 noundef range(i64 1, 0) %i.ca) #18 ; 0 uses
  call void @rb_gc_writebarrier_remember(i64 noundef range(i64 1, 0) %i.ca) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %or.cond50.i = icmp eq i64 %i.eo, 0
  br i1 %or.cond50.i, label %bb.ad, label %class_duplicate_iclass_classext.exit

bb.ad:                                            ; preds = %RCLASS_SET_BOX_CLASSEXT.exit.i
  %i.ey = load i64, ptr %i.cc, align 8, !tbaa !22
  %i.ez = and i64 %i.ey, -16385
  store i64 %i.ez, ptr %i.cc, align 8, !tbaa !22
  br label %class_duplicate_iclass_classext.exit

class_duplicate_iclass_classext.exit:             ; preds = %bb.ad, %RCLASS_SET_BOX_CLASSEXT.exit.i, %bb.q, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.p
  %.0.in = getelementptr i8, ptr %.074, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !127 ; 2 uses
  %.not53 = icmp eq ptr %.0, null
  br i1 %.not53, label %.loopexit, label %bb.p, !llvm.loop !124

.loopexit:                                        ; preds = %class_duplicate_iclass_classext.exit, %bb.o, %RCLASSEXT_SET_ORIGIN.exit
  ret ptr %i.b
}

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_imemo_fields_clone(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @duplicate_classext_subclasses(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = tail call noalias nonnull dereferenceable(16) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 16) #20 ; 3 uses
  %i.g = load i64, ptr %i.c, align 8, !tbaa !50
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.c, align 8, !tbaa !50
  store ptr %i.c, ptr %i.f, align 8, !tbaa !41
  %i.i = tail call noalias nonnull dereferenceable(24) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 24) #20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !46
  %i.k = getelementptr i8, ptr %1, i64 72
  store ptr %i.f, ptr %i.k, align 8, !tbaa !38
  %i.l = getelementptr i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.0354649 = load ptr, ptr %i.n, align 8, !tbaa !48 ; 2 uses
  %.not404750 = icmp eq ptr %.0354649, null
  br i1 %.not404750, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.outer
  %.0354653 = phi ptr [ %.03546, %.outer ], [ %.0354649, %bb.b ]
  %.0.ph52 = phi ptr [ %.1, %.outer ], [ null, %bb.b ] ; 2 uses
  %.036.ph51 = phi ptr [ %i.r, %.outer ], [ %i.i, %bb.b ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.03548 = phi ptr [ %.0354653, %.lr.ph ], [ %.035, %bb.d ] ; 4 uses
  %i.o = load i64, ptr %.03548, align 8, !tbaa !63
  %i.p = tail call i32 @rb_objspace_garbage_object_p(i64 noundef %i.o) #18
  %.not43 = icmp eq i32 %i.p, 0
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %.03548, i64 8
  %.035 = load ptr, ptr %i.q, align 8, !tbaa !48  ; 2 uses
  %.not40 = icmp eq ptr %.035, null
  br i1 %.not40, label %.loopexit, label %bb.c, !llvm.loop !129

bb.e:                                             ; preds = %bb.c
  %i.r = tail call noalias nonnull dereferenceable(24) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 24) #20 ; 6 uses
  %i.s = load i64, ptr %.03548, align 8, !tbaa !63
  store i64 %i.s, ptr %i.r, align 8, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.036.ph51, ptr %i.t, align 8, !tbaa !66
  %i.u = getelementptr i8, ptr %.036.ph51, i64 8
  store ptr %i.r, ptr %i.u, align 8, !tbaa !48
  %.not44 = icmp eq ptr %.0.ph52, null
  br i1 %.not44, label %bb.f, label %.outer

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %box_subclasses_tbl_key.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !45
  br label %box_subclasses_tbl_key.exit

box_subclasses_tbl_key.exit:                      ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ %i.x, %bb.g ], [ 0, %bb.f ]
  %i.y = ptrtoint ptr %i.r to i64
  %i.z = tail call i32 @rb_st_insert(ptr noundef %i.e, i64 noundef %.0.i, i64 noundef %i.y) #18 ; 0 uses
  br label %.outer

.outer:                                           ; preds = %box_subclasses_tbl_key.exit, %bb.e
  %.1 = phi ptr [ %.0.ph52, %bb.e ], [ %i.r, %box_subclasses_tbl_key.exit ]
  %i.aa = getelementptr i8, ptr %.03548, i64 8
  %.03546 = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %.not4047 = icmp eq ptr %.03546, null
  br i1 %.not4047, label %.loopexit, label %.lr.ph, !llvm.loop !129

.loopexit:                                        ; preds = %.outer, %bb.d, %bb.b, %bb.a
  %i.ab = getelementptr i8, ptr %0, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !51 ; 4 uses
  %.not41 = icmp eq ptr %i.ac, null
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !50
  %i.af = getelementptr i8, ptr %1, i64 80
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !51
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.ag = getelementptr i8, ptr %0, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52 ; 4 uses
  %.not42 = icmp eq ptr %i.ah, null
  br i1 %.not42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !50
  %i.ak = getelementptr i8, ptr %1, i64 88
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !52
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_class_ensure_writable(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not5.i.i.i = and i1 %i.a, %i.c
  br i1 %.not5.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, !prof !67

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i:          ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  %i.f = and i64 %i.e, 16384
  %.not10.i = icmp eq i64 %i.f, 0
  br i1 %.not10.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, label %RCLASS_EXT_WRITABLE.exit, !prof !68

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, %bb.a
  %i.g = tail call ptr @rb_current_box() #18      ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %RCLASS_EXT_WRITABLE.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.h = getelementptr i8, ptr %i.g, i64 128
  %i.i = load i8, ptr %i.h, align 8, !tbaa !69, !range !70, !noundef !71
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %RCLASS_EXT_WRITABLE.exit.sink.split, label %RCLASS_EXT_WRITABLE.exit

RCLASS_EXT_WRITABLE.exit.sink.split:              ; preds = %bb.b, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.k = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %i.g) ; 0 uses
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_EXT_WRITABLE.exit:                         ; preds = %RCLASS_EXT_WRITABLE.exit.sink.split, %bb.b, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_class_classext_foreach(i64 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.class_classext_foreach_arg, align 8 ; 6 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22
  %i.c = and i64 %i.b, 65536
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %RCLASS_CLASSEXT_TBL.exit.thread, label %RCLASS_CLASSEXT_TBL.exit

RCLASS_CLASSEXT_TBL.exit.thread:                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  br label %bb.c

RCLASS_CLASSEXT_TBL.exit:                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit
  store ptr %1, ptr %3, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !74
  %i.g = ptrtoint ptr %3 to i64
  %i.h = call i32 @rb_st_foreach(ptr noundef nonnull %i.e, ptr noundef nonnull @class_classext_foreach_i, i64 noundef %i.g) #18 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.thread, %bb.b, %RCLASS_CLASSEXT_TBL.exit
  %i.i = getelementptr i8, ptr %i.a, i64 24
  call void %1(ptr noundef %i.i, i1 noundef zeroext true, i64 noundef 0, ptr noundef %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

declare i32 @rb_st_foreach(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @class_classext_foreach_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = inttoptr i64 %1 to ptr
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  tail call void %i.b(ptr noundef %i.c, i1 noundef zeroext false, i64 noundef %0, ptr noundef %i.e) #18
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_class_super_of(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22
  %i.d = and i64 %i.c, 65536
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 160      ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.i = tail call ptr @rb_current_box() #18      ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !69, !range !70, !noundef !71
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.n = load i64, ptr %i.b, align 8, !tbaa !22
  %i.o = and i64 %i.n, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.q = load i64, ptr %i.i, align 8, !tbaa !18
  %i.r = call i32 @rb_st_lookup(ptr noundef nonnull %i.p, i64 noundef %i.q, ptr noundef nonnull %i.a) #18
  %.not5.i.i13.i = icmp eq i32 %i.r, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19
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
  %i.w = getelementptr i8, ptr %.0.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !58
  ret i64 %i.x
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @RCLASS_EXT_READABLE(i64 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22
  %i.d = and i64 %i.c, 65536
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit

RCLASS_PRIME_CLASSEXT_READABLE_P.exit:            ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 160      ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread:     ; preds = %bb.a, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit
  %i.h = getelementptr i8, ptr %i.b, i64 24
  br label %bb.g

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit
  %i.i = tail call ptr @rb_current_box() #18      ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 24
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !69, !range !70, !noundef !71
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7, label %bb.f

.split7:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.n = load i64, ptr %i.b, align 8, !tbaa !22
  %i.o = and i64 %i.n, 65536
  %.not.i.i.i10 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i10, label %RCLASS_EXT_READABLE_LOOKUP.exit17, label %RCLASS_CLASSEXT_TBL.exit.i.i11

RCLASS_CLASSEXT_TBL.exit.i.i11:                   ; preds = %.split7
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.p, null
  br i1 %.not.i.i12, label %RCLASS_EXT_READABLE_LOOKUP.exit17, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11
  %i.q = load i64, ptr %i.i, align 8, !tbaa !18
  %i.r = call i32 @rb_st_lookup(ptr noundef nonnull %i.p, i64 noundef %i.q, ptr noundef nonnull %i.a) #18
  %.not5.i.i13 = icmp eq i32 %i.r, 0
  br i1 %.not5.i.i13, label %RCLASS_EXT_READABLE_LOOKUP.exit17, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19
  %i.t = inttoptr i64 %i.s to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17

RCLASS_EXT_READABLE_LOOKUP.exit17:                ; preds = %.split7, %RCLASS_CLASSEXT_TBL.exit.i.i11, %bb.d, %bb.e
  %.0.i.i14 = phi ptr [ %i.t, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11 ], [ null, %.split7 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 2) i64 @rb_class_singleton_p(i64 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %RCLASS_SINGLETON_P.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.b, label %RCLASS_SINGLETON_P.exit

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = lshr i64 %i.f, 13
  %.lobit = and i64 %i.i, 1
  br label %RCLASS_SINGLETON_P.exit

RCLASS_SINGLETON_P.exit:                          ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.j = phi i64 [ %.lobit, %bb.b ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ 0, %bb.a ]
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i8 @rb_class_variation_count(i64 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 148
  %i.c = load i8, ptr %i.b, align 4, !tbaa !130
  ret i8 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_class_subclass_add(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i64 %0, label %bb.b [
    i64 0, label %bb.c
    i64 36, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @push_subclass_entry_to_list(i64 noundef %0, i64 noundef %1, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @push_subclass_entry_to_list(i64 noundef range(i64 1, 0) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call ptr @rb_current_box() #18
  %.fr = freeze ptr %i.b                          ; 2 uses
  %i.c = tail call noalias nonnull dereferenceable(24) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 24) #20 ; 12 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.d = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #18
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.a, %bb.b
  %i.e = and i64 %0, 7
  %i.f = icmp eq i64 %i.e, 0
  %i.g = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 24       ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %.not.i26 = icmp eq ptr %.fr, null              ; 2 uses
  %i.k = getelementptr i8, ptr %.fr, i64 8        ; 2 uses
  %i.l = ptrtoint ptr %i.c to i64                 ; 4 uses
  br i1 %i.f, label %rb_vm_lock_enter.exit.split.us, label %rb_vm_lock_enter.exit.split, !prof !67

rb_vm_lock_enter.exit.split.us:                   ; preds = %rb_vm_lock_enter.exit
  %i.m = load i64, ptr %i.g, align 8, !tbaa !22
  %i.n = and i64 %i.m, 16384
  %.not10.i.us.us = icmp eq i64 %i.n, 0           ; 2 uses
  br i1 %.not.i26, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.us.us, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.us

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.us.us:    ; preds = %rb_vm_lock_enter.exit.split.us
  br i1 %.not10.i.us.us, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.us.us, label %RCLASS_EXT_WRITABLE.exit.us.us, !prof !68

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.us.us: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.us.us
  %i.o = call ptr @rb_current_box() #18           ; 3 uses
  %.not.i.us.us = icmp eq ptr %i.o, null
  br i1 %.not.i.us.us, label %RCLASS_EXT_WRITABLE.exit.us.us.sink.split, label %bb.c

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.us.us
  %i.p = getelementptr i8, ptr %i.o, i64 128
  %i.q = load i8, ptr %i.p, align 8, !tbaa !69, !range !70, !noundef !71
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %RCLASS_EXT_WRITABLE.exit.us.us.sink.split, label %RCLASS_EXT_WRITABLE.exit.us.us

RCLASS_EXT_WRITABLE.exit.us.us.sink.split:        ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.us.us, %bb.c
  %i.s = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %i.o)
  br label %RCLASS_EXT_WRITABLE.exit.us.us

RCLASS_EXT_WRITABLE.exit.us.us:                   ; preds = %RCLASS_EXT_WRITABLE.exit.us.us.sink.split, %bb.c, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.us.us
  %.0.i.us.us = phi ptr [ %i.h, %bb.c ], [ %i.h, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.us.us ], [ %i.s, %RCLASS_EXT_WRITABLE.exit.us.us.sink.split ]
  %i.t = getelementptr i8, ptr %.0.i.us.us, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38   ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = getelementptr i8, ptr %i.u, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 3 uses
  %.not25.us.us = icmp eq ptr %i.ab, null
  br i1 %.not25.us.us, label %box_subclasses_tbl_key.exit.us.us, label %bb.d

bb.d:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.us.us
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store ptr %i.c, ptr %i.ac, align 8, !tbaa !66
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !48
  br label %box_subclasses_tbl_key.exit.us.us

box_subclasses_tbl_key.exit.us.us:                ; preds = %bb.d, %RCLASS_EXT_WRITABLE.exit.us.us
  store ptr %i.c, ptr %i.aa, align 8, !tbaa !48
  store ptr %i.z, ptr %i.j, align 8, !tbaa !66
  %i.ad = call i32 @rb_st_insert(ptr noundef %i.x, i64 noundef 0, i64 noundef %i.l) #18 ; 0 uses
  %i.ae = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !76
  %.not.i.i28.us.us = icmp eq ptr %i.ae, null
  br i1 %.not.i.i28.us.us, label %.split.us.sink.split, label %.split.us

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.us:       ; preds = %rb_vm_lock_enter.exit.split.us
  br i1 %.not10.i.us.us, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.us, label %RCLASS_EXT_WRITABLE.exit.us, !prof !68

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.us: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.us
  %i.af = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i.us = icmp eq ptr %i.af, null
  br i1 %.not.i.us, label %RCLASS_EXT_WRITABLE.exit.us.sink.split, label %bb.e

bb.e:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.us
  %i.ag = getelementptr i8, ptr %i.af, i64 128
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !69, !range !70, !noundef !71
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %RCLASS_EXT_WRITABLE.exit.us.sink.split, label %RCLASS_EXT_WRITABLE.exit.us

RCLASS_EXT_WRITABLE.exit.us.sink.split:           ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.us, %bb.e
  %i.aj = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %i.af)
  br label %RCLASS_EXT_WRITABLE.exit.us

RCLASS_EXT_WRITABLE.exit.us:                      ; preds = %RCLASS_EXT_WRITABLE.exit.us.sink.split, %bb.e, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.us
  %.0.i.us = phi ptr [ %i.h, %bb.e ], [ %i.h, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.us ], [ %i.aj, %RCLASS_EXT_WRITABLE.exit.us.sink.split ]
  %i.ak = getelementptr i8, ptr %.0.i.us, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !41
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !43
  %i.ap = getelementptr i8, ptr %i.al, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8      ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48 ; 3 uses
  %.not25.us = icmp eq ptr %i.as, null
  br i1 %.not25.us, label %box_subclasses_tbl_key.exit.us, label %bb.f

bb.f:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.us
  %i.at = getelementptr i8, ptr %i.as, i64 16
  store ptr %i.c, ptr %i.at, align 8, !tbaa !66
  store ptr %i.as, ptr %i.i, align 8, !tbaa !48
  br label %box_subclasses_tbl_key.exit.us

box_subclasses_tbl_key.exit.us:                   ; preds = %bb.f, %RCLASS_EXT_WRITABLE.exit.us
  store ptr %i.c, ptr %i.ar, align 8, !tbaa !48
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !66
  %i.au = load i64, ptr %i.k, align 8, !tbaa !45
  %i.av = call i32 @rb_st_insert(ptr noundef %i.ao, i64 noundef %i.au, i64 noundef %i.l) #18 ; 0 uses
  %i.aw = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !76
  %.not.i.i28.us = icmp eq ptr %i.aw, null
  br i1 %.not.i.i28.us, label %.split.us.sink.split, label %.split.us

rb_vm_lock_enter.exit.split:                      ; preds = %rb_vm_lock_enter.exit
  %i.ax = call ptr @rb_current_box() #18          ; 5 uses
  %.not.i.us42 = icmp eq ptr %i.ax, null          ; 2 uses
  br i1 %.not.i26, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.us41, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.us41: ; preds = %rb_vm_lock_enter.exit.split
  br i1 %.not.i.us42, label %RCLASS_EXT_WRITABLE.exit.us45.sink.split, label %bb.g

bb.g:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.us41
  %i.ay = getelementptr i8, ptr %i.ax, i64 128
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !69, !range !70, !noundef !71
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %RCLASS_EXT_WRITABLE.exit.us45.sink.split, label %RCLASS_EXT_WRITABLE.exit.us45

RCLASS_EXT_WRITABLE.exit.us45.sink.split:         ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.us41, %bb.g
  %i.bb = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %i.ax)
  br label %RCLASS_EXT_WRITABLE.exit.us45

RCLASS_EXT_WRITABLE.exit.us45:                    ; preds = %RCLASS_EXT_WRITABLE.exit.us45.sink.split, %bb.g
  %.0.i.us46 = phi ptr [ %i.h, %bb.g ], [ %i.bb, %RCLASS_EXT_WRITABLE.exit.us45.sink.split ]
  %i.bc = getelementptr i8, ptr %.0.i.us46, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !38 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !41
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !43
  %i.bh = getelementptr i8, ptr %i.bd, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !46 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8      ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !48 ; 3 uses
  %.not25.us47 = icmp eq ptr %i.bk, null
  br i1 %.not25.us47, label %box_subclasses_tbl_key.exit.us48, label %bb.h

bb.h:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.us45
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  store ptr %i.c, ptr %i.bl, align 8, !tbaa !66
  store ptr %i.bk, ptr %i.i, align 8, !tbaa !48
  br label %box_subclasses_tbl_key.exit.us48

box_subclasses_tbl_key.exit.us48:                 ; preds = %bb.h, %RCLASS_EXT_WRITABLE.exit.us45
  store ptr %i.c, ptr %i.bj, align 8, !tbaa !48
  store ptr %i.bi, ptr %i.j, align 8, !tbaa !66
  %i.bm = call i32 @rb_st_insert(ptr noundef %i.bg, i64 noundef 0, i64 noundef %i.l) #18 ; 0 uses
  %i.bn = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !76
  %.not.i.i28.us50 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i28.us50, label %.split.us.sink.split, label %.split.us

.split.us.sink.split:                             ; preds = %box_subclasses_tbl_key.exit.us48, %box_subclasses_tbl_key.exit.us, %box_subclasses_tbl_key.exit.us.us, %box_subclasses_tbl_key.exit
  %.us-phi.ph = phi ptr [ %i.al, %box_subclasses_tbl_key.exit.us ], [ %i.u, %box_subclasses_tbl_key.exit.us.us ], [ %i.bx, %box_subclasses_tbl_key.exit ], [ %i.bd, %box_subclasses_tbl_key.exit.us48 ]
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #18
  br label %.split.us

.split.us:                                        ; preds = %.split.us.sink.split, %box_subclasses_tbl_key.exit.us48, %box_subclasses_tbl_key.exit.us, %box_subclasses_tbl_key.exit.us.us, %box_subclasses_tbl_key.exit
  %.us-phi = phi ptr [ %i.u, %box_subclasses_tbl_key.exit.us.us ], [ %i.al, %box_subclasses_tbl_key.exit.us ], [ %i.bd, %box_subclasses_tbl_key.exit.us48 ], [ %i.bx, %box_subclasses_tbl_key.exit ], [ %.us-phi.ph, %.split.us.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.bo = load ptr, ptr %.us-phi, align 8, !tbaa !41 ; 6 uses
  %i.bp = icmp ne i64 %1, 0
  %i.bq = and i64 %1, 7
  %i.br = icmp eq i64 %i.bq, 0
  %.not5.i.i.i.i = and i1 %i.bp, %i.br            ; 2 uses
  br i1 %2, label %bb.k, label %bb.q

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i:   ; preds = %rb_vm_lock_enter.exit.split
  br i1 %.not.i.us42, label %RCLASS_EXT_WRITABLE.exit.sink.split, label %bb.i

bb.i:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.bs = getelementptr i8, ptr %i.ax, i64 128
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !69, !range !70, !noundef !71
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %RCLASS_EXT_WRITABLE.exit.sink.split, label %RCLASS_EXT_WRITABLE.exit

RCLASS_EXT_WRITABLE.exit.sink.split:              ; preds = %bb.i, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.bv = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %i.ax)
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_EXT_WRITABLE.exit:                         ; preds = %RCLASS_EXT_WRITABLE.exit.sink.split, %bb.i
  %.0.i = phi ptr [ %i.h, %bb.i ], [ %i.bv, %RCLASS_EXT_WRITABLE.exit.sink.split ]
  %i.bw = getelementptr i8, ptr %.0.i, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !38 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !43
  %i.cb = getelementptr i8, ptr %i.bx, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !46 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 8      ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !48 ; 3 uses
  %.not25 = icmp eq ptr %i.ce, null
  br i1 %.not25, label %box_subclasses_tbl_key.exit, label %bb.j

bb.j:                                             ; preds = %RCLASS_EXT_WRITABLE.exit
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  store ptr %i.c, ptr %i.cf, align 8, !tbaa !66
  store ptr %i.ce, ptr %i.i, align 8, !tbaa !48
  br label %box_subclasses_tbl_key.exit

box_subclasses_tbl_key.exit:                      ; preds = %bb.j, %RCLASS_EXT_WRITABLE.exit
  store ptr %i.c, ptr %i.cd, align 8, !tbaa !48
  store ptr %i.cc, ptr %i.j, align 8, !tbaa !66
  %i.cg = load i64, ptr %i.k, align 8, !tbaa !45
  %i.ch = call i32 @rb_st_insert(ptr noundef %i.ca, i64 noundef %i.cg, i64 noundef %i.l) #18 ; 0 uses
  %i.ci = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !76
  %.not.i.i28 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i28, label %.split.us.sink.split, label %.split.us

bb.k:                                             ; preds = %.split.us
  br i1 %.not5.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, !prof !67

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.k
  %i.cj = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !22
  %i.cl = and i64 %i.ck, 16384
  %.not10.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.l, !prof !68

bb.l:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.cm = getelementptr i8, ptr %i.cj, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, %bb.k
  %i.cn = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i29, label %.split.i.i, label %bb.m

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.co = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.m:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.cp = getelementptr i8, ptr %i.cn, i64 128
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !69, !range !70, !noundef !71
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %.split7.i.i, label %bb.n

.split7.i.i:                                      ; preds = %bb.m
  %i.cs = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef nonnull %i.cn)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ct = inttoptr i64 %1 to ptr
  %i.cu = getelementptr i8, ptr %i.ct, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i:                       ; preds = %bb.n, %.split7.i.i, %.split.i.i, %bb.l
  %.0.i.i = phi ptr [ %i.cm, %bb.l ], [ %i.cu, %bb.n ], [ %i.co, %.split.i.i ], [ %i.cs, %.split7.i.i ]
  %i.cv = getelementptr i8, ptr %.0.i.i, i64 88   ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !52 ; 5 uses
  %.not.i30 = icmp eq ptr %i.cw, null
  br i1 %.not.i30, label %RCLASS_WRITE_BOX_MODULE_SUBCLASSES.exit, label %bb.o

bb.o:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !50
  %i.cy = add i64 %i.cx, -1                       ; 2 uses
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !50
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %RCLASS_WRITE_BOX_MODULE_SUBCLASSES.exit

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr i8, ptr %i.cw, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !43
  call void @rb_st_free_table(ptr noundef %i.db) #18
  call void @ruby_xfree(ptr noundef nonnull %i.cw) #18
  br label %RCLASS_WRITE_BOX_MODULE_SUBCLASSES.exit

RCLASS_WRITE_BOX_MODULE_SUBCLASSES.exit:          ; preds = %RCLASS_EXT_WRITABLE.exit.i, %bb.o, %bb.p
  %i.dc = load i64, ptr %i.bo, align 8, !tbaa !50
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.bo, align 8, !tbaa !50
  store ptr %i.bo, ptr %i.cv, align 8, !tbaa !52
  br label %bb.w

bb.q:                                             ; preds = %.split.us
  br i1 %.not5.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i39, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i32, !prof !67

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i39:      ; preds = %bb.q
  %i.de = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !22
  %i.dg = and i64 %i.df, 16384
  %.not10.i.i40 = icmp eq i64 %i.dg, 0
  br i1 %.not10.i.i40, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i32, label %bb.r, !prof !68

bb.r:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i39
  %i.dh = getelementptr i8, ptr %i.de, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i34

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i32: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i39, %bb.q
  %i.di = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.di, null
  br i1 %.not.i.i33, label %.split.i.i38, label %bb.s

.split.i.i38:                                     ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i32
  %i.dj = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit.i34

bb.s:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i32
  %i.dk = getelementptr i8, ptr %i.di, i64 128
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !69, !range !70, !noundef !71
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %.split7.i.i37, label %bb.t

.split7.i.i37:                                    ; preds = %bb.s
  %i.dn = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef nonnull %i.di)
  br label %RCLASS_EXT_WRITABLE.exit.i34

bb.t:                                             ; preds = %bb.s
  %i.do = inttoptr i64 %1 to ptr
  %i.dp = getelementptr i8, ptr %i.do, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i34

RCLASS_EXT_WRITABLE.exit.i34:                     ; preds = %bb.t, %.split7.i.i37, %.split.i.i38, %bb.r
  %.0.i.i35 = phi ptr [ %i.dh, %bb.r ], [ %i.dp, %bb.t ], [ %i.dj, %.split.i.i38 ], [ %i.dn, %.split7.i.i37 ]
  %i.dq = getelementptr i8, ptr %.0.i.i35, i64 80 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !51 ; 5 uses
  %.not.i36 = icmp eq ptr %i.dr, null
  br i1 %.not.i36, label %RCLASS_WRITE_BOX_SUPER_SUBCLASSES.exit, label %bb.u

bb.u:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i34
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !50
  %i.dt = add i64 %i.ds, -1                       ; 2 uses
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !50
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.v, label %RCLASS_WRITE_BOX_SUPER_SUBCLASSES.exit

bb.v:                                             ; preds = %bb.u
  %i.dv = getelementptr i8, ptr %i.dr, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !43
  call void @rb_st_free_table(ptr noundef %i.dw) #18
  call void @ruby_xfree(ptr noundef nonnull %i.dr) #18
  br label %RCLASS_WRITE_BOX_SUPER_SUBCLASSES.exit

RCLASS_WRITE_BOX_SUPER_SUBCLASSES.exit:           ; preds = %RCLASS_EXT_WRITABLE.exit.i34, %bb.u, %bb.v
  %i.dx = load i64, ptr %i.bo, align 8, !tbaa !50
  %i.dy = add i64 %i.dx, 1
  store i64 %i.dy, ptr %i.bo, align 8, !tbaa !50
  store ptr %i.bo, ptr %i.dq, align 8, !tbaa !51
  br label %bb.w

bb.w:                                             ; preds = %RCLASS_WRITE_BOX_SUPER_SUBCLASSES.exit, %RCLASS_WRITE_BOX_MODULE_SUBCLASSES.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_class_remove_from_super_subclasses(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not5.i.i.i = and i1 %i.a, %i.c
  br i1 %.not5.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, !prof !67

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i:          ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  %i.f = and i64 %i.e, 16384
  %.not10.i = icmp eq i64 %i.f, 0
  br i1 %.not10.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, label %bb.b, !prof !68

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i
  %i.g = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, %bb.a
  %i.h = tail call ptr @rb_current_box() #18      ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.i = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.j = getelementptr i8, ptr %i.h, i64 128
  %i.k = load i8, ptr %i.j, align 8, !tbaa !69, !range !70, !noundef !71
  %i.l = trunc nuw i8 %i.k to i1
end_hunk_0
