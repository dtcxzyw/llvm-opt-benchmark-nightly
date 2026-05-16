inline.NumInlined: 69
inline.NumDeleted: 11
begin_hunk_0_@mz_zip_entry_open_int:bb.a
bb.t:                                             ; preds = %.thread7
  call void @mz_stream_delete(ptr noundef nonnull %i.i) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread7
  store ptr null, ptr %i.i, align 8, !tbaa !69
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !70
  %.not8.i = icmp eq ptr %i.bx, null
  br i1 %.not8.i, label %mz_zip_entry_close_int.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @mz_stream_delete(ptr noundef nonnull %i.bw) #23
  br label %mz_zip_entry_close_int.exit

mz_zip_entry_close_int.exit:                      ; preds = %bb.u, %bb.v
  store ptr null, ptr %i.bw, align 8, !tbaa !70
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 373
  store i8 0, ptr %i.by, align 1, !tbaa !43
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %mz_zip_entry_close_int.exit, %bb.d, %bb.b, %bb.a
  %.069 = phi i32 [ -109, %bb.b ], [ -109, %bb.a ], [ -4, %bb.d ], [ %.39, %mz_zip_entry_close_int.exit ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.069
}

; Function Attrs: nounwind uwtable
define i32 @mz_zip_entry_write_open(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i8 noundef zeroext %3, ptr noundef readnone captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %mz_zip_entry_close.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %mz_zip_entry_close.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %.not105 = icmp eq ptr %i.e, null
  br i1 %.not105, label %mz_zip_entry_close.exit.thread, label %mz_zip_entry_is_open.exit

mz_zip_entry_is_open.exit:                        ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 373
  %i.g = load i8, ptr %i.f, align 1, !tbaa !43
  %.not117 = icmp eq i8 %i.g, 0
  br i1 %.not117, label %bb.f, label %mz_zip_entry_is_open.exit.i.i

mz_zip_entry_is_open.exit.i.i:                    ; preds = %mz_zip_entry_is_open.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load i32, ptr %i.h, align 8, !tbaa !42
  %i.j = and i32 %i.i, 2
  %.not12.i.i = icmp eq i32 %i.j, 0
  br i1 %.not12.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %mz_zip_entry_is_open.exit.i.i
  %i.k = tail call i32 @mz_zip_entry_write_close(ptr noundef nonnull %0, i32 noundef 0, i64 noundef -1, i64 noundef -1)
  br label %mz_zip_entry_close.exit

bb.e:                                             ; preds = %mz_zip_entry_is_open.exit.i.i
  %i.l = tail call i32 @mz_zip_entry_read_close(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %mz_zip_entry_close.exit

mz_zip_entry_close.exit:                          ; preds = %bb.d, %bb.e
  %.09.i.i = phi i32 [ %i.l, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %.not106 = icmp eq i32 %.09.i.i, 0
  br i1 %.not106, label %bb.f, label %mz_zip_entry_close.exit.thread

bb.f:                                             ; preds = %mz_zip_entry_close.exit, %mz_zip_entry_is_open.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 18 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.o = tail call i32 @mz_stream_seek(ptr noundef %i.n, i64 noundef 0, i32 noundef 0) #23 ; 0 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.q = tail call i32 @mz_stream_write(ptr noundef %i.p, ptr noundef nonnull %1, i32 noundef 128) #23 ; 0 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.s = tail call i64 @mz_stream_tell(ptr noundef %i.r) #23
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !63   ; 3 uses
  %.not107 = icmp eq ptr %i.t, null
  br i1 %.not107, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #25
  %i.w = trunc i64 %i.v to i32
  %i.x = tail call i32 @mz_stream_write(ptr noundef %i.u, ptr noundef nonnull %i.t, i32 noundef %i.w) #23 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.z = tail call i32 @mz_stream_write_uint8(ptr noundef %i.y, i8 noundef zeroext 0) #23 ; 0 uses
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.ab = tail call i64 @mz_stream_tell(ptr noundef %i.aa) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %.not108 = icmp eq ptr %i.ad, null
  br i1 %.not108, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !33
  %i.ah = zext i16 %i.ag to i32
  %i.ai = tail call i32 @mz_stream_write(ptr noundef %i.ae, ptr noundef nonnull %i.ad, i32 noundef %i.ah) #23 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.ak = tail call i32 @mz_stream_write_uint8(ptr noundef %i.aj, i8 noundef zeroext 0) #23 ; 0 uses
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.am = tail call i64 @mz_stream_tell(ptr noundef %i.al) #23
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  %.not109 = icmp eq ptr %i.ao, null
  br i1 %.not109, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !59
  %i.as = zext i16 %i.ar to i32
  %i.at = tail call i32 @mz_stream_write(ptr noundef %i.ap, ptr noundef nonnull %i.ao, i32 noundef %i.as) #23 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.av = tail call i32 @mz_stream_write_uint8(ptr noundef %i.au, i8 noundef zeroext 0) #23 ; 0 uses
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.ax = tail call i64 @mz_stream_tell(ptr noundef %i.aw) #23
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65 ; 3 uses
  %.not110 = icmp eq ptr %i.az, null
  br i1 %.not110, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.bb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #25
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = tail call i32 @mz_stream_write(ptr noundef %i.ba, ptr noundef nonnull %i.az, i32 noundef %i.bc) #23 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.bf = tail call i32 @mz_stream_write_uint8(ptr noundef %i.be, i8 noundef zeroext 0) #23 ; 0 uses
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bi = tail call i32 @mz_stream_mem_get_buffer_at(ptr noundef %i.bg, i64 noundef %i.s, ptr noundef nonnull %i.bh) #23 ; 0 uses
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bl = tail call i32 @mz_stream_mem_get_buffer_at(ptr noundef %i.bj, i64 noundef %i.ab, ptr noundef nonnull %i.bk) #23 ; 0 uses
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bo = tail call i32 @mz_stream_mem_get_buffer_at(ptr noundef %i.bm, i64 noundef %i.am, ptr noundef nonnull %i.bn) #23 ; 0 uses
  %i.bp = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.br = tail call i32 @mz_stream_mem_get_buffer_at(ptr noundef %i.bp, i64 noundef %i.ax, ptr noundef nonnull %i.bq) #23 ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !66
  %i.bu = icmp eq i16 %i.bt, 8
  br i1 %i.bu, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bv = and i16 %2, -2
  %or.cond4 = icmp eq i16 %i.bv, 8
  br i1 %or.cond4, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 4, !tbaa !71
  %i.by = or i16 %i.bx, 2
  store i16 %i.by, ptr %i.bw, align 4, !tbaa !71
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  switch i16 %2, label %bb.s [
    i16 2, label %.sink.split
    i16 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.r
  %.sink127 = phi i16 [ 6, %bb.r ], [ 4, %bb.q ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 4, !tbaa !71
  %i.cb = or i16 %i.ca, %.sink127
  store i16 %i.cb, ptr %i.bz, align 4, !tbaa !71
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.q, %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !75 ; 5 uses
  %5 = load i16, ptr %0, align 8, !tbaa !76
  %6 = lshr i16 %5, 8
  %7 = trunc nuw i16 %6 to i8
  switch i8 %7, label %mz_zip_attrib_is_dir.exit [
    i8 10, label %bb.t
    i8 0, label %bb.t
    i8 19, label %bb.u
    i8 13, label %bb.u
    i8 3, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.ce = and i32 %i.cd, 1
  %i.cf = icmp eq i32 %i.ce, 0
  %spec.select.i.i.i = select i1 %i.cf, i32 438, i32 292
  %i.cg = and i32 %i.cd, 1024
  %.not10.i.i.i = icmp eq i32 %i.cg, 0
  %i.ch = and i32 %i.cd, 16
  %.not11.i.i.i = icmp eq i32 %i.ch, 0
  %..i.i.i = select i1 %.not11.i.i.i, i32 32768, i32 16457
  %.sink13.i.i.i = select i1 %.not10.i.i.i, i32 %..i.i.i, i32 40960
  %i.ci = or disjoint i32 %.sink13.i.i.i, %spec.select.i.i.i
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.s, %bb.s
  %i.cj = lshr i32 %i.cd, 16                      ; 2 uses
  %.not59.i.i = icmp eq i32 %i.cj, 0
  %spec.select.i.i = select i1 %.not59.i.i, i32 %i.cd, i32 %i.cj
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.05.ph.i = phi i32 [ %spec.select.i.i, %bb.u ], [ %i.ci, %bb.t ]
  %i.ck = and i32 %.05.ph.i, 61440
  %i.cl = icmp eq i32 %i.ck, 16384
  br i1 %i.cl, label %mz_zip_attrib_is_dir.exit.thread, label %mz_zip_attrib_is_dir.exit

mz_zip_attrib_is_dir.exit:                        ; preds = %bb.s, %bb.v
  %.not118 = icmp eq i8 %3, 0
  br i1 %.not118, label %bb.w, label %mz_zip_attrib_is_dir.exit.thread

bb.w:                                             ; preds = %mz_zip_attrib_is_dir.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 317
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !7
  %.not111 = icmp eq i8 %i.cn, 0
  br i1 %.not111, label %mz_zip_attrib_is_dir.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cp = load i16, ptr %i.co, align 4, !tbaa !71
  %i.cq = or i16 %i.cp, 8
  store i16 %i.cq, ptr %i.co, align 4, !tbaa !71
  br label %mz_zip_attrib_is_dir.exit.thread

mz_zip_attrib_is_dir.exit.thread:                 ; preds = %bb.v, %bb.w, %bb.x, %mz_zip_attrib_is_dir.exit
  %i.cr = phi i1 [ false, %mz_zip_attrib_is_dir.exit ], [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.v ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !15
  %i.cu = call i32 @mz_stream_get_prop_int64(ptr noundef %i.ct, i32 noundef 8, ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !18
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !47
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !15
  %i.cz = call i64 @mz_stream_tell(ptr noundef %i.cy) #23
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !48
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.db, align 8, !tbaa !77
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.dc, align 8, !tbaa !72
  %i.dd = icmp eq i16 %2, 0
  %or.cond9 = or i1 %i.dd, %i.cr
  br i1 %or.cond9, label %bb.y, label %bb.z

bb.y:                                             ; preds = %mz_zip_attrib_is_dir.exit.thread
  store i16 0, ptr %i.bs, align 2, !tbaa !66
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %mz_zip_attrib_is_dir.exit.thread
  %i.de = load ptr, ptr %i.cs, align 8, !tbaa !15
  %i.df = call fastcc i32 @mz_zip_entry_write_header(ptr noundef %i.de, i8 noundef zeroext 1, ptr noundef %0) ; 2 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.aa, label %mz_zip_entry_close.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.dh = call fastcc i32 @mz_zip_entry_open_int(ptr noundef %0, i8 noundef zeroext %3, i16 noundef signext %2)
  br label %mz_zip_entry_close.exit.thread

mz_zip_entry_close.exit.thread:                   ; preds = %bb.z, %bb.aa, %mz_zip_entry_close.exit, %bb.b, %bb.c, %bb.a
  %.095 = phi i32 [ -109, %bb.a ], [ -102, %bb.b ], [ %.09.i.i, %mz_zip_entry_close.exit ], [ -102, %bb.c ], [ %i.dh, %bb.aa ], [ %i.df, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.095
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @mz_stream_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i64 @mz_stream_tell(ptr noundef) local_unnamed_addr #6

declare i32 @mz_stream_write_uint8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare i32 @mz_stream_mem_get_buffer_at(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -107, 1) i32 @mz_zip_attrib_is_dir(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = lshr i32 %1, 8
  %i.b = trunc i32 %i.a to i8
  switch i8 %i.b, label %mz_zip_attrib_convert.exit [
    i8 10, label %bb.b
    i8 0, label %bb.b
    i8 19, label %bb.c
    i8 13, label %bb.c
    i8 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = and i32 %0, 1
  %i.d = icmp eq i32 %i.c, 0
  %spec.select.i.i = select i1 %i.d, i32 438, i32 292
  %i.e = and i32 %0, 1024
  %.not10.i.i = icmp eq i32 %i.e, 0
  %i.f = and i32 %0, 16
  %.not11.i.i = icmp eq i32 %i.f, 0
  %..i.i = select i1 %.not11.i.i, i32 32768, i32 16457
  %.sink13.i.i = select i1 %.not10.i.i, i32 %..i.i, i32 40960
  %i.g = or disjoint i32 %.sink13.i.i, %spec.select.i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.h = lshr i32 %0, 16                          ; 2 uses
  %.not59.i = icmp eq i32 %i.h, 0
  %spec.select.i = select i1 %.not59.i, i32 %0, i32 %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.05.ph = phi i32 [ %spec.select.i, %bb.c ], [ %i.g, %bb.b ]
  %i.i = and i32 %.05.ph, 61440
  %i.j = icmp eq i32 %i.i, 16384
  br i1 %i.j, label %bb.e, label %mz_zip_attrib_convert.exit

mz_zip_attrib_convert.exit:                       ; preds = %bb.a, %bb.d
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %mz_zip_attrib_convert.exit
  %.0 = phi i32 [ -107, %mz_zip_attrib_convert.exit ], [ 0, %bb.d ]
  ret i32 %.0
}

declare i32 @mz_stream_get_prop_int64(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mz_zip_entry_write_header(ptr noundef %0, i8 noundef zeroext range(i8 0, 2) %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.tm, align 8                 ; 10 uses
  %i.b = alloca i16, align 2                      ; 7 uses
  %i.c = alloca i16, align 2                      ; 9 uses
  %i.d = alloca [64 x i8], align 16               ; 4 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i16 0, ptr %i.b, align 2, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i16 0, ptr %i.c, align 2, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store ptr null, ptr %i.e, align 8, !tbaa !14
  %.not = icmp eq i8 %1, 0                        ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i16, ptr %i.f, align 4, !tbaa !31
  %i.h = and i16 %i.g, 8192
  %.not276 = icmp eq i16 %i.h, 0
  br i1 %.not276, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.a ] ; 2 uses
  %.not288 = phi i1 [ false, %bb.c ], [ true, %bb.b ], [ true, %bb.a ] ; 4 uses
  %.0235 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i = icmp ne i8 %1, 0                      ; 8 uses
  %.024.i = select i1 %.not.i, i64 4292870143, i64 4294967295
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %.not28.i = icmp slt i64 %i.k, %.024.i
  br i1 %.not28.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !35
  %i.n = icmp sgt i64 %i.m, 4294967294
  %i.o = zext i1 %i.n to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = phi i8 [ 1, %bb.d ], [ %i.o, %bb.e ]     ; 2 uses
  br i1 %.not.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29
  %i.s = icmp sgt i64 %i.r, 4294967294
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !30
  %i.v = icmp ugt i32 %i.u, 65534
  %i.w = zext i1 %i.v to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = phi i8 [ 1, %bb.g ], [ %i.w, %bb.h ]
  %i.y = or i8 %i.x, %i.p
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.0.i = phi i8 [ %i.p, %bb.f ], [ %i.y, %bb.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !78  ; 2 uses
  switch i16 %i.aa, label %bb.p [
    i16 0, label %bb.k
    i16 1, label %.thread
  ]

bb.k:                                             ; preds = %bb.j
  %i.ab = icmp eq i64 %i.k, 0
  %or.cond33.i = and i1 %.not.i, %i.ab
  br i1 %or.cond33.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !79 ; 5 uses
  %4 = load i16, ptr %2, align 8, !tbaa !80
  %5 = lshr i16 %4, 8
  %6 = trunc nuw i16 %5 to i8
  switch i8 %6, label %.thread.thread [
    i8 10, label %bb.m
    i8 0, label %bb.m
    i8 19, label %bb.n
    i8 13, label %bb.n
    i8 3, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.ae = and i32 %i.ad, 1
  %i.af = icmp eq i32 %i.ae, 0
  %spec.select.i.i.i.i = select i1 %i.af, i32 438, i32 292
  %i.ag = and i32 %i.ad, 1024
  %.not10.i.i.i.i = icmp eq i32 %i.ag, 0
  %i.ah = and i32 %i.ad, 16
  %.not11.i.i.i.i = icmp eq i32 %i.ah, 0
  %..i.i.i.i = select i1 %.not11.i.i.i.i, i32 32768, i32 16457
  %.sink13.i.i.i.i = select i1 %.not10.i.i.i.i, i32 %..i.i.i.i, i32 40960
  %i.ai = or disjoint i32 %.sink13.i.i.i.i, %spec.select.i.i.i.i
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aj = lshr i32 %i.ad, 16                      ; 2 uses
  %.not59.i.i.i = icmp eq i32 %i.aj, 0
  %spec.select.i.i.i = select i1 %.not59.i.i.i, i32 %i.ad, i32 %i.aj
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.05.ph.i.i = phi i32 [ %spec.select.i.i.i, %bb.n ], [ %i.ai, %bb.m ]
  %i.ak = and i32 %.05.ph.i.i, 61440
  %i.al = icmp eq i32 %i.ak, 16384
  br i1 %i.al, label %bb.q, label %.thread.thread

bb.p:                                             ; preds = %bb.j
  %i.am = icmp eq i16 %i.aa, 2
  %i.an = icmp ne i8 %.0.i, 0
  %or.cond.i = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond.i, label %mz_zip_entry_needs_zip64.exit, label %.thread332

bb.q:                                             ; preds = %bb.k, %bb.o
  %.not278 = icmp eq i8 %.0.i, 0
  br i1 %.not278, label %.thread332, label %.thread

.thread:                                          ; preds = %bb.j, %bb.q
  br i1 %.not, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !29
  %i.aq = icmp sgt i64 %i.ap, 4294967294
  %spec.select = select i1 %i.aq, i16 24, i16 16
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.o, %bb.l, %bb.r, %.thread
  %.0253 = phi i16 [ 16, %.thread ], [ %spec.select, %bb.r ], [ 16, %bb.l ], [ 16, %bb.o ] ; 2 uses
  %i.ar = or disjoint i16 %.0253, 4
  br label %.thread332

.thread332:                                       ; preds = %bb.p, %.thread.thread, %bb.q
  %.not278331 = phi i1 [ false, %.thread.thread ], [ true, %bb.q ], [ true, %bb.p ] ; 2 uses
  %i.as = phi i1 [ true, %.thread.thread ], [ false, %bb.q ], [ false, %bb.p ]
  %.1.ph329 = phi i8 [ 1, %.thread.thread ], [ %.0235, %bb.q ], [ %.0235, %bb.p ]
  %.1254 = phi i16 [ %.0253, %.thread.thread ], [ 0, %bb.q ], [ 0, %bb.p ]
  %.0246 = phi i16 [ %i.ar, %.thread.thread ], [ 0, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 58 ; 3 uses
  %i.au = load i16, ptr %i.at, align 2, !tbaa !33
  %.not280 = icmp eq i16 %i.au, 0
  br i1 %.not280, label %.critedge, label %bb.s

bb.s:                                             ; preds = %.thread332
  %i.av = tail call ptr @mz_stream_mem_create() #23 ; 9 uses
  store ptr %i.av, ptr %i.e, align 8, !tbaa !14
  %.not281 = icmp eq ptr %i.av, null
  br i1 %.not281, label %mz_zip_entry_needs_zip64.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.ay = load i16, ptr %i.at, align 2, !tbaa !33
  %i.az = zext i16 %i.ay to i32
  tail call void @mz_stream_mem_set_buffer(ptr noundef nonnull %i.av, ptr noundef %i.ax, i32 noundef %i.az) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.1247 = phi i16 [ %.0246, %bb.t ], [ %.2248, %bb.w ] ; 3 uses
  %i.ba = call i32 @mz_stream_read_uint16(ptr noundef nonnull %i.av, ptr noundef nonnull %i.b) #23
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.bc = call i32 @mz_stream_read_uint16(ptr noundef nonnull %i.av, ptr noundef nonnull %i.c) #23
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.be = load i16, ptr %i.b, align 2, !tbaa !19  ; 3 uses
  %i.bf = icmp ne i16 %i.be, 1
  %i.bg = icmp ne i16 %i.be, 10
  %or.cond = and i1 %i.bf, %i.bg
  %i.bh = icmp ne i16 %i.be, 13
  %or.cond5 = and i1 %i.bh, %or.cond
  %i.bi = load i16, ptr %i.c, align 2             ; 2 uses
  %i.bj = add i16 %i.bi, 4
  %i.bk = select i1 %or.cond5, i16 %i.bj, i16 0
  %.2248 = add i16 %i.bk, %.1247                  ; 2 uses
  %i.bl = zext i16 %i.bi to i64
  %i.bm = call i32 @mz_stream_seek(ptr noundef nonnull %i.av, i64 noundef %i.bl, i32 noundef 1) #23
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.u, label %.critedge, !llvm.loop !81

.critedge:                                        ; preds = %bb.u, %bb.w, %bb.v, %.thread332
  %i.bo = phi ptr [ null, %.thread332 ], [ %i.av, %bb.v ], [ %i.av, %bb.w ], [ %i.av, %bb.u ] ; 2 uses
  %.3249 = phi i16 [ %.0246, %.thread332 ], [ %.1247, %bb.u ], [ %.2248, %bb.w ], [ %.1247, %bb.v ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !57
  %.not283 = icmp eq i64 %i.bq, 0
  br i1 %.not283, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !61
  %.not284 = icmp eq i64 %i.bs, 0
  br i1 %.not284, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !82
  %i.bv = icmp eq i64 %i.bu, 0
  %or.cond7 = or i1 %i.i, %i.bv
  br i1 %or.cond7, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = add i16 %.3249, 36
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %.critedge
  %i.bx = phi i1 [ false, %bb.y ], [ true, %bb.z ], [ false, %bb.x ], [ false, %.critedge ]
  %.0252 = phi i16 [ 0, %bb.y ], [ 32, %bb.z ], [ 0, %bb.x ], [ 0, %.critedge ] ; 2 uses
  %.4250 = phi i16 [ %.3249, %bb.y ], [ %i.bw, %bb.z ], [ %.3249, %bb.x ], [ %.3249, %.critedge ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !65 ; 3 uses
  %.not285 = icmp eq ptr %i.bz, null
  br i1 %.not285, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !26
  %.not286 = icmp eq i8 %i.ca, 0
  br i1 %.not286, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bz) #25 ; 2 uses
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = trunc i64 %i.cb to i16                  ; 2 uses
  %i.ce = add i16 %i.cd, 12
  %i.cf = add i16 %.4250, 16
  %i.cg = add i16 %i.cf, %i.cd
  %i.ch = and i32 %i.cc, 65535
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.5251 = phi i16 [ %i.cg, %bb.ac ], [ %.4250, %bb.ab ], [ %.4250, %bb.aa ]
  %.0245 = phi i16 [ %i.ce, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  %.0243 = phi i32 [ %i.ch, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  br i1 %.not.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ci = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef 67324752) #23
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.cj = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef 33639248) #23 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ag, label %mz_zip_entry_write_crc_sizes.exit

bb.ag:                                            ; preds = %bb.af
  %i.cl = load i16, ptr %2, align 8, !tbaa !80
  %i.cm = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.cl) #23
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.0237 = phi i32 [ %i.ci, %bb.ae ], [ %i.cm, %bb.ag ] ; 2 uses
  %i.cn = icmp eq i32 %.0237, 0
  br i1 %i.cn, label %bb.ai, label %mz_zip_entry_write_crc_sizes.exit

bb.ai:                                            ; preds = %bb.ah
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !83 ; 2 uses
  %i.cq = icmp eq i16 %i.cp, 0
  %spec.store.select = select i1 %.not278331, i16 20, i16 45
  %.0242 = select i1 %i.cq, i16 %spec.store.select, i16 %i.cp
  %i.cr = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.0242) #23 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.aj, label %mz_zip_entry_write_crc_sizes.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cu = load i16, ptr %i.ct, align 4, !tbaa !31
  %i.cv = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.cu) #23 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.ak, label %mz_zip_entry_write_crc_sizes.exit

bb.ak:                                            ; preds = %bb.aj
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !84
  %i.cz = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.cy) #23 ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.al, label %mz_zip_entry_write_crc_sizes.exit

bb.al:                                            ; preds = %bb.ak
  %i.db = load i64, ptr %i.bp, align 8, !tbaa !57 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 0
  %or.cond9 = or i1 %i.i, %i.dc
  br i1 %or.cond9, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.db, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.dd = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %3) #23
  %.not4.i.i = icmp eq ptr %i.dd, null
  br i1 %.not4.i.i, label %.thread.i, label %mz_zip_time_t_to_tm.exit.i

.thread.i:                                        ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.an

mz_zip_time_t_to_tm.exit.i:                       ; preds = %bb.am
  %.sroa.0.0.copyload.i = load i32, ptr %3, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4
  %.sroa.9.0.copyload.fr.i = freeze i32 %.sroa.9.0.copyload.i ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.de = icmp sgt i32 %.sroa.9.0.copyload.fr.i, 1979
  %i.df = icmp sgt i32 %.sroa.9.0.copyload.fr.i, 79
  %..i = select i1 %i.df, i32 -80, i32 20
  %spec.select.i = select i1 %i.de, i32 -1980, i32 %..i
  %i.dg = add nsw i32 %spec.select.i, %.sroa.9.0.copyload.fr.i
  br label %bb.an

bb.an:                                            ; preds = %mz_zip_time_t_to_tm.exit.i, %.thread.i
  %.sroa.0.01028.i = phi i32 [ 0, %.thread.i ], [ %.sroa.0.0.copyload.i, %mz_zip_time_t_to_tm.exit.i ] ; 2 uses
  %.sroa.5.01127.i = phi i32 [ 0, %.thread.i ], [ %.sroa.5.0.copyload.i, %mz_zip_time_t_to_tm.exit.i ] ; 2 uses
  %.sroa.6.01226.i = phi i32 [ 0, %.thread.i ], [ %.sroa.6.0.copyload.i, %mz_zip_time_t_to_tm.exit.i ] ; 2 uses
  %.sroa.7.01325.i = phi i32 [ 0, %.thread.i ], [ %.sroa.7.0.copyload.i, %mz_zip_time_t_to_tm.exit.i ] ; 2 uses
  %.sroa.8.01424.i = phi i32 [ 0, %.thread.i ], [ %.sroa.8.0.copyload.i, %mz_zip_time_t_to_tm.exit.i ] ; 2 uses
  %i.dh = phi i32 [ 20, %.thread.i ], [ %i.dg, %mz_zip_time_t_to_tm.exit.i ] ; 2 uses
  %or.cond.i.i.i = icmp ult i32 %i.dh, 208
  %or.cond17.i.i.i = icmp ult i32 %.sroa.8.01424.i, 12
  %or.cond.i.i = select i1 %or.cond.i.i.i, i1 %or.cond17.i.i.i, i1 false
  %i.di = add i32 %.sroa.7.01325.i, -1
  %or.cond18.i.i.i = icmp ult i32 %i.di, 31
  %or.cond10.i.i = select i1 %or.cond.i.i, i1 %or.cond18.i.i.i, i1 false
  %or.cond19.i.i.i = icmp ult i32 %.sroa.6.01226.i, 24
  %or.cond11.i.i = select i1 %or.cond10.i.i, i1 %or.cond19.i.i.i, i1 false
  %or.cond20.i.i.i = icmp ult i32 %.sroa.5.01127.i, 60
  %or.cond12.i.i = select i1 %or.cond11.i.i, i1 %or.cond20.i.i.i, i1 false
  %narrow.i.i.i = icmp ult i32 %.sroa.0.01028.i, 60
  %or.cond13.i.i = select i1 %or.cond12.i.i, i1 %narrow.i.i.i, i1 false
  br i1 %or.cond13.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dj = shl nuw nsw i32 %.sroa.8.01424.i, 5
  %i.dk = add nuw nsw i32 %i.dj, 32
  %i.dl = or disjoint i32 %i.dk, %.sroa.7.01325.i
  %i.dm = shl i32 %i.dh, 25
  %i.dn = shl nuw nsw i32 %i.dl, 16
  %i.do = add nuw i32 %i.dn, %i.dm
  %i.dp = lshr i32 %.sroa.0.01028.i, 1
  %i.dq = shl nuw nsw i32 %.sroa.5.01127.i, 5
  %i.dr = or disjoint i32 %i.dq, %i.dp
  %i.ds = shl nuw nsw i32 %.sroa.6.01226.i, 11
  %i.dt = or disjoint i32 %i.dr, %i.ds
  %i.du = or disjoint i32 %i.do, %i.dt
  br label %bb.ap

bb.ap:                                            ; preds = %bb.al, %bb.an, %bb.ao
  %.0232 = phi i32 [ 0, %bb.al ], [ %i.du, %bb.ao ], [ 0, %bb.an ]
  %i.dv = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.0232) #23 ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.aq, label %mz_zip_entry_write_crc_sizes.exit

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not288, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !34
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sink.i305 = phi i32 [ %i.dy, %bb.ar ], [ 0, %bb.aq ]
  %i.dz = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.sink.i305) #23 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.at, label %mz_zip_entry_write_crc_sizes.exit

bb.at:                                            ; preds = %bb.as
  br i1 %.not278331, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !35
  %i.ed = trunc i64 %i.ec to i32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sink19.i = phi i32 [ %i.ed, %bb.au ], [ -1, %bb.at ]
  %i.ee = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.sink19.i) #23 ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.aw, label %mz_zip_entry_write_crc_sizes.exit

bb.aw:                                            ; preds = %bb.av
  %brmerge.not.i = icmp eq i8 %.1.ph329, 0
  %.mux.i = sext i1 %.not288 to i32
  br i1 %brmerge.not.i, label %bb.ax, label %.thread.sink.split.i

bb.ax:                                            ; preds = %bb.aw
  %i.eg = load i64, ptr %i.j, align 8, !tbaa !36
  %i.eh = trunc i64 %i.eg to i32
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.ax, %bb.aw
  %.sink20.i = phi i32 [ %.mux.i, %bb.aw ], [ %i.eh, %bb.ax ]
  %i.ei = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.sink20.i) #23
  br label %mz_zip_entry_write_crc_sizes.exit

mz_zip_entry_write_crc_sizes.exit:                ; preds = %bb.af, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %.thread.sink.split.i, %bb.av, %bb.as, %bb.ap
  %.5 = phi i32 [ %i.ei, %.thread.sink.split.i ], [ %i.dv, %bb.ap ], [ %i.dz, %bb.as ], [ %i.ee, %bb.av ], [ %i.cz, %bb.ak ], [ %i.cv, %bb.aj ], [ %i.cr, %bb.ai ], [ %.0237, %bb.ah ], [ %i.cj, %bb.af ] ; 2 uses
  br i1 %.not288, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %mz_zip_entry_write_crc_sizes.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !30
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.em = load i64, ptr %i.el, align 8, !tbaa !29
  %i.en = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 64, ptr noundef nonnull @.str.8, i32 noundef %i.ek, i64 noundef %i.em) #23 ; 0 uses
  br label %bb.ba

bb.az:                                            ; preds = %mz_zip_entry_write_crc_sizes.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !63
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0233 = phi ptr [ %i.d, %bb.ay ], [ %i.ep, %bb.az ] ; 3 uses
  %i.eq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0233) #25 ; 3 uses
  %i.er = trunc i64 %i.eq to i16                  ; 5 uses
  %i.es = trunc i64 %i.eq to i32
  %i.et = and i32 %i.es, 65535                    ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !79 ; 5 uses
  %7 = load i16, ptr %2, align 8, !tbaa !80
  %8 = lshr i16 %7, 8
  %9 = trunc nuw i16 %8 to i8
  switch i8 %9, label %mz_zip_attrib_is_dir.exit [
    i8 10, label %bb.bb
    i8 0, label %bb.bb
    i8 19, label %bb.bc
    i8 13, label %bb.bc
    i8 3, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  %i.ew = and i32 %i.ev, 1
  %i.ex = icmp eq i32 %i.ew, 0
  %spec.select.i.i.i308 = select i1 %i.ex, i32 438, i32 292
  %i.ey = and i32 %i.ev, 1024
  %.not10.i.i.i = icmp eq i32 %i.ey, 0
  %i.ez = and i32 %i.ev, 16
  %.not11.i.i.i = icmp eq i32 %i.ez, 0
  %..i.i.i = select i1 %.not11.i.i.i, i32 32768, i32 16457
  %.sink13.i.i.i = select i1 %.not10.i.i.i, i32 %..i.i.i, i32 40960
  %i.fa = or disjoint i32 %.sink13.i.i.i, %spec.select.i.i.i308
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba, %bb.ba, %bb.ba
  %i.fb = lshr i32 %i.ev, 16                      ; 2 uses
  %.not59.i.i = icmp eq i32 %i.fb, 0
  %spec.select.i.i = select i1 %.not59.i.i, i32 %i.ev, i32 %i.fb
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.05.ph.i = phi i32 [ %spec.select.i.i, %bb.bc ], [ %i.fa, %bb.bb ]
  %i.fc = and i32 %.05.ph.i, 61440
  %i.fd = icmp eq i32 %i.fc, 16384
  br i1 %i.fd, label %bb.be, label %mz_zip_attrib_is_dir.exit

bb.be:                                            ; preds = %bb.bd
  %i.fe = and i64 %i.eq, 65535
  %i.ff = getelementptr i8, ptr %.0233, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 -1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !26
  switch i8 %i.fh, label %bb.bf [
    i8 47, label %mz_zip_attrib_is_dir.exit
    i8 92, label %mz_zip_attrib_is_dir.exit
  ]

bb.bf:                                            ; preds = %bb.be
  %i.fi = add i16 %i.er, 1
  br label %mz_zip_attrib_is_dir.exit

mz_zip_attrib_is_dir.exit:                        ; preds = %bb.bd, %bb.ba, %bb.be, %bb.be, %bb.bf
  %.0244 = phi i16 [ %i.fi, %bb.bf ], [ %i.er, %bb.be ], [ %i.er, %bb.be ], [ %i.er, %bb.ba ], [ %i.er, %bb.bd ]
  %i.fj = phi i1 [ true, %bb.bf ], [ false, %bb.be ], [ false, %bb.be ], [ false, %bb.ba ], [ false, %bb.bd ] ; 2 uses
  %i.fk = icmp eq i32 %.5, 0
  br i1 %i.fk, label %bb.bg, label %.thread350

bb.bg:                                            ; preds = %mz_zip_attrib_is_dir.exit
  %i.fl = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.0244) #23 ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.bh, label %.thread350

bb.bh:                                            ; preds = %bb.bg
  %i.fn = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.5251) #23
  br label %.thread350

.thread350:                                       ; preds = %mz_zip_attrib_is_dir.exit, %bb.bh, %bb.bg
  %.7 = phi i32 [ %i.fn, %bb.bh ], [ %i.fl, %bb.bg ], [ %.5, %mz_zip_attrib_is_dir.exit ] ; 3 uses
  br i1 %.not.i, label %bb.bp, label %bb.bi

bb.bi:                                            ; preds = %.thread350
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !64 ; 2 uses
  %.not291 = icmp eq ptr %i.fp, null
  br i1 %.not291, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fp) #25
  %i.fr = trunc i64 %i.fq to i32
  %spec.store.select10 = call i32 @llvm.smin.i32(i32 %i.fr, i32 65535)
  %i.fs = trunc i32 %spec.store.select10 to i16
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0241 = phi i16 [ %i.fs, %bb.bj ], [ 0, %bb.bi ]
  %i.ft = icmp eq i32 %.7, 0
  br i1 %i.ft, label %bb.bl, label %.thread402

bb.bl:                                            ; preds = %bb.bk
  %i.fu = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.0241) #23 ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.bm, label %.thread402

bb.bm:                                            ; preds = %bb.bl
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !30
  %i.fy = trunc i32 %i.fx to i16
  %i.fz = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.fy) #23 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.bn, label %.thread402

bb.bn:                                            ; preds = %bb.bm
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.gc = load i16, ptr %i.gb, align 8, !tbaa !85
  %i.gd = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.gc) #23 ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.bo, label %.thread402

bb.bo:                                            ; preds = %bb.bn
  %i.gf = load i32, ptr %i.eu, align 4, !tbaa !79
  %i.gg = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %i.gf) #23 ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %.sink.split, label %.thread402

.sink.split:                                      ; preds = %bb.bo
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !29 ; 2 uses
  %i.gk = icmp sgt i64 %i.gj, 4294967294
  %i.gl = trunc i64 %i.gj to i32
  %.sink = select i1 %i.gk, i32 -1, i32 %i.gl
  %i.gm = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.sink) #23
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split, %.thread350
  %.12 = phi i32 [ %.7, %.thread350 ], [ %i.gm, %.sink.split ] ; 2 uses
  %i.gn = icmp eq i32 %.12, 0
  br i1 %i.gn, label %bb.bq, label %.thread402

bb.bq:                                            ; preds = %bb.bp
  %.not292 = icmp eq i32 %i.et, 0
  br i1 %.not292, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.go = call i32 @mz_stream_write(ptr noundef %0, ptr noundef nonnull %.0233, i32 noundef %i.et) #23
  %.not293 = icmp eq i32 %i.go, %i.et             ; 2 uses
  %spec.select299 = and i1 %i.fj, %.not293
  %spec.select300 = select i1 %.not293, i32 0, i32 -116
  br i1 %spec.select299, label %bb.bt, label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  br i1 %i.fj, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.gp = call i32 @mz_stream_write_uint8(ptr noundef %0, i8 noundef zeroext 47) #23
  br label %bb.bu

bb.bu:                                            ; preds = %bb.br, %bb.bs, %bb.bt
  %.15 = phi i32 [ %spec.select300, %bb.br ], [ %i.gp, %bb.bt ], [ 0, %bb.bs ] ; 2 uses
  %i.gq = icmp eq i32 %.15, 0
  %or.cond18 = and i1 %i.as, %i.gq
  br i1 %or.cond18, label %bb.bv, label %bb.cf

bb.bv:                                            ; preds = %bb.bu
  %i.gr = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext 1) #23 ; 2 uses
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %mz_zip_extrafield_write.exit, label %.thread402

mz_zip_extrafield_write.exit:                     ; preds = %bb.bv
  %i.gt = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.1254) #23 ; 2 uses
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.bw, label %.thread402

bb.bw:                                            ; preds = %mz_zip_extrafield_write.exit
  br i1 %.not288, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.gv = load i64, ptr %i.j, align 8, !tbaa !36
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %.sink470 = phi i64 [ %i.gv, %bb.bx ], [ 0, %bb.bw ]
  %i.gw = call i32 @mz_stream_write_int64(ptr noundef %0, i64 noundef %.sink470) #23 ; 2 uses
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.bz, label %.thread402

bb.bz:                                            ; preds = %bb.by
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !35
  %i.ha = call i32 @mz_stream_write_int64(ptr noundef %0, i64 noundef %i.gz) #23 ; 2 uses
  %i.hb = icmp ne i32 %i.ha, 0
  %or.cond20 = or i1 %.not.i, %i.hb
  br i1 %or.cond20, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !29 ; 2 uses
  %i.he = icmp sgt i64 %i.hd, 4294967294
  br i1 %i.he, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.hf = call i32 @mz_stream_write_int64(ptr noundef %0, i64 noundef %i.hd) #23
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz
  %.18 = phi i32 [ %i.ha, %bb.bz ], [ %i.hf, %bb.cb ], [ 0, %bb.ca ] ; 2 uses
  %i.hg = icmp ne i32 %.18, 0
  %or.cond22 = or i1 %.not.i, %i.hg
  br i1 %or.cond22, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !30 ; 2 uses
  %i.hj = icmp ugt i32 %i.hi, 65534
  br i1 %i.hj, label %bb.ce, label %bb.cf

end_hunk_0
begin_hunk_1_@mz_zip_entry_read_descriptor:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !18
  %i.c = call i32 @mz_stream_read_uint32(ptr noundef %0, ptr noundef nonnull %i.a) #23
  %i.d = load i32, ptr %i.a, align 4, !tbaa !3
  %.not = icmp eq i32 %i.d, 134695760
  %spec.store.select = select i1 %.not, i32 %i.c, i32 -103 ; 2 uses
  %i.e = icmp eq i32 %spec.store.select, 0
  br i1 %i.e, label %bb.b, label %.thread39

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @mz_stream_read_uint32(ptr noundef %0, ptr noundef nonnull %i.a) #23 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0                      ; 2 uses
  %i.h = icmp ne ptr %2, null
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.a, align 4, !tbaa !3
  store i32 %i.i, ptr %2, align 4, !tbaa !3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.e, label %.thread39

bb.e:                                             ; preds = %bb.c, %bb.d
  %.not30 = icmp eq i8 %1, 0
  br i1 %.not30, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = call i32 @mz_stream_read_uint32(ptr noundef %0, ptr noundef nonnull %i.a) #23
  %i.k = load i32, ptr %i.a, align 4, !tbaa !3
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !18
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = call i32 @mz_stream_read_int64(ptr noundef %0, ptr noundef nonnull %i.b) #23
  %i.n = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  %spec.store.select2 = select i1 %i.o, i32 -103, i32 %i.m
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi i64 [ %i.n, %bb.g ], [ %i.l, %bb.f ]
  %.1 = phi i32 [ %spec.store.select2, %bb.g ], [ %i.j, %bb.f ] ; 3 uses
  %i.q = icmp eq i32 %.1, 0
  %i.r = icmp ne ptr %3, null
  %or.cond4 = and i1 %i.r, %i.q
  br i1 %or.cond4, label %.thread37, label %bb.i

.thread37:                                        ; preds = %bb.h
  store i64 %i.p, ptr %3, align 8, !tbaa !18
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = icmp eq i32 %.1, 0
  br i1 %i.s, label %bb.j, label %.thread39

bb.j:                                             ; preds = %.thread37, %bb.i
  %.not31 = icmp eq i8 %1, 0
  br i1 %.not31, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = call i32 @mz_stream_read_uint32(ptr noundef %0, ptr noundef nonnull %i.a) #23
  %i.u = load i32, ptr %i.a, align 4, !tbaa !3
  %i.v = zext i32 %i.u to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.w = call i32 @mz_stream_read_int64(ptr noundef %0, ptr noundef nonnull %i.b) #23
  %i.x = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  %spec.store.select5 = select i1 %i.y, i32 -103, i32 %i.w
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.z = phi i64 [ %i.x, %bb.l ], [ %i.v, %bb.k ]
  %.3 = phi i32 [ %spec.store.select5, %bb.l ], [ %i.t, %bb.k ] ; 2 uses
  %i.aa = icmp eq i32 %.3, 0
  %i.ab = icmp ne ptr %4, null
  %or.cond7 = and i1 %i.ab, %i.aa
  br i1 %or.cond7, label %bb.n, label %.thread39

bb.n:                                             ; preds = %bb.m
  store i64 %i.z, ptr %4, align 8, !tbaa !18
  br label %.thread39

.thread39:                                        ; preds = %bb.d, %bb.a, %bb.m, %bb.n, %bb.i
  %.4 = phi i32 [ 0, %bb.n ], [ %.3, %bb.m ], [ %.1, %bb.i ], [ %spec.store.select, %bb.a ], [ %i.f, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define i32 @mz_zip_entry_write_close(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  store i64 %2, ptr %i.b, align 8, !tbaa !18
  store i64 %3, ptr %i.c, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 0, ptr %i.d, align 8, !tbaa !18
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.av, label %mz_zip_entry_is_open.exit

mz_zip_entry_is_open.exit:                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 373 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !43
  %.not104 = icmp eq i8 %i.f, 0
  br i1 %.not104, label %bb.av, label %bb.b

bb.b:                                             ; preds = %mz_zip_entry_is_open.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = tail call i32 @mz_stream_close(ptr noundef %i.h) #23 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 374
  %i.k = load i8, ptr %i.j, align 2, !tbaa !68
  %.not69 = icmp eq i8 %i.k, 0
  br i1 %.not69, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.m = load i32, ptr %i.l, align 8, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.063 = phi i32 [ %1, %bb.b ], [ %i.m, %bb.c ]  ; 4 uses
  %i.n = icmp slt i64 %2, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.p = call i32 @mz_stream_get_prop_int64(ptr noundef %i.o, i32 noundef 3, ptr noundef nonnull %i.b) #23 ; 0 uses
  %.pre = load i64, ptr %i.c, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi i64 [ %.pre, %bb.e ], [ %3, %bb.d ]
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.t = call i32 @mz_stream_get_prop_int64(ptr noundef %i.s, i32 noundef 1, ptr noundef nonnull %i.c) #23 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.v = load i16, ptr %i.u, align 4, !tbaa !71
  %i.w = and i16 %i.v, 1
  %.not70 = icmp eq i16 %i.w, 0
  br i1 %.not70, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15
  %i.ab = call i32 @mz_stream_set_base(ptr noundef %i.y, ptr noundef %i.aa) #23 ; 0 uses
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.ad = call i32 @mz_stream_close(ptr noundef %i.ac) #23
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !69
  %i.af = call i32 @mz_stream_get_prop_int64(ptr noundef %i.ae, i32 noundef 3, ptr noundef nonnull %i.b) #23 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.062 = phi i32 [ %i.ad, %bb.i ], [ 0, %bb.h ]  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !36 ; 2 uses
  %.not28.i = icmp slt i64 %i.ah, 4292870143
  br i1 %.not28.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !35
  %i.ak = icmp sgt i64 %i.aj, 4294967294
  %i.al = zext i1 %i.ak to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = phi i8 [ 1, %bb.j ], [ %i.al, %bb.k ]   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !78
  switch i16 %i.ao, label %bb.r [
    i16 0, label %bb.m
    i16 1, label %mz_zip_entry_needs_zip64.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp eq i64 %i.ah, 0
  br i1 %i.ap, label %bb.n, label %mz_zip_entry_needs_zip64.exit

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !79 ; 5 uses
  %4 = load i16, ptr %0, align 8, !tbaa !80
  %5 = lshr i16 %4, 8
  %6 = trunc nuw i16 %5 to i8
  switch i8 %6, label %mz_zip_attrib_is_dir.exit.i [
    i8 10, label %bb.o
    i8 0, label %bb.o
    i8 19, label %bb.p
    i8 13, label %bb.p
    i8 3, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.as = and i32 %i.ar, 1
  %i.at = icmp eq i32 %i.as, 0
  %spec.select.i.i.i.i = select i1 %i.at, i32 438, i32 292
  %i.au = and i32 %i.ar, 1024
  %.not10.i.i.i.i = icmp eq i32 %i.au, 0
  %i.av = and i32 %i.ar, 16
  %.not11.i.i.i.i = icmp eq i32 %i.av, 0
  %..i.i.i.i = select i1 %.not11.i.i.i.i, i32 32768, i32 16457
  %.sink13.i.i.i.i = select i1 %.not10.i.i.i.i, i32 %..i.i.i.i, i32 40960
  %i.aw = or disjoint i32 %.sink13.i.i.i.i, %spec.select.i.i.i.i
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.n, %bb.n
  %i.ax = lshr i32 %i.ar, 16                      ; 2 uses
  %.not59.i.i.i = icmp eq i32 %i.ax, 0
  %spec.select.i.i.i = select i1 %.not59.i.i.i, i32 %i.ar, i32 %i.ax
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.05.ph.i.i = phi i32 [ %spec.select.i.i.i, %bb.p ], [ %i.aw, %bb.o ]
  %i.ay = and i32 %.05.ph.i.i, 61440
  %i.az = icmp eq i32 %i.ay, 16384
  br i1 %i.az, label %mz_zip_entry_needs_zip64.exit, label %mz_zip_attrib_is_dir.exit.i

mz_zip_attrib_is_dir.exit.i:                      ; preds = %bb.q, %bb.n
  br label %mz_zip_entry_needs_zip64.exit

bb.r:                                             ; preds = %bb.l
  br label %mz_zip_entry_needs_zip64.exit

mz_zip_entry_needs_zip64.exit:                    ; preds = %bb.r, %mz_zip_attrib_is_dir.exit.i, %bb.q, %bb.m, %bb.l
  %.189 = phi i8 [ 1, %bb.l ], [ 0, %bb.r ], [ %i.am, %bb.m ], [ %i.am, %bb.q ], [ 1, %mz_zip_attrib_is_dir.exit.i ] ; 4 uses
  %i.ba = icmp eq i32 %.062, 0
  br i1 %i.ba, label %bb.s, label %mz_zip_entry_write_descriptor.exit.thread

bb.s:                                             ; preds = %mz_zip_entry_needs_zip64.exit
  %i.bb = load i16, ptr %i.u, align 4, !tbaa !71
  %i.bc = zext i16 %i.bb to i32                   ; 2 uses
  %i.bd = and i32 %i.bc, 8
  %.not71 = icmp eq i32 %i.bd, 0
  br i1 %.not71, label %mz_zip_entry_write_descriptor.exit.thread91, label %bb.t

mz_zip_entry_write_descriptor.exit.thread91:      ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.063, ptr %i.be, align 8, !tbaa !77
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !72
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !18
  store i64 %i.bh, ptr %i.ag, align 8, !tbaa !73
  br label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.bi = and i32 %i.bc, 8192
  %.not72 = icmp eq i32 %i.bi, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !15 ; 12 uses
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !18  ; 4 uses
  br i1 %.not72, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = call i32 @mz_stream_write_uint32(ptr noundef %i.bk, i32 noundef 134695760) #23 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.v, label %mz_zip_entry_write_descriptor.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.bo = call i32 @mz_stream_write_uint32(ptr noundef %i.bk, i32 noundef 0) #23 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.w, label %mz_zip_entry_write_descriptor.exit.thread

bb.w:                                             ; preds = %bb.v
  %.not.i76 = icmp eq i8 %.189, 0
  br i1 %.not.i76, label %.thread21.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = call i32 @mz_stream_write_int64(ptr noundef %i.bk, i64 noundef %i.bl) #23 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.y, label %mz_zip_entry_write_descriptor.exit.thread

.thread21.i:                                      ; preds = %bb.w
  %i.bs = trunc i64 %i.bl to i32
  %i.bt = call i32 @mz_stream_write_uint32(ptr noundef %i.bk, i32 noundef %i.bs) #23 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.thread23.i, label %mz_zip_entry_write_descriptor.exit.thread

.thread23.i:                                      ; preds = %.thread21.i
  %i.bv = call i32 @mz_stream_write_uint32(ptr noundef %i.bk, i32 noundef 0) #23
  br label %mz_zip_entry_write_descriptor.exit

bb.y:                                             ; preds = %bb.x
  %i.bw = call i32 @mz_stream_write_int64(ptr noundef %i.bk, i64 noundef 0) #23
  br label %mz_zip_entry_write_descriptor.exit

bb.z:                                             ; preds = %bb.t
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.by = call i32 @mz_stream_write_uint32(ptr noundef %i.bk, i32 noundef 134695760) #23 ; 2 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.aa, label %mz_zip_entry_write_descriptor.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.ca = call i32 @mz_stream_write_uint32(ptr noundef %i.bk, i32 noundef %.063) #23 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.ab, label %mz_zip_entry_write_descriptor.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %.not.i78 = icmp eq i8 %.189, 0
  br i1 %.not.i78, label %.thread21.i79, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = call i32 @mz_stream_write_int64(ptr noundef %i.bk, i64 noundef %i.bl) #23 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ad, label %mz_zip_entry_write_descriptor.exit.thread

.thread21.i79:                                    ; preds = %bb.ab
  %i.ce = trunc i64 %i.bl to i32
  %i.cf = call i32 @mz_stream_write_uint32(ptr noundef %i.bk, i32 noundef %i.ce) #23 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.thread23.i80, label %mz_zip_entry_write_descriptor.exit.thread

.thread23.i80:                                    ; preds = %.thread21.i79
  %i.ch = trunc i64 %i.bx to i32
  %i.ci = call i32 @mz_stream_write_uint32(ptr noundef %i.bk, i32 noundef %i.ch) #23
  br label %mz_zip_entry_write_descriptor.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cj = call i32 @mz_stream_write_int64(ptr noundef %i.bk, i64 noundef %i.bx) #23
  br label %mz_zip_entry_write_descriptor.exit

mz_zip_entry_write_descriptor.exit.thread:        ; preds = %mz_zip_entry_needs_zip64.exit, %bb.u, %bb.x, %.thread21.i, %bb.v, %bb.ac, %.thread21.i79, %bb.aa, %bb.z
  %.1.ph = phi i32 [ %i.by, %bb.z ], [ %i.ca, %bb.aa ], [ %i.cf, %.thread21.i79 ], [ %i.cc, %bb.ac ], [ %i.bo, %bb.v ], [ %i.bt, %.thread21.i ], [ %i.bq, %bb.x ], [ %i.bm, %bb.u ], [ %.062, %mz_zip_entry_needs_zip64.exit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.063, ptr %i.ck, align 8, !tbaa !77
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !72
  %i.cn = load i64, ptr %i.c, align 8, !tbaa !18
  store i64 %i.cn, ptr %i.ag, align 8, !tbaa !73
  br label %.thread

mz_zip_entry_write_descriptor.exit:               ; preds = %bb.ad, %.thread23.i80, %bb.y, %.thread23.i
  %.1 = phi i32 [ %i.ci, %.thread23.i80 ], [ %i.cj, %bb.ad ], [ %i.bv, %.thread23.i ], [ %i.bw, %bb.y ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.063, ptr %i.co, align 8, !tbaa !77
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !72
  %i.cr = load i64, ptr %i.c, align 8, !tbaa !18
  store i64 %i.cr, ptr %i.ag, align 8, !tbaa !73
  %i.cs = icmp eq i32 %.1, 0
  br i1 %i.cs, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %mz_zip_entry_write_descriptor.exit, %mz_zip_entry_write_descriptor.exit.thread91
  %i.ct = phi ptr [ %i.bg, %mz_zip_entry_write_descriptor.exit.thread91 ], [ %i.cq, %mz_zip_entry_write_descriptor.exit ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !16
  %i.cw = call fastcc i32 @mz_zip_entry_write_header(ptr noundef %i.cv, i8 noundef zeroext 0, ptr noundef %0) ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.cy = load i16, ptr %i.u, align 4, !tbaa !71
  %i.cz = and i16 %i.cy, 8200
  %or.cond74 = icmp eq i16 %i.cz, 0
  br i1 %or.cond74, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 13 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !15
  %i.dc = call i64 @mz_stream_tell(ptr noundef %i.db) #23
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !15
  %i.de = call i32 @mz_stream_get_prop_int64(ptr noundef %i.dd, i32 noundef 8, ptr noundef nonnull %i.d) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !47 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !20
  %i.dj = icmp eq i32 %i.dg, %i.di
  br i1 %i.dj, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dk = load ptr, ptr %i.da, align 8, !tbaa !15
  %i.dl = call i32 @mz_stream_get_prop_int64(ptr noundef %i.dk, i32 noundef 7, ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !18
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !42
  %i.dq = and i32 %i.dp, 2
  %i.dr = icmp eq i32 %i.dq, 0
end_hunk_1
begin_hunk_2_@mz_zip_entry_write_close:bb.a

bb.ao:                                            ; preds = %bb.an
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !92
  %i.ez = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ey) #25
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0 = phi i64 [ %i.ez, %bb.ao ], [ %i.ev, %bb.an ]
  %i.fa = load ptr, ptr %i.da, align 8, !tbaa !15
  %i.fb = add nsw i64 %.0, 8
  %i.fc = call i32 @mz_stream_seek(ptr noundef %i.fa, i64 noundef %i.fb, i32 noundef 1) #23 ; 2 uses
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.aq, label %.thread99

bb.aq:                                            ; preds = %bb.ap
  %i.fe = load ptr, ptr %i.da, align 8, !tbaa !15
  %i.ff = load i64, ptr %i.ag, align 8, !tbaa !73
  %i.fg = call i32 @mz_stream_write_uint64(ptr noundef %i.fe, i64 noundef %i.ff) #23 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ar, label %.thread99

bb.ar:                                            ; preds = %bb.aq
  %i.fi = load ptr, ptr %i.da, align 8, !tbaa !15
  %i.fj = load i64, ptr %i.ct, align 8, !tbaa !72
  %i.fk = call i32 @mz_stream_write_uint64(ptr noundef %i.fi, i64 noundef %i.fj) #23
  br label %.thread99

.thread99:                                        ; preds = %bb.ap, %mz_zip_entry_seek_local_header.exit.thread, %mz_zip_entry_seek_local_header.exit, %bb.al, %bb.aq, %bb.ar, %bb.am
  %.7 = phi i32 [ %i.eq, %bb.am ], [ %i.fk, %bb.ar ], [ %i.fg, %bb.aq ], [ %i.ee, %mz_zip_entry_seek_local_header.exit ], [ %i.en, %bb.al ], [ -103, %mz_zip_entry_seek_local_header.exit.thread ], [ %i.fc, %bb.ap ]
  %i.fl = load ptr, ptr %i.da, align 8, !tbaa !15
  %i.fm = load i64, ptr %i.d, align 8, !tbaa !18
  %i.fn = call i32 @mz_stream_set_prop_int64(ptr noundef %i.fl, i32 noundef 8, i64 noundef %i.fm) #23 ; 0 uses
  %i.fo = load ptr, ptr %i.da, align 8, !tbaa !15
  %i.fp = call i32 @mz_stream_seek(ptr noundef %i.fo, i64 noundef %i.dc, i32 noundef 0) #23 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %mz_zip_entry_write_descriptor.exit.thread, %mz_zip_entry_write_descriptor.exit, %.thread99, %bb.af, %bb.ae
  %.8 = phi i32 [ %.7, %.thread99 ], [ %i.cw, %bb.ae ], [ 0, %bb.af ], [ %.1.ph, %mz_zip_entry_write_descriptor.exit.thread ], [ %.1, %mz_zip_entry_write_descriptor.exit ]
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !21
  %i.fs = add i64 %i.fr, 1
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !21
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !69
  %.not.i84 = icmp eq ptr %i.fu, null
  br i1 %.not.i84, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.thread
  call void @mz_stream_delete(ptr noundef nonnull %i.ft) #23
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.thread
  store ptr null, ptr %i.ft, align 8, !tbaa !69
  %i.fv = load ptr, ptr %i.g, align 8, !tbaa !70
  %.not8.i = icmp eq ptr %i.fv, null
  br i1 %.not8.i, label %mz_zip_entry_close_int.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @mz_stream_delete(ptr noundef nonnull %i.g) #23
  br label %mz_zip_entry_close_int.exit

mz_zip_entry_close_int.exit:                      ; preds = %bb.at, %bb.au
  store ptr null, ptr %i.g, align 8, !tbaa !70
  store i8 0, ptr %i.e, align 1, !tbaa !43
  br label %bb.av

bb.av:                                            ; preds = %bb.a, %mz_zip_entry_is_open.exit, %mz_zip_entry_close_int.exit
  %.061 = phi i32 [ %.8, %mz_zip_entry_close_int.exit ], [ -102, %mz_zip_entry_is_open.exit ], [ -102, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  ret i32 %.061
}

declare i32 @mz_stream_set_base(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mz_zip_entry_write_crc_sizes(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext range(i8 0, 2) %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %.not.not = icmp eq i8 %2, 0                    ; 2 uses
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = tail call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.sink) #23 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %.not16.not = icmp eq i8 %1, 0
  br i1 %.not16.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = trunc i64 %i.f to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink19 = phi i32 [ %i.g, %bb.e ], [ -1, %bb.d ]
  %i.h = tail call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.sink19) #23 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.j = or i8 %2, %1
  %brmerge.not = icmp eq i8 %i.j, 0
  %.mux = sext i1 %.not.not to i32
  br i1 %brmerge.not, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36
  %i.m = trunc i64 %i.l to i32
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.g, %bb.h
  %.sink20 = phi i32 [ %.mux, %bb.g ], [ %i.m, %bb.h ]
  %i.n = tail call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.sink20) #23
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.c, %bb.f
  %.2 = phi i32 [ %i.c, %bb.c ], [ %i.h, %bb.f ], [ %i.n, %.thread.sink.split ]
  ret i32 %.2
}

declare i32 @mz_stream_write_uint64(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -107, 1) i32 @mz_zip_entry_get_compress_stream(ptr noundef readonly captures(address_is_null) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !14
  %.not = icmp eq ptr %i.d, null
  %. = select i1 %.not, i32 -107, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -102, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mz_zip_entry_close_raw(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %mz_zip_entry_is_open.exit

mz_zip_entry_is_open.exit:                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 373
  %i.b = load i8, ptr %i.a, align 1, !tbaa !43
  %.not13 = icmp eq i8 %i.b, 0
  br i1 %.not13, label %bb.e, label %bb.b

bb.b:                                             ; preds = %mz_zip_entry_is_open.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42
  %i.e = and i32 %i.d, 2
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @mz_zip_entry_write_close(ptr noundef nonnull %0, i32 noundef %2, i64 noundef -1, i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @mz_zip_entry_read_close(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a, %mz_zip_entry_is_open.exit
  %.09 = phi i32 [ -102, %bb.a ], [ -102, %mz_zip_entry_is_open.exit ], [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define range(i32 -107, 1) i32 @mz_zip_entry_is_dir(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_zip_attrib_is_dir.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.b = load i8, ptr %i.a, align 4, !tbaa !46
  %.not11 = icmp eq i8 %i.b, 0
  br i1 %.not11, label %mz_zip_attrib_is_dir.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !75   ; 5 uses
  %1 = load i16, ptr %0, align 8, !tbaa !76
  %2 = lshr i16 %1, 8
  %3 = trunc nuw i16 %2 to i8
  switch i8 %3, label %mz_zip_attrib_is_dir.exit [
    i8 10, label %bb.d
    i8 0, label %bb.d
    i8 19, label %bb.e
    i8 13, label %bb.e
    i8 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.e = and i32 %i.d, 1
  %i.f = icmp eq i32 %i.e, 0
  %spec.select.i.i.i = select i1 %i.f, i32 438, i32 292
  %i.g = and i32 %i.d, 1024
  %.not10.i.i.i = icmp eq i32 %i.g, 0
  %i.h = and i32 %i.d, 16
  %.not11.i.i.i = icmp eq i32 %i.h, 0
  %..i.i.i = select i1 %.not11.i.i.i, i32 32768, i32 16457
  %.sink13.i.i.i = select i1 %.not10.i.i.i, i32 %..i.i.i, i32 40960
  %i.i = or disjoint i32 %.sink13.i.i.i, %spec.select.i.i.i
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.j = lshr i32 %i.d, 16                        ; 2 uses
  %.not59.i.i = icmp eq i32 %i.j, 0
  %spec.select.i.i = select i1 %.not59.i.i, i32 %i.d, i32 %i.j
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.05.ph.i = phi i32 [ %spec.select.i.i, %bb.e ], [ %i.i, %bb.d ]
  %i.k = and i32 %.05.ph.i, 61440
  %i.l = icmp eq i32 %i.k, 16384
  br i1 %i.l, label %mz_zip_attrib_is_dir.exit.thread, label %mz_zip_attrib_is_dir.exit

mz_zip_attrib_is_dir.exit:                        ; preds = %bb.f, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92   ; 2 uses
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #25 ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %mz_zip_attrib_is_dir.exit
  %i.r = add i64 %i.o, 4294967295
  %i.s = and i64 %i.r, 4294967295
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !26
  %i.v = tail call i32 @mz_os_is_dir_separator(i8 noundef signext %i.u) #23
  %.not12 = icmp eq i32 %i.v, 0
  br i1 %.not12, label %bb.h, label %mz_zip_attrib_is_dir.exit.thread

bb.h:                                             ; preds = %bb.g, %mz_zip_attrib_is_dir.exit
  br label %mz_zip_attrib_is_dir.exit.thread

mz_zip_attrib_is_dir.exit.thread:                 ; preds = %bb.f, %bb.g, %bb.a, %bb.b, %bb.h
  %.0 = phi i32 [ -102, %bb.a ], [ 0, %bb.g ], [ -107, %bb.h ], [ -102, %bb.b ], [ 0, %bb.f ]
  ret i32 %.0
}

declare i32 @mz_os_is_dir_separator(i8 noundef signext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -107, 1) i32 @mz_zip_entry_is_symlink(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_zip_attrib_is_symlink.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.b = load i8, ptr %i.a, align 4, !tbaa !46
  %.not6 = icmp eq i8 %i.b, 0
  br i1 %.not6, label %mz_zip_attrib_is_symlink.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !75   ; 5 uses
  %1 = load i16, ptr %0, align 8, !tbaa !76
  %2 = lshr i16 %1, 8
  %3 = trunc nuw i16 %2 to i8
  switch i8 %3, label %mz_zip_attrib_is_symlink.exit [
    i8 10, label %bb.d
    i8 0, label %bb.d
    i8 19, label %bb.e
    i8 13, label %bb.e
    i8 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.e = and i32 %i.d, 1
  %i.f = icmp eq i32 %i.e, 0
  %spec.select.i.i.i = select i1 %i.f, i32 438, i32 292
  %i.g = and i32 %i.d, 1024
  %.not10.i.i.i = icmp eq i32 %i.g, 0
  %i.h = and i32 %i.d, 16
  %.not11.i.i.i = icmp eq i32 %i.h, 0
  %..i.i.i = select i1 %.not11.i.i.i, i32 32768, i32 16457
  %.sink13.i.i.i = select i1 %.not10.i.i.i, i32 %..i.i.i, i32 40960
  %i.i = or disjoint i32 %.sink13.i.i.i, %spec.select.i.i.i
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.j = lshr i32 %i.d, 16                        ; 2 uses
  %.not59.i.i = icmp eq i32 %i.j, 0
  %spec.select.i.i = select i1 %.not59.i.i, i32 %i.d, i32 %i.j
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.05.ph.i = phi i32 [ %spec.select.i.i, %bb.e ], [ %i.i, %bb.d ]
  %i.k = and i32 %.05.ph.i, 61440
  %i.l = icmp eq i32 %i.k, 40960
  %spec.select = select i1 %i.l, i32 0, i32 -107
  br label %mz_zip_attrib_is_symlink.exit

mz_zip_attrib_is_symlink.exit:                    ; preds = %bb.f, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ -102, %bb.b ], [ -102, %bb.a ], [ %spec.select, %bb.f ], [ -107, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -107, 1) i32 @mz_zip_attrib_is_symlink(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = lshr i32 %1, 8
  %i.b = trunc i32 %i.a to i8
  switch i8 %i.b, label %mz_zip_attrib_convert.exit [
    i8 10, label %bb.b
    i8 0, label %bb.b
    i8 19, label %bb.c
    i8 13, label %bb.c
    i8 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = and i32 %0, 1
  %i.d = icmp eq i32 %i.c, 0
  %spec.select.i.i = select i1 %i.d, i32 438, i32 292
  %i.e = and i32 %0, 1024
  %.not10.i.i = icmp eq i32 %i.e, 0
  %i.f = and i32 %0, 16
  %.not11.i.i = icmp eq i32 %i.f, 0
  %..i.i = select i1 %.not11.i.i, i32 32768, i32 16457
  %.sink13.i.i = select i1 %.not10.i.i, i32 %..i.i, i32 40960
  %i.g = or disjoint i32 %.sink13.i.i, %spec.select.i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.h = lshr i32 %0, 16                          ; 2 uses
  %.not59.i = icmp eq i32 %i.h, 0
  %spec.select.i = select i1 %.not59.i, i32 %0, i32 %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.05.ph = phi i32 [ %spec.select.i, %bb.c ], [ %i.g, %bb.b ]
  %i.i = and i32 %.05.ph, 61440
  %i.j = icmp eq i32 %i.i, 40960
  br i1 %i.j, label %bb.e, label %mz_zip_attrib_convert.exit

mz_zip_attrib_convert.exit:                       ; preds = %bb.a, %bb.d
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %mz_zip_attrib_convert.exit
  %.0 = phi i32 [ -107, %mz_zip_attrib_convert.exit ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -102, 1) i32 @mz_zip_entry_get_info(ptr noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %i.c = and i32 %i.b, 2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.f = load i8, ptr %i.e, align 4, !tbaa !46
  %.not7 = icmp eq i8 %i.f, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %0, ptr %1, align 8, !tbaa !93
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -102, %bb.a ], [ -102, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -102, 1) i32 @mz_zip_entry_get_local_info(ptr noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %mz_zip_entry_is_open.exit

mz_zip_entry_is_open.exit:                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 373
  %i.b = load i8, ptr %i.a, align 1, !tbaa !43
  %.not7 = icmp eq i8 %i.b, 0
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %mz_zip_entry_is_open.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.c, ptr %1, align 8, !tbaa !93
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %mz_zip_entry_is_open.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -102, %mz_zip_entry_is_open.exit ], [ -102, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -102, 1) i32 @mz_zip_entry_set_extrafield(ptr noundef captures(address_is_null) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %mz_zip_entry_is_open.exit

mz_zip_entry_is_open.exit:                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 373
  %i.b = load i8, ptr %i.a, align 1, !tbaa !43
  %.not9 = icmp eq i8 %i.b, 0
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %mz_zip_entry_is_open.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %1, ptr %i.c, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %2, ptr %i.d, align 2, !tbaa !96
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %mz_zip_entry_is_open.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -102, %mz_zip_entry_is_open.exit ], [ -102, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @mz_zip_get_entry(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load i64, ptr %i.a, align 8, !tbaa !97
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ -102, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mz_zip_goto_entry(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_zip_goto_next_entry_int.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %mz_zip_goto_next_entry_int.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23
  %i.f = add nsw i64 %i.e, %i.b
  %i.g = icmp sgt i64 %1, %i.f
  br i1 %i.g, label %mz_zip_goto_next_entry_int.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  store i64 %1, ptr %i.h, align 8, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  store i8 0, ptr %i.i, align 4, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
end_hunk_2
