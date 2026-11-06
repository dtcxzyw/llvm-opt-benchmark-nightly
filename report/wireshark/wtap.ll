Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/wtap?download=true
inline.NumInlined: 60
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@wtap_full_file_read_file:bb.a
  %i.w = trunc i64 %i.i to i32
  %i.x = sdiv i32 %i.w, 1048576
  %i.y = shl nsw i32 %i.x, 20
  %i.z = getelementptr i8, ptr %2, i64 264        ; 2 uses
  %i.aa = getelementptr i8, ptr %2, i64 280
  %i.ab = getelementptr i8, ptr %2, i64 288       ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %bb.h
  %.043 = phi i32 [ 0, %bb.h ], [ %.0, %bb.o ]    ; 3 uses
  %.0.in = phi i32 [ %i.y, %bb.h ], [ %.0, %bb.o ]
  %.0 = add i32 %.0.in, 1048576                   ; 6 uses
  %i.ac = icmp slt i32 %.0, 1
  br i1 %i.ac, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  store i32 -13, ptr %3, align 4
  %i.ad = getelementptr i8, ptr %0, i64 168
  %i.ae = load i32, ptr %i.ad, align 8            ; 4 uses
  %i.af = icmp sgt i32 %i.ae, -3
  %i.ag = load i32, ptr @wtap_num_encap_types, align 4
  %.not.i55 = icmp slt i32 %i.ae, %i.ag
  %or.cond.i56 = select i1 %i.af, i1 %.not.i55, i1 false
  br i1 %or.cond.i56, label %bb.k, label %wtap_encap_name.exit58

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ae, label %bb.m [
    i32 -2, label %wtap_encap_name.exit58
    i32 -1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  br label %wtap_encap_name.exit58

bb.m:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr @encap_table_arr, align 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = zext nneg i32 %i.ae to i64
  %i.ak = getelementptr [16 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8
  br label %wtap_encap_name.exit58

wtap_encap_name.exit58:                           ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i57 = phi ptr [ %i.al, %bb.m ], [ @.str.23, %bb.j ], [ @.str.25, %bb.l ], [ @.str.24, %bb.k ]
  %i.am = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.72, ptr noundef %.0.i57, i32 noundef 2147483647)
  store ptr %i.am, ptr %4, align 8
  br label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.an = zext nneg i32 %.0 to i64
  call void @ws_buffer_assure_space(ptr noundef %i.z, i64 noundef %i.an)
  %.val = load ptr, ptr %i.z, align 8
  %.val53 = load i64, ptr %i.aa, align 8
  %i.ao = getelementptr i8, ptr %.val, i64 %.val53
  %i.ap = zext nneg i32 %.043 to i64
  %i.aq = getelementptr i8, ptr %i.ao, i64 %i.ap
  %i.ar = sub nsw i32 %.0, %.043
  %i.as = call i32 @file_read(ptr noundef %i.aq, i32 noundef %i.ar, ptr noundef %1) ; 3 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.n
  %i.au = call i32 @file_error(ptr noundef %1, ptr noundef %4) ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  %spec.select = select i1 %i.av, i32 -13, i32 %i.au
  store i32 %spec.select, ptr %3, align 4
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aw = add nuw i32 %i.as, %.043                ; 3 uses
  %i.ax = zext nneg i32 %i.as to i64
  %i.ay = load i64, ptr %i.ab, align 8
  %i.az = add i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.ab, align 8
  %.not = icmp eq i32 %i.aw, %.0
  br i1 %.not, label %bb.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr i8, ptr %0, i64 168
  %i.bb = load i32, ptr %i.ba, align 8
  store i32 0, ptr %2, align 8
  %i.bc = getelementptr i8, ptr %2, i64 40
  store ptr @.str.33, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %2, i64 56
  store i32 %i.bb, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %2, i64 4
  store i32 0, ptr %i.be, align 4
  %i.bf = getelementptr i8, ptr %2, i64 16
  store i64 0, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %2, i64 24
  store i32 0, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %2, i64 48
  store i32 %i.aw, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %2, i64 52
  store i32 %i.aw, ptr %i.bi, align 4
  br label %bb.q

bb.q:                                             ; preds = %.thread, %wtap_encap_name.exit58, %bb.p, %wtap_file_size.exit, %wtap_encap_name.exit
  %.3 = phi i1 [ false, %wtap_file_size.exit ], [ false, %wtap_encap_name.exit ], [ false, %wtap_encap_name.exit58 ], [ false, %.thread ], [ true, %bb.p ]
  ret i1 %.3
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @wtap_full_file_seek_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 @file_seek(ptr noundef %i.c, i64 noundef %1, i32 noundef 0, ptr noundef %3)
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = tail call fastcc zeroext i1 @wtap_full_file_read_file(ptr noundef %0, ptr noundef %i.f, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %i.g, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare i64 @file_seek(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @wtap_buffer_append_epdu_tag(ptr noundef %0, i16 noundef zeroext %1, ptr nofree noundef readonly captures(address_is_null) %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i16 %1, 0
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i16 %3, 0
  %or.cond4 = and i1 %or.cond, %i.c
  br i1 %or.cond4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext i16 %3 to i64
  %i.e = add i16 %3, 3
  %i.f = and i16 %i.e, 252
  %i.g = sub i16 %i.f, %3
  %.mask = and i16 %i.g, 255                      ; 2 uses
  %i.h = zext nneg i16 %.mask to i64
  %i.i = add nuw nsw i64 %i.d, 4
  %i.j = add nuw nsw i64 %i.i, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.029 = phi i16 [ %3, %bb.b ], [ 0, %bb.a ]     ; 3 uses
  %.028 = phi i16 [ %.mask, %bb.b ], [ 0, %bb.a ]
  %.0 = phi i64 [ %i.j, %bb.b ], [ 4, %bb.a ]     ; 3 uses
  tail call void @ws_buffer_assure_space(ptr noundef %0, i64 noundef %.0)
  %.val = load ptr, ptr %0, align 8
  %i.k = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val31 = load i64, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val, i64 %.val31 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.l, i8 noundef 0, i64 noundef range(i64 4, 65795) %.0, i1 noundef false) #20
  %i.m = lshr i16 %1, 8
  %i.n = trunc nuw i16 %i.m to i8
  store i8 %i.n, ptr %i.l, align 1
  %i.o = trunc i16 %1 to i8
  %i.p = getelementptr i8, ptr %i.l, i64 1
  store i8 %i.o, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %i.l, i64 2
  %i.r = add i16 %.028, %.029                     ; 2 uses
  %i.s = lshr i16 %i.r, 8
  %i.t = trunc nuw i16 %i.s to i8
  store i8 %i.t, ptr %i.q, align 1
  %i.u = trunc i16 %i.r to i8
  %i.v = getelementptr i8, ptr %i.l, i64 3
  store i8 %i.u, ptr %i.v, align 1
  %.not = icmp eq i16 %.029, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.l, i64 4
  %i.x = zext i16 %.029 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.w, ptr noundef align 1 %2, i64 noundef %i.x, i1 noundef false) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = load i64, ptr %i.k, align 8
  %i.z = add i64 %i.y, %.0
  store i64 %i.z, ptr %i.k, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @wtap_buffer_append_epdu_uint(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @ws_buffer_assure_space(ptr noundef %0, i64 noundef 8)
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val8 = load i64, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 %.val8  ; 6 uses
  store i64 0, ptr %i.b, align 1
  %i.c = lshr i16 %1, 8
  %i.d = trunc nuw i16 %i.c to i8
  store i8 %i.d, ptr %i.b, align 1
  %i.e = trunc i16 %1 to i8
  %i.f = getelementptr i8, ptr %i.b, i64 1
  store i8 %i.e, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %i.b, i64 2
  store i8 0, ptr %i.g, align 1
  %i.h = getelementptr i8, ptr %i.b, i64 3
  store i8 4, ptr %i.h, align 1
  %i.i = getelementptr i8, ptr %i.b, i64 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %3, ptr %i.i, align 1
  %i.j = load i64, ptr %i.a, align 8
  %i.k = add i64 %i.j, 8
  store i64 %i.k, ptr %i.a, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @wtap_buffer_append_epdu_string(ptr noundef %0, i16 noundef zeroext %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef %2) #21 ; 2 uses
  %i.b = icmp ne i16 %1, 0
  %i.c = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.b, %i.c
  %i.d = icmp ne i64 %i.a, 0
  %or.cond4.i = and i1 %or.cond.i, %i.d
  br i1 %or.cond4.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.a, i64 65535) ; 2 uses
  %i.e = trunc nuw i64 %spec.store.select to i16  ; 3 uses
  %i.f = add i16 %i.e, 3
  %i.g = and i16 %i.f, 252
  %i.h = sub i16 %i.g, %i.e
  %.mask.i = and i16 %i.h, 255                    ; 2 uses
  %i.i = zext nneg i16 %.mask.i to i64
  %i.j = add nuw nsw i64 %spec.store.select, 4
  %i.k = add nuw nsw i64 %i.j, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029.i = phi i16 [ %i.e, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.028.i = phi i16 [ %.mask.i, %bb.b ], [ 0, %bb.a ]
  %.0.i = phi i64 [ %i.k, %bb.b ], [ 4, %bb.a ]   ; 3 uses
  tail call void @ws_buffer_assure_space(ptr noundef %0, i64 noundef %.0.i)
  %.val.i = load ptr, ptr %0, align 8
  %i.l = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val31.i = load i64, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %.val.i, i64 %.val31.i ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.m, i8 noundef 0, i64 noundef range(i64 4, 65795) %.0.i, i1 noundef false) #20
  %i.n = lshr i16 %1, 8
  %i.o = trunc nuw i16 %i.n to i8
  store i8 %i.o, ptr %i.m, align 1
  %i.p = trunc i16 %1 to i8
  %i.q = getelementptr i8, ptr %i.m, i64 1
  store i8 %i.p, ptr %i.q, align 1
  %i.r = getelementptr i8, ptr %i.m, i64 2
  %i.s = add i16 %.028.i, %.029.i                 ; 2 uses
  %i.t = lshr i16 %i.s, 8
  %i.u = trunc nuw i16 %i.t to i8
  store i8 %i.u, ptr %i.r, align 1
  %i.v = trunc i16 %i.s to i8
  %i.w = getelementptr i8, ptr %i.m, i64 3
  store i8 %i.v, ptr %i.w, align 1
  %.not.i = icmp eq i16 %.029.i, 0
  br i1 %.not.i, label %wtap_buffer_append_epdu_tag.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.m, i64 4
  %i.y = zext i16 %.029.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.x, ptr noundef readonly align 1 %2, i64 noundef %i.y, i1 noundef false) #20
  br label %wtap_buffer_append_epdu_tag.exit

wtap_buffer_append_epdu_tag.exit:                 ; preds = %bb.c, %bb.d
  %i.z = load i64, ptr %i.l, align 8
  %i.aa = add i64 %i.z, %.0.i
  store i64 %i.aa, ptr %i.l, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @wtap_buffer_append_epdu_end(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @ws_buffer_assure_space(ptr noundef %0, i64 noundef 4)
  %.val6 = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val7 = load i64, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val6, i64 %.val7
  store i32 0, ptr %i.b, align 1
  %i.c = load i64, ptr %i.a, align 8
  %i.d = add i64 %i.c, 4                          ; 2 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.e, align 8
  %i.f = sub i64 %i.d, %.val
  %i.g = trunc i64 %i.f to i32
  ret i32 %i.g
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @wtap_init(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @init_open_routines()
  tail call void @wtap_opttypes_initialize()
  %i.a = load ptr, ptr @encap_table_arr, align 8
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %wtap_init_encap_types.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @g_array_new(i32 noundef 0, i32 noundef 1, i32 noundef 16) ; 2 uses
  store ptr %i.b, ptr @encap_table_arr, align 8
  %i.c = load i32, ptr @wtap_num_encap_types, align 4
  %i.d = tail call ptr @g_array_append_vals(ptr noundef %i.b, ptr noundef @encap_table_base, i32 noundef %i.c) ; 0 uses
  br label %wtap_init_encap_types.exit

wtap_init_encap_types.exit:                       ; preds = %bb.a, %bb.b
  tail call void @wtap_init_file_type_subtypes(ptr noundef %1)
  tail call void @wtap_init_file_type_extensions(ptr noundef %2, i32 noundef %3)
  br i1 %0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %wtap_init_encap_types.exit
  %i.e = tail call ptr @plugins_init(i32 noundef 1, ptr noundef %1)
  store ptr %i.e, ptr @libwiretap_plugins, align 8
  %i.f = load ptr, ptr @wtap_plugins, align 8
  tail call void @g_slist_foreach(ptr noundef %i.f, ptr noundef @call_plugin_register_wtap_module, ptr noundef null)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %wtap_init_encap_types.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @init_open_routines() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wtap_opttypes_initialize() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wtap_init_file_type_subtypes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wtap_init_file_type_extensions(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @plugins_init(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @g_slist_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @call_plugin_register_wtap_module(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.a()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @wtap_cleanup() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @encap_table_arr, align 8  ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %wtap_cleanup_encap_types.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @g_array_free(ptr noundef nonnull %i.a, i32 noundef 1) ; 0 uses
  store ptr null, ptr @encap_table_arr, align 8
  br label %wtap_cleanup_encap_types.exit

wtap_cleanup_encap_types.exit:                    ; preds = %bb.a, %bb.b
  tail call void @wtap_opttypes_cleanup()
  tail call void @ws_buffer_cleanup()
  tail call void @cleanup_open_routines()
  %i.c = load ptr, ptr @wtap_plugins, align 8
  tail call void @g_slist_free(ptr noundef %i.c)
  store ptr null, ptr @wtap_plugins, align 8
  %i.d = load ptr, ptr @libwiretap_plugins, align 8
  tail call void @plugins_cleanup(ptr noundef %i.d)
  store ptr null, ptr @libwiretap_plugins, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @wtap_opttypes_cleanup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_cleanup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @cleanup_open_routines() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @g_slist_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @plugins_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_block_create(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_uint8_option(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { allocsize(0) }
attributes #23 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = distinct !{null}
!3 = distinct !{!3, !12}
!4 = distinct !{null}
!5 = distinct !{!5, !12}
!6 = !{i32 8, !"cf-protection-return", i32 1}
!7 = !{i32 8, !"cf-protection-branch", i32 1}
!8 = !{i32 4, !"probe-stack", !"inline-asm"}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !12}
!18 = !{ptr @wtap_sequential_close}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = !{ptr @wtapng_process_dsb}
!23 = distinct !{!23, !13}
end_hunk_0
