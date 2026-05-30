inline.NumInlined: 62
inline.NumDeleted: 37
begin_hunk_0_@cgiesc_unescape:bb.a
  %i.t = load i64, ptr @id_accept_charset, align 8, !tbaa !10
  %i.u = call i64 @rb_cvar_get(i64 noundef %.0.i.i8, i64 noundef %i.t) #7
  br label %accept_charset.exit

accept_charset.exit:                              ; preds = %bb.d, %rb_class_of.exit.i
  %.0.i = phi i64 [ %i.j, %bb.d ], [ %i.u, %rb_class_of.exit.i ]
  %i.v = load i64, ptr %i.a, align 8, !tbaa !10
  %i.w = call fastcc i64 @optimized_unescape(i64 noundef %i.v, i64 noundef %.0.i, i32 noundef 1)
  br label %bb.l

rb_enc_str_asciicompat_p.exit.thread:             ; preds = %rb_check_arity.exit, %rb_enc_str_asciicompat_p.exit
  %i.x = call i64 @rb_call_super(i32 noundef %0, ptr noundef nonnull %1) #7
  br label %bb.l

bb.l:                                             ; preds = %rb_enc_str_asciicompat_p.exit.thread, %accept_charset.exit
  %.0 = phi i64 [ %i.w, %accept_charset.exit ], [ %i.x, %rb_enc_str_asciicompat_p.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0
}

declare void @rb_prepend_module(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_extend_object(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @optimized_escape_html(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 1537228672809129300
  br i1 %i.e, label %bb.b, label %escaped_length.exit

bb.b:                                             ; preds = %bb.a
  tail call void @ruby_malloc_size_overflow(i64 noundef %i.d, i64 noundef 6) #9
  unreachable

escaped_length.exit:                              ; preds = %bb.a
  %i.f = mul nsw i64 %i.d, 6                      ; 4 uses
  %i.g = icmp ult i64 %i.f, 1024
  br i1 %i.g, label %escaped_length.exit32, label %escaped_length.exit33

escaped_length.exit32:                            ; preds = %escaped_length.exit
  store i64 0, ptr %i.a, align 8, !tbaa !10
  %i.h = alloca i8, i64 %i.f, align 16
  br label %bb.c

escaped_length.exit33:                            ; preds = %escaped_length.exit
  %i.i = add nsw i64 %i.f, 6
  %i.j = lshr i64 %i.i, 3
  %i.k = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef range(i64 -9223372036854775808, 9223372036854775801) %i.f, i64 noundef %i.j) #10
  br label %bb.c

bb.c:                                             ; preds = %escaped_length.exit33, %escaped_length.exit32
  %i.l = phi ptr [ %i.h, %escaped_length.exit32 ], [ %i.k, %escaped_length.exit33 ] ; 4 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !20
  %i.n = and i64 %i.m, 8192
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.p, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.r = load i64, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  %i.t = icmp sgt i64 %i.r, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %RSTRING_PTR.exit, %bb.g
  %.02835 = phi ptr [ %i.u, %bb.g ], [ %i.q, %RSTRING_PTR.exit ] ; 2 uses
  %.02934 = phi ptr [ %.1, %bb.g ], [ %i.l, %RSTRING_PTR.exit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02835, i64 1 ; 2 uses
  %i.v = load i8, ptr %.02835, align 1, !tbaa !21 ; 2 uses
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @html_escape_table, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !26    ; 2 uses
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.aa = zext i8 %i.y to i64                     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02934, ptr nonnull align 1 %i.z, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.02934, i64 %i.aa
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.02934, i64 1
  store i8 %i.v, ptr %.02934, align 1, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi ptr [ %i.ab, %bb.e ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ad = icmp ult ptr %i.u, %i.s
  br i1 %i.ad, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load i64, ptr %i.c, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %RSTRING_PTR.exit
  %i.ae = phi i64 [ %i.r, %RSTRING_PTR.exit ], [ %.pre, %._crit_edge.loopexit ]
  %.029.lcssa = phi ptr [ %i.l, %RSTRING_PTR.exit ], [ %.1, %._crit_edge.loopexit ]
  %i.af = ptrtoint ptr %.029.lcssa to i64
  %i.ag = ptrtoint ptr %i.l to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = icmp slt i64 %i.ae, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.aj = call i64 @rb_str_new(ptr noundef nonnull %i.l, i64 noundef %i.ah) #7 ; 2 uses
  %i.ak = call ptr @rb_enc_get(i64 noundef %0) #7
  %i.al = call i64 @rb_enc_associate(i64 noundef %i.aj, ptr noundef %i.ak) #7 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.am = call i64 @rb_str_dup(i64 noundef %0) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i64 [ %i.aj, %bb.h ], [ %i.am, %bb.i ]
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0
}

declare i64 @rb_call_super(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #1

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @rb_enc_associate(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i64 @ruby_scan_digits(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_buf_new(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @optimized_escape(i64 noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 37, ptr %i.a, align 4
  %i.b = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17   ; 6 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !20
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.a ] ; 5 uses
  %i.j = icmp sgt i64 %i.d, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %RSTRING_PTR.exit
  %.not49 = icmp eq i32 %1, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  br i1 %.not49, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %url_unreserved_char.exit.us
  %.03446.us = phi i64 [ %i.ad, %url_unreserved_char.exit.us ], [ 0, %.lr.ph ] ; 4 uses
  %.03545.us = phi i64 [ %.2.us, %url_unreserved_char.exit.us ], [ 0, %.lr.ph ] ; 68 uses
  %.03644.us = phi i64 [ %.137.us, %url_unreserved_char.exit.us ], [ 0, %.lr.ph ] ; 68 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.03446.us
  %i.n = load i8, ptr %i.m, align 1, !tbaa !21    ; 2 uses
  switch i8 %i.n, label %bb.c [
    i8 48, label %url_unreserved_char.exit.us
    i8 49, label %url_unreserved_char.exit.us
    i8 50, label %url_unreserved_char.exit.us
    i8 51, label %url_unreserved_char.exit.us
    i8 52, label %url_unreserved_char.exit.us
    i8 53, label %url_unreserved_char.exit.us
    i8 54, label %url_unreserved_char.exit.us
    i8 55, label %url_unreserved_char.exit.us
    i8 56, label %url_unreserved_char.exit.us
    i8 57, label %url_unreserved_char.exit.us
    i8 97, label %url_unreserved_char.exit.us
    i8 98, label %url_unreserved_char.exit.us
    i8 99, label %url_unreserved_char.exit.us
    i8 100, label %url_unreserved_char.exit.us
    i8 101, label %url_unreserved_char.exit.us
    i8 102, label %url_unreserved_char.exit.us
    i8 103, label %url_unreserved_char.exit.us
    i8 104, label %url_unreserved_char.exit.us
    i8 105, label %url_unreserved_char.exit.us
    i8 106, label %url_unreserved_char.exit.us
    i8 107, label %url_unreserved_char.exit.us
    i8 108, label %url_unreserved_char.exit.us
    i8 109, label %url_unreserved_char.exit.us
    i8 110, label %url_unreserved_char.exit.us
    i8 111, label %url_unreserved_char.exit.us
    i8 112, label %url_unreserved_char.exit.us
    i8 113, label %url_unreserved_char.exit.us
    i8 114, label %url_unreserved_char.exit.us
    i8 115, label %url_unreserved_char.exit.us
    i8 116, label %url_unreserved_char.exit.us
    i8 117, label %url_unreserved_char.exit.us
    i8 118, label %url_unreserved_char.exit.us
    i8 119, label %url_unreserved_char.exit.us
    i8 120, label %url_unreserved_char.exit.us
    i8 121, label %url_unreserved_char.exit.us
    i8 122, label %url_unreserved_char.exit.us
    i8 65, label %url_unreserved_char.exit.us
    i8 66, label %url_unreserved_char.exit.us
    i8 67, label %url_unreserved_char.exit.us
    i8 68, label %url_unreserved_char.exit.us
    i8 69, label %url_unreserved_char.exit.us
    i8 70, label %url_unreserved_char.exit.us
    i8 71, label %url_unreserved_char.exit.us
    i8 72, label %url_unreserved_char.exit.us
    i8 73, label %url_unreserved_char.exit.us
    i8 74, label %url_unreserved_char.exit.us
    i8 75, label %url_unreserved_char.exit.us
    i8 76, label %url_unreserved_char.exit.us
    i8 77, label %url_unreserved_char.exit.us
    i8 78, label %url_unreserved_char.exit.us
    i8 79, label %url_unreserved_char.exit.us
    i8 80, label %url_unreserved_char.exit.us
    i8 81, label %url_unreserved_char.exit.us
    i8 82, label %url_unreserved_char.exit.us
    i8 83, label %url_unreserved_char.exit.us
    i8 84, label %url_unreserved_char.exit.us
    i8 85, label %url_unreserved_char.exit.us
    i8 86, label %url_unreserved_char.exit.us
    i8 87, label %url_unreserved_char.exit.us
    i8 88, label %url_unreserved_char.exit.us
    i8 89, label %url_unreserved_char.exit.us
    i8 90, label %url_unreserved_char.exit.us
    i8 45, label %url_unreserved_char.exit.us
    i8 46, label %url_unreserved_char.exit.us
    i8 95, label %url_unreserved_char.exit.us
    i8 126, label %url_unreserved_char.exit.us
  ]

bb.c:                                             ; preds = %.lr.ph.split.us
  %.not41.us = icmp eq i64 %.03545.us, 0
  br i1 %.not41.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = call i64 @rb_str_buf_new(i64 noundef %i.d) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.us = phi i64 [ %.03545.us, %bb.c ], [ %i.o, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 %.03644.us
  %i.q = sub nsw i64 %.03446.us, %.03644.us
  %i.r = call i64 @rb_str_cat(i64 noundef %.1.us, ptr noundef %i.p, i64 noundef %i.q) #7 ; 0 uses
  %i.s = add nuw nsw i64 %.03446.us, 1
  %i.t = zext i8 %i.n to i32                      ; 2 uses
  %i.u = lshr i32 %i.t, 4
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ruby_hexdigits, i64 16), i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !21
  store i8 %i.x, ptr %i.k, align 1, !tbaa !21
  %i.y = and i32 %i.t, 15
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ruby_hexdigits, i64 16), i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !21
  store i8 %i.ab, ptr %i.l, align 2, !tbaa !21
  %i.ac = call i64 @rb_str_cat(i64 noundef %.1.us, ptr noundef nonnull %i.a, i64 noundef 3) #7 ; 0 uses
  br label %url_unreserved_char.exit.us

url_unreserved_char.exit.us:                      ; preds = %bb.e, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us, %.lr.ph.split.us
  %.137.us = phi i64 [ %i.s, %bb.e ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ], [ %.03644.us, %.lr.ph.split.us ] ; 2 uses
  %.2.us = phi i64 [ %.1.us, %bb.e ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ], [ %.03545.us, %.lr.ph.split.us ] ; 2 uses
  %i.ad = add nuw nsw i64 %.03446.us, 1           ; 2 uses
  %exitcond51.not = icmp eq i64 %i.ad, %i.d
  br i1 %exitcond51.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !29

.lr.ph.split:                                     ; preds = %.lr.ph, %url_unreserved_char.exit
  %.03446 = phi i64 [ %i.ax, %url_unreserved_char.exit ], [ 0, %.lr.ph ] ; 4 uses
  %.03545 = phi i64 [ %.2, %url_unreserved_char.exit ], [ 0, %.lr.ph ] ; 68 uses
  %.03644 = phi i64 [ %.137, %url_unreserved_char.exit ], [ 0, %.lr.ph ] ; 68 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 %.03446
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !21  ; 3 uses
  switch i8 %i.af, label %bb.f [
    i8 48, label %url_unreserved_char.exit
    i8 49, label %url_unreserved_char.exit
    i8 50, label %url_unreserved_char.exit
    i8 51, label %url_unreserved_char.exit
    i8 52, label %url_unreserved_char.exit
    i8 53, label %url_unreserved_char.exit
    i8 54, label %url_unreserved_char.exit
    i8 55, label %url_unreserved_char.exit
    i8 56, label %url_unreserved_char.exit
    i8 57, label %url_unreserved_char.exit
    i8 97, label %url_unreserved_char.exit
    i8 98, label %url_unreserved_char.exit
    i8 99, label %url_unreserved_char.exit
    i8 100, label %url_unreserved_char.exit
    i8 101, label %url_unreserved_char.exit
    i8 102, label %url_unreserved_char.exit
    i8 103, label %url_unreserved_char.exit
    i8 104, label %url_unreserved_char.exit
    i8 105, label %url_unreserved_char.exit
    i8 106, label %url_unreserved_char.exit
    i8 107, label %url_unreserved_char.exit
    i8 108, label %url_unreserved_char.exit
    i8 109, label %url_unreserved_char.exit
    i8 110, label %url_unreserved_char.exit
    i8 111, label %url_unreserved_char.exit
    i8 112, label %url_unreserved_char.exit
    i8 113, label %url_unreserved_char.exit
    i8 114, label %url_unreserved_char.exit
    i8 115, label %url_unreserved_char.exit
    i8 116, label %url_unreserved_char.exit
    i8 117, label %url_unreserved_char.exit
    i8 118, label %url_unreserved_char.exit
    i8 119, label %url_unreserved_char.exit
    i8 120, label %url_unreserved_char.exit
    i8 121, label %url_unreserved_char.exit
    i8 122, label %url_unreserved_char.exit
    i8 65, label %url_unreserved_char.exit
    i8 66, label %url_unreserved_char.exit
    i8 67, label %url_unreserved_char.exit
    i8 68, label %url_unreserved_char.exit
    i8 69, label %url_unreserved_char.exit
    i8 70, label %url_unreserved_char.exit
    i8 71, label %url_unreserved_char.exit
    i8 72, label %url_unreserved_char.exit
    i8 73, label %url_unreserved_char.exit
    i8 74, label %url_unreserved_char.exit
    i8 75, label %url_unreserved_char.exit
    i8 76, label %url_unreserved_char.exit
    i8 77, label %url_unreserved_char.exit
    i8 78, label %url_unreserved_char.exit
    i8 79, label %url_unreserved_char.exit
    i8 80, label %url_unreserved_char.exit
    i8 81, label %url_unreserved_char.exit
    i8 82, label %url_unreserved_char.exit
    i8 83, label %url_unreserved_char.exit
    i8 84, label %url_unreserved_char.exit
    i8 85, label %url_unreserved_char.exit
    i8 86, label %url_unreserved_char.exit
    i8 87, label %url_unreserved_char.exit
    i8 88, label %url_unreserved_char.exit
    i8 89, label %url_unreserved_char.exit
    i8 90, label %url_unreserved_char.exit
    i8 45, label %url_unreserved_char.exit
    i8 46, label %url_unreserved_char.exit
    i8 95, label %url_unreserved_char.exit
    i8 126, label %url_unreserved_char.exit
  ]

bb.f:                                             ; preds = %.lr.ph.split
  %.not41 = icmp eq i64 %.03545, 0
  br i1 %.not41, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = call i64 @rb_str_buf_new(i64 noundef %i.d) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i64 [ %.03545, %bb.f ], [ %i.ag, %bb.g ] ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %i.i, i64 %.03644
  %i.ai = sub nsw i64 %.03446, %.03644
  %i.aj = call i64 @rb_str_cat(i64 noundef %.1, ptr noundef %i.ah, i64 noundef %i.ai) #7 ; 0 uses
  %i.ak = add nuw nsw i64 %.03446, 1              ; 2 uses
  %i.al = icmp eq i8 %i.af, 32
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = call i64 @rb_str_cat(i64 noundef %.1, ptr noundef nonnull @.str.19, i64 noundef 1) #7 ; 0 uses
  br label %url_unreserved_char.exit

bb.j:                                             ; preds = %bb.h
  %i.an = zext i8 %i.af to i32                    ; 2 uses
  %i.ao = lshr i32 %i.an, 4
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ruby_hexdigits, i64 16), i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !21
  store i8 %i.ar, ptr %i.k, align 1, !tbaa !21
  %i.as = and i32 %i.an, 15
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ruby_hexdigits, i64 16), i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !21
  store i8 %i.av, ptr %i.l, align 2, !tbaa !21
  %i.aw = call i64 @rb_str_cat(i64 noundef %.1, ptr noundef nonnull %i.a, i64 noundef 3) #7 ; 0 uses
  br label %url_unreserved_char.exit

url_unreserved_char.exit:                         ; preds = %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %bb.i, %bb.j
  %.137 = phi i64 [ %i.ak, %bb.j ], [ %i.ak, %bb.i ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ], [ %.03644, %.lr.ph.split ] ; 2 uses
  %.2 = phi i64 [ %.1, %bb.j ], [ %.1, %bb.i ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ], [ %.03545, %.lr.ph.split ] ; 2 uses
  %i.ax = add nuw nsw i64 %.03446, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !29

._crit_edge:                                      ; preds = %url_unreserved_char.exit, %url_unreserved_char.exit.us
  %.036.lcssa = phi i64 [ %.137.us, %url_unreserved_char.exit.us ], [ %.137, %url_unreserved_char.exit ] ; 2 uses
  %.035.lcssa = phi i64 [ %.2.us, %url_unreserved_char.exit.us ], [ %.2, %url_unreserved_char.exit ] ; 4 uses
  %.not = icmp eq i64 %.035.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds i8, ptr %i.i, i64 %.036.lcssa
  %i.az = sub nsw i64 %i.d, %.036.lcssa
  %i.ba = call i64 @rb_str_cat(i64 noundef %.035.lcssa, ptr noundef %i.ay, i64 noundef %i.az) #7 ; 0 uses
  %i.bb = call ptr @rb_enc_get(i64 noundef %0) #7
  %i.bc = call i64 @rb_enc_associate(i64 noundef %.035.lcssa, ptr noundef %i.bb) #7 ; 0 uses
  br label %bb.l

._crit_edge.thread:                               ; preds = %RSTRING_PTR.exit, %._crit_edge
  %i.bd = call i64 @rb_str_dup(i64 noundef %0) #7
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %bb.k
  %.0 = phi i64 [ %.035.lcssa, %bb.k ], [ %i.bd, %._crit_edge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @optimized_unescape(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 9 uses
  %i.b = tail call ptr @rb_to_encoding(i64 noundef %1) #7
  %i.c = tail call i32 @rb_enc_to_index(ptr noundef %i.b) #8 ; 2 uses
  %i.d = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 8 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !20
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ] ; 5 uses
  %i.l = icmp sgt i64 %i.f, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit.thread

.lr.ph:                                           ; preds = %RSTRING_PTR.exit
  %.not103 = icmp eq i32 %2, 0
  br i1 %.not103, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.i
  %.05897.us = phi i64 [ %i.ap, %bb.i ], [ 0, %.lr.ph ] ; 7 uses
  %.05995.us = phi i64 [ %.160.ph.us, %bb.i ], [ 0, %.lr.ph ] ; 6 uses
  %.06193.us = phi i64 [ %.263.ph.us, %bb.i ], [ 0, %.lr.ph ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %.05897.us ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !21
  %i.o = icmp eq i8 %i.n, 37
  br i1 %i.o, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.p = add nsw i64 %.05897.us, 3                ; 2 uses
  %i.q = icmp sgt i64 %i.p, %i.f
  br i1 %i.q, label %.split.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.m, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !21
  %.fr = freeze i8 %i.s                           ; 3 uses
  %i.t = sext i8 %.fr to i32
  %i.u = add nsw i32 %i.t, -58
  %i.v = icmp ult i32 %i.u, -10
  br i1 %i.v, label %switch.early.test.us, label %bb.e

switch.early.test.us:                             ; preds = %bb.d
  switch i8 %.fr, label %bb.i [
    i8 102, label %bb.e
    i8 101, label %bb.e
    i8 100, label %bb.e
    i8 99, label %bb.e
    i8 98, label %bb.e
    i8 97, label %bb.e
    i8 70, label %bb.e
    i8 69, label %bb.e
    i8 68, label %bb.e
    i8 67, label %bb.e
    i8 66, label %bb.e
    i8 65, label %bb.e
  ]

bb.e:                                             ; preds = %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %bb.d
  %i.w = getelementptr i8, ptr %i.m, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !21
  %.fr107 = freeze i8 %i.x                        ; 3 uses
  %i.y = sext i8 %.fr107 to i32
  %i.z = add nsw i32 %i.y, -58
  %i.aa = icmp ult i32 %i.z, -10
  br i1 %i.aa, label %switch.early.test88.us, label %bb.f

switch.early.test88.us:                           ; preds = %bb.e
  switch i8 %.fr107, label %bb.i [
    i8 102, label %bb.f
    i8 101, label %bb.f
    i8 100, label %bb.f
    i8 99, label %bb.f
    i8 98, label %bb.f
    i8 97, label %bb.f
    i8 70, label %bb.f
    i8 69, label %bb.f
    i8 68, label %bb.f
    i8 67, label %bb.f
    i8 66, label %bb.f
    i8 65, label %bb.f
  ]

bb.f:                                             ; preds = %switch.early.test88.us, %switch.early.test88.us, %switch.early.test88.us, %switch.early.test88.us, %switch.early.test88.us, %switch.early.test88.us, %switch.early.test88.us, %switch.early.test88.us, %switch.early.test88.us, %switch.early.test88.us, %switch.early.test88.us, %switch.early.test88.us, %bb.e
  %i.ab = zext i8 %.fr to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @ruby_digit36_to_number_table, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !21
  %i.ae = shl i8 %i.ad, 4
  %i.af = zext i8 %.fr107 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @ruby_digit36_to_number_table, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21
  %i.ai = or i8 %i.ae, %i.ah
  store i8 %i.ai, ptr %i.a, align 1, !tbaa !21
  %.not70.us = icmp eq i64 %.06193.us, 0
  br i1 %.not70.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = call i64 @rb_str_buf_new(i64 noundef %i.f) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.162.us = phi i64 [ %.06193.us, %bb.f ], [ %i.aj, %bb.g ] ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.k, i64 %.05995.us
  %i.al = sub nsw i64 %.05897.us, %.05995.us
  %i.am = call i64 @rb_str_cat(i64 noundef %.162.us, ptr noundef %i.ak, i64 noundef %i.al) #7 ; 0 uses
  %i.an = add nsw i64 %.05897.us, 2
  %i.ao = call i64 @rb_str_cat(i64 noundef %.162.us, ptr noundef nonnull %i.a, i64 noundef 1) #7 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us, %bb.h, %switch.early.test88.us, %switch.early.test.us
  %.263.ph.us = phi i64 [ %.06193.us, %switch.early.test88.us ], [ %.06193.us, %switch.early.test.us ], [ %.162.us, %bb.h ], [ %.06193.us, %.lr.ph.split.us ] ; 2 uses
  %.160.ph.us = phi i64 [ %.05995.us, %switch.early.test88.us ], [ %.05995.us, %switch.early.test.us ], [ %i.p, %bb.h ], [ %.05995.us, %.lr.ph.split.us ] ; 2 uses
  %.1.ph.us = phi i64 [ %.05897.us, %switch.early.test88.us ], [ %.05897.us, %switch.early.test.us ], [ %i.an, %bb.h ], [ %.05897.us, %.lr.ph.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ap = add nsw i64 %.1.ph.us, 1                ; 2 uses
  %i.aq = icmp slt i64 %i.ap, %i.f
  br i1 %i.aq, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !30

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.q
  %.05897 = phi i64 [ %i.bu, %bb.q ], [ 0, %.lr.ph ] ; 7 uses
  %.05995 = phi i64 [ %.160.ph, %bb.q ], [ 0, %.lr.ph ] ; 6 uses
  %.06193 = phi i64 [ %.263.ph, %bb.q ], [ 0, %.lr.ph ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ar = getelementptr inbounds i8, ptr %i.k, i64 %.05897 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21
  switch i8 %i.as, label %bb.q [
    i8 37, label %bb.j
    i8 43, label %bb.n
  ]

bb.j:                                             ; preds = %.lr.ph.split
  %i.at = add nsw i64 %.05897, 3
  %i.au = icmp sgt i64 %i.at, %i.f
  br i1 %i.au, label %.split.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr i8, ptr %i.ar, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !21
  %.fr110 = freeze i8 %i.aw                       ; 3 uses
  %i.ax = sext i8 %.fr110 to i32
  %i.ay = add nsw i32 %i.ax, -58
  %i.az = icmp ult i32 %i.ay, -10
  br i1 %i.az, label %switch.early.test, label %bb.l

switch.early.test:                                ; preds = %bb.k
  switch i8 %.fr110, label %bb.q [
    i8 102, label %bb.l
    i8 101, label %bb.l
    i8 100, label %bb.l
    i8 99, label %bb.l
    i8 98, label %bb.l
    i8 97, label %bb.l
    i8 70, label %bb.l
    i8 69, label %bb.l
    i8 68, label %bb.l
    i8 67, label %bb.l
    i8 66, label %bb.l
    i8 65, label %bb.l
  ]

bb.l:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.k
  %i.ba = getelementptr i8, ptr %i.ar, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !21
  %.fr113 = freeze i8 %i.bb                       ; 3 uses
  %i.bc = sext i8 %.fr113 to i32
  %i.bd = add nsw i32 %i.bc, -58
  %i.be = icmp ult i32 %i.bd, -10
  br i1 %i.be, label %switch.early.test88, label %bb.m

switch.early.test88:                              ; preds = %bb.l
  switch i8 %.fr113, label %bb.q [
    i8 102, label %bb.m
    i8 101, label %bb.m
    i8 100, label %bb.m
    i8 99, label %bb.m
    i8 98, label %bb.m
    i8 97, label %bb.m
    i8 70, label %bb.m
    i8 69, label %bb.m
    i8 68, label %bb.m
    i8 67, label %bb.m
    i8 66, label %bb.m
    i8 65, label %bb.m
  ]

bb.m:                                             ; preds = %switch.early.test88, %switch.early.test88, %switch.early.test88, %switch.early.test88, %switch.early.test88, %switch.early.test88, %switch.early.test88, %switch.early.test88, %switch.early.test88, %switch.early.test88, %switch.early.test88, %switch.early.test88, %bb.l
  %i.bf = zext i8 %.fr110 to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @ruby_digit36_to_number_table, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !21
  %i.bi = shl i8 %i.bh, 4
  %i.bj = zext i8 %.fr113 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @ruby_digit36_to_number_table, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !21
  %i.bm = or i8 %i.bi, %i.bl
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph.split, %bb.m
  %storemerge = phi i8 [ %i.bm, %bb.m ], [ 32, %.lr.ph.split ]
  %.057 = phi i64 [ 2, %bb.m ], [ 0, %.lr.ph.split ]
  store i8 %storemerge, ptr %i.a, align 1, !tbaa !21
  %.not70 = icmp eq i64 %.06193, 0
  br i1 %.not70, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bn = call i64 @rb_str_buf_new(i64 noundef %i.f) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.162 = phi i64 [ %.06193, %bb.n ], [ %i.bn, %bb.o ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.k, i64 %.05995
  %i.bp = sub nsw i64 %.05897, %.05995
  %i.bq = call i64 @rb_str_cat(i64 noundef %.162, ptr noundef %i.bo, i64 noundef %i.bp) #7 ; 0 uses
  %i.br = add nsw i64 %.057, %.05897              ; 2 uses
  %i.bs = add nsw i64 %i.br, 1
  %i.bt = call i64 @rb_str_cat(i64 noundef %.162, ptr noundef nonnull %i.a, i64 noundef 1) #7 ; 0 uses
  br label %bb.q

.split.us:                                        ; preds = %bb.j, %bb.c
  %.us-phi = phi i64 [ %.06193.us, %bb.c ], [ %.06193, %bb.j ]
  %.us-phi100 = phi i64 [ %.05995.us, %bb.c ], [ %.05995, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

bb.q:                                             ; preds = %.lr.ph.split, %switch.early.test88, %switch.early.test, %bb.p
  %.263.ph = phi i64 [ %.06193, %.lr.ph.split ], [ %.06193, %switch.early.test ], [ %.162, %bb.p ], [ %.06193, %switch.early.test88 ] ; 2 uses
  %.160.ph = phi i64 [ %.05995, %.lr.ph.split ], [ %.05995, %switch.early.test ], [ %i.bs, %bb.p ], [ %.05995, %switch.early.test88 ] ; 2 uses
  %.1.ph = phi i64 [ %.05897, %.lr.ph.split ], [ %.05897, %switch.early.test ], [ %i.br, %bb.p ], [ %.05897, %switch.early.test88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bu = add nsw i64 %.1.ph, 1                   ; 2 uses
  %i.bv = icmp slt i64 %i.bu, %i.f
  br i1 %i.bv, label %.lr.ph.split, label %.loopexit, !llvm.loop !30

.loopexit:                                        ; preds = %bb.q, %bb.i, %.split.us
  %.06192 = phi i64 [ %.us-phi, %.split.us ], [ %.263.ph.us, %bb.i ], [ %.263.ph, %bb.q ] ; 4 uses
  %.05990 = phi i64 [ %.us-phi100, %.split.us ], [ %.160.ph.us, %bb.i ], [ %.160.ph, %bb.q ] ; 2 uses
  %.not71 = icmp eq i64 %.06192, 0
  br i1 %.not71, label %.loopexit.thread, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.bw = getelementptr inbounds i8, ptr %i.k, i64 %.05990
  %i.bx = sub nsw i64 %i.f, %.05990
  %i.by = call i64 @rb_str_cat(i64 noundef %.06192, ptr noundef %i.bw, i64 noundef %i.bx) #7 ; 0 uses
  %i.bz = call ptr @rb_enc_get(i64 noundef %0) #7
  %i.ca = call i64 @rb_enc_associate(i64 noundef %.06192, ptr noundef %i.bz) #7 ; 0 uses
  br label %bb.s

.loopexit.thread:                                 ; preds = %RSTRING_PTR.exit, %.loopexit
  %i.cb = call i64 @rb_str_dup(i64 noundef %0) #7
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !20
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = and i32 %i.cd, 3145728
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.thread, %bb.r
  %.064 = phi i32 [ 0, %bb.r ], [ %i.ce, %.loopexit.thread ] ; 2 uses
  %.4 = phi i64 [ %.06192, %bb.r ], [ %i.cb, %.loopexit.thread ] ; 5 uses
  %i.cf = call i32 @rb_enc_get_index(i64 noundef %0) #7 ; 2 uses
  %.not72 = icmp eq i32 %i.cf, %i.c
  br i1 %.not72, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = call i64 @rb_enc_associate_index(i64 noundef %.4, i32 noundef %i.c) #7 ; 0 uses
  %i.ch = call i32 @rb_enc_str_coderange(i64 noundef %.4) #7 ; 2 uses
  %i.ci = lshr i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, %i.ch
  %i.ck = and i32 %i.cj, 1048576
  %.not = icmp eq i32 %i.ck, 0
  br i1 %.not, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cl = call i64 @rb_enc_associate_index(i64 noundef %.4, i32 noundef %i.cf) #7 ; 0 uses
  %.not73 = icmp eq i32 %.064, 0
  br i1 %.not73, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = inttoptr i64 %.4 to ptr                 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !20
  %i.co = and i64 %i.cn, -3145729
  %i.cp = zext nneg i32 %.064 to i64
  %i.cq = or disjoint i64 %i.co, %i.cp
  store i64 %i.cq, ptr %i.cm, align 8, !tbaa !20
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v, %bb.u, %bb.s
  ret i64 %.4
}

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @rb_cvar_get(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @rb_to_encoding(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_to_index(ptr noundef) local_unnamed_addr #3

declare i32 @rb_enc_get_index(i64 noundef) local_unnamed_addr #1

declare i64 @rb_enc_associate_index(i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @rb_enc_str_coderange(i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind allocsize(1,2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !7, i64 20}
!13 = !{!"OnigEncodingTypeST", !14, i64 0, !15, i64 8, !7, i64 16, !7, i64 20, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !7, i64 128, !7, i64 132}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!13, !15, i64 8}
!17 = !{!18, !11, i64 16}
!18 = !{!"RString", !19, i64 0, !11, i64 16, !8, i64 24}
!19 = !{!"RBasic", !11, i64 0, !11, i64 8}
!20 = !{!19, !11, i64 0}
!21 = !{!8, !8, i64 0}
!22 = !{!13, !14, i64 48}
!23 = distinct !{null, null}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!27, !8, i64 0}
!27 = !{!"", !8, i64 0, !8, i64 1}
!28 = distinct !{!28, !25}
!29 = distinct !{!29, !25}
!30 = distinct !{!30, !25}
end_hunk_0
