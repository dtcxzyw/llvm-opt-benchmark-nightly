Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/php_dom?download=true
inline.NumInlined: 303
inline.NumDeleted: 68
begin_hunk_0_@llvm.assume

declare ptr @zend_get_property_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @zend_verify_property_type(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @zval_ptr_dtor(ptr noundef) local_unnamed_addr #3

declare ptr @zend_std_write_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @php_dom_export_node(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !162  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @zif_dom_import_simplexml(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 44
  %.val = load i32, ptr %i.a, align 4, !tbaa !54
  tail call fastcc void @dom_import_simplexml_common(i32 %.val, ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dom_import_simplexml_common(i32 %.44.val, ptr noundef %0, i32 noundef range(i32 1, 3) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %.44.val, ptr noundef nonnull @.str.288, ptr noundef nonnull %i.a) #15
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !164
  %i.h = load i32, ptr %i.g, align 8, !tbaa !79
  %i.i = sext i32 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.j ; 2 uses
  %i.l = call ptr @php_libxml_import_node(ptr noundef nonnull %i.d) #15 ; 4 uses
  %i.m = icmp ne ptr %i.l, null
  %i.n = icmp ne ptr %i.e, null
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !24
  %.off = add i32 %i.r, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 44 ; 2 uses
  %i.t = load i16, ptr %i.s, align 4              ; 2 uses
  %i.u = and i16 %i.t, 255                        ; 3 uses
  %.not30 = icmp eq i16 %i.u, 0
  %i.v = zext nneg i16 %i.u to i32
  %.not31 = icmp eq i32 %1, %i.v
  %or.cond33 = select i1 %.not30, i1 true, i1 %.not31
  br i1 %or.cond33, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %1, 2
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @zend_argument_type_error(i32 noundef 1, ptr noundef nonnull @.str.289) #15
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @zend_argument_type_error(i32 noundef 1, ptr noundef nonnull @.str.290) #15
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.x = trunc nuw nsw i32 %1 to i16
  %i.y = and i16 %i.t, -256
  %i.z = or disjoint i16 %i.y, %i.x
  store i16 %i.z, ptr %i.s, align 4
  %i.aa = icmp ne i16 %i.u, 2
  %i.ab = icmp eq i32 %1, 2
  %or.cond3 = and i1 %i.ab, %i.aa
  br i1 %or.cond3, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25 ; 2 uses
  %.not32 = icmp eq ptr %i.ad, null
  br i1 %.not32, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !80
  call void @dom_document_convert_to_modern(ptr noundef %i.ae, ptr noundef nonnull %i.ad) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.af = call zeroext i1 @php_dom_create_object(ptr noundef nonnull %i.l, ptr noundef %0, ptr noundef nonnull %i.k) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.d, %bb.c, %bb.b
  call void (i32, ptr, ...) @zend_argument_type_error(i32 noundef 1, ptr noundef nonnull @.str.291) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.g, %bb.h, %bb.a, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_Dom_import_simplexml(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 44
  %.val = load i32, ptr %i.a, align 4, !tbaa !54
  tail call fastcc void @dom_import_simplexml_common(i32 %.val, ptr noundef %1, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @php_dom_update_document_after_clone(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 4 uses
  %i.e = icmp ne ptr %i.b, null
  %i.f = icmp ne ptr %i.d, null
  %or.cond.i = and i1 %i.e, %i.f
  br i1 %or.cond.i, label %dom_get_doc_props_read_only.exit.i, label %dom_copy_document_ref.exit

dom_get_doc_props_read_only.exit.i:               ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.h, null
  %spec.select.i = select i1 %.not6.i.i, ptr @default_doc_props, ptr %i.h ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %.not11.i.i = icmp eq ptr %i.j, null
  br i1 %.not11.i.i, label %bb.b, label %dom_get_doc_props.exit.i

bb.b:                                             ; preds = %dom_get_doc_props_read_only.exit.i
  %i.k = tail call noalias ptr @_emalloc_16() #15 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) @default_doc_props, i64 16, i1 false)
  store ptr %i.k, ptr %i.i, align 8, !tbaa !32
  br label %dom_get_doc_props.exit.i

dom_get_doc_props.exit.i:                         ; preds = %bb.b, %dom_get_doc_props_read_only.exit.i
  %.0.i30.i = phi ptr [ %i.j, %dom_get_doc_props_read_only.exit.i ], [ %i.k, %bb.b ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i30.i, i64 8
  %i.n = load <4 x i8>, ptr %i.l, align 8, !tbaa !82
  store <4 x i8> %i.n, ptr %i.m, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 12
  %i.p = load i8, ptr %i.o, align 4, !tbaa !165, !range !57, !noundef !55
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i30.i, i64 12
  store i8 %i.p, ptr %i.q, align 4, !tbaa !165
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 13
  %i.s = load i8, ptr %i.r, align 1, !tbaa !56, !range !57, !noundef !55
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i30.i, i64 13
  store i8 %i.s, ptr %i.t, align 1, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 14
  %i.v = load i8, ptr %i.u, align 2, !tbaa !166, !range !57, !noundef !55
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i30.i, i64 14
  store i8 %i.v, ptr %i.w, align 2, !tbaa !166
  %i.x = load ptr, ptr %spec.select.i, align 8, !tbaa !36
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %dom_get_doc_props.exit.i
  %i.y = tail call noalias ptr @_emalloc_56() #15 ; 2 uses
  store ptr %i.y, ptr %.0.i30.i, align 8, !tbaa !36
  tail call void @_zend_hash_init(ptr noundef %i.y, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #15
  %i.z = load ptr, ptr %.0.i30.i, align 8, !tbaa !36
  %i.aa = load ptr, ptr %spec.select.i, align 8, !tbaa !36
  tail call void @zend_hash_copy(ptr noundef %i.z, ptr noundef %i.aa, ptr noundef null) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %dom_get_doc_props.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.ac = load i16, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %4 = trunc i16 %i.ac to i8
  store i8 %4, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !167
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !167
  br label %dom_copy_document_ref.exit

dom_copy_document_ref.exit:                       ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @zm_startup_dom(i32 %0, i32 noundef %1) #1 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %4 = alloca %struct._zend_class_entry, align 8  ; 7 uses
  %5 = alloca %struct._zval_struct, align 8       ; 4 uses
  %6 = alloca %struct.zend_type, align 8          ; 6 uses
  %7 = alloca %struct._zval_struct, align 8       ; 4 uses
  %8 = alloca %struct.zend_type, align 8          ; 6 uses
  %9 = alloca %struct._zend_class_entry, align 8  ; 7 uses
  %10 = alloca %struct._zval_struct, align 8      ; 4 uses
  %11 = alloca %struct.zend_type, align 8         ; 6 uses
  %12 = alloca %struct._zval_struct, align 8      ; 4 uses
  %13 = alloca %struct.zend_type, align 8         ; 6 uses
  %14 = alloca %struct._zval_struct, align 8      ; 5 uses
  %15 = alloca %struct._zval_struct, align 8      ; 5 uses
  %16 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %17 = alloca %struct._zval_struct, align 8      ; 4 uses
  %18 = alloca %struct.zend_type, align 8         ; 6 uses
  %19 = alloca %struct._zval_struct, align 8      ; 4 uses
  %20 = alloca %struct.zend_type, align 8         ; 6 uses
  %21 = alloca %struct._zval_struct, align 8      ; 5 uses
  %22 = alloca %struct._zval_struct, align 8      ; 5 uses
  %23 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %24 = alloca %struct._zval_struct, align 8      ; 4 uses
  %25 = alloca %struct.zend_type, align 8         ; 6 uses
  %26 = alloca %struct._zval_struct, align 8      ; 5 uses
  %27 = alloca %struct._zval_struct, align 8      ; 5 uses
  %28 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %29 = alloca %struct._zval_struct, align 8      ; 4 uses
  %30 = alloca %struct.zend_type, align 8         ; 6 uses
  %31 = alloca %struct._zval_struct, align 8      ; 4 uses
  %32 = alloca %struct.zend_type, align 8         ; 6 uses
  %33 = alloca %struct._zval_struct, align 8      ; 5 uses
  %34 = alloca %struct._zval_struct, align 8      ; 5 uses
  %35 = alloca %struct._zval_struct, align 8      ; 5 uses
  %36 = alloca %struct._zval_struct, align 8      ; 5 uses
  %37 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %38 = alloca %struct._zval_struct, align 8      ; 5 uses
  %39 = alloca %struct._zval_struct, align 8      ; 5 uses
  %40 = alloca %struct._zval_struct, align 8      ; 5 uses
  %41 = alloca %struct._zval_struct, align 8      ; 5 uses
  %42 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %43 = alloca %struct._zval_struct, align 8      ; 5 uses
  %44 = alloca %struct._zval_struct, align 8      ; 5 uses
  %45 = alloca %struct._zval_struct, align 8      ; 5 uses
  %46 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %47 = alloca %struct._zval_struct, align 8      ; 4 uses
  %48 = alloca %struct.zend_type, align 8         ; 6 uses
  %49 = alloca %struct._zval_struct, align 8      ; 4 uses
  %50 = alloca %struct.zend_type, align 8         ; 6 uses
  %51 = alloca %struct._zval_struct, align 8      ; 4 uses
  %52 = alloca %struct.zend_type, align 8         ; 6 uses
  %53 = alloca %struct._zval_struct, align 8      ; 5 uses
  %54 = alloca %struct._zval_struct, align 8      ; 5 uses
  %55 = alloca %struct._zval_struct, align 8      ; 5 uses
  %56 = alloca %struct._zval_struct, align 8      ; 5 uses
  %57 = alloca %struct._zval_struct, align 8      ; 5 uses
  %58 = alloca %struct._zval_struct, align 8      ; 5 uses
  %59 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %60 = alloca %struct._zval_struct, align 8      ; 4 uses
  %61 = alloca %struct.zend_type, align 8         ; 6 uses
  %62 = alloca %struct._zval_struct, align 8      ; 4 uses
  %63 = alloca %struct.zend_type, align 8         ; 6 uses
  %64 = alloca %struct._zval_struct, align 8      ; 4 uses
  %65 = alloca %struct.zend_type, align 8         ; 6 uses
  %66 = alloca %struct._zval_struct, align 8      ; 4 uses
  %67 = alloca %struct.zend_type, align 8         ; 6 uses
  %68 = alloca %struct._zval_struct, align 8      ; 4 uses
  %69 = alloca %struct.zend_type, align 8         ; 6 uses
  %70 = alloca %struct._zval_struct, align 8      ; 4 uses
  %71 = alloca %struct.zend_type, align 8         ; 6 uses
  %72 = alloca %struct._zval_struct, align 8      ; 5 uses
  %73 = alloca %struct._zval_struct, align 8      ; 5 uses
  %74 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %75 = alloca %struct._zval_struct, align 8      ; 4 uses
  %76 = alloca %struct.zend_type, align 8         ; 6 uses
  %77 = alloca %struct._zval_struct, align 8      ; 4 uses
  %78 = alloca %struct.zend_type, align 8         ; 6 uses
  %79 = alloca %struct._zval_struct, align 8      ; 5 uses
  %80 = alloca %struct._zval_struct, align 8      ; 5 uses
  %81 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %82 = alloca %struct._zval_struct, align 8      ; 4 uses
  %83 = alloca %struct.zend_type, align 8         ; 6 uses
  %84 = alloca %struct._zval_struct, align 8      ; 4 uses
  %85 = alloca %struct.zend_type, align 8         ; 6 uses
  %86 = alloca %struct._zval_struct, align 8      ; 5 uses
  %87 = alloca %struct._zval_struct, align 8      ; 5 uses
  %88 = alloca %struct._zval_struct, align 8      ; 5 uses
  %89 = alloca %struct._zval_struct, align 8      ; 5 uses
  %90 = alloca %struct._zval_struct, align 8      ; 5 uses
  %91 = alloca %struct._zval_struct, align 8      ; 5 uses
  %92 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %93 = alloca %struct._zval_struct, align 8      ; 4 uses
  %94 = alloca %struct.zend_type, align 8         ; 6 uses
  %95 = alloca %struct._zval_struct, align 8      ; 4 uses
  %96 = alloca %struct.zend_type, align 8         ; 6 uses
  %97 = alloca %struct._zval_struct, align 8      ; 4 uses
  %98 = alloca %struct.zend_type, align 8         ; 6 uses
  %99 = alloca %struct._zval_struct, align 8      ; 4 uses
  %100 = alloca %struct.zend_type, align 8        ; 6 uses
  %101 = alloca %struct._zval_struct, align 8     ; 4 uses
  %102 = alloca %struct.zend_type, align 8        ; 6 uses
  %103 = alloca %struct._zval_struct, align 8     ; 4 uses
  %104 = alloca %struct.zend_type, align 8        ; 6 uses
  %105 = alloca %struct._zval_struct, align 8     ; 5 uses
  %106 = alloca %struct._zval_struct, align 8     ; 5 uses
  %107 = alloca %struct._zval_struct, align 8     ; 5 uses
  %108 = alloca %struct._zval_struct, align 8     ; 5 uses
  %109 = alloca %struct._zval_struct, align 8     ; 5 uses
  %110 = alloca %struct._zval_struct, align 8     ; 5 uses
  %111 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %112 = alloca %struct._zval_struct, align 8     ; 4 uses
  %113 = alloca %struct.zend_type, align 8        ; 6 uses
  %114 = alloca %struct._zval_struct, align 8     ; 4 uses
  %115 = alloca %struct.zend_type, align 8        ; 6 uses
  %116 = alloca %struct._zval_struct, align 8     ; 4 uses
  %117 = alloca %struct.zend_type, align 8        ; 6 uses
  %118 = alloca %struct._zval_struct, align 8     ; 4 uses
  %119 = alloca %struct.zend_type, align 8        ; 6 uses
  %120 = alloca %struct._zval_struct, align 8     ; 4 uses
  %121 = alloca %struct.zend_type, align 8        ; 6 uses
  %122 = alloca %struct._zval_struct, align 8     ; 4 uses
  %123 = alloca %struct.zend_type, align 8        ; 6 uses
  %124 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %125 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %126 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %127 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %128 = alloca %struct._zval_struct, align 8     ; 5 uses
  %129 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %130 = alloca %struct._zval_struct, align 8     ; 4 uses
  %131 = alloca %struct.zend_type, align 8        ; 6 uses
  %132 = alloca %struct._zval_struct, align 8     ; 5 uses
  %133 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %134 = alloca %struct._zval_struct, align 8     ; 4 uses
  %135 = alloca %struct.zend_type, align 8        ; 6 uses
  %136 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %137 = alloca %struct._zval_struct, align 8     ; 5 uses
  %138 = alloca %struct._zval_struct, align 8     ; 5 uses
  %139 = alloca %struct._zval_struct, align 8     ; 5 uses
  %140 = alloca %struct._zval_struct, align 8     ; 5 uses
  %141 = alloca %struct._zval_struct, align 8     ; 5 uses
  %142 = alloca %struct._zval_struct, align 8     ; 5 uses
  %143 = alloca %struct._zval_struct, align 8     ; 5 uses
  %144 = alloca %struct._zval_struct, align 8     ; 5 uses
  %145 = alloca %struct._zval_struct, align 8     ; 5 uses
  %146 = alloca %struct._zval_struct, align 8     ; 5 uses
  %147 = alloca %struct._zval_struct, align 8     ; 5 uses
  %148 = alloca %struct._zval_struct, align 8     ; 5 uses
  %149 = alloca %struct._zval_struct, align 8     ; 5 uses
  %150 = alloca %struct._zval_struct, align 8     ; 5 uses
  %151 = alloca %struct._zval_struct, align 8     ; 5 uses
  %152 = alloca %struct._zval_struct, align 8     ; 5 uses
  %153 = alloca %struct._zval_struct, align 8     ; 5 uses
  %154 = alloca %struct._zval_struct, align 8     ; 5 uses
  %155 = alloca %struct._zend_class_entry, align 8 ; 7 uses
  %156 = alloca %struct._zval_struct, align 8     ; 4 uses
  %157 = alloca %struct.zend_type, align 8        ; 6 uses
  %158 = alloca %struct._zval_struct, align 8     ; 4 uses
  %159 = alloca %struct.zend_type, align 8        ; 6 uses
  %160 = alloca %struct._zval_struct, align 8     ; 4 uses
  %161 = alloca %struct.zend_type, align 8        ; 6 uses
  %162 = alloca %struct._zval_struct, align 8     ; 4 uses
  %163 = alloca %struct.zend_type, align 8        ; 6 uses
  %164 = alloca %struct._zval_struct, align 8     ; 4 uses
  %165 = alloca %struct.zend_type, align 8        ; 6 uses
  %166 = alloca %struct._zval_struct, align 8     ; 4 uses
  %167 = alloca %struct.zend_type, align 8        ; 6 uses
  %168 = alloca %struct._zval_struct, align 8     ; 4 uses
  %169 = alloca %struct.zend_type, align 8        ; 6 uses
  %170 = alloca %struct._zval_struct, align 8     ; 4 uses
  %171 = alloca %struct.zend_type, align 8        ; 6 uses
  %172 = alloca %struct._zval_struct, align 8     ; 4 uses
  %173 = alloca %struct.zend_type, align 8        ; 6 uses
  %174 = alloca %struct._zval_struct, align 8     ; 4 uses
  %175 = alloca %struct.zend_type, align 8        ; 6 uses
  %176 = alloca %struct._zval_struct, align 8     ; 4 uses
  %177 = alloca %struct.zend_type, align 8        ; 6 uses
  %178 = alloca %struct._zval_struct, align 8     ; 4 uses
  %179 = alloca %struct.zend_type, align 8        ; 6 uses
  %180 = alloca %struct._zval_struct, align 8     ; 4 uses
  %181 = alloca %struct.zend_type, align 8        ; 6 uses
  %182 = alloca %struct._zval_struct, align 8     ; 4 uses
  %183 = alloca %struct.zend_type, align 8        ; 6 uses
  %184 = alloca %struct._zval_struct, align 8     ; 4 uses
  %185 = alloca %struct.zend_type, align 8        ; 6 uses
  %186 = alloca %struct._zval_struct, align 8     ; 4 uses
  %187 = alloca %struct.zend_type, align 8        ; 6 uses
  %188 = alloca %struct._zval_struct, align 8     ; 4 uses
end_hunk_0
