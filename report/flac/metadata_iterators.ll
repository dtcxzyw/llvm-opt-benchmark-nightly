Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/metadata_iterators?download=true
inline.NumInlined: 207
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 89
loop-unroll.NumUnrolled: 109
begin_hunk_0_@FLAC__metadata_get_picture:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !69 ; 2 uses
  %.not15.i.i70 = icmp eq ptr %i.bg, null
  br i1 %.not15.i.i70, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @free(ptr noundef nonnull %i.bg) #32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70 ; 2 uses
  %.not16.i.i71 = icmp eq ptr %i.bi, null
  br i1 %.not16.i.i71, label %FLAC__metadata_simple_iterator_delete.exit72, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @free(ptr noundef nonnull %i.bi) #32
  br label %FLAC__metadata_simple_iterator_delete.exit72

FLAC__metadata_simple_iterator_delete.exit72:     ; preds = %bb.af, %bb.ag
  tail call void @free(ptr noundef nonnull %i.a) #32
  %i.bj = load ptr, ptr %1, align 8, !tbaa !58
  %i.bk = icmp ne ptr %i.bj, null
  %i.bl = zext i1 %i.bk to i32
  br label %FLAC__metadata_simple_iterator_new.exit.thread

FLAC__metadata_simple_iterator_new.exit.thread:   ; preds = %bb.a, %FLAC__metadata_simple_iterator_delete.exit72, %FLAC__metadata_simple_iterator_delete.exit
  %.049 = phi i32 [ 0, %FLAC__metadata_simple_iterator_delete.exit ], [ %i.bl, %FLAC__metadata_simple_iterator_delete.exit72 ], [ 0, %bb.a ]
  ret i32 %.049
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @FLAC__metadata_simple_iterator_new() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(248) ptr @calloc(i64 noundef 1, i64 noundef 248) #33 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i64 -1, ptr %i.b, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i64 -1, ptr %i.c, align 8, !tbaa !66
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define range(i32 0, 2) i32 @FLAC__metadata_simple_iterator_init(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68
  %.not14.i = icmp eq i32 %i.d, 0
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @set_file_stats_(ptr noundef %i.f, ptr noundef nonnull %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %.not15.i = icmp eq ptr %i.i, null
  br i1 %.not15.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.i) #32
  store ptr null, ptr %i.h, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70   ; 2 uses
  %.not16.i = icmp eq ptr %i.k, null
  br i1 %.not16.i, label %simple_iterator_free_guts_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.k) #32
  store ptr null, ptr %i.j, align 8, !tbaa !70
  br label %simple_iterator_free_guts_.exit

simple_iterator_free_guts_.exit:                  ; preds = %bb.f, %bb.g
  %i.l = icmp eq i32 %2, 0
  %i.m = icmp ne i32 %3, 0
  %or.cond = and i1 %i.l, %i.m
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %simple_iterator_free_guts_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = tail call i32 @stat64(ptr noundef readonly %1, ptr noundef nonnull %i.n) #32
  %i.p = icmp eq i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.q, ptr %i.r, align 8, !tbaa !68
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %simple_iterator_free_guts_.exit
  %i.s = tail call noalias ptr @strdup(ptr noundef %1) #32 ; 2 uses
  store ptr %i.s, ptr %i.h, align 8, !tbaa !69
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 11, ptr %i.u, align 8, !tbaa !73
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.v = tail call fastcc i32 @simple_iterator_prime_input_(ptr noundef nonnull %0, i32 noundef %2)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ %i.v, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define void @FLAC__metadata_simple_iterator_delete(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68
  %.not14.i = icmp eq i32 %i.d, 0
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @set_file_stats_(ptr noundef %i.f, ptr noundef nonnull %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %.not15.i = icmp eq ptr %i.i, null
  br i1 %.not15.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.i) #32
  store ptr null, ptr %i.h, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70   ; 2 uses
  %.not16.i = icmp eq ptr %i.k, null
  br i1 %.not16.i, label %simple_iterator_free_guts_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.k) #32
  br label %simple_iterator_free_guts_.exit

simple_iterator_free_guts_.exit:                  ; preds = %bb.f, %bb.g
  tail call void @free(ptr noundef nonnull %0) #32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define i32 @FLAC__metadata_simple_iterator_get_block_type(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71
  ret i32 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define ptr @FLAC__metadata_simple_iterator_get_block(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = alloca [4 x i8], align 1                 ; 6 uses
  %i.c = alloca [4 x i8], align 1                 ; 5 uses
  %i.d = alloca [4 x i8], align 1                 ; 6 uses
  %i.e = alloca [4 x i8], align 1                 ; 6 uses
  %i.f = alloca [4 x i8], align 1                 ; 17 uses
  %i.g = alloca [32 x i8], align 16               ; 18 uses
  %i.h = alloca [1024 x i8], align 16             ; 10 uses
  %i.i = alloca [4 x i8], align 1                 ; 4 uses
  %i.j = alloca [18 x i8], align 16               ; 21 uses
  %i.k = alloca [34 x i8], align 16               ; 22 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = load i32, ptr %i.l, align 8, !tbaa !71
  %i.n = tail call ptr @FLAC__metadata_object_new(i32 noundef %i.m) #32 ; 44 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.cl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.p = load i32, ptr %i.o, align 4, !tbaa !74
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.p, ptr %i.q, align 4, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.s = load i32, ptr %i.r, align 4, !tbaa !77   ; 18 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.s, ptr %i.t, align 8, !tbaa !78
  %i.u = load ptr, ptr %0, align 8, !tbaa !67     ; 35 uses
  %i.v = load i32, ptr %i.n, align 8, !tbaa !79
  switch i32 %i.v, label %bb.ce [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.j
    i32 4, label %bb.p
    i32 5, label %bb.aq
    i32 6, label %bb.bg
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #32
  %i.w = call i64 @fread(ptr noundef nonnull %i.k, i64 noundef 1, i64 noundef 34, ptr noundef %i.u) #32, !inline_history !166
  %.not.i.i.i = icmp eq i64 %i.w, 34
  br i1 %.not.i.i.i, label %.lr.ph.i.preheader.i.i.i, label %read_metadata_block_data_streaminfo_cb_.exit.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.z = load i8, ptr %i.k, align 16, !tbaa !52
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !52
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.ab, %i.ad
  store i32 %i.ae, ptr %i.x, align 8, !tbaa !81
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.ah = load i8, ptr %i.af, align 2, !tbaa !52
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !52
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  store i32 %i.am, ptr %i.an, align 4, !tbaa !82
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.aq = load i8, ptr %i.ao, align 4, !tbaa !52
  %i.ar = zext i8 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !52
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.ar, 16
  %i.aw = shl nuw nsw i32 %i.au, 8
  %i.ax = or disjoint i32 %i.aw, %i.av
  %i.ay = load i8, ptr %i.as, align 2, !tbaa !52
  %i.az = zext i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !83
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !52
  %i.bf = zext i8 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  %i.bh = load i8, ptr %i.bd, align 8, !tbaa !52
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bf, 16
  %i.bk = shl nuw nsw i32 %i.bi, 8
  %i.bl = or disjoint i32 %i.bk, %i.bj
  %i.bm = load i8, ptr %i.bg, align 1, !tbaa !52
  %i.bn = zext i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !84
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 11
  %i.bs = load i8, ptr %i.bq, align 2, !tbaa !52
  %i.bt = zext i8 %i.bs to i32
  %i.bu = load i8, ptr %i.br, align 1, !tbaa !52
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bt, 12
  %i.bx = shl nuw nsw i32 %i.bv, 4
  %i.by = or disjoint i32 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !52  ; 3 uses
  %i.cb = lshr i8 %i.ca, 4
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !85
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = and i8 %i.cf, 7
  %narrow.i.i.i = add nuw nsw i8 %i.cg, 1
  %i.ch = zext nneg i8 %narrow.i.i.i to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !86
  %i.cj = shl i8 %i.ca, 4
  %i.ck = and i8 %i.cj, 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 13
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !52  ; 2 uses
  %i.cn = lshr i8 %i.cm, 4
  %i.co = or disjoint i8 %i.ck, 1
  %narrow27.i.i.i = add nuw nsw i8 %i.co, %i.cn
  %i.cp = zext nneg i8 %narrow27.i.i.i to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !87
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 14
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 15
  %i.ct = load i8, ptr %i.cr, align 2, !tbaa !52
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !52
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cu, 16
  %i.cz = shl nuw nsw i64 %i.cx, 8
  %i.da = or disjoint i64 %i.cz, %i.cy
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  %i.dc = load i8, ptr %i.cv, align 16, !tbaa !52
  %i.dd = zext i8 %i.dc to i64
  %i.de = or disjoint i64 %i.da, %i.dd
  %i.df = shl nuw nsw i64 %i.de, 8
  %i.dg = load i8, ptr %i.db, align 1, !tbaa !52
  %i.dh = zext i8 %i.dg to i64
  %i.di = or disjoint i64 %i.df, %i.dh
  %i.dj = and i8 %i.cm, 15
  %i.dk = zext nneg i8 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 32
  %i.dm = or disjoint i64 %i.di, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !88
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 2 dereferenceable(16) %i.dp, i64 noundef 16, i1 noundef false) #32
  br label %read_metadata_block_data_streaminfo_cb_.exit.i.i

read_metadata_block_data_streaminfo_cb_.exit.i.i: ; preds = %.lr.ph.i.preheader.i.i.i, %bb.c
  %.0.i.i.i = phi i32 [ 0, %.lr.ph.i.preheader.i.i.i ], [ 6, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #32
  br label %read_metadata_block_data_.exit

bb.d:                                             ; preds = %bb.b
  %i.dq = zext i32 %i.s to i64
  %i.dr = tail call noundef i32 @fseeko64(ptr noundef %i.u, i64 noundef %i.dq, i32 noundef 1)
  %.not.i31.i.i = icmp eq i32 %i.dr, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  br i1 %.not.i31.i.i, label %read_metadata_block_data_.exit.thread128, label %read_metadata_block_data_.exit.thread131

read_metadata_block_data_.exit.thread131:         ; preds = %bb.d
  store i32 7, ptr %i.ds, align 8, !tbaa !73
  br label %bb.ci

bb.e:                                             ; preds = %bb.b
  %i.dt = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.du = load i32, ptr @FLAC__STREAM_METADATA_APPLICATION_ID_LEN, align 4, !tbaa !51
  %i.dv = lshr i32 %i.du, 3                       ; 4 uses
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = tail call i64 @fread(ptr noundef nonnull %i.dt, i64 noundef 1, i64 noundef %i.dw, ptr noundef %i.u) #32, !inline_history !167
  %.not.i32.i.i = icmp ne i64 %i.dx, %i.dw
  %i.dy = icmp ult i32 %i.s, %i.dv
  %or.cond.i.i.i = or i1 %i.dy, %.not.i32.i.i
  br i1 %or.cond.i.i.i, label %read_metadata_block_data_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dz = icmp eq i32 %i.s, %i.dv
  br i1 %i.dz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ea = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr null, ptr %i.ea, align 8, !tbaa !90
  br label %read_metadata_block_data_.exit.thread22

bb.h:                                             ; preds = %bb.f
  %i.eb = sub nuw i32 %i.s, %i.dv
  %i.ec = zext i32 %i.eb to i64                   ; 3 uses
  %i.ed = tail call noalias ptr @malloc(i64 noundef %i.ec) #35 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !90
  %i.ef = icmp eq ptr %i.ed, null
  br i1 %i.ef, label %read_metadata_block_data_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eg = tail call i64 @fread(ptr noundef nonnull %i.ed, i64 noundef 1, i64 noundef %i.ec, ptr noundef %i.u) #32, !inline_history !167
  %.not22.i.i.i = icmp eq i64 %i.eg, %i.ec
  br i1 %.not22.i.i.i, label %read_metadata_block_data_.exit.thread22, label %read_metadata_block_data_.exit.thread

bb.j:                                             ; preds = %bb.b
  %i.eh = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #32
  %i.ei = urem i32 %i.s, 18
  %i.ej = udiv exact i32 %i.s, 18                 ; 2 uses
  %.not.i34.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not.i34.i.i, label %bb.k, label %read_metadata_block_data_seektable_cb_.exit.i.i

bb.k:                                             ; preds = %bb.j
  store i32 %i.ej, ptr %i.eh, align 8, !tbaa !92
  %1 = icmp eq i32 %i.s, 0
  br i1 %1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ek = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr null, ptr %i.ek, align 8, !tbaa !93
  br label %read_metadata_block_data_seektable_cb_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.el = zext nneg i32 %i.ej to i64
  %i.em = tail call ptr @safe_malloc_mul_2op_p(i64 noundef %i.el, i64 noundef 24) #32 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  store ptr %i.em, ptr %i.en, align 8, !tbaa !93
  %i.eo = icmp eq ptr %i.em, null
  br i1 %i.eo, label %read_metadata_block_data_seektable_cb_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.pre.i.i.i = load i32, ptr %i.eh, align 8, !tbaa !92
  %.not37.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not37.i.i.i, label %read_metadata_block_data_seektable_cb_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 17
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.eu = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.ex = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.fa = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.fb = getelementptr inbounds nuw i8, ptr %i.j, i64 11
  %i.fc = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.fd = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  %i.fe = getelementptr inbounds nuw i8, ptr %i.j, i64 14
  %i.ff = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.preheader.i35.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.preheader.i35.i.i ] ; 2 uses
  %i.fg = call i64 @fread(ptr noundef nonnull %i.j, i64 noundef 1, i64 noundef 18, ptr noundef %i.u) #32, !inline_history !168
  %.not20.i.i.i = icmp eq i64 %i.fg, 18
  br i1 %.not20.i.i.i, label %.lr.ph.i.preheader.i35.i.i, label %read_metadata_block_data_seektable_cb_.exit.i.i

.lr.ph.i.preheader.i35.i.i:                       ; preds = %bb.o
  %i.fh = load i8, ptr %i.j, align 16, !tbaa !52
  %i.fi = zext i8 %i.fh to i64
  %i.fj = load i8, ptr %i.es, align 1, !tbaa !52
  %i.fk = zext i8 %i.fj to i64
  %i.fl = shl nuw nsw i64 %i.fi, 16
  %i.fm = shl nuw nsw i64 %i.fk, 8
  %i.fn = or disjoint i64 %i.fm, %i.fl
  %i.fo = load i8, ptr %i.et, align 2, !tbaa !52
  %i.fp = zext i8 %i.fo to i64
  %i.fq = or disjoint i64 %i.fn, %i.fp
  %i.fr = load i8, ptr %i.eu, align 1, !tbaa !52
  %i.fs = zext i8 %i.fr to i64
  %i.ft = load i8, ptr %i.ev, align 4, !tbaa !52
  %i.fu = zext i8 %i.ft to i64
  %i.fv = load i8, ptr %i.ew, align 1, !tbaa !52
  %i.fw = zext i8 %i.fv to i64
  %i.fx = shl nuw nsw i64 %i.fq, 32
  %i.fy = shl nuw nsw i64 %i.fs, 24
  %i.fz = shl nuw nsw i64 %i.fu, 16
  %i.ga = or disjoint i64 %i.fz, %i.fy
  %i.gb = or disjoint i64 %i.ga, %i.fx
  %i.gc = load i8, ptr %i.ex, align 2, !tbaa !52
  %i.gd = zext i8 %i.gc to i64
  %i.ge = or disjoint i64 %i.gb, %i.gd
  %i.gf = shl nuw nsw i64 %i.fw, 16
  %i.gg = shl nuw i64 %i.ge, 8
  %i.gh = load i8, ptr %i.ey, align 1, !tbaa !52
  %i.gi = zext i8 %i.gh to i64
  %i.gj = or disjoint i64 %i.gf, %i.gi
  %i.gk = or disjoint i64 %i.gj, %i.gg
  %i.gl = load ptr, ptr %i.en, align 8, !tbaa !93
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %indvars.iv.i.i.i ; 3 uses
  store i64 %i.gk, ptr %i.gm, align 8, !tbaa !95
  %i.gn = load i8, ptr %i.ep, align 8, !tbaa !52
  %i.go = zext i8 %i.gn to i64
  %i.gp = load i8, ptr %i.ez, align 1, !tbaa !52
  %i.gq = zext i8 %i.gp to i64
  %i.gr = shl nuw nsw i64 %i.go, 16
  %i.gs = shl nuw nsw i64 %i.gq, 8
  %i.gt = or disjoint i64 %i.gs, %i.gr
  %i.gu = load i8, ptr %i.fa, align 2, !tbaa !52
  %i.gv = zext i8 %i.gu to i64
  %i.gw = or disjoint i64 %i.gt, %i.gv
  %i.gx = load i8, ptr %i.fb, align 1, !tbaa !52
  %i.gy = zext i8 %i.gx to i64
  %i.gz = load i8, ptr %i.fc, align 4, !tbaa !52
  %i.ha = zext i8 %i.gz to i64
  %i.hb = load i8, ptr %i.fd, align 1, !tbaa !52
  %i.hc = zext i8 %i.hb to i64
  %i.hd = shl nuw nsw i64 %i.gw, 32
  %i.he = shl nuw nsw i64 %i.gy, 24
  %i.hf = shl nuw nsw i64 %i.ha, 16
  %i.hg = or disjoint i64 %i.hf, %i.he
  %i.hh = or disjoint i64 %i.hg, %i.hd
  %i.hi = load i8, ptr %i.fe, align 2, !tbaa !52
  %i.hj = zext i8 %i.hi to i64
  %i.hk = or disjoint i64 %i.hh, %i.hj
  %i.hl = shl nuw nsw i64 %i.hc, 16
  %i.hm = shl nuw i64 %i.hk, 8
  %i.hn = load i8, ptr %i.ff, align 1, !tbaa !52
  %i.ho = zext i8 %i.hn to i64
  %i.hp = or disjoint i64 %i.hl, %i.ho
  %i.hq = or disjoint i64 %i.hp, %i.hm
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !96
  %i.hs = load i8, ptr %i.eq, align 16, !tbaa !52
  %i.ht = zext i8 %i.hs to i32
  %i.hu = shl nuw nsw i32 %i.ht, 8
  %i.hv = load i8, ptr %i.er, align 1, !tbaa !52
  %i.hw = zext i8 %i.hv to i32
  %i.hx = or disjoint i32 %i.hu, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store i32 %i.hx, ptr %i.hy, align 8, !tbaa !97
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.hz = load i32, ptr %i.eh, align 8, !tbaa !92
  %i.ia = zext i32 %i.hz to i64
  %i.ib = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.ia
  br i1 %i.ib, label %bb.o, label %read_metadata_block_data_seektable_cb_.exit.i.i, !llvm.loop !0

read_metadata_block_data_seektable_cb_.exit.i.i:  ; preds = %.lr.ph.i.preheader.i35.i.i, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j
  %.018.i.i.i = phi i32 [ 5, %bb.j ], [ 11, %bb.m ], [ 0, %bb.n ], [ 0, %bb.l ], [ 0, %.lr.ph.i.preheader.i35.i.i ], [ 6, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #32
  br label %read_metadata_block_data_.exit

bb.p:                                             ; preds = %bb.b
  %i.ic = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 6 uses
  %i.id = load i32, ptr @FLAC__STREAM_METADATA_VORBIS_COMMENT_NUM_COMMENTS_LEN, align 4, !tbaa !51 ; 2 uses
  %i.ie = lshr i32 %i.id, 3                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #32
  %i.if = load i32, ptr @FLAC__STREAM_METADATA_VORBIS_COMMENT_ENTRY_LENGTH_LEN, align 4, !tbaa !51 ; 3 uses
  %i.ig = lshr i32 %i.if, 3                       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.ih = icmp ult i32 %i.s, %i.ig
  br i1 %i.ih, label %read_metadata_block_data_vorbis_comment_entry_cb_.exit32.thread36.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ii = zext nneg i32 %i.ig to i64              ; 6 uses
  %i.ij = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.ii, ptr noundef %i.u) #32, !inline_history !98
  %.not.i14.i = icmp eq i64 %i.ij, %i.ii
  br i1 %.not.i14.i, label %bb.r, label %read_metadata_block_data_vorbis_comment_entry_cb_.exit32.thread.i

bb.r:                                             ; preds = %bb.q
  %i.ik = sub nuw i32 %i.s, %i.ig
  %.not.i.i16.i = icmp eq i32 %i.ig, 0            ; 2 uses
  br i1 %.not.i.i16.i, label %unpack_uint32_little_endian_.exit.thread.i31.i, label %.lr.ph.preheader.i.i17.i

unpack_uint32_little_endian_.exit.thread.i31.i:   ; preds = %bb.r
  store i32 0, ptr %i.ic, align 8, !tbaa !100
  br label %bb.t

.lr.ph.preheader.i.i17.i:                         ; preds = %bb.r
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ii ; 2 uses
  %xtraiter297 = and i32 %i.ig, 3                 ; 3 uses
  %i.im = icmp ult i32 %i.if, 32
  br i1 %i.im, label %.lr.ph.i.i18.i.epil.preheader, label %.lr.ph.preheader.i.i17.i.new

.lr.ph.preheader.i.i17.i.new:                     ; preds = %.lr.ph.preheader.i.i17.i
  %unroll_iter302 = and i32 %i.ig, 536870908
  br label %.lr.ph.i.i18.i

.lr.ph.i.i18.i:                                   ; preds = %.lr.ph.i.i18.i, %.lr.ph.preheader.i.i17.i.new
  %.089.i.i21.i = phi ptr [ %i.il, %.lr.ph.preheader.i.i17.i.new ], [ %i.in, %.lr.ph.i.i18.i ] ; 4 uses
  %niter303 = phi i32 [ 0, %.lr.ph.preheader.i.i17.i.new ], [ %niter303.next.3, %.lr.ph.i.i18.i ]
  %i.in = getelementptr inbounds i8, ptr %.089.i.i21.i, i64 -4 ; 3 uses
  %niter303.next.3 = add i32 %niter303, 4         ; 2 uses
  %niter303.ncmp.3 = icmp eq i32 %niter303.next.3, %unroll_iter302
  br i1 %niter303.ncmp.3, label %unpack_uint32_little_endian_.exit.i23.i.unr-lcssa, label %.lr.ph.i.i18.i, !llvm.loop !1

unpack_uint32_little_endian_.exit.i23.i.unr-lcssa: ; preds = %.lr.ph.i.i18.i
  %i.io = getelementptr inbounds i8, ptr %.089.i.i21.i, i64 -1
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !52
  %i.iq = zext i8 %i.ip to i32
  %i.ir = shl nuw nsw i32 %i.iq, 16
  %i.is = getelementptr inbounds i8, ptr %.089.i.i21.i, i64 -2
  %i.it = load i8, ptr %i.is, align 1, !tbaa !52
  %i.iu = zext i8 %i.it to i32
  %i.iv = shl nuw nsw i32 %i.iu, 8
  %i.iw = or disjoint i32 %i.ir, %i.iv
  %i.ix = getelementptr inbounds i8, ptr %.089.i.i21.i, i64 -3
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !52
  %i.iz = zext i8 %i.iy to i32
  %i.ja = or disjoint i32 %i.iw, %i.iz
  %i.jb = shl nuw i32 %i.ja, 8
  %i.jc = load i8, ptr %i.in, align 1, !tbaa !52
  %i.jd = zext i8 %i.jc to i32
  %i.je = or disjoint i32 %i.jb, %i.jd            ; 2 uses
  %lcmp.mod299.not = icmp eq i32 %xtraiter297, 0
  br i1 %lcmp.mod299.not, label %unpack_uint32_little_endian_.exit.i23.i, label %.lr.ph.i.i18.i.epil.preheader

.lr.ph.i.i18.i.epil.preheader:                    ; preds = %unpack_uint32_little_endian_.exit.i23.i.unr-lcssa, %.lr.ph.preheader.i.i17.i
  %.0710.i.i20.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i17.i ], [ %i.je, %unpack_uint32_little_endian_.exit.i23.i.unr-lcssa ]
  %.089.i.i21.i.epil.init = phi ptr [ %i.il, %.lr.ph.preheader.i.i17.i ], [ %i.in, %unpack_uint32_little_endian_.exit.i23.i.unr-lcssa ]
  %lcmp.mod301 = icmp ne i32 %xtraiter297, 0
  call void @llvm.assume(i1 %lcmp.mod301)
  br label %.lr.ph.i.i18.i.epil

.lr.ph.i.i18.i.epil:                              ; preds = %.lr.ph.i.i18.i.epil, %.lr.ph.i.i18.i.epil.preheader
  %.0710.i.i20.i.epil = phi i32 [ %i.jj, %.lr.ph.i.i18.i.epil ], [ %.0710.i.i20.i.epil.init, %.lr.ph.i.i18.i.epil.preheader ]
  %.089.i.i21.i.epil = phi ptr [ %i.jg, %.lr.ph.i.i18.i.epil ], [ %.089.i.i21.i.epil.init, %.lr.ph.i.i18.i.epil.preheader ]
  %epil.iter298 = phi i32 [ %epil.iter298.next, %.lr.ph.i.i18.i.epil ], [ 0, %.lr.ph.i.i18.i.epil.preheader ]
  %i.jf = shl i32 %.0710.i.i20.i.epil, 8
  %i.jg = getelementptr inbounds i8, ptr %.089.i.i21.i.epil, i64 -1 ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !52
  %i.ji = zext i8 %i.jh to i32
  %i.jj = or disjoint i32 %i.jf, %i.ji            ; 2 uses
  %epil.iter298.next = add i32 %epil.iter298, 1   ; 2 uses
  %epil.iter298.cmp.not = icmp eq i32 %epil.iter298.next, %xtraiter297
  br i1 %epil.iter298.cmp.not, label %unpack_uint32_little_endian_.exit.i23.i, label %.lr.ph.i.i18.i.epil, !llvm.loop !169

unpack_uint32_little_endian_.exit.i23.i:          ; preds = %.lr.ph.i.i18.i.epil, %unpack_uint32_little_endian_.exit.i23.i.unr-lcssa
  %.lcssa204 = phi i32 [ %i.je, %unpack_uint32_little_endian_.exit.i23.i.unr-lcssa ], [ %i.jj, %.lr.ph.i.i18.i.epil ] ; 3 uses
  store i32 %.lcssa204, ptr %i.ic, align 8, !tbaa !100
  %i.jk = icmp ult i32 %i.ik, %.lcssa204
  br i1 %i.jk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %unpack_uint32_little_endian_.exit.i23.i
  store i32 0, ptr %i.ic, align 8, !tbaa !100
  br label %read_metadata_block_data_vorbis_comment_entry_cb_.exit32.thread36.i

bb.t:                                             ; preds = %unpack_uint32_little_endian_.exit.i23.i, %unpack_uint32_little_endian_.exit.thread.i31.i
  %i.jl = phi i32 [ 0, %unpack_uint32_little_endian_.exit.thread.i31.i ], [ %.lcssa204, %unpack_uint32_little_endian_.exit.i23.i ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !102 ; 2 uses
  %.not30.i24.i = icmp eq ptr %i.jn, null
  br i1 %.not30.i24.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.jn) #32
  %.pre.i25.i = load i32, ptr %i.ic, align 8, !tbaa !100
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.jo = phi i32 [ %.pre.i25.i, %bb.u ], [ %i.jl, %bb.t ] ; 2 uses
  %i.jp = zext i32 %i.jo to i64                   ; 2 uses
  %i.jq = add nuw nsw i64 %i.jp, 1
  %i.jr = call noalias noundef ptr @malloc(i64 noundef %i.jq) #35 ; 4 uses
  store ptr %i.jr, ptr %i.jm, align 8, !tbaa !102
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %read_metadata_block_data_vorbis_comment_entry_cb_.exit32.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not31.i26.i = icmp eq i32 %i.jo, 0
  br i1 %.not31.i26.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jt = call i64 @fread(ptr noundef nonnull %i.jr, i64 noundef 1, i64 noundef %i.jp, ptr noundef %i.u) #32, !inline_history !98 ; 2 uses
  %i.ju = load i32, ptr %i.ic, align 8, !tbaa !100
  %i.jv = zext i32 %i.ju to i64
  %.not32.i27.i = icmp eq i64 %i.jt, %i.jv
  br i1 %.not32.i27.i, label %._crit_edge.i28.i, label %read_metadata_block_data_vorbis_comment_entry_cb_.exit32.thread.i

._crit_edge.i28.i:                                ; preds = %bb.x
  %.pre34.i29.i = load ptr, ptr %i.jm, align 8, !tbaa !102
  br label %bb.y

read_metadata_block_data_vorbis_comment_entry_cb_.exit32.thread.i: ; preds = %bb.x, %bb.v, %bb.q
  %.0.i15.ph.i = phi i32 [ 6, %bb.x ], [ 11, %bb.v ], [ 6, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %read_metadata_block_data_vorbis_comment_cb_.exit.i.i

read_metadata_block_data_vorbis_comment_entry_cb_.exit32.thread36.i: ; preds = %bb.s, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.jw = icmp ugt i32 %i.s, 3
  %i.jx = add i32 %i.s, -4
  %spec.select.i.i38.i = select i1 %i.jw, i32 %i.jx, i32 %i.s
  br label %.loopexit.i.i.i

bb.y:                                             ; preds = %._crit_edge.i28.i, %bb.w
  %i.jy = phi i64 [ %i.jt, %._crit_edge.i28.i ], [ 0, %bb.w ]
  %i.jz = phi ptr [ %.pre34.i29.i, %._crit_edge.i28.i ], [ %i.jr, %bb.w ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jy
  store i8 0, ptr %i.ka, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.kb = icmp ugt i32 %i.s, 3
  %i.kc = add i32 %i.s, -4
  %spec.select.i.i.i = select i1 %i.kb, i32 %i.kc, i32 %i.s
  %i.kd = load i32, ptr %i.ic, align 8, !tbaa !104
  %i.ke = sub i32 %spec.select.i.i.i, %i.kd       ; 3 uses
  %i.kf = icmp ult i32 %i.ke, %i.ie
  br i1 %i.kf, label %.loopexit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.kg = sub nuw i32 %i.ke, %i.ie                ; 4 uses
  %i.kh = zext nneg i32 %i.ie to i64              ; 3 uses
  %i.ki = call i64 @fread(ptr noundef nonnull %i.i, i64 noundef 1, i64 noundef %i.kh, ptr noundef %i.u) #32, !inline_history !170
  %.not66.i.i.i = icmp eq i64 %i.ki, %i.kh
  br i1 %.not66.i.i.i, label %bb.aa, label %read_metadata_block_data_vorbis_comment_cb_.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i.i = icmp eq i32 %i.ie, 0
  br i1 %.not.i.i.i.i, label %unpack_uint32_little_endian_.exit.thread.i.i.i, label %.lr.ph.preheader.i.i.i.i

unpack_uint32_little_endian_.exit.thread.i.i.i:   ; preds = %bb.aa
  %i.kj = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i32 0, ptr %i.kj, align 8, !tbaa !105
  br label %.thread.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.aa
  %i.kk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.kh ; 2 uses
  %xtraiter304 = and i32 %i.ie, 3                 ; 3 uses
  %i.kl = icmp ult i32 %i.id, 32
  br i1 %i.kl, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.new:                     ; preds = %.lr.ph.preheader.i.i.i.i
  %unroll_iter309 = and i32 %i.ie, 536870908
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i.new
  %.089.i.i.i.i = phi ptr [ %i.kk, %.lr.ph.preheader.i.i.i.i.new ], [ %i.km, %.lr.ph.i.i.i.i ] ; 4 uses
  %niter310 = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %niter310.next.3, %.lr.ph.i.i.i.i ]
  %i.km = getelementptr inbounds i8, ptr %.089.i.i.i.i, i64 -4 ; 3 uses
  %niter310.next.3 = add i32 %niter310, 4         ; 2 uses
  %niter310.ncmp.3 = icmp eq i32 %niter310.next.3, %unroll_iter309
  br i1 %niter310.ncmp.3, label %unpack_uint32_little_endian_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !1

unpack_uint32_little_endian_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %i.kn = getelementptr inbounds i8, ptr %.089.i.i.i.i, i64 -1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !52
  %i.kp = zext i8 %i.ko to i32
  %i.kq = shl nuw nsw i32 %i.kp, 16
  %i.kr = getelementptr inbounds i8, ptr %.089.i.i.i.i, i64 -2
end_hunk_0
begin_hunk_1_@chain_read_:bb.a
  %i.eh = lshr i32 %i.eg, 3
  %i.ei = zext nneg i32 %i.eh to i64              ; 2 uses
  %i.ej = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_NUM_INDICES_LEN, align 4
  %i.ek = lshr i32 %i.ej, 3                       ; 2 uses
  %i.el = zext nneg i32 %i.ek to i64              ; 3 uses
  %.not.i69.i.i.i.i = icmp eq i32 %i.ek, 0
  %i.em = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_OFFSET_LEN, align 4 ; 2 uses
  %i.en = lshr i32 %i.em, 3                       ; 4 uses
  %i.eo = zext nneg i32 %i.en to i64              ; 2 uses
  %.not.i77.i.i.i.i = icmp eq i32 %i.en, 0
  %i.ep = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_NUMBER_LEN, align 4
  %i.eq = lshr i32 %i.ep, 3                       ; 2 uses
  %i.er = zext nneg i32 %i.eq to i64              ; 3 uses
  %.not.i85.i.i.i.i = icmp eq i32 %i.eq, 0
  %i.es = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_RESERVED_LEN, align 4
  %i.et = lshr i32 %i.es, 3
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %i.ev = getelementptr i8, ptr %i.g, i64 %i.dy
  %scevgep.i.i.i = getelementptr i8, ptr %i.ev, i64 -1
  %i.ew = getelementptr i8, ptr %i.g, i64 %i.el
  %scevgep64.i.i.i = getelementptr i8, ptr %i.ew, i64 -1
  %i.ex = getelementptr i8, ptr %i.g, i64 %i.er
  %scevgep65.i.i.i = getelementptr i8, ptr %i.ex, i64 -1
  %i.ey = load i32, ptr @FLAC__STREAM_METADATA_VORBIS_COMMENT_NUM_COMMENTS_LEN, align 4 ; 2 uses
  %i.ez = lshr i32 %i.ey, 3                       ; 6 uses
  %i.fa = zext nneg i32 %i.ez to i64              ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.ez, 0
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.j, i64 17
  %i.ff = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.fh = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.fi = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.fk = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.fl = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.fm = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.fn = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.fo = getelementptr inbounds nuw i8, ptr %i.j, i64 11
  %i.fp = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 14
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.ft = load i32, ptr @FLAC__STREAM_METADATA_APPLICATION_ID_LEN, align 4
  %i.fu = lshr i32 %i.ft, 3                       ; 4 uses
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.fy = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.gb = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.gc = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.gd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  %i.gf = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.gg = getelementptr inbounds nuw i8, ptr %i.k, i64 11
  %i.gh = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.gi = getelementptr inbounds nuw i8, ptr %i.k, i64 13
  %i.gj = getelementptr inbounds nuw i8, ptr %i.k, i64 14
  %i.gk = getelementptr inbounds nuw i8, ptr %i.k, i64 15
  %i.gl = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  %i.gn = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 8 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gr = lshr i32 %i.de, 3                       ; 4 uses
  %i.gs = zext nneg i32 %i.gr to i64              ; 2 uses
  %.not.i.i19 = icmp eq i32 %i.gr, 0
  %i.gt = load i32, ptr @FLAC__STREAM_METADATA_VORBIS_COMMENT_ENTRY_LENGTH_LEN, align 4 ; 3 uses
  %i.gu = lshr i32 %i.gt, 3                       ; 10 uses
  %i.gv = zext nneg i32 %i.gu to i64              ; 6 uses
  %.not.i.i32 = icmp eq i32 %i.gu, 0              ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gv ; 2 uses
  %xtraiter = and i32 %i.ci, 3                    ; 3 uses
  %i.gy = icmp ult i32 %i.ch, 32
  %unroll_iter = and i32 %i.ci, 536870908
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod298 = icmp ne i32 %xtraiter, 0
  %xtraiter299 = and i32 %i.cl, 3                 ; 3 uses
  %i.gz = icmp ult i32 %i.ck, 32
  %unroll_iter304 = and i32 %i.cl, 536870908
  %lcmp.mod301.not = icmp eq i32 %xtraiter299, 0
  %lcmp.mod303 = icmp ne i32 %xtraiter299, 0
  %xtraiter306 = and i32 %i.cq, 3                 ; 3 uses
  %i.ha = icmp ult i32 %i.cp, 32
  %unroll_iter311 = and i32 %i.cq, 536870908
  %lcmp.mod308.not = icmp eq i32 %xtraiter306, 0
  %lcmp.mod310 = icmp ne i32 %xtraiter306, 0
  %xtraiter313 = and i32 %i.ct, 3                 ; 3 uses
  %i.hb = icmp ult i32 %i.cs, 32
  %unroll_iter318 = and i32 %i.ct, 536870908
  %lcmp.mod315.not = icmp eq i32 %xtraiter313, 0
  %lcmp.mod317 = icmp ne i32 %xtraiter313, 0
  %xtraiter320 = and i32 %i.cw, 3                 ; 3 uses
  %i.hc = icmp ult i32 %i.cv, 32
  %unroll_iter325 = and i32 %i.cw, 536870908
  %lcmp.mod322.not = icmp eq i32 %xtraiter320, 0
  %lcmp.mod324 = icmp ne i32 %xtraiter320, 0
  %xtraiter327 = and i32 %i.cz, 3                 ; 3 uses
  %i.hd = icmp ult i32 %i.cy, 32
  %unroll_iter332 = and i32 %i.cz, 536870908
  %lcmp.mod329.not = icmp eq i32 %xtraiter327, 0
  %lcmp.mod331 = icmp ne i32 %xtraiter327, 0
  %xtraiter334 = and i32 %i.dc, 3                 ; 3 uses
  %i.he = icmp ult i32 %i.db, 32
  %unroll_iter339 = and i32 %i.dc, 536870908
  %lcmp.mod336.not = icmp eq i32 %xtraiter334, 0
  %lcmp.mod338 = icmp ne i32 %xtraiter334, 0
  %xtraiter341 = and i32 %i.gr, 3                 ; 3 uses
  %i.hf = icmp ult i32 %i.de, 32
  %unroll_iter346 = and i32 %i.gr, 536870908
  %lcmp.mod343.not = icmp eq i32 %xtraiter341, 0
  %lcmp.mod345 = icmp ne i32 %xtraiter341, 0
  %xtraiter348 = and i32 %i.dj, 3                 ; 3 uses
  %i.hg = icmp ult i32 %i.di, 32
  %unroll_iter353 = and i32 %i.dj, 536870908
  %lcmp.mod350.not = icmp eq i32 %xtraiter348, 0
  %lcmp.mod352 = icmp ne i32 %xtraiter348, 0
  %xtraiter355 = and i32 %i.dr, 3                 ; 3 uses
  %i.hh = icmp ult i32 %i.dq, 32
  %unroll_iter360 = and i32 %i.dr, 536870908
  %lcmp.mod357.not = icmp eq i32 %xtraiter355, 0
  %lcmp.mod359 = icmp ne i32 %xtraiter355, 0
  %xtraiter362 = and i32 %i.du, 3                 ; 3 uses
  %i.hi = icmp ult i32 %i.dt, 32
  %unroll_iter367 = and i32 %i.du, 536870908
  %lcmp.mod364.not = icmp eq i32 %xtraiter362, 0
  %lcmp.mod366 = icmp ne i32 %xtraiter362, 0
  %xtraiter369 = and i32 %i.en, 3                 ; 3 uses
  %i.hj = icmp ult i32 %i.em, 32
  %unroll_iter374 = and i32 %i.en, 536870908
  %lcmp.mod371.not = icmp eq i32 %xtraiter369, 0
  %lcmp.mod373 = icmp ne i32 %xtraiter369, 0
  %xtraiter376 = and i32 %i.gu, 3                 ; 3 uses
  %i.hk = icmp ult i32 %i.gt, 32
  %unroll_iter381 = and i32 %i.gu, 536870908
  %lcmp.mod378.not = icmp eq i32 %xtraiter376, 0
  %lcmp.mod380 = icmp ne i32 %xtraiter376, 0
  %xtraiter383 = and i32 %i.ez, 3                 ; 3 uses
  %i.hl = icmp ult i32 %i.ey, 32
  %unroll_iter388 = and i32 %i.ez, 536870908
  %lcmp.mod385.not = icmp eq i32 %xtraiter383, 0
  %lcmp.mod387 = icmp ne i32 %xtraiter383, 0
  %xtraiter390 = and i32 %i.gu, 3                 ; 3 uses
  %i.hm = icmp ult i32 %i.gt, 32
  %unroll_iter395 = and i32 %i.gu, 536870908
  %lcmp.mod392.not = icmp eq i32 %xtraiter390, 0
  %lcmp.mod394 = icmp ne i32 %xtraiter390, 0
  br label %bb.aa

bb.aa:                                            ; preds = %chain_append_node_.exit.i, %bb.z
  %i.hn = call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #33 ; 12 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 11, ptr %i.go, align 4, !tbaa !140
  br label %chain_read_cb_.exit

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #32
  %i.hp = call i64 @fread(ptr noundef nonnull %i.l, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.z) #32, !inline_history !13
  %.not.i58.i = icmp eq i64 %i.hp, 4
  br i1 %.not.i58.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #32
  %i.hq = load ptr, ptr %i.hn, align 8, !tbaa !138 ; 2 uses
  %.not.i59.i = icmp eq ptr %i.hq, null
  br i1 %.not.i59.i, label %node_delete_.exit.i17, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @FLAC__metadata_object_delete(ptr noundef nonnull %i.hq) #32
  br label %node_delete_.exit.i17

node_delete_.exit.i17:                            ; preds = %bb.ae, %bb.ad
  call void @free(ptr noundef nonnull %i.hn) #32
  store i32 6, ptr %i.go, align 4, !tbaa !140
  br label %chain_read_cb_.exit

bb.af:                                            ; preds = %bb.ac
  %i.hr = load i8, ptr %i.l, align 1, !tbaa !52   ; 3 uses
  %i.hs = and i8 %i.hr, 127
  %i.ht = zext nneg i8 %i.hs to i32
  %i.hu = load i8, ptr %i.ce, align 1, !tbaa !52
  %i.hv = zext i8 %i.hu to i32
  %i.hw = load i8, ptr %i.cf, align 1, !tbaa !52
  %i.hx = zext i8 %i.hw to i32
  %i.hy = shl nuw nsw i32 %i.hv, 16
  %i.hz = shl nuw nsw i32 %i.hx, 8
  %i.ia = or disjoint i32 %i.hz, %i.hy
  %i.ib = load i8, ptr %i.cg, align 1, !tbaa !52
  %i.ic = zext i8 %i.ib to i32
  %i.id = or disjoint i32 %i.ia, %i.ic            ; 18 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #32
  %i.ie = call ptr @FLAC__metadata_object_new(i32 noundef %i.ht) #32 ; 42 uses
  store ptr %i.ie, ptr %i.hn, align 8, !tbaa !138
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %node_delete_.exit61.i, label %bb.ag

node_delete_.exit61.i:                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.hn) #32
  store i32 11, ptr %i.go, align 4, !tbaa !140
  br label %chain_read_cb_.exit

bb.ag:                                            ; preds = %bb.af
  %.lobit.i.i = lshr i8 %i.hr, 7
  %i.ig = zext nneg i8 %.lobit.i.i to i32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !76
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store i32 %i.id, ptr %i.ii, align 8, !tbaa !78
  %i.ij = load i32, ptr %i.ie, align 8, !tbaa !79
  switch i32 %i.ij, label %bb.di [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
    i32 2, label %bb.aj
    i32 3, label %bb.ao
    i32 4, label %bb.au
    i32 5, label %bb.bv
    i32 6, label %bb.ck
  ]

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #32
  %i.ik = call i64 @fread(ptr noundef nonnull %i.k, i64 noundef 1, i64 noundef 34, ptr noundef nonnull %i.z) #32, !inline_history !14
  %.not.i.i.i = icmp eq i64 %i.ik, 34
  br i1 %.not.i.i.i, label %.lr.ph.i.preheader.i.i.i, label %read_metadata_block_data_streaminfo_cb_.exit.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.ah
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.im = load i8, ptr %i.k, align 16, !tbaa !52
  %i.in = zext i8 %i.im to i32
  %i.io = shl nuw nsw i32 %i.in, 8
  %i.ip = load i8, ptr %i.fw, align 1, !tbaa !52
  %i.iq = zext i8 %i.ip to i32
  %i.ir = or disjoint i32 %i.io, %i.iq
  store i32 %i.ir, ptr %i.il, align 8, !tbaa !81
  %i.is = load i8, ptr %i.fx, align 2, !tbaa !52
  %i.it = zext i8 %i.is to i32
  %i.iu = shl nuw nsw i32 %i.it, 8
  %i.iv = load i8, ptr %i.fy, align 1, !tbaa !52
  %i.iw = zext i8 %i.iv to i32
  %i.ix = or disjoint i32 %i.iu, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ie, i64 20
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !82
  %i.iz = load i8, ptr %i.fz, align 4, !tbaa !52
  %i.ja = zext i8 %i.iz to i32
  %i.jb = load i8, ptr %i.ga, align 1, !tbaa !52
  %i.jc = zext i8 %i.jb to i32
  %i.jd = shl nuw nsw i32 %i.ja, 16
  %i.je = shl nuw nsw i32 %i.jc, 8
  %i.jf = or disjoint i32 %i.je, %i.jd
  %i.jg = load i8, ptr %i.gb, align 2, !tbaa !52
  %i.jh = zext i8 %i.jg to i32
  %i.ji = or disjoint i32 %i.jf, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store i32 %i.ji, ptr %i.jj, align 8, !tbaa !83
  %i.jk = load i8, ptr %i.gc, align 1, !tbaa !52
  %i.jl = zext i8 %i.jk to i32
  %i.jm = load i8, ptr %i.gd, align 8, !tbaa !52
  %i.jn = zext i8 %i.jm to i32
  %i.jo = shl nuw nsw i32 %i.jl, 16
  %i.jp = shl nuw nsw i32 %i.jn, 8
  %i.jq = or disjoint i32 %i.jp, %i.jo
  %i.jr = load i8, ptr %i.ge, align 1, !tbaa !52
  %i.js = zext i8 %i.jr to i32
  %i.jt = or disjoint i32 %i.jq, %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ie, i64 28
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !84
  %i.jv = load i8, ptr %i.gf, align 2, !tbaa !52
  %i.jw = zext i8 %i.jv to i32
  %i.jx = load i8, ptr %i.gg, align 1, !tbaa !52
  %i.jy = zext i8 %i.jx to i32
  %i.jz = shl nuw nsw i32 %i.jw, 12
  %i.ka = shl nuw nsw i32 %i.jy, 4
  %i.kb = or disjoint i32 %i.ka, %i.jz
  %i.kc = load i8, ptr %i.gh, align 4, !tbaa !52  ; 3 uses
  %i.kd = lshr i8 %i.kc, 4
  %i.ke = zext nneg i8 %i.kd to i32
  %i.kf = or disjoint i32 %i.kb, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  store i32 %i.kf, ptr %i.kg, align 8, !tbaa !85
  %i.kh = lshr i8 %i.kc, 1
  %i.ki = and i8 %i.kh, 7
  %narrow.i.i.i = add nuw nsw i8 %i.ki, 1
  %i.kj = zext nneg i8 %narrow.i.i.i to i32
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ie, i64 36
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !86
  %i.kl = shl i8 %i.kc, 4
  %i.km = and i8 %i.kl, 16
  %i.kn = load i8, ptr %i.gi, align 1, !tbaa !52  ; 2 uses
  %i.ko = lshr i8 %i.kn, 4
  %i.kp = or disjoint i8 %i.km, 1
  %narrow27.i.i.i = add nuw nsw i8 %i.kp, %i.ko
  %i.kq = zext nneg i8 %narrow27.i.i.i to i32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ie, i64 40
  store i32 %i.kq, ptr %i.kr, align 8, !tbaa !87
  %i.ks = load i8, ptr %i.gj, align 2, !tbaa !52
  %i.kt = zext i8 %i.ks to i64
  %i.ku = load i8, ptr %i.gk, align 1, !tbaa !52
  %i.kv = zext i8 %i.ku to i64
  %i.kw = shl nuw nsw i64 %i.kt, 16
  %i.kx = shl nuw nsw i64 %i.kv, 8
  %i.ky = or disjoint i64 %i.kx, %i.kw
  %i.kz = load i8, ptr %i.gl, align 16, !tbaa !52
  %i.la = zext i8 %i.kz to i64
  %i.lb = or disjoint i64 %i.ky, %i.la
  %i.lc = shl nuw nsw i64 %i.lb, 8
  %i.ld = load i8, ptr %i.gm, align 1, !tbaa !52
  %i.le = zext i8 %i.ld to i64
  %i.lf = or disjoint i64 %i.lc, %i.le
  %i.lg = and i8 %i.kn, 15
  %i.lh = zext nneg i8 %i.lg to i64
  %i.li = shl nuw nsw i64 %i.lh, 32
  %i.lj = or disjoint i64 %i.lf, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ie, i64 48
  store i64 %i.lj, ptr %i.lk, align 8, !tbaa !88
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ie, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef nonnull align 2 dereferenceable(16) %i.gn, i64 noundef 16, i1 noundef false) #32
  br label %read_metadata_block_data_streaminfo_cb_.exit.i.i

read_metadata_block_data_streaminfo_cb_.exit.i.i: ; preds = %.lr.ph.i.preheader.i.i.i, %bb.ah
  %.0.i.i.i = phi i32 [ 0, %.lr.ph.i.preheader.i.i.i ], [ 6, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #32
  br label %read_metadata_block_data_cb_.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.lm = zext nneg i32 %i.id to i64
  %i.ln = call noundef i32 @fseeko64(ptr noundef nonnull %i.z, i64 noundef %i.lm, i32 noundef 1)
  %.not.i31.i.i = icmp eq i32 %i.ln, 0
  br i1 %.not.i31.i.i, label %read_metadata_block_data_cb_.exit.thread91.i, label %read_metadata_block_data_cb_.exit.thread.i

bb.aj:                                            ; preds = %bb.ag
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.lp = call i64 @fread(ptr noundef nonnull %i.lo, i64 noundef 1, i64 noundef %i.fv, ptr noundef nonnull %i.z) #32, !inline_history !15
  %.not.i32.i.i = icmp ne i64 %i.lp, %i.fv
  %i.lq = icmp samesign ult i32 %i.id, %i.fu
  %or.cond.i.i.i = or i1 %i.lq, %.not.i32.i.i
  br i1 %or.cond.i.i.i, label %read_metadata_block_data_cb_.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lr = icmp eq i32 %i.id, %i.fu
  br i1 %i.lr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store ptr null, ptr %i.ls, align 8, !tbaa !90
  br label %read_metadata_block_data_cb_.exit.thread91.i

bb.am:                                            ; preds = %bb.ak
  %i.lt = sub nuw nsw i32 %i.id, %i.fu
  %i.lu = zext nneg i32 %i.lt to i64              ; 3 uses
  %i.lv = call noalias ptr @malloc(i64 noundef %i.lu) #35 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store ptr %i.lv, ptr %i.lw, align 8, !tbaa !90
  %i.lx = icmp eq ptr %i.lv, null
  br i1 %i.lx, label %read_metadata_block_data_cb_.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ly = call i64 @fread(ptr noundef nonnull %i.lv, i64 noundef 1, i64 noundef %i.lu, ptr noundef nonnull %i.z) #32, !inline_history !15
  %.not22.i.i.i = icmp eq i64 %i.ly, %i.lu
  br i1 %.not22.i.i.i, label %read_metadata_block_data_cb_.exit.thread91.i, label %read_metadata_block_data_cb_.exit.thread.i

bb.ao:                                            ; preds = %bb.ag
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #32
  %i.ma = urem i32 %i.id, 18
  %i.mb = udiv exact i32 %i.id, 18                ; 2 uses
  %.not.i34.i.i = icmp eq i32 %i.ma, 0
  br i1 %.not.i34.i.i, label %bb.ap, label %read_metadata_block_data_seektable_cb_.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.mb, ptr %i.lz, align 8, !tbaa !92
  %3 = icmp eq i32 %i.id, 0
  br i1 %3, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store ptr null, ptr %i.mc, align 8, !tbaa !93
  br label %read_metadata_block_data_seektable_cb_.exit.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.md = zext nneg i32 %i.mb to i64
  %i.me = call ptr @safe_malloc_mul_2op_p(i64 noundef %i.md, i64 noundef 24) #32 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ie, i64 24 ; 2 uses
  store ptr %i.me, ptr %i.mf, align 8, !tbaa !93
  %i.mg = icmp eq ptr %i.me, null
  br i1 %i.mg, label %read_metadata_block_data_seektable_cb_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.pre.i.i.i = load i32, ptr %i.lz, align 8, !tbaa !92
  %.not37.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not37.i.i.i, label %read_metadata_block_data_seektable_cb_.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i.preheader.i35.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.preheader.i35.i.i ], [ 0, %bb.as ] ; 2 uses
  %i.mh = call i64 @fread(ptr noundef nonnull %i.j, i64 noundef 1, i64 noundef 18, ptr noundef nonnull %i.z) #32, !inline_history !16
  %.not20.i.i.i = icmp eq i64 %i.mh, 18
  br i1 %.not20.i.i.i, label %.lr.ph.i.preheader.i35.i.i, label %read_metadata_block_data_seektable_cb_.exit.i.i

.lr.ph.i.preheader.i35.i.i:                       ; preds = %bb.at
  %i.mi = load i8, ptr %i.j, align 16, !tbaa !52
  %i.mj = zext i8 %i.mi to i64
  %i.mk = load i8, ptr %i.ff, align 1, !tbaa !52
  %i.ml = zext i8 %i.mk to i64
  %i.mm = shl nuw nsw i64 %i.mj, 16
  %i.mn = shl nuw nsw i64 %i.ml, 8
  %i.mo = or disjoint i64 %i.mn, %i.mm
  %i.mp = load i8, ptr %i.fg, align 2, !tbaa !52
  %i.mq = zext i8 %i.mp to i64
  %i.mr = or disjoint i64 %i.mo, %i.mq
  %i.ms = load i8, ptr %i.fh, align 1, !tbaa !52
  %i.mt = zext i8 %i.ms to i64
  %i.mu = load i8, ptr %i.fi, align 4, !tbaa !52
  %i.mv = zext i8 %i.mu to i64
  %i.mw = load i8, ptr %i.fj, align 1, !tbaa !52
  %i.mx = zext i8 %i.mw to i64
  %i.my = shl nuw nsw i64 %i.mr, 32
  %i.mz = shl nuw nsw i64 %i.mt, 24
  %i.na = shl nuw nsw i64 %i.mv, 16
  %i.nb = or disjoint i64 %i.na, %i.mz
  %i.nc = or disjoint i64 %i.nb, %i.my
  %i.nd = load i8, ptr %i.fk, align 2, !tbaa !52
  %i.ne = zext i8 %i.nd to i64
  %i.nf = or disjoint i64 %i.nc, %i.ne
  %i.ng = shl nuw nsw i64 %i.mx, 16
  %i.nh = shl nuw i64 %i.nf, 8
  %i.ni = load i8, ptr %i.fl, align 1, !tbaa !52
  %i.nj = zext i8 %i.ni to i64
  %i.nk = or disjoint i64 %i.ng, %i.nj
  %i.nl = or disjoint i64 %i.nk, %i.nh
  %i.nm = load ptr, ptr %i.mf, align 8, !tbaa !93
  %i.nn = getelementptr inbounds nuw [24 x i8], ptr %i.nm, i64 %indvars.iv.i.i.i ; 3 uses
  store i64 %i.nl, ptr %i.nn, align 8, !tbaa !95
  %i.no = load i8, ptr %i.fc, align 8, !tbaa !52
  %i.np = zext i8 %i.no to i64
  %i.nq = load i8, ptr %i.fm, align 1, !tbaa !52
  %i.nr = zext i8 %i.nq to i64
  %i.ns = shl nuw nsw i64 %i.np, 16
  %i.nt = shl nuw nsw i64 %i.nr, 8
  %i.nu = or disjoint i64 %i.nt, %i.ns
  %i.nv = load i8, ptr %i.fn, align 2, !tbaa !52
  %i.nw = zext i8 %i.nv to i64
  %i.nx = or disjoint i64 %i.nu, %i.nw
  %i.ny = load i8, ptr %i.fo, align 1, !tbaa !52
  %i.nz = zext i8 %i.ny to i64
  %i.oa = load i8, ptr %i.fp, align 4, !tbaa !52
  %i.ob = zext i8 %i.oa to i64
  %i.oc = load i8, ptr %i.fq, align 1, !tbaa !52
  %i.od = zext i8 %i.oc to i64
  %i.oe = shl nuw nsw i64 %i.nx, 32
  %i.of = shl nuw nsw i64 %i.nz, 24
  %i.og = shl nuw nsw i64 %i.ob, 16
  %i.oh = or disjoint i64 %i.og, %i.of
  %i.oi = or disjoint i64 %i.oh, %i.oe
  %i.oj = load i8, ptr %i.fr, align 2, !tbaa !52
  %i.ok = zext i8 %i.oj to i64
  %i.ol = or disjoint i64 %i.oi, %i.ok
  %i.om = shl nuw nsw i64 %i.od, 16
  %i.on = shl nuw i64 %i.ol, 8
  %i.oo = load i8, ptr %i.fs, align 1, !tbaa !52
  %i.op = zext i8 %i.oo to i64
  %i.oq = or disjoint i64 %i.om, %i.op
  %i.or = or disjoint i64 %i.oq, %i.on
  %i.os = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store i64 %i.or, ptr %i.os, align 8, !tbaa !96
  %i.ot = load i8, ptr %i.fd, align 16, !tbaa !52
  %i.ou = zext i8 %i.ot to i32
  %i.ov = shl nuw nsw i32 %i.ou, 8
  %i.ow = load i8, ptr %i.fe, align 1, !tbaa !52
  %i.ox = zext i8 %i.ow to i32
  %i.oy = or disjoint i32 %i.ov, %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  store i32 %i.oy, ptr %i.oz, align 8, !tbaa !97
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.pa = load i32, ptr %i.lz, align 8, !tbaa !92
  %i.pb = zext i32 %i.pa to i64
  %i.pc = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.pb
  br i1 %i.pc, label %bb.at, label %read_metadata_block_data_seektable_cb_.exit.i.i, !llvm.loop !0

read_metadata_block_data_seektable_cb_.exit.i.i:  ; preds = %.lr.ph.i.preheader.i35.i.i, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.018.i.i.i = phi i32 [ 5, %bb.ao ], [ 11, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.aq ], [ 0, %.lr.ph.i.preheader.i35.i.i ], [ 6, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #32
  br label %read_metadata_block_data_cb_.exit.i

bb.au:                                            ; preds = %bb.ag
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.pe = icmp samesign ult i32 %i.id, %i.gu
  br i1 %i.pe, label %read_metadata_block_data_vorbis_comment_entry_cb_.exit48.thread52, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pf = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.gv, ptr noundef nonnull %i.z) #32, !inline_history !98
  %.not.i30 = icmp eq i64 %i.pf, %i.gv
  br i1 %.not.i30, label %bb.aw, label %read_metadata_block_data_vorbis_comment_entry_cb_.exit48.thread

bb.aw:                                            ; preds = %bb.av
  %i.pg = sub nuw nsw i32 %i.id, %i.gu
  br i1 %.not.i.i32, label %unpack_uint32_little_endian_.exit.thread.i47, label %.lr.ph.i.i34.preheader

.lr.ph.i.i34.preheader:                           ; preds = %bb.aw
  br i1 %i.hk, label %.lr.ph.i.i34.epil.preheader, label %.lr.ph.i.i34

unpack_uint32_little_endian_.exit.thread.i47:     ; preds = %bb.aw
  store i32 0, ptr %i.pd, align 8, !tbaa !100
  br label %bb.ay

.lr.ph.i.i34:                                     ; preds = %.lr.ph.i.i34.preheader, %.lr.ph.i.i34
  %.089.i.i37 = phi ptr [ %i.ph, %.lr.ph.i.i34 ], [ %i.gw, %.lr.ph.i.i34.preheader ] ; 4 uses
  %niter382 = phi i32 [ %niter382.next.3, %.lr.ph.i.i34 ], [ 0, %.lr.ph.i.i34.preheader ]
  %i.ph = getelementptr inbounds i8, ptr %.089.i.i37, i64 -4 ; 3 uses
  %niter382.next.3 = add i32 %niter382, 4         ; 2 uses
  %niter382.ncmp.3 = icmp eq i32 %niter382.next.3, %unroll_iter381
  br i1 %niter382.ncmp.3, label %unpack_uint32_little_endian_.exit.i39.unr-lcssa, label %.lr.ph.i.i34, !llvm.loop !1

unpack_uint32_little_endian_.exit.i39.unr-lcssa:  ; preds = %.lr.ph.i.i34
  %i.pi = getelementptr inbounds i8, ptr %.089.i.i37, i64 -1
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !52
  %i.pk = zext i8 %i.pj to i32
  %i.pl = shl nuw nsw i32 %i.pk, 16
  %i.pm = getelementptr inbounds i8, ptr %.089.i.i37, i64 -2
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !52
  %i.po = zext i8 %i.pn to i32
  %i.pp = shl nuw nsw i32 %i.po, 8
  %i.pq = or disjoint i32 %i.pl, %i.pp
  %i.pr = getelementptr inbounds i8, ptr %.089.i.i37, i64 -3
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !52
  %i.pt = zext i8 %i.ps to i32
  %i.pu = or disjoint i32 %i.pq, %i.pt
  %i.pv = shl nuw i32 %i.pu, 8
  %i.pw = load i8, ptr %i.ph, align 1, !tbaa !52
  %i.px = zext i8 %i.pw to i32
  %i.py = or disjoint i32 %i.pv, %i.px            ; 2 uses
  br i1 %lcmp.mod378.not, label %unpack_uint32_little_endian_.exit.i39, label %.lr.ph.i.i34.epil.preheader

.lr.ph.i.i34.epil.preheader:                      ; preds = %unpack_uint32_little_endian_.exit.i39.unr-lcssa, %.lr.ph.i.i34.preheader
  %.0710.i.i36.epil.init = phi i32 [ 0, %.lr.ph.i.i34.preheader ], [ %i.py, %unpack_uint32_little_endian_.exit.i39.unr-lcssa ]
  %.089.i.i37.epil.init = phi ptr [ %i.gw, %.lr.ph.i.i34.preheader ], [ %i.ph, %unpack_uint32_little_endian_.exit.i39.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod380)
  br label %.lr.ph.i.i34.epil

.lr.ph.i.i34.epil:                                ; preds = %.lr.ph.i.i34.epil, %.lr.ph.i.i34.epil.preheader
  %.0710.i.i36.epil = phi i32 [ %i.qd, %.lr.ph.i.i34.epil ], [ %.0710.i.i36.epil.init, %.lr.ph.i.i34.epil.preheader ]
  %.089.i.i37.epil = phi ptr [ %i.qa, %.lr.ph.i.i34.epil ], [ %.089.i.i37.epil.init, %.lr.ph.i.i34.epil.preheader ]
  %epil.iter377 = phi i32 [ %epil.iter377.next, %.lr.ph.i.i34.epil ], [ 0, %.lr.ph.i.i34.epil.preheader ]
  %i.pz = shl i32 %.0710.i.i36.epil, 8
  %i.qa = getelementptr inbounds i8, ptr %.089.i.i37.epil, i64 -1 ; 2 uses
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !52
  %i.qc = zext i8 %i.qb to i32
  %i.qd = or disjoint i32 %i.pz, %i.qc            ; 2 uses
  %epil.iter377.next = add i32 %epil.iter377, 1   ; 2 uses
  %epil.iter377.cmp.not = icmp eq i32 %epil.iter377.next, %xtraiter376
  br i1 %epil.iter377.cmp.not, label %unpack_uint32_little_endian_.exit.i39, label %.lr.ph.i.i34.epil, !llvm.loop !193

unpack_uint32_little_endian_.exit.i39:            ; preds = %.lr.ph.i.i34.epil, %unpack_uint32_little_endian_.exit.i39.unr-lcssa
  %.lcssa275 = phi i32 [ %i.py, %unpack_uint32_little_endian_.exit.i39.unr-lcssa ], [ %i.qd, %.lr.ph.i.i34.epil ] ; 3 uses
  store i32 %.lcssa275, ptr %i.pd, align 8, !tbaa !100
  %i.qe = icmp ult i32 %i.pg, %.lcssa275
  br i1 %i.qe, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %unpack_uint32_little_endian_.exit.i39
  store i32 0, ptr %i.pd, align 8, !tbaa !100
  br label %read_metadata_block_data_vorbis_comment_entry_cb_.exit48.thread52

bb.ay:                                            ; preds = %unpack_uint32_little_endian_.exit.i39, %unpack_uint32_little_endian_.exit.thread.i47
  %i.qf = phi i32 [ 0, %unpack_uint32_little_endian_.exit.thread.i47 ], [ %.lcssa275, %unpack_uint32_little_endian_.exit.i39 ]
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ie, i64 24 ; 3 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !102 ; 2 uses
  %.not30.i40 = icmp eq ptr %i.qh, null
  br i1 %.not30.i40, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @free(ptr noundef nonnull %i.qh) #32
  %.pre.i41 = load i32, ptr %i.pd, align 8, !tbaa !100
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.qi = phi i32 [ %.pre.i41, %bb.az ], [ %i.qf, %bb.ay ] ; 2 uses
  %i.qj = zext i32 %i.qi to i64                   ; 2 uses
  %i.qk = add nuw nsw i64 %i.qj, 1
  %i.ql = call noalias noundef ptr @malloc(i64 noundef %i.qk) #35 ; 4 uses
  store ptr %i.ql, ptr %i.qg, align 8, !tbaa !102
  %i.qm = icmp eq ptr %i.ql, null
  br i1 %i.qm, label %read_metadata_block_data_vorbis_comment_entry_cb_.exit48.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not31.i42 = icmp eq i32 %i.qi, 0
  br i1 %.not31.i42, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qn = call i64 @fread(ptr noundef nonnull %i.ql, i64 noundef 1, i64 noundef %i.qj, ptr noundef nonnull %i.z) #32, !inline_history !98 ; 2 uses
  %i.qo = load i32, ptr %i.pd, align 8, !tbaa !100
  %i.qp = zext i32 %i.qo to i64
  %.not32.i43 = icmp eq i64 %i.qn, %i.qp
  br i1 %.not32.i43, label %._crit_edge.i44, label %read_metadata_block_data_vorbis_comment_entry_cb_.exit48.thread

._crit_edge.i44:                                  ; preds = %bb.bc
  %.pre34.i45 = load ptr, ptr %i.qg, align 8, !tbaa !102
  br label %bb.bd

read_metadata_block_data_vorbis_comment_entry_cb_.exit48.thread: ; preds = %bb.av, %bb.ba, %bb.bc
  %.0.i31.ph = phi i32 [ 6, %bb.bc ], [ 11, %bb.ba ], [ 6, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %read_metadata_block_data_vorbis_comment_cb_.exit.i.i

read_metadata_block_data_vorbis_comment_entry_cb_.exit48.thread52: ; preds = %bb.au, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.qq = icmp samesign ugt i32 %i.id, 3
  %i.qr = add nsw i32 %i.id, -4
  %spec.select.i.i.i54 = select i1 %i.qq, i32 %i.qr, i32 %i.id
  br label %.loopexit.i.i.i

bb.bd:                                            ; preds = %._crit_edge.i44, %bb.bb
  %i.qs = phi i64 [ %i.qn, %._crit_edge.i44 ], [ 0, %bb.bb ]
  %i.qt = phi ptr [ %.pre34.i45, %._crit_edge.i44 ], [ %i.ql, %bb.bb ]
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qs
  store i8 0, ptr %i.qu, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.qv = icmp samesign ugt i32 %i.id, 3
  %i.qw = add nsw i32 %i.id, -4
  %spec.select.i.i.i = select i1 %i.qv, i32 %i.qw, i32 %i.id
  %i.qx = load i32, ptr %i.pd, align 8, !tbaa !104
  %i.qy = sub i32 %spec.select.i.i.i, %i.qx       ; 3 uses
  %i.qz = icmp ult i32 %i.qy, %i.ez
  br i1 %i.qz, label %.loopexit.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ra = sub nuw i32 %i.qy, %i.ez                ; 4 uses
  %i.rb = call i64 @fread(ptr noundef nonnull %i.i, i64 noundef 1, i64 noundef %i.fa, ptr noundef nonnull %i.z) #32, !inline_history !17
  %.not66.i.i.i = icmp eq i64 %i.rb, %i.fa
  br i1 %.not66.i.i.i, label %bb.bf, label %read_metadata_block_data_vorbis_comment_cb_.exit.i.i

bb.bf:                                            ; preds = %bb.be
  br i1 %.not.i.i.i.i, label %unpack_uint32_little_endian_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.bf
  br i1 %i.hl, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i

unpack_uint32_little_endian_.exit.thread.i.i.i:   ; preds = %bb.bf
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  store i32 0, ptr %i.rc, align 8, !tbaa !105
  br label %.thread.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.089.i.i.i.i = phi ptr [ %i.rd, %.lr.ph.i.i.i.i ], [ %i.fb, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %niter389 = phi i32 [ %niter389.next.3, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.rd = getelementptr inbounds i8, ptr %.089.i.i.i.i, i64 -4 ; 3 uses
  %niter389.next.3 = add i32 %niter389, 4         ; 2 uses
  %niter389.ncmp.3 = icmp eq i32 %niter389.next.3, %unroll_iter388
  br i1 %niter389.ncmp.3, label %unpack_uint32_little_endian_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !1

unpack_uint32_little_endian_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %i.re = getelementptr inbounds i8, ptr %.089.i.i.i.i, i64 -1
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !52
  %i.rg = zext i8 %i.rf to i32
  %i.rh = shl nuw nsw i32 %i.rg, 16
  %i.ri = getelementptr inbounds i8, ptr %.089.i.i.i.i, i64 -2
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !52
  %i.rk = zext i8 %i.rj to i32
  %i.rl = shl nuw nsw i32 %i.rk, 8
  %i.rm = or disjoint i32 %i.rh, %i.rl
  %i.rn = getelementptr inbounds i8, ptr %.089.i.i.i.i, i64 -3
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !52
  %i.rp = zext i8 %i.ro to i32
  %i.rq = or disjoint i32 %i.rm, %i.rp
  %i.rr = shl nuw i32 %i.rq, 8
  %i.rs = load i8, ptr %i.rd, align 1, !tbaa !52
  %i.rt = zext i8 %i.rs to i32
  %i.ru = or disjoint i32 %i.rr, %i.rt            ; 2 uses
  br i1 %lcmp.mod385.not, label %unpack_uint32_little_endian_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %unpack_uint32_little_endian_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.0710.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.ru, %unpack_uint32_little_endian_.exit.i.i.i.unr-lcssa ]
  %.089.i.i.i.i.epil.init = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.preheader ], [ %i.rd, %unpack_uint32_little_endian_.exit.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod387)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.0710.i.i.i.i.epil = phi i32 [ %i.rz, %.lr.ph.i.i.i.i.epil ], [ %.0710.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %.089.i.i.i.i.epil = phi ptr [ %i.rw, %.lr.ph.i.i.i.i.epil ], [ %.089.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %epil.iter384 = phi i32 [ %epil.iter384.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
end_hunk_1
begin_hunk_2_@chain_read_with_callbacks_:bb.a
  %i.do = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_RESERVED_LEN, align 4
  %i.dp = add i32 %i.do, %i.dn
  %i.dq = lshr i32 %i.dp, 3
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ds = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_NUM_TRACKS_LEN, align 4 ; 2 uses
  %i.dt = lshr i32 %i.ds, 3                       ; 4 uses
  %i.du = zext nneg i32 %i.dt to i64              ; 2 uses
  %.not.i41.i.i.i = icmp eq i32 %i.dt, 0
  %i.dv = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_OFFSET_LEN, align 4 ; 2 uses
  %i.dw = lshr i32 %i.dv, 3                       ; 4 uses
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.dw, 0
  %i.dy = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_NUMBER_LEN, align 4
  %i.dz = lshr i32 %i.dy, 3                       ; 2 uses
  %i.ea = zext nneg i32 %i.dz to i64              ; 3 uses
  %.not.i62.i.i.i.i = icmp eq i32 %i.dz, 0
  %i.eb = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_ISRC_LEN, align 4
  %i.ec = lshr i32 %i.eb, 3
  %i.ed = zext nneg i32 %i.ec to i64              ; 2 uses
  %i.ee = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_TYPE_LEN, align 4
  %i.ef = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_PRE_EMPHASIS_LEN, align 4
  %i.eg = add i32 %i.ef, %i.ee
  %i.eh = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_RESERVED_LEN, align 4
  %i.ei = add i32 %i.eg, %i.eh
  %i.ej = lshr i32 %i.ei, 3
  %i.ek = zext nneg i32 %i.ej to i64              ; 2 uses
  %i.el = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_NUM_INDICES_LEN, align 4
  %i.em = lshr i32 %i.el, 3                       ; 2 uses
  %i.en = zext nneg i32 %i.em to i64              ; 3 uses
  %.not.i69.i.i.i.i = icmp eq i32 %i.em, 0
  %i.eo = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_OFFSET_LEN, align 4 ; 2 uses
  %i.ep = lshr i32 %i.eo, 3                       ; 4 uses
  %i.eq = zext nneg i32 %i.ep to i64              ; 2 uses
  %.not.i77.i.i.i.i = icmp eq i32 %i.ep, 0
  %i.er = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_NUMBER_LEN, align 4
  %i.es = lshr i32 %i.er, 3                       ; 2 uses
  %i.et = zext nneg i32 %i.es to i64              ; 3 uses
  %.not.i85.i.i.i.i = icmp eq i32 %i.es, 0
  %i.eu = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_RESERVED_LEN, align 4
  %i.ev = lshr i32 %i.eu, 3
  %i.ew = zext nneg i32 %i.ev to i64              ; 2 uses
  %i.ex = getelementptr i8, ptr %i.d, i64 %i.ea
  %scevgep.i.i.i = getelementptr i8, ptr %i.ex, i64 -1
  %i.ey = getelementptr i8, ptr %i.d, i64 %i.en
  %scevgep64.i.i.i = getelementptr i8, ptr %i.ey, i64 -1
  %i.ez = getelementptr i8, ptr %i.d, i64 %i.et
  %scevgep65.i.i.i = getelementptr i8, ptr %i.ez, i64 -1
  %i.fa = load i32, ptr @FLAC__STREAM_METADATA_VORBIS_COMMENT_NUM_COMMENTS_LEN, align 4 ; 2 uses
  %i.fb = lshr i32 %i.fa, 3                       ; 6 uses
  %i.fc = zext nneg i32 %i.fb to i64              ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.fb, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %i.fh = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.fj = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.fk = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.fn = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.fo = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.fp = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.fu = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.fv = load i32, ptr @FLAC__STREAM_METADATA_APPLICATION_ID_LEN, align 4
  %i.fw = lshr i32 %i.fv, 3                       ; 4 uses
  %i.fx = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.gb = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.ge = getelementptr inbounds nuw i8, ptr %i.h, i64 7
  %i.gf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.gh = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.gi = getelementptr inbounds nuw i8, ptr %i.h, i64 11
  %i.gj = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.gk = getelementptr inbounds nuw i8, ptr %i.h, i64 13
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 14
  %i.gm = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.gn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 8 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %xtraiter = and i32 %i.ck, 3                    ; 3 uses
  %i.gt = icmp ult i32 %i.cj, 32
  %unroll_iter = and i32 %i.ck, 536870908
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod202 = icmp ne i32 %xtraiter, 0
  %xtraiter203 = and i32 %i.cn, 3                 ; 3 uses
  %i.gu = icmp ult i32 %i.cm, 32
  %unroll_iter208 = and i32 %i.cn, 536870908
  %lcmp.mod205.not = icmp eq i32 %xtraiter203, 0
  %lcmp.mod207 = icmp ne i32 %xtraiter203, 0
  %xtraiter210 = and i32 %i.cs, 3                 ; 3 uses
  %i.gv = icmp ult i32 %i.cr, 32
  %unroll_iter215 = and i32 %i.cs, 536870908
  %lcmp.mod212.not = icmp eq i32 %xtraiter210, 0
  %lcmp.mod214 = icmp ne i32 %xtraiter210, 0
  %xtraiter217 = and i32 %i.cv, 3                 ; 3 uses
  %i.gw = icmp ult i32 %i.cu, 32
  %unroll_iter222 = and i32 %i.cv, 536870908
  %lcmp.mod219.not = icmp eq i32 %xtraiter217, 0
  %lcmp.mod221 = icmp ne i32 %xtraiter217, 0
  %xtraiter224 = and i32 %i.cy, 3                 ; 3 uses
  %i.gx = icmp ult i32 %i.cx, 32
  %unroll_iter229 = and i32 %i.cy, 536870908
  %lcmp.mod226.not = icmp eq i32 %xtraiter224, 0
  %lcmp.mod228 = icmp ne i32 %xtraiter224, 0
  %xtraiter231 = and i32 %i.db, 3                 ; 3 uses
  %i.gy = icmp ult i32 %i.da, 32
  %unroll_iter236 = and i32 %i.db, 536870908
  %lcmp.mod233.not = icmp eq i32 %xtraiter231, 0
  %lcmp.mod235 = icmp ne i32 %xtraiter231, 0
  %xtraiter238 = and i32 %i.de, 3                 ; 3 uses
  %i.gz = icmp ult i32 %i.dd, 32
  %unroll_iter243 = and i32 %i.de, 536870908
  %lcmp.mod240.not = icmp eq i32 %xtraiter238, 0
  %lcmp.mod242 = icmp ne i32 %xtraiter238, 0
  %xtraiter245 = and i32 %i.dl, 3                 ; 3 uses
  %i.ha = icmp ult i32 %i.dk, 32
  %unroll_iter250 = and i32 %i.dl, 536870908
  %lcmp.mod247.not = icmp eq i32 %xtraiter245, 0
  %lcmp.mod249 = icmp ne i32 %xtraiter245, 0
  %xtraiter252 = and i32 %i.dt, 3                 ; 3 uses
  %i.hb = icmp ult i32 %i.ds, 32
  %unroll_iter257 = and i32 %i.dt, 536870908
  %lcmp.mod254.not = icmp eq i32 %xtraiter252, 0
  %lcmp.mod256 = icmp ne i32 %xtraiter252, 0
  %xtraiter259 = and i32 %i.dw, 3                 ; 3 uses
  %i.hc = icmp ult i32 %i.dv, 32
  %unroll_iter264 = and i32 %i.dw, 536870908
  %lcmp.mod261.not = icmp eq i32 %xtraiter259, 0
  %lcmp.mod263 = icmp ne i32 %xtraiter259, 0
  %xtraiter266 = and i32 %i.ep, 3                 ; 3 uses
  %i.hd = icmp ult i32 %i.eo, 32
  %unroll_iter271 = and i32 %i.ep, 536870908
  %lcmp.mod268.not = icmp eq i32 %xtraiter266, 0
  %lcmp.mod270 = icmp ne i32 %xtraiter266, 0
  %xtraiter273 = and i32 %i.fb, 3                 ; 3 uses
  %i.he = icmp ult i32 %i.fa, 32
  %unroll_iter278 = and i32 %i.fb, 536870908
  %lcmp.mod275.not = icmp eq i32 %xtraiter273, 0
  %lcmp.mod277 = icmp ne i32 %xtraiter273, 0
  br label %bb.aa

bb.aa:                                            ; preds = %chain_append_node_.exit.i, %bb.z
  %i.hf = call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #33 ; 12 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 11, ptr %i.gq, align 4, !tbaa !140
  br label %chain_read_cb_.exit

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #32
  %i.hh = call i64 %i.t(ptr noundef nonnull %i.i, i64 noundef 1, i64 noundef 4, ptr noundef %1) #32, !inline_history !13
  %.not.i58.i = icmp eq i64 %i.hh, 4
  br i1 %.not.i58.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #32
  %i.hi = load ptr, ptr %i.hf, align 8, !tbaa !138 ; 2 uses
  %.not.i59.i = icmp eq ptr %i.hi, null
  br i1 %.not.i59.i, label %node_delete_.exit.i19, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @FLAC__metadata_object_delete(ptr noundef nonnull %i.hi) #32
  br label %node_delete_.exit.i19

node_delete_.exit.i19:                            ; preds = %bb.ae, %bb.ad
  call void @free(ptr noundef nonnull %i.hf) #32
  store i32 6, ptr %i.gq, align 4, !tbaa !140
  br label %chain_read_cb_.exit

bb.af:                                            ; preds = %bb.ac
  %i.hj = load i8, ptr %i.i, align 1, !tbaa !52   ; 3 uses
  %i.hk = and i8 %i.hj, 127
  %i.hl = zext nneg i8 %i.hk to i32
  %i.hm = load i8, ptr %i.cg, align 1, !tbaa !52
  %i.hn = zext i8 %i.hm to i32
  %i.ho = load i8, ptr %i.ch, align 1, !tbaa !52
  %i.hp = zext i8 %i.ho to i32
  %i.hq = shl nuw nsw i32 %i.hn, 16
  %i.hr = shl nuw nsw i32 %i.hp, 8
  %i.hs = or disjoint i32 %i.hr, %i.hq
  %i.ht = load i8, ptr %i.ci, align 1, !tbaa !52
  %i.hu = zext i8 %i.ht to i32
  %i.hv = or disjoint i32 %i.hs, %i.hu            ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #32
  %i.hw = call ptr @FLAC__metadata_object_new(i32 noundef %i.hl) #32 ; 41 uses
  store ptr %i.hw, ptr %i.hf, align 8, !tbaa !138
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %node_delete_.exit61.i, label %bb.ag

node_delete_.exit61.i:                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.hf) #32
  store i32 11, ptr %i.gq, align 4, !tbaa !140
  br label %chain_read_cb_.exit

bb.ag:                                            ; preds = %bb.af
  %.lobit.i.i = lshr i8 %i.hj, 7
  %i.hy = zext nneg i8 %.lobit.i.i to i32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !76
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i32 %i.hv, ptr %i.ia, align 8, !tbaa !78
  %i.ib = load i32, ptr %i.hw, align 8, !tbaa !79
  switch i32 %i.ib, label %bb.cn [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
    i32 2, label %bb.aj
    i32 3, label %bb.ao
    i32 4, label %bb.au
    i32 5, label %bb.bg
    i32 6, label %bb.bv
  ]

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #32
  %i.ic = call i64 %i.t(ptr noundef nonnull %i.h, i64 noundef 1, i64 noundef 34, ptr noundef %1) #32, !inline_history !14
  %.not.i.i.i = icmp eq i64 %i.ic, 34
  br i1 %.not.i.i.i, label %.lr.ph.i.preheader.i.i.i, label %read_metadata_block_data_streaminfo_cb_.exit.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.ah
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.ie = load i8, ptr %i.h, align 16, !tbaa !52
  %i.if = zext i8 %i.ie to i32
  %i.ig = shl nuw nsw i32 %i.if, 8
  %i.ih = load i8, ptr %i.fy, align 1, !tbaa !52
  %i.ii = zext i8 %i.ih to i32
  %i.ij = or disjoint i32 %i.ig, %i.ii
  store i32 %i.ij, ptr %i.id, align 8, !tbaa !81
  %i.ik = load i8, ptr %i.fz, align 2, !tbaa !52
  %i.il = zext i8 %i.ik to i32
  %i.im = shl nuw nsw i32 %i.il, 8
  %i.in = load i8, ptr %i.ga, align 1, !tbaa !52
  %i.io = zext i8 %i.in to i32
  %i.ip = or disjoint i32 %i.im, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hw, i64 20
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !82
  %i.ir = load i8, ptr %i.gb, align 4, !tbaa !52
  %i.is = zext i8 %i.ir to i32
  %i.it = load i8, ptr %i.gc, align 1, !tbaa !52
  %i.iu = zext i8 %i.it to i32
  %i.iv = shl nuw nsw i32 %i.is, 16
  %i.iw = shl nuw nsw i32 %i.iu, 8
  %i.ix = or disjoint i32 %i.iw, %i.iv
  %i.iy = load i8, ptr %i.gd, align 2, !tbaa !52
  %i.iz = zext i8 %i.iy to i32
  %i.ja = or disjoint i32 %i.ix, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  store i32 %i.ja, ptr %i.jb, align 8, !tbaa !83
  %i.jc = load i8, ptr %i.ge, align 1, !tbaa !52
  %i.jd = zext i8 %i.jc to i32
  %i.je = load i8, ptr %i.gf, align 8, !tbaa !52
  %i.jf = zext i8 %i.je to i32
  %i.jg = shl nuw nsw i32 %i.jd, 16
  %i.jh = shl nuw nsw i32 %i.jf, 8
  %i.ji = or disjoint i32 %i.jh, %i.jg
  %i.jj = load i8, ptr %i.gg, align 1, !tbaa !52
  %i.jk = zext i8 %i.jj to i32
  %i.jl = or disjoint i32 %i.ji, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hw, i64 28
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !84
  %i.jn = load i8, ptr %i.gh, align 2, !tbaa !52
  %i.jo = zext i8 %i.jn to i32
  %i.jp = load i8, ptr %i.gi, align 1, !tbaa !52
  %i.jq = zext i8 %i.jp to i32
  %i.jr = shl nuw nsw i32 %i.jo, 12
  %i.js = shl nuw nsw i32 %i.jq, 4
  %i.jt = or disjoint i32 %i.js, %i.jr
  %i.ju = load i8, ptr %i.gj, align 4, !tbaa !52  ; 3 uses
  %i.jv = lshr i8 %i.ju, 4
  %i.jw = zext nneg i8 %i.jv to i32
  %i.jx = or disjoint i32 %i.jt, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  store i32 %i.jx, ptr %i.jy, align 8, !tbaa !85
  %i.jz = lshr i8 %i.ju, 1
  %i.ka = and i8 %i.jz, 7
  %narrow.i.i.i = add nuw nsw i8 %i.ka, 1
  %i.kb = zext nneg i8 %narrow.i.i.i to i32
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hw, i64 36
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !86
  %i.kd = shl i8 %i.ju, 4
  %i.ke = and i8 %i.kd, 16
  %i.kf = load i8, ptr %i.gk, align 1, !tbaa !52  ; 2 uses
  %i.kg = lshr i8 %i.kf, 4
  %i.kh = or disjoint i8 %i.ke, 1
  %narrow27.i.i.i = add nuw nsw i8 %i.kh, %i.kg
  %i.ki = zext nneg i8 %narrow27.i.i.i to i32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  store i32 %i.ki, ptr %i.kj, align 8, !tbaa !87
  %i.kk = load i8, ptr %i.gl, align 2, !tbaa !52
  %i.kl = zext i8 %i.kk to i64
  %i.km = load i8, ptr %i.gm, align 1, !tbaa !52
  %i.kn = zext i8 %i.km to i64
  %i.ko = shl nuw nsw i64 %i.kl, 16
  %i.kp = shl nuw nsw i64 %i.kn, 8
  %i.kq = or disjoint i64 %i.kp, %i.ko
  %i.kr = load i8, ptr %i.gn, align 16, !tbaa !52
  %i.ks = zext i8 %i.kr to i64
  %i.kt = or disjoint i64 %i.kq, %i.ks
  %i.ku = shl nuw nsw i64 %i.kt, 8
  %i.kv = load i8, ptr %i.go, align 1, !tbaa !52
  %i.kw = zext i8 %i.kv to i64
  %i.kx = or disjoint i64 %i.ku, %i.kw
  %i.ky = and i8 %i.kf, 15
  %i.kz = zext nneg i8 %i.ky to i64
  %i.la = shl nuw nsw i64 %i.kz, 32
  %i.lb = or disjoint i64 %i.kx, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !88
  %i.ld = getelementptr inbounds nuw i8, ptr %i.hw, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ld, ptr noundef nonnull align 2 dereferenceable(16) %i.gp, i64 noundef 16, i1 noundef false) #32
  br label %read_metadata_block_data_streaminfo_cb_.exit.i.i

read_metadata_block_data_streaminfo_cb_.exit.i.i: ; preds = %.lr.ph.i.preheader.i.i.i, %bb.ah
  %.0.i.i.i = phi i32 [ 0, %.lr.ph.i.preheader.i.i.i ], [ 6, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  br label %read_metadata_block_data_cb_.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.le = zext nneg i32 %i.hv to i64
  %i.lf = call i32 %i.w(ptr noundef %1, i64 noundef %i.le, i32 noundef 1) #32, !inline_history !209
  %.not.i31.i.i = icmp eq i32 %i.lf, 0
  br i1 %.not.i31.i.i, label %read_metadata_block_data_cb_.exit.thread91.i, label %read_metadata_block_data_cb_.exit.thread.i

bb.aj:                                            ; preds = %bb.ag
  %i.lg = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.lh = call i64 %i.t(ptr noundef nonnull %i.lg, i64 noundef 1, i64 noundef %i.fx, ptr noundef %1) #32, !inline_history !15
  %.not.i32.i.i = icmp ne i64 %i.lh, %i.fx
  %i.li = icmp samesign ult i32 %i.hv, %i.fw
  %or.cond.i.i.i = or i1 %i.li, %.not.i32.i.i
  br i1 %or.cond.i.i.i, label %read_metadata_block_data_cb_.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lj = icmp eq i32 %i.hv, %i.fw
  br i1 %i.lj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.lk = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  store ptr null, ptr %i.lk, align 8, !tbaa !90
  br label %read_metadata_block_data_cb_.exit.thread91.i

bb.am:                                            ; preds = %bb.ak
  %i.ll = sub nuw nsw i32 %i.hv, %i.fw
  %i.lm = zext nneg i32 %i.ll to i64              ; 3 uses
  %i.ln = call noalias ptr @malloc(i64 noundef %i.lm) #35 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  store ptr %i.ln, ptr %i.lo, align 8, !tbaa !90
  %i.lp = icmp eq ptr %i.ln, null
  br i1 %i.lp, label %read_metadata_block_data_cb_.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lq = call i64 %i.t(ptr noundef nonnull %i.ln, i64 noundef 1, i64 noundef %i.lm, ptr noundef %1) #32, !inline_history !15
  %.not22.i.i.i = icmp eq i64 %i.lq, %i.lm
  br i1 %.not22.i.i.i, label %read_metadata_block_data_cb_.exit.thread91.i, label %read_metadata_block_data_cb_.exit.thread.i

bb.ao:                                            ; preds = %bb.ag
  %i.lr = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #32
  %i.ls = urem i32 %i.hv, 18
  %i.lt = udiv exact i32 %i.hv, 18                ; 2 uses
  %.not.i34.i.i = icmp eq i32 %i.ls, 0
  br i1 %.not.i34.i.i, label %bb.ap, label %read_metadata_block_data_seektable_cb_.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.lt, ptr %i.lr, align 8, !tbaa !92
  %4 = icmp eq i32 %i.hv, 0
  br i1 %4, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.lu = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  store ptr null, ptr %i.lu, align 8, !tbaa !93
  br label %read_metadata_block_data_seektable_cb_.exit.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.lv = zext nneg i32 %i.lt to i64
  %i.lw = call ptr @safe_malloc_mul_2op_p(i64 noundef %i.lv, i64 noundef 24) #32 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24 ; 2 uses
  store ptr %i.lw, ptr %i.lx, align 8, !tbaa !93
  %i.ly = icmp eq ptr %i.lw, null
  br i1 %i.ly, label %read_metadata_block_data_seektable_cb_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.pre.i.i.i = load i32, ptr %i.lr, align 8, !tbaa !92
  %.not37.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not37.i.i.i, label %read_metadata_block_data_seektable_cb_.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i.preheader.i35.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.preheader.i35.i.i ], [ 0, %bb.as ] ; 2 uses
  %i.lz = call i64 %i.t(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef 18, ptr noundef %1) #32, !inline_history !16
  %.not20.i.i.i = icmp eq i64 %i.lz, 18
  br i1 %.not20.i.i.i, label %.lr.ph.i.preheader.i35.i.i, label %read_metadata_block_data_seektable_cb_.exit.i.i

.lr.ph.i.preheader.i35.i.i:                       ; preds = %bb.at
  %i.ma = load i8, ptr %i.g, align 16, !tbaa !52
  %i.mb = zext i8 %i.ma to i64
  %i.mc = load i8, ptr %i.fh, align 1, !tbaa !52
  %i.md = zext i8 %i.mc to i64
  %i.me = shl nuw nsw i64 %i.mb, 16
  %i.mf = shl nuw nsw i64 %i.md, 8
  %i.mg = or disjoint i64 %i.mf, %i.me
  %i.mh = load i8, ptr %i.fi, align 2, !tbaa !52
  %i.mi = zext i8 %i.mh to i64
  %i.mj = or disjoint i64 %i.mg, %i.mi
  %i.mk = load i8, ptr %i.fj, align 1, !tbaa !52
  %i.ml = zext i8 %i.mk to i64
  %i.mm = load i8, ptr %i.fk, align 4, !tbaa !52
  %i.mn = zext i8 %i.mm to i64
  %i.mo = load i8, ptr %i.fl, align 1, !tbaa !52
  %i.mp = zext i8 %i.mo to i64
  %i.mq = shl nuw nsw i64 %i.mj, 32
  %i.mr = shl nuw nsw i64 %i.ml, 24
  %i.ms = shl nuw nsw i64 %i.mn, 16
  %i.mt = or disjoint i64 %i.ms, %i.mr
  %i.mu = or disjoint i64 %i.mt, %i.mq
  %i.mv = load i8, ptr %i.fm, align 2, !tbaa !52
  %i.mw = zext i8 %i.mv to i64
  %i.mx = or disjoint i64 %i.mu, %i.mw
  %i.my = shl nuw nsw i64 %i.mp, 16
  %i.mz = shl nuw i64 %i.mx, 8
  %i.na = load i8, ptr %i.fn, align 1, !tbaa !52
  %i.nb = zext i8 %i.na to i64
  %i.nc = or disjoint i64 %i.my, %i.nb
  %i.nd = or disjoint i64 %i.nc, %i.mz
  %i.ne = load ptr, ptr %i.lx, align 8, !tbaa !93
  %i.nf = getelementptr inbounds nuw [24 x i8], ptr %i.ne, i64 %indvars.iv.i.i.i ; 3 uses
  store i64 %i.nd, ptr %i.nf, align 8, !tbaa !95
  %i.ng = load i8, ptr %i.fe, align 8, !tbaa !52
  %i.nh = zext i8 %i.ng to i64
  %i.ni = load i8, ptr %i.fo, align 1, !tbaa !52
  %i.nj = zext i8 %i.ni to i64
  %i.nk = shl nuw nsw i64 %i.nh, 16
  %i.nl = shl nuw nsw i64 %i.nj, 8
  %i.nm = or disjoint i64 %i.nl, %i.nk
  %i.nn = load i8, ptr %i.fp, align 2, !tbaa !52
  %i.no = zext i8 %i.nn to i64
  %i.np = or disjoint i64 %i.nm, %i.no
  %i.nq = load i8, ptr %i.fq, align 1, !tbaa !52
  %i.nr = zext i8 %i.nq to i64
  %i.ns = load i8, ptr %i.fr, align 4, !tbaa !52
  %i.nt = zext i8 %i.ns to i64
  %i.nu = load i8, ptr %i.fs, align 1, !tbaa !52
  %i.nv = zext i8 %i.nu to i64
  %i.nw = shl nuw nsw i64 %i.np, 32
  %i.nx = shl nuw nsw i64 %i.nr, 24
  %i.ny = shl nuw nsw i64 %i.nt, 16
  %i.nz = or disjoint i64 %i.ny, %i.nx
  %i.oa = or disjoint i64 %i.nz, %i.nw
  %i.ob = load i8, ptr %i.ft, align 2, !tbaa !52
  %i.oc = zext i8 %i.ob to i64
  %i.od = or disjoint i64 %i.oa, %i.oc
  %i.oe = shl nuw nsw i64 %i.nv, 16
  %i.of = shl nuw i64 %i.od, 8
  %i.og = load i8, ptr %i.fu, align 1, !tbaa !52
  %i.oh = zext i8 %i.og to i64
  %i.oi = or disjoint i64 %i.oe, %i.oh
  %i.oj = or disjoint i64 %i.oi, %i.of
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i64 %i.oj, ptr %i.ok, align 8, !tbaa !96
  %i.ol = load i8, ptr %i.ff, align 16, !tbaa !52
  %i.om = zext i8 %i.ol to i32
  %i.on = shl nuw nsw i32 %i.om, 8
  %i.oo = load i8, ptr %i.fg, align 1, !tbaa !52
  %i.op = zext i8 %i.oo to i32
  %i.oq = or disjoint i32 %i.on, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store i32 %i.oq, ptr %i.or, align 8, !tbaa !97
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.os = load i32, ptr %i.lr, align 8, !tbaa !92
  %i.ot = zext i32 %i.os to i64
  %i.ou = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.ot
  br i1 %i.ou, label %bb.at, label %read_metadata_block_data_seektable_cb_.exit.i.i, !llvm.loop !0

read_metadata_block_data_seektable_cb_.exit.i.i:  ; preds = %.lr.ph.i.preheader.i35.i.i, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.018.i.i.i = phi i32 [ 5, %bb.ao ], [ 11, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.aq ], [ 0, %.lr.ph.i.preheader.i35.i.i ], [ 6, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  br label %read_metadata_block_data_cb_.exit.i

bb.au:                                            ; preds = %bb.ag
  %i.ov = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  %i.ow = call fastcc i32 @read_metadata_block_data_vorbis_comment_entry_cb_(ptr noundef %1, ptr noundef readonly %i.t, ptr noundef nonnull %i.ov, i32 noundef %i.hv) ; 3 uses
  %i.ox = icmp samesign ugt i32 %i.hv, 3
  %i.oy = add nsw i32 %i.hv, -4
  %spec.select.i.i.i = select i1 %i.ox, i32 %i.oy, i32 %i.hv ; 2 uses
  switch i32 %i.ow, label %read_metadata_block_data_vorbis_comment_cb_.exit.i.i [
    i32 5, label %.loopexit.i.i.i
    i32 0, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  %i.oz = load i32, ptr %i.ov, align 8, !tbaa !104
  %i.pa = sub i32 %spec.select.i.i.i, %i.oz       ; 3 uses
  %i.pb = icmp ult i32 %i.pa, %i.fb
  br i1 %i.pb, label %.loopexit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pc = sub nuw i32 %i.pa, %i.fb                ; 4 uses
  %i.pd = call i64 %i.t(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef %i.fc, ptr noundef %1) #32, !inline_history !17
  %.not66.i.i.i = icmp eq i64 %i.pd, %i.fc
  br i1 %.not66.i.i.i, label %bb.ax, label %read_metadata_block_data_vorbis_comment_cb_.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not.i.i.i.i, label %unpack_uint32_little_endian_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.ax
  br i1 %i.he, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i

unpack_uint32_little_endian_.exit.thread.i.i.i:   ; preds = %bb.ax
  %i.pe = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  store i32 0, ptr %i.pe, align 8, !tbaa !105
  br label %.thread.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.089.i.i.i.i = phi ptr [ %i.pf, %.lr.ph.i.i.i.i ], [ %i.fd, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %niter279 = phi i32 [ %niter279.next.3, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.pf = getelementptr inbounds i8, ptr %.089.i.i.i.i, i64 -4 ; 3 uses
  %niter279.next.3 = add i32 %niter279, 4         ; 2 uses
  %niter279.ncmp.3 = icmp eq i32 %niter279.next.3, %unroll_iter278
  br i1 %niter279.ncmp.3, label %unpack_uint32_little_endian_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !1

unpack_uint32_little_endian_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %i.pg = getelementptr inbounds i8, ptr %.089.i.i.i.i, i64 -1
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !52
  %i.pi = zext i8 %i.ph to i32
  %i.pj = shl nuw nsw i32 %i.pi, 16
  %i.pk = getelementptr inbounds i8, ptr %.089.i.i.i.i, i64 -2
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !52
  %i.pm = zext i8 %i.pl to i32
  %i.pn = shl nuw nsw i32 %i.pm, 8
  %i.po = or disjoint i32 %i.pj, %i.pn
  %i.pp = getelementptr inbounds i8, ptr %.089.i.i.i.i, i64 -3
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !52
  %i.pr = zext i8 %i.pq to i32
  %i.ps = or disjoint i32 %i.po, %i.pr
  %i.pt = shl nuw i32 %i.ps, 8
  %i.pu = load i8, ptr %i.pf, align 1, !tbaa !52
  %i.pv = zext i8 %i.pu to i32
  %i.pw = or disjoint i32 %i.pt, %i.pv            ; 2 uses
  br i1 %lcmp.mod275.not, label %unpack_uint32_little_endian_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %unpack_uint32_little_endian_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.0710.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.pw, %unpack_uint32_little_endian_.exit.i.i.i.unr-lcssa ]
  %.089.i.i.i.i.epil.init = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.preheader ], [ %i.pf, %unpack_uint32_little_endian_.exit.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod277)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.0710.i.i.i.i.epil = phi i32 [ %i.qb, %.lr.ph.i.i.i.i.epil ], [ %.0710.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %.089.i.i.i.i.epil = phi ptr [ %i.py, %.lr.ph.i.i.i.i.epil ], [ %.089.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %epil.iter274 = phi i32 [ %epil.iter274.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.px = shl i32 %.0710.i.i.i.i.epil, 8
  %i.py = getelementptr inbounds i8, ptr %.089.i.i.i.i.epil, i64 -1 ; 2 uses
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !52
  %i.qa = zext i8 %i.pz to i32
  %i.qb = or disjoint i32 %i.px, %i.qa            ; 2 uses
  %epil.iter274.next = add i32 %epil.iter274, 1   ; 2 uses
  %epil.iter274.cmp.not = icmp eq i32 %epil.iter274.next, %xtraiter273
  br i1 %epil.iter274.cmp.not, label %unpack_uint32_little_endian_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !210

unpack_uint32_little_endian_.exit.i.i.i:          ; preds = %.lr.ph.i.i.i.i.epil, %unpack_uint32_little_endian_.exit.i.i.i.unr-lcssa
  %.lcssa186 = phi i32 [ %i.pw, %unpack_uint32_little_endian_.exit.i.i.i.unr-lcssa ], [ %i.qb, %.lr.ph.i.i.i.i.epil ] ; 4 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.hw, i64 32 ; 5 uses
  store i32 %.lcssa186, ptr %i.qc, align 8, !tbaa !105
  %i.qd = icmp eq i32 %.lcssa186, 0
  br i1 %i.qd, label %.thread.i.i.i, label %bb.ay

.thread.i.i.i:                                    ; preds = %unpack_uint32_little_endian_.exit.i.i.i, %unpack_uint32_little_endian_.exit.thread.i.i.i
  %i.qe = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  store ptr null, ptr %i.qe, align 8, !tbaa !106
  br label %.loopexit.i.i.i

bb.ay:                                            ; preds = %unpack_uint32_little_endian_.exit.i.i.i
  %i.qf = lshr i32 %i.pc, 2
  %i.qg = icmp ugt i32 %.lcssa186, %i.qf
  br i1 %i.qg, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.qc, align 8, !tbaa !105
  br label %.loopexit.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.qh = zext nneg i32 %.lcssa186 to i64
  %i.qi = call noalias ptr @calloc(i64 noundef %i.qh, i64 noundef 16) #33 ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.hw, i64 40 ; 2 uses
  store ptr %i.qi, ptr %i.qj, align 8, !tbaa !106
  %i.qk = icmp eq ptr %i.qi, null
  br i1 %i.qk, label %bb.bb, label %.lr.ph.i36.i.i

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.qc, align 8, !tbaa !105
  br label %read_metadata_block_data_vorbis_comment_cb_.exit.i.i

.lr.ph.i36.i.i:                                   ; preds = %bb.ba, %bb.bd
  %i.ql = phi ptr [ %i.qr, %bb.bd ], [ %i.qi, %bb.ba ]
  %indvars.iv.i37.i.i = phi i64 [ %indvars.iv.next.i38.i.i, %bb.bd ], [ 0, %bb.ba ] ; 4 uses
  %.15480.i.i.i = phi i32 [ %i.qu, %bb.bd ], [ %i.pc, %bb.ba ] ; 4 uses
  %i.qm = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %indvars.iv.i37.i.i
  %i.qn = call fastcc i32 @read_metadata_block_data_vorbis_comment_entry_cb_(ptr noundef %1, ptr noundef readonly %i.t, ptr noundef %i.qm, i32 noundef %.15480.i.i.i) ; 2 uses
  %i.qo = icmp ugt i32 %.15480.i.i.i, 3
  %i.qp = add i32 %.15480.i.i.i, -4
  %spec.select70.i.i.i = select i1 %i.qo, i32 %i.qp, i32 %.15480.i.i.i ; 2 uses
  switch i32 %i.qn, label %read_metadata_block_data_vorbis_comment_cb_.exit.i.i [
    i32 5, label %bb.bc
    i32 0, label %bb.bd
  ]

bb.bc:                                            ; preds = %.lr.ph.i36.i.i
  %i.qq = trunc nuw i64 %indvars.iv.i37.i.i to i32
  store i32 %i.qq, ptr %i.qc, align 8, !tbaa !105
  br label %.loopexit.i.i.i

bb.bd:                                            ; preds = %.lr.ph.i36.i.i
  %i.qr = load ptr, ptr %i.qj, align 8, !tbaa !106 ; 2 uses
  %i.qs = getelementptr inbounds nuw [16 x i8], ptr %i.qr, i64 %indvars.iv.i37.i.i
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !100
  %i.qu = sub i32 %spec.select70.i.i.i, %i.qt     ; 2 uses
  %indvars.iv.next.i38.i.i = add nuw nsw i64 %indvars.iv.i37.i.i, 1 ; 2 uses
  %i.qv = load i32, ptr %i.qc, align 8, !tbaa !105
  %i.qw = zext i32 %i.qv to i64
  %i.qx = icmp samesign ult i64 %indvars.iv.next.i38.i.i, %i.qw
  br i1 %i.qx, label %.lr.ph.i36.i.i, label %.loopexit.i.i.i, !llvm.loop !2

.loopexit.i.i.i:                                  ; preds = %bb.bd, %bb.bc, %bb.az, %.thread.i.i.i, %bb.av, %bb.au
  %.3.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.au ], [ %i.pa, %bb.av ], [ %spec.select70.i.i.i, %bb.bc ], [ %i.pc, %bb.az ], [ %i.pc, %.thread.i.i.i ], [ %i.qu, %bb.bd ] ; 2 uses
  %.1.i.i.i = phi i32 [ %i.ow, %bb.au ], [ 0, %bb.av ], [ 5, %bb.bc ], [ 5, %bb.az ], [ 0, %.thread.i.i.i ], [ 0, %bb.bd ]
  %.not68.i.i.i = icmp eq i32 %.3.i.i.i, 0
  br i1 %.not68.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.loopexit.i.i.i
  %i.qy = zext i32 %.3.i.i.i to i64
  %i.qz = call i32 %i.w(ptr noundef %1, i64 noundef %i.qy, i32 noundef 1) #32, !inline_history !17
  %.not69.i.i.i = icmp eq i32 %i.qz, 0
  br i1 %.not69.i.i.i, label %bb.bf, label %read_metadata_block_data_vorbis_comment_cb_.exit.i.i

bb.bf:                                            ; preds = %bb.be, %.loopexit.i.i.i
  br label %read_metadata_block_data_vorbis_comment_cb_.exit.i.i

read_metadata_block_data_vorbis_comment_cb_.exit.i.i: ; preds = %.lr.ph.i36.i.i, %bb.bf, %bb.be, %bb.bb, %bb.aw, %bb.au
  %.055.i.i.i = phi i32 [ 7, %bb.be ], [ %.1.i.i.i, %bb.bf ], [ 11, %bb.bb ], [ %i.ow, %bb.au ], [ 6, %bb.aw ], [ %i.qn, %.lr.ph.i36.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  br label %read_metadata_block_data_cb_.exit.i

bb.bg:                                            ; preds = %bb.ag
  %i.ra = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  %i.rb = call i64 %i.t(ptr noundef nonnull %i.ra, i64 noundef 1, i64 noundef %i.dj, ptr noundef %1) #32, !inline_history !18
  %.not.i39.i.i = icmp eq i64 %i.rb, %i.dj
  br i1 %.not.i39.i.i, label %bb.bh, label %read_metadata_block_data_cuesheet_cb_.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.rc = call i64 %i.t(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef %i.dm, ptr noundef %1) #32, !inline_history !18
  %.not36.i.i.i = icmp eq i64 %i.rc, %i.dm
  br i1 %.not36.i.i.i, label %bb.bi, label %read_metadata_block_data_cuesheet_cb_.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  br i1 %.not.i.i40.i.i, label %unpack_uint64_.exit.i.i.i, label %.lr.ph.i.i41.i.i.preheader

.lr.ph.i.i41.i.i.preheader:                       ; preds = %bb.bi
  br i1 %i.ha, label %.lr.ph.i.i41.i.i.epil.preheader, label %.lr.ph.i.i41.i.i

.lr.ph.i.i41.i.i:                                 ; preds = %.lr.ph.i.i41.i.i.preheader, %.lr.ph.i.i41.i.i
  %.058.i.i.i.i = phi i64 [ %i.rw, %.lr.ph.i.i41.i.i ], [ 0, %.lr.ph.i.i41.i.i.preheader ]
  %.067.i.i.i.i = phi ptr [ %i.rt, %.lr.ph.i.i41.i.i ], [ %i.e, %.lr.ph.i.i41.i.i.preheader ] ; 5 uses
  %niter251 = phi i32 [ %niter251.next.3, %.lr.ph.i.i41.i.i ], [ 0, %.lr.ph.i.i41.i.i.preheader ]
  %i.rd = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i, i64 1
  %i.re = load i8, ptr %.067.i.i.i.i, align 1, !tbaa !52
  %i.rf = zext i8 %i.re to i64
  %i.rg = shl i64 %.058.i.i.i.i, 16
  %i.rh = shl nuw nsw i64 %i.rf, 8
  %i.ri = or disjoint i64 %i.rg, %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i, i64 2
  %i.rk = load i8, ptr %i.rd, align 1, !tbaa !52
  %i.rl = zext i8 %i.rk to i64
  %i.rm = or disjoint i64 %i.ri, %i.rl
end_hunk_2
