Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/libxml?download=true
inline.NumInlined: 36
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zm_startup_libxml:bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %i.dv, align 8, !tbaa !39
  %i.dw = load ptr, ptr @zend_known_strings, align 8, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !43
  store ptr null, ptr %14, align 8, !tbaa !66
  %i.dz = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 16, ptr %i.dz, align 8, !tbaa !68
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 0, ptr %i.ea, align 4
  %i.eb = call ptr @zend_declare_typed_property(ptr noundef %i.bs, ptr noundef %i.dy, ptr noundef nonnull %13, i32 noundef 1, ptr noundef null, ptr noundef nonnull byval(%struct.zend_type) align 8 %14) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  store ptr %i.bs, ptr @libxmlerror_class_entry, align 8, !tbaa !69
  %i.ec = load ptr, ptr @sapi_module, align 8, !tbaa !70 ; 3 uses
  %.not = icmp eq ptr %i.ec, null
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %register_class_LibXMLError.exit
  %i.ed = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ec, ptr noundef nonnull dereferenceable(9) @.str.44) #17
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %.thread, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.ef = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ec, ptr noundef nonnull dereferenceable(10) @.str.45) #17
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %.thread, label %.loopexit

.thread:                                          ; preds = %.preheader.1, %.preheader.preheader
  store i1 true, ptr @php_libxml_per_request_initialization, align 1
  br label %bb.k

.loopexit:                                        ; preds = %.preheader.1, %register_class_LibXMLError.exit
  %.b.pr = load i1, ptr @php_libxml_per_request_initialization, align 1
  br i1 %.b.pr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread, %.loopexit
  call void @xmlSetGenericErrorFunc(ptr noundef null, ptr noundef nonnull @php_libxml_error_handler) #15
  %i.eh = call ptr @xmlParserInputBufferCreateFilenameDefault(ptr noundef nonnull @php_libxml_input_buffer_create_filename) #15 ; 0 uses
  %i.ei = call ptr @xmlOutputBufferCreateFilenameDefault(ptr noundef nonnull @php_libxml_output_buffer_create_filename) #15 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  call void @php_libxml_register_image_svg_handler() #15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @zm_shutdown_libxml(i32 %0, i32 %1) #0 {
bb.a:
  %.b = load i1, ptr @php_libxml_per_request_initialization, align 1
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @xmlSetGenericErrorFunc(ptr noundef null, ptr noundef null) #15
  %i.a = tail call ptr @xmlParserInputBufferCreateFilenameDefault(ptr noundef null) #15 ; 0 uses
  %i.b = tail call ptr @xmlOutputBufferCreateFilenameDefault(ptr noundef null) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.b.i = load i1, ptr @php_libxml_initialized, align 1
  br i1 %.b.i, label %bb.d, label %php_libxml_shutdown.exit

bb.d:                                             ; preds = %bb.c
  tail call void @xmlRelaxNGCleanupTypes() #15
  tail call void @zend_hash_destroy(ptr noundef nonnull @php_libxml_exports) #15
  %i.c = load ptr, ptr @php_libxml_default_entity_loader, align 8, !tbaa !12
  tail call void @xmlSetExternalEntityLoader(ptr noundef %i.c) #15
  store i1 false, ptr @php_libxml_initialized, align 1
  br label %php_libxml_shutdown.exit

php_libxml_shutdown.exit:                         ; preds = %bb.c, %bb.d
  %i.d = tail call i32 @php_libxml_unregister_image_svg_handler() #15
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zm_activate_libxml(i32 %0, i32 %1) #0 {
bb.a:
  %.b = load i1, ptr @php_libxml_per_request_initialization, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @xmlSetGenericErrorFunc(ptr noundef null, ptr noundef nonnull @php_libxml_error_handler) #15
  %i.a = tail call ptr @xmlParserInputBufferCreateFilenameDefault(ptr noundef nonnull @php_libxml_input_buffer_create_filename) #15 ; 0 uses
  %i.b = tail call ptr @xmlOutputBufferCreateFilenameDefault(ptr noundef nonnull @php_libxml_output_buffer_create_filename) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 80), align 8, !tbaa !73
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zm_deactivate_libxml(i32 %0, i32 %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 40), align 8, !tbaa !79
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 64), align 8, !tbaa !80 ; 6 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %zend_object_release.exit1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %i.b, align 4, !tbaa !47   ; 2 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !47
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @zend_objects_store_del(ptr noundef nonnull %i.b) #15
  br label %zend_object_release.exit1

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !39
  %i.i = and i32 %i.h, -1008
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %zend_object_release.exit1, !prof !81

bb.f:                                             ; preds = %bb.e
  tail call void @gc_possible_root(ptr noundef nonnull %i.b) #15
  br label %zend_object_release.exit1

zend_object_release.exit1:                        ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  tail call void @zend_release_fcall_info_cache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 40)) #15
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 72), align 8, !tbaa !82 ; 6 uses
  %.not8.i = icmp eq ptr %i.k, null
  br i1 %.not8.i, label %zend_fcc_dtor.exit, label %bb.g

bb.g:                                             ; preds = %zend_object_release.exit1
  %i.l = load i32, ptr %i.k, align 4, !tbaa !47   ; 2 uses
  %i.m = icmp ne i32 %i.l, 0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.n, ptr %i.k, align 4, !tbaa !47
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @zend_objects_store_del(ptr noundef nonnull %i.k) #15
  br label %zend_fcc_dtor.exit

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !39
  %i.r = and i32 %i.q, -1008
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.j, label %zend_fcc_dtor.exit, !prof !81

bb.j:                                             ; preds = %bb.i
  tail call void @gc_possible_root(ptr noundef nonnull %i.k) #15
  br label %zend_fcc_dtor.exit

zend_fcc_dtor.exit:                               ; preds = %bb.j, %bb.i, %bb.h, %zend_object_release.exit1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 40), i8 0, i64 40, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %zend_fcc_dtor.exit, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @zm_info_libxml(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  tail call void @php_info_print_table_start() #15
  tail call void (i32, ...) @php_info_print_table_row(i32 noundef 2, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #15
  tail call void (i32, ...) @php_info_print_table_row(i32 noundef 2, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.48) #15
  %i.a = tail call ptr @__xmlParserVersion() #15
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  tail call void (i32, ...) @php_info_print_table_row(i32 noundef 2, ptr noundef nonnull @.str.86, ptr noundef %i.b) #15
  tail call void (i32, ...) @php_info_print_table_row(i32 noundef 2, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88) #15
  tail call void @php_info_print_table_end() #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @zm_globals_ctor_libxml(ptr nofree noundef writeonly captures(none) initializes((8, 12), (16, 24), (32, 80)) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.c, align 8, !tbaa !84
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @php_libxml_post_deactivate() #0 {
bb.a:
  %.b = load i1, ptr @php_libxml_per_request_initialization, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @xmlSetGenericErrorFunc(ptr noundef null, ptr noundef null) #15
  %i.a = tail call ptr @xmlParserInputBufferCreateFilenameDefault(ptr noundef null) #15 ; 0 uses
  %i.b = tail call ptr @xmlOutputBufferCreateFilenameDefault(ptr noundef null) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @xmlSetStructuredErrorFunc(ptr noundef null, ptr noundef null) #15
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 8), align 8, !tbaa !39
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 16), align 8, !tbaa !85 ; 5 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %smart_str_free_ex.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !39
  %i.f = and i32 %i.e, 64
  %.not.i1 = icmp eq i32 %i.f, 0
  br i1 %.not.i1, label %bb.e, label %zend_string_release_ex.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %i.h = icmp ne i32 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !47
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %zend_string_release_ex.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_efree(ptr noundef nonnull %i.c) #15
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.d, %bb.e, %bb.f
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 16), align 8, !tbaa !85
  br label %smart_str_free_ex.exit

smart_str_free_ex.exit:                           ; preds = %bb.c, %zend_string_release_ex.exit
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 24), align 8, !tbaa !86
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %smart_str_free_ex.exit
  tail call void @zend_llist_destroy(ptr noundef nonnull %i.k) #15
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84
  tail call void @_efree(ptr noundef %i.l) #15
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %smart_str_free_ex.exit
  tail call void @xmlResetLastError() #15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @php_libxml_set_old_ns(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %php_libxml_set_old_ns_list.exit, label %bb.b, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.e, !prof !81

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @xmlMalloc, align 8, !tbaa !12
  %i.f = tail call ptr %i.e(i64 noundef 48) #15, !inline_history !94 ; 3 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !87
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %php_libxml_set_old_ns_list.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 18, ptr %i.i, align 8, !tbaa !95
  %i.j = tail call ptr @xmlStrdup(ptr noundef nonnull @.str.31) #15
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.j, ptr %i.l, align 8, !tbaa !97
  %i.m = tail call ptr @xmlStrdup(ptr noundef nonnull @.str.32) #15
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.m, ptr %i.o, align 8, !tbaa !98
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !99
  store ptr %i.p, ptr %1, align 8, !tbaa !99
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %i.c, %bb.e ], [ %i.n, %bb.d ]
  store ptr %1, ptr %i.q, align 8, !tbaa !99
  br label %php_libxml_set_old_ns_list.exit

php_libxml_set_old_ns_list.exit:                  ; preds = %bb.a, %bb.c, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @php_libxml_node_free_list(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct._xmlDoc, align 8            ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.backedge
  %.050 = phi ptr [ %0, %.preheader ], [ %.0.be, %.backedge ] ; 25 uses
  %i.c = load ptr, ptr %.050, align 8, !tbaa !100
  %.not44 = icmp eq ptr %i.c, null
  br i1 %.not44, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.050, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 5 uses
  call void @xmlUnlinkNode(ptr noundef nonnull %.050) #15
  %i.f = getelementptr inbounds nuw i8, ptr %.050, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !105
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %.050, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !106  ; 2 uses
  %.not46 = icmp eq ptr %i.k, null
  br i1 %.not46, label %.backedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !108  ; 2 uses
  %.not47 = icmp eq ptr %i.m, null
  br i1 %.not47, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.o = load i16, ptr %i.n, align 4
  %i.p = and i16 %i.o, 254
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.g, label %.backedge

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.050, i64 64 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %bb.k, !prof !81

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %1, i8 0, i64 176, i1 false)
  store i32 9, ptr %i.a, align 8, !tbaa !114
  store ptr %1, ptr %i.r, align 8, !tbaa !113
  %i.u = call i32 @xmlReconciliateNs(ptr noundef nonnull %1, ptr noundef nonnull %.050) #15 ; 0 uses
  store ptr null, ptr %i.r, align 8, !tbaa !113
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !87   ; 3 uses
  %.not48 = icmp eq ptr %i.v, null
  br i1 %.not48, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.050, i64 96 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !115
  store ptr %i.v, ptr %i.w, align 8, !tbaa !115
  store ptr %i.x, ptr %i.v, align 8, !tbaa !99
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %.backedge

bb.k:                                             ; preds = %bb.g
  %i.y = call i32 @xmlReconciliateNs(ptr noundef nonnull %i.s, ptr noundef nonnull %.050) #15 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.f, %bb.k, %bb.j, %bb.d, %php_libxml_unregister_node.exit
  %.0.be = phi ptr [ %i.bh, %php_libxml_unregister_node.exit ], [ %i.e, %bb.d ], [ %i.e, %bb.j ], [ %i.e, %bb.k ], [ %i.e, %bb.f ], [ %i.e, %bb.c ] ; 2 uses
  %.not43 = icmp eq ptr %.0.be, null
  br i1 %.not43, label %.loopexit, label %bb.b, !llvm.loop !116

bb.l:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.050, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !105
  switch i32 %i.aa, label %bb.v [
    i32 5, label %php_libxml_unlink_entity_decl.exit
    i32 12, label %php_libxml_unlink_entity_decl.exit
    i32 17, label %bb.m
    i32 2, label %bb.r
    i32 16, label %bb.u
    i32 14, label %bb.u
    i32 10, label %bb.u
    i32 18, label %bb.u
    i32 3, label %bb.u
  ]

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %.050, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !118 ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %php_libxml_unlink_entity_decl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !121
  %i.af = getelementptr inbounds nuw i8, ptr %.050, i64 16 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !123
  %i.ah = call ptr @xmlHashLookup(ptr noundef %i.ae, ptr noundef %i.ag) #15
  %i.ai = icmp eq ptr %i.ah, %.050
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !121
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !123
  %i.al = call i32 @xmlHashRemoveEntry(ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef null) #15 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 120 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !124
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !123
  %i.ap = call ptr @xmlHashLookup(ptr noundef %i.an, ptr noundef %i.ao) #15
  %i.aq = icmp eq ptr %i.ap, %.050
  br i1 %i.aq, label %bb.q, label %php_libxml_unlink_entity_decl.exit

bb.q:                                             ; preds = %bb.p
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !124
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !123
  %i.at = call i32 @xmlHashRemoveEntry(ptr noundef %i.ar, ptr noundef %i.as, ptr noundef null) #15 ; 0 uses
  br label %php_libxml_unlink_entity_decl.exit

bb.r:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.050, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !113 ; 2 uses
  %.not45 = icmp eq ptr %i.av, null
  br i1 %.not45, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %.050, i64 80
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !125
  %i.ay = icmp eq i32 %i.ax, 2
  br i1 %i.ay, label %bb.t, label %bb.u
end_hunk_0
begin_hunk_1_@php_libxml_node_free:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !143 ; 2 uses
  %.not94 = icmp eq ptr %i.cg, null
  br i1 %.not94, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = load ptr, ptr @xmlFree, align 8, !tbaa !12
  tail call void %i.ch(ptr noundef nonnull %i.cg) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !138 ; 2 uses
  %.not95 = icmp eq ptr %i.cj, null
  br i1 %.not95, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr @xmlFree, align 8, !tbaa !12
  tail call void %i.ck(ptr noundef nonnull %i.cj) #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !139 ; 2 uses
  %.not96 = icmp eq ptr %i.cm, null
  br i1 %.not96, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = load ptr, ptr @xmlFree, align 8, !tbaa !12
  tail call void %i.cn(ptr noundef nonnull %i.cm) #15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.co = load ptr, ptr @xmlFree, align 8, !tbaa !12
  tail call void %i.co(ptr noundef nonnull %0) #15
  br label %bb.aw

bb.ae:                                            ; preds = %bb.c
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !144 ; 2 uses
  %.not93 = icmp eq ptr %i.cq, null
  br i1 %.not93, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @xmlFreeNs(ptr noundef nonnull %i.cq) #15
  store ptr null, ptr %i.cp, align 8, !tbaa !144
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i32 1, ptr %i.b, align 8, !tbaa !105
  tail call void @xmlFreeNode(ptr noundef nonnull %0) #15
  br label %bb.aw

bb.ah:                                            ; preds = %bb.c
  br i1 %.not, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !121 ; 2 uses
  tail call void @xmlHashScan(ptr noundef %i.cs, ptr noundef nonnull @php_libxml_unlink_entity, ptr noundef %i.cs) #15
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !124 ; 2 uses
  tail call void @xmlHashScan(ptr noundef %i.cu, ptr noundef nonnull @php_libxml_unlink_entity, ptr noundef %i.cu) #15
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  tail call void @xmlFreeDtd(ptr noundef nonnull %0) #15
  br label %bb.aw

bb.ak:                                            ; preds = %bb.c
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !144 ; 2 uses
  %.not88 = icmp eq ptr %i.cw, null
  br i1 %.not88, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !145
  %i.cz = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.da = and i64 %i.cz, 1
  %.not89 = icmp eq i64 %i.da, 0
  br i1 %.not89, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.db = and i64 %i.cz, -2
  %i.dc = inttoptr i64 %i.db to ptr               ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !146
  tail call void %i.de(ptr noundef %i.dc, ptr noundef nonnull %0) #15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !115 ; 3 uses
  %.not90 = icmp eq ptr %i.dg, null
  br i1 %.not90, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !113 ; 2 uses
  %.not91 = icmp eq ptr %i.di, null
  br i1 %.not91, label %bb.au, label %.preheader

.preheader:                                       ; preds = %bb.ao, %.preheader
  %.0 = phi ptr [ %i.dj, %.preheader ], [ %i.dg, %bb.ao ] ; 2 uses
  %i.dj = load ptr, ptr %.0, align 8, !tbaa !99   ; 2 uses
  %.not92 = icmp eq ptr %i.dj, null
  br i1 %.not92, label %bb.ap, label %.preheader, !llvm.loop !148

bb.ap:                                            ; preds = %.preheader
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 96 ; 5 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !87 ; 3 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.aq, label %bb.as, !prof !81

bb.aq:                                            ; preds = %bb.ap
  %i.dn = load ptr, ptr @xmlMalloc, align 8, !tbaa !12
  %i.do = tail call ptr %i.dn(i64 noundef 48) #15, !inline_history !94 ; 3 uses
  store ptr %i.do, ptr %i.dk, align 8, !tbaa !87
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %php_libxml_set_old_ns_list.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.do, i8 0, i64 48, i1 false)
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !87
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 18, ptr %i.dr, align 8, !tbaa !95
  %i.ds = tail call ptr @xmlStrdup(ptr noundef nonnull @.str.31) #15
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !87
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !97
  %i.dv = tail call ptr @xmlStrdup(ptr noundef nonnull @.str.32) #15
  %i.dw = load ptr, ptr %i.dk, align 8, !tbaa !87 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store ptr %i.dv, ptr %i.dx, align 8, !tbaa !98
  br label %bb.at

bb.as:                                            ; preds = %bb.ap
  %i.dy = load ptr, ptr %i.dl, align 8, !tbaa !99
  store ptr %i.dy, ptr %.0, align 8, !tbaa !99
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dz = phi ptr [ %i.dl, %bb.as ], [ %i.dw, %bb.ar ]
  store ptr %i.dg, ptr %i.dz, align 8, !tbaa !99
  br label %php_libxml_set_old_ns_list.exit

php_libxml_set_old_ns_list.exit:                  ; preds = %bb.aq, %bb.at
  store ptr null, ptr %i.df, align 8, !tbaa !115
  br label %bb.au

bb.au:                                            ; preds = %php_libxml_set_old_ns_list.exit, %bb.ao, %bb.an
  tail call void @xmlFreeNode(ptr noundef nonnull %0) #15
  br label %bb.aw

bb.av:                                            ; preds = %bb.c
  tail call void @xmlFreeNode(ptr noundef nonnull %0) #15
  br label %bb.aw

bb.aw:                                            ; preds = %bb.e, %bb.w, %bb.c, %bb.c, %bb.av, %bb.au, %bb.aj, %bb.ag, %bb.ad, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @php_libxml_get_stream_context() local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 8), align 8, !tbaa !39
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @php_le_stream_context() #15
  %i.d = tail call ptr @zend_fetch_resource_ex(ptr noundef nonnull @libxml_globals, ptr noundef nonnull @.str.3, i32 noundef %i.c) #15
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 56), align 8, !tbaa !149 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @php_stream_context_alloc() #15 ; 2 uses
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 56), align 8, !tbaa !149
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.g = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ %i.e, %bb.c ]
  ret ptr %i.g
}

declare ptr @zend_fetch_resource_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @php_le_stream_context() local_unnamed_addr #3

declare ptr @php_stream_context_alloc() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @php_libxml_issue_error(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._xmlError, align 8          ; 8 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 0, i64 88, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 2, ptr %i.c, align 8, !tbaa !156
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 0, ptr %i.d, align 4, !tbaa !157
  %i.e = tail call ptr @xmlStrdup(ptr noundef %1) #15
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !158
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84
  call void @zend_llist_add_element(ptr noundef %i.g, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef %0, ptr noundef nonnull @.str.4, ptr noundef %1) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @php_error_docref(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @php_libxml_error_handler_va(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i32 %0, 0
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !174
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !177
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.012 = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  tail call fastcc void @php_libxml_internal_error_handler_ex(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %.0, i32 noundef %.012)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @php_libxml_internal_error_handler_ex(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct._xmlError, align 8          ; 9 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call i64 @zend_vspprintf(ptr noundef nonnull %i.a, i64 noundef 0, ptr noundef %2, ptr noundef %3) #15 ; 5 uses
  %.not24 = icmp eq i64 %i.b, 0
  %.pre30 = load ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  br i1 %.not24, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.pre30, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !39
  %i.f = icmp eq i8 %i.e, 10                      ; 2 uses
  br i1 %i.f, label %bb.b, label %.critedge.loopexit

bb.b:                                             ; preds = %.lr.ph.preheader
  store i8 0, ptr %i.d, align 1, !tbaa !39
  %.not.peel = icmp eq i64 %i.c, 0
  br i1 %.not.peel, label %.critedge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.026 = phi i64 [ %i.h, %bb.c ], [ %i.c, %bb.b ]
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.h = add i64 %.026, -1                        ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !39
  %i.k = icmp eq i8 %i.j, 10
  br i1 %i.k, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.i, align 1, !tbaa !39
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !178

.critedge.loopexit:                               ; preds = %bb.c, %.lr.ph, %bb.b, %.lr.ph.preheader
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %i.l = phi ptr [ %.pre30, %bb.a ], [ %.pre, %.critedge.loopexit ]
  %.014.lcssa = phi i1 [ false, %bb.a ], [ %i.f, %.critedge.loopexit ]
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 16), align 8, !tbaa !85 ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !81

bb.d:                                             ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !50   ; 2 uses
  %i.p = add i64 %i.o, %i.b                       ; 3 uses
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 24), align 8, !tbaa !86
  %.not12.i = icmp ult i64 %i.p, %i.q
  br i1 %.not12.i, label %smart_str_alloc.exit, label %bb.e, !prof !180

bb.e:                                             ; preds = %bb.d, %.critedge
  %.0.i = phi i64 [ %i.b, %.critedge ], [ %i.p, %bb.d ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 16), i64 noundef %.0.i) #15
  %.pre31 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 16), align 8, !tbaa !85 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre31, i64 16
  %.pre32 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %smart_str_alloc.exit

smart_str_alloc.exit:                             ; preds = %bb.d, %bb.e
  %i.r = phi i64 [ %i.o, %bb.d ], [ %.pre32, %bb.e ]
  %i.s = phi ptr [ %i.m, %bb.d ], [ %.pre31, %bb.e ]
  %.1.i = phi i64 [ %i.p, %bb.d ], [ %.0.i, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.l, i64 %i.b, i1 false)
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 16), align 8, !tbaa !85
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.1.i, ptr %i.w, align 8, !tbaa !50
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !14
  call void @_efree(ptr noundef %i.x) #15
  br i1 %.014.lcssa, label %bb.f, label %bb.z

bb.f:                                             ; preds = %smart_str_alloc.exit
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84
  %.not15 = icmp eq ptr %i.y, null
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 16), align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %6, i8 0, i64 88, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 1, ptr %i.ab, align 4, !tbaa !154
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 2, ptr %i.ac, align 8, !tbaa !156
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %4, ptr %i.ad, align 8, !tbaa !181
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %5, ptr %i.ae, align 4, !tbaa !157
  %i.af = call ptr @xmlStrdup(ptr noundef nonnull %i.aa) #15
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !158
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84
  call void @zend_llist_add_element(ptr noundef %i.ah, ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %php_libxml_ctx_error_level.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !182
  %.not16 = icmp eq ptr %i.ai, null
  br i1 %.not16, label %bb.i, label %php_libxml_ctx_error_level.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 16), align 8, !tbaa !83
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 7 uses
  switch i32 %0, label %bb.v [
    i32 1, label %bb.j
    i32 2, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i
  %.not.i19 = icmp eq ptr %1, null
  br i1 %.not.i19, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !159 ; 2 uses
  %.not13.i = icmp eq ptr %i.am, null
  br i1 %.not13.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !204 ; 2 uses
  %.not14.i = icmp eq ptr %i.ao, null
  br i1 %.not14.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ao, i32 noundef %4) #15
  br label %php_libxml_ctx_error_level.exit

bb.n:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.ak, i32 noundef %4) #15
  br label %php_libxml_ctx_error_level.exit

bb.o:                                             ; preds = %bb.k, %bb.j
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.ak) #15
  br label %php_libxml_ctx_error_level.exit

bb.p:                                             ; preds = %bb.i
  %.not.i20 = icmp eq ptr %1, null
  br i1 %.not.i20, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !159 ; 2 uses
  %.not13.i21 = icmp eq ptr %i.aq, null
  br i1 %.not13.i21, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !204 ; 2 uses
  %.not14.i22 = icmp eq ptr %i.as, null
  br i1 %.not14.i22, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.as, i32 noundef %4) #15
  br label %php_libxml_ctx_error_level.exit

bb.t:                                             ; preds = %bb.r
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.ak, i32 noundef %4) #15
  br label %php_libxml_ctx_error_level.exit

bb.u:                                             ; preds = %bb.q, %bb.p
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.ak) #15
  br label %php_libxml_ctx_error_level.exit

bb.v:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.ak) #15
  br label %php_libxml_ctx_error_level.exit

php_libxml_ctx_error_level.exit:                  ; preds = %bb.u, %bb.t, %bb.s, %bb.o, %bb.n, %bb.m, %bb.h, %bb.v, %bb.g
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 16), align 8, !tbaa !85 ; 5 uses
  %.not.i17 = icmp eq ptr %i.at, null
  br i1 %.not.i17, label %smart_str_free_ex.exit, label %bb.w

bb.w:                                             ; preds = %php_libxml_ctx_error_level.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !39
  %i.aw = and i32 %i.av, 64
  %.not.i18 = icmp eq i32 %i.aw, 0
  br i1 %.not.i18, label %bb.x, label %zend_string_release_ex.exit

bb.x:                                             ; preds = %bb.w
  %i.ax = load i32, ptr %i.at, align 4, !tbaa !47 ; 2 uses
  %i.ay = icmp ne i32 %i.ax, 0
  call void @llvm.assume(i1 %i.ay)
  %i.az = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.az, ptr %i.at, align 4, !tbaa !47
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.y, label %zend_string_release_ex.exit

bb.y:                                             ; preds = %bb.x
  call void @_efree(ptr noundef nonnull %i.at) #15
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.w, %bb.x, %bb.y
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 16), align 8, !tbaa !85
  br label %smart_str_free_ex.exit

smart_str_free_ex.exit:                           ; preds = %php_libxml_ctx_error_level.exit, %zend_string_release_ex.exit
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 24), align 8, !tbaa !86
  br label %bb.z

bb.z:                                             ; preds = %smart_str_free_ex.exit, %smart_str_alloc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @php_libxml_pretend_ctx_error_ex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ...) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.va_start.p0(ptr nonnull %4)
  call fastcc void @php_libxml_internal_error_handler_ex(i32 noundef 1, ptr noundef null, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call ptr @zend_llist_get_last_ex(ptr noundef nonnull %i.a, ptr noundef null) #15 ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !205
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call noalias ptr @strdup(ptr noundef %0) #15
  store ptr %i.e, ptr %i.c, align 8, !tbaa !205
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @php_libxml_ctx_error(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.va_start.p0(ptr nonnull %2)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %php_libxml_error_handler_va.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %php_libxml_error_handler_va.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !174
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !177
  br label %php_libxml_error_handler_va.exit

php_libxml_error_handler_va.exit:                 ; preds = %bb.a, %bb.b, %bb.c
  %.012.i = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.0.i = phi i32 [ %i.d, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  call fastcc void @php_libxml_internal_error_handler_ex(i32 noundef 1, ptr noundef readonly %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %.0.i, i32 noundef %.012.i)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @php_libxml_ctx_warning(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.va_start.p0(ptr nonnull %2)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %php_libxml_error_handler_va.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %php_libxml_error_handler_va.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !174
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !177
  br label %php_libxml_error_handler_va.exit

php_libxml_error_handler_va.exit:                 ; preds = %bb.a, %bb.b, %bb.c
  %.012.i = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.0.i = phi i32 [ %i.d, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  call fastcc void @php_libxml_internal_error_handler_ex(i32 noundef 2, ptr noundef readonly %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %.0.i, i32 noundef %.012.i)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @php_libxml_error_handler(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ...) #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @php_libxml_internal_error_handler_ex(i32 noundef 0, ptr noundef readonly %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @php_libxml_initialize() local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @php_libxml_initialized, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @xmlInitParser() #15
  %i.a = tail call ptr @xmlGetExternalEntityLoader() #15
  store ptr %i.a, ptr @php_libxml_default_entity_loader, align 8, !tbaa !12
  tail call void @xmlSetExternalEntityLoader(ptr noundef nonnull @php_libxml_pre_ext_ent_loader) #15
  tail call void @_zend_hash_init(ptr noundef nonnull @php_libxml_exports, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #15
  store i1 true, ptr @php_libxml_initialized, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @xmlInitParser() local_unnamed_addr #3

declare ptr @xmlGetExternalEntityLoader() local_unnamed_addr #3

declare void @xmlSetExternalEntityLoader(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @php_libxml_pre_ext_ent_loader(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 8 uses
  %4 = alloca [3 x %struct._zval_struct], align 16 ; 11 uses
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = tail call ptr @__xmlGenericError() #15
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp eq ptr %i.b, @php_libxml_error_handler
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 488), align 8, !range !206
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.ao

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 40), align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @php_libxml_default_entity_loader, align 8, !tbaa !12
  %i.h = tail call ptr %i.g(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15, !inline_history !207
  br label %php_libxml_external_entity_loader.exit

bb.d:                                             ; preds = %bb.b
  %.not78.i = icmp eq ptr %1, null                ; 2 uses
  br i1 %.not78.i, label %bb.e, label %zend_string_alloc.exit.i

zend_string_alloc.exit.i:                         ; preds = %bb.d
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 4 uses
  %i.j = and i64 %i.i, -8
  %i.k = add i64 %i.j, 32
  %i.l = tail call noalias ptr @_emalloc(i64 noundef %i.k) #16 ; 6 uses
  store i32 1, ptr %i.l, align 4, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 22, ptr %i.m, align 4, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.i, ptr %i.o, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 1 %1, i64 %i.i, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.i
  store i8 0, ptr %i.q, align 1, !tbaa !39
  store ptr %i.l, ptr %4, align 16, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %zend_string_alloc.exit.i, %bb.d
  %.sink.i = phi i32 [ 262, %zend_string_alloc.exit.i ], [ 1, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sink.i, ptr %i.r, align 8, !tbaa !39
  %.not79.i = icmp eq ptr %0, null
  br i1 %.not79.i, label %bb.f, label %zend_string_alloc.exit86.i

zend_string_alloc.exit86.i:                       ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17 ; 4 uses
  %i.u = and i64 %i.t, -8
  %i.v = add i64 %i.u, 32
  %i.w = tail call noalias ptr @_emalloc(i64 noundef %i.v) #16 ; 6 uses
  store i32 1, ptr %i.w, align 4, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 22, ptr %i.x, align 4, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
end_hunk_1
begin_hunk_2_@php_libxml_pre_ext_ent_loader:bb.a
bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ptr, ...) @php_libxml_ctx_error(ptr noundef nonnull %2, ptr noundef nonnull @.str.42)
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void (ptr, ptr, ...) @php_libxml_ctx_error(ptr noundef nonnull %2, ptr noundef nonnull @.str.43, ptr noundef nonnull %1)
  br label %bb.an

bb.am:                                            ; preds = %try_convert_to_string.exit.i, %zend_call_known_fcc.exit.i
  %i.cw = load ptr, ptr %3, align 8, !tbaa !39
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = call ptr @xmlNewInputFromFile(ptr noundef nonnull %2, ptr noundef nonnull %i.cx) #15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.ah
  %.3.i = phi ptr [ null, %bb.ak ], [ null, %bb.al ], [ %i.cy, %bb.am ], [ %i.ct, %bb.ah ]
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #15
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @zval_ptr_dtor(ptr noundef nonnull %i.cz) #15
  call void @zval_ptr_dtor(ptr noundef nonnull %i.ad) #15
  call void @zval_ptr_dtor(ptr noundef nonnull %3) #15
  br label %php_libxml_external_entity_loader.exit

php_libxml_external_entity_loader.exit:           ; preds = %bb.c, %bb.an
  %.0.i = phi ptr [ %.3.i, %bb.an ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.ap

bb.ao:                                            ; preds = %bb.a
  %i.da = load ptr, ptr @php_libxml_default_entity_loader, align 8, !tbaa !12
  %i.db = tail call ptr %i.da(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %php_libxml_external_entity_loader.exit
  %.0 = phi ptr [ %.0.i, %php_libxml_external_entity_loader.exit ], [ %i.db, %bb.ao ]
  ret ptr %.0
}

declare void @_zend_hash_init(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @php_libxml_shutdown() local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @php_libxml_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @xmlRelaxNGCleanupTypes() #15
  tail call void @zend_hash_destroy(ptr noundef nonnull @php_libxml_exports) #15
  %i.a = load ptr, ptr @php_libxml_default_entity_loader, align 8, !tbaa !12
  tail call void @xmlSetExternalEntityLoader(ptr noundef %i.a) #15
  store i1 false, ptr @php_libxml_initialized, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @xmlRelaxNGCleanupTypes() local_unnamed_addr #3

declare void @zend_hash_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @php_libxml_switch_context(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @libxml_globals, align 8, !tbaa !39
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 8), align 8, !tbaa !39
  store ptr %i.a, ptr %1, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.b, ptr %i.c, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not16 = icmp eq ptr %0, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !39
  store ptr %i.d, ptr @libxml_globals, align 8, !tbaa !39
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 8), align 8, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_libxml_set_streams_context(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %cond = icmp eq i32 %i.b, 1
  br i1 %cond, label %bb.b, label %.thread, !prof !229

.thread:                                          ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #15
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !39
  %i.f = icmp eq i8 %i.e, 9
  br i1 %i.f, label %.critedge, label %bb.c, !prof !230

bb.c:                                             ; preds = %.thread, %bb.b
  %.063 = phi i32 [ 0, %.thread ], [ 1, %bb.b ]
  %.03862 = phi ptr [ null, %.thread ], [ %i.c, %bb.b ]
  %.03961 = phi i32 [ 0, %.thread ], [ 14, %bb.b ]
  %.04160 = phi i32 [ 1, %.thread ], [ 9, %bb.b ]
  tail call void @zend_wrong_parameter_error(i32 noundef %.04160, i32 noundef %.063, ptr noundef null, i32 noundef %.03961, ptr noundef %.03862) #15
  br label %.critedge51

.critedge:                                        ; preds = %bb.b
  %i.g = tail call i32 @php_le_stream_context() #15
  %i.h = tail call ptr @zend_fetch_resource_ex(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.3, i32 noundef %i.g) #15
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.critedge51, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 8), align 8, !tbaa !39
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @zval_ptr_dtor(ptr noundef nonnull @libxml_globals) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !39   ; 3 uses
  %i.m = load i32, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  store ptr %i.l, ptr @libxml_globals, align 8, !tbaa !39
  store i32 %i.m, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 8), align 8, !tbaa !39
  %i.n = and i32 %i.m, 65280
  %.not47 = icmp eq i32 %i.n, 0
  br i1 %.not47, label %.critedge51, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.l, align 4, !tbaa !47
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.l, align 4, !tbaa !47
  br label %.critedge51

.critedge51:                                      ; preds = %bb.c, %.critedge, %bb.g, %bb.f
  ret void
}

declare void @zend_wrong_parameters_count_error(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @zend_wrong_parameter_error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @zval_ptr_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @php_libxml_uses_internal_errors() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__xmlStructuredError() #15
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp eq ptr %i.b, @php_libxml_structured_error_handler
  ret i1 %i.c
}

declare ptr @__xmlStructuredError() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @php_libxml_structured_error_handler(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct._xmlError, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 0, i64 88, i1 false)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call i32 @xmlCopyError(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %php_list_set_error_structure.exit

.critedge.i:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !154
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 2, ptr %i.d, align 8, !tbaa !156
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !181
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 0, ptr %i.f, align 4, !tbaa !157
  %i.g = tail call ptr @xmlStrdup(ptr noundef null) #15
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !158
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84
  call void @zend_llist_add_element(ptr noundef %i.i, ptr noundef nonnull %2) #15
  br label %php_list_set_error_structure.exit

php_list_set_error_structure.exit:                ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_libxml_use_internal_errors(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 2 uses
  %i.d = icmp ugt i32 %i.c, 1
  br i1 %i.d, label %.thread62, label %bb.b, !prof !81

.thread62:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 0, i32 noundef 1) #15
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %.critedge.thread, label %bb.c, !prof !81

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i8, ptr %i.f, align 8, !tbaa !39
  switch i8 %i.g, label %zend_parse_arg_bool_ex.exit [
    i8 3, label %.critedge.thread79
    i8 2, label %bb.d
    i8 1, label %.critedge.thread
  ], !prof !231

bb.d:                                             ; preds = %bb.c
  br label %.critedge.thread79

zend_parse_arg_bool_ex.exit:                      ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = call zeroext i1 @zend_parse_arg_bool_slow(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 1) #15
  %cond.fr46 = freeze i1 %i.i
  br i1 %cond.fr46, label %.critedge, label %bb.e, !prof !232

bb.e:                                             ; preds = %zend_parse_arg_bool_ex.exit, %.thread62
  %.072 = phi i32 [ 0, %.thread62 ], [ 1, %zend_parse_arg_bool_ex.exit ]
  %.03671 = phi i32 [ 1, %.thread62 ], [ 9, %zend_parse_arg_bool_ex.exit ]
  %.03770 = phi ptr [ null, %.thread62 ], [ %i.h, %zend_parse_arg_bool_ex.exit ]
  %.03869 = phi i32 [ 0, %.thread62 ], [ 3, %zend_parse_arg_bool_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03671, i32 noundef %.072, ptr noundef null, i32 noundef %.03869, ptr noundef %.03770) #15
  br label %bb.l

.critedge.thread79:                               ; preds = %bb.c, %bb.d
  %storemerge = phi i8 [ 0, %bb.d ], [ 1, %bb.c ] ; 2 uses
  store i8 %storemerge, ptr %i.a, align 1, !tbaa !233
  %i.j = tail call ptr @__xmlStructuredError() #15
  br label %bb.f

.critedge:                                        ; preds = %zend_parse_arg_bool_ex.exit
  %i.k = call ptr @__xmlStructuredError() #15
  %.pre = load i8, ptr %i.a, align 1, !tbaa !233, !range !206
  br label %bb.f

.critedge.thread:                                 ; preds = %bb.c, %bb.b
  %i.l = tail call ptr @__xmlStructuredError() #15
  %.in83 = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.m = icmp eq ptr %.in83, @php_libxml_structured_error_handler
  %i.n = select i1 %i.m, i32 3, i32 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.n, ptr %i.o, align 8, !tbaa !39
  br label %bb.l

bb.f:                                             ; preds = %.critedge, %.critedge.thread79
  %i.p = phi i8 [ %storemerge, %.critedge.thread79 ], [ %.pre, %.critedge ]
  %.in.in = phi ptr [ %i.j, %.critedge.thread79 ], [ %i.k, %.critedge ]
  %.in = load ptr, ptr %.in.in, align 8, !tbaa !12
  %i.q = icmp eq ptr %.in, @php_libxml_structured_error_handler
  %i.r = icmp eq i8 %i.p, 0
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @xmlSetStructuredErrorFunc(ptr noundef null, ptr noundef null) #15
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84 ; 2 uses
  %.not41 = icmp eq ptr %i.s, null
  br i1 %.not41, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @zend_llist_destroy(ptr noundef nonnull %i.s) #15
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84
  call void @_efree(ptr noundef %i.t) #15
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  call void @xmlSetStructuredErrorFunc(ptr noundef null, ptr noundef nonnull @php_libxml_structured_error_handler) #15
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = call noalias ptr @_emalloc_56() #15      ; 2 uses
  store ptr %i.w, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84
  call void @zend_llist_init(ptr noundef %i.w, i64 noundef 88, ptr noundef nonnull @php_libxml_free_error, i8 noundef zeroext 0) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g, %bb.h
  %i.x = select i1 %i.q, i32 3, i32 2
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.x, ptr %i.y, align 8, !tbaa !39
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %.critedge.thread, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare void @xmlSetStructuredErrorFunc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @zend_llist_destroy(ptr noundef) local_unnamed_addr #3

declare void @_efree(ptr noundef) local_unnamed_addr #3

declare noalias ptr @_emalloc_56() local_unnamed_addr #3

declare void @zend_llist_init(ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @php_libxml_free_error(ptr noundef %0) #0 {
bb.a:
  tail call void @xmlResetError(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_libxml_get_last_error(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !180

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #15
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84 ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @zend_llist_get_last_ex(ptr noundef nonnull %i.c, ptr noundef null) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = tail call ptr @xmlGetLastError() #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.d, %bb.d ], [ %i.e, %bb.e ]  ; 2 uses
  %.not7 = icmp eq ptr %.0, null
  br i1 %.not7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @php_libxml_create_error_object(ptr noundef %1, ptr noundef %.0)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.f, align 8, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  ret void
}

declare void @zend_wrong_parameters_none_error() local_unnamed_addr #3

declare ptr @xmlGetLastError() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @php_libxml_create_error_object(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @libxmlerror_class_entry, align 8, !tbaa !69
  %i.b = tail call i32 @object_init_ex(ptr noundef %0, ptr noundef %i.a) #15 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !156
  %i.e = zext i32 %i.d to i64
  tail call void @add_property_long_ex(ptr noundef %0, ptr noundef nonnull @.str.76, i64 noundef 5, i64 noundef range(i64 -2147483648, 4294967296) %i.e) #15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !154
  %i.h = sext i32 %i.g to i64
  tail call void @add_property_long_ex(ptr noundef %0, ptr noundef nonnull @.str.89, i64 noundef 4, i64 noundef range(i64 -2147483648, 4294967296) %i.h) #15
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !157
  %i.k = sext i32 %i.j to i64
  tail call void @add_property_long_ex(ptr noundef %0, ptr noundef nonnull @.str.77, i64 noundef 6, i64 noundef range(i64 -2147483648, 4294967296) %i.k) #15
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !158  ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @add_property_string_ex(ptr noundef %0, ptr noundef nonnull @.str.90, i64 noundef 7, ptr noundef nonnull %i.m) #15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr @zend_empty_string, align 8, !tbaa !43
  tail call void @add_property_str_ex(ptr noundef %0, ptr noundef nonnull @.str.90, i64 noundef 7, ptr noundef %i.n) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !205  ; 2 uses
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @add_property_string_ex(ptr noundef %0, ptr noundef nonnull @.str.81, i64 noundef 4, ptr noundef nonnull %i.p) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @zend_empty_string, align 8, !tbaa !43
  tail call void @add_property_str_ex(ptr noundef %0, ptr noundef nonnull @.str.81, i64 noundef 4, ptr noundef %i.q) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !181
  %i.t = sext i32 %i.s to i64
  tail call void @add_property_long_ex(ptr noundef %0, ptr noundef nonnull @.str.91, i64 noundef 4, i64 noundef range(i64 -2147483648, 4294967296) %i.t) #15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_libxml_get_errors(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !180

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #15
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @_zend_new_array_0() #15
  store ptr %i.d, ptr %1, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.e, align 8, !tbaa !39
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84
  %i.g = tail call ptr @zend_llist_get_first_ex(ptr noundef %i.f, ptr noundef null) #15 ; 2 uses
  %.not1213 = icmp eq ptr %i.g, null
  br i1 %.not1213, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.014 = phi ptr [ %i.k, %.lr.ph ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call fastcc void @php_libxml_create_error_object(ptr noundef nonnull %2, ptr noundef %.014)
  %i.h = load ptr, ptr %1, align 8, !tbaa !39
  %i.i = call ptr @zend_hash_next_index_insert(ptr noundef %i.h, ptr noundef nonnull %2) #15 ; 0 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84
  %i.k = call ptr @zend_llist_get_next_ex(ptr noundef %i.j, ptr noundef null) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %.not12 = icmp eq ptr %i.k, null
  br i1 %.not12, label %.loopexit, label %.lr.ph, !llvm.loop !234

bb.e:                                             ; preds = %bb.c
  store ptr @zend_empty_array, ptr %1, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 7, ptr %i.l, align 8, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.e, %bb.b
  ret void
}

declare ptr @_zend_new_array_0() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @zif_libxml_clear_errors(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !180

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #15
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @xmlResetLastError() #15
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 32), align 8, !tbaa !84 ; 2 uses
  %.not1 = icmp eq ptr %i.c, null
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @zend_llist_clean(ptr noundef nonnull %i.c) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

declare void @xmlResetLastError() local_unnamed_addr #3

declare void @zend_llist_clean(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @php_libxml_disable_entity_loader(i1 noundef zeroext %0) local_unnamed_addr #9 {
bb.a:
  %i.a = zext i1 %0 to i8
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 80), align 8, !tbaa !73, !range !206, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  store i8 %i.a, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 80), align 8, !tbaa !73
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden void @zif_libxml_disable_entity_loader(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 1, ptr %i.a, align 1, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 2 uses
  %i.d = icmp ugt i32 %i.c, 1
  br i1 %i.d, label %.thread50, label %bb.b, !prof !81

.thread50:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 0, i32 noundef 1) #15
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %.critedge, label %bb.c, !prof !81

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i8, ptr %i.f, align 8, !tbaa !39
  switch i8 %i.g, label %zend_parse_arg_bool_ex.exit [
    i8 3, label %.critedge
    i8 2, label %bb.d
  ], !prof !235

bb.d:                                             ; preds = %bb.c
  br label %.critedge

zend_parse_arg_bool_ex.exit:                      ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = call zeroext i1 @zend_parse_arg_bool_slow(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 1) #15
  %cond.fr40 = freeze i1 %i.i
  br i1 %cond.fr40, label %zend_parse_arg_bool_ex.exit..critedge_crit_edge, label %bb.e, !prof !232

zend_parse_arg_bool_ex.exit..critedge_crit_edge:  ; preds = %zend_parse_arg_bool_ex.exit
  %.pre = load i8, ptr %i.a, align 1, !tbaa !233, !range !206
  br label %.critedge

bb.e:                                             ; preds = %zend_parse_arg_bool_ex.exit, %.thread50
  %.03259 = phi i32 [ 1, %.thread50 ], [ 9, %zend_parse_arg_bool_ex.exit ]
  %.03358 = phi i32 [ 0, %.thread50 ], [ 1, %zend_parse_arg_bool_ex.exit ]
  %.03457 = phi i32 [ 0, %.thread50 ], [ 2, %zend_parse_arg_bool_ex.exit ]
  %.03556 = phi ptr [ null, %.thread50 ], [ %i.h, %zend_parse_arg_bool_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03259, i32 noundef %.03358, ptr noundef null, i32 noundef %.03457, ptr noundef %.03556) #15
  br label %bb.f

.critedge:                                        ; preds = %bb.c, %zend_parse_arg_bool_ex.exit..critedge_crit_edge, %bb.d, %bb.b
  %i.j = phi i8 [ %.pre, %zend_parse_arg_bool_ex.exit..critedge_crit_edge ], [ 1, %bb.b ], [ 0, %bb.d ], [ 1, %bb.c ]
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 80), align 8, !tbaa !73, !range !206, !noundef !40
  %i.l = trunc nuw i8 %i.k to i1
  store i8 %i.j, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 80), align 8, !tbaa !73
  %i.m = select i1 %i.l, i32 3, i32 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_libxml_set_external_entity_loader(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zend_fcall_info, align 8   ; 5 uses
  %3 = alloca %struct._zend_fcall_info_cache, align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !14
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.c, label %bb.b, !prof !229

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #15
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !39
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e, !prof !81

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %2, align 8, !tbaa !236
  store ptr null, ptr %3, align 8, !tbaa !212
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.h = call i32 @zend_fcall_info_init(ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %i.a) #15
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %.critedge, label %zend_parse_arg_func.exit, !prof !180

zend_parse_arg_func.exit:                         ; preds = %bb.e
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not35 = icmp eq ptr %i.i, null                ; 2 uses
  %. = select i1 %.not35, i32 13, i32 0
  %.39 = select i1 %.not35, i32 9, i32 12
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %zend_parse_arg_func.exit
  %i.j = phi ptr [ null, %bb.b ], [ %i.i, %zend_parse_arg_func.exit ]
  %.033 = phi ptr [ null, %bb.b ], [ %i.d, %zend_parse_arg_func.exit ]
  %.032 = phi i32 [ 0, %bb.b ], [ %., %zend_parse_arg_func.exit ]
  %.031 = phi i32 [ 0, %bb.b ], [ 1, %zend_parse_arg_func.exit ]
  %.030 = phi i32 [ 1, %bb.b ], [ %.39, %zend_parse_arg_func.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.030, i32 noundef %.031, ptr noundef %i.j, i32 noundef %.032, ptr noundef %.033) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.w

.critedge:                                        ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 40), align 8, !tbaa !79
  %.not37 = icmp eq ptr %i.k, null
  br i1 %.not37, label %bb.p, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 64), align 8, !tbaa !80 ; 6 uses
  %.not.i41 = icmp eq ptr %i.l, null
  br i1 %.not.i41, label %zend_object_release.exit42, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load i32, ptr %i.l, align 4, !tbaa !47   ; 2 uses
  %i.n = icmp ne i32 %i.m, 0
  call void @llvm.assume(i1 %i.n)
  %i.o = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.o, ptr %i.l, align 4, !tbaa !47
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @zend_objects_store_del(ptr noundef nonnull %i.l) #15
  br label %zend_object_release.exit42

bb.j:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !39
  %i.s = and i32 %i.r, -1008
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.k, label %zend_object_release.exit42, !prof !81

bb.k:                                             ; preds = %bb.j
  call void @gc_possible_root(ptr noundef nonnull %i.l) #15
  br label %zend_object_release.exit42

zend_object_release.exit42:                       ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  call void @zend_release_fcall_info_cache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 40)) #15
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 72), align 8, !tbaa !82 ; 6 uses
  %.not8.i = icmp eq ptr %i.u, null
  br i1 %.not8.i, label %zend_fcc_dtor.exit, label %bb.l

bb.l:                                             ; preds = %zend_object_release.exit42
  %i.v = load i32, ptr %i.u, align 4, !tbaa !47   ; 2 uses
  %i.w = icmp ne i32 %i.v, 0
  call void @llvm.assume(i1 %i.w)
  %i.x = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.x, ptr %i.u, align 4, !tbaa !47
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @zend_objects_store_del(ptr noundef nonnull %i.u) #15
  br label %zend_fcc_dtor.exit

bb.n:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !39
  %i.ab = and i32 %i.aa, -1008
  %i.ac = icmp eq i32 %i.ab, 0
end_hunk_2
begin_hunk_3_@php_libxml_streams_IO_open_wrapper:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !14
  %i.b = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.79) #17
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.80) #15
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @xmlParseURI(ptr noundef nonnull %0) #15 ; 4 uses
  %.not34 = icmp eq ptr %i.c, null
  br i1 %.not34, label %.thread43, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !257  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @xmlStrncmp(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.81, i32 noundef 4) #15
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %.thread48

.thread48:                                        ; preds = %bb.e
  tail call void @xmlFreeURI(ptr noundef nonnull %i.c) #15
  br label %.thread43

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.h = tail call ptr @xmlURIUnescapeString(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15 ; 2 uses
  tail call void @xmlFreeURI(ptr noundef nonnull %i.c) #15
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.r, label %.thread43

.thread43:                                        ; preds = %bb.c, %.thread48, %bb.f
  %.0274047 = phi i1 [ false, %.thread48 ], [ true, %bb.f ], [ false, %bb.c ] ; 2 uses
  %.0264246 = phi ptr [ %0, %.thread48 ], [ %i.h, %bb.f ], [ %0, %bb.c ] ; 3 uses
  %i.j = call ptr @php_stream_locate_url_wrapper(ptr noundef nonnull %.0264246, ptr noundef nonnull %i.a, i32 noundef 0) #15 ; 3 uses
  %i.k = icmp ne ptr %i.j, null
  %or.cond = and i1 %2, %i.k
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.thread43
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !259
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !262  ; 2 uses
  %.not35 = icmp eq ptr %i.n, null
  br i1 %.not35, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.p = call i32 %i.n(ptr noundef nonnull %i.j, ptr noundef %i.o, i32 noundef 2, ptr noundef nonnull %3, ptr noundef null) #15
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %.0274047, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr @xmlFree, align 8, !tbaa !12
  call void %i.r(ptr noundef nonnull %.0264246) #15
  br label %bb.r

bb.k:                                             ; preds = %bb.h, %bb.g, %.thread43
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @libxml_globals, i64 8), align 8, !tbaa !39
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = call i32 @php_le_stream_context() #15
  %i.v = call ptr @zend_fetch_resource_ex(ptr noundef nonnull @libxml_globals, ptr noundef nonnull @.str.3, i32 noundef %i.u) #15
  br label %php_libxml_get_stream_context.exit

bb.m:                                             ; preds = %bb.k
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 56), align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.n, label %php_libxml_get_stream_context.exit

bb.n:                                             ; preds = %bb.m
  %i.x = call ptr @php_stream_context_alloc() #15 ; 2 uses
  store ptr %i.x, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 56), align 8, !tbaa !149
  br label %php_libxml_get_stream_context.exit

php_libxml_get_stream_context.exit:               ; preds = %bb.l, %bb.m, %bb.n
  %i.y = phi ptr [ %i.v, %bb.l ], [ %i.x, %bb.n ], [ %i.w, %bb.m ]
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.aa = call ptr @_php_stream_open_wrapper_ex(ptr noundef %i.z, ptr noundef %1, i32 noundef 8, ptr noundef null, ptr noundef %i.y) #15 ; 4 uses
  %.not36 = icmp eq ptr %i.aa, null
  br i1 %.not36, label %bb.p, label %bb.o

bb.o:                                             ; preds = %php_libxml_get_stream_context.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 116 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !264
  %i.ad = or i32 %i.ac, 128
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !264
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %php_libxml_get_stream_context.exit
  br i1 %.0274047, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ae = load ptr, ptr @xmlFree, align 8, !tbaa !12
  call void %i.ae(ptr noundef nonnull %.0264246) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.f, %bb.p, %bb.q, %bb.i, %bb.j, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.i ], [ null, %bb.j ], [ %i.aa, %bb.q ], [ %i.aa, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #11

declare ptr @xmlParseURI(ptr noundef) local_unnamed_addr #3

declare i32 @xmlStrncmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmlURIUnescapeString(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @xmlFreeURI(ptr noundef) local_unnamed_addr #3

declare ptr @php_stream_locate_url_wrapper(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @_php_stream_open_wrapper_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmlOutputBufferCreateIO(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @php_libxml_streams_IO_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @_php_stream_write(ptr noundef %0, ptr noundef %1, i64 noundef %i.a) #15
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

declare i32 @xmlCharEncCloseFunc(ptr noundef) local_unnamed_addr #3

declare i64 @_php_stream_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @php_libxml_unregister_image_svg_handler() local_unnamed_addr #3

declare void @php_info_print_table_start() local_unnamed_addr #3

declare void @php_info_print_table_row(i32 noundef, ...) local_unnamed_addr #3

declare void @php_info_print_table_end() local_unnamed_addr #3

declare zeroext i1 @zend_parse_arg_bool_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @xmlResetError(ptr noundef) local_unnamed_addr #3

declare i32 @object_init_ex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_property_long_ex(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @add_property_string_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @add_property_str_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @zend_llist_get_first_ex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @zend_hash_next_index_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @zend_llist_get_next_ex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @zend_fcall_info_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @zend_release_fcall_info_cache(ptr noundef) local_unnamed_addr #3

declare void @zend_objects_store_del(ptr noundef) local_unnamed_addr #3

declare void @gc_possible_root(ptr noundef) local_unnamed_addr #3

declare ptr @zend_hash_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @zend_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @php_libxml_default_dump_node_to_str(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.smart_str, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.a = call ptr @xmlOutputBufferCreateIO(ptr noundef nonnull @php_libxml_write_smart_str, ptr noundef null, ptr noundef nonnull %4, ptr noundef null) #15 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %smart_str_extract_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i1 %2 to i32
  call void @xmlNodeDumpOutput(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %i.b, ptr noundef %3) #15
  %i.c = call i32 @xmlOutputBufferFlush(ptr noundef nonnull %i.a) #15
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %4, align 8, !tbaa !85     ; 5 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %smart_str_free_ex.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  %i.h = and i32 %i.g, 64
  %.not.i10 = icmp eq i32 %i.h, 0
  br i1 %.not.i10, label %bb.e, label %zend_string_release_ex.exit

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.e, align 4, !tbaa !47   ; 2 uses
  %i.j = icmp ne i32 %i.i, 0
  call void @llvm.assume(i1 %i.j)
  %i.k = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.k, ptr %i.e, align 4, !tbaa !47
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %zend_string_release_ex.exit

bb.f:                                             ; preds = %bb.e
  call void @_efree(ptr noundef nonnull %i.e) #15
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.d, %bb.e, %bb.f
  store ptr null, ptr %4, align 8, !tbaa !85
  br label %smart_str_free_ex.exit

smart_str_free_ex.exit:                           ; preds = %bb.c, %zend_string_release_ex.exit
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !86
  %i.n = call i32 @xmlOutputBufferClose(ptr noundef nonnull %i.a) #15 ; 0 uses
  br label %smart_str_extract_ex.exit

bb.g:                                             ; preds = %bb.b
  %i.o = call i32 @xmlOutputBufferClose(ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !85     ; 3 uses
  %.not.i11 = icmp eq ptr %i.p, null
  br i1 %.not.i11, label %bb.m, label %smart_str_0.exit

smart_str_0.exit:                                 ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !39
  %i.u = load ptr, ptr %4, align 8, !tbaa !85     ; 9 uses
  %.not.i13 = icmp eq ptr %i.u, null
  br i1 %.not.i13, label %smart_str_extract_ex.exit, label %bb.h

bb.h:                                             ; preds = %smart_str_0.exit
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !50   ; 6 uses
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %bb.i, label %smart_str_extract_ex.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !39
  %i.ac = and i32 %i.ab, 64
  %.not.i14 = icmp eq i32 %i.ac, 0
  br i1 %.not.i14, label %bb.j, label %zend_string_alloc.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %i.u, align 8, !tbaa !47
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.k, label %zend_string_alloc.exit.i, !prof !180

bb.k:                                             ; preds = %bb.j
  %i.af = and i64 %i.y, -8
  %i.ag = add i64 %i.af, 32
  %i.ah = call ptr @_erealloc(ptr noundef nonnull %i.u, i64 noundef %i.ag) #18 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.y, ptr %i.ai, align 8, !tbaa !50
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !39
  %i.am = and i32 %i.al, -513
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !39
  br label %smart_str_extract_ex.exit

zend_string_alloc.exit.i:                         ; preds = %bb.i, %bb.j
  %i.an = and i64 %i.y, -8
  %i.ao = add i64 %i.an, 32
  %i.ap = call noalias ptr @_emalloc(i64 noundef %i.ao) #16 ; 7 uses
  store i32 1, ptr %i.ap, align 4, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 22, ptr %i.aq, align 4, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !48
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.y, ptr %i.as, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.av = load i64, ptr %i.x, align 8, !tbaa !50
  %..i = call i64 @llvm.umin.i64(i64 %i.y, i64 %i.av)
  %i.aw = add nuw i64 %..i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.aw, i1 false)
  %i.ax = load i32, ptr %i.aa, align 4, !tbaa !39
  %i.ay = and i32 %i.ax, 64
  %.not24.i = icmp eq i32 %i.ay, 0
  br i1 %.not24.i, label %bb.l, label %smart_str_extract_ex.exit

bb.l:                                             ; preds = %zend_string_alloc.exit.i
  %i.az = load i32, ptr %i.u, align 8, !tbaa !47  ; 2 uses
  %i.ba = icmp ne i32 %i.az, 0
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add i32 %i.az, -1
  store i32 %i.bb, ptr %i.u, align 8, !tbaa !47
  br label %smart_str_extract_ex.exit

bb.m:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr @zend_empty_string, align 8, !tbaa !43
  br label %smart_str_extract_ex.exit

smart_str_extract_ex.exit:                        ; preds = %bb.h, %smart_str_0.exit, %bb.k, %zend_string_alloc.exit.i, %bb.l, %bb.m, %bb.a, %smart_str_free_ex.exit
  %.0 = phi ptr [ null, %smart_str_free_ex.exit ], [ null, %bb.a ], [ %i.bc, %bb.m ], [ null, %smart_str_0.exit ], [ %i.u, %bb.h ], [ %i.ah, %bb.k ], [ %i.ap, %bb.l ], [ %i.ap, %zend_string_alloc.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @php_libxml_default_dump_doc_to_str(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.smart_str, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = call ptr @xmlSaveToIO(ptr noundef nonnull @php_libxml_write_smart_str, ptr noundef null, ptr noundef nonnull %3, ptr noundef %2, i32 noundef %1) #15 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %smart_str_extract_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i64 @xmlSaveDoc(ptr noundef nonnull %i.a, ptr noundef %0) #15
  %i.c = call i32 @xmlSaveClose(ptr noundef nonnull %i.a) #15
  %i.d = sext i32 %i.c to i64
  %i.e = or i64 %i.b, %i.d
  %i.f = icmp slt i64 %i.e, 0
  %i.g = load ptr, ptr %3, align 8, !tbaa !85     ; 7 uses
  %.not.i = icmp eq ptr %i.g, null                ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i, label %smart_str_extract_ex.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  %i.j = and i32 %i.i, 64
  %.not.i9 = icmp eq i32 %i.j, 0
  br i1 %.not.i9, label %bb.e, label %smart_str_extract_ex.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.g, align 4, !tbaa !47   ; 2 uses
  %i.l = icmp ne i32 %i.k, 0
  call void @llvm.assume(i1 %i.l)
  %i.m = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.m, ptr %i.g, align 4, !tbaa !47
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %smart_str_extract_ex.exit

bb.f:                                             ; preds = %bb.e
  call void @_efree(ptr noundef nonnull %i.g) #15
  br label %smart_str_extract_ex.exit

bb.g:                                             ; preds = %bb.b
  br i1 %.not.i, label %bb.m, label %smart_str_0.exit

smart_str_0.exit:                                 ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store i8 0, ptr %i.r, align 1, !tbaa !39
  %i.s = load ptr, ptr %3, align 8, !tbaa !85     ; 9 uses
  %.not.i12 = icmp eq ptr %i.s, null
  br i1 %.not.i12, label %smart_str_extract_ex.exit, label %bb.h

bb.h:                                             ; preds = %smart_str_0.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !50   ; 6 uses
  %i.x = icmp ugt i64 %i.u, %i.w
  br i1 %i.x, label %bb.i, label %smart_str_extract_ex.exit

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !39
  %i.aa = and i32 %i.z, 64
  %.not.i13 = icmp eq i32 %i.aa, 0
  br i1 %.not.i13, label %bb.j, label %zend_string_alloc.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %i.s, align 8, !tbaa !47
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.k, label %zend_string_alloc.exit.i, !prof !180

bb.k:                                             ; preds = %bb.j
  %i.ad = and i64 %i.w, -8
  %i.ae = add i64 %i.ad, 32
  %i.af = call ptr @_erealloc(ptr noundef nonnull %i.s, i64 noundef %i.ae) #18 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.w, ptr %i.ag, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !39
  %i.ak = and i32 %i.aj, -513
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !39
  br label %smart_str_extract_ex.exit

zend_string_alloc.exit.i:                         ; preds = %bb.i, %bb.j
  %i.al = and i64 %i.w, -8
  %i.am = add i64 %i.al, 32
  %i.an = call noalias ptr @_emalloc(i64 noundef %i.am) #16 ; 7 uses
  store i32 1, ptr %i.an, align 4, !tbaa !47
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 22, ptr %i.ao, align 4, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.w, ptr %i.aq, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.at = load i64, ptr %i.v, align 8, !tbaa !50
  %..i = call i64 @llvm.umin.i64(i64 %i.w, i64 %i.at)
  %i.au = add nuw i64 %..i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.au, i1 false)
  %i.av = load i32, ptr %i.y, align 4, !tbaa !39
  %i.aw = and i32 %i.av, 64
  %.not24.i = icmp eq i32 %i.aw, 0
  br i1 %.not24.i, label %bb.l, label %smart_str_extract_ex.exit

bb.l:                                             ; preds = %zend_string_alloc.exit.i
  %i.ax = load i32, ptr %i.s, align 8, !tbaa !47  ; 2 uses
  %i.ay = icmp ne i32 %i.ax, 0
  call void @llvm.assume(i1 %i.ay)
  %i.az = add i32 %i.ax, -1
  store i32 %i.az, ptr %i.s, align 8, !tbaa !47
  br label %smart_str_extract_ex.exit

bb.m:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr @zend_empty_string, align 8, !tbaa !43
  br label %smart_str_extract_ex.exit

smart_str_extract_ex.exit:                        ; preds = %bb.h, %smart_str_0.exit, %bb.k, %zend_string_alloc.exit.i, %bb.l, %bb.c, %bb.d, %bb.e, %bb.f, %bb.m, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.ba, %bb.m ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %smart_str_0.exit ], [ %i.s, %bb.h ], [ %i.af, %bb.k ], [ %i.an, %bb.l ], [ %i.an, %zend_string_alloc.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal range(i64 -2147483648, 2147483648) i64 @php_libxml_dump_node_to_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) #0 {
bb.a:
  %i.a = tail call ptr @xmlOutputBufferCreateFilename(ptr noundef %0, ptr noundef null, i32 noundef 0) #15 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i1 %3 to i32
  tail call void @xmlNodeDumpOutput(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %i.b, ptr noundef %4) #15
  %i.c = tail call i32 @xmlOutputBufferClose(ptr noundef nonnull %i.a) #15
  %i.d = sext i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 -2147483648, 2147483648) i64 @php_libxml_default_dump_doc_to_file(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) #0 {
bb.a:
  %i.a = zext i1 %2 to i32
  %i.b = tail call i32 @xmlSaveFormatFileEnc(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %i.a) #15
  %i.c = sext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @php_libxml_write_smart_str(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef returned %2) #0 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !85     ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = add i64 %i.d, %i.a                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !86
  %.not12.i = icmp ult i64 %i.e, %i.g
  br i1 %.not12.i, label %smart_str_alloc.exit, label %bb.c, !prof !180

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ %i.a, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i) #15
  %.pre = load ptr, ptr %0, align 8, !tbaa !85    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre4 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %smart_str_alloc.exit

smart_str_alloc.exit:                             ; preds = %bb.b, %bb.c
  %i.h = phi i64 [ %i.d, %bb.b ], [ %.pre4, %bb.c ]
  %i.i = phi ptr [ %i.b, %bb.b ], [ %.pre, %bb.c ]
  %.1.i = phi i64 [ %i.e, %bb.b ], [ %.0.i, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %1, i64 %i.a, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.1.i, ptr %i.m, align 8, !tbaa !50
  ret i32 %2
}

declare void @xmlNodeDumpOutput(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @xmlOutputBufferFlush(ptr noundef) local_unnamed_addr #3

declare i32 @xmlOutputBufferClose(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(1)
declare ptr @_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #13

declare ptr @xmlSaveToIO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @xmlSaveDoc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @xmlSaveClose(ptr noundef) local_unnamed_addr #3

declare ptr @xmlOutputBufferCreateFilename(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @xmlSaveFormatFileEnc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!17, !22, i64 56}
!17 = !{!"_zend_compiler_globals", !18, i64 0, !19, i64 24, !20, i64 32, !9, i64 40, !21, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !10, i64 80, !23, i64 81, !23, i64 82, !23, i64 83, !23, i64 84, !24, i64 88, !27, i64 144, !23, i64 152, !23, i64 153, !23, i64 154, !23, i64 155, !20, i64 160, !9, i64 168, !9, i64 172, !28, i64 176, !31, i64 256, !35, i64 360, !33, i64 368, !36, i64 424, !26, i64 432, !23, i64 440, !23, i64 441, !23, i64 442, !38, i64 448, !35, i64 456, !18, i64 464, !22, i64 488, !9, i64 496, !13, i64 504, !13, i64 512, !26, i64 520, !26, i64 528, !22, i64 536, !22, i64 544, !22, i64 552, !19, i64 560, !9, i64 568, !13, i64 576, !9, i64 584, !18, i64 592}
!18 = !{!"_zend_stack", !9, i64 0, !9, i64 4, !9, i64 8, !13, i64 16}
!19 = !{!"p1 _ZTS17_zend_class_entry", !13, i64 0}
!20 = !{!"p1 _ZTS12_zend_string", !13, i64 0}
!21 = !{!"p1 _ZTS14_zend_op_array", !13, i64 0}
!22 = !{!"p1 _ZTS11_zend_array", !13, i64 0}
!23 = !{!"_Bool", !10, i64 0}
!24 = !{!"_zend_llist", !25, i64 0, !25, i64 8, !26, i64 16, !26, i64 24, !13, i64 32, !10, i64 40, !25, i64 48}
!25 = !{!"p1 _ZTS19_zend_llist_element", !13, i64 0}
!26 = !{!"long", !10, i64 0}
!27 = !{!"p1 _ZTS22_zend_ini_parser_param", !13, i64 0}
!28 = !{!"_zend_oparray_context", !29, i64 0, !21, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !30, i64 48, !22, i64 56, !20, i64 64, !9, i64 72, !23, i64 76, !23, i64 77}
!29 = !{!"p1 _ZTS21_zend_oparray_context", !13, i64 0}
!30 = !{!"p1 _ZTS22_zend_brk_cont_element", !13, i64 0}
!31 = !{!"_zend_file_context", !32, i64 0, !20, i64 8, !23, i64 16, !23, i64 17, !22, i64 24, !22, i64 32, !22, i64 40, !33, i64 48}
!32 = !{!"_zend_declarables", !26, i64 0}
!33 = !{!"_zend_array", !34, i64 0, !10, i64 8, !9, i64 12, !10, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !26, i64 40, !13, i64 48}
!34 = !{!"_zend_refcounted_h", !9, i64 0, !10, i64 4}
!35 = !{!"p1 _ZTS11_zend_arena", !13, i64 0}
!36 = !{!"p2 _ZTS14_zend_encoding", !37, i64 0}
!37 = !{!"any p2 pointer", !13, i64 0}
!38 = !{!"p1 _ZTS9_zend_ast", !13, i64 0}
!39 = !{!10, !10, i64 0}
!40 = !{}
!41 = !{!42, !42, i64 0}
!42 = !{!"p2 _ZTS12_zend_string", !37, i64 0}
!43 = !{!20, !20, i64 0}
!44 = !{!45, !20, i64 0}
!45 = !{!"", !20, i64 0, !46, i64 8}
!46 = !{!"_zval_struct", !10, i64 0, !10, i64 8, !10, i64 12}
!47 = !{!34, !9, i64 0}
!48 = !{!49, !26, i64 8}
!49 = !{!"_zend_string", !34, i64 0, !26, i64 8, !26, i64 16, !10, i64 24}
!50 = !{!49, !26, i64 16}
!51 = distinct !{null}
!52 = !{!53, !20, i64 8}
!53 = !{!"_zend_class_entry", !10, i64 0, !20, i64 8, !10, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !54, i64 40, !54, i64 48, !54, i64 56, !33, i64 64, !33, i64 120, !33, i64 176, !55, i64 232, !56, i64 240, !57, i64 248, !58, i64 256, !58, i64 264, !58, i64 272, !58, i64 280, !58, i64 288, !58, i64 296, !58, i64 304, !58, i64 312, !58, i64 320, !58, i64 328, !58, i64 336, !58, i64 344, !58, i64 352, !59, i64 360, !60, i64 368, !61, i64 376, !10, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !9, i64 424, !9, i64 428, !9, i64 432, !9, i64 436, !10, i64 440, !62, i64 448, !63, i64 456, !64, i64 464, !22, i64 472, !9, i64 480, !22, i64 488, !20, i64 496, !10, i64 504}
!54 = !{!"p1 _ZTS12_zval_struct", !13, i64 0}
!55 = !{!"p1 _ZTS24_zend_class_mutable_data", !13, i64 0}
!56 = !{!"p1 _ZTS29_zend_inheritance_cache_entry", !13, i64 0}
!57 = !{!"p2 _ZTS19_zend_property_info", !37, i64 0}
!58 = !{!"p1 _ZTS14_zend_function", !13, i64 0}
!59 = !{!"p1 _ZTS21_zend_object_handlers", !13, i64 0}
!60 = !{!"p1 _ZTS26_zend_class_iterator_funcs", !13, i64 0}
!61 = !{!"p1 _ZTS29_zend_class_arrayaccess_funcs", !13, i64 0}
!62 = !{!"p1 _ZTS16_zend_class_name", !13, i64 0}
!63 = !{!"p2 _ZTS17_zend_trait_alias", !37, i64 0}
!64 = !{!"p2 _ZTS22_zend_trait_precedence", !37, i64 0}
!65 = !{!53, !59, i64 360}
!66 = !{!67, !13, i64 0}
!67 = !{!"", !13, i64 0, !9, i64 8}
!68 = !{!67, !9, i64 8}
!69 = !{!19, !19, i64 0}
!70 = !{!71, !15, i64 0}
!71 = !{!"_sapi_module_struct", !15, i64 0, !15, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !15, i64 160, !13, i64 168, !13, i64 176, !15, i64 184, !9, i64 192, !9, i64 196, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !9, i64 248, !15, i64 256, !72, i64 264, !13, i64 272, !13, i64 280}
!72 = !{!"p1 _ZTS20_zend_function_entry", !13, i64 0}
!73 = !{!74, !23, i64 80}
!74 = !{!"_zend_libxml_globals", !46, i64 0, !75, i64 16, !76, i64 32, !77, i64 40, !23, i64 80}
!75 = !{!"", !20, i64 0, !26, i64 8}
!76 = !{!"p1 _ZTS11_zend_llist", !13, i64 0}
!77 = !{!"_zend_fcall_info_cache", !58, i64 0, !19, i64 8, !19, i64 16, !78, i64 24, !78, i64 32}
!78 = !{!"p1 _ZTS12_zend_object", !13, i64 0}
!79 = !{!74, !58, i64 40}
!80 = !{!77, !78, i64 24}
!81 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!82 = !{!77, !78, i64 32}
!83 = !{!74, !20, i64 16}
!84 = !{!74, !76, i64 32}
!85 = !{!75, !20, i64 0}
!86 = !{!75, !26, i64 8}
!87 = !{!88, !92, i64 96}
!88 = !{!"_xmlDoc", !13, i64 0, !9, i64 8, !15, i64 16, !89, i64 24, !89, i64 32, !89, i64 40, !89, i64 48, !89, i64 56, !90, i64 64, !9, i64 72, !9, i64 76, !91, i64 80, !91, i64 88, !92, i64 96, !15, i64 104, !15, i64 112, !13, i64 120, !13, i64 128, !15, i64 136, !9, i64 144, !93, i64 152, !13, i64 160, !9, i64 168, !9, i64 172}
!89 = !{!"p1 _ZTS8_xmlNode", !13, i64 0}
!90 = !{!"p1 _ZTS7_xmlDoc", !13, i64 0}
!91 = !{!"p1 _ZTS7_xmlDtd", !13, i64 0}
!92 = !{!"p1 _ZTS6_xmlNs", !13, i64 0}
!93 = !{!"p1 _ZTS8_xmlDict", !13, i64 0}
!94 = distinct !{null}
!95 = !{!96, !9, i64 8}
!96 = !{!"_xmlNs", !92, i64 0, !9, i64 8, !15, i64 16, !15, i64 24, !13, i64 32, !90, i64 40}
!97 = !{!96, !15, i64 16}
!98 = !{!96, !15, i64 24}
!99 = !{!96, !92, i64 0}
!100 = !{!101, !13, i64 0}
!101 = !{!"_xmlNode", !13, i64 0, !9, i64 8, !15, i64 16, !89, i64 24, !89, i64 32, !89, i64 40, !89, i64 48, !89, i64 56, !90, i64 64, !92, i64 72, !15, i64 80, !102, i64 88, !92, i64 96, !13, i64 104, !103, i64 112, !103, i64 114}
!102 = !{!"p1 _ZTS8_xmlAttr", !13, i64 0}
!103 = !{!"short", !10, i64 0}
!104 = !{!101, !89, i64 48}
!105 = !{!101, !9, i64 8}
!106 = !{!107, !13, i64 16}
!107 = !{!"_php_libxml_node_ptr", !89, i64 0, !9, i64 8, !13, i64 16}
!108 = !{!109, !111, i64 8}
!109 = !{!"_php_libxml_node_object", !110, i64 0, !111, i64 8, !112, i64 16}
!110 = !{!"p1 _ZTS20_php_libxml_node_ptr", !13, i64 0}
!111 = !{!"p1 _ZTS19_php_libxml_ref_obj", !13, i64 0}
!112 = !{!"_zend_object", !34, i64 0, !9, i64 8, !9, i64 12, !19, i64 16, !59, i64 24, !22, i64 32, !10, i64 40}
!113 = !{!101, !90, i64 64}
!114 = !{!88, !9, i64 8}
!115 = !{!101, !92, i64 96}
!116 = distinct !{!116, !117}
!117 = !{!"llvm.loop.mustprogress"}
!118 = !{!119, !91, i64 40}
!119 = !{!"_xmlEntity", !13, i64 0, !9, i64 8, !15, i64 16, !89, i64 24, !89, i64 32, !91, i64 40, !89, i64 48, !89, i64 56, !90, i64 64, !15, i64 72, !15, i64 80, !9, i64 88, !9, i64 92, !15, i64 96, !15, i64 104, !120, i64 112, !15, i64 120, !9, i64 128, !9, i64 132, !9, i64 136, !26, i64 144}
!120 = !{!"p1 _ZTS10_xmlEntity", !13, i64 0}
!121 = !{!122, !13, i64 96}
!122 = !{!"_xmlDtd", !13, i64 0, !9, i64 8, !15, i64 16, !89, i64 24, !89, i64 32, !90, i64 40, !89, i64 48, !89, i64 56, !90, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !15, i64 104, !15, i64 112, !13, i64 120}
!123 = !{!119, !15, i64 16}
!124 = !{!122, !13, i64 120}
!125 = !{!126, !9, i64 80}
!126 = !{!"_xmlAttr", !13, i64 0, !9, i64 8, !15, i64 16, !89, i64 24, !89, i64 32, !89, i64 40, !102, i64 48, !102, i64 56, !90, i64 64, !92, i64 72, !9, i64 80, !13, i64 88}
!127 = !{!101, !89, i64 24}
!128 = !{!101, !102, i64 88}
!129 = !{!109, !110, i64 0}
!130 = !{!107, !9, i64 8}
!131 = !{!107, !89, i64 0}
!132 = !{!119, !9, i64 92}
!133 = !{!119, !89, i64 24}
!134 = !{!119, !9, i64 128}
!135 = !{!101, !89, i64 40}
!136 = !{!119, !90, i64 64}
!137 = !{!88, !93, i64 152}
!138 = !{!119, !15, i64 96}
!139 = !{!119, !15, i64 104}
!140 = !{!119, !15, i64 120}
!141 = !{!119, !15, i64 80}
!142 = !{!119, !15, i64 72}
!143 = !{!101, !15, i64 16}
!144 = !{!101, !92, i64 72}
!145 = !{!96, !13, i64 32}
!146 = !{!147, !13, i64 8}
!147 = !{!"php_libxml_private_data_header", !13, i64 0, !13, i64 8}
!148 = distinct !{!148, !117}
!149 = !{!150, !151, i64 56}
!150 = !{!"", !9, i64 0, !26, i64 8, !23, i64 16, !26, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !151, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !9, i64 88, !152, i64 96, !15, i64 128, !26, i64 136}
!151 = !{!"p1 _ZTS19_php_stream_context", !13, i64 0}
!152 = !{!"hostent", !15, i64 0, !153, i64 8, !9, i64 16, !9, i64 20, !153, i64 24}
!153 = !{!"p2 omnipotent char", !37, i64 0}
!154 = !{!155, !9, i64 4}
!155 = !{!"_xmlError", !9, i64 0, !9, i64 4, !15, i64 8, !9, i64 16, !15, i64 24, !9, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !9, i64 64, !9, i64 68, !13, i64 72, !13, i64 80}
!156 = !{!155, !9, i64 16}
!157 = !{!155, !9, i64 68}
!158 = !{!155, !15, i64 8}
!159 = !{!160, !162, i64 56}
!160 = !{!"_xmlParserCtxt", !161, i64 0, !13, i64 8, !90, i64 16, !9, i64 24, !9, i64 28, !15, i64 32, !15, i64 40, !9, i64 48, !9, i64 52, !162, i64 56, !9, i64 64, !9, i64 68, !163, i64 72, !89, i64 80, !9, i64 88, !9, i64 92, !164, i64 96, !9, i64 104, !165, i64 112, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !167, i64 160, !9, i64 272, !9, i64 276, !15, i64 280, !15, i64 288, !9, i64 296, !9, i64 300, !153, i64 304, !26, i64 312, !26, i64 320, !9, i64 328, !9, i64 332, !9, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !171, i64 368, !9, i64 376, !9, i64 380, !171, i64 384, !9, i64 392, !162, i64 400, !9, i64 408, !9, i64 412, !9, i64 416, !9, i64 420, !13, i64 424, !9, i64 432, !9, i64 436, !13, i64 440, !9, i64 448, !9, i64 452, !93, i64 456, !153, i64 464, !9, i64 472, !9, i64 476, !15, i64 480, !15, i64 488, !15, i64 496, !9, i64 504, !9, i64 508, !9, i64 512, !153, i64 520, !171, i64 528, !172, i64 536, !173, i64 544, !173, i64 552, !9, i64 560, !9, i64 564, !9, i64 568, !9, i64 572, !89, i64 576, !9, i64 584, !102, i64 592, !155, i64 600, !9, i64 688, !26, i64 696, !26, i64 704, !166, i64 712, !9, i64 720, !9, i64 724, !166, i64 728, !9, i64 736, !26, i64 744}
!161 = !{!"p1 _ZTS14_xmlSAXHandler", !13, i64 0}
!162 = !{!"p1 _ZTS15_xmlParserInput", !13, i64 0}
!163 = !{!"p2 _ZTS15_xmlParserInput", !37, i64 0}
!164 = !{!"p2 _ZTS8_xmlNode", !37, i64 0}
!165 = !{!"_xmlParserNodeInfoSeq", !26, i64 0, !26, i64 8, !166, i64 16}
!166 = !{!"p1 _ZTS18_xmlParserNodeInfo", !13, i64 0}
!167 = !{!"_xmlValidCtxt", !13, i64 0, !13, i64 8, !13, i64 16, !89, i64 24, !9, i64 32, !9, i64 36, !164, i64 40, !9, i64 48, !90, i64 56, !9, i64 64, !168, i64 72, !9, i64 80, !9, i64 84, !168, i64 88, !169, i64 96, !170, i64 104}
!168 = !{!"p1 _ZTS14_xmlValidState", !13, i64 0}
!169 = !{!"p1 _ZTS12_xmlAutomata", !13, i64 0}
!170 = !{!"p1 _ZTS17_xmlAutomataState", !13, i64 0}
!171 = !{!"p1 int", !13, i64 0}
!172 = !{!"p1 _ZTS12_xmlStartTag", !13, i64 0}
!173 = !{!"p1 _ZTS13_xmlHashTable", !13, i64 0}
!174 = !{!175, !9, i64 52}
!175 = !{!"_xmlParserInput", !176, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !26, i64 64, !13, i64 72, !15, i64 80, !15, i64 88, !9, i64 96, !9, i64 100, !26, i64 104, !120, i64 112}
!176 = !{!"p1 _ZTS21_xmlParserInputBuffer", !13, i64 0}
!177 = !{!175, !9, i64 56}
!178 = distinct !{!178, !117, !179}
!179 = !{!"llvm.loop.peeled.count", i32 1}
!180 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!181 = !{!155, !9, i64 32}
!182 = !{!183, !78, i64 960}
!183 = !{!"_zend_executor_globals", !46, i64 0, !46, i64 16, !10, i64 32, !184, i64 288, !184, i64 296, !33, i64 304, !33, i64 360, !185, i64 416, !9, i64 424, !23, i64 428, !46, i64 432, !9, i64 448, !22, i64 456, !22, i64 464, !22, i64 472, !54, i64 480, !54, i64 488, !186, i64 496, !26, i64 504, !187, i64 512, !19, i64 520, !9, i64 528, !187, i64 536, !9, i64 544, !26, i64 552, !9, i64 560, !9, i64 564, !9, i64 568, !23, i64 572, !23, i64 573, !188, i64 574, !188, i64 575, !22, i64 576, !26, i64 584, !13, i64 592, !13, i64 600, !33, i64 608, !33, i64 664, !9, i64 720, !23, i64 724, !46, i64 728, !46, i64 744, !18, i64 760, !18, i64 784, !18, i64 808, !19, i64 832, !9, i64 840, !9, i64 844, !26, i64 848, !22, i64 856, !22, i64 864, !189, i64 872, !190, i64 880, !192, i64 904, !78, i64 960, !78, i64 968, !193, i64 976, !10, i64 984, !194, i64 1080, !23, i64 1088, !10, i64 1089, !26, i64 1096, !9, i64 1104, !9, i64 1108, !195, i64 1112, !10, i64 1120, !13, i64 1376, !10, i64 1384, !196, i64 1640, !33, i64 1672, !26, i64 1728, !197, i64 1736, !198, i64 1760, !198, i64 1768, !199, i64 1776, !26, i64 1784, !23, i64 1792, !9, i64 1796, !200, i64 1800, !20, i64 1808, !26, i64 1816, !201, i64 1824, !26, i64 1840, !26, i64 1848, !202, i64 1856, !10, i64 1936}
!184 = !{!"p2 _ZTS11_zend_array", !37, i64 0}
!185 = !{!"p1 _ZTS13__jmp_buf_tag", !13, i64 0}
!186 = !{!"p1 _ZTS14_zend_vm_stack", !13, i64 0}
!187 = !{!"p1 _ZTS18_zend_execute_data", !13, i64 0}
!188 = !{!"zend_atomic_bool_s", !10, i64 0}
!189 = !{!"p1 _ZTS15_zend_ini_entry", !13, i64 0}
!190 = !{!"_zend_objects_store", !191, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!191 = !{!"p2 _ZTS12_zend_object", !37, i64 0}
!192 = !{!"_zend_lazy_objects_store", !33, i64 0}
!193 = !{!"p1 _ZTS8_zend_op", !13, i64 0}
!194 = !{!"p1 _ZTS18_zend_module_entry", !13, i64 0}
!195 = !{!"p1 _ZTS18_HashTableIterator", !13, i64 0}
!196 = !{!"_zend_op", !13, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !9, i64 20, !9, i64 24, !10, i64 28, !10, i64 29, !10, i64 30, !10, i64 31}
!197 = !{!"", !54, i64 0, !54, i64 8, !54, i64 16}
!198 = !{!"p1 _ZTS19_zend_fiber_context", !13, i64 0}
!199 = !{!"p1 _ZTS11_zend_fiber", !13, i64 0}
!200 = !{!"p2 _ZTS16_zend_error_info", !37, i64 0}
!201 = !{!"_zend_call_stack", !13, i64 0, !26, i64 8}
!202 = !{!"_zend_strtod_state", !10, i64 0, !203, i64 64, !15, i64 72}
!203 = !{!"p1 _ZTS19_zend_strtod_bigint", !13, i64 0}
!204 = !{!175, !15, i64 8}
!205 = !{!155, !15, i64 24}
!206 = !{i8 0, i8 2}
!207 = distinct !{null}
!208 = !{!160, !15, i64 280}
!209 = !{!160, !15, i64 344}
!210 = !{!160, !15, i64 352}
!211 = !{!160, !15, i64 360}
!212 = !{!77, !58, i64 0}
!213 = !{!77, !19, i64 16}
!214 = !{!215, !221, i64 120}
!215 = !{!"_php_stream", !216, i64 0, !13, i64 8, !217, i64 16, !217, i64 40, !220, i64 64, !13, i64 72, !46, i64 80, !103, i64 96, !103, i64 96, !103, i64 96, !103, i64 96, !103, i64 96, !103, i64 96, !103, i64 97, !103, i64 97, !10, i64 98, !9, i64 116, !221, i64 120, !222, i64 128, !15, i64 136, !221, i64 144, !26, i64 152, !15, i64 160, !26, i64 168, !26, i64 176, !26, i64 184, !26, i64 192, !219, i64 200}
!216 = !{!"p1 _ZTS15_php_stream_ops", !13, i64 0}
!217 = !{!"_php_stream_filter_chain", !218, i64 0, !218, i64 8, !219, i64 16}
!218 = !{!"p1 _ZTS18_php_stream_filter", !13, i64 0}
!219 = !{!"p1 _ZTS11_php_stream", !13, i64 0}
!220 = !{!"p1 _ZTS19_php_stream_wrapper", !13, i64 0}
!221 = !{!"p1 _ZTS14_zend_resource", !13, i64 0}
!222 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!223 = !{!224, !13, i64 0}
!224 = !{!"_xmlParserInputBuffer", !13, i64 0, !13, i64 8, !13, i64 16, !225, i64 24, !226, i64 32, !226, i64 40, !9, i64 48, !9, i64 52, !26, i64 56}
!225 = !{!"p1 _ZTS23_xmlCharEncodingHandler", !13, i64 0}
!226 = !{!"p1 _ZTS7_xmlBuf", !13, i64 0}
!227 = !{!224, !13, i64 8}
!228 = !{!224, !13, i64 16}
!229 = !{!"branch_weights", i32 4000000, i32 4001}
!230 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!231 = !{!"branch_weights", i32 1, i32 8004000, i32 4000, i32 1}
!232 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!233 = !{!23, !23, i64 0}
!234 = distinct !{!234, !117}
!235 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!236 = !{!237, !26, i64 0}
!237 = !{!"_zend_fcall_info", !26, i64 0, !46, i64 8, !54, i64 24, !54, i64 32, !78, i64 40, !9, i64 48, !22, i64 56}
!238 = !{!112, !19, i64 16}
!239 = distinct !{!239, !117}
!240 = !{!241, !9, i64 40}
!241 = !{!"_php_libxml_ref_obj", !13, i64 0, !242, i64 8, !243, i64 16, !244, i64 24, !245, i64 32, !9, i64 40, !9, i64 44, !9, i64 45}
!242 = !{!"p1 _ZTS17_libxml_doc_props", !13, i64 0}
!243 = !{!"", !26, i64 0}
!244 = !{!"p1 _ZTS30php_libxml_private_data_header", !13, i64 0}
!245 = !{!"p1 _ZTS28php_libxml_document_handlers", !13, i64 0}
!246 = !{!241, !13, i64 0}
!247 = !{!241, !242, i64 8}
!248 = !{!241, !26, i64 16}
!249 = !{!241, !244, i64 24}
!250 = !{!241, !245, i64 32}
!251 = !{!147, !13, i64 0}
!252 = !{!253, !22, i64 0}
!253 = !{!"_libxml_doc_props", !22, i64 0, !23, i64 8, !23, i64 9, !23, i64 10, !23, i64 11, !23, i64 12, !23, i64 13, !23, i64 14}
!254 = !{!126, !89, i64 24}
!255 = !{!101, !15, i64 80}
!256 = !{!119, !13, i64 0}
!257 = !{!258, !15, i64 0}
!258 = !{!"_xmlURI", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !9, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !9, i64 72, !15, i64 80}
!259 = !{!260, !261, i64 0}
!260 = !{!"_php_stream_wrapper", !261, i64 0, !13, i64 8, !9, i64 16}
!261 = !{!"p1 _ZTS23_php_stream_wrapper_ops", !13, i64 0}
!262 = !{!263, !13, i64 24}
!263 = !{!"_php_stream_wrapper_ops", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !15, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80}
!264 = !{!215, !9, i64 116}
end_hunk_3
