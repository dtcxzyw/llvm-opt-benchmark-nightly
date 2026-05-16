inline.NumInlined: 92
inline.NumDeleted: 51
begin_hunk_0_@llvm.lifetime.start.p0

declare i64 @rb_wb_protected_newobj_of(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_wb_unprotected_newobj_of(i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_imemo_tmpbuf_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_wb_unprotected_newobj_of(i64 noundef 0, i64 noundef 32794, i32 noundef 0, i64 noundef 24) #15 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong allocsize(1,2) uwtable
define dso_local noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @rb_wb_unprotected_newobj_of(i64 noundef 0, i64 noundef 32794, i32 noundef 0, i64 noundef 24) #15 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store volatile i64 %i.a, ptr %0, align 8, !tbaa !14
  %i.d = tail call noalias nonnull ptr @ruby_xmalloc(i64 noundef %1) #16 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.e, align 8, !tbaa !19
  ret ptr %i.d
}

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong allocsize(1) uwtable
define dso_local noalias nonnull ptr @rb_alloc_tmp_buffer(ptr noundef nonnull %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eArgError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.14) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = add nuw i64 %1, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = tail call i64 @rb_wb_unprotected_newobj_of(i64 noundef 0, i64 noundef 32794, i32 noundef 0, i64 noundef 24) #15 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store volatile i64 %i.e, ptr %0, align 8, !tbaa !14
  %i.h = tail call noalias nonnull ptr @ruby_xmalloc(i64 noundef %1) #16 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !16
  %i.i = getelementptr i8, ptr %i.f, i64 16
  store i64 %i.d, ptr %i.i, align 8, !tbaa !19
  ret ptr %i.h
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_free_tmp_buffer(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw volatile xchg ptr %0, i64 0 seq_cst, align 8 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = atomicrmw volatile xchg ptr %i.c, i64 0 seq_cst, align 8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr i8, ptr %i.b, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !19
  tail call void @ruby_xfree(ptr noundef %i.e) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_imemo_fields_new(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = shl i64 %1, 3
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef %i.d) #15
  %i.f = select i1 %2, i64 53530, i64 53274       ; 2 uses
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  store volatile ptr %i.h, ptr %i.b, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %0, i64 noundef %i.f, i32 noundef 0, i64 noundef %i.d) #15
  br label %imemo_fields_new.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !11
  store volatile ptr %i.j, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i13.i = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i13.i, i64 noundef %0, i64 noundef %i.f, i32 noundef 0, i64 noundef 24) #15 ; 2 uses
  %i.l = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %1, i64 noundef 8) #18
  %i.m = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16
  store ptr %i.l, ptr %i.n, align 8, !tbaa !20
  %i.o = load i64, ptr %i.m, align 8, !tbaa !21
  %i.p = or i64 %i.o, 65536
  store i64 %i.p, ptr %i.m, align 8, !tbaa !21
  br label %imemo_fields_new.exit

imemo_fields_new.exit:                            ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.k, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_imemo_fields_new_complex(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = select i1 %2, i64 53530, i64 53274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %0, i64 noundef %i.b, i32 noundef 0, i64 noundef 24) #15 ; 2 uses
  %i.f = tail call ptr @rb_st_init_numtable_with_size(i64 noundef %1) #15
  %i.g = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  store ptr %i.f, ptr %i.h, align 8, !tbaa !20
  %i.i = load i64, ptr %i.g, align 8, !tbaa !21
  %i.j = or i64 %i.i, 65536
  store i64 %i.j, ptr %i.g, align 8, !tbaa !21
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_imemo_fields_new_complex_tbl(i64 noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = select i1 %2, i64 53530, i64 53274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %0, i64 noundef %i.b, i32 noundef 0, i64 noundef 24) #15 ; 3 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  store ptr %1, ptr %i.g, align 8, !tbaa !20
  %i.h = load i64, ptr %i.f, align 8, !tbaa !21
  %i.i = or i64 %i.h, 65536
  store i64 %i.i, ptr %i.f, align 8, !tbaa !21
  %i.j = tail call i32 @rb_st_foreach(ptr noundef %1, ptr noundef nonnull @imemo_fields_trigger_wb_i, i64 noundef %i.e) #15 ; 0 uses
  ret i64 %i.e
}

declare i32 @rb_st_foreach(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @imemo_fields_trigger_wb_i(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_obj_written.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %1) #15
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_imemo_fields_clone(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = inttoptr i64 %0 to ptr                   ; 6 uses
  %1 = load i64, ptr %i.d, align 8, !tbaa !21     ; 6 uses
  %2 = lshr i64 %1, 32                            ; 3 uses
  %3 = and i64 %1, 576460752303423488
  %.not = icmp eq i64 %3, 0
  %i.e = icmp eq i64 %0, 0                        ; 4 uses
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %rb_imemo_fields_complex_tbl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  br label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ]
  %i.h = tail call noalias nonnull dereferenceable(56) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 56) #18 ; 4 uses
  %i.i = and i64 %0, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.e, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_imemo_fields_complex_tbl.exit
  %i.l = getelementptr i8, ptr %i.d, i64 8
  br label %rb_imemo_fields_owner.exit

bb.e:                                             ; preds = %rb_imemo_fields_complex_tbl.exit
  switch i64 %0, label %bb.h [
    i64 0, label %rb_imemo_fields_owner.exit
    i64 4, label %bb.f
    i64 20, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %rb_imemo_fields_owner.exit

bb.g:                                             ; preds = %bb.e
  br label %rb_imemo_fields_owner.exit

bb.h:                                             ; preds = %bb.e
  %i.m = trunc i64 %0 to i1
  br i1 %i.m, label %rb_imemo_fields_owner.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = and i64 %0, 254
  %i.o = icmp eq i64 %i.n, 12
  %spec.select.i.i = select i1 %i.o, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_imemo_fields_owner.exit

rb_imemo_fields_owner.exit:                       ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.in.i.i = phi ptr [ %i.l, %bb.d ], [ @rb_cNilClass, %bb.f ], [ @rb_cTrueClass, %bb.g ], [ @rb_cFalseClass, %bb.e ], [ @rb_cInteger, %bb.h ], [ %spec.select.i.i, %bb.i ]
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11
  store volatile ptr %i.q, ptr %i.c, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %.0.i.i, i64 noundef 53274, i32 noundef 0, i64 noundef 24) #15 ; 4 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 5 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  store ptr %i.h, ptr %i.t, align 8, !tbaa !20
  %i.u = load i64, ptr %i.s, align 8, !tbaa !21
  %i.v = or i64 %i.u, 65536
  store i64 %i.v, ptr %i.s, align 8, !tbaa !21
  %i.w = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.h, ptr noundef nonnull @imemo_fields_trigger_wb_i, i64 noundef %i.r) #15 ; 0 uses
  %i.x = tail call ptr @rb_st_replace(ptr noundef nonnull %i.h, ptr noundef %.0.i) #15 ; 0 uses
  %i.y = load i64, ptr %i.s, align 8, !tbaa !21
  %i.z = and i64 %i.y, 4294967295
  %4 = and i64 %1, -4294967296
  %i.aa = or disjoint i64 %i.z, %4
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !21
  %i.ab = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.h, ptr noundef nonnull @imemo_fields_complex_wb_i, i64 noundef %i.r) #15 ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.a
  %i.ac = and i64 %0, 7
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = or i1 %i.e, %i.ad
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %i.d, i64 8
  br label %rb_imemo_fields_owner.exit30

bb.l:                                             ; preds = %bb.j
  switch i64 %0, label %bb.o [
    i64 0, label %rb_imemo_fields_owner.exit30
    i64 4, label %bb.m
    i64 20, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  br label %rb_imemo_fields_owner.exit30

bb.n:                                             ; preds = %bb.l
  br label %rb_imemo_fields_owner.exit30

bb.o:                                             ; preds = %bb.l
  %i.ag = trunc i64 %0 to i1
  br i1 %i.ag, label %rb_imemo_fields_owner.exit30, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = and i64 %0, 254
  %i.ai = icmp eq i64 %i.ah, 12
  %spec.select.i.i29 = select i1 %i.ai, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_imemo_fields_owner.exit30

rb_imemo_fields_owner.exit30:                     ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.in.i.i27 = phi ptr [ %i.af, %bb.k ], [ @rb_cNilClass, %bb.m ], [ @rb_cTrueClass, %bb.n ], [ @rb_cFalseClass, %bb.l ], [ @rb_cInteger, %bb.o ], [ %spec.select.i.i29, %bb.p ]
  %.0.i.i28 = load i64, ptr %.0.in.i.i27, align 8, !tbaa !14 ; 2 uses
  %5 = and i64 %1, 126100789566373888
  %.not.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %rb_imemo_fields_owner.exit30
  %6 = and i64 %2, 524287
  %i.aj = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.ak = getelementptr [40 x i8], ptr %i.aj, i64 %6
  %i.al = getelementptr i8, ptr %i.ak, i64 30
  %i.am = load i16, ptr %i.al, align 2, !tbaa !28
  br label %RSHAPE_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %rb_imemo_fields_owner.exit30
  %7 = lshr i64 %1, 54
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !31
  %8 = and i64 %7, 7
  %i.ao = add nuw nsw i64 %8, 4294967295
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = getelementptr [2 x i8], ptr %i.an, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !32
  %9 = and i64 %2, 524287
  %i.as = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.at = getelementptr [40 x i8], ptr %i.as, i64 %9
  %i.au = getelementptr i8, ptr %i.at, i64 30
  %i.av = load i16, ptr %i.au, align 2, !tbaa !28
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.ar, i16 %i.av)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %.0.i31 = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.am, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  %i.aw = zext i16 %.0.i31 to i64                 ; 2 uses
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 16               ; 2 uses
  %i.az = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef %i.ay) #15
  %i.ba = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %RSHAPE_CAPACITY.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !11
  store volatile ptr %i.bb, ptr %i.b, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i.i33 = load volatile ptr, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bc = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i33, i64 noundef %.0.i.i28, i64 noundef 53274, i32 noundef 0, i64 noundef %i.ay) #15 ; 2 uses
  %.phi.trans.insert = inttoptr i64 %i.bc to ptr  ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %imemo_fields_new.exit

bb.r:                                             ; preds = %RSHAPE_CAPACITY.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !11
  store volatile ptr %i.bd, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i13.i = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.be = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i13.i, i64 noundef %.0.i.i28, i64 noundef 53274, i32 noundef 0, i64 noundef 24) #15 ; 2 uses
  %i.bf = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.aw, i64 noundef 8) #18
  %i.bg = inttoptr i64 %i.be to ptr               ; 4 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !20
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !21
  %i.bj = or i64 %i.bi, 65536                     ; 2 uses
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !21
  br label %imemo_fields_new.exit

imemo_fields_new.exit:                            ; preds = %bb.q, %bb.r
  %.pre-phi = phi ptr [ %.phi.trans.insert, %bb.q ], [ %i.bg, %bb.r ] ; 2 uses
  %i.bk = phi i64 [ %.pre, %bb.q ], [ %i.bj, %bb.r ] ; 2 uses
  %.0.i32 = phi i64 [ %i.bc, %bb.q ], [ %i.be, %bb.r ] ; 4 uses
  %i.bl = and i64 %i.bk, 4294967295
  %10 = and i64 %1, -576460756598390784
  %i.bm = or disjoint i64 %i.bl, %10
  store i64 %i.bm, ptr %.pre-phi, align 8, !tbaa !21
  %.not.i34 = icmp eq i64 %.0.i32, 0
  br i1 %.not.i34, label %rb_imemo_fields_ptr.exit, label %bb.s

bb.s:                                             ; preds = %imemo_fields_new.exit
  %i.bn = and i64 %i.bk, 65536
  %.not5.i = icmp eq i64 %i.bn, 0
  %i.bo = getelementptr i8, ptr %.pre-phi, i64 16 ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.t, !prof !33

bb.t:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !20
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %imemo_fields_new.exit, %bb.s, %bb.t
  %.0.i35 = phi ptr [ %i.bp, %bb.t ], [ null, %imemo_fields_new.exit ], [ %i.bo, %bb.s ] ; 2 uses
  %11 = and i64 %2, 524287
  %i.bq = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.br = getelementptr [40 x i8], ptr %i.bq, i64 %11
  %i.bs = getelementptr i8, ptr %i.br, i64 28
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !34 ; 3 uses
  br i1 %i.e, label %rb_imemo_fields_ptr.exit39, label %bb.u

bb.u:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.bu = load i64, ptr %i.d, align 8, !tbaa !21
  %i.bv = and i64 %i.bu, 65536
  %.not5.i37 = icmp eq i64 %i.bv, 0
  %i.bw = getelementptr i8, ptr %i.d, i64 16      ; 2 uses
  br i1 %.not5.i37, label %rb_imemo_fields_ptr.exit39, label %bb.v, !prof !33

bb.v:                                             ; preds = %bb.u
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !20
  br label %rb_imemo_fields_ptr.exit39

rb_imemo_fields_ptr.exit39:                       ; preds = %rb_imemo_fields_ptr.exit, %bb.u, %bb.v
  %.0.i38 = phi ptr [ %i.bx, %bb.v ], [ null, %rb_imemo_fields_ptr.exit ], [ %i.bw, %bb.u ]
  %.not.i40 = icmp eq i16 %i.bt, 0
  br i1 %.not.i40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %rb_imemo_fields_ptr.exit39
  %i.by = zext i16 %i.bt to i64
  %i.bz = shl nuw nsw i64 %i.by, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0.i35, ptr noundef nonnull readonly align 1 %.0.i38, i64 noundef range(i64 1, 524281) %i.bz, i1 noundef false) #15
  %wide.trip.count = zext i16 %i.bt to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %rb_obj_written.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %rb_obj_written.exit ] ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %.0.i35, i64 %indvars.iv
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !14 ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = and i64 %i.cb, 7
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = or i1 %i.cc, %i.ce
  br i1 %i.cf, label %rb_obj_written.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  tail call void @rb_gc_writebarrier(i64 noundef %.0.i32, i64 noundef %i.cb) #15
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %.lr.ph, %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !35

.loopexit:                                        ; preds = %rb_obj_written.exit, %rb_imemo_fields_ptr.exit39, %rb_imemo_fields_owner.exit
  %.026 = phi i64 [ %i.r, %rb_imemo_fields_owner.exit ], [ %.0.i32, %rb_imemo_fields_ptr.exit39 ], [ %.0.i32, %rb_obj_written.exit ]
  ret i64 %.026
}

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @rb_st_replace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @imemo_fields_complex_wb_i(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_obj_written.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %1) #15
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @rb_imemo_fields_clear(i64 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  %.pre = inttoptr i64 %0 to ptr                  ; 4 uses
  br i1 %i.d, label %rb_shape_obj_too_complex_p.exit.thread, label %rb_shape_obj_too_complex_p.exit

rb_shape_obj_too_complex_p.exit:                  ; preds = %bb.a
  %1 = load i64, ptr %.pre, align 8, !tbaa !21    ; 2 uses
  %2 = and i64 %1, 576460752303423488
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %rb_shape_obj_too_complex_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_shape_obj_too_complex_p.exit
  %i.e = and i64 %1, 576460756598390783
  br label %bb.c

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.a, %rb_shape_obj_too_complex_p.exit
  %i.f = load i64, ptr %.pre, align 8, !tbaa !21
  %i.g = and i64 %i.f, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %rb_shape_obj_too_complex_p.exit.thread, %bb.b
  %storemerge = phi i64 [ %i.g, %rb_shape_obj_too_complex_p.exit.thread ], [ %i.e, %bb.b ]
  store i64 %storemerge, ptr %.pre, align 8, !tbaa !21
  %i.h = getelementptr i8, ptr %.pre, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_imemo_memsize(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 6 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 12
  %i.e = and i32 %i.d, 15
  switch i32 %i.e, label %bb.i [
    i32 11, label %bb.j
    i32 10, label %bb.j
    i32 12, label %bb.j
    i32 1, label %bb.j
    i32 0, label %bb.b
    i32 4, label %bb.j
    i32 7, label %bb.c
    i32 5, label %bb.j
    i32 6, label %bb.d
    i32 2, label %bb.j
    i32 3, label %bb.j
    i32 8, label %bb.e
    i32 13, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !37
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i64 @rb_iseq_memsize(ptr noundef nonnull %i.a) #15
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
  %i.m = shl i64 %i.l, 3
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.n = and i64 %i.b, 65536
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %1 = icmp ne i64 %0, 0
  %i.o = and i64 %0, 7
  %2 = icmp eq i64 %i.o, 0
  %.not19 = and i1 %1, %2
  %i.p = and i64 %i.b, 576460752303423488
  %3 = icmp ne i64 %i.p, 0
  %or.cond = and i1 %.not19, %3
  br i1 %or.cond, label %bb.h, label %rb_shape_obj_too_complex_p.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.s = tail call i64 @rb_st_memsize(ptr noundef %i.r) #19
  br label %bb.j

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.g
  %4 = lshr i64 %i.b, 32                          ; 2 uses
  %i.t = and i64 %i.b, 126100789566373888
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %rb_shape_obj_too_complex_p.exit.thread
  %i.u = and i64 %4, 524287
  %i.v = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.w = getelementptr [40 x i8], ptr %i.v, i64 %i.u
  %i.x = getelementptr i8, ptr %i.w, i64 30
  %i.y = load i16, ptr %i.x, align 2, !tbaa !28
  br label %RSHAPE_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %rb_shape_obj_too_complex_p.exit.thread
  %i.z = lshr i64 %i.b, 54
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !31
  %i.ab = and i64 %i.z, 7
  %i.ac = add nuw nsw i64 %i.ab, 4294967295
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr [2 x i8], ptr %i.aa, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !32
  %i.ag = and i64 %4, 524287
  %i.ah = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.ai = getelementptr [40 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = getelementptr i8, ptr %i.ai, i64 30
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !28
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.af, i16 %i.ak)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %.0.i = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.y, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  %i.al = zext i16 %.0.i to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.13) #14
  unreachable

bb.j:                                             ; preds = %bb.f, %RSHAPE_CAPACITY.exit, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.0 = phi i64 [ %i.i, %bb.b ], [ %i.j, %bb.c ], [ 8, %bb.d ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ %i.m, %bb.e ], [ %i.s, %bb.h ], [ %i.am, %RSHAPE_CAPACITY.exit ], [ 0, %bb.f ]
  ret i64 %.0
}

declare i64 @rb_iseq_memsize(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_st_memsize(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_imemo_mark_and_move(i64 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = inttoptr i64 %0 to ptr                   ; 33 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = lshr i32 %i.i, 12
  %i.k = and i32 %i.j, 15
  switch i32 %i.k, label %bb.bo [
    i32 11, label %bb.b
    i32 10, label %mark_and_move_method_entry.exit
    i32 12, label %bb.i
    i32 1, label %bb.l
    i32 0, label %bb.r
    i32 4, label %bb.ae
    i32 7, label %bb.ag
    i32 5, label %bb.ah
    i32 6, label %bb.aj
    i32 2, label %bb.be
    i32 3, label %bb.bf
    i32 8, label %bb.bg
    i32 13, label %bb.bi
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.g, i64 8        ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40
  %i.n = icmp eq i64 %i.m, 36
  br i1 %i.n, label %mark_and_move_method_entry.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %1, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.g, i64 16       ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = tail call fastcc zeroext i1 @moved_or_living_object_strictly_p(i64 noundef %i.q)
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40
  %i.t = tail call i64 @rb_gc_location(i64 noundef %i.s) #15
  store i64 %i.t, ptr %i.l, align 8, !tbaa !14
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = tail call i64 @rb_gc_location(i64 noundef %i.v) #15
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.o, align 8, !tbaa !44
  br label %mark_and_move_method_entry.exit

bb.f:                                             ; preds = %bb.d
  store i64 36, ptr %i.l, align 8, !tbaa !14
  br label %mark_and_move_method_entry.exit

bb.g:                                             ; preds = %bb.c
  tail call void @rb_gc_mark_weak(ptr noundef nonnull %i.l) #15
  %.val = load i64, ptr %i.g, align 8, !tbaa !45
  %i.y = and i64 %.val, 786432
  %or.cond.not = icmp eq i64 %i.y, 0
  br i1 %or.cond.not, label %mark_and_move_method_entry.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.g, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ab = ptrtoint ptr %i.aa to i64
  tail call void @rb_gc_mark_movable(i64 noundef %i.ab) #15
  br label %mark_and_move_method_entry.exit

bb.i:                                             ; preds = %bb.a
  %i.ac = and i64 %i.h, 65536
  %.not90 = icmp eq i64 %i.ac, 0
  br i1 %.not90, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call zeroext i1 @rb_gc_checking_shareable() #15
  br i1 %i.ad, label %mark_and_move_method_entry.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = getelementptr i8, ptr %i.g, i64 8
  tail call void @rb_gc_mark_and_move(ptr noundef %i.ae) #15
  br label %mark_and_move_method_entry.exit

bb.l:                                             ; preds = %bb.a
  %i.af = tail call zeroext i1 @rb_gc_checking_shareable() #15
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr i8, ptr %i.g, i64 16
  tail call void @rb_gc_mark_and_move(ptr noundef %i.ag) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.ah = getelementptr i8, ptr %i.g, i64 24      ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46
  %i.aj = ptrtoint ptr %i.ai to i64
  store i64 %i.aj, ptr %i.e, align 8, !tbaa !14
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.e) #15
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !46
  %i.am = ptrtoint ptr %i.al to i64
  %.not89 = icmp eq i64 %i.ak, %i.am
  br i1 %.not89, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = inttoptr i64 %i.ak to ptr
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !46
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  %i.ao = call zeroext i1 @rb_gc_checking_shareable() #15
  br i1 %i.ao, label %mark_and_move_method_entry.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr i8, ptr %i.g, i64 8
  call void @rb_gc_mark_and_move(ptr noundef %i.ap) #15
  br label %mark_and_move_method_entry.exit

bb.r:                                             ; preds = %bb.a
  %i.aq = getelementptr i8, ptr %i.g, i64 16      ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !50
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %mark_and_move_method_entry.exit, label %.preheader, !prof !51

.preheader:                                       ; preds = %bb.r
  %i.as = getelementptr i8, ptr %i.g, i64 32      ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !37
  %.not106 = icmp eq i32 %i.at, 0
  br i1 %.not106, label %._crit_edge, label %.lr.ph104

.lr.ph104:                                        ; preds = %.preheader
  %i.au = getelementptr i8, ptr %i.g, i64 24
  br label %bb.s

._crit_edge:                                      ; preds = %bb.s, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.av = getelementptr i8, ptr %i.g, i64 8       ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52
  %i.ax = ptrtoint ptr %i.aw to i64
  store i64 %i.ax, ptr %i.f, align 8, !tbaa !14
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.f) #15
  %i.ay = load i64, ptr %i.f, align 8, !tbaa !14  ; 2 uses
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !52
  %i.ba = ptrtoint ptr %i.az to i64
  %.not85 = icmp eq i64 %i.ay, %i.ba
  br i1 %.not85, label %bb.u, label %bb.t

bb.s:                                             ; preds = %.lr.ph104, %bb.s
  %indvars.iv108 = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next109, %bb.s ] ; 2 uses
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !53
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %indvars.iv108
  tail call void @rb_gc_mark_and_move(ptr noundef %i.bc) #15
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.bd = load i32, ptr %i.as, align 8, !tbaa !37
  %i.be = zext i32 %i.bd to i64
  %i.bf = icmp samesign ult i64 %indvars.iv.next109, %i.be
  br i1 %i.bf, label %bb.s, label %._crit_edge, !llvm.loop !54

bb.t:                                             ; preds = %._crit_edge
  %i.bg = inttoptr i64 %i.ay to ptr
  store ptr %i.bg, ptr %i.av, align 8, !tbaa !52
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  %i.bh = load ptr, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  %.val93 = load i64, ptr %i.bh, align 8, !tbaa !14 ; 2 uses
  %i.bi = and i64 %.val93, 2
  %.not86 = icmp eq i64 %i.bi, 0
  br i1 %.not86, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = and i64 %.val93, 2147418113
  switch i64 %i.bj, label %bb.z [
    i64 1145307137, label %bb.w
    i64 858980353, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.bk = getelementptr i8, ptr %i.bh, i64 -8
  %.val95 = load i64, ptr %i.bk, align 8, !tbaa !14
  %i.bl = and i64 %.val95, -4                     ; 2 uses
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %.not87 = icmp eq i64 %i.bl, 0
  br i1 %.not87, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr i8, ptr %i.bm, i64 128
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !55, !range !59, !noundef !60
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.bm) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.u
  %i.bq = load ptr, ptr %i.aq, align 8, !tbaa !50 ; 3 uses
  br i1 %1, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.br = getelementptr i8, ptr %i.bq, i64 8
end_hunk_0
begin_hunk_1_@rb_imemo_mark_and_move:bb.a

bb.ag:                                            ; preds = %bb.a
  tail call void @rb_iseq_mark_and_move(ptr noundef nonnull %i.g, i1 noundef zeroext %1) #15
  br label %mark_and_move_method_entry.exit

bb.ah:                                            ; preds = %bb.a
  %i.cd = getelementptr i8, ptr %i.g, i64 16
  tail call void @rb_gc_mark_and_move(ptr noundef %i.cd) #15
  %i.ce = getelementptr i8, ptr %i.g, i64 24
  tail call void @rb_gc_mark_and_move(ptr noundef %i.ce) #15
  br i1 %1, label %mark_and_move_method_entry.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cf = getelementptr i8, ptr %i.g, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !20
  tail call void @rb_gc_mark_maybe(i64 noundef %i.cg) #15
  br label %mark_and_move_method_entry.exit

bb.aj:                                            ; preds = %bb.a
  %i.ch = getelementptr i8, ptr %i.g, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !64 ; 9 uses
  %i.cj = getelementptr i8, ptr %i.g, i64 32
  tail call void @rb_gc_mark_and_move(ptr noundef %i.cj) #15
  %i.ck = getelementptr i8, ptr %i.g, i64 8       ; 2 uses
  tail call void @rb_gc_mark_and_move(ptr noundef %i.ck) #15
  %.not.i96 = icmp eq ptr %i.ci, null
  br i1 %.not.i96, label %mark_and_move_method_entry.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cl = load i8, ptr %i.ci, align 8
  %i.cm = and i8 %i.cl, 15
  switch i8 %i.cm, label %mark_and_move_method_entry.exit [
    i8 0, label %bb.al
    i8 2, label %bb.av
    i8 3, label %bb.av
    i8 4, label %bb.aw
    i8 6, label %bb.ay
    i8 11, label %bb.bb
  ]

bb.al:                                            ; preds = %bb.ak
  %i.cn = getelementptr i8, ptr %i.ci, i64 8      ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !20 ; 2 uses
  %.not29.i = icmp eq ptr %i.co, null
  br i1 %.not29.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cp = ptrtoint ptr %i.co to i64
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !14
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.a) #15
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !20
  %i.cs = ptrtoint ptr %i.cr to i64
  %.not30.i = icmp eq i64 %i.cq, %i.cs
  br i1 %.not30.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ct = inttoptr i64 %i.cq to ptr
  store ptr %i.ct, ptr %i.cn, align 8, !tbaa !20
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.cu = getelementptr i8, ptr %i.ci, i64 16     ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !20
  %i.cw = ptrtoint ptr %i.cv to i64
  store i64 %i.cw, ptr %i.b, align 8, !tbaa !14
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.b) #15
  %i.cx = load i64, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !20
  %i.cz = ptrtoint ptr %i.cy to i64
  %.not31.i = icmp eq i64 %i.cx, %i.cz
  br i1 %.not31.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.da = inttoptr i64 %i.cx to ptr
  store ptr %i.da, ptr %i.cu, align 8, !tbaa !20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %1, label %mark_and_move_method_entry.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.db = load i8, ptr %i.ci, align 8
  %i.dc = and i8 %i.db, 16
  %.not32.i = icmp eq i8 %i.dc, 0
  br i1 %.not32.i, label %mark_and_move_method_entry.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dd = load i64, ptr %i.ck, align 8, !tbaa !67
  %.not33.i = icmp eq i64 %i.dd, 0
  br i1 %.not33.i, label %mark_and_move_method_entry.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @rb_gc_mark(i64 noundef %0) #15
  br label %mark_and_move_method_entry.exit

bb.av:                                            ; preds = %bb.ak, %bb.ak
  %i.de = getelementptr i8, ptr %i.ci, i64 16
  tail call void @rb_gc_mark_and_move(ptr noundef %i.de) #15
  br label %mark_and_move_method_entry.exit

bb.aw:                                            ; preds = %bb.ak
  %i.df = tail call zeroext i1 @rb_gc_checking_shareable() #15
  br i1 %i.df, label %mark_and_move_method_entry.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dg = getelementptr i8, ptr %i.ci, i64 8
  tail call void @rb_gc_mark_and_move(ptr noundef %i.dg) #15
  br label %mark_and_move_method_entry.exit

bb.ay:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.dh = getelementptr i8, ptr %i.ci, i64 8      ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !20
  %i.dj = ptrtoint ptr %i.di to i64
  store i64 %i.dj, ptr %i.c, align 8, !tbaa !14
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.c) #15
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !14  ; 2 uses
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !20
  %i.dm = ptrtoint ptr %i.dl to i64
  %.not28.i = icmp eq i64 %i.dk, %i.dm
  br i1 %.not28.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dn = inttoptr i64 %i.dk to ptr
  store ptr %i.dn, ptr %i.dh, align 8, !tbaa !20
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %mark_and_move_method_entry.exit

bb.bb:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.do = getelementptr i8, ptr %i.ci, i64 8      ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !20
  %i.dq = ptrtoint ptr %i.dp to i64
  store i64 %i.dq, ptr %i.d, align 8, !tbaa !14
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.d) #15
  %i.dr = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !20
  %i.dt = ptrtoint ptr %i.ds to i64
  %.not27.i = icmp eq i64 %i.dr, %i.dt
  br i1 %.not27.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.du = inttoptr i64 %i.dr to ptr
  store ptr %i.du, ptr %i.do, align 8, !tbaa !20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %mark_and_move_method_entry.exit

bb.be:                                            ; preds = %bb.a
  %i.dv = getelementptr i8, ptr %i.g, i64 8
  tail call void @rb_gc_mark_and_move(ptr noundef %i.dv) #15
  %i.dw = getelementptr i8, ptr %i.g, i64 16
  tail call void @rb_gc_mark_and_move(ptr noundef %i.dw) #15
  %i.dx = getelementptr i8, ptr %i.g, i64 24
  tail call void @rb_gc_mark_and_move(ptr noundef %i.dx) #15
  %i.dy = getelementptr i8, ptr %i.g, i64 32
  tail call void @rb_gc_mark_and_move(ptr noundef %i.dy) #15
  br label %mark_and_move_method_entry.exit

bb.bf:                                            ; preds = %bb.a
  %i.dz = getelementptr i8, ptr %i.g, i64 16
  tail call void @rb_gc_mark_and_move(ptr noundef %i.dz) #15
  br label %mark_and_move_method_entry.exit

bb.bg:                                            ; preds = %bb.a
  br i1 %1, label %mark_and_move_method_entry.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ea = getelementptr i8, ptr %i.g, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !16 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.g, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !19
  %i.ee = getelementptr [8 x i8], ptr %i.eb, i64 %i.ed
  tail call void @rb_gc_mark_locations(ptr noundef %i.eb, ptr noundef %i.ee) #15
  br label %mark_and_move_method_entry.exit

bb.bi:                                            ; preds = %bb.a
  %i.ef = getelementptr i8, ptr %i.g, i64 8
  tail call void @rb_gc_mark_and_move(ptr noundef %i.ef) #15
  %i.eg = tail call zeroext i1 @rb_gc_checking_shareable() #15
  br i1 %i.eg, label %mark_and_move_method_entry.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.eh = icmp eq i64 %0, 0                       ; 2 uses
  %i.ei = and i64 %0, 7
  %i.ej = icmp ne i64 %i.ei, 0
  %i.ek = or i1 %i.eh, %i.ej
  %.pre111 = load i64, ptr %i.g, align 8, !tbaa !21 ; 3 uses
  br i1 %i.ek, label %bb.bm, label %rb_shape_obj_too_complex_p.exit

rb_shape_obj_too_complex_p.exit:                  ; preds = %bb.bj
  %2 = and i64 %.pre111, 576460752303423488
  %.not101 = icmp eq i64 %2, 0
  br i1 %.not101, label %.thread, label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %rb_shape_obj_too_complex_p.exit
  %i.el = getelementptr i8, ptr %i.g, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !20 ; 2 uses
  br i1 %1, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %rb_imemo_fields_complex_tbl.exit
  tail call void @rb_gc_ref_update_table_values_only(ptr noundef %i.em) #15
  br label %mark_and_move_method_entry.exit

bb.bl:                                            ; preds = %rb_imemo_fields_complex_tbl.exit
  tail call void @rb_mark_tbl_no_pin(ptr noundef %i.em) #15
  br label %mark_and_move_method_entry.exit

bb.bm:                                            ; preds = %bb.bj
  br i1 %i.eh, label %rb_imemo_fields_ptr.exit, label %.thread

.thread:                                          ; preds = %bb.bm, %rb_shape_obj_too_complex_p.exit
  %i.en = and i64 %.pre111, 65536
  %.not5.i = icmp eq i64 %i.en, 0
  %i.eo = getelementptr i8, ptr %i.g, i64 16      ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.bn, !prof !33

bb.bn:                                            ; preds = %.thread
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !20
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.bm, %.thread, %bb.bn
  %.0.i99 = phi ptr [ %i.ep, %bb.bn ], [ null, %bb.bm ], [ %i.eo, %.thread ]
  %3 = lshr i64 %.pre111, 32
  %4 = and i64 %3, 524287
  %5 = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.eq = getelementptr [40 x i8], ptr %5, i64 %4
  %i.er = getelementptr i8, ptr %i.eq, i64 28
  %i.es = load i16, ptr %i.er, align 4, !tbaa !34 ; 2 uses
  %.not105 = icmp eq i16 %i.es, 0
  br i1 %.not105, label %mark_and_move_method_entry.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %rb_imemo_fields_ptr.exit
  %wide.trip.count = zext i16 %i.es to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.et = getelementptr [8 x i8], ptr %.0.i99, i64 %indvars.iv
  tail call void @rb_gc_mark_and_move(ptr noundef %i.et) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %mark_and_move_method_entry.exit, label %.lr.ph, !llvm.loop !68

bb.bo:                                            ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.13) #14
  unreachable

mark_and_move_method_entry.exit:                  ; preds = %.lr.ph, %rb_imemo_fields_ptr.exit, %bb.g, %bb.bd, %bb.ba, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ak, %bb.aj, %bb.bk, %bb.bl, %bb.bg, %bb.bh, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.r, %bb.ad, %bb.aa, %bb.p, %bb.q, %bb.j, %bb.k, %bb.b, %bb.h, %bb.e, %bb.f, %bb.bi, %bb.bf, %bb.be, %bb.ag, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @moved_or_living_object_strictly_p(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @rb_objspace_garbage_object_p(i64 noundef %0) #15
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 30
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

declare i64 @rb_gc_location(i64 noundef) local_unnamed_addr #3

declare void @rb_gc_mark_weak(ptr noundef) local_unnamed_addr #3

declare void @rb_gc_mark_movable(i64 noundef) local_unnamed_addr #3

declare zeroext i1 @rb_gc_checking_shareable() local_unnamed_addr #3

declare void @rb_gc_mark_and_move(ptr noundef) local_unnamed_addr #3

declare ptr @rb_vm_env_prev_env(ptr noundef) local_unnamed_addr #3

declare void @rb_gc_mark_maybe(i64 noundef) local_unnamed_addr #3

declare void @rb_iseq_mark_and_move(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @rb_gc_mark_locations(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rb_gc_ref_update_table_values_only(ptr noundef) local_unnamed_addr #3

declare void @rb_mark_tbl_no_pin(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_free_const_table(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @rb_id_table_foreach_values(ptr noundef %0, ptr noundef nonnull @free_const_entry_i, ptr noundef null) #15
  tail call void @rb_id_table_free(ptr noundef %0) #15
  ret void
}

declare void @rb_id_table_foreach_values(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @free_const_entry_i(i64 noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  tail call void @ruby_xfree(ptr noundef %i.a) #15
  ret i32 0
}

declare void @rb_id_table_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_imemo_free(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 12
  %i.e = and i32 %i.d, 15
  switch i32 %i.e, label %bb.l [
    i32 11, label %imemo_fields_free.exit
    i32 10, label %bb.b
    i32 12, label %imemo_fields_free.exit
    i32 1, label %imemo_fields_free.exit
    i32 0, label %bb.e
    i32 4, label %imemo_fields_free.exit
    i32 7, label %bb.f
    i32 5, label %imemo_fields_free.exit
    i32 6, label %bb.g
    i32 2, label %imemo_fields_free.exit
    i32 3, label %imemo_fields_free.exit
    i32 8, label %bb.h
    i32 13, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %imemo_fields_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 4        ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4, !tbaa !7
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %imemo_fields_free.exit

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_xfree(ptr noundef nonnull %i.g) #15
  br label %imemo_fields_free.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.a, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  tail call void @ruby_xfree(ptr noundef %i.m) #15
  br label %imemo_fields_free.exit

bb.f:                                             ; preds = %bb.a
  tail call void @rb_iseq_free(ptr noundef nonnull %i.a) #15
  br label %imemo_fields_free.exit

bb.g:                                             ; preds = %bb.a
  tail call void @rb_free_method_entry(ptr noundef nonnull %i.a) #15
  br label %imemo_fields_free.exit

bb.h:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  tail call void @ruby_xfree(ptr noundef %i.o) #15
  br label %imemo_fields_free.exit

bb.i:                                             ; preds = %bb.a
  %i.p = and i64 %i.b, 65536
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %imemo_fields_free.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = and i64 %0, 7
  %1 = icmp eq i64 %i.q, 0
  %i.r = and i64 %i.b, 576460752303423488
  %2 = icmp ne i64 %i.r, 0
  %or.cond.i = and i1 %1, %2
  %i.s = getelementptr i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20   ; 2 uses
  br i1 %or.cond.i, label %bb.k, label %rb_shape_obj_too_complex_p.exit.thread.i

bb.k:                                             ; preds = %bb.j
  tail call void @rb_st_free_table(ptr noundef %i.t) #15
  br label %imemo_fields_free.exit

rb_shape_obj_too_complex_p.exit.thread.i:         ; preds = %bb.j
  tail call void @ruby_xfree(ptr noundef %i.t) #15
  br label %imemo_fields_free.exit

bb.l:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.13) #14
  unreachable

imemo_fields_free.exit:                           ; preds = %rb_shape_obj_too_complex_p.exit.thread.i, %bb.k, %bb.i, %bb.b, %bb.d, %bb.c, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.h, %bb.g, %bb.f, %bb.e
  ret void
}

declare void @rb_iseq_free(ptr noundef) local_unnamed_addr #3

declare void @rb_free_method_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

declare zeroext i1 @rb_gc_size_allocatable_p(i64 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @rb_st_init_numtable_with_size(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @rb_objspace_garbage_object_p(i64 noundef) local_unnamed_addr #3

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #3

declare void @rb_st_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind sspstrong allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind sspstrong allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind willreturn memory(read) }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS27rb_execution_context_struct", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"rb_imemo_tmpbuf_struct", !15, i64 0, !18, i64 8, !15, i64 16}
!18 = !{!"p1 long", !13, i64 0}
!19 = !{!17, !15, i64 16}
!20 = !{!9, !9, i64 0}
!21 = !{!22, !15, i64 0}
!22 = !{!"RBasic", !15, i64 0, !15, i64 8}
!23 = !{!24, !25, i64 0}
!24 = !{!"", !25, i64 0, !25, i64 8, !26, i64 16, !8, i64 24, !27, i64 32, !8, i64 40}
!25 = !{!"p1 _ZTS8rb_shape", !13, i64 0}
!26 = !{!"p1 short", !13, i64 0}
!27 = !{!"p1 _ZTS13redblack_node", !13, i64 0}
!28 = !{!29, !30, i64 30}
!29 = !{!"rb_shape", !15, i64 0, !15, i64 8, !27, i64 16, !8, i64 24, !30, i64 28, !30, i64 30, !9, i64 32}
!30 = !{!"short", !9, i64 0}
!31 = !{!24, !26, i64 16}
!32 = !{!30, !30, i64 0}
!33 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!34 = !{!29, !30, i64 28}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!38, !8, i64 32}
!38 = !{!"", !15, i64 0, !39, i64 8, !18, i64 16, !18, i64 24, !8, i64 32}
!39 = !{!"p1 _ZTS14rb_iseq_struct", !13, i64 0}
!40 = !{!41, !15, i64 8}
!41 = !{!"rb_callcache", !15, i64 0, !15, i64 8, !42, i64 16, !13, i64 24, !9, i64 32}
!42 = !{!"p1 _ZTS31rb_callable_method_entry_struct", !13, i64 0}
!43 = !{!41, !42, i64 16}
!44 = !{!42, !42, i64 0}
!45 = !{!41, !15, i64 0}
!46 = !{!47, !48, i64 24}
!47 = !{!"rb_cref_struct", !15, i64 0, !15, i64 8, !15, i64 16, !48, i64 24, !49, i64 32}
!48 = !{!"p1 _ZTS14rb_cref_struct", !13, i64 0}
!49 = !{!"rb_scope_visi_struct", !8, i64 0, !8, i64 0}
!50 = !{!38, !18, i64 16}
!51 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!52 = !{!38, !39, i64 8}
!53 = !{!38, !18, i64 24}
!54 = distinct !{!54, !36}
!55 = !{!56, !58, i64 128}
!56 = !{!"rb_box_struct", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !57, i64 88, !57, i64 96, !15, i64 104, !15, i64 112, !57, i64 120, !58, i64 128, !58, i64 129}
!57 = !{!"p1 _ZTS8st_table", !13, i64 0}
!58 = !{!"_Bool", !9, i64 0}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!62, !13, i64 24}
!62 = !{!"vm_ifunc", !15, i64 0, !18, i64 8, !13, i64 16, !13, i64 24, !63, i64 32}
!63 = !{!"vm_ifunc_argc", !8, i64 0, !8, i64 4}
!64 = !{!65, !66, i64 16}
!65 = !{!"rb_method_entry_struct", !15, i64 0, !15, i64 8, !66, i64 16, !15, i64 24, !15, i64 32}
!66 = !{!"p1 _ZTS27rb_method_definition_struct", !13, i64 0}
!67 = !{!65, !15, i64 8}
!68 = distinct !{!68, !36}
!69 = !{!70, !71, i64 8}
!70 = !{!"rb_callinfo", !15, i64 0, !71, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!71 = !{!"p1 _ZTS17rb_callinfo_kwarg", !13, i64 0}
end_hunk_1
