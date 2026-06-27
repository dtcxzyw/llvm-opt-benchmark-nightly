inline.NumInlined: 69
inline.NumDeleted: 11
begin_hunk_0_@mz_zip_entry_read_open:bb.a
bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = call i32 @mz_stream_get_prop_int64(ptr noundef %i.n, i32 noundef 7, ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !18
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.d, align 8, !tbaa !42
  %i.s = and i32 %i.r, 2
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.0.i = phi i32 [ -1, %bb.h ], [ %i.i, %bb.g ], [ %i.i, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.w = zext i32 %.0.i to i64
  %i.x = call i32 @mz_stream_set_prop_int64(ptr noundef %i.v, i32 noundef 8, i64 noundef %i.w) #23 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !28   ; 3 uses
  %i.aa = icmp sgt i64 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !48 ; 2 uses
  %i.ad = sub nuw nsw i64 9223372036854775807, %i.z
  %i.ae = icmp sgt i64 %i.ac, %i.ad
  %or.cond.i = select i1 %i.aa, i1 %i.ae, i1 false
  br i1 %or.cond.i, label %.thread42, label %mz_zip_entry_seek_local_header.exit

.thread42:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.m

mz_zip_entry_seek_local_header.exit:              ; preds = %bb.i
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.ag = add nsw i64 %i.ac, %i.z
  %i.ah = call i32 @mz_stream_seek(ptr noundef %i.af, i64 noundef %i.ag, i32 noundef 0) #23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %mz_zip_entry_seek_local_header.exit
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !41
  %i.an = call fastcc i32 @mz_zip_entry_read_header(ptr noundef %i.aj, i8 noundef zeroext 1, ptr noundef %i.ak, ptr noundef %i.am)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %mz_zip_entry_seek_local_header.exit
  %.026 = phi i32 [ %i.an, %bb.j ], [ %i.ah, %mz_zip_entry_seek_local_header.exit ] ; 2 uses
  switch i32 %.026, label %.critedge.thread [
    i32 -103, label %bb.l
    i32 0, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %.pre = load i64, ptr %i.y, align 8, !tbaa !28
  %i.ao = icmp sgt i64 %.pre, 0
  br i1 %i.ao, label %bb.m, label %.critedge.thread

bb.m:                                             ; preds = %.thread42, %bb.l
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.aq = load i64, ptr %i.ab, align 8, !tbaa !48
  %i.ar = call i32 @mz_stream_seek(ptr noundef %i.ap, i64 noundef %i.aq, i32 noundef 0) #23
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.n, label %.critedge.thread

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !41
  %i.ax = call fastcc i32 @mz_zip_entry_read_header(ptr noundef %i.at, i8 noundef zeroext 1, ptr noundef %i.au, ptr noundef %i.aw)
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.critedge.thread37, label %.critedge.thread

.critedge.thread37:                               ; preds = %bb.n
  store i64 0, ptr %i.y, align 8, !tbaa !28
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %.critedge.thread37
  %i.az = call fastcc i32 @mz_zip_entry_open_int(ptr noundef %0, i8 noundef zeroext %1, i16 noundef signext 0)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.k, %bb.m, %bb.l, %bb.n, %bb.o, %bb.d, %bb.b, %bb.c, %bb.a
  %.027 = phi i32 [ -109, %bb.a ], [ -102, %bb.b ], [ -102, %bb.d ], [ -102, %bb.c ], [ %i.az, %bb.o ], [ %.026, %bb.k ], [ -103, %bb.n ], [ -103, %bb.l ], [ -103, %bb.m ]
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define i32 @mz_zip_entry_seek_local_header(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = call i32 @mz_stream_get_prop_int64(ptr noundef %i.h, i32 noundef 7, ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.m = load i32, ptr %i.l, align 8, !tbaa !42
  %i.n = and i32 %i.m, 2
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ -1, %bb.d ], [ %i.c, %bb.c ], [ %i.c, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.r = zext i32 %.0 to i64
  %i.s = call i32 @mz_stream_set_prop_int64(ptr noundef %i.q, i32 noundef 8, i64 noundef %i.r) #23 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.u = load i64, ptr %i.t, align 8, !tbaa !28   ; 3 uses
  %i.v = icmp sgt i64 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !48   ; 2 uses
  %i.y = sub nuw nsw i64 9223372036854775807, %i.u
  %i.z = icmp sgt i64 %i.x, %i.y
  %or.cond = select i1 %i.v, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.ab = add nsw i64 %i.x, %i.u
  %i.ac = call i32 @mz_stream_seek(ptr noundef %i.aa, i64 noundef %i.ab, i32 noundef 0) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.014 = phi i32 [ %i.ac, %._crit_edge ], [ -103, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mz_zip_entry_read_header(ptr noundef %0, i8 noundef zeroext range(i8 0, 2) %1, ptr noundef nonnull initializes((0, 128)) %2, ptr noundef %3) unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.tm, align 8                 ; 10 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  %i.f = alloca i16, align 2                      ; 11 uses
  %i.g = alloca i16, align 2                      ; 5 uses
  %i.h = alloca i16, align 2                      ; 6 uses
  %i.i = alloca i16, align 2                      ; 7 uses
  %i.j = alloca i32, align 4                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i16 0, ptr %i.e, align 2, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i16 0, ptr %i.f, align 2, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i16 0, ptr %i.g, align 2, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store i16 0, ptr %i.h, align 2, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store i16 0, ptr %i.i, align 2, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store i32 0, ptr %i.j, align 4, !tbaa !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  %i.k = call i32 @mz_stream_read_uint32(ptr noundef %0, ptr noundef nonnull %i.c) #23 ; 3 uses
  %i.l = icmp eq i32 %i.k, -101
  br i1 %i.l, label %.thread287, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.c, align 4, !tbaa !3    ; 3 uses
  switch i32 %i.m, label %bb.c [
    i32 101075792, label %.thread287
    i32 101010256, label %.thread287
  ]

bb.c:                                             ; preds = %bb.b
  %5 = icmp ne i8 %1, 0
  %i.n = icmp ne i32 %i.m, 67324752
  %or.cond3 = and i1 %5, %i.n
  br i1 %or.cond3, label %.thread287, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i8 %1, 0                         ; 3 uses
  %i.p = icmp ne i32 %i.m, 33639248
  %or.cond5 = and i1 %i.o, %i.p
  br i1 %or.cond5, label %.thread287, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq i32 %i.k, 0
  br i1 %i.q, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e
  br i1 %i.o, label %bb.g, label %.thread247

bb.g:                                             ; preds = %bb.f
  %i.r = call i32 @mz_stream_read_uint16(ptr noundef %0, ptr noundef nonnull %2) #23 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread247, label %.thread287

.thread247:                                       ; preds = %bb.f, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.u = call i32 @mz_stream_read_uint16(ptr noundef %0, ptr noundef nonnull %i.t) #23 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %.thread270

bb.h:                                             ; preds = %.thread247
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = call i32 @mz_stream_read_uint16(ptr noundef %0, ptr noundef nonnull %i.w) #23 ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %.thread270

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.aa = call i32 @mz_stream_read_uint16(ptr noundef %0, ptr noundef nonnull %i.z) #23 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %.thread270

bb.j:                                             ; preds = %bb.i
  %i.ac = call i32 @mz_stream_read_uint32(ptr noundef %0, ptr noundef nonnull %i.d) #23 ; 2 uses
  %i.ad = load i32, ptr %i.d, align 4, !tbaa !3   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ae = lshr i32 %i.ad, 16
  %i.af = and i32 %i.ae, 31
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !49
  %i.ah = lshr i32 %i.ad, 21
  %i.ai = and i32 %i.ah, 15
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !51
  %i.al = lshr i32 %i.ad, 25
  %i.am = add nuw nsw i32 %i.al, 80
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.am, ptr %i.an, align 4, !tbaa !52
  %i.ao = lshr i32 %i.ad, 11
  %i.ap = and i32 %i.ao, 31
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !53
  %i.ar = lshr i32 %i.ad, 5
  %i.as = and i32 %i.ar, 63
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !54
  %i.au = shl i32 %i.ad, 1
  %i.av = and i32 %i.au, 62
  store i32 %i.av, ptr %4, align 8, !tbaa !55
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 -1, ptr %i.aw, align 8, !tbaa !56
  %i.ax = call noundef i64 @mktime(ptr noundef nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !57
  %i.az = icmp eq i32 %i.ac, 0
  br i1 %i.az, label %bb.k, label %.thread270

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bb = call i32 @mz_stream_read_uint32(ptr noundef %0, ptr noundef nonnull %i.ba) #23 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %.thread270

bb.l:                                             ; preds = %bb.k
  %i.bd = call i32 @mz_stream_read_uint32(ptr noundef %0, ptr noundef nonnull %i.j) #23 ; 2 uses
  %i.be = load i32, ptr %i.j, align 4, !tbaa !3
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !35
  %i.bh = icmp eq i32 %i.bd, 0
  br i1 %i.bh, label %bb.m, label %.thread270

bb.m:                                             ; preds = %bb.l
  %i.bi = call i32 @mz_stream_read_uint32(ptr noundef %0, ptr noundef nonnull %i.j) #23 ; 2 uses
  %i.bj = load i32, ptr %i.j, align 4, !tbaa !3
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !36
  %i.bm = icmp eq i32 %i.bi, 0
  br i1 %i.bm, label %bb.n, label %.thread270

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bo = call i32 @mz_stream_read_uint16(ptr noundef %0, ptr noundef nonnull %i.bn) #23 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.o, label %.thread270

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.br = call i32 @mz_stream_read_uint16(ptr noundef %0, ptr noundef nonnull %i.bq) #23
  br label %.thread270

.thread270:                                       ; preds = %.thread247, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.o, %bb.n
  %.10 = phi i32 [ %i.br, %bb.o ], [ %i.bo, %bb.n ], [ %i.bi, %bb.m ], [ %i.bd, %bb.l ], [ %i.bb, %bb.k ], [ %i.ac, %bb.j ], [ %i.aa, %bb.i ], [ %i.x, %bb.h ], [ %i.u, %.thread247 ] ; 3 uses
  br i1 %i.o, label %bb.p, label %bb.v

bb.p:                                             ; preds = %.thread270
  %i.bs = icmp eq i32 %.10, 0
  br i1 %i.bs, label %bb.q, label %.thread287

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.bu = call i32 @mz_stream_read_uint16(ptr noundef %0, ptr noundef nonnull %i.bt) #23 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.r, label %.thread287

bb.r:                                             ; preds = %bb.q
  %i.bw = call i32 @mz_stream_read_uint16(ptr noundef %0, ptr noundef nonnull %i.i) #23 ; 2 uses
  %i.bx = load i16, ptr %i.i, align 2, !tbaa !19
  %i.by = zext i16 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !30
  %i.ca = icmp eq i32 %i.bw, 0
  br i1 %i.ca, label %bb.s, label %.thread287

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cc = call i32 @mz_stream_read_uint16(ptr noundef %0, ptr noundef nonnull %i.cb) #23 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.t, label %.thread287

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.cf = call i32 @mz_stream_read_uint32(ptr noundef %0, ptr noundef nonnull %i.ce) #23 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.u, label %.thread287

bb.u:                                             ; preds = %bb.t
  %i.ch = call i32 @mz_stream_read_uint32(ptr noundef %0, ptr noundef nonnull %i.j) #23
  %i.ci = load i32, ptr %i.j, align 4, !tbaa !3
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !29
  br label %bb.v

bb.v:                                             ; preds = %.thread270, %bb.u, %bb.e
  %.15 = phi i32 [ %.10, %.thread270 ], [ %i.ch, %bb.u ], [ %i.k, %bb.e ] ; 2 uses
  %i.cl = icmp eq i32 %.15, 0
  br i1 %i.cl, label %bb.w, label %.thread287

bb.w:                                             ; preds = %bb.v
  %i.cm = call i32 @mz_stream_seek(ptr noundef %3, i64 noundef 0, i32 noundef 0) #23 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.x, label %.thread287

bb.x:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cp = load i16, ptr %i.co, align 8, !tbaa !58 ; 2 uses
  %.not231 = icmp eq i16 %i.cp, 0
  br i1 %.not231, label %.thread287, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = zext i16 %i.cp to i32
  %i.cr = call i32 @mz_stream_copy(ptr noundef %3, ptr noundef %0, i32 noundef %i.cq) #23
  br label %.thread287

.thread287:                                       ; preds = %bb.g, %bb.p, %bb.q, %bb.r, %bb.s, %bb.d, %bb.c, %bb.b, %bb.b, %bb.a, %bb.t, %bb.v, %bb.y, %bb.x, %bb.w
  %.17 = phi i32 [ %i.cr, %bb.y ], [ 0, %bb.x ], [ %i.cm, %bb.w ], [ %.15, %bb.v ], [ -103, %bb.d ], [ %i.cf, %bb.t ], [ -100, %bb.a ], [ -100, %bb.b ], [ -103, %bb.c ], [ -100, %bb.b ], [ %i.cc, %bb.s ], [ %i.bw, %bb.r ], [ %i.bu, %bb.q ], [ %.10, %bb.p ], [ %i.r, %bb.g ] ; 2 uses
  %i.cs = call i32 @mz_stream_write_uint8(ptr noundef %3, i8 noundef zeroext 0) #23 ; 0 uses
  %i.ct = call i64 @mz_stream_tell(ptr noundef %3) #23 ; 2 uses
  %i.cu = icmp eq i32 %.17, 0
  br i1 %i.cu, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.thread287
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !33 ; 2 uses
  %.not232 = icmp eq i16 %i.cw, 0
  br i1 %.not232, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = zext i16 %i.cw to i32
  %i.cy = call i32 @mz_stream_copy(ptr noundef %3, ptr noundef %0, i32 noundef %i.cx) #23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.thread287
  %.18 = phi i32 [ %i.cy, %bb.aa ], [ 0, %bb.z ], [ %.17, %.thread287 ] ; 2 uses
  %i.cz = call i32 @mz_stream_write_uint8(ptr noundef %3, i8 noundef zeroext 0) #23 ; 0 uses
  %i.da = call i64 @mz_stream_tell(ptr noundef %3) #23
  %i.db = icmp eq i32 %.18, 0
  br i1 %i.db, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
end_hunk_0
begin_hunk_1_@mz_zip_entry_write_open:bb.a
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
  %i.ce = load i16, ptr %0, align 8, !tbaa !76
  %i.cf = lshr i16 %i.ce, 8
  %i.cg = trunc nuw i16 %i.cf to i8
  switch i8 %i.cg, label %mz_zip_attrib_is_dir.exit [
    i8 10, label %bb.t
    i8 0, label %bb.t
    i8 19, label %bb.u
    i8 13, label %bb.u
    i8 3, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.ch = and i32 %i.cd, 1
  %i.ci = icmp eq i32 %i.ch, 0
  %spec.select.i.i.i = select i1 %i.ci, i32 438, i32 292
  %i.cj = and i32 %i.cd, 1024
  %.not10.i.i.i = icmp eq i32 %i.cj, 0
  %i.ck = and i32 %i.cd, 16
  %.not11.i.i.i = icmp eq i32 %i.ck, 0
  %..i.i.i = select i1 %.not11.i.i.i, i32 32768, i32 16457
  %.sink13.i.i.i = select i1 %.not10.i.i.i, i32 %..i.i.i, i32 40960
  %i.cl = or disjoint i32 %.sink13.i.i.i, %spec.select.i.i.i
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.s, %bb.s
  %i.cm = lshr i32 %i.cd, 16                      ; 2 uses
  %.not59.i.i = icmp eq i32 %i.cm, 0
  %spec.select.i.i = select i1 %.not59.i.i, i32 %i.cd, i32 %i.cm
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.05.ph.i = phi i32 [ %spec.select.i.i, %bb.u ], [ %i.cl, %bb.t ]
  %i.cn = and i32 %.05.ph.i, 61440
  %i.co = icmp eq i32 %i.cn, 16384
  br i1 %i.co, label %mz_zip_attrib_is_dir.exit.thread, label %mz_zip_attrib_is_dir.exit

mz_zip_attrib_is_dir.exit:                        ; preds = %bb.s, %bb.v
  %.not118 = icmp eq i8 %3, 0
  br i1 %.not118, label %bb.w, label %mz_zip_attrib_is_dir.exit.thread

bb.w:                                             ; preds = %mz_zip_attrib_is_dir.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 317
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !7
  %.not111 = icmp eq i8 %i.cq, 0
  br i1 %.not111, label %mz_zip_attrib_is_dir.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 4, !tbaa !71
  %i.ct = or i16 %i.cs, 8
  store i16 %i.ct, ptr %i.cr, align 4, !tbaa !71
  br label %mz_zip_attrib_is_dir.exit.thread

mz_zip_attrib_is_dir.exit.thread:                 ; preds = %bb.v, %bb.w, %bb.x, %mz_zip_attrib_is_dir.exit
  %i.cu = phi i1 [ false, %mz_zip_attrib_is_dir.exit ], [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.v ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !15
  %i.cx = call i32 @mz_stream_get_prop_int64(ptr noundef %i.cw, i32 noundef 8, ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !18
  %i.cz = trunc i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !47
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !15
  %i.dc = call i64 @mz_stream_tell(ptr noundef %i.db) #23
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !48
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.de, align 8, !tbaa !77
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.df, align 8, !tbaa !72
  %i.dg = icmp eq i16 %2, 0
  %or.cond9 = or i1 %i.dg, %i.cu
  br i1 %or.cond9, label %bb.y, label %bb.z

bb.y:                                             ; preds = %mz_zip_attrib_is_dir.exit.thread
  store i16 0, ptr %i.bs, align 2, !tbaa !66
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %mz_zip_attrib_is_dir.exit.thread
  %i.dh = load ptr, ptr %i.cv, align 8, !tbaa !15
  %i.di = call fastcc i32 @mz_zip_entry_write_header(ptr noundef %i.dh, i8 noundef zeroext 1, ptr noundef %0) ; 2 uses
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.aa, label %mz_zip_entry_close.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.dk = call fastcc i32 @mz_zip_entry_open_int(ptr noundef %0, i8 noundef zeroext %3, i16 noundef signext %2)
  br label %mz_zip_entry_close.exit.thread

mz_zip_entry_close.exit.thread:                   ; preds = %bb.z, %bb.aa, %mz_zip_entry_close.exit, %bb.b, %bb.c, %bb.a
  %.095 = phi i32 [ -109, %bb.a ], [ -102, %bb.b ], [ %.09.i.i, %mz_zip_entry_close.exit ], [ -102, %bb.c ], [ %i.dk, %bb.aa ], [ %i.di, %bb.z ]
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
define internal fastcc i32 @mz_zip_entry_write_header(ptr noundef %0, i8 noundef zeroext range(i8 0, 2) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #5 {
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
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i16, ptr %i.f, align 4, !tbaa !31
  %i.h = and i16 %i.g, 8192
  %.not276 = icmp eq i16 %i.h, 0
  br i1 %.not276, label %bb.c, label %4

4:                                                ; preds = %bb.b
  br label %bb.c

bb.c:                                             ; preds = %4, %bb.b, %bb.a
  %5 = phi i1 [ true, %4 ], [ false, %bb.b ], [ false, %bb.a ] ; 2 uses
  %.not288 = phi i1 [ false, %4 ], [ true, %bb.b ], [ true, %bb.a ] ; 4 uses
  %.0235 = phi i8 [ 1, %4 ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i = icmp ne i8 %1, 0                      ; 8 uses
  %.024.i = select i1 %.not.i, i64 4292870143, i64 4294967295
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %.not28.i = icmp slt i64 %i.j, %.024.i
  br i1 %.not28.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !35
  %i.m = icmp sgt i64 %i.l, 4294967294
  %i.n = zext i1 %i.m to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i8 [ 1, %bb.c ], [ %i.n, %bb.d ]     ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29
  %i.r = icmp sgt i64 %i.q, 4294967294
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !30
  %i.u = icmp ugt i32 %i.t, 65534
  %i.v = zext i1 %i.u to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = phi i8 [ 1, %bb.f ], [ %i.v, %bb.g ]
  %i.x = or i8 %i.w, %i.o
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.0.i = phi i8 [ %i.o, %bb.e ], [ %i.x, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.z = load i16, ptr %i.y, align 8, !tbaa !78   ; 2 uses
  switch i16 %i.z, label %bb.o [
    i16 0, label %bb.j
    i16 1, label %.thread
  ]

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp eq i64 %i.j, 0
  %or.cond33.i = and i1 %.not.i, %i.aa
  br i1 %or.cond33.i, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !79 ; 5 uses
  %i.ad = load i16, ptr %2, align 8, !tbaa !80
  %i.ae = lshr i16 %i.ad, 8
  %i.af = trunc nuw i16 %i.ae to i8
  switch i8 %i.af, label %.thread.thread [
    i8 10, label %bb.l
    i8 0, label %bb.l
    i8 19, label %bb.m
    i8 13, label %bb.m
    i8 3, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.ag = and i32 %i.ac, 1
  %i.ah = icmp eq i32 %i.ag, 0
  %spec.select.i.i.i.i = select i1 %i.ah, i32 438, i32 292
  %i.ai = and i32 %i.ac, 1024
  %.not10.i.i.i.i = icmp eq i32 %i.ai, 0
  %i.aj = and i32 %i.ac, 16
  %.not11.i.i.i.i = icmp eq i32 %i.aj, 0
  %..i.i.i.i = select i1 %.not11.i.i.i.i, i32 32768, i32 16457
  %.sink13.i.i.i.i = select i1 %.not10.i.i.i.i, i32 %..i.i.i.i, i32 40960
  %i.ak = or disjoint i32 %.sink13.i.i.i.i, %spec.select.i.i.i.i
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.k
  %i.al = lshr i32 %i.ac, 16                      ; 2 uses
  %.not59.i.i.i = icmp eq i32 %i.al, 0
  %spec.select.i.i.i = select i1 %.not59.i.i.i, i32 %i.ac, i32 %i.al
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.05.ph.i.i = phi i32 [ %spec.select.i.i.i, %bb.m ], [ %i.ak, %bb.l ]
  %i.am = and i32 %.05.ph.i.i, 61440
  %i.an = icmp eq i32 %i.am, 16384
  br i1 %i.an, label %bb.p, label %.thread.thread

bb.o:                                             ; preds = %bb.i
  %i.ao = icmp eq i16 %i.z, 2
  %i.ap = icmp ne i8 %.0.i, 0
  %or.cond.i = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond.i, label %mz_zip_entry_needs_zip64.exit, label %.thread332

bb.p:                                             ; preds = %bb.j, %bb.n
  %.not278 = icmp eq i8 %.0.i, 0
  br i1 %.not278, label %.thread332, label %.thread

.thread:                                          ; preds = %bb.i, %bb.p
  br i1 %.not, label %bb.q, label %.thread.thread

bb.q:                                             ; preds = %.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.as = icmp sgt i64 %i.ar, 4294967294
  %spec.select = select i1 %i.as, i16 24, i16 16
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.n, %bb.k, %bb.q, %.thread
  %.0253 = phi i16 [ 16, %.thread ], [ %spec.select, %bb.q ], [ 16, %bb.k ], [ 16, %bb.n ] ; 2 uses
  %i.at = or disjoint i16 %.0253, 4
  br label %.thread332

.thread332:                                       ; preds = %bb.o, %.thread.thread, %bb.p
  %.not278331 = phi i1 [ false, %.thread.thread ], [ true, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.au = phi i1 [ true, %.thread.thread ], [ false, %bb.p ], [ false, %bb.o ]
  %.1.ph329 = phi i8 [ 1, %.thread.thread ], [ %.0235, %bb.p ], [ %.0235, %bb.o ]
  %.1254 = phi i16 [ %.0253, %.thread.thread ], [ 0, %bb.p ], [ 0, %bb.o ]
  %.0246 = phi i16 [ %i.at, %.thread.thread ], [ 0, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 58 ; 3 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !33
  %.not280 = icmp eq i16 %i.aw, 0
  br i1 %.not280, label %.critedge, label %bb.r

bb.r:                                             ; preds = %.thread332
  %i.ax = tail call ptr @mz_stream_mem_create() #23 ; 9 uses
  store ptr %i.ax, ptr %i.e, align 8, !tbaa !14
  %.not281 = icmp eq ptr %i.ax, null
  br i1 %.not281, label %mz_zip_entry_needs_zip64.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !32
  %i.ba = load i16, ptr %i.av, align 2, !tbaa !33
  %i.bb = zext i16 %i.ba to i32
  tail call void @mz_stream_mem_set_buffer(ptr noundef nonnull %i.ax, ptr noundef %i.az, i32 noundef %i.bb) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %.1247 = phi i16 [ %.0246, %bb.s ], [ %.2248, %bb.v ] ; 3 uses
  %i.bc = call i32 @mz_stream_read_uint16(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.b) #23
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.be = call i32 @mz_stream_read_uint16(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.c) #23
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.bg = load i16, ptr %i.b, align 2, !tbaa !19  ; 3 uses
  %i.bh = icmp ne i16 %i.bg, 1
  %i.bi = icmp ne i16 %i.bg, 10
  %or.cond = and i1 %i.bh, %i.bi
  %i.bj = icmp ne i16 %i.bg, 13
  %or.cond5 = and i1 %i.bj, %or.cond
  %i.bk = load i16, ptr %i.c, align 2             ; 2 uses
  %i.bl = add i16 %i.bk, 4
  %i.bm = select i1 %or.cond5, i16 %i.bl, i16 0
  %.2248 = add i16 %i.bm, %.1247                  ; 2 uses
  %i.bn = zext i16 %i.bk to i64
  %i.bo = call i32 @mz_stream_seek(ptr noundef nonnull %i.ax, i64 noundef %i.bn, i32 noundef 1) #23
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.t, label %.critedge, !llvm.loop !81

.critedge:                                        ; preds = %bb.t, %bb.v, %bb.u, %.thread332
  %i.bq = phi ptr [ null, %.thread332 ], [ %i.ax, %bb.u ], [ %i.ax, %bb.v ], [ %i.ax, %bb.t ] ; 2 uses
  %.3249 = phi i16 [ %.0246, %.thread332 ], [ %.1247, %bb.t ], [ %.2248, %bb.v ], [ %.1247, %bb.u ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !57
  %.not283 = icmp eq i64 %i.bs, 0
  br i1 %.not283, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.critedge
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !61
  %.not284 = icmp eq i64 %i.bu, 0
  br i1 %.not284, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !82
  %i.bx = icmp eq i64 %i.bw, 0
  %or.cond7 = or i1 %5, %i.bx
  br i1 %or.cond7, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = add i16 %.3249, 36
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %.critedge
  %i.bz = phi i1 [ false, %bb.x ], [ true, %bb.y ], [ false, %bb.w ], [ false, %.critedge ]
  %.0252 = phi i16 [ 0, %bb.x ], [ 32, %bb.y ], [ 0, %bb.w ], [ 0, %.critedge ] ; 2 uses
  %.4250 = phi i16 [ %.3249, %bb.x ], [ %i.by, %bb.y ], [ %.3249, %bb.w ], [ %.3249, %.critedge ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !65 ; 3 uses
  %.not285 = icmp eq ptr %i.cb, null
  br i1 %.not285, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !26
  %.not286 = icmp eq i8 %i.cc, 0
  br i1 %.not286, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #25 ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = trunc i64 %i.cd to i16                  ; 2 uses
  %i.cg = add i16 %i.cf, 12
  %i.ch = add i16 %.4250, 16
  %i.ci = add i16 %i.ch, %i.cf
  %i.cj = and i32 %i.ce, 65535
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.5251 = phi i16 [ %i.ci, %bb.ab ], [ %.4250, %bb.aa ], [ %.4250, %bb.z ]
  %.0245 = phi i16 [ %i.cg, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %.0243 = phi i32 [ %i.cj, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  br i1 %.not.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ck = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef 67324752) #23
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.cl = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef 33639248) #23 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.af, label %mz_zip_entry_write_crc_sizes.exit

bb.af:                                            ; preds = %bb.ae
  %i.cn = load i16, ptr %2, align 8, !tbaa !80
  %i.co = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.cn) #23
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.0237 = phi i32 [ %i.ck, %bb.ad ], [ %i.co, %bb.af ] ; 2 uses
  %i.cp = icmp eq i32 %.0237, 0
  br i1 %i.cp, label %bb.ah, label %mz_zip_entry_write_crc_sizes.exit

bb.ah:                                            ; preds = %bb.ag
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !83 ; 2 uses
  %i.cs = icmp eq i16 %i.cr, 0
  %spec.store.select = select i1 %.not278331, i16 20, i16 45
  %.0242 = select i1 %i.cs, i16 %spec.store.select, i16 %i.cr
  %i.ct = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.0242) #23 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.ai, label %mz_zip_entry_write_crc_sizes.exit

bb.ai:                                            ; preds = %bb.ah
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cw = load i16, ptr %i.cv, align 4, !tbaa !31
  %i.cx = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.cw) #23 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.aj, label %mz_zip_entry_write_crc_sizes.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !84
  %i.db = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.da) #23 ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ak, label %mz_zip_entry_write_crc_sizes.exit

bb.ak:                                            ; preds = %bb.aj
  %i.dd = load i64, ptr %i.br, align 8, !tbaa !57 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  %or.cond9 = or i1 %5, %i.de
  br i1 %or.cond9, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.dd, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.df = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %3) #23
  %.not4.i.i = icmp eq ptr %i.df, null
  br i1 %.not4.i.i, label %.thread.i, label %mz_zip_time_t_to_tm.exit.i

.thread.i:                                        ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.am

mz_zip_time_t_to_tm.exit.i:                       ; preds = %bb.al
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
  %i.dg = icmp sgt i32 %.sroa.9.0.copyload.fr.i, 1979
  %i.dh = icmp sgt i32 %.sroa.9.0.copyload.fr.i, 79
  %..i = select i1 %i.dh, i32 -80, i32 20
  %spec.select.i = select i1 %i.dg, i32 -1980, i32 %..i
  %i.di = add nsw i32 %spec.select.i, %.sroa.9.0.copyload.fr.i
  br label %bb.am

bb.am:                                            ; preds = %mz_zip_time_t_to_tm.exit.i, %.thread.i
  %.sroa.0.01028.i = phi i32 [ 0, %.thread.i ], [ %.sroa.0.0.copyload.i, %mz_zip_time_t_to_tm.exit.i ] ; 2 uses
  %.sroa.5.01127.i = phi i32 [ 0, %.thread.i ], [ %.sroa.5.0.copyload.i, %mz_zip_time_t_to_tm.exit.i ] ; 2 uses
  %.sroa.6.01226.i = phi i32 [ 0, %.thread.i ], [ %.sroa.6.0.copyload.i, %mz_zip_time_t_to_tm.exit.i ] ; 2 uses
  %.sroa.7.01325.i = phi i32 [ 0, %.thread.i ], [ %.sroa.7.0.copyload.i, %mz_zip_time_t_to_tm.exit.i ] ; 2 uses
  %.sroa.8.01424.i = phi i32 [ 0, %.thread.i ], [ %.sroa.8.0.copyload.i, %mz_zip_time_t_to_tm.exit.i ] ; 2 uses
  %i.dj = phi i32 [ 20, %.thread.i ], [ %i.di, %mz_zip_time_t_to_tm.exit.i ] ; 2 uses
  %or.cond.i.i.i = icmp ult i32 %i.dj, 208
  %or.cond17.i.i.i = icmp ult i32 %.sroa.8.01424.i, 12
  %or.cond.i.i = select i1 %or.cond.i.i.i, i1 %or.cond17.i.i.i, i1 false
  %i.dk = add i32 %.sroa.7.01325.i, -1
  %or.cond18.i.i.i = icmp ult i32 %i.dk, 31
  %or.cond10.i.i = select i1 %or.cond.i.i, i1 %or.cond18.i.i.i, i1 false
  %or.cond19.i.i.i = icmp ult i32 %.sroa.6.01226.i, 24
  %or.cond11.i.i = select i1 %or.cond10.i.i, i1 %or.cond19.i.i.i, i1 false
  %or.cond20.i.i.i = icmp ult i32 %.sroa.5.01127.i, 60
  %or.cond12.i.i = select i1 %or.cond11.i.i, i1 %or.cond20.i.i.i, i1 false
  %narrow.i.i.i = icmp ult i32 %.sroa.0.01028.i, 60
  %or.cond13.i.i = select i1 %or.cond12.i.i, i1 %narrow.i.i.i, i1 false
  br i1 %or.cond13.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dl = shl nuw nsw i32 %.sroa.8.01424.i, 5
  %i.dm = add nuw nsw i32 %i.dl, 32
  %i.dn = or disjoint i32 %i.dm, %.sroa.7.01325.i
  %i.do = shl i32 %i.dj, 25
  %i.dp = shl nuw nsw i32 %i.dn, 16
  %i.dq = add nuw i32 %i.dp, %i.do
  %i.dr = lshr i32 %.sroa.0.01028.i, 1
  %i.ds = shl nuw nsw i32 %.sroa.5.01127.i, 5
  %i.dt = or disjoint i32 %i.ds, %i.dr
  %i.du = shl nuw nsw i32 %.sroa.6.01226.i, 11
  %i.dv = or disjoint i32 %i.dt, %i.du
  %i.dw = or disjoint i32 %i.dq, %i.dv
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.am, %bb.an
  %.0232 = phi i32 [ 0, %bb.ak ], [ %i.dw, %bb.an ], [ 0, %bb.am ]
  %i.dx = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.0232) #23 ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.ap, label %mz_zip_entry_write_crc_sizes.exit

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not288, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !34
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink.i305 = phi i32 [ %i.ea, %bb.aq ], [ 0, %bb.ap ]
  %i.eb = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.sink.i305) #23 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.as, label %mz_zip_entry_write_crc_sizes.exit

bb.as:                                            ; preds = %bb.ar
  br i1 %.not278331, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !35
  %i.ef = trunc i64 %i.ee to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sink19.i = phi i32 [ %i.ef, %bb.at ], [ -1, %bb.as ]
  %i.eg = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.sink19.i) #23 ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.av, label %mz_zip_entry_write_crc_sizes.exit

bb.av:                                            ; preds = %bb.au
  %brmerge.not.i = icmp eq i8 %.1.ph329, 0
  %.mux.i = sext i1 %.not288 to i32
  br i1 %brmerge.not.i, label %bb.aw, label %.thread.sink.split.i

bb.aw:                                            ; preds = %bb.av
  %i.ei = load i64, ptr %i.i, align 8, !tbaa !36
  %i.ej = trunc i64 %i.ei to i32
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.aw, %bb.av
  %.sink20.i = phi i32 [ %.mux.i, %bb.av ], [ %i.ej, %bb.aw ]
  %i.ek = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.sink20.i) #23
  br label %mz_zip_entry_write_crc_sizes.exit

mz_zip_entry_write_crc_sizes.exit:                ; preds = %bb.ae, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %.thread.sink.split.i, %bb.au, %bb.ar, %bb.ao
  %.5 = phi i32 [ %i.ek, %.thread.sink.split.i ], [ %i.dx, %bb.ao ], [ %i.eb, %bb.ar ], [ %i.eg, %bb.au ], [ %i.db, %bb.aj ], [ %i.cx, %bb.ai ], [ %i.ct, %bb.ah ], [ %.0237, %bb.ag ], [ %i.cl, %bb.ae ] ; 2 uses
  br i1 %.not288, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %mz_zip_entry_write_crc_sizes.exit
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.em = load i32, ptr %i.el, align 8, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !29
  %i.ep = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 64, ptr noundef nonnull @.str.8, i32 noundef %i.em, i64 noundef %i.eo) #23 ; 0 uses
  br label %bb.az

bb.ay:                                            ; preds = %mz_zip_entry_write_crc_sizes.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !63
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0233 = phi ptr [ %i.d, %bb.ax ], [ %i.er, %bb.ay ] ; 3 uses
  %i.es = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0233) #25 ; 3 uses
  %i.et = trunc i64 %i.es to i16                  ; 5 uses
  %i.eu = trunc i64 %i.es to i32
  %i.ev = and i32 %i.eu, 65535                    ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !79 ; 5 uses
  %i.ey = load i16, ptr %2, align 8, !tbaa !80
  %i.ez = lshr i16 %i.ey, 8
  %i.fa = trunc nuw i16 %i.ez to i8
  switch i8 %i.fa, label %mz_zip_attrib_is_dir.exit [
    i8 10, label %bb.ba
    i8 0, label %bb.ba
    i8 19, label %bb.bb
    i8 13, label %bb.bb
    i8 3, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.fb = and i32 %i.ex, 1
  %i.fc = icmp eq i32 %i.fb, 0
  %spec.select.i.i.i308 = select i1 %i.fc, i32 438, i32 292
  %i.fd = and i32 %i.ex, 1024
  %.not10.i.i.i = icmp eq i32 %i.fd, 0
  %i.fe = and i32 %i.ex, 16
  %.not11.i.i.i = icmp eq i32 %i.fe, 0
  %..i.i.i = select i1 %.not11.i.i.i, i32 32768, i32 16457
  %.sink13.i.i.i = select i1 %.not10.i.i.i, i32 %..i.i.i, i32 40960
  %i.ff = or disjoint i32 %.sink13.i.i.i, %spec.select.i.i.i308
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az, %bb.az, %bb.az
  %i.fg = lshr i32 %i.ex, 16                      ; 2 uses
  %.not59.i.i = icmp eq i32 %i.fg, 0
  %spec.select.i.i = select i1 %.not59.i.i, i32 %i.ex, i32 %i.fg
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.05.ph.i = phi i32 [ %spec.select.i.i, %bb.bb ], [ %i.ff, %bb.ba ]
  %i.fh = and i32 %.05.ph.i, 61440
  %i.fi = icmp eq i32 %i.fh, 16384
  br i1 %i.fi, label %bb.bd, label %mz_zip_attrib_is_dir.exit

bb.bd:                                            ; preds = %bb.bc
  %i.fj = and i64 %i.es, 65535
  %i.fk = getelementptr i8, ptr %.0233, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.fk, i64 -1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !26
  switch i8 %i.fm, label %bb.be [
    i8 47, label %mz_zip_attrib_is_dir.exit
    i8 92, label %mz_zip_attrib_is_dir.exit
  ]

bb.be:                                            ; preds = %bb.bd
  %i.fn = add i16 %i.et, 1
  br label %mz_zip_attrib_is_dir.exit

mz_zip_attrib_is_dir.exit:                        ; preds = %bb.bc, %bb.az, %bb.bd, %bb.bd, %bb.be
  %.0244 = phi i16 [ %i.fn, %bb.be ], [ %i.et, %bb.bd ], [ %i.et, %bb.bd ], [ %i.et, %bb.az ], [ %i.et, %bb.bc ]
  %i.fo = phi i1 [ true, %bb.be ], [ false, %bb.bd ], [ false, %bb.bd ], [ false, %bb.az ], [ false, %bb.bc ] ; 2 uses
  %i.fp = icmp eq i32 %.5, 0
  br i1 %i.fp, label %bb.bf, label %.thread350

bb.bf:                                            ; preds = %mz_zip_attrib_is_dir.exit
  %i.fq = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.0244) #23 ; 2 uses
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.bg, label %.thread350

bb.bg:                                            ; preds = %bb.bf
  %i.fs = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.5251) #23
  br label %.thread350

.thread350:                                       ; preds = %mz_zip_attrib_is_dir.exit, %bb.bg, %bb.bf
  %.7 = phi i32 [ %i.fs, %bb.bg ], [ %i.fq, %bb.bf ], [ %.5, %mz_zip_attrib_is_dir.exit ] ; 3 uses
  br i1 %.not.i, label %bb.bo, label %bb.bh

bb.bh:                                            ; preds = %.thread350
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !64 ; 2 uses
  %.not291 = icmp eq ptr %i.fu, null
  br i1 %.not291, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fu) #25
  %i.fw = trunc i64 %i.fv to i32
  %spec.store.select10 = call i32 @llvm.smin.i32(i32 %i.fw, i32 65535)
  %i.fx = trunc i32 %spec.store.select10 to i16
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0241 = phi i16 [ %i.fx, %bb.bi ], [ 0, %bb.bh ]
  %i.fy = icmp eq i32 %.7, 0
  br i1 %i.fy, label %bb.bk, label %.thread402

bb.bk:                                            ; preds = %bb.bj
  %i.fz = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.0241) #23 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.bl, label %.thread402

bb.bl:                                            ; preds = %bb.bk
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !30
  %i.gd = trunc i32 %i.gc to i16
  %i.ge = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.gd) #23 ; 2 uses
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.bm, label %.thread402

bb.bm:                                            ; preds = %bb.bl
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.gh = load i16, ptr %i.gg, align 8, !tbaa !85
  %i.gi = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.gh) #23 ; 2 uses
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.bn, label %.thread402

bb.bn:                                            ; preds = %bb.bm
  %i.gk = load i32, ptr %i.ew, align 4, !tbaa !79
  %i.gl = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %i.gk) #23 ; 2 uses
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %.sink.split, label %.thread402

.sink.split:                                      ; preds = %bb.bn
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !29 ; 2 uses
  %i.gp = icmp sgt i64 %i.go, 4294967294
  %i.gq = trunc i64 %i.go to i32
  %.sink = select i1 %i.gp, i32 -1, i32 %i.gq
  %i.gr = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.sink) #23
  br label %bb.bo

bb.bo:                                            ; preds = %.sink.split, %.thread350
  %.12 = phi i32 [ %.7, %.thread350 ], [ %i.gr, %.sink.split ] ; 2 uses
  %i.gs = icmp eq i32 %.12, 0
  br i1 %i.gs, label %bb.bp, label %.thread402

bb.bp:                                            ; preds = %bb.bo
  %.not292 = icmp eq i32 %i.ev, 0
  br i1 %.not292, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gt = call i32 @mz_stream_write(ptr noundef %0, ptr noundef nonnull %.0233, i32 noundef %i.ev) #23
  %.not293 = icmp eq i32 %i.gt, %i.ev             ; 2 uses
  %spec.select299 = and i1 %i.fo, %.not293
  %spec.select300 = select i1 %.not293, i32 0, i32 -116
  br i1 %spec.select299, label %bb.bs, label %bb.bt

bb.br:                                            ; preds = %bb.bp
  br i1 %i.fo, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.gu = call i32 @mz_stream_write_uint8(ptr noundef %0, i8 noundef zeroext 47) #23
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bq, %bb.br, %bb.bs
  %.15 = phi i32 [ %spec.select300, %bb.bq ], [ %i.gu, %bb.bs ], [ 0, %bb.br ] ; 2 uses
  %i.gv = icmp eq i32 %.15, 0
  %or.cond18 = and i1 %i.au, %i.gv
  br i1 %or.cond18, label %bb.bu, label %bb.ce

bb.bu:                                            ; preds = %bb.bt
  %i.gw = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext 1) #23 ; 2 uses
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %mz_zip_extrafield_write.exit, label %.thread402

mz_zip_extrafield_write.exit:                     ; preds = %bb.bu
  %i.gy = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.1254) #23 ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.bv, label %.thread402

bb.bv:                                            ; preds = %mz_zip_extrafield_write.exit
  br i1 %.not288, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ha = load i64, ptr %i.i, align 8, !tbaa !36
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %.sink470 = phi i64 [ %i.ha, %bb.bw ], [ 0, %bb.bv ]
  %i.hb = call i32 @mz_stream_write_int64(ptr noundef %0, i64 noundef %.sink470) #23 ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.by, label %.thread402

bb.by:                                            ; preds = %bb.bx
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !35
  %i.hf = call i32 @mz_stream_write_int64(ptr noundef %0, i64 noundef %i.he) #23 ; 2 uses
  %i.hg = icmp ne i32 %i.hf, 0
  %or.cond20 = or i1 %.not.i, %i.hg
  br i1 %or.cond20, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !29 ; 2 uses
  %i.hj = icmp sgt i64 %i.hi, 4294967294
  br i1 %i.hj, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.hk = call i32 @mz_stream_write_int64(ptr noundef %0, i64 noundef %i.hi) #23
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %.18 = phi i32 [ %i.hf, %bb.by ], [ %i.hk, %bb.ca ], [ 0, %bb.bz ] ; 2 uses
  %i.hl = icmp ne i32 %.18, 0
  %or.cond22 = or i1 %.not.i, %i.hl
  br i1 %or.cond22, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !30 ; 2 uses
  %i.ho = icmp ugt i32 %i.hn, 65534
  br i1 %i.ho, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.hp = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %i.hn) #23
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cb, %bb.cc, %bb.cd, %bb.bt
  %.19 = phi i32 [ %.18, %bb.cb ], [ %i.hp, %bb.cd ], [ 0, %bb.cc ], [ %.15, %bb.bt ] ; 2 uses
  %i.hq = icmp eq i32 %.19, 0
  %or.cond25 = and i1 %i.bz, %i.hq
  br i1 %or.cond25, label %bb.cf, label %bb.cm

bb.cf:                                            ; preds = %bb.ce
  %i.hr = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext 10) #23 ; 2 uses
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %mz_zip_extrafield_write.exit311, label %.thread402

mz_zip_extrafield_write.exit311:                  ; preds = %bb.cf
  %i.ht = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.0252) #23 ; 2 uses
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.cg, label %.thread402

bb.cg:                                            ; preds = %mz_zip_extrafield_write.exit311
  %i.hv = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef 0) #23 ; 2 uses
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.ch, label %.thread402

bb.ch:                                            ; preds = %bb.cg
  %i.hx = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext 1) #23 ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.ci, label %.thread402

bb.ci:                                            ; preds = %bb.ch
  %i.hz = add nsw i16 %.0252, -8
  %i.ia = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.hz) #23 ; 2 uses
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.cj, label %.thread402

bb.cj:                                            ; preds = %bb.ci
  %i.ic = load i64, ptr %i.br, align 8, !tbaa !57
  %i.id = mul i64 %i.ic, 10000000
  %i.ie = add i64 %i.id, 116444736000000000
  %i.if = call i32 @mz_stream_write_uint64(ptr noundef %0, i64 noundef %i.ie) #23 ; 2 uses
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.ck, label %.thread402

bb.ck:                                            ; preds = %bb.cj
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !61
  %i.ij = mul i64 %i.ii, 10000000
  %i.ik = add i64 %i.ij, 116444736000000000
  %i.il = call i32 @mz_stream_write_uint64(ptr noundef %0, i64 noundef %i.ik) #23 ; 2 uses
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.cl, label %.thread402

bb.cl:                                            ; preds = %bb.ck
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.io = load i64, ptr %i.in, align 8, !tbaa !82
  %i.ip = mul i64 %i.io, 10000000
  %i.iq = add i64 %i.ip, 116444736000000000
  %i.ir = call i32 @mz_stream_write_uint64(ptr noundef %0, i64 noundef %i.iq) #23
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ce
  %.25 = phi i32 [ %i.ir, %bb.cl ], [ %.19, %bb.ce ] ; 2 uses
  %i.is = icmp eq i32 %.25, 0
  %i.it = icmp ne i16 %.0245, 0
  %or.cond28 = select i1 %i.is, i1 %i.it, i1 false
  br i1 %or.cond28, label %bb.cn, label %.thread402

bb.cn:                                            ; preds = %bb.cm
  %i.iu = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext 13) #23 ; 2 uses
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %mz_zip_extrafield_write.exit313, label %.thread402

mz_zip_extrafield_write.exit313:                  ; preds = %bb.cn
  %i.iw = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %.0245) #23 ; 2 uses
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.co, label %.thread402

bb.co:                                            ; preds = %mz_zip_extrafield_write.exit313
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !61
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %i.ja) #23 ; 2 uses
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.cp, label %.thread402

bb.cp:                                            ; preds = %bb.co
  %i.jd = load i64, ptr %i.br, align 8, !tbaa !57
  %i.je = trunc i64 %i.jd to i32
  %i.jf = call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %i.je) #23 ; 2 uses
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.cq, label %.thread402

bb.cq:                                            ; preds = %bb.cp
  %i.jh = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext 0) #23 ; 2 uses
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.cr, label %.thread402

bb.cr:                                            ; preds = %bb.cq
  %i.jj = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext 0) #23 ; 2 uses
  %i.jk = icmp eq i32 %i.jj, 0
  %i.jl = icmp ne i32 %.0243, 0
  %or.cond31 = select i1 %i.jk, i1 %i.jl, i1 false
  br i1 %or.cond31, label %bb.cs, label %.thread402

bb.cs:                                            ; preds = %bb.cr
  %i.jm = load ptr, ptr %i.ca, align 8, !tbaa !65
  %i.jn = call i32 @mz_stream_write(ptr noundef %0, ptr noundef %i.jm, i32 noundef %.0243) #23
  %.not294 = icmp eq i32 %i.jn, %.0243
  %spec.select301 = select i1 %.not294, i32 0, i32 -116
  br label %.thread402

.thread402:                                       ; preds = %bb.cn, %mz_zip_extrafield_write.exit313, %bb.co, %bb.cp, %bb.cq, %bb.cf, %mz_zip_extrafield_write.exit311, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.bx, %mz_zip_extrafield_write.exit, %bb.bu, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.ck, %bb.cs, %bb.cr, %bb.cm
  %.30 = phi i32 [ %.25, %bb.cm ], [ %spec.select301, %bb.cs ], [ %i.jj, %bb.cr ], [ %i.hr, %bb.cf ], [ %i.gw, %bb.bu ], [ %i.il, %bb.ck ], [ %.7, %bb.bj ], [ %.12, %bb.bo ], [ %i.gl, %bb.bn ], [ %i.gi, %bb.bm ], [ %i.ge, %bb.bl ], [ %i.fz, %bb.bk ], [ %i.hb, %bb.bx ], [ %i.gy, %mz_zip_extrafield_write.exit ], [ %i.if, %bb.cj ], [ %i.ia, %bb.ci ], [ %i.hx, %bb.ch ], [ %i.hv, %bb.cg ], [ %i.ht, %mz_zip_extrafield_write.exit311 ], [ %i.jh, %bb.cq ], [ %i.jf, %bb.cp ], [ %i.jb, %bb.co ], [ %i.iw, %mz_zip_extrafield_write.exit313 ], [ %i.iu, %bb.cn ] ; 3 uses
  %i.jo = load i16, ptr %i.av, align 2, !tbaa !33
  %.not295 = icmp eq i16 %i.jo, 0
  br i1 %.not295, label %bb.da, label %bb.ct

bb.ct:                                            ; preds = %.thread402
  %i.jp = call i32 @mz_stream_mem_seek(ptr noundef %i.bq, i64 noundef 0, i32 noundef 0) #23
  %i.jq = icmp eq i32 %.30, 0
  %i.jr = icmp eq i32 %i.jp, 0
  %i.js = select i1 %i.jq, i1 %i.jr, i1 false
  br i1 %i.js, label %.lr.ph, label %.critedge303

.lr.ph:                                           ; preds = %bb.ct, %.backedge
  %i.jt = phi ptr [ %i.jw, %.backedge ], [ %i.bq, %bb.ct ]
  %i.ju = call i32 @mz_stream_read_uint16(ptr noundef %i.jt, ptr noundef nonnull %i.b) #23
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %bb.cu, label %.critedge303

bb.cu:                                            ; preds = %.lr.ph
  %i.jw = load ptr, ptr %i.e, align 8, !tbaa !14  ; 4 uses
  %i.jx = call i32 @mz_stream_read_uint16(ptr noundef %i.jw, ptr noundef nonnull %i.c) #23
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.cv, label %.critedge303

bb.cv:                                            ; preds = %bb.cu
  %i.jz = load i16, ptr %i.b, align 2, !tbaa !19  ; 2 uses
  switch i16 %i.jz, label %bb.cx [
    i16 13, label %bb.cw
    i16 10, label %bb.cw
    i16 1, label %bb.cw
  ]

bb.cw:                                            ; preds = %bb.cv, %bb.cv, %bb.cv
  %i.ka = load i16, ptr %i.c, align 2, !tbaa !19
  %i.kb = zext i16 %i.ka to i64
  %i.kc = call i32 @mz_stream_seek(ptr noundef %i.jw, i64 noundef %i.kb, i32 noundef 1) #23
  %i.kd = icmp eq i32 %i.kc, 0
  br label %.backedge

.backedge:                                        ; preds = %bb.cz, %bb.cw
  %.31.be = phi i32 [ 0, %bb.cw ], [ %i.kn, %bb.cz ] ; 2 uses
  %.2.be = phi i1 [ %i.kd, %bb.cw ], [ true, %bb.cz ]
  %i.ke = icmp eq i32 %.31.be, 0
  %i.kf = select i1 %i.ke, i1 %.2.be, i1 false
  br i1 %i.kf, label %.lr.ph, label %.critedge303, !llvm.loop !86

bb.cx:                                            ; preds = %bb.cv
  %i.kg = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.jz) #23 ; 2 uses
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.cy, label %.critedge303

bb.cy:                                            ; preds = %bb.cx
  %i.ki = load i16, ptr %i.c, align 2, !tbaa !19
  %i.kj = call i32 @mz_stream_write_uint16(ptr noundef %0, i16 noundef zeroext %i.ki) #23 ; 2 uses
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %bb.cz, label %.critedge303

bb.cz:                                            ; preds = %bb.cy
  %i.kl = load i16, ptr %i.c, align 2, !tbaa !19
  %i.km = zext i16 %i.kl to i32
  %i.kn = call i32 @mz_stream_copy(ptr noundef %0, ptr noundef %i.jw, i32 noundef %i.km) #23
  br label %.backedge

.critedge303:                                     ; preds = %bb.cx, %bb.cy, %.backedge, %bb.cu, %.lr.ph, %bb.ct
  %.31.lcssa = phi i32 [ %.30, %bb.ct ], [ %i.kj, %bb.cy ], [ %i.kg, %bb.cx ], [ 0, %.lr.ph ], [ 0, %bb.cu ], [ %.31.be, %.backedge ]
  call void @mz_stream_mem_delete(ptr noundef nonnull %i.e) #23
  br label %bb.da

bb.da:                                            ; preds = %.critedge303, %.thread402
  %.34 = phi i32 [ %.31.lcssa, %.critedge303 ], [ %.30, %.thread402 ] ; 2 uses
  %i.ko = icmp ne i32 %.34, 0
  %or.cond39 = or i1 %.not.i, %i.ko
  br i1 %or.cond39, label %mz_zip_entry_needs_zip64.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !64 ; 2 uses
  %.not297 = icmp eq ptr %i.kq, null
  br i1 %.not297, label %mz_zip_entry_needs_zip64.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 2 uses
  %i.ks = load i16, ptr %i.kr, align 4, !tbaa !59
  %i.kt = zext i16 %i.ks to i32
  %i.ku = call i32 @mz_stream_write(ptr noundef %0, ptr noundef nonnull %i.kq, i32 noundef %i.kt) #23
  %i.kv = load i16, ptr %i.kr, align 4, !tbaa !59
  %i.kw = zext i16 %i.kv to i32
  %.not298 = icmp eq i32 %i.ku, %i.kw
  %spec.select304 = select i1 %.not298, i32 0, i32 -116
  br label %mz_zip_entry_needs_zip64.exit

mz_zip_entry_needs_zip64.exit:                    ; preds = %bb.o, %bb.dc, %bb.da, %bb.db, %bb.r
  %.0 = phi i32 [ %spec.select304, %bb.dc ], [ -4, %bb.r ], [ %.34, %bb.da ], [ 0, %bb.db ], [ -102, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mz_zip_entry_read(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %mz_zip_entry_is_open.exit

mz_zip_entry_is_open.exit:                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 373
  %i.b = load i8, ptr %i.a, align 1, !tbaa !43
  %i.c = icmp eq i8 %i.b, 0
  %i.d = icmp eq i32 %2, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %mz_zip_entry_is_open.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !72
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.j = tail call i32 @mz_stream_read(ptr noundef %i.i, ptr noundef %1, i32 noundef %2) #23 ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !74
  %i.n = tail call i32 @mz_crypt_crc32_update(i32 noundef %i.m, ptr noundef %1, i32 noundef %i.j) #23
  store i32 %i.n, ptr %i.l, align 8, !tbaa !74
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a, %mz_zip_entry_is_open.exit
  %.0 = phi i32 [ 0, %bb.b ], [ -102, %bb.a ], [ %i.j, %bb.c ], [ -102, %mz_zip_entry_is_open.exit ], [ %i.j, %bb.d ]
  ret i32 %.0
}

declare i32 @mz_stream_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @mz_crypt_crc32_update(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @mz_zip_entry_write(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %mz_zip_entry_is_open.exit

mz_zip_entry_is_open.exit:                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 373
  %i.b = load i8, ptr %i.a, align 1, !tbaa !43
  %.not15 = icmp eq i8 %i.b, 0
  br i1 %.not15, label %bb.d, label %bb.b

bb.b:                                             ; preds = %mz_zip_entry_is_open.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = tail call i32 @mz_stream_write(ptr noundef %i.d, ptr noundef %1, i32 noundef %2) #23 ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !74
  %i.i = tail call i32 @mz_crypt_crc32_update(i32 noundef %i.h, ptr noundef %1, i32 noundef %i.e) #23
  store i32 %i.i, ptr %i.g, align 8, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a, %mz_zip_entry_is_open.exit
  %.0 = phi i32 [ -102, %bb.a ], [ -102, %mz_zip_entry_is_open.exit ], [ %i.e, %bb.c ], [ %i.e, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mz_zip_entry_read_close(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !18
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.u, label %mz_zip_entry_is_open.exit

mz_zip_entry_is_open.exit:                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 373 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !43
  %.not66 = icmp eq i8 %i.d, 0
  br i1 %.not66, label %bb.u, label %bb.b

bb.b:                                             ; preds = %mz_zip_entry_is_open.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = tail call i32 @mz_stream_close(ptr noundef %i.f) #23 ; 0 uses
  %i.h = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77
  store i32 %i.j, ptr %1, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp ne ptr %2, null                     ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !72
  store i64 %i.m, ptr %2, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = icmp ne ptr %3, null                     ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !73
  store i64 %i.p, ptr %3, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.r = call i32 @mz_stream_get_prop_int64(ptr noundef %i.q, i32 noundef 1, ptr noundef nonnull %i.b) #23 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i16, ptr %i.s, align 4, !tbaa !71
  %i.u = and i16 %i.t, 8200
  %or.cond54 = icmp eq i16 %i.u, 8
  %or.cond = or i1 %i.h, %i.k
  %or.cond3 = or i1 %or.cond, %i.n
  %or.cond55 = and i1 %or.cond3, %or.cond54
  br i1 %or.cond55, label %bb.i, label %.thread64

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !88
  %i.z = zext i16 %i.y to i32
  %i.aa = call i32 @mz_zip_extrafield_contains(ptr noundef %i.w, i32 noundef %i.z, i16 noundef zeroext 1, ptr noundef null)
  %i.ab = icmp eq i32 %i.aa, 0
  %spec.select = zext i1 %i.ab to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !47 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !20
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.aj = call i32 @mz_stream_get_prop_int64(ptr noundef %i.ai, i32 noundef 7, ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !18
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.an = load i32, ptr %i.am, align 8, !tbaa !42
  %i.ao = and i32 %i.an, 2
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
end_hunk_1
begin_hunk_2_@mz_zip_entry_write_close:bb.a
mz_zip_entry_write_descriptor.exit.thread:        ; preds = %mz_zip_entry_needs_zip64.exit, %bb.u, %bb.x, %.thread21.i, %bb.v, %bb.ac, %.thread21.i79, %bb.aa, %bb.z
  %.1.ph = phi i32 [ %i.cb, %bb.z ], [ %i.cd, %bb.aa ], [ %i.ci, %.thread21.i79 ], [ %i.cf, %bb.ac ], [ %i.br, %bb.v ], [ %i.bw, %.thread21.i ], [ %i.bt, %bb.x ], [ %i.bp, %bb.u ], [ %.062, %mz_zip_entry_needs_zip64.exit ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.063, ptr %i.cn, align 8, !tbaa !77
  %i.co = load i64, ptr %i.b, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !72
  %i.cq = load i64, ptr %i.c, align 8, !tbaa !18
  store i64 %i.cq, ptr %i.ag, align 8, !tbaa !73
  br label %.thread

mz_zip_entry_write_descriptor.exit:               ; preds = %bb.ad, %.thread23.i80, %bb.y, %.thread23.i
  %.1 = phi i32 [ %i.cl, %.thread23.i80 ], [ %i.cm, %bb.ad ], [ %i.by, %.thread23.i ], [ %i.bz, %bb.y ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.063, ptr %i.cr, align 8, !tbaa !77
  %i.cs = load i64, ptr %i.b, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !72
  %i.cu = load i64, ptr %i.c, align 8, !tbaa !18
  store i64 %i.cu, ptr %i.ag, align 8, !tbaa !73
  %i.cv = icmp eq i32 %.1, 0
  br i1 %i.cv, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %mz_zip_entry_write_descriptor.exit, %mz_zip_entry_write_descriptor.exit.thread91
  %i.cw = phi ptr [ %i.bj, %mz_zip_entry_write_descriptor.exit.thread91 ], [ %i.ct, %mz_zip_entry_write_descriptor.exit ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !16
  %i.cz = call fastcc i32 @mz_zip_entry_write_header(ptr noundef %i.cy, i8 noundef zeroext 0, ptr noundef %0) ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.db = load i16, ptr %i.u, align 4, !tbaa !71
  %i.dc = and i16 %i.db, 8200
  %or.cond74 = icmp eq i16 %i.dc, 0
  br i1 %or.cond74, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 13 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.df = call i64 @mz_stream_tell(ptr noundef %i.de) #23
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.dh = call i32 @mz_stream_get_prop_int64(ptr noundef %i.dg, i32 noundef 8, ptr noundef nonnull %i.d) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !47 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !20
  %i.dm = icmp eq i32 %i.dj, %i.dl
  br i1 %i.dm, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dn = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.do = call i32 @mz_stream_get_prop_int64(ptr noundef %i.dn, i32 noundef 7, ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !18
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !42
  %i.dt = and i32 %i.ds, 2
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  %.0.i82 = phi i32 [ -1, %bb.aj ], [ %i.dj, %bb.ai ], [ %i.dj, %bb.ag ]
  %i.dv = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.dw = zext i32 %.0.i82 to i64
  %i.dx = call i32 @mz_stream_set_prop_int64(ptr noundef %i.dv, i32 noundef 8, i64 noundef %i.dw) #23 ; 0 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !28 ; 3 uses
  %i.ea = icmp sgt i64 %i.dz, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !48 ; 2 uses
  %i.ed = sub nuw nsw i64 9223372036854775807, %i.dz
  %i.ee = icmp sgt i64 %i.ec, %i.ed
  %or.cond.i83 = select i1 %i.ea, i1 %i.ee, i1 false
  br i1 %or.cond.i83, label %mz_zip_entry_seek_local_header.exit.thread, label %mz_zip_entry_seek_local_header.exit

mz_zip_entry_seek_local_header.exit.thread:       ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.thread99

mz_zip_entry_seek_local_header.exit:              ; preds = %bb.ak
  %i.ef = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.eg = add nsw i64 %i.ec, %i.dz
  %i.eh = call i32 @mz_stream_seek(ptr noundef %i.ef, i64 noundef %i.eg, i32 noundef 0) #23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.al, label %.thread99

bb.al:                                            ; preds = %mz_zip_entry_seek_local_header.exit
  %i.ej = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.ek = load i32, ptr %i.di, align 8, !tbaa !47
  %i.el = zext i32 %i.ek to i64
  %i.em = call i32 @mz_stream_set_prop_int64(ptr noundef %i.ej, i32 noundef 8, i64 noundef %i.el) #23 ; 0 uses
  %i.en = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.eo = load i64, ptr %i.eb, align 8, !tbaa !48
  %i.ep = add nsw i64 %i.eo, 14
  %i.eq = call i32 @mz_stream_seek(ptr noundef %i.en, i64 noundef %i.ep, i32 noundef 0) #23 ; 2 uses
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.am, label %.thread99

bb.am:                                            ; preds = %bb.al
  %i.es = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.et = call fastcc i32 @mz_zip_entry_write_crc_sizes(ptr noundef %i.es, i8 noundef zeroext %.189, i8 noundef zeroext 0, ptr noundef %0) ; 2 uses
  %i.eu = icmp eq i32 %i.et, 0
  %i.ev = icmp ne i8 %.189, 0
  %or.cond = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %or.cond, label %bb.an, label %.thread99

bb.an:                                            ; preds = %bb.am
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ex = load i16, ptr %i.ew, align 8, !tbaa !91 ; 2 uses
  %i.ey = zext i16 %i.ex to i64
  %i.ez = icmp eq i16 %i.ex, 0
  br i1 %i.ez, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !92
  %i.fc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fb) #25
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0 = phi i64 [ %i.fc, %bb.ao ], [ %i.ey, %bb.an ]
  %i.fd = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.fe = add nsw i64 %.0, 8
  %i.ff = call i32 @mz_stream_seek(ptr noundef %i.fd, i64 noundef %i.fe, i32 noundef 1) #23 ; 2 uses
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.aq, label %.thread99

bb.aq:                                            ; preds = %bb.ap
  %i.fh = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.fi = load i64, ptr %i.ag, align 8, !tbaa !73
  %i.fj = call i32 @mz_stream_write_uint64(ptr noundef %i.fh, i64 noundef %i.fi) #23 ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.ar, label %.thread99

bb.ar:                                            ; preds = %bb.aq
  %i.fl = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.fm = load i64, ptr %i.cw, align 8, !tbaa !72
  %i.fn = call i32 @mz_stream_write_uint64(ptr noundef %i.fl, i64 noundef %i.fm) #23
  br label %.thread99

.thread99:                                        ; preds = %bb.ap, %mz_zip_entry_seek_local_header.exit.thread, %mz_zip_entry_seek_local_header.exit, %bb.al, %bb.aq, %bb.ar, %bb.am
  %.7 = phi i32 [ %i.et, %bb.am ], [ %i.fn, %bb.ar ], [ %i.fj, %bb.aq ], [ %i.eh, %mz_zip_entry_seek_local_header.exit ], [ %i.eq, %bb.al ], [ -103, %mz_zip_entry_seek_local_header.exit.thread ], [ %i.ff, %bb.ap ]
  %i.fo = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.fp = load i64, ptr %i.d, align 8, !tbaa !18
  %i.fq = call i32 @mz_stream_set_prop_int64(ptr noundef %i.fo, i32 noundef 8, i64 noundef %i.fp) #23 ; 0 uses
  %i.fr = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.fs = call i32 @mz_stream_seek(ptr noundef %i.fr, i64 noundef %i.df, i32 noundef 0) #23 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %mz_zip_entry_write_descriptor.exit.thread, %mz_zip_entry_write_descriptor.exit, %.thread99, %bb.af, %bb.ae
  %.8 = phi i32 [ %.7, %.thread99 ], [ %i.cz, %bb.ae ], [ 0, %bb.af ], [ %.1.ph, %mz_zip_entry_write_descriptor.exit.thread ], [ %.1, %mz_zip_entry_write_descriptor.exit ]
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !21
  %i.fv = add i64 %i.fu, 1
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !21
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !69
  %.not.i84 = icmp eq ptr %i.fx, null
  br i1 %.not.i84, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.thread
  call void @mz_stream_delete(ptr noundef nonnull %i.fw) #23
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.thread
  store ptr null, ptr %i.fw, align 8, !tbaa !69
  %i.fy = load ptr, ptr %i.g, align 8, !tbaa !70
  %.not8.i = icmp eq ptr %i.fy, null
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
define internal fastcc i32 @mz_zip_entry_write_crc_sizes(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext range(i8 0, 2) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #5 {
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
  %4 = or i8 %2, %1
  %brmerge.not = icmp eq i8 %4, 0
  %.mux = sext i1 %.not.not to i32
  br i1 %brmerge.not, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36
  %i.l = trunc i64 %i.k to i32
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.g, %bb.h
  %.sink20 = phi i32 [ %.mux, %bb.g ], [ %i.l, %bb.h ]
  %i.m = tail call i32 @mz_stream_write_uint32(ptr noundef %0, i32 noundef %.sink20) #23
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.c, %bb.f
  %.2 = phi i32 [ %i.c, %bb.c ], [ %i.h, %bb.f ], [ %i.m, %.thread.sink.split ]
  ret i32 %.2
}

declare i32 @mz_stream_write_uint64(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -107, 1) i32 @mz_zip_entry_get_compress_stream(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
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
define range(i32 -107, 1) i32 @mz_zip_entry_is_dir(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
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
  %i.e = load i16, ptr %0, align 8, !tbaa !76
  %i.f = lshr i16 %i.e, 8
  %i.g = trunc nuw i16 %i.f to i8
  switch i8 %i.g, label %mz_zip_attrib_is_dir.exit [
    i8 10, label %bb.d
    i8 0, label %bb.d
    i8 19, label %bb.e
    i8 13, label %bb.e
    i8 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = and i32 %i.d, 1
  %i.i = icmp eq i32 %i.h, 0
  %spec.select.i.i.i = select i1 %i.i, i32 438, i32 292
  %i.j = and i32 %i.d, 1024
  %.not10.i.i.i = icmp eq i32 %i.j, 0
  %i.k = and i32 %i.d, 16
  %.not11.i.i.i = icmp eq i32 %i.k, 0
  %..i.i.i = select i1 %.not11.i.i.i, i32 32768, i32 16457
  %.sink13.i.i.i = select i1 %.not10.i.i.i, i32 %..i.i.i, i32 40960
  %i.l = or disjoint i32 %.sink13.i.i.i, %spec.select.i.i.i
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.m = lshr i32 %i.d, 16                        ; 2 uses
  %.not59.i.i = icmp eq i32 %i.m, 0
  %spec.select.i.i = select i1 %.not59.i.i, i32 %i.d, i32 %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.05.ph.i = phi i32 [ %spec.select.i.i, %bb.e ], [ %i.l, %bb.d ]
  %i.n = and i32 %.05.ph.i, 61440
  %i.o = icmp eq i32 %i.n, 16384
  br i1 %i.o, label %mz_zip_attrib_is_dir.exit.thread, label %mz_zip_attrib_is_dir.exit

mz_zip_attrib_is_dir.exit:                        ; preds = %bb.f, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !92   ; 2 uses
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #25 ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %mz_zip_attrib_is_dir.exit
  %i.u = add i64 %i.r, 4294967295
  %i.v = and i64 %i.u, 4294967295
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !26
  %i.y = tail call i32 @mz_os_is_dir_separator(i8 noundef signext %i.x) #23
  %.not12 = icmp eq i32 %i.y, 0
  br i1 %.not12, label %bb.h, label %mz_zip_attrib_is_dir.exit.thread

bb.h:                                             ; preds = %bb.g, %mz_zip_attrib_is_dir.exit
  br label %mz_zip_attrib_is_dir.exit.thread

mz_zip_attrib_is_dir.exit.thread:                 ; preds = %bb.f, %bb.g, %bb.a, %bb.b, %bb.h
  %.0 = phi i32 [ -102, %bb.a ], [ 0, %bb.g ], [ -107, %bb.h ], [ -102, %bb.b ], [ 0, %bb.f ]
  ret i32 %.0
}

declare i32 @mz_os_is_dir_separator(i8 noundef signext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -107, 1) i32 @mz_zip_entry_is_symlink(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
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
  %i.e = load i16, ptr %0, align 8, !tbaa !76
  %i.f = lshr i16 %i.e, 8
  %i.g = trunc nuw i16 %i.f to i8
  switch i8 %i.g, label %mz_zip_attrib_is_symlink.exit [
    i8 10, label %bb.d
    i8 0, label %bb.d
    i8 19, label %bb.e
    i8 13, label %bb.e
    i8 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = and i32 %i.d, 1
  %i.i = icmp eq i32 %i.h, 0
  %spec.select.i.i.i = select i1 %i.i, i32 438, i32 292
  %i.j = and i32 %i.d, 1024
  %.not10.i.i.i = icmp eq i32 %i.j, 0
  %i.k = and i32 %i.d, 16
  %.not11.i.i.i = icmp eq i32 %i.k, 0
  %..i.i.i = select i1 %.not11.i.i.i, i32 32768, i32 16457
  %.sink13.i.i.i = select i1 %.not10.i.i.i, i32 %..i.i.i, i32 40960
  %i.l = or disjoint i32 %.sink13.i.i.i, %spec.select.i.i.i
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.m = lshr i32 %i.d, 16                        ; 2 uses
  %.not59.i.i = icmp eq i32 %i.m, 0
  %spec.select.i.i = select i1 %.not59.i.i, i32 %i.d, i32 %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.05.ph.i = phi i32 [ %spec.select.i.i, %bb.e ], [ %i.l, %bb.d ]
  %i.n = and i32 %.05.ph.i, 61440
  %i.o = icmp eq i32 %i.n, 40960
  %spec.select = select i1 %i.o, i32 0, i32 -107
end_hunk_2
