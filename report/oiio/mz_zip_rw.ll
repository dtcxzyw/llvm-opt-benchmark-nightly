inline.NumInlined: 45
inline.NumDeleted: 1
begin_hunk_0_@mz_zip_reader_entry_save_file:bb.a
  %i.g = icmp ne ptr %i.f, null
  %i.h = icmp ne ptr %1, null
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.c, label %mz_zip_reader_is_open.exit.thread

bb.c:                                             ; preds = %mz_zip_reader_is_open.exit
  %i.i = tail call noalias ptr @strdup(ptr noundef nonnull %1) #18 ; 14 uses
  %.not74 = icmp eq ptr %i.i, null
  br i1 %.not74, label %mz_zip_reader_is_open.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 2 uses
  %.not75 = icmp eq ptr %i.k, null
  br i1 %.not75, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = tail call i32 %i.k(ptr noundef nonnull %0, ptr noundef %i.m, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i) #18 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = tail call noalias ptr @strdup(ptr noundef nonnull %i.i) #18 ; 7 uses
  %.not76 = icmp eq ptr %i.o, null
  br i1 %.not76, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @mz_path_remove_filename(ptr noundef nonnull %i.o) #18 ; 0 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !7
  %i.r = tail call i32 @mz_zip_entry_is_dir(ptr noundef %i.q) #18
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %0, align 8, !tbaa !7
  %i.u = tail call i32 @mz_zip_entry_is_symlink(ptr noundef %i.t) #18
  %.not77 = icmp eq i32 %i.u, 0
  br i1 %.not77, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 @mz_dir_make(ptr noundef nonnull %i.o) #18
  br label %.critedge

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48
  %.not78 = icmp eq ptr %i.x, null
  br i1 %.not78, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = tail call i32 @mz_os_file_exists(ptr noundef nonnull %i.i) #18
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.ae = tail call i32 %i.aa(ptr noundef nonnull %0, ptr noundef %i.ac, ptr noundef %i.ad, ptr noundef nonnull %i.i) #18
  %.not79 = icmp eq i32 %i.ae, 0
  br i1 %.not79, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.af = tail call i32 @mz_os_unlink(ptr noundef nonnull %i.i) #18 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.j
  %i.ag = load ptr, ptr %0, align 8, !tbaa !7
  %i.ah = tail call i32 @mz_zip_entry_is_symlink(ptr noundef %i.ag) #18
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call i32 @mz_path_has_slash(ptr noundef nonnull %i.i) #18
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = tail call i32 @mz_path_remove_slash(ptr noundef nonnull %i.i) #18 ; 0 uses
  %i.am = tail call i32 @mz_path_remove_filename(ptr noundef nonnull %i.o) #18 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.an = tail call i32 @mz_os_is_dir(ptr noundef nonnull %i.o) #18
  %.not80 = icmp eq i32 %i.an, 0
  br i1 %.not80, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = tail call i32 @mz_dir_make(ptr noundef nonnull %i.o) #18 ; 2 uses
  %.not81 = icmp eq i32 %i.ao, 0
  br i1 %.not81, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ap = load ptr, ptr %0, align 8, !tbaa !7
  %i.aq = tail call i32 @mz_zip_entry_is_symlink(ptr noundef %i.ap) #18
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !24  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50 ; 3 uses
  %.not83 = icmp eq ptr %i.au, null
  br i1 %.not83, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = load i8, ptr %i.au, align 1, !tbaa !51
  %.not84 = icmp eq i8 %i.av, 0
  br i1 %.not84, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = tail call i32 @mz_os_make_symlink(ptr noundef nonnull %i.i, ptr noundef nonnull %i.au) #18
  br label %.critedge

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !36
  %i.az = icmp slt i64 %i.ay, 65535
  br i1 %i.az, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.ba = tail call ptr @mz_stream_mem_create() #18 ; 9 uses
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !21
  %.not85 = icmp eq ptr %i.ba, null
  br i1 %.not85, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = tail call i32 @mz_stream_mem_open(ptr noundef nonnull %i.ba, ptr noundef null, i32 noundef 8) #18 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.z, label %.thread89

bb.z:                                             ; preds = %bb.y
  %i.bd = tail call i32 @mz_zip_reader_entry_save(ptr noundef nonnull %0, ptr noundef nonnull %i.ba, ptr noundef nonnull @mz_stream_write) ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.aa, label %.thread89

bb.aa:                                            ; preds = %bb.z
  %i.bf = tail call i32 @mz_stream_write_uint8(ptr noundef nonnull %i.ba, i8 noundef zeroext 0) #18 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.ab, label %.thread89

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr null, ptr %i.c, align 8, !tbaa !52
  %i.bh = call i32 @mz_stream_mem_get_buffer(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.c) #18
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.bk = call i32 @mz_os_make_symlink(ptr noundef nonnull %i.i, ptr noundef %i.bj) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.3 = phi i32 [ %i.bk, %bb.ac ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %.thread89

.thread89:                                        ; preds = %bb.y, %bb.z, %bb.ad, %bb.aa
  %i.bl = phi ptr [ %.pre, %bb.ad ], [ %i.ba, %bb.aa ], [ %i.ba, %bb.z ], [ %i.ba, %bb.y ]
  %.4 = phi i32 [ %.3, %bb.ad ], [ %i.bf, %bb.aa ], [ %i.bd, %bb.z ], [ %i.bb, %bb.y ]
  %i.bm = call i32 @mz_stream_mem_close(ptr noundef %i.bl) #18 ; 0 uses
  call void @mz_stream_mem_delete(ptr noundef nonnull %i.a) #18
  br label %.critedge

bb.ae:                                            ; preds = %bb.s
  %i.bn = tail call ptr @mz_stream_os_create() #18 ; 5 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !21
  %.not82 = icmp eq ptr %i.bn, null
  br i1 %.not82, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bo = tail call i32 @mz_stream_os_open(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.i, i32 noundef 8) #18 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bq = tail call i32 @mz_zip_reader_entry_save(ptr noundef nonnull %0, ptr noundef nonnull %i.bn, ptr noundef nonnull @mz_stream_write)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.5 = phi i32 [ %i.bq, %bb.ag ], [ %i.bo, %bb.af ] ; 2 uses
  %i.br = tail call i32 @mz_stream_close(ptr noundef nonnull %i.bn) #18 ; 0 uses
  call void @mz_stream_delete(ptr noundef nonnull %i.a) #18
  %i.bs = icmp eq i32 %.5, 0
  br i1 %i.bs, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !24  ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !53
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !54
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !55
  %i.ca = call i32 @mz_os_set_file_date(ptr noundef nonnull %i.i, i64 noundef %i.bv, i64 noundef %i.bx, i64 noundef %i.bz) #18 ; 0 uses
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !24  ; 2 uses
  %.shift = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %2 = load i8, ptr %.shift, align 1, !tbaa !56
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 84
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !57
  %i.ce = call i32 @mz_zip_attrib_convert(i8 noundef zeroext %2, i32 noundef %i.cd, i8 noundef zeroext 3, ptr noundef nonnull %i.b) #18
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %bb.ai
  %i.cg = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ch = call i32 @mz_os_set_file_attribs(ptr noundef nonnull %i.i, i32 noundef %i.cg) #18 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.ah, %bb.ae, %bb.x, %bb.f, %bb.aj, %bb.ai, %bb.v, %.thread89, %bb.w, %bb.r, %bb.l, %bb.i
  %.6 = phi i32 [ %i.v, %bb.i ], [ 0, %bb.l ], [ %i.ao, %bb.r ], [ %i.aw, %bb.v ], [ %.4, %.thread89 ], [ -4, %bb.f ], [ 0, %bb.w ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ %.5, %bb.ah ], [ -4, %bb.x ], [ -4, %bb.ae ]
  call void @free(ptr noundef nonnull %i.i) #18
  call void @free(ptr noundef %i.o) #18
  br label %mz_zip_reader_is_open.exit.thread

mz_zip_reader_is_open.exit.thread:                ; preds = %bb.b, %bb.a, %bb.c, %mz_zip_reader_is_open.exit, %.critedge
  %.062 = phi i32 [ -4, %bb.c ], [ %.6, %.critedge ], [ -102, %mz_zip_reader_is_open.exit ], [ -102, %bb.a ], [ -102, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.062
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #7

declare i32 @mz_path_remove_filename(ptr noundef) local_unnamed_addr #3

declare i32 @mz_zip_entry_is_symlink(ptr noundef) local_unnamed_addr #3

declare i32 @mz_dir_make(ptr noundef) local_unnamed_addr #3

declare i32 @mz_os_file_exists(ptr noundef) local_unnamed_addr #3

declare i32 @mz_os_unlink(ptr noundef) local_unnamed_addr #3

declare i32 @mz_path_has_slash(ptr noundef) local_unnamed_addr #3

declare i32 @mz_path_remove_slash(ptr noundef) local_unnamed_addr #3

declare i32 @mz_os_is_dir(ptr noundef) local_unnamed_addr #3

declare i32 @mz_os_make_symlink(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mz_stream_write(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @mz_stream_write_uint8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @mz_stream_mem_get_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mz_stream_mem_close(ptr noundef) local_unnamed_addr #3

declare i32 @mz_os_set_file_date(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @mz_zip_attrib_convert(i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare i32 @mz_os_set_file_attribs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @mz_zip_reader_entry_save_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %mz_zip_reader_is_open.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  %.not4.i = icmp eq ptr %i.b, null
  br i1 %.not4.i, label %mz_zip_reader_is_open.exit.thread, label %mz_zip_reader_is_open.exit

mz_zip_reader_is_open.exit:                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %.not17 = icmp eq ptr %i.d, null
  br i1 %.not17, label %mz_zip_reader_is_open.exit.thread, label %bb.c

bb.c:                                             ; preds = %mz_zip_reader_is_open.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 2147483647
  br i1 %i.g, label %mz_zip_reader_is_open.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = trunc i64 %i.f to i32
  %.not18 = icmp eq i32 %2, %i.h
  br i1 %.not18, label %bb.e, label %mz_zip_reader_is_open.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @mz_stream_mem_create() #18 ; 5 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !21
  %.not19 = icmp eq ptr %i.i, null
  br i1 %.not19, label %mz_zip_reader_is_open.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @mz_stream_mem_set_buffer(ptr noundef nonnull %i.i, ptr noundef %1, i32 noundef %2) #18
  %i.j = tail call i32 @mz_stream_mem_open(ptr noundef nonnull %i.i, ptr noundef null, i32 noundef 1) #18 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @mz_zip_reader_entry_save(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull @mz_stream_mem_write)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i32 [ %i.l, %bb.g ], [ %i.j, %bb.f ]
  call void @mz_stream_mem_delete(ptr noundef nonnull %i.a) #18
  br label %mz_zip_reader_is_open.exit.thread

mz_zip_reader_is_open.exit.thread:                ; preds = %bb.b, %bb.a, %bb.e, %bb.d, %mz_zip_reader_is_open.exit, %bb.c, %bb.h
  %.011 = phi i32 [ -5, %bb.d ], [ -4, %bb.e ], [ -102, %mz_zip_reader_is_open.exit ], [ %.0, %bb.h ], [ -102, %bb.c ], [ -102, %bb.a ], [ -102, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @mz_zip_reader_entry_save_buffer_length(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %mz_zip_reader_is_open.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %.not4.i = icmp eq ptr %i.a, null
  br i1 %.not4.i, label %mz_zip_reader_is_open.exit.thread, label %mz_zip_reader_is_open.exit

mz_zip_reader_is_open.exit:                       ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %.not7 = icmp eq ptr %i.c, null
  br i1 %.not7, label %mz_zip_reader_is_open.exit.thread, label %bb.c

bb.c:                                             ; preds = %mz_zip_reader_is_open.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2147483647
  %i.g = trunc i64 %i.e to i32
  %spec.select = select i1 %i.f, i32 -102, i32 %i.g
  br label %mz_zip_reader_is_open.exit.thread

mz_zip_reader_is_open.exit.thread:                ; preds = %bb.b, %bb.a, %bb.c, %mz_zip_reader_is_open.exit
  %.0 = phi i32 [ -102, %mz_zip_reader_is_open.exit ], [ %spec.select, %bb.c ], [ -102, %bb.a ], [ -102, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mz_zip_reader_save_all(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !52
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %mz_zip_reader_goto_first_entry.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %.not4.i.i = icmp eq ptr %i.b, null
  br i1 %.not4.i.i, label %mz_zip_reader_goto_first_entry.exit.thread, label %mz_zip_reader_is_open.exit.i

mz_zip_reader_is_open.exit.i:                     ; preds = %bb.b
  %i.c = tail call i32 @mz_zip_entry_is_open(ptr noundef nonnull %i.b) #18
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %mz_zip_reader_is_open.exit.i
  %i.e = load ptr, ptr %0, align 8, !tbaa !7
  %i.f = tail call i32 @mz_zip_entry_close(ptr noundef %i.e) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %mz_zip_reader_is_open.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %.not14.i = icmp eq ptr %i.h, null
  %i.i = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  br i1 %.not14.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @mz_zip_goto_first_entry(ptr noundef %i.i) #18
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = tail call i32 @mz_zip_locate_first_entry(ptr noundef %i.i, ptr noundef nonnull %0, ptr noundef nonnull @mz_zip_reader_locate_entry_cb) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i32 [ %i.k, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !24
  %i.m = icmp eq i32 %.0.i, 0
  br i1 %i.m, label %bb.h, label %mz_zip_reader_goto_first_entry.exit

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %0, align 8, !tbaa !7
  %i.o = tail call i32 @mz_zip_entry_get_info(ptr noundef %i.n, ptr noundef nonnull %i.l) #18
  br label %mz_zip_reader_goto_first_entry.exit

mz_zip_reader_goto_first_entry.exit:              ; preds = %bb.g, %bb.h
  %.013.i = phi i32 [ %.0.i, %bb.g ], [ %i.o, %bb.h ] ; 2 uses
  %i.p = icmp eq i32 %.013.i, -100
  br i1 %i.p, label %bb.ab, label %mz_zip_reader_goto_first_entry.exit.thread

mz_zip_reader_goto_first_entry.exit.thread:       ; preds = %bb.b, %bb.a, %mz_zip_reader_goto_first_entry.exit
end_hunk_0
begin_hunk_1_@mz_zip_writer_add_info:bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 282
  %i.u = load i16, ptr %i.t, align 2, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !73
  %i.x = call i32 @mz_zip_entry_write_open(ptr noundef %i.s, ptr noundef nonnull %i.c, i16 noundef signext %i.u, i8 noundef zeroext %i.w, ptr noundef %.0.i27) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not22 = icmp eq i32 %i.x, 0
  br i1 %.not22, label %bb.h, label %mz_zip_writer_entry_close.exit

bb.h:                                             ; preds = %mz_zip_writer_entry_open.exit
  %.not23 = icmp eq ptr %1, null
  br i1 %.not23, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.z = load i32, ptr %i.y, align 4, !tbaa !90
  %i.aa = load i16, ptr %i.c, align 8, !tbaa !91
  %i.ab = zext i16 %i.aa to i32
  %i.ac = call i32 @mz_zip_attrib_is_dir(i32 noundef %i.z, i32 noundef %i.ab) #18
  %.not24 = icmp eq i32 %i.ac, 0
  br i1 %.not24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = call i32 @mz_zip_writer_add(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) ; 2 uses
  %.not25 = icmp eq i32 %i.ad, 0
  br i1 %.not25, label %bb.k, label %mz_zip_writer_entry_close.exit

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.ae = load i8, ptr %i.v, align 8, !tbaa !73
  %.not.i28 = icmp eq i8 %i.ae, 0
  %i.af = load ptr, ptr %0, align 8, !tbaa !61    ; 2 uses
  br i1 %.not.i28, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !74
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !75
  %i.ak = call i32 @mz_zip_entry_close_raw(ptr noundef %i.af, i64 noundef %i.ah, i32 noundef %i.aj) #18
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.al = call i32 @mz_zip_entry_close(ptr noundef %i.af) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i29 = phi i32 [ %i.ak, %bb.l ], [ %i.al, %bb.m ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !76
  %.not9.i = icmp eq ptr %i.an, null
  br i1 %.not9.i, label %mz_zip_writer_entry_close.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @mz_stream_mem_delete(ptr noundef nonnull %i.am) #18
  br label %mz_zip_writer_entry_close.exit

mz_zip_writer_entry_close.exit:                   ; preds = %bb.a, %bb.o, %bb.n, %bb.j, %mz_zip_writer_entry_open.exit, %mz_zip_writer_is_open.exit
  %.0 = phi i32 [ -102, %mz_zip_writer_is_open.exit ], [ %i.ad, %bb.j ], [ %i.x, %mz_zip_writer_entry_open.exit ], [ %.0.i29, %bb.o ], [ %.0.i29, %bb.n ], [ -102, %bb.a ]
  ret i32 %.0
}

declare i32 @mz_zip_attrib_is_dir(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @mz_zip_writer_add_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %mz_zip_writer_is_open.exit.thread, label %mz_zip_writer_is_open.exit

mz_zip_writer_is_open.exit:                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !61
  %.not4.i = icmp eq ptr %i.b, null
  %.not12 = icmp eq ptr %1, null
  %or.cond = or i1 %.not12, %.not4.i
  br i1 %or.cond, label %mz_zip_writer_is_open.exit.thread, label %bb.b

bb.b:                                             ; preds = %mz_zip_writer_is_open.exit
  %i.c = tail call ptr @mz_stream_mem_create() #18 ; 5 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !21
  %.not13 = icmp eq ptr %i.c, null
  br i1 %.not13, label %mz_zip_writer_is_open.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @mz_stream_mem_set_buffer(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i32 noundef %2) #18
  %i.d = tail call i32 @mz_stream_mem_open(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 1) #18 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @mz_zip_writer_add_info(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull @mz_stream_mem_read, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  call void @mz_stream_mem_delete(ptr noundef nonnull %i.a) #18
  br label %mz_zip_writer_is_open.exit.thread

mz_zip_writer_is_open.exit.thread:                ; preds = %bb.a, %bb.b, %mz_zip_writer_is_open.exit, %bb.e
  %.08 = phi i32 [ -102, %mz_zip_writer_is_open.exit ], [ %.0, %bb.e ], [ -1, %bb.b ], [ -102, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.08
}

declare i32 @mz_stream_mem_read(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define i32 @mz_zip_writer_add_file(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.mz_zip_file_s, align 8      ; 19 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [1024 x i8], align 16             ; 4 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store ptr %2, ptr %i.e, align 8, !tbaa !52
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %mz_zip_writer_is_open.exit.thread, label %mz_zip_writer_is_open.exit

mz_zip_writer_is_open.exit:                       ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !61
  %.not4.i = icmp eq ptr %i.f, null
  %.not36 = icmp eq ptr %1, null
  %or.cond = or i1 %.not36, %.not4.i
  br i1 %or.cond, label %mz_zip_writer_is_open.exit.thread, label %bb.b

bb.b:                                             ; preds = %mz_zip_writer_is_open.exit
  %.not37 = icmp eq ptr %2, null
  br i1 %.not37, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @mz_path_get_filename(ptr noundef nonnull %1, ptr noundef nonnull %i.e) #18 ; 2 uses
  %.not38 = icmp eq i32 %i.g, 0
  br i1 %.not38, label %._crit_edge, label %mz_zip_writer_is_open.exit.thread

._crit_edge:                                      ; preds = %bb.c
  %.promoted.pre = load ptr, ptr %i.e, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %.promoted = phi ptr [ %.promoted.pre, %._crit_edge ], [ %2, %bb.b ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  %i.h = phi ptr [ %i.j, %.critedge ], [ %.promoted, %bb.d ] ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !51
  switch i8 %i.i, label %bb.f [
    i8 92, label %.critedge
    i8 47, label %.critedge
  ]

.critedge:                                        ; preds = %bb.e, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !52
  br label %bb.e, !llvm.loop !92

bb.f:                                             ; preds = %bb.e
  store i16 813, ptr %3, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.l = load i16, ptr %i.k, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 %i.l, ptr %i.m, align 2, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.h, ptr %i.n, align 8, !tbaa !25
  %i.o = call i64 @mz_os_get_file_size(ptr noundef nonnull %1) #18
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.o, ptr %i.p, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 286
  %i.s = load i8, ptr %i.r, align 2, !tbaa !83
  %.not39 = icmp eq i8 %i.s, 0
  %spec.store.select = select i1 %.not39, i16 2048, i16 10240
  store i16 %spec.store.select, ptr %i.q, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 287
  %i.u = load i8, ptr %i.t, align 1, !tbaa !93
  %.not40 = icmp eq i8 %i.u, 0
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 122
  store i16 1, ptr %i.v, align 2, !tbaa !94
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = call i32 @mz_os_get_file_date(ptr noundef nonnull %1, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y) #18 ; 0 uses
  %i.aa = call i32 @mz_os_get_file_attribs(ptr noundef nonnull %1, ptr noundef nonnull %i.b) #18 ; 0 uses
  %.shift = getelementptr inbounds nuw i8, ptr %3, i64 1
  %4 = load i8, ptr %.shift, align 1, !tbaa !56   ; 2 uses
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  switch i8 %4, label %bb.i [
    i8 10, label %bb.j
    i8 0, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ac = call i32 @mz_zip_attrib_convert(i8 noundef zeroext %4, i32 noundef %i.ab, i8 noundef zeroext 0, ptr noundef nonnull %i.a) #18
  %i.ad = icmp eq i32 %i.ac, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 84
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %i.ae = load i32, ptr %i.a, align 4
  %i.af = select i1 %i.ad, i32 %i.ae, i32 %.pre
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ah = shl i32 %i.ag, 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.aj = or i32 %i.af, %i.ah
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !57
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i32 %i.ab, ptr %i.ak, align 4, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 285
  %i.am = load i8, ptr %i.al, align 1, !tbaa !95
  %.not41 = icmp eq i8 %i.am, 0
  br i1 %.not41, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = call i32 @mz_os_is_symlink(ptr noundef nonnull %1) #18
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ap = call i32 @mz_os_read_symlink(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef 1024) #18 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %mz_zip_writer_is_open.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 112
  store ptr %i.d, ptr %i.ar, align 8, !tbaa !50
  br label %.thread50.thread67

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.as = call i32 @mz_os_is_dir(ptr noundef nonnull %1) #18
  %.not42 = icmp eq i32 %i.as, 0
  br i1 %.not42, label %.thread50.thread67, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = call ptr @mz_stream_os_create() #18     ; 5 uses
  store ptr %i.at, ptr %i.c, align 8, !tbaa !21
  %.not43 = icmp eq ptr %i.at, null
  br i1 %.not43, label %mz_zip_writer_is_open.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = call i32 @mz_stream_os_open(ptr noundef nonnull %i.at, ptr noundef nonnull %1, i32 noundef 1) #18 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.thread50, label %.thread50.thread63

.thread50.thread67:                               ; preds = %bb.o, %bb.n
  %i.aw = call i32 @mz_zip_writer_add_info(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @mz_stream_read, ptr noundef nonnull %3)
  br label %mz_zip_writer_is_open.exit.thread

.thread50:                                        ; preds = %bb.q
  %i.ax = call i32 @mz_zip_writer_add_info(ptr noundef nonnull %0, ptr noundef nonnull %i.at, ptr noundef nonnull @mz_stream_read, ptr noundef nonnull %3)
  br label %.thread50.thread63

.thread50.thread63:                               ; preds = %bb.q, %.thread50
  %.266 = phi i32 [ %i.ax, %.thread50 ], [ %i.au, %bb.q ]
  %i.ay = call i32 @mz_stream_close(ptr noundef nonnull %i.at) #18 ; 0 uses
  call void @mz_stream_delete(ptr noundef nonnull %i.c) #18
  br label %mz_zip_writer_is_open.exit.thread

mz_zip_writer_is_open.exit.thread:                ; preds = %bb.m, %.thread50.thread67, %bb.a, %.thread50.thread63, %bb.p, %bb.c, %mz_zip_writer_is_open.exit
  %.027 = phi i32 [ -102, %mz_zip_writer_is_open.exit ], [ -1, %bb.p ], [ %i.g, %bb.c ], [ %i.aw, %.thread50.thread67 ], [ %.266, %.thread50.thread63 ], [ -102, %bb.a ], [ %i.ap, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %.027
}

declare i32 @mz_path_get_filename(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @mz_os_get_file_size(ptr noundef) local_unnamed_addr #3

declare i32 @mz_os_get_file_date(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mz_os_get_file_attribs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mz_os_is_symlink(ptr noundef) local_unnamed_addr #3

declare i32 @mz_os_read_symlink(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @mz_zip_writer_add_path(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(address) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 16 uses
  %i.c = alloca [1024 x i8], align 16             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.d = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 42) #19
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @mz_os_file_exists(ptr noundef nonnull %1) #18
  %.not58 = icmp eq i32 %i.e, 0
  br i1 %.not58, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1023) #18 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1023
  store i8 0, ptr %i.g, align 1, !tbaa !51
  %i.h = call i32 @mz_path_remove_filename(ptr noundef nonnull %i.c) #18 ; 0 uses
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #19
  %.fr91 = freeze i64 %i.i
  %i.j = getelementptr i8, ptr %i.c, i64 %.fr91
  %i.k = getelementptr i8, ptr %i.j, i64 1
  br label %bb.p

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.l = tail call i32 @mz_os_is_dir(ptr noundef nonnull %1) #18
  %.not62.not = icmp ne i32 %i.l, 0               ; 2 uses
  %.not59 = icmp eq ptr %2, null
  %.051 = select i1 %.not59, ptr %1, ptr %2       ; 4 uses
  %.not60 = icmp eq i8 %3, 0
  br i1 %.not60, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq ptr %.051, %1
  %or.cond = and i1 %i.m, %.not62.not
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 @mz_path_get_filename(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #18
  %i.o = icmp eq i32 %i.n, 0
  %i.p = load ptr, ptr %i.a, align 8
  %spec.select = select i1 %i.o, ptr %i.p, ptr %1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.051) #19
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.046 = phi ptr [ %1, %bb.d ], [ %i.r, %bb.g ], [ %spec.select, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 285 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !95
  %.not63 = icmp eq i8 %i.t, 0
  br i1 %.not63, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.v = load i8, ptr %i.u, align 4, !tbaa !96
  %.not64 = icmp eq i8 %i.v, 0
  br i1 %.not64, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = call i32 @mz_os_is_symlink(ptr noundef nonnull %1) #18
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.y = load i8, ptr %.046, align 1, !tbaa !51
  %.not65 = icmp eq i8 %i.y, 0
  br i1 %.not65, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = call i32 @mz_zip_writer_add_file(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.046)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.048 = phi i32 [ %i.z, %bb.l ], [ 0, %bb.k ]   ; 4 uses
  br i1 %.not62.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = load i8, ptr %i.s, align 1, !tbaa !95
  %.not67 = icmp eq i8 %i.aa, 0
  br i1 %.not67, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = call i32 @mz_os_is_symlink(ptr noundef nonnull %1) #18
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.c
  %.152 = phi ptr [ %i.c, %bb.c ], [ %.051, %bb.o ], [ %.051, %bb.n ] ; 3 uses
  %.050 = phi ptr [ %i.c, %bb.c ], [ %1, %bb.o ], [ %1, %bb.n ] ; 4 uses
  %.1 = phi i32 [ 0, %bb.c ], [ %.048, %bb.o ], [ %.048, %bb.n ] ; 3 uses
  %.0 = phi ptr [ %i.k, %bb.c ], [ null, %bb.o ], [ null, %bb.n ] ; 2 uses
  %i.ad = call ptr @mz_os_open_dir(ptr noundef nonnull %.050) #18 ; 8 uses
  %.not68 = icmp eq ptr %i.ad, null
  br i1 %.not68, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.p
  %.not70 = icmp eq i8 %4, 0                      ; 2 uses
  %.not71 = icmp eq ptr %.0, null
  br i1 %.not71, label %.preheader.split.us, label %.outer
end_hunk_1
