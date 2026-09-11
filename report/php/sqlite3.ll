Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/sqlite3?download=true
inline.NumInlined: 65
inline.NumDeleted: 11
begin_hunk_0_@php_sqlite3_result_object_free_storage:bb.a
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %zend_string_release_ex.exit.i
  %.pre10.i = load ptr, ptr %i.a, align 8, !tbaa !79
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.f = phi ptr [ %.pre10.i, %._crit_edge.loopexit.i ], [ %i.b, %.preheader.i ]
  tail call void @_efree(ptr noundef %i.f) #15
  br label %sqlite3result_clear_column_names_cache.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %zend_string_release_ex.exit.i
  %i.g = phi i32 [ %i.r, %zend_string_release_ex.exit.i ], [ %i.d, %.preheader.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %zend_string_release_ex.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17
  %i.m = and i32 %i.l, 64
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %bb.b, label %zend_string_release_ex.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.n = load i32, ptr %i.j, align 4, !tbaa !46   ; 2 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.p, ptr %i.j, align 4, !tbaa !46
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %zend_string_release_ex.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_efree(ptr noundef nonnull %i.j) #15
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !80
  br label %zend_string_release_ex.exit.i

zend_string_release_ex.exit.i:                    ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.r = phi i32 [ %i.g, %.lr.ph.i ], [ %i.g, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next.i, %i.s
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !2

sqlite3result_clear_column_names_cache.exit:      ; preds = %bb.a, %._crit_edge.i
  store ptr null, ptr %i.a, align 8, !tbaa !79
  %i.u = getelementptr inbounds i8, ptr %0, i64 -12
  store i32 -1, ptr %i.u, align 4, !tbaa !80
  %i.v = getelementptr inbounds i8, ptr %0, i64 -24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 4 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %zend_object_release.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3result_clear_column_names_cache.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !63, !range !35, !noundef !36
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !81
  %i.ab = tail call i32 @sqlite3_reset(ptr noundef %i.aa) #15 ; 0 uses
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !78
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !46 ; 2 uses
  %i.af = icmp ne i32 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !46
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @zend_objects_store_del(ptr noundef nonnull %i.ad) #15
  br label %zend_object_release.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !17
  %i.ak = and i32 %i.aj, -1008
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.i, label %zend_object_release.exit, !prof !103

bb.i:                                             ; preds = %bb.h
  tail call void @gc_possible_root(ptr noundef nonnull %i.ad) #15
  br label %zend_object_release.exit

zend_object_release.exit:                         ; preds = %bb.i, %bb.h, %bb.g, %sqlite3result_clear_column_names_cache.exit
  tail call void @zend_object_std_dtor(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @php_sqlite3_result_object_new(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !151
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !152
  %i.e = lshr i32 %i.d, 30
  %.lobit.i = and i32 %i.e, 1
  %i.f = xor i32 %.lobit.i, 1
  %i.g = sub nsw i32 %i.b, %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 4
  %i.j = add nsw i64 %i.i, 88
  %i.k = tail call noalias ptr @_emalloc(i64 noundef %i.j) #17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  tail call void @zend_object_std_init(ptr noundef nonnull %i.l, ptr noundef %0) #15
  tail call void @object_properties_init(ptr noundef nonnull %i.l, ptr noundef %0) #15
  ret ptr %i.l
}

declare i32 @zend_register_ini_entries_ex(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef i32 @zm_shutdown_sqlite3(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  tail call void @zend_unregister_ini_entries_ex(i32 noundef %1, i32 noundef %0) #15
  ret i32 0
}

declare void @zend_unregister_ini_entries_ex(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zm_info_sqlite3(ptr noundef %0) #0 {
bb.a:
  tail call void @php_info_print_table_start() #15
  tail call void (i32, ...) @php_info_print_table_row(i32 noundef 2, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #15
  %i.a = tail call ptr @sqlite3_libversion() #15
  tail call void (i32, ...) @php_info_print_table_row(i32 noundef 2, ptr noundef nonnull @.str.47, ptr noundef %i.a) #15
  tail call void @php_info_print_table_end() #15
  tail call void @display_ini_entries(ptr noundef %0) #15
  ret void
}

declare void @php_info_print_table_start() local_unnamed_addr #2

declare void @php_info_print_table_row(i32 noundef, ...) local_unnamed_addr #2

declare void @php_info_print_table_end() local_unnamed_addr #2

declare void @display_ini_entries(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @zm_globals_ctor_sqlite3(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

declare i64 @zend_vspprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

declare void @add_assoc_string_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @add_assoc_long_ex(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @__zend_malloc(i64 noundef) local_unnamed_addr #10

declare noalias ptr @_emalloc_40() local_unnamed_addr #2

declare noalias ptr @_emalloc_56() local_unnamed_addr #2

declare noalias ptr @_emalloc_256() local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #10

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @sqlite3_column_double(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @sqlite3_column_blob(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @sqlite3_column_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @add_assoc_zval_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @sqlite3_user_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3_do_callback(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._zval_struct, align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = icmp ne i32 %4, 0                        ; 4 uses
  %spec.store.select = select i1 %i.a, i32 2, i32 0 ; 4 uses
  %i.b = add i32 %spec.store.select, %1           ; 5 uses
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  %i.d = tail call noalias ptr @_safe_emalloc(i64 noundef %i.c, i64 noundef 16, i64 noundef 0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]  ; 11 uses
  br i1 %i.a, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @sqlite3_aggregate_context(ptr noundef %3, i32 noundef 24) #15 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !17
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  br i1 %i.h, label %.thread133, label %bb.e

.thread133:                                       ; preds = %bb.d
  store i32 1, ptr %i.f, align 8, !tbaa !17
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !17
  store ptr %i.j, ptr %.0, align 8, !tbaa !17
  store i32 1, ptr %i.i, align 8, !tbaa !17
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %.pre = load i32, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  store ptr %i.k, ptr %.0, align 8, !tbaa !17
  store i32 %.pre, ptr %i.i, align 8, !tbaa !17
  %i.l = and i32 %.pre, 65280
  %.not100 = icmp eq i32 %i.l, 0
  br i1 %.not100, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.k, align 4, !tbaa !46
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %.thread133, %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !111
  store i64 %i.q, ptr %i.o, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store i32 4, ptr %i.r, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.097 = phi ptr [ %i.e, %bb.g ], [ null, %bb.c ] ; 8 uses
  %.not121 = icmp eq i32 %1, 0
  br i1 %.not121, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !203
  %i.u = tail call i32 @sqlite3_value_type(ptr noundef %i.t) #15
  %i.v = trunc nuw i64 %indvars.iv to i32
  %i.w = add i32 %spec.store.select, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.0, i64 %i.x ; 4 uses
  switch i32 %i.u, label %zend_string_alloc.exit [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 5, label %bb.k
  ]

bb.i:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !203
  %i.aa = tail call i64 @sqlite3_value_int64(ptr noundef %i.z) #15
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !17
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !203
  %i.ac = tail call double @sqlite3_value_double(ptr noundef %i.ab) #15
  store double %i.ac, ptr %i.y, align 8, !tbaa !17
  br label %bb.k

zend_string_alloc.exit:                           ; preds = %.lr.ph
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !203
  %i.ae = tail call ptr @sqlite3_value_text(ptr noundef %i.ad) #15
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !203
  %i.ag = tail call i32 @sqlite3_value_bytes(ptr noundef %i.af) #15
  %i.ah = sext i32 %i.ag to i64                   ; 4 uses
  %i.ai = and i64 %i.ah, -8
  %i.aj = add nsw i64 %i.ai, 32
  %i.ak = tail call noalias ptr @_emalloc(i64 noundef %i.aj) #17 ; 6 uses
  store i32 1, ptr %i.ak, align 4, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 22, ptr %i.al, align 4, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.ah, ptr %i.an, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 1 %i.ae, i64 %i.ah, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ah
  store i8 0, ptr %i.ap, align 1, !tbaa !17
  store ptr %i.ak, ptr %i.y, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.i, %bb.j, %zend_string_alloc.exit
  %.sink = phi i32 [ 4, %bb.i ], [ 5, %bb.j ], [ 262, %zend_string_alloc.exit ], [ 1, %.lr.ph ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %.sink, ptr %i.aq, align 8, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !200

._crit_edge:                                      ; preds = %bb.k, %bb.h
  %i.ar = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !17
  %i.au = and i32 %i.at, 262144
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %zend_call_known_fcc.exit, label %bb.l, !prof !51

bb.l:                                             ; preds = %._crit_edge
  %i.av = tail call noalias ptr @_emalloc_256() #15 ; 4 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.av, ptr noundef nonnull align 8 dereferenceable(256) %i.aw, i64 256, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !17 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !17
  %i.bb = and i32 %i.ba, 64
  %.not.i106 = icmp eq i32 %i.bb, 0
  br i1 %.not.i106, label %bb.m, label %zend_call_known_fcc.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = load i32, ptr %i.ay, align 4, !tbaa !46
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !46
  br label %zend_call_known_fcc.exit

zend_call_known_fcc.exit:                         ; preds = %bb.m, %bb.l, %._crit_edge
  %.0.i = phi ptr [ %i.ar, %._crit_edge ], [ %i.av, %bb.l ], [ %i.av, %bb.m ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53
  call void @zend_call_known_function(ptr noundef nonnull %.0.i, ptr noundef %i.bf, ptr noundef %i.bh, ptr noundef nonnull %5, i32 noundef %i.b, ptr noundef %.0, ptr noundef null) #15
  br i1 %i.a, label %bb.n, label %bb.o

bb.n:                                             ; preds = %zend_call_known_fcc.exit
  call void @zval_ptr_dtor(ptr noundef %.0) #15
  %i.bi = getelementptr inbounds nuw i8, ptr %.0, i64 16
  call void @zval_ptr_dtor(ptr noundef nonnull %i.bi) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %zend_call_known_fcc.exit
  br i1 %.not, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.bj = icmp ult i32 %spec.store.select, %i.b
  br i1 %i.bj, label %.lr.ph119.preheader, label %._crit_edge120

.lr.ph119.preheader:                              ; preds = %.preheader
  %i.bk = zext nneg i32 %spec.store.select to i64
  br label %.lr.ph119

.lr.ph119:                                        ; preds = %.lr.ph119.preheader, %.lr.ph119
  %indvars.iv123 = phi i64 [ %i.bk, %.lr.ph119.preheader ], [ %indvars.iv.next124, %.lr.ph119 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.0, i64 %indvars.iv123
  call void @zval_ptr_dtor(ptr noundef %i.bl) #15
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next124 to i32
  %exitcond126.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond126.not, label %._crit_edge120, label %.lr.ph119, !llvm.loop !201

._crit_edge120:                                   ; preds = %.lr.ph119, %.preheader
  call void @_efree(ptr noundef %.0) #15
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge120, %bb.o
  %i.bm = icmp ne ptr %2, null
  %or.cond = and i1 %i.bm, %i.a
  br i1 %or.cond, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !17
  switch i8 %i.bo, label %zval_try_get_tmp_string.exit [
    i8 0, label %bb.x
    i8 4, label %bb.r
    i8 1, label %bb.s
    i8 5, label %bb.t
    i8 6, label %.thread
  ], !prof !204

bb.r:                                             ; preds = %bb.q
  %i.bp = load i64, ptr %5, align 8, !tbaa !17
  call void @sqlite3_result_int64(ptr noundef %3, i64 noundef %i.bp) #15
  br label %zend_tmp_string_release.exit

bb.s:                                             ; preds = %bb.q
  call void @sqlite3_result_null(ptr noundef %3) #15
  br label %zend_tmp_string_release.exit

bb.t:                                             ; preds = %bb.q
  %i.bq = load double, ptr %5, align 8, !tbaa !17
  call void @sqlite3_result_double(ptr noundef %3, double noundef %i.bq) #15
  br label %zend_tmp_string_release.exit

.thread:                                          ; preds = %bb.q
  %i.br = load ptr, ptr %5, align 8, !tbaa !17, !nonnull !36, !noundef !36 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !49
  %i.bv = trunc i64 %i.bu to i32
  call void @sqlite3_result_text(ptr noundef %3, ptr noundef nonnull %i.bs, i32 noundef %i.bv, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #15
  br label %zend_tmp_string_release.exit

zval_try_get_tmp_string.exit:                     ; preds = %bb.q
  %i.bw = call ptr @zval_try_get_string_func(ptr noundef nonnull %5) #15 ; 7 uses
  %.not101 = icmp eq ptr %i.bw, null
  br i1 %.not101, label %zend_tmp_string_release.exit, label %bb.u, !prof !133

bb.u:                                             ; preds = %zval_try_get_tmp_string.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !49
  %i.ca = trunc i64 %i.bz to i32
  call void @sqlite3_result_text(ptr noundef %3, ptr noundef nonnull %i.bx, i32 noundef %i.ca, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !17
  %i.cd = and i32 %i.cc, 64
  %.not.i108 = icmp eq i32 %i.cd, 0
  br i1 %.not.i108, label %bb.v, label %zend_tmp_string_release.exit

bb.v:                                             ; preds = %bb.u
  %i.ce = load i32, ptr %i.bw, align 8, !tbaa !46 ; 2 uses
  %i.cf = icmp ne i32 %i.ce, 0
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add i32 %i.ce, -1                       ; 2 uses
  store i32 %i.cg, ptr %i.bw, align 8, !tbaa !46
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.w, label %zend_tmp_string_release.exit

bb.w:                                             ; preds = %bb.v
  call void @_efree(ptr noundef nonnull %i.bw) #15
  br label %zend_tmp_string_release.exit

bb.x:                                             ; preds = %bb.q
  call void @sqlite3_result_error(ptr noundef %3, ptr noundef nonnull @.str.52, i32 noundef 0) #15
  br label %zend_tmp_string_release.exit

zend_tmp_string_release.exit:                     ; preds = %zval_try_get_tmp_string.exit, %bb.w, %bb.v, %bb.u, %.thread, %bb.r, %bb.s, %bb.t, %bb.x
  %.not102 = icmp eq ptr %.097, null
  br i1 %.not102, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %zend_tmp_string_release.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %.097, i64 8
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !17
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @zval_ptr_dtor(ptr noundef nonnull %.097) #15
  br label %bb.ae

bb.aa:                                            ; preds = %bb.p
  %.not103 = icmp eq ptr %.097, null
  br i1 %.not103, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %.097, i64 8
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !17
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @zval_ptr_dtor(ptr noundef nonnull %.097) #15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.co = load ptr, ptr %5, align 8, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !17
  store ptr %i.co, ptr %.097, align 8, !tbaa !17
  %i.cr = getelementptr inbounds nuw i8, ptr %.097, i64 8
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !17
  store i32 0, ptr %i.cp, align 8, !tbaa !17
  br label %bb.ae

bb.ae:                                            ; preds = %zend_tmp_string_release.exit, %bb.y, %bb.z, %bb.ad
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !17
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @zval_ptr_dtor(ptr noundef nonnull %5) #15
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void
}

declare noalias ptr @_safe_emalloc(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @sqlite3_value_type(ptr noundef) local_unnamed_addr #2

declare i64 @sqlite3_value_int64(ptr noundef) local_unnamed_addr #2

declare double @sqlite3_value_double(ptr noundef) local_unnamed_addr #2

declare ptr @sqlite3_value_text(ptr noundef) local_unnamed_addr #2

declare i32 @sqlite3_value_bytes(ptr noundef) local_unnamed_addr #2

declare void @sqlite3_result_int64(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @sqlite3_result_null(ptr noundef) local_unnamed_addr #2

declare void @sqlite3_result_double(ptr noundef, double noundef) local_unnamed_addr #2

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @zend_call_known_function(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zval_try_get_string_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal noundef i64 @php_sqlite3_stream_write(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !119
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @php_sqlite3_error(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.56)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !120  ; 2 uses
  %i.h = add i64 %i.g, %2
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !121
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @php_sqlite3_error(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.57)
  br label %bb.i

end_hunk_0
