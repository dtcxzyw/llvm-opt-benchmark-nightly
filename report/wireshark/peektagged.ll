inline.NumInlined: 17
inline.NumDeleted: 4
begin_hunk_0_@peektagged_skip_section:bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ %i.i, %bb.d ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @format_text_wsp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @peektagged_get_media_info(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @xmlDocGetRootElement(ptr noundef nonnull %0) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @xmlStrcmp(ptr noundef %i.d, ptr noundef nonnull @.str.12)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.a, i64 24
  %.02335 = load ptr, ptr %i.f, align 8           ; 2 uses
  %.not3136 = icmp eq ptr %.02335, null
  br i1 %.not3136, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.thread
  %i.g = select i1 %.3, i1 %.327, i1 false
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.thread
  %.02339 = phi ptr [ %.023, %.thread ], [ %.02335, %bb.c ] ; 5 uses
  %.02238 = phi i1 [ %.3, %.thread ], [ false, %bb.c ] ; 7 uses
  %.02437 = phi i1 [ %.327, %.thread ], [ false, %bb.c ] ; 7 uses
  %i.h = getelementptr i8, ptr %.02339, i64 8     ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %.02339, i64 16    ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 @xmlStrcmp(ptr noundef %i.l, ptr noundef nonnull @.str.13)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @xmlNodeGetContent(ptr noundef nonnull %.02339) ; 3 uses
  %.not33 = icmp eq ptr %i.o, null
  br i1 %.not33, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call zeroext i1 @ws_strtou32(ptr noundef nonnull %i.o, ptr noundef null, ptr noundef %1)
  %spec.select = select i1 %i.p, i1 true, i1 %.02238
  br label %.thread.sink.split

bb.g:                                             ; preds = %bb.d
  %.pr = load i32, ptr %i.h, align 8
  %i.q = icmp eq i32 %.pr, 1
  br i1 %i.q, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.k, align 8
  %i.s = tail call i32 @xmlStrcmp(ptr noundef %i.r, ptr noundef nonnull @.str.14)
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.u = tail call ptr @xmlNodeGetContent(ptr noundef nonnull %.02339) ; 3 uses
  %.not32 = icmp eq ptr %i.u, null
  br i1 %.not32, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call zeroext i1 @ws_strtou32(ptr noundef nonnull %i.u, ptr noundef null, ptr noundef %2)
  %spec.select34 = select i1 %i.v, i1 true, i1 %.02437
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.f, %bb.j
  %.sink = phi ptr [ %i.u, %bb.j ], [ %i.o, %bb.f ]
  %.327.ph = phi i1 [ %spec.select34, %bb.j ], [ %.02437, %bb.f ]
  %.3.ph = phi i1 [ %.02238, %bb.j ], [ %spec.select, %bb.f ]
  %i.w = load ptr, ptr @xmlFree, align 8
  tail call void %i.w(ptr noundef nonnull %.sink)
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.lr.ph, %bb.i, %bb.e, %bb.h, %bb.g
  %.327 = phi i1 [ %.02437, %bb.g ], [ %.02437, %bb.e ], [ %.02437, %bb.h ], [ %.02437, %bb.i ], [ %.02437, %.lr.ph ], [ %.327.ph, %.thread.sink.split ] ; 2 uses
  %.3 = phi i1 [ %.02238, %bb.g ], [ %.02238, %bb.e ], [ %.02238, %bb.h ], [ %.02238, %bb.i ], [ %.02238, %.lr.ph ], [ %.3.ph, %.thread.sink.split ] ; 2 uses
  %i.x = getelementptr i8, ptr %.02339, i64 48
  %.023 = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not31 = icmp eq ptr %.023, null
  br i1 %.not31, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ %i.g, %._crit_edge.loopexit ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @peektagged_read(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i64 @file_tell(ptr noundef %i.a)
  store i64 %i.b, ptr %4, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call fastcc i32 @peektagged_read_packet(ptr noundef %0, ptr noundef %i.c, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  switch i32 %i.d, label %bb.b [
    i32 -1, label %bb.d
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  %i.f = tail call zeroext i1 @wtap_read_bytes(ptr noundef %i.e, ptr noundef null, i32 noundef %i.d, ptr noundef %2, ptr noundef %3)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @peektagged_seek_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i64 @file_seek(ptr noundef %i.b, i64 noundef %1, i32 noundef 0, ptr noundef %3)
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = tail call fastcc i32 @peektagged_read_packet(ptr noundef %0, ptr noundef %i.e, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %3, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -12, ptr %3, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.d ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @wtap_add_generated_idb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @register_peektagged() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wtap_register_file_type_subtype(ptr noundef nonnull @peektagged_info) ; 2 uses
  store i32 %i.a, ptr @peektagged_file_type_subtype, align 4
  tail call void @wtap_register_backwards_compatibility_lua_name(ptr noundef nonnull @.str.9, i32 noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_register_file_type_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_register_backwards_compatibility_lua_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @xmlDocGetRootElement(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @xmlStrcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @xmlNodeGetContent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtou32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @file_tell(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 5) i32 @peektagged_read_packet(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i8], align 2                 ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = call zeroext i1 @wtap_read_bytes_or_eof(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 6, ptr noundef %3, ptr noundef %4)
  br i1 %i.d, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 13 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.d, %bb.t, %bb.v, %bb.u, %bb.ab, %bb.ad, %bb.ac, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %bb.f
  %.sroa.6368.1 = phi i32 [ %.sroa.6368.0, %bb.d ], [ %.sroa.6368.0, %bb.f ], [ %.sroa.6368.0, %bb.h ], [ %.sroa.6368.0, %bb.j ], [ %.sroa.6368.0, %bb.k ], [ %.sroa.6368.0, %bb.l ], [ %.sroa.6368.0, %bb.m ], [ %.sroa.6368.0, %bb.n ], [ %.sroa.6368.0, %bb.o ], [ %.sroa.6368.0, %bb.p ], [ %.sroa.6368.0, %bb.q ], [ %.sroa.6368.0, %bb.r ], [ 7, %bb.ab ], [ 7, %bb.ac ], [ 7, %bb.ad ], [ 8, %bb.t ], [ 8, %bb.u ], [ 8, %bb.v ]
  %.sroa.17.sroa.0.2 = phi i8 [ %.sroa.17.sroa.0.0, %bb.d ], [ %.sroa.17.sroa.0.0, %bb.f ], [ %.sroa.17.sroa.0.0, %bb.h ], [ %.sroa.17.sroa.0.0, %bb.j ], [ %.sroa.17.sroa.0.0, %bb.k ], [ %.sroa.17.sroa.0.0, %bb.l ], [ %.sroa.17.sroa.0.0, %bb.m ], [ %.sroa.17.sroa.0.0, %bb.n ], [ %.sroa.17.sroa.0.0, %bb.o ], [ %.sroa.17.sroa.0.0, %bb.p ], [ %.sroa.17.sroa.0.0, %bb.q ], [ %.sroa.17.sroa.0.0, %bb.r ], [ %.sroa.17.sroa.0.1, %bb.ab ], [ %i.av, %bb.ac ], [ %i.aw, %bb.ad ], [ %.sroa.17.sroa.0.0, %bb.t ], [ %.sroa.17.sroa.0.0.extract.trunc419, %bb.u ], [ %.sroa.17.sroa.0.0.extract.trunc, %bb.v ]
  %.sroa.17.sroa.30.1 = phi i8 [ %.sroa.17.sroa.30.0, %bb.d ], [ %.sroa.17.sroa.30.0, %bb.f ], [ %.sroa.17.sroa.30.0, %bb.h ], [ %.sroa.17.sroa.30.0, %bb.j ], [ %.sroa.17.sroa.30.0, %bb.k ], [ %.sroa.17.sroa.30.0, %bb.l ], [ %.sroa.17.sroa.30.0, %bb.m ], [ %.sroa.17.sroa.30.0, %bb.n ], [ %.sroa.17.sroa.30.0, %bb.o ], [ %.sroa.17.sroa.30.0, %bb.p ], [ %.sroa.17.sroa.30.0, %bb.q ], [ %.sroa.17.sroa.30.0, %bb.r ], [ %.sroa.17.sroa.30.0, %bb.ab ], [ %.sroa.17.sroa.30.0, %bb.ac ], [ %.sroa.17.sroa.30.0, %bb.ad ], [ %.sroa.17.sroa.30.0, %bb.t ], [ %.sroa.17.sroa.30.0.extract.trunc429, %bb.u ], [ %i.ao, %bb.v ]
  %.sroa.45.2 = phi i32 [ %.sroa.45.0, %bb.d ], [ %.sroa.45.0, %bb.f ], [ %.sroa.45.0, %bb.h ], [ %.sroa.45.0, %bb.j ], [ %.sroa.45.0, %bb.k ], [ %.sroa.45.0, %bb.l ], [ %.sroa.45.0, %bb.m ], [ %.sroa.45.0, %bb.n ], [ %.sroa.45.0, %bb.o ], [ %.sroa.45.0, %bb.p ], [ %.sroa.45.0, %bb.q ], [ %.sroa.45.0, %bb.r ], [ %.sroa.45.1, %bb.ab ], [ %.sroa.45.1, %bb.ac ], [ %.sroa.45.1, %bb.ad ], [ %.sroa.45.0, %bb.t ], [ %.sroa.45.0, %bb.u ], [ %.sroa.45.0, %bb.v ]
  %.sroa.50.1 = phi i8 [ %.sroa.50.0, %bb.d ], [ %.sroa.50.0, %bb.f ], [ %.sroa.50.0, %bb.h ], [ %.sroa.50.0, %bb.j ], [ %.sroa.50.0, %bb.k ], [ %.sroa.50.0, %bb.l ], [ %.sroa.50.0, %bb.m ], [ %.sroa.50.0, %bb.n ], [ %.sroa.50.0, %bb.o ], [ %.sroa.50.0, %bb.p ], [ %.sroa.50.0, %bb.q ], [ %.sroa.50.0, %bb.r ], [ %.sroa.50.0, %bb.ab ], [ 1, %bb.ac ], [ 0, %bb.ad ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.v ]
  %.sroa.54383.1 = phi i16 [ %.sroa.54383.0, %bb.d ], [ %.sroa.54383.0, %bb.f ], [ %.sroa.54383.0, %bb.h ], [ %.sroa.54383.0, %bb.j ], [ %.sroa.54383.0, %bb.k ], [ %i.s, %bb.l ], [ %.sroa.54383.0, %bb.m ], [ %i.w, %bb.n ], [ %i.z, %bb.o ], [ %i.ac, %bb.p ], [ %i.af, %bb.q ], [ %i.ai, %bb.r ], [ %.sroa.54383.0, %bb.ab ], [ %.sroa.54383.0, %bb.ac ], [ %.sroa.54383.0, %bb.ad ], [ %.sroa.54383.0, %bb.t ], [ %.sroa.54383.0, %bb.u ], [ %.sroa.54383.0, %bb.v ]
  %.sroa.73.1 = phi i16 [ %.sroa.73.0, %bb.d ], [ %.sroa.73.0, %bb.f ], [ %.sroa.73.0, %bb.h ], [ %.sroa.73.0, %bb.j ], [ %.sroa.73.0, %bb.k ], [ %i.u, %bb.l ], [ %.sroa.73.0, %bb.m ], [ %.sroa.73.0, %bb.n ], [ %.sroa.73.0, %bb.o ], [ %.sroa.73.0, %bb.p ], [ %.sroa.73.0, %bb.q ], [ %.sroa.73.0, %bb.r ], [ %.sroa.73.0, %bb.ab ], [ %.sroa.73.0, %bb.ac ], [ %.sroa.73.0, %bb.ad ], [ %.sroa.73.0, %bb.t ], [ %.sroa.73.0, %bb.u ], [ %.sroa.73.0, %bb.v ]
  %.sroa.78.1 = phi i32 [ %.sroa.78.0, %bb.d ], [ %.sroa.78.0, %bb.f ], [ %.sroa.78.0, %bb.h ], [ %.sroa.78.0, %bb.j ], [ %.sroa.78.0, %bb.k ], [ %.sroa.78.0, %bb.l ], [ %.sroa.78.0, %bb.m ], [ %.sroa.78.0, %bb.n ], [ %.sroa.78.0, %bb.o ], [ %.sroa.78.0, %bb.p ], [ %.sroa.78.0, %bb.q ], [ %i.aj, %bb.r ], [ %.sroa.78.0, %bb.ab ], [ %.sroa.78.0, %bb.ac ], [ %.sroa.78.0, %bb.ad ], [ %.sroa.78.0, %bb.t ], [ %.sroa.78.0, %bb.u ], [ %.sroa.78.0, %bb.v ]
  %.sroa.83.1 = phi i8 [ %.sroa.83.0, %bb.d ], [ %.sroa.83.0, %bb.f ], [ %.sroa.83.0, %bb.h ], [ %.sroa.83.0, %bb.j ], [ %.sroa.83.0, %bb.k ], [ %.sroa.83.0, %bb.l ], [ %.sroa.83.0, %bb.m ], [ %i.y, %bb.n ], [ %.sroa.83.0, %bb.o ], [ %.sroa.83.0, %bb.p ], [ %.sroa.83.0, %bb.q ], [ %.sroa.83.0, %bb.r ], [ %.sroa.83.0, %bb.ab ], [ %.sroa.83.0, %bb.ac ], [ %.sroa.83.0, %bb.ad ], [ %.sroa.83.0, %bb.t ], [ %.sroa.83.0, %bb.u ], [ %.sroa.83.0, %bb.v ]
  %.sroa.84.1 = phi i8 [ %.sroa.84.0, %bb.d ], [ %.sroa.84.0, %bb.f ], [ %.sroa.84.0, %bb.h ], [ %.sroa.84.0, %bb.j ], [ %.sroa.84.0, %bb.k ], [ %.sroa.84.0, %bb.l ], [ %.sroa.84.0, %bb.m ], [ %.sroa.84.0, %bb.n ], [ %.sroa.84.0, %bb.o ], [ %i.ae, %bb.p ], [ %.sroa.84.0, %bb.q ], [ %.sroa.84.0, %bb.r ], [ %.sroa.84.0, %bb.ab ], [ %.sroa.84.0, %bb.ac ], [ %.sroa.84.0, %bb.ad ], [ %.sroa.84.0, %bb.t ], [ %.sroa.84.0, %bb.u ], [ %.sroa.84.0, %bb.v ]
  %.sroa.85.1 = phi i8 [ %.sroa.85.0, %bb.d ], [ %.sroa.85.0, %bb.f ], [ %.sroa.85.0, %bb.h ], [ %.sroa.85.0, %bb.j ], [ %.sroa.85.0, %bb.k ], [ %.sroa.85.0, %bb.l ], [ %.sroa.85.0, %bb.m ], [ %.sroa.85.0, %bb.n ], [ %i.ab, %bb.o ], [ %.sroa.85.0, %bb.p ], [ %.sroa.85.0, %bb.q ], [ %.sroa.85.0, %bb.r ], [ %.sroa.85.0, %bb.ab ], [ %.sroa.85.0, %bb.ac ], [ %.sroa.85.0, %bb.ad ], [ %.sroa.85.0, %bb.t ], [ %.sroa.85.0, %bb.u ], [ %.sroa.85.0, %bb.v ]
  %.sroa.86.1 = phi i8 [ %.sroa.86.0, %bb.d ], [ %.sroa.86.0, %bb.f ], [ %.sroa.86.0, %bb.h ], [ %.sroa.86.0, %bb.j ], [ %.sroa.86.0, %bb.k ], [ %.sroa.86.0, %bb.l ], [ %.sroa.86.0, %bb.m ], [ %.sroa.86.0, %bb.n ], [ %.sroa.86.0, %bb.o ], [ %.sroa.86.0, %bb.p ], [ %i.ah, %bb.q ], [ %.sroa.86.0, %bb.r ], [ %.sroa.86.0, %bb.ab ], [ %.sroa.86.0, %bb.ac ], [ %.sroa.86.0, %bb.ad ], [ %.sroa.86.0, %bb.t ], [ %.sroa.86.0, %bb.u ], [ %.sroa.86.0, %bb.v ]
  %.1167 = phi i8 [ %.0166290, %bb.d ], [ 1, %bb.f ], [ %.0166290, %bb.h ], [ %.0166290, %bb.j ], [ %.0166290, %bb.k ], [ %.0166290, %bb.l ], [ %.0166290, %bb.m ], [ %.0166290, %bb.n ], [ %.0166290, %bb.o ], [ %.0166290, %bb.p ], [ %.0166290, %bb.q ], [ %.0166290, %bb.r ], [ %.0166290, %bb.ab ], [ %.0166290, %bb.ac ], [ %.0166290, %bb.ad ], [ %.0166290, %bb.t ], [ %.0166290, %bb.u ], [ %.0166290, %bb.v ]
  %.1165 = phi i32 [ %.0164291, %bb.d ], [ %i.k, %bb.f ], [ %.0164291, %bb.h ], [ %.0164291, %bb.j ], [ %.0164291, %bb.k ], [ %.0164291, %bb.l ], [ %.0164291, %bb.m ], [ %.0164291, %bb.n ], [ %.0164291, %bb.o ], [ %.0164291, %bb.p ], [ %.0164291, %bb.q ], [ %.0164291, %bb.r ], [ %.0164291, %bb.ab ], [ %.0164291, %bb.ac ], [ %.0164291, %bb.ad ], [ %.0164291, %bb.t ], [ %.0164291, %bb.u ], [ %.0164291, %bb.v ]
  %.1161 = phi i8 [ %.0160292, %bb.d ], [ %.0160292, %bb.f ], [ 1, %bb.h ], [ %.0160292, %bb.j ], [ %.0160292, %bb.k ], [ %.0160292, %bb.l ], [ %.0160292, %bb.m ], [ %.0160292, %bb.n ], [ %.0160292, %bb.o ], [ %.0160292, %bb.p ], [ %.0160292, %bb.q ], [ %.0160292, %bb.r ], [ %.0160292, %bb.ab ], [ %.0160292, %bb.ac ], [ %.0160292, %bb.ad ], [ %.0160292, %bb.t ], [ %.0160292, %bb.u ], [ %.0160292, %bb.v ]
  %.1159 = phi i8 [ %.0158293, %bb.d ], [ %.0158293, %bb.f ], [ %.0158293, %bb.h ], [ 1, %bb.j ], [ %.0158293, %bb.k ], [ %.0158293, %bb.l ], [ %.0158293, %bb.m ], [ %.0158293, %bb.n ], [ %.0158293, %bb.o ], [ %.0158293, %bb.p ], [ %.0158293, %bb.q ], [ %.0158293, %bb.r ], [ %.0158293, %bb.ab ], [ %.0158293, %bb.ac ], [ %.0158293, %bb.ad ], [ %.0158293, %bb.t ], [ %.0158293, %bb.u ], [ %.0158293, %bb.v ]
  %.1157 = phi i1 [ %.0156294, %bb.d ], [ %.0156294, %bb.f ], [ %.0156294, %bb.h ], [ %.0156294, %bb.j ], [ true, %bb.k ], [ %.0156294, %bb.l ], [ %.0156294, %bb.m ], [ %.0156294, %bb.n ], [ %.0156294, %bb.o ], [ %.0156294, %bb.p ], [ %.0156294, %bb.q ], [ %.0156294, %bb.r ], [ %.0156294, %bb.ab ], [ %.0156294, %bb.ac ], [ %.0156294, %bb.ad ], [ %.0156294, %bb.t ], [ %.0156294, %bb.u ], [ %.0156294, %bb.v ]
  %.sroa.5.1 = phi i32 [ %.sroa.5.0295, %bb.d ], [ %.sroa.5.0295, %bb.f ], [ %i.n, %bb.h ], [ %.sroa.5.0295, %bb.j ], [ %.sroa.5.0295, %bb.k ], [ %.sroa.5.0295, %bb.l ], [ %.sroa.5.0295, %bb.m ], [ %.sroa.5.0295, %bb.n ], [ %.sroa.5.0295, %bb.o ], [ %.sroa.5.0295, %bb.p ], [ %.sroa.5.0295, %bb.q ], [ %.sroa.5.0295, %bb.r ], [ %.sroa.5.0295, %bb.ab ], [ %.sroa.5.0295, %bb.ac ], [ %.sroa.5.0295, %bb.ad ], [ %.sroa.5.0295, %bb.t ], [ %.sroa.5.0295, %bb.u ], [ %.sroa.5.0295, %bb.v ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0296, %bb.d ], [ %.sroa.0.0296, %bb.f ], [ %.sroa.0.0296, %bb.h ], [ %i.q, %bb.j ], [ %.sroa.0.0296, %bb.k ], [ %.sroa.0.0296, %bb.l ], [ %.sroa.0.0296, %bb.m ], [ %.sroa.0.0296, %bb.n ], [ %.sroa.0.0296, %bb.o ], [ %.sroa.0.0296, %bb.p ], [ %.sroa.0.0296, %bb.q ], [ %.sroa.0.0296, %bb.r ], [ %.sroa.0.0296, %bb.ab ], [ %.sroa.0.0296, %bb.ac ], [ %.sroa.0.0296, %bb.ad ], [ %.sroa.0.0296, %bb.t ], [ %.sroa.0.0296, %bb.u ], [ %.sroa.0.0296, %bb.v ]
  %.1155 = phi i32 [ %.0154297, %bb.d ], [ %.0154297, %bb.f ], [ %.0154297, %bb.h ], [ %.0154297, %bb.j ], [ %i.r, %bb.k ], [ %.0154297, %bb.l ], [ %.0154297, %bb.m ], [ %.0154297, %bb.n ], [ %.0154297, %bb.o ], [ %.0154297, %bb.p ], [ %.0154297, %bb.q ], [ %.0154297, %bb.r ], [ %.0154297, %bb.ab ], [ %.0154297, %bb.ac ], [ %.0154297, %bb.ad ], [ %.0154297, %bb.t ], [ %.0154297, %bb.u ], [ %.0154297, %bb.v ]
  %.1153 = phi i32 [ %.0152298, %bb.d ], [ %.0152298, %bb.f ], [ %.0152298, %bb.h ], [ %.0152298, %bb.j ], [ %.0152298, %bb.k ], [ %.0152298, %bb.l ], [ %.0152298, %bb.m ], [ %.0152298, %bb.n ], [ %.0152298, %bb.o ], [ %.0152298, %bb.p ], [ %.0152298, %bb.q ], [ %.0152298, %bb.r ], [ %i.ak, %bb.ab ], [ %i.ak, %bb.ac ], [ %i.ak, %bb.ad ], [ %i.ak, %bb.t ], [ %i.ak, %bb.u ], [ %i.ak, %bb.v ]
  %.1151 = phi i1 [ %.0150299, %bb.d ], [ %.0150299, %bb.f ], [ %.0150299, %bb.h ], [ %.0150299, %bb.j ], [ %.0150299, %bb.k ], [ %.0150299, %bb.l ], [ true, %bb.m ], [ %.0150299, %bb.n ], [ %.0150299, %bb.o ], [ %.0150299, %bb.p ], [ %.0150299, %bb.q ], [ %.0150299, %bb.r ], [ %.0150299, %bb.ab ], [ %.0150299, %bb.ac ], [ %.0150299, %bb.ad ], [ %.0150299, %bb.t ], [ %.0150299, %bb.u ], [ %.0150299, %bb.v ]
  %.1149 = phi i32 [ %.0148300, %bb.d ], [ %.0148300, %bb.f ], [ %.0148300, %bb.h ], [ %.0148300, %bb.j ], [ %.0148300, %bb.k ], [ %.0148300, %bb.l ], [ %i.v, %bb.m ], [ %.0148300, %bb.n ], [ %.0148300, %bb.o ], [ %.0148300, %bb.p ], [ %.0148300, %bb.q ], [ %.0148300, %bb.r ], [ %.0148300, %bb.ab ], [ %.0148300, %bb.ac ], [ %.0148300, %bb.ad ], [ %.0148300, %bb.t ], [ %.0148300, %bb.u ], [ %.0148300, %bb.v ]
  %i.f = call zeroext i1 @wtap_read_bytes_or_eof(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 6, ptr noundef %3, ptr noundef %4)
  br i1 %i.f, label %bb.d, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.b
  %i.g = load i32, ptr %3, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %._crit_edge.thread

bb.c:                                             ; preds = %._crit_edge
  store i32 -12, ptr %3, align 4
  br label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.6368.0 = phi i32 [ 0, %.lr.ph ], [ %.sroa.6368.1, %bb.b ] ; 17 uses
  %.sroa.17.sroa.0.0 = phi i8 [ 0, %.lr.ph ], [ %.sroa.17.sroa.0.2, %bb.b ] ; 30 uses
  %.sroa.17.sroa.30.0 = phi i8 [ 0, %.lr.ph ], [ %.sroa.17.sroa.30.1, %bb.b ] ; 27 uses
  %.sroa.45.0 = phi i32 [ 0, %.lr.ph ], [ %.sroa.45.2, %bb.b ] ; 17 uses
  %.sroa.50.0 = phi i8 [ 0, %.lr.ph ], [ %.sroa.50.1, %bb.b ] ; 14 uses
  %.sroa.54383.0 = phi i16 [ 0, %.lr.ph ], [ %.sroa.54383.1, %bb.b ] ; 24 uses
  %.sroa.73.0 = phi i16 [ 0, %.lr.ph ], [ %.sroa.73.1, %bb.b ] ; 23 uses
  %.sroa.78.0 = phi i32 [ 0, %.lr.ph ], [ %.sroa.78.1, %bb.b ] ; 24 uses
  %.sroa.83.0 = phi i8 [ 0, %.lr.ph ], [ %.sroa.83.1, %bb.b ] ; 18 uses
  %.sroa.84.0 = phi i8 [ 0, %.lr.ph ], [ %.sroa.84.1, %bb.b ] ; 18 uses
  %.sroa.85.0 = phi i8 [ 0, %.lr.ph ], [ %.sroa.85.1, %bb.b ] ; 18 uses
  %.sroa.86.0 = phi i8 [ 0, %.lr.ph ], [ %.sroa.86.1, %bb.b ] ; 18 uses
  %.0148300 = phi i32 [ 0, %.lr.ph ], [ %.1149, %bb.b ] ; 19 uses
  %.0150299 = phi i1 [ false, %.lr.ph ], [ %.1151, %bb.b ] ; 18 uses
  %.0152298 = phi i32 [ 0, %.lr.ph ], [ %.1153, %bb.b ] ; 14 uses
  %.0154297 = phi i32 [ 0, %.lr.ph ], [ %.1155, %bb.b ] ; 19 uses
  %.sroa.0.0296 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0.1, %bb.b ] ; 18 uses
  %.sroa.5.0295 = phi i32 [ 0, %.lr.ph ], [ %.sroa.5.1, %bb.b ] ; 18 uses
  %.0156294 = phi i1 [ false, %.lr.ph ], [ %.1157, %bb.b ] ; 19 uses
  %.0158293 = phi i8 [ 0, %.lr.ph ], [ %.1159, %bb.b ] ; 19 uses
  %.0160292 = phi i8 [ 0, %.lr.ph ], [ %.1161, %bb.b ] ; 19 uses
  %.0164291 = phi i32 [ 0, %.lr.ph ], [ %.1165, %bb.b ] ; 19 uses
  %.0166290 = phi i8 [ 0, %.lr.ph ], [ %.1167, %bb.b ] ; 19 uses
  %.val = load i16, ptr %i.a, align 2
  switch i16 %.val, label %bb.b [
    i16 0, label %bb.e
    i16 1, label %bb.g
    i16 2, label %bb.i
    i16 3, label %bb.k
    i16 4, label %bb.l
    i16 5, label %bb.m
    i16 6, label %bb.n
    i16 7, label %bb.o
    i16 8, label %bb.p
    i16 9, label %bb.q
    i16 -1, label %.loopexit
    i16 13, label %bb.r
    i16 21, label %bb.s
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = trunc nuw i8 %.0166290 to i1
  br i1 %i.i, label %g_strdup_inline.exit196, label %bb.f

g_strdup_inline.exit196:                          ; preds = %bb.e
  store i32 -13, ptr %3, align 4
  %i.j = call noalias dereferenceable_or_null(41) ptr @g_malloc(i64 noundef 41) #7 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(41) %i.j, ptr noundef nonnull align 1 dereferenceable(41) @.str.15, i64 noundef 41, i1 noundef false) #6
  store ptr %i.j, ptr %4, align 8
  br label %._crit_edge.thread

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.e, align 2
  br label %bb.b

bb.g:                                             ; preds = %bb.d
  %i.l = trunc nuw i8 %.0160292 to i1
  br i1 %i.l, label %g_strdup_inline.exit194, label %bb.h

g_strdup_inline.exit194:                          ; preds = %bb.g
  store i32 -13, ptr %3, align 4
  %i.m = call noalias dereferenceable_or_null(50) ptr @g_malloc(i64 noundef 50) #7 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(50) %i.m, ptr noundef nonnull align 1 dereferenceable(50) @.str.16, i64 noundef 50, i1 noundef false) #6
  store ptr %i.m, ptr %4, align 8
  br label %._crit_edge.thread

bb.h:                                             ; preds = %bb.g
  %i.n = load i32, ptr %i.e, align 2
  br label %bb.b

bb.i:                                             ; preds = %bb.d
  %i.o = trunc nuw i8 %.0158293 to i1
  br i1 %i.o, label %g_strdup_inline.exit192, label %bb.j

g_strdup_inline.exit192:                          ; preds = %bb.i
  store i32 -13, ptr %3, align 4
  %i.p = call noalias dereferenceable_or_null(50) ptr @g_malloc(i64 noundef 50) #7 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(50) %i.p, ptr noundef nonnull align 1 dereferenceable(50) @.str.17, i64 noundef 50, i1 noundef false) #6
  store ptr %i.p, ptr %4, align 8
  br label %._crit_edge.thread

bb.j:                                             ; preds = %bb.i
  %i.q = load i32, ptr %i.e, align 2
  br label %bb.b

bb.k:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.e, align 2
  br label %bb.b

bb.l:                                             ; preds = %bb.d
  %i.s = or i16 %.sroa.54383.0, 1
  %i.t = load i32, ptr %i.e, align 2
  %i.u = trunc i32 %i.t to i16
  br label %bb.b

bb.m:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.e, align 2
  br label %bb.b

bb.n:                                             ; preds = %bb.d
  %i.w = or i16 %.sroa.54383.0, 8
  %i.x = load i32, ptr %i.e, align 2
  %i.y = trunc i32 %i.x to i8
  br label %bb.b

bb.o:                                             ; preds = %bb.d
  %i.z = or i16 %.sroa.54383.0, 32
  %i.aa = load i32, ptr %i.e, align 2
  %i.ab = trunc i32 %i.aa to i8
  br label %bb.b

bb.p:                                             ; preds = %bb.d
  %i.ac = or i16 %.sroa.54383.0, 16
  %i.ad = load i32, ptr %i.e, align 2
  %i.ae = trunc i32 %i.ad to i8
  br label %bb.b

bb.q:                                             ; preds = %bb.d
  %i.af = or i16 %.sroa.54383.0, 64
  %i.ag = load i32, ptr %i.e, align 2
  %i.ah = trunc i32 %i.ag to i8
  br label %bb.b

bb.r:                                             ; preds = %bb.d
  %i.ai = or i16 %.sroa.54383.0, 2
  %i.aj = load i32, ptr %i.e, align 2
  br label %bb.b

bb.s:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.e, align 2             ; 10 uses
  %i.al = and i32 %i.ak, 128
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = and i32 %i.ak, 24
  switch i32 %i.am, label %bb.b [
    i32 8, label %bb.u
    i32 16, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %.sroa.17.sroa.30.0.insert.ext424 = zext nneg i8 %.sroa.17.sroa.30.0 to i16
  %.sroa.17.sroa.30.0.insert.shift425 = shl nuw nsw i16 %.sroa.17.sroa.30.0.insert.ext424, 8
  %.sroa.17.sroa.0.0.insert.ext416 = zext i8 %.sroa.17.sroa.0.0 to i16
  %.sroa.17.sroa.0.0.insert.insert418 = or disjoint i16 %.sroa.17.sroa.30.0.insert.shift425, %.sroa.17.sroa.0.0.insert.ext416
  %i.an = or i16 %.sroa.17.sroa.0.0.insert.insert418, 4100 ; 2 uses
  %.sroa.17.sroa.0.0.extract.trunc419 = trunc i16 %i.an to i8
  %.sroa.17.sroa.30.0.extract.shift428 = lshr i16 %i.an, 8
  %.sroa.17.sroa.30.0.extract.trunc429 = trunc nuw nsw i16 %.sroa.17.sroa.30.0.extract.shift428 to i8
  br label %bb.b

bb.v:                                             ; preds = %bb.t
  %i.ao = and i8 %.sroa.17.sroa.30.0, 111
  %.sroa.17.sroa.0.0.extract.trunc = or i8 %.sroa.17.sroa.0.0, 4
  br label %bb.b
end_hunk_0
begin_hunk_1_@peektagged_read_packet:bb.a
  %i.bf = icmp ugt i32 %spec.select, 262144
  br i1 %i.bf, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 -13, ptr %3, align 4
  %i.bg = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef %spec.select, i32 noundef 262144)
  store ptr %i.bg, ptr %4, align 8
  br label %._crit_edge.thread

bb.ai:                                            ; preds = %bb.ag
  %i.bh = getelementptr i8, ptr %0, i64 168       ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8
  call void @wtap_setup_packet_rec(ptr noundef %2, i32 noundef %i.bi)
  %i.bj = call ptr @wtap_block_create(i32 noundef 5) ; 2 uses
  %i.bk = getelementptr i8, ptr %2, i64 216
  store ptr %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %2, i64 4
  store i32 3, ptr %i.bl, align 4
  %i.bm = getelementptr i8, ptr %2, i64 48        ; 6 uses
  %i.bn = getelementptr i8, ptr %2, i64 52        ; 5 uses
  store i32 %.0164291, ptr %i.bn, align 4
  store i32 %spec.select, ptr %i.bm, align 8
  br i1 %.0156294, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bo = shl i32 %.0154297, 23
  %spec.select183 = and i32 %i.bo, 16777216
  %i.bp = call i32 @wtap_block_add_uint32_option(ptr noundef %i.bj, i32 noundef 2, i32 noundef %spec.select183) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.bq = zext i32 %.sroa.0.0296 to i64
  %i.br = shl nuw i64 %i.bq, 32
  %i.bs = zext i32 %.sroa.5.0295 to i64
  %i.bt = or disjoint i64 %i.br, %i.bs
  %i.bu = getelementptr i8, ptr %2, i64 16
  %i.bv = call zeroext i1 @filetime_ns_to_nstime(ptr noundef %i.bu, i64 noundef %i.bt)
  br i1 %i.bv, label %bb.al, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.ak
  store i32 -13, ptr %3, align 4
  %i.bw = call noalias dereferenceable_or_null(47) ptr @g_malloc(i64 noundef 47) #7 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(47) %i.bw, ptr noundef nonnull align 1 dereferenceable(47) @.str.22, i64 noundef 47, i1 noundef false) #6
  store ptr %i.bw, ptr %4, align 8
  br label %._crit_edge.thread

bb.al:                                            ; preds = %bb.ak
  %i.bx = load i32, ptr %i.bh, align 8
  switch i32 %i.bx, label %bb.bn [
    i32 22, label %bb.am
    i32 1, label %bb.bj
  ]

bb.am:                                            ; preds = %bb.al
  br i1 %.0150299, label %bb.an, label %bb.az

bb.an:                                            ; preds = %bb.am
  %i.by = and i32 %.0152298, 256
  %.not173 = icmp eq i32 %i.by, 0
  br i1 %.not173, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bz = and i32 %.0152298, 128
  %.not176 = icmp eq i32 %i.bz, 0
  br i1 %.not176, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %bb.ao
  %i.ca = or i8 %.sroa.17.sroa.0.0, 1
  %i.cb = trunc i32 %.0148300 to i16
  br label %bb.az

bb.aq:                                            ; preds = %bb.an
  %i.cc = or i16 %.sroa.54383.0, 4                ; 7 uses
  %i.cd = trunc i32 %.0148300 to i16              ; 8 uses
  %i.ce = icmp eq i32 %.sroa.6368.0, 0
  br i1 %i.ce, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %bb.aq
  switch i16 %i.cd, label %bb.az [
    i16 66, label %bb.as
    i16 44, label %bb.as
    i16 22, label %bb.as
    i16 11, label %bb.as
    i16 4, label %bb.as
    i16 2, label %bb.as
    i16 108, label %bb.av
    i16 96, label %bb.av
    i16 72, label %bb.av
    i16 48, label %bb.av
    i16 36, label %bb.av
    i16 24, label %bb.av
    i16 18, label %bb.av
    i16 12, label %bb.av
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar
  br i1 %.0156294, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.cf = or i8 %.sroa.17.sroa.0.0, 1
  %i.cg = lshr i32 %.0154297, 14
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = and i8 %i.ch, 1
  br label %bb.az

bb.au:                                            ; preds = %bb.as
  %i.cj = and i8 %.sroa.17.sroa.0.0, -2
  br label %bb.az

bb.av:                                            ; preds = %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar
  %i.ck = and i16 %.sroa.54383.0, 1
  %.not174 = icmp eq i16 %i.ck, 0
  br i1 %.not174, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cl = icmp ult i16 %.sroa.73.0, 15
  br i1 %i.cl, label %.thread223, label %.thread225

bb.ax:                                            ; preds = %bb.av
  %i.cm = and i16 %.sroa.54383.0, 2
  %.not175 = icmp eq i16 %i.cm, 0
  br i1 %.not175, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cn = icmp ult i32 %.sroa.78.0, 2485
  br i1 %i.cn, label %.thread223, label %.thread225

.thread223:                                       ; preds = %bb.ay, %bb.aw
  %i.co = and i8 %.sroa.17.sroa.0.0, -2
  br label %bb.az

.thread225:                                       ; preds = %bb.ay, %bb.aw
  %i.cp = and i8 %.sroa.17.sroa.0.0, -4
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ar, %bb.ap, %bb.ao, %bb.au, %bb.at, %.thread223, %.thread225, %bb.aq, %bb.am
  %.sroa.6368.5 = phi i32 [ 0, %bb.ar ], [ 4, %bb.at ], [ 4, %bb.au ], [ %.sroa.6368.0, %bb.am ], [ 6, %.thread223 ], [ 5, %.thread225 ], [ %.sroa.6368.0, %bb.aq ], [ %.sroa.6368.0, %bb.ap ], [ %.sroa.6368.0, %bb.ao ], [ 0, %bb.ax ] ; 2 uses
  %.sroa.17.sroa.0.4 = phi i8 [ %.sroa.17.sroa.0.0, %bb.ar ], [ %i.cf, %bb.at ], [ %i.cj, %bb.au ], [ %.sroa.17.sroa.0.0, %bb.am ], [ %i.co, %.thread223 ], [ %i.cp, %.thread225 ], [ %.sroa.17.sroa.0.0, %bb.aq ], [ %i.ca, %bb.ap ], [ %.sroa.17.sroa.0.0, %bb.ao ], [ %.sroa.17.sroa.0.0, %bb.ax ]
  %.sroa.17.sroa.30.3 = phi i8 [ %.sroa.17.sroa.30.0, %bb.ar ], [ %i.ci, %bb.at ], [ %.sroa.17.sroa.30.0, %bb.au ], [ %.sroa.17.sroa.30.0, %bb.am ], [ %.sroa.17.sroa.30.0, %.thread223 ], [ %.sroa.17.sroa.30.0, %.thread225 ], [ %.sroa.17.sroa.30.0, %bb.aq ], [ %.sroa.17.sroa.30.0, %bb.ap ], [ %.sroa.17.sroa.30.0, %bb.ao ], [ %.sroa.17.sroa.30.0, %bb.ax ]
  %.sroa.44.0 = phi i16 [ 0, %bb.ar ], [ 0, %bb.at ], [ 0, %bb.au ], [ 0, %bb.am ], [ 0, %.thread223 ], [ 0, %.thread225 ], [ 0, %bb.aq ], [ %i.cb, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.ax ]
  %.sroa.54383.3 = phi i16 [ %i.cc, %bb.ar ], [ %i.cc, %bb.at ], [ %i.cc, %bb.au ], [ %.sroa.54383.0, %bb.am ], [ %i.cc, %.thread223 ], [ %i.cc, %.thread225 ], [ %i.cc, %bb.aq ], [ %.sroa.54383.0, %bb.ap ], [ %.sroa.54383.0, %bb.ao ], [ %i.cc, %bb.ax ] ; 7 uses
  %.sroa.82.0 = phi i16 [ %i.cd, %bb.ar ], [ %i.cd, %bb.at ], [ %i.cd, %bb.au ], [ 0, %bb.am ], [ %i.cd, %.thread223 ], [ %i.cd, %.thread225 ], [ %i.cd, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ %i.cd, %bb.ax ]
  %i.cq = and i16 %.sroa.54383.3, 3
  switch i16 %i.cq, label %.thread226 [
    i16 2, label %bb.ba
    i16 1, label %bb.bc
  ]

bb.ba:                                            ; preds = %bb.az
  %i.cr = call i32 @ieee80211_mhz_to_chan(i32 noundef %.sroa.78.0) ; 2 uses
  %.not179 = icmp eq i32 %i.cr, -1
  br i1 %.not179, label %.thread226, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cs = or disjoint i16 %.sroa.54383.3, 1
  %i.ct = trunc i32 %i.cr to i16
  br label %.thread226

bb.bc:                                            ; preds = %bb.az
  %switch.tableidx = add i32 %.sroa.6368.5, -3    ; 2 uses
  %i.cu = icmp ult i32 %switch.tableidx, 4
  br i1 %i.cu, label %switch.lookup, label %.thread226

switch.lookup:                                    ; preds = %bb.bc
  %switch.cast = trunc nuw i32 %switch.tableidx to i4
  %switch.downshift = lshr i4 -5, %switch.cast
  %switch.masked = trunc i4 %switch.downshift to i1
  %i.cv = zext i16 %.sroa.73.0 to i32
  %i.cw = call i32 @ieee80211_chan_to_mhz(i32 noundef %i.cv, i1 noundef zeroext %switch.masked) ; 2 uses
  %.not182 = icmp eq i32 %i.cw, 0                 ; 2 uses
  %i.cx = or disjoint i16 %.sroa.54383.3, 2
  %spec.select551 = select i1 %.not182, i16 %.sroa.54383.3, i16 %i.cx
  %spec.select552 = select i1 %.not182, i32 %.sroa.78.0, i32 %i.cw
  br label %.thread226

.thread226:                                       ; preds = %bb.bc, %switch.lookup, %bb.az, %bb.ba, %bb.bb
  %.sroa.54383.4 = phi i16 [ %.sroa.54383.3, %bb.ba ], [ %i.cs, %bb.bb ], [ %.sroa.54383.3, %bb.bc ], [ %spec.select551, %switch.lookup ], [ %.sroa.54383.3, %bb.az ]
  %.sroa.73.3 = phi i16 [ %.sroa.73.0, %bb.ba ], [ %i.ct, %bb.bb ], [ %.sroa.73.0, %bb.bc ], [ %.sroa.73.0, %switch.lookup ], [ %.sroa.73.0, %bb.az ]
  %.sroa.78.3 = phi i32 [ %.sroa.78.0, %bb.ba ], [ %.sroa.78.0, %bb.bb ], [ %.sroa.78.0, %bb.bc ], [ %spec.select552, %switch.lookup ], [ %.sroa.78.0, %bb.az ]
  %i.cy = getelementptr i8, ptr %2, i64 64        ; 3 uses
  store i32 -1, ptr %i.cy, align 8
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %2, i64 68
  %.sroa.6368.0..sroa_idx = getelementptr i8, ptr %2, i64 72
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  store i32 %.sroa.6368.5, ptr %.sroa.6368.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr i8, ptr %2, i64 76
  %.sroa.17.sroa.30.0.insert.ext = zext nneg i8 %.sroa.17.sroa.30.3 to i16
  %.sroa.17.sroa.30.0.insert.shift = shl nuw nsw i16 %.sroa.17.sroa.30.0.insert.ext, 8
  %.sroa.17.sroa.0.0.insert.ext = zext i8 %.sroa.17.sroa.0.4 to i16
  %.sroa.17.sroa.0.0.insert.insert = or disjoint i16 %.sroa.17.sroa.30.0.insert.shift, %.sroa.17.sroa.0.0.insert.ext
  store i16 %.sroa.17.sroa.0.0.insert.insert, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.44.0..sroa_idx = getelementptr i8, ptr %2, i64 78
  store i16 %.sroa.44.0, ptr %.sroa.44.0..sroa_idx, align 2
  %.sroa.45.0..sroa_idx = getelementptr i8, ptr %2, i64 80
  store i32 %.sroa.45.0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.50.0..sroa_idx = getelementptr i8, ptr %2, i64 84
  store i8 %.sroa.50.0, ptr %.sroa.50.0..sroa_idx, align 4
  %.sroa.54.0..sroa_idx = getelementptr i8, ptr %2, i64 85
  store i16 0, ptr %.sroa.54.0..sroa_idx, align 1
  %.sroa.54.sroa.10.0..sroa.54.0..sroa_idx.sroa_idx = getelementptr i8, ptr %2, i64 87
  store <9 x i8> zeroinitializer, ptr %.sroa.54.sroa.10.0..sroa.54.0..sroa_idx.sroa_idx, align 1
  %.sroa.54383.0..sroa_idx = getelementptr i8, ptr %2, i64 96
  store i16 %.sroa.54383.4, ptr %.sroa.54383.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr i8, ptr %2, i64 98
  store i16 %.sroa.73.3, ptr %.sroa.73.0..sroa_idx, align 2
  %.sroa.78.0..sroa_idx = getelementptr i8, ptr %2, i64 100
  store i32 %.sroa.78.3, ptr %.sroa.78.0..sroa_idx, align 4
  %.sroa.82.0..sroa_idx = getelementptr i8, ptr %2, i64 104
  store i16 %.sroa.82.0, ptr %.sroa.82.0..sroa_idx, align 8
  %.sroa.83.0..sroa_idx = getelementptr i8, ptr %2, i64 106
  store i8 %.sroa.83.0, ptr %.sroa.83.0..sroa_idx, align 2
  %.sroa.84.0..sroa_idx = getelementptr i8, ptr %2, i64 107
  store i8 %.sroa.84.0, ptr %.sroa.84.0..sroa_idx, align 1
  %.sroa.85.0..sroa_idx = getelementptr i8, ptr %2, i64 108
  store i8 %.sroa.85.0, ptr %.sroa.85.0..sroa_idx, align 4
  %.sroa.86.0..sroa_idx = getelementptr i8, ptr %2, i64 109
  store i8 %.sroa.86.0, ptr %.sroa.86.0..sroa_idx, align 1
  %.sroa.87.0..sroa_idx = getelementptr i8, ptr %2, i64 110
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(26) %.sroa.87.0..sroa_idx, i8 0, i64 26, i1 false)
  %i.cz = load i8, ptr %i.c, align 1, !range !11, !noundef !12
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.thread226
  store i32 4, ptr %i.cy, align 8
  br label %bb.bi

bb.be:                                            ; preds = %.thread226
  %i.db = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.dc = icmp ult i32 %i.db, 4
  br i1 %i.dc, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dd = load i32, ptr %i.bm, align 8            ; 2 uses
  %i.de = icmp ult i32 %i.dd, 4
  br i1 %i.de, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  store i32 -13, ptr %3, align 4
  %i.df = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.23)
  store ptr %i.df, ptr %4, align 8
  br label %._crit_edge.thread

bb.bh:                                            ; preds = %bb.bf
  store i32 0, ptr %i.cy, align 8
  %i.dg = add i32 %i.db, -4
  store i32 %i.dg, ptr %i.bn, align 4
  %i.dh = add i32 %i.dd, -4
  store i32 %i.dh, ptr %i.bm, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bd
  %.0144 = phi i32 [ 0, %bb.bd ], [ 4, %bb.bh ]
  %i.di = getelementptr i8, ptr %2, i64 68
  store i8 0, ptr %i.di, align 4
  br label %bb.bn

bb.bj:                                            ; preds = %bb.al
  %i.dj = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.dk = icmp ult i32 %i.dj, 4
  br i1 %i.dk, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dl = load i32, ptr %i.bm, align 8            ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 4
  br i1 %i.dm, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  store i32 -13, ptr %3, align 4
  %i.dn = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.24)
  store ptr %i.dn, ptr %4, align 8
  br label %._crit_edge.thread

bb.bm:                                            ; preds = %bb.bk
  %i.do = getelementptr i8, ptr %2, i64 64
  store i32 0, ptr %i.do, align 8
  %i.dp = add i32 %i.dj, -4
  store i32 %i.dp, ptr %i.bn, align 4
  %i.dq = add i32 %i.dl, -4
  store i32 %i.dq, ptr %i.bm, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bi, %bb.al
  %.1 = phi i32 [ 0, %bb.al ], [ %.0144, %bb.bi ], [ 4, %bb.bm ]
  %i.dr = getelementptr i8, ptr %2, i64 264
  %i.ds = load i32, ptr %i.bm, align 8
  %i.dt = call zeroext i1 @wtap_read_bytes_buffer(ptr noundef %1, ptr noundef %i.dr, i32 noundef %i.ds, ptr noundef %3, ptr noundef %4)
  %.1. = select i1 %i.dt, i32 %.1, i32 -1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.bn, %._crit_edge, %bb.c, %bb.bl, %bb.bg, %g_strdup_inline.exit, %bb.ah, %g_strdup_inline.exit186, %g_strdup_inline.exit188, %g_strdup_inline.exit190, %g_strdup_inline.exit192, %g_strdup_inline.exit194, %g_strdup_inline.exit196
  %.0143 = phi i32 [ -1, %bb.ah ], [ -1, %._crit_edge ], [ %.1., %bb.bn ], [ 0, %bb.bg ], [ 0, %bb.bl ], [ -1, %g_strdup_inline.exit ], [ -1, %g_strdup_inline.exit186 ], [ -1, %g_strdup_inline.exit188 ], [ -1, %g_strdup_inline.exit190 ], [ -1, %g_strdup_inline.exit196 ], [ -1, %g_strdup_inline.exit194 ], [ -1, %g_strdup_inline.exit192 ], [ -1, %bb.c ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0143
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read_bytes_or_eof(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_setup_packet_rec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_block_create(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_uint32_option(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @filetime_ns_to_nstime(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @ieee80211_mhz_to_chan(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @ieee80211_chan_to_mhz(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read_bytes_buffer(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @file_seek(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{null}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = !{i8 0, i8 2}
!12 = !{}
end_hunk_1
