inline.NumInlined: 158
inline.NumDeleted: 36
begin_hunk_0_@mz_zip_writer_init_file:bb.a
  store i32 4, ptr %i.z, align 8, !tbaa !204
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  store i32 4, ptr %i.aa, align 8, !tbaa !205
  %i.ab = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.16) ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call i32 @mz_zip_writer_end(ptr noundef nonnull %0) ; 0 uses
  br label %mz_zip_writer_init.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !193
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  store ptr %i.ab, ptr %i.af, align 8, !tbaa !209
  %.not35 = icmp eq i64 %2, 0
  br i1 %.not35, label %mz_zip_writer_init.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.030 = phi i64 [ %2, %bb.n ], [ %i.al, %bb.p ] ; 2 uses
  %.026 = phi i64 [ 0, %bb.n ], [ %i.ak, %bb.p ]  ; 2 uses
  %i.ag = call i64 @llvm.umin.i64(i64 %.030, i64 4096) ; 4 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !266
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !211
  %i.aj = call i64 %i.ah(ptr noundef %i.ai, i64 noundef %.026, ptr noundef nonnull %i.a, i64 noundef %i.ag) #33
  %.not36 = icmp eq i64 %i.aj, %i.ag
  br i1 %.not36, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.ak = add i64 %.026, %i.ag
  %i.al = sub i64 %.030, %i.ag                    ; 2 uses
  %.not37 = icmp eq i64 %i.al, 0
  br i1 %.not37, label %bb.q, label %bb.o, !llvm.loop !271

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %mz_zip_writer_init.exit.thread

.critedge:                                        ; preds = %bb.o
  %i.am = call i32 @mz_zip_writer_end(ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %mz_zip_writer_init.exit.thread

mz_zip_writer_init.exit.thread:                   ; preds = %bb.a, %bb.b, %bb.c, %bb.j, %bb.m, %bb.q, %.critedge, %bb.l
  %.2 = phi i32 [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %.critedge ], [ 1, %bb.q ], [ 0, %bb.j ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @mz_zip_file_write_func(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3) #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.e = tail call i64 @ftello(ptr noundef %i.d)
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.e, %1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !193
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !209
  %i.j = tail call i32 @fseeko(ptr noundef %i.i, i64 noundef %1, i32 noundef 0)
  %.not11 = icmp eq i32 %i.j, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !193
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !209
  %i.n = tail call i64 @fwrite(ptr noundef %2, i64 noundef 1, i64 noundef %3, ptr noundef %i.m)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.0 = phi i64 [ %i.n, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @mz_zip_writer_init_from_reader(ptr noundef captures(address) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 5 uses
  %.not29 = icmp eq ptr %i.b, null
  br i1 %.not29, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !194
  %.not30 = icmp eq i32 %i.d, 1
  br i1 %.not30, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !215
  %i.g = icmp eq i32 %i.f, 65535
  br i1 %i.g, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i64, ptr %0, align 8, !tbaa !206
  %i.i = add i64 %i.h, -4294967220
  %i.j = icmp ult i64 %i.i, -4294967296
  br i1 %i.j, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !209  ; 2 uses
  %.not31 = icmp eq ptr %i.l, null
  br i1 %.not31, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !211
  %.not35 = icmp ne ptr %i.n, %0
  %.not36 = icmp eq ptr %1, null
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @mz_zip_file_write_func, ptr %i.o, align 8, !tbaa !266
  %i.p = tail call ptr @freopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.l) #33 ; 2 uses
  store ptr %i.p, ptr %i.k, align 8, !tbaa !209
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i32 @mz_zip_reader_end(ptr noundef nonnull %0) ; 0 uses
  br label %bb.o

bb.j:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !228
  %.not32 = icmp eq ptr %i.t, null
  br i1 %.not32, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !211
  %.not34 = icmp eq ptr %i.v, %0
  br i1 %.not34, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.x = load i64, ptr %i.w, align 8, !tbaa !229
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i64 %i.x, ptr %i.y, align 8, !tbaa !269
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @mz_zip_heap_write_func, ptr %i.z, align 8, !tbaa !266
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !266
  %.not33 = icmp eq ptr %i.ab, null
  br i1 %.not33, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !216
  store i64 %i.ad, ptr %0, align 8, !tbaa !206
  store i32 2, ptr %i.c, align 4, !tbaa !194
  store i64 0, ptr %i.ac, align 8, !tbaa !216
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.k, %bb.g, %bb.d, %bb.e, %bb.a, %bb.b, %bb.c, %bb.n, %bb.i
  %.0 = phi i32 [ 0, %bb.k ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.i ], [ 1, %bb.n ], [ 0, %bb.g ], [ 0, %bb.m ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.e ]
  ret i32 %.0
}

declare ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @mz_zip_writer_add_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @mz_zip_writer_add_mem_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef null, i16 noundef zeroext 0, i32 noundef %4, i64 noundef 0, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @mz_zip_writer_add_mem_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly captures(address_is_null) %4, i16 noundef zeroext %5, i32 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca [30 x i8], align 16               ; 15 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %9 = alloca %struct.mz_zip_writer_add_state, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.g = icmp slt i32 %6, 0
  %spec.store.select = select i1 %i.g, i32 6, i32 %6 ; 2 uses
  %i.h = and i32 %spec.store.select, 15           ; 4 uses
  %.not = icmp eq i32 %i.h, 0
  %i.i = and i32 %spec.store.select, 1024
  %i.j = icmp ne i32 %i.i, 0                      ; 4 uses
  %i.k = or i1 %.not, %i.j                        ; 2 uses
  %.not164 = icmp eq ptr %0, null
  br i1 %.not164, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !193  ; 7 uses
  %.not165 = icmp eq ptr %i.m, null
  br i1 %.not165, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !194
  %.not166 = icmp eq i32 %i.o, 2
  br i1 %.not166, label %bb.d, label %mz_zip_writer_validate_archive_name.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %3, 0                        ; 2 uses
  %i.q = icmp ne ptr %2, null
  %or.cond = or i1 %i.q, %i.p
  %i.r = icmp ne ptr %1, null
  %or.cond3 = and i1 %i.r, %or.cond
  br i1 %or.cond3, label %bb.e, label %mz_zip_writer_validate_archive_name.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i16 %5, 0
  %i.t = icmp ne ptr %4, null
  %or.cond5 = or i1 %i.t, %i.s
  br i1 %or.cond5, label %bb.f, label %mz_zip_writer_validate_archive_name.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !215
  %i.w = icmp eq i32 %i.v, 65535
  %i.x = icmp samesign ugt i32 %i.h, 10
  %or.cond7 = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond7, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i64, ptr %0, align 8, !tbaa !206    ; 3 uses
  %i.z = icmp eq i64 %7, 0
  %or.cond9.not212 = or i1 %i.z, %i.j
  %i.aa = or i64 %7, %3                           ; 2 uses
  %or.cond11.not = icmp ult i64 %i.aa, 4294967296
  %or.cond180 = and i1 %or.cond11.not, %or.cond9.not212
  br i1 %or.cond180, label %bb.h, label %mz_zip_writer_validate_archive_name.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = load i8, ptr %1, align 1, !tbaa !7      ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 47
  br i1 %i.ac, label %mz_zip_writer_validate_archive_name.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.i
  %i.ad = phi i8 [ %.pr.i, %bb.i ], [ %i.ab, %bb.h ]
  %.0.i184 = phi ptr [ %i.ae, %bb.i ], [ %1, %bb.h ]
  switch i8 %i.ad, label %bb.i [
    i8 0, label %mz_zip_writer_validate_archive_name.exit
    i8 92, label %mz_zip_writer_validate_archive_name.exit.thread
    i8 58, label %mz_zip_writer_validate_archive_name.exit.thread
  ]

bb.i:                                             ; preds = %.preheader.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i184, i64 1 ; 2 uses
  %.pr.i = load i8, ptr %i.ae, align 1, !tbaa !7
  br label %.preheader.i, !llvm.loop !272

mz_zip_writer_validate_archive_name.exit:         ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.af = call i64 @time(ptr noundef nonnull %i.f) #33 ; 0 uses
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !48
  call fastcc void @mz_zip_time_t_to_dos_time(i64 noundef %i.ag, ptr noundef %i.c, ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36 ; 9 uses
  %i.ai = icmp ugt i64 %i.ah, 65535
  br i1 %i.ai, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.j

bb.j:                                             ; preds = %mz_zip_writer_validate_archive_name.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !267 ; 3 uses
  %.not.i185 = icmp eq i64 %i.ak, 0
  br i1 %.not.i185, label %mz_zip_writer_compute_padding_needed_for_file_alignment.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = load i64, ptr %0, align 8, !tbaa !206
  %i.am = add i64 %i.ak, -1                       ; 2 uses
  %i.an = and i64 %i.al, %i.am
  %i.ao = sub i64 %i.ak, %i.an
  %i.ap = and i64 %i.am, 4294967295
  %i.aq = and i64 %i.ap, %i.ao
  br label %mz_zip_writer_compute_padding_needed_for_file_alignment.exit

mz_zip_writer_compute_padding_needed_for_file_alignment.exit: ; preds = %bb.j, %bb.k
  %.0.i186 = phi i64 [ %i.aq, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %i.ar = load i32, ptr %i.u, align 8, !tbaa !215
  %i.as = icmp eq i32 %i.ar, 65535
  br i1 %i.as, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.l

bb.l:                                             ; preds = %mz_zip_writer_compute_padding_needed_for_file_alignment.exit
  %i.at = load i64, ptr %0, align 8, !tbaa !206
  %i.au = zext i16 %5 to i64                      ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 76
  %i.aw = add nuw nsw i64 %i.av, %i.ah
  %i.ax = add nuw nsw i64 %i.aw, %.0.i186
  %i.ay = add i64 %i.ax, %i.at
  %i.az = icmp ugt i64 %i.ay, 4294967295
  br i1 %i.az, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not168 = icmp eq i64 %i.ah, 0
  br i1 %.not168, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr i8, ptr %1, i64 %i.ah
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !7
  %i.bd = icmp eq i8 %i.bc, 47
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %or.cond13.not = icmp eq i64 %i.aa, 0
  br i1 %or.cond13.not, label %bb.p, label %mz_zip_writer_validate_archive_name.exit.thread

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.0154 = phi i32 [ 16, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !220
  %i.bg = add nuw nsw i64 %i.au, 46
  %i.bh = add nuw nsw i64 %i.bg, %i.ah
  %i.bi = add i64 %i.bh, %i.bf                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !217
  %i.bl = icmp ugt i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.q, label %mz_zip_array_reserve.exit

bb.q:                                             ; preds = %bb.p
  %i.bm = call fastcc i32 @mz_zip_array_ensure_capacity(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i64 noundef %i.bi, i32 noundef 1)
  %.not.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i, label %mz_zip_writer_validate_archive_name.exit.thread, label %mz_zip_array_reserve.exit

mz_zip_array_reserve.exit:                        ; preds = %bb.q, %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !220
  %i.bp = add i64 %i.bo, 1                        ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !217
  %i.bs = icmp ugt i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.r, label %mz_zip_array_reserve.exit183

bb.r:                                             ; preds = %mz_zip_array_reserve.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.bu = call fastcc i32 @mz_zip_array_ensure_capacity(ptr noundef nonnull %0, ptr noundef nonnull %i.bt, i64 noundef %i.bp, i32 noundef 1)
  %.not.i182 = icmp eq i32 %i.bu, 0
  br i1 %.not.i182, label %mz_zip_writer_validate_archive_name.exit.thread, label %mz_zip_array_reserve.exit183

mz_zip_array_reserve.exit183:                     ; preds = %bb.r, %mz_zip_array_reserve.exit
  %or.cond15.not = or i1 %i.p, %i.k
  br i1 %or.cond15.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %mz_zip_array_reserve.exit183
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !195
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !198
  %i.bz = call ptr %i.bw(ptr noundef %i.by, i64 noundef 1, i64 noundef 319352) #33 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %mz_zip_array_reserve.exit183
  %.0145 = phi ptr [ %i.bz, %bb.s ], [ null, %mz_zip_array_reserve.exit183 ] ; 7 uses
  %i.cb = add nuw nsw i64 %.0.i186, 30            ; 2 uses
  %i.cc = trunc i64 %i.cb to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.cd = call i32 @llvm.umin.i32(i32 %i.cc, i32 4096)
  %i.ce = zext nneg i32 %i.cd to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.ce, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.018.i = phi i64 [ %i.y, %bb.t ], [ %i.cm, %bb.v ] ; 2 uses
  %.016.i = phi i32 [ %i.cc, %bb.t ], [ %i.cn, %bb.v ] ; 3 uses
  %.not.i187 = icmp eq i32 %.016.i, 0
  br i1 %.not.i187, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = call i32 @llvm.umin.i32(i32 %.016.i, i32 4096) ; 2 uses
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !266
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !211
  %i.ck = zext nneg i32 %i.ch to i64              ; 3 uses
  %i.cl = call i64 %i.ci(ptr noundef %i.cj, i64 noundef %.018.i, ptr noundef nonnull %i.b, i64 noundef %i.ck) #33, !inline_history !273
  %.not21.i = icmp eq i64 %i.cl, %i.ck
  %i.cm = add i64 %.018.i, %i.ck
  %i.cn = sub i32 %.016.i, %i.ch
  br i1 %.not21.i, label %bb.u, label %bb.w, !llvm.loop !274

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !196
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !198
  call void %i.cp(ptr noundef %i.cr, ptr noundef %.0145) #33
  br label %mz_zip_writer_validate_archive_name.exit.thread

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.cs = add i64 %.0.i186, %i.y                  ; 2 uses
  %i.ct = add i64 %i.cb, %i.y                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %i.e, i8 0, i64 30, i1 false)
  %i.cu = load ptr, ptr %i.cf, align 8, !tbaa !266
  %i.cv = load ptr, ptr %i.cg, align 8, !tbaa !211
  %i.cw = call i64 %i.cu(ptr noundef %i.cv, i64 noundef %i.ct, ptr noundef nonnull %1, i64 noundef %i.ah) #33
  %.not173 = icmp eq i64 %i.cw, %i.ah
  br i1 %.not173, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !196
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !198
  call void %i.cy(ptr noundef %i.da, ptr noundef %.0145) #33
  br label %mz_zip_writer_validate_archive_name.exit.thread

bb.z:                                             ; preds = %bb.x
  %i.db = add i64 %i.ct, %i.ah                    ; 3 uses
  br i1 %i.j, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = call i64 @mz_crc32(i64 noundef 0, ptr noundef %2, i64 noundef %3)
  %i.dd = trunc nuw i64 %i.dc to i32              ; 2 uses
  %i.de = icmp ult i64 %3, 4
  %spec.select178 = or i1 %i.de, %i.k
  br i1 %spec.select178, label %.thread, label %tdefl_create_comp_flags_from_zip_params.exit

.thread:                                          ; preds = %bb.z, %bb.aa
  %.0150205 = phi i64 [ %3, %bb.aa ], [ %7, %bb.z ]
  %.0155203 = phi i32 [ %i.dd, %bb.aa ], [ %8, %bb.z ]
  %i.df = load ptr, ptr %i.cf, align 8, !tbaa !266
  %i.dg = load ptr, ptr %i.cg, align 8, !tbaa !211
  %i.dh = call i64 %i.df(ptr noundef %i.dg, i64 noundef %i.db, ptr noundef %2, i64 noundef %3) #33
  %.not175 = icmp eq i64 %i.dh, %3
  br i1 %.not175, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.thread
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !196
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !198
  call void %i.dj(ptr noundef %i.dl, ptr noundef %.0145) #33
  br label %mz_zip_writer_validate_archive_name.exit.thread

bb.ac:                                            ; preds = %.thread
  %i.dm = add i64 %i.db, %3
  %spec.select179 = select i1 %i.j, i16 8, i16 0
  br label %bb.ae

tdefl_create_comp_flags_from_zip_params.exit:     ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  store ptr %0, ptr %9, align 8, !tbaa !275
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.db, ptr %i.dn, align 8, !tbaa !277
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i64 0, ptr %i.do, align 8, !tbaa !278
  %i.dp = zext nneg i32 %i.h to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @tdefl_write_image_to_png_file_in_memory_ex.s_tdefl_png_num_probes, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = icmp samesign ult i32 %i.h, 4
  %i.dt = select i1 %i.ds, i32 16384, i32 0
  %i.du = or i32 %i.dr, %i.dt
  %i.dv = call i32 @tdefl_init(ptr noundef %.0145, ptr noundef nonnull @mz_zip_writer_add_put_buf_callback, ptr noundef nonnull %9, i32 noundef %i.du) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %3, ptr %i.a, align 8, !tbaa !48
  %i.dw = call i32 @tdefl_compress(ptr noundef %.0145, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not174 = icmp eq i32 %i.dw, 1
  br i1 %.not174, label %.thread206, label %bb.ad

.thread206:                                       ; preds = %tdefl_create_comp_flags_from_zip_params.exit
  %i.dx = load i64, ptr %i.do, align 8, !tbaa !278
  %i.dy = load i64, ptr %i.dn, align 8, !tbaa !277
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ae

bb.ad:                                            ; preds = %tdefl_create_comp_flags_from_zip_params.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !196
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !198
  call void %i.ea(ptr noundef %i.ec, ptr noundef %.0145) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %mz_zip_writer_validate_archive_name.exit.thread

bb.ae:                                            ; preds = %.thread206, %bb.ac
  %.0150204 = phi i64 [ %3, %.thread206 ], [ %.0150205, %bb.ac ] ; 2 uses
  %.0155202 = phi i32 [ %i.dd, %.thread206 ], [ %.0155203, %bb.ac ] ; 2 uses
  %.1153 = phi i16 [ 8, %.thread206 ], [ %spec.select179, %bb.ac ] ; 3 uses
  %.1149 = phi i64 [ %i.dy, %.thread206 ], [ %i.dm, %bb.ac ] ; 2 uses
  %.1147 = phi i64 [ %i.dx, %.thread206 ], [ %3, %bb.ac ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !196
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !198
  call void %i.ee(ptr noundef %i.eg, ptr noundef %.0145) #33
  %i.eh = icmp ugt i64 %.1147, 4294967295
  %i.ei = icmp ugt i64 %.1149, 4294967295
  %or.cond17 = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond17, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = trunc nuw i64 %i.ah to i16              ; 2 uses
  %i.ek = load i16, ptr %i.c, align 2, !tbaa !108 ; 2 uses
  %i.el = load i16, ptr %i.d, align 2, !tbaa !108 ; 2 uses
  store i32 67324752, ptr %i.e, align 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.not.i189 = icmp eq i16 %.1153, 0
  %i.en = select i1 %.not.i189, i16 0, i16 20
  store i16 %i.en, ptr %i.em, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i16 0, ptr %i.eo, align 2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i16 %.1153, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i16 %i.ek, ptr %i.eq, align 2
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i16 %i.el, ptr %i.er, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  store i32 %.0155202, ptr %i.es, align 2
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.eu = trunc nuw i64 %.1147 to i32
  store i32 %i.eu, ptr %i.et, align 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.ew = trunc i64 %.0150204 to i32
  store i32 %i.ew, ptr %i.ev, align 2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  store i16 %i.ej, ptr %i.ex, align 2
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i16 0, ptr %i.ey, align 4
  %i.ez = load ptr, ptr %i.cf, align 8, !tbaa !266
  %i.fa = load ptr, ptr %i.cg, align 8, !tbaa !211
  %i.fb = call i64 %i.ez(ptr noundef %i.fa, i64 noundef %i.cs, ptr noundef nonnull %i.e, i64 noundef 30) #33
  %.not176 = icmp eq i64 %i.fb, 30
  br i1 %.not176, label %bb.ag, label %mz_zip_writer_validate_archive_name.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.fc = call fastcc i32 @mz_zip_writer_add_to_central_dir(ptr noundef %0, ptr noundef nonnull %1, i16 noundef zeroext %i.ej, ptr noundef %4, i16 noundef zeroext %5, i64 noundef %.0150204, i64 noundef %.1147, i32 noundef %.0155202, i16 noundef zeroext %.1153, i16 noundef zeroext %i.ek, i16 noundef zeroext %i.el, i64 noundef %i.cs, i32 noundef %.0154)
  %.not177 = icmp eq i32 %i.fc, 0
  br i1 %.not177, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fd = load i32, ptr %i.u, align 8, !tbaa !215
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr %i.u, align 8, !tbaa !215
  store i64 %.1149, ptr %0, align 8, !tbaa !206
  br label %mz_zip_writer_validate_archive_name.exit.thread

mz_zip_writer_validate_archive_name.exit.thread:  ; preds = %.preheader.i, %.preheader.i, %bb.r, %bb.q, %bb.h, %bb.ad, %bb.ag, %bb.af, %bb.ae, %bb.s, %bb.o, %mz_zip_writer_compute_padding_needed_for_file_alignment.exit, %bb.l, %mz_zip_writer_validate_archive_name.exit, %bb.g, %bb.a, %bb.b, %bb.c, %bb.f, %bb.d, %bb.e, %bb.ah, %bb.ab, %bb.y, %bb.w
  %.1 = phi i32 [ 0, %bb.o ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.q ], [ 0, %mz_zip_writer_validate_archive_name.exit ], [ 0, %mz_zip_writer_compute_padding_needed_for_file_alignment.exit ], [ 0, %bb.r ], [ 0, %bb.y ], [ 0, %bb.ab ], [ 0, %bb.s ], [ 0, %bb.ae ], [ 1, %bb.ah ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ad ], [ 0, %bb.w ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.l ], [ 0, %bb.h ], [ 0, %.preheader.i ], [ 0, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  ret i32 %.1
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define internal fastcc void @mz_zip_time_t_to_dos_time(i64 noundef %0, ptr noundef nonnull writeonly captures(none) initializes((0, 2)) %1, ptr noundef nonnull writeonly captures(none) initializes((0, 2)) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !48
  %i.b = call ptr @localtime(ptr noundef nonnull %i.a) #33 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !242
  %i.e = shl i32 %i.d, 11
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !243
  %i.h = shl i32 %i.g, 5
  %i.i = add nsw i32 %i.h, %i.e
  %i.j = load i32, ptr %i.b, align 8, !tbaa !244
  %i.k = lshr i32 %i.j, 1
  %i.l = add i32 %i.i, %i.k
  %i.m = trunc i32 %i.l to i16
  store i16 %i.m, ptr %1, align 2, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !239
  %i.p = shl i32 %i.o, 9
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !240
  %i.s = shl i32 %i.r, 5
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !241
  %i.v = add i32 %i.p, 24608
  %i.w = add i32 %i.v, %i.s
  %i.x = add i32 %i.w, %i.u
  %i.y = trunc i32 %i.x to i16
  store i16 %i.y, ptr %2, align 2, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @mz_zip_writer_add_put_buf_callback(ptr noundef %0, i32 noundef %1, ptr noundef captures(none) %2) #5 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !275    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !266
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !211
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@mz_zip_writer_add_to_central_dir:bb.a
  %i.u = icmp ugt i64 %i.i, %i.t
  br i1 %i.u, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !207
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.i72 = phi i64 [ %spec.select.i, %bb.d ], [ %i.w, %bb.e ] ; 4 uses
  %i.v = icmp ult i64 %.0.i72, %i.i
  %i.w = shl i64 %.0.i72, 1
  br i1 %i.v, label %bb.e, label %.loopexit.i, !llvm.loop !280

.loopexit.i:                                      ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !198
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !207
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !218
  %i.ae = zext i32 %i.ad to i64
  %i.af = tail call ptr %i.y(ptr noundef %i.aa, ptr noundef %i.ab, i64 noundef %i.ae, i64 noundef %.0.i72) #33, !inline_history !219 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %mz_zip_array_push_back.exit56.thread, label %mz_zip_array_ensure_capacity.exit

mz_zip_array_ensure_capacity.exit:                ; preds = %.loopexit.i
  store ptr %i.af, ptr %i.d, align 8, !tbaa !207
  store i64 %.0.i72, ptr %i.s, align 8, !tbaa !217
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %mz_zip_array_ensure_capacity.exit
  %i.ah = phi ptr [ %.pre, %._crit_edge ], [ %i.af, %mz_zip_array_ensure_capacity.exit ]
  store i64 %i.i, ptr %i.e, align 8, !tbaa !220
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !218
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = mul i64 %i.f, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al
  %i.an = mul nuw nsw i64 %i.ak, 46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 16 %i.b, i64 %i.an, i1 false)
  %i.ao = icmp eq i16 %2, 0
  br i1 %i.ao, label %mz_zip_array_push_back.exit52, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i49 = icmp eq ptr %1, null
  br i1 %.not.i49, label %mz_zip_array_push_back.exit56.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !220 ; 2 uses
  %i.aq = add i64 %i.ap, %i.j                     ; 3 uses
  %i.ar = load i64, ptr %i.s, align 8, !tbaa !217 ; 2 uses
  %i.as = icmp ugt i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.i, label %._crit_edge23

._crit_edge23:                                    ; preds = %bb.h
  %.pre24 = load ptr, ptr %i.d, align 8, !tbaa !207
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %spec.select.i76 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.0.i77 = phi i64 [ %spec.select.i76, %bb.i ], [ %i.au, %bb.j ] ; 4 uses
  %i.at = icmp ult i64 %.0.i77, %i.aq
  %i.au = shl i64 %.0.i77, 1
  br i1 %i.at, label %bb.j, label %.loopexit.i78, !llvm.loop !280

.loopexit.i78:                                    ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !197
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !198
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !207
  %i.ba = load i32, ptr %i.ai, align 8, !tbaa !218
  %i.bb = zext i32 %i.ba to i64
  %i.bc = tail call ptr %i.aw(ptr noundef %i.ay, ptr noundef %i.az, i64 noundef %i.bb, i64 noundef %.0.i77) #33, !inline_history !219 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %mz_zip_array_push_back.exit56.thread, label %mz_zip_array_ensure_capacity.exit80

mz_zip_array_ensure_capacity.exit80:              ; preds = %.loopexit.i78
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !207
  store i64 %.0.i77, ptr %i.s, align 8, !tbaa !217
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge23, %mz_zip_array_ensure_capacity.exit80
  %i.be = phi ptr [ %.pre24, %._crit_edge23 ], [ %i.bc, %mz_zip_array_ensure_capacity.exit80 ]
  store i64 %i.aq, ptr %i.e, align 8, !tbaa !220
  %i.bf = load i32, ptr %i.ai, align 8, !tbaa !218
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = mul i64 %i.ap, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh
  %i.bj = mul nuw nsw i64 %i.bg, %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull align 1 %1, i64 %i.bj, i1 false)
  br label %mz_zip_array_push_back.exit52

mz_zip_array_push_back.exit52:                    ; preds = %bb.f, %bb.k
  %i.bk = icmp eq i16 %4, 0
  br i1 %i.bk, label %mz_zip_array_push_back.exit47, label %bb.l

bb.l:                                             ; preds = %mz_zip_array_push_back.exit52
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %mz_zip_array_push_back.exit56.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = load i64, ptr %i.e, align 8, !tbaa !220 ; 2 uses
  %i.bm = add i64 %i.bl, %i.k                     ; 3 uses
  %i.bn = load i64, ptr %i.s, align 8, !tbaa !217
  %i.bo = icmp ugt i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = tail call fastcc i32 @mz_zip_array_ensure_capacity(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i64 noundef %i.bm, i32 noundef 1)
  %.not.i62 = icmp eq i32 %i.bp, 0
  br i1 %.not.i62, label %mz_zip_array_push_back.exit56.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i64 %i.bm, ptr %i.e, align 8, !tbaa !220
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !207
  %i.br = load i32, ptr %i.ai, align 8, !tbaa !218
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = mul i64 %i.bl, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bt
  %i.bv = mul nuw nsw i64 %i.bs, %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr nonnull align 1 %3, i64 %i.bv, i1 false)
  br label %mz_zip_array_push_back.exit47

mz_zip_array_push_back.exit47:                    ; preds = %bb.o, %mz_zip_array_push_back.exit52
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !220 ; 2 uses
  %i.bz = add i64 %i.by, 1                        ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !217
  %i.cc = icmp ugt i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.p, label %mz_zip_array_push_back.exit

bb.p:                                             ; preds = %mz_zip_array_push_back.exit47
  %i.cd = tail call fastcc i32 @mz_zip_array_ensure_capacity(ptr noundef nonnull %0, ptr noundef nonnull %i.bw, i64 noundef %i.bz, i32 noundef 1)
  %.not.i65 = icmp eq i32 %i.cd, 0
  br i1 %.not.i65, label %mz_zip_array_push_back.exit56.thread, label %mz_zip_array_push_back.exit

mz_zip_array_push_back.exit:                      ; preds = %mz_zip_array_push_back.exit47, %bb.p
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !220
  %i.ce = load ptr, ptr %i.bw, align 8, !tbaa !207
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !218
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = mul i64 %i.by, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr nonnull align 4 %i.a, i64 %i.ch, i1 false)
  br label %mz_zip_array_resize.exit69

mz_zip_array_push_back.exit56.thread:             ; preds = %bb.p, %bb.n, %bb.l, %.loopexit.i78, %bb.g, %.loopexit.i
  %i.ck = load i64, ptr %i.s, align 8, !tbaa !217
  %i.cl = icmp ugt i64 %i.f, %i.ck
  br i1 %i.cl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %mz_zip_array_push_back.exit56.thread
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !197
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !198
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !207
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !218
  %i.ct = zext i32 %i.cs to i64
  %i.cu = tail call ptr %i.cn(ptr noundef %i.cp, ptr noundef %i.cq, i64 noundef %i.ct, i64 noundef %i.f) #33, !inline_history !219 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %mz_zip_array_resize.exit69, label %mz_zip_array_ensure_capacity.exit85

mz_zip_array_ensure_capacity.exit85:              ; preds = %bb.q
  store ptr %i.cu, ptr %i.d, align 8, !tbaa !207
  store i64 %i.f, ptr %i.s, align 8, !tbaa !217
  br label %bb.r

bb.r:                                             ; preds = %mz_zip_array_ensure_capacity.exit85, %mz_zip_array_push_back.exit56.thread
  store i64 %i.f, ptr %i.e, align 8, !tbaa !220
  br label %mz_zip_array_resize.exit69

mz_zip_array_resize.exit69:                       ; preds = %bb.q, %bb.r, %mz_zip_array_push_back.exit, %bb.a, %bb.b
  %.0 = phi i32 [ 1, %mz_zip_array_push_back.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.r ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @mz_zip_writer_add_file(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(address_is_null) %3, i16 noundef zeroext %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %7 = alloca %struct.stat, align 8               ; 5 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca [30 x i8], align 16               ; 15 uses
  %8 = alloca %struct.mz_zip_writer_add_state, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.f = icmp slt i32 %5, 0
  %spec.store.select = select i1 %i.f, i32 6, i32 %5 ; 2 uses
  %i.g = and i32 %spec.store.select, 15           ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !193
  %.not206 = icmp eq ptr %i.i, null
  br i1 %.not206, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !194
  %i.l = icmp eq i32 %i.k, 2
  %i.m = icmp ne ptr %1, null
  %or.cond = and i1 %i.m, %i.l
  br i1 %or.cond, label %bb.d, label %mz_zip_writer_validate_archive_name.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ne i16 %4, 0
  %i.o = icmp eq ptr %3, null
  %or.cond5.not209 = and i1 %i.o, %i.n
  %i.p = icmp samesign ugt i32 %i.g, 10
  %or.cond7 = select i1 %or.cond5.not209, i1 true, i1 %i.p
  br i1 %or.cond7, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %0, align 8, !tbaa !206    ; 4 uses
  %i.r = and i32 %spec.store.select, 1024
  %.not210 = icmp eq i32 %i.r, 0
  br i1 %.not210, label %bb.f, label %mz_zip_writer_validate_archive_name.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %1, align 1, !tbaa !7       ; 2 uses
  %i.t = icmp eq i8 %i.s, 47
  br i1 %i.t, label %mz_zip_writer_validate_archive_name.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %bb.g
  %i.u = phi i8 [ %.pr.i, %bb.g ], [ %i.s, %bb.f ]
  %.0.i = phi ptr [ %i.v, %bb.g ], [ %1, %bb.f ]
  switch i8 %i.u, label %bb.g [
    i8 0, label %mz_zip_writer_validate_archive_name.exit
    i8 92, label %mz_zip_writer_validate_archive_name.exit.thread
    i8 58, label %mz_zip_writer_validate_archive_name.exit.thread
  ]

bb.g:                                             ; preds = %.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %.pr.i = load i8, ptr %i.v, align 1, !tbaa !7
  br label %.preheader.i, !llvm.loop !272

mz_zip_writer_validate_archive_name.exit:         ; preds = %.preheader.i
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36 ; 6 uses
  %i.x = icmp ugt i64 %i.w, 65535
  br i1 %i.x, label %mz_zip_writer_validate_archive_name.exit.thread, label %mz_zip_writer_compute_padding_needed_for_file_alignment.exit

mz_zip_writer_compute_padding_needed_for_file_alignment.exit: ; preds = %mz_zip_writer_validate_archive_name.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !215
  %i.aa = icmp eq i32 %i.z, 65535
  br i1 %i.aa, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.h

bb.h:                                             ; preds = %mz_zip_writer_compute_padding_needed_for_file_alignment.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !267 ; 3 uses
  %.not.i = icmp eq i64 %i.ac, 0
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  %i.ae = and i64 %i.ad, %i.q
  %i.af = sub i64 %i.ac, %i.ae
  %i.ag = and i64 %i.ad, 4294967295
  %i.ah = and i64 %i.ag, %i.af
  %i.ai = select i1 %.not.i, i64 0, i64 %i.ah     ; 2 uses
  %i.aj = add i64 %i.ai, %i.q                     ; 3 uses
  %i.ak = zext i16 %4 to i64
  %i.al = add nuw nsw i64 %i.ak, 76
  %i.am = add nuw nsw i64 %i.al, %i.w
  %i.an = add i64 %i.am, %i.aj
  %i.ao = icmp ugt i64 %i.an, 4294967295
  br i1 %i.ao, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.ap = call i32 @stat(ptr noundef readonly %2, ptr noundef nonnull %7) #33
  %.not.i230 = icmp eq i32 %i.ap, 0
  br i1 %.not.i230, label %bb.j, label %mz_zip_get_file_modified_time.exit.thread

mz_zip_get_file_modified_time.exit.thread:        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %mz_zip_writer_validate_archive_name.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !281
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call fastcc void @mz_zip_time_t_to_dos_time(i64 noundef %i.ar, ptr noundef %i.c, ptr noundef %i.d)
  %i.as = tail call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.15) ; 13 uses
  %.not213 = icmp eq ptr %i.as, null
  br i1 %.not213, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = tail call i32 @fseeko(ptr noundef nonnull %i.as, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.au = tail call i64 @ftello(ptr noundef nonnull %i.as) ; 8 uses
  %i.av = tail call i32 @fseeko(ptr noundef nonnull %i.as, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.aw = icmp ugt i64 %i.au, 4294967295
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = tail call i32 @fclose(ptr noundef nonnull %i.as) ; 0 uses
  br label %mz_zip_writer_validate_archive_name.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.ay = icmp samesign ult i64 %i.au, 4
  %spec.select = select i1 %i.ay, i32 0, i32 %i.g ; 3 uses
  %i.az = add nuw nsw i64 %i.ai, 30               ; 2 uses
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.bb = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 4096)
  %i.bc = zext nneg i32 %i.bb to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.bc, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.018.i = phi i64 [ %i.q, %bb.m ], [ %i.bk, %bb.o ] ; 2 uses
  %.016.i = phi i32 [ %i.ba, %bb.m ], [ %i.bl, %bb.o ] ; 3 uses
  %.not.i232 = icmp eq i32 %.016.i, 0
  br i1 %.not.i232, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = call i32 @llvm.umin.i32(i32 %.016.i, i32 4096) ; 2 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !266
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !211
  %i.bi = zext nneg i32 %i.bf to i64              ; 3 uses
  %i.bj = call i64 %i.bg(ptr noundef %i.bh, i64 noundef %.018.i, ptr noundef nonnull %i.b, i64 noundef %i.bi) #33, !inline_history !273
  %.not21.i = icmp eq i64 %i.bj, %i.bi
  %i.bk = add i64 %.018.i, %i.bi
  %i.bl = sub i32 %.016.i, %i.bf
  br i1 %.not21.i, label %bb.n, label %bb.p, !llvm.loop !274

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.bm = call i32 @fclose(ptr noundef nonnull %i.as) ; 0 uses
  br label %mz_zip_writer_validate_archive_name.exit.thread

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.bn = add i64 %i.az, %i.q                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %i.e, i8 0, i64 30, i1 false)
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !266
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !211
  %i.bq = call i64 %i.bo(ptr noundef %i.bp, i64 noundef %i.bn, ptr noundef nonnull %1, i64 noundef %i.w) #33
  %.not215 = icmp eq i64 %i.bq, %i.w
  br i1 %.not215, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = call i32 @fclose(ptr noundef nonnull %i.as) ; 0 uses
  br label %mz_zip_writer_validate_archive_name.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.bs = add i64 %i.bn, %i.w                     ; 3 uses
  %.not216 = icmp eq i64 %i.au, 0
  br i1 %.not216, label %bb.ad, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !195
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !198
  %i.bx = call ptr %i.bu(ptr noundef %i.bw, i64 noundef 1, i64 noundef 65536) #33 ; 10 uses
  %.not217 = icmp eq ptr %i.bx, null
  br i1 %.not217, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.by = call i32 @fclose(ptr noundef nonnull %i.as) ; 0 uses
  br label %mz_zip_writer_validate_archive_name.exit.thread

bb.v:                                             ; preds = %bb.t
  %.not218 = icmp eq i32 %spec.select, 0
  br i1 %.not218, label %.preheader, label %bb.y

.preheader:                                       ; preds = %bb.v, %bb.x
  %.0164272 = phi i64 [ %i.ci, %bb.x ], [ 0, %bb.v ]
  %.0177271 = phi i64 [ %i.cj, %bb.x ], [ %i.au, %bb.v ] ; 2 uses
  %.0189270 = phi i64 [ %i.ck, %bb.x ], [ %i.bs, %bb.v ] ; 2 uses
  %i.bz = call i64 @llvm.umin.i64(i64 %.0177271, i64 65536) ; 7 uses
  %i.ca = call i64 @fread(ptr noundef nonnull %i.bx, i64 noundef 1, i64 noundef %i.bz, ptr noundef nonnull %i.as)
  %.not220 = icmp eq i64 %i.ca, %i.bz
  br i1 %.not220, label %bb.w, label %.thread

bb.w:                                             ; preds = %.preheader
  %i.cb = load ptr, ptr %i.bd, align 8, !tbaa !266
  %i.cc = load ptr, ptr %i.be, align 8, !tbaa !211
  %i.cd = call i64 %i.cb(ptr noundef %i.cc, i64 noundef %.0189270, ptr noundef nonnull %i.bx, i64 noundef %i.bz) #33
  %.not221 = icmp eq i64 %i.cd, %i.bz
  br i1 %.not221, label %bb.x, label %.thread

.thread:                                          ; preds = %.preheader, %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !196
  %i.cg = load ptr, ptr %i.bv, align 8, !tbaa !198
  call void %i.cf(ptr noundef %i.cg, ptr noundef nonnull %i.bx) #33
  %i.ch = call i32 @fclose(ptr noundef nonnull %i.as) ; 0 uses
  br label %mz_zip_writer_validate_archive_name.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.ci = call i64 @mz_crc32(i64 noundef %.0164272, ptr noundef nonnull %i.bx, i64 noundef %i.bz) ; 2 uses
  %i.cj = sub i64 %.0177271, %i.bz                ; 2 uses
  %i.ck = add i64 %i.bz, %.0189270                ; 2 uses
  %.not219 = icmp eq i64 %i.cj, 0
  br i1 %.not219, label %.loopexit, label %.preheader, !llvm.loop !284

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !195
  %i.cm = load ptr, ptr %i.bv, align 8, !tbaa !198
  %i.cn = call ptr %i.cl(ptr noundef %i.cm, i64 noundef 1, i64 noundef 319352) #33 ; 5 uses
  %.not222 = icmp eq ptr %i.cn, null
  br i1 %.not222, label %bb.z, label %tdefl_create_comp_flags_from_zip_params.exit

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %.thread254

tdefl_create_comp_flags_from_zip_params.exit:     ; preds = %bb.y
  store ptr %0, ptr %8, align 8, !tbaa !275
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.bs, ptr %i.cp, align 8, !tbaa !277
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 0, ptr %i.cq, align 8, !tbaa !278
  %i.cr = call i32 @llvm.umin.i32(i32 %spec.select, i32 10)
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr @tdefl_write_image_to_png_file_in_memory_ex.s_tdefl_png_num_probes, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = icmp samesign ult i32 %spec.select, 4
  %i.cw = select i1 %i.cv, i32 16384, i32 0
  %i.cx = or i32 %i.cu, %i.cw
  %i.cy = call i32 @tdefl_init(ptr noundef nonnull %i.cn, ptr noundef nonnull @mz_zip_writer_add_put_buf_callback, ptr noundef nonnull %8, i32 noundef %i.cx) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %tdefl_create_comp_flags_from_zip_params.exit
  %.2179 = phi i64 [ %i.au, %tdefl_create_comp_flags_from_zip_params.exit ], [ %i.dc, %bb.ab ] ; 2 uses
  %.2166 = phi i64 [ 0, %tdefl_create_comp_flags_from_zip_params.exit ], [ %i.db, %bb.ab ]
  %i.cz = call i64 @llvm.umin.i64(i64 %.2179, i64 65536) ; 5 uses
  %i.da = call i64 @fread(ptr noundef nonnull %i.bx, i64 noundef 1, i64 noundef %i.cz, ptr noundef nonnull %i.as)
  %.not223 = icmp eq i64 %i.da, %i.cz
  br i1 %.not223, label %bb.ab, label %.loopexit273

bb.ab:                                            ; preds = %bb.aa
  %i.db = call i64 @mz_crc32(i64 noundef %.2166, ptr noundef nonnull %i.bx, i64 noundef %i.cz) ; 2 uses
  %i.dc = sub i64 %.2179, %i.cz                   ; 2 uses
  %.not224 = icmp eq i64 %i.dc, 0
  %i.dd = select i1 %.not224, i32 4, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cz, ptr %i.a, align 8, !tbaa !48
  %i.de = call i32 @tdefl_compress(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  switch i32 %i.de, label %.loopexit273 [
    i32 1, label %bb.ac
    i32 0, label %bb.aa
  ]

.loopexit273:                                     ; preds = %bb.ab, %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !196
  %i.dh = load ptr, ptr %i.bv, align 8, !tbaa !198
  call void %i.dg(ptr noundef %i.dh, ptr noundef nonnull %i.cn) #33
  br label %.thread254

.thread254:                                       ; preds = %bb.z, %.loopexit273
  %.sink291.in = phi ptr [ %i.co, %bb.z ], [ %i.df, %.loopexit273 ]
  %.sink291 = load ptr, ptr %.sink291.in, align 8, !tbaa !196
  %i.di = load ptr, ptr %i.bv, align 8, !tbaa !198
  call void %.sink291(ptr noundef %i.di, ptr noundef nonnull %i.bx) #33
  %i.dj = call i32 @fclose(ptr noundef nonnull %i.as) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %mz_zip_writer_validate_archive_name.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !196
  %i.dm = load ptr, ptr %i.bv, align 8, !tbaa !198
  call void %i.dl(ptr noundef %i.dm, ptr noundef nonnull %i.cn) #33
  %i.dn = load i64, ptr %i.cq, align 8, !tbaa !278
  %i.do = load i64, ptr %i.cp, align 8, !tbaa !277
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %bb.ac
  %.3192 = phi i64 [ %i.do, %bb.ac ], [ %i.ck, %bb.x ]
  %.1186 = phi i64 [ %i.dn, %bb.ac ], [ %i.au, %bb.x ]
  %.1174 = phi i16 [ 8, %bb.ac ], [ 0, %bb.x ]
  %.5169.in = phi i64 [ %i.db, %bb.ac ], [ %i.ci, %bb.x ]
  %.5169 = trunc nuw i64 %.5169.in to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !196
  %i.dr = load ptr, ptr %i.bv, align 8, !tbaa !198
  call void %i.dq(ptr noundef %i.dr, ptr noundef nonnull %i.bx) #33
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit, %bb.s
  %.5194 = phi i64 [ %.3192, %.loopexit ], [ %i.bs, %bb.s ] ; 2 uses
  %.3188 = phi i64 [ %.1186, %.loopexit ], [ 0, %bb.s ] ; 3 uses
  %.3176 = phi i16 [ %.1174, %.loopexit ], [ 0, %bb.s ] ; 3 uses
  %.7 = phi i32 [ %.5169, %.loopexit ], [ 0, %bb.s ] ; 2 uses
  %i.ds = call i32 @fclose(ptr noundef nonnull %i.as) ; 0 uses
  %i.dt = icmp ugt i64 %.3188, 4294967295
  %i.du = icmp ugt i64 %.5194, 4294967295
  %or.cond9 = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond9, label %mz_zip_writer_validate_archive_name.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dv = trunc nuw i64 %i.w to i16               ; 2 uses
  %i.dw = load i16, ptr %i.c, align 2, !tbaa !108 ; 2 uses
  %i.dx = load i16, ptr %i.d, align 2, !tbaa !108 ; 2 uses
  store i32 67324752, ptr %i.e, align 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.not.i234 = icmp eq i16 %.3176, 0
  %i.dz = select i1 %.not.i234, i16 0, i16 20
  store i16 %i.dz, ptr %i.dy, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i16 0, ptr %i.ea, align 2
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i16 %.3176, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i16 %i.dw, ptr %i.ec, align 2
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i16 %i.dx, ptr %i.ed, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  store i32 %.7, ptr %i.ee, align 2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.eg = trunc nuw i64 %.3188 to i32
  store i32 %i.eg, ptr %i.ef, align 2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.ei = trunc nuw i64 %i.au to i32
  store i32 %i.ei, ptr %i.eh, align 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  store i16 %i.dv, ptr %i.ej, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i16 0, ptr %i.ek, align 4
  %i.el = load ptr, ptr %i.bd, align 8, !tbaa !266
  %i.em = load ptr, ptr %i.be, align 8, !tbaa !211
  %i.en = call i64 %i.el(ptr noundef %i.em, i64 noundef %i.aj, ptr noundef nonnull %i.e, i64 noundef 30) #33
  %.not227 = icmp eq i64 %i.en, 30
  br i1 %.not227, label %bb.af, label %mz_zip_writer_validate_archive_name.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.eo = call fastcc i32 @mz_zip_writer_add_to_central_dir(ptr noundef %0, ptr noundef nonnull %1, i16 noundef zeroext %i.dv, ptr noundef %3, i16 noundef zeroext %4, i64 noundef %i.au, i64 noundef %.3188, i32 noundef %.7, i16 noundef zeroext %.3176, i16 noundef zeroext %i.dw, i16 noundef zeroext %i.dx, i64 noundef %i.aj, i32 noundef %6)
  %.not228 = icmp eq i32 %i.eo, 0
end_hunk_1
