Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wtvdec?download=true
inline.NumInlined: 26
inline.NumDeleted: 11
begin_hunk_0_@wtvfile_open2:bb.a
  %i.dy = load i32, ptr %i.di, align 8, !tbaa !59
  %i.dz = add nsw i32 %i.dy, %spec.select.i60.i   ; 2 uses
  store i32 %i.dz, ptr %i.di, align 8, !tbaa !59
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.df
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %read_ints.exit62.i, %.._crit_edge.loopexit_crit_edge.i, %bb.y
  %.pre.i = phi i32 [ 0, %bb.y ], [ %.pre.pre.pre.i, %.._crit_edge.loopexit_crit_edge.i ], [ %i.dz, %read_ints.exit62.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.ac

bb.ab:                                            ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.cd) #11
  tail call void @av_free(ptr noundef nonnull %i.ck) #11
  br label %.thread84

bb.ac:                                            ; preds = %._crit_edge.i, %read_ints.exit.i
  %i.ea = phi i32 [ %.pre.i, %._crit_edge.i ], [ %spec.select.i.i, %read_ints.exit.i ]
  %.not47.i = icmp sgt i64 %i.by, -1
  %i.eb = select i1 %.not47.i, i32 18, i32 12
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  store i32 %i.eb, ptr %i.ec, align 8, !tbaa !60
  %.not48.i = icmp eq i32 %i.ea, 0
  br i1 %.not48.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.ed) #11
  call void @av_freep(ptr noundef nonnull %i.a) #11
  br label %.thread84

bb.ae:                                            ; preds = %bb.ac, %.thread79.i
  %i.ee = phi ptr [ %i.cp, %.thread79.i ], [ %i.ec, %bb.ac ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 3 uses
  %i.eg = load ptr, ptr %i.ce, align 8, !tbaa !32
  %i.eh = tail call i64 @avio_size(ptr noundef %i.eg) #11 ; 2 uses
  %i.ei = icmp sgt i64 %i.eh, -1
  %.pre68.i = load i32, ptr %i.ef, align 8, !tbaa !59 ; 3 uses
  br i1 %i.ei, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !58
  %i.el = sext i32 %.pre68.i to i64
  %i.em = getelementptr [4 x i8], ptr %i.ek, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 -4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !55
  %i.ep = zext i32 %i.eo to i64
  %i.eq = shl nuw nsw i64 %i.ep, 12
  %i.er = icmp samesign ugt i64 %i.eq, %i.eh
  br i1 %i.er, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.9) #11
  %.pre67.i = load i32, ptr %i.ef, align 8, !tbaa !59
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.es = phi i32 [ %.pre67.i, %bb.ag ], [ %.pre68.i, %bb.af ], [ %.pre68.i, %bb.ae ]
  %i.et = and i64 %i.by, 281474976710655          ; 3 uses
  %i.eu = sext i32 %i.es to i64
  %i.ev = load i32, ptr %i.ee, align 8, !tbaa !60
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = shl i64 %i.eu, %i.ew                    ; 2 uses
  %i.ey = icmp ugt i64 %i.et, %i.ex
  br i1 %i.ey, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.10, i64 noundef %i.et, i64 noundef %i.ex) #11
  %i.ez = load i32, ptr %i.ef, align 8, !tbaa !59
  %i.fa = sext i32 %i.ez to i64
  %i.fb = load i32, ptr %i.ee, align 8, !tbaa !60
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = shl i64 %i.fa, %i.fc
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.035.i = phi i64 [ %i.fd, %bb.ai ], [ %i.et, %bb.ah ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  store i64 %.035.i, ptr %i.fe, align 8, !tbaa !61
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i64 0, ptr %i.ff, align 8, !tbaa !62
  %i.fg = load ptr, ptr %i.ce, align 8, !tbaa !32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !58
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !55
  %i.fk = zext i32 %i.fj to i64
  %i.fl = shl nuw nsw i64 %i.fk, 12
  %i.fm = tail call i64 @avio_seek(ptr noundef %i.fg, i64 noundef %i.fl, i32 noundef 0) #11
  %i.fn = icmp slt i64 %i.fm, 0
  br i1 %i.fn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @av_freep(ptr noundef nonnull %i.fh) #11
  call void @av_freep(ptr noundef nonnull %i.a) #11
  br label %.thread84

bb.al:                                            ; preds = %bb.aj
  %i.fo = load ptr, ptr %i.ce, align 8, !tbaa !32
  store ptr %i.fo, ptr %i.ck, align 8, !tbaa !63
  %i.fp = load i32, ptr %i.ee, align 8, !tbaa !60
  %i.fq = shl nuw i32 1, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = tail call noalias ptr @av_malloc(i64 noundef %i.fr) #11 ; 3 uses
  store ptr %i.fs, ptr %i.b, align 8, !tbaa !64
  %.not49.i = icmp eq ptr %i.fs, null
  br i1 %.not49.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @av_freep(ptr noundef nonnull %i.fh) #11
  call void @av_freep(ptr noundef nonnull %i.a) #11
  br label %.thread84

bb.an:                                            ; preds = %bb.al
  %i.ft = load i32, ptr %i.ee, align 8, !tbaa !60
  %i.fu = shl nuw i32 1, %i.ft
  %i.fv = tail call ptr @avio_alloc_context(ptr noundef nonnull %i.fs, i32 noundef %i.fu, i32 noundef 0, ptr noundef nonnull %i.ck, ptr noundef nonnull @wtvfile_read_packet, ptr noundef null, ptr noundef nonnull @wtvfile_seek) #11 ; 2 uses
  %.not50.i = icmp eq ptr %i.fv, null
  br i1 %.not50.i, label %bb.ao, label %.thread84

bb.ao:                                            ; preds = %bb.an
  call void @av_freep(ptr noundef nonnull %i.b) #11
  %i.fw = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  call void @av_freep(ptr noundef nonnull %i.fx) #11
  call void @av_freep(ptr noundef nonnull %i.a) #11
  br label %.thread84

.thread84:                                        ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak, %bb.ad, %bb.ab, %.thread.i, %bb.t, %bb.r, %bb.o, %bb.n
  %.1.i = phi ptr [ null, %bb.n ], [ null, %bb.ak ], [ null, %bb.o ], [ null, %bb.am ], [ null, %bb.ad ], [ null, %bb.r ], [ null, %bb.t ], [ null, %.thread.i ], [ null, %bb.ab ], [ null, %bb.ao ], [ %i.fv, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

bb.ap:                                            ; preds = %bb.j, %bb.k, %bb.m
  %i.fy = zext i16 %i.bi to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %.071109, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %.not = icmp ugt ptr %i.ga, %i.e
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.ap, %bb.a, %bb.i, %bb.g, %bb.e, %bb.c, %.thread84
  %.2 = phi ptr [ %.1.i, %.thread84 ], [ null, %bb.i ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.a ], [ null, %bb.ap ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @parse_chunks(ptr noundef %0, i32 noundef range(i32 0, 2) %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 56 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 5 uses
  %i.h = alloca [258 x i8], align 16              ; 7 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca [4 x i8], align 1                 ; 9 uses
  %i.k = alloca [16 x i8], align 16               ; 2 uses
  %i.l = alloca [16 x i8], align 16               ; 2 uses
  %i.m = alloca [16 x i8], align 16               ; 2 uses
  %i.n = alloca [16 x i8], align 16               ; 2 uses
  %i.o = alloca [16 x i8], align 16               ; 2 uses
  %i.p = alloca [16 x i8], align 16               ; 2 uses
  %i.q = alloca [16 x i8], align 16               ; 2 uses
  %i.r = alloca [16 x i8], align 16               ; 2 uses
  %i.s = alloca [16 x i8], align 16               ; 2 uses
  %i.t = alloca [16 x i8], align 16               ; 2 uses
  %i.u = alloca [16 x i8], align 16               ; 2 uses
  %i.v = alloca [16 x i8], align 16               ; 2 uses
  %i.w = alloca [16 x i8], align 16               ; 2 uses
  %i.x = alloca [16 x i8], align 16               ; 2 uses
  %i.y = alloca [16 x i8], align 16               ; 2 uses
  %i.z = alloca [16 x i8], align 16               ; 2 uses
  %i.aa = alloca [16 x i8], align 16              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 7 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 34 uses
  %i.ae = tail call i32 @avio_feof(ptr noundef %i.ad) #11
  %.not374 = icmp eq i32 %i.ae, 0
  br i1 %.not374, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.au = icmp eq i32 %1, 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %4 = trunc nuw i32 %1 to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bc = call i32 @ff_get_guid(ptr noundef %i.ad, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.bd = call i32 @avio_rl32(ptr noundef %i.ad) #11 ; 6 uses
  %i.be = add i32 %i.bd, -2147483641
  %or.cond = icmp ult i32 %i.be, -2147483609
  br i1 %or.cond, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.bf = call i32 @avio_feof(ptr noundef %i.ad) #11
  %.not268 = icmp eq i32 %i.bf, 0
  br i1 %.not268, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.11) #11
  %i.bg = call i64 @avio_seek(ptr noundef %i.ad, i64 noundef 0, i32 noundef 1) #11
  %i.bh = add nsw i64 %i.bg, -20
  %i.bi = load ptr, ptr %i.ac, align 8, !tbaa !33
  %i.bj = load i32, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i, label %.loopexit.sink.split

.lr.ph.i:                                         ; preds = %bb.d
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !43
  %wide.trip.count.i = zext nneg i32 %i.bj to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.sink.split, label %bb.f, !llvm.loop !82

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %indvars.iv.i
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !45 ; 2 uses
  %i.bo = icmp ugt i64 %i.bn, %i.bh
  br i1 %i.bo, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.bp = call i64 @avio_seek(ptr noundef %i.bi, i64 noundef %i.bn, i32 noundef 0) #11 ; 2 uses
  %i.bq = icmp slt i64 %i.bp, 0
  br i1 %i.bq, label %recover.exit, label %recover.exit.thread318

recover.exit.thread318:                           ; preds = %bb.g
  %i.br = load ptr, ptr %i.bb, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !47
  store i64 %i.bu, ptr %i.aw, align 8, !tbaa !30
  br label %bb.cg

recover.exit:                                     ; preds = %bb.g
  %i.bv = trunc i64 %i.bp to i32                  ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %.loopexit.sink.split, label %bb.cg

bb.h:                                             ; preds = %bb.b
  %i.bx = call i32 @avio_rl32(ptr noundef %i.ad) #11
  %i.by = and i32 %i.bx, 32767                    ; 11 uses
  %i.bz = call i64 @avio_skip(ptr noundef %i.ad, i64 noundef 8) #11 ; 0 uses
  %i.ca = load i128, ptr %i.a, align 16
  %i.cb = load i128, ptr @ff_SBE2_STREAM_DESC_EVENT, align 16
  %i.cc = icmp ne i128 %i.ca, %i.cb
  %i.cd = zext i1 %i.cc to i32
  %.not219 = icmp eq i32 %i.cd, 0
  br i1 %.not219, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ce = call i32 @ff_find_stream_index(ptr noundef %0, i32 noundef %i.by) #11
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.j, label %.thread276

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.cg = call i64 @avio_skip(ptr noundef %i.ad, i64 noundef 28) #11 ; 0 uses
  %i.ch = call i32 @ff_get_guid(ptr noundef %i.ad, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.ci = call i32 @ff_get_guid(ptr noundef %i.ad, ptr noundef nonnull %i.c) #11 ; 0 uses
  %i.cj = call i64 @avio_skip(ptr noundef %i.ad, i64 noundef 12) #11 ; 0 uses
  %i.ck = call i32 @ff_get_guid(ptr noundef %i.ad, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.cl = call i32 @avio_rl32(ptr noundef %i.ad) #11 ; 3 uses
  %or.cond269.a = icmp ugt i32 %i.cl, 2147483523
  br i1 %or.cond269.a, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = call fastcc ptr @parse_media_type(ptr noundef %0, ptr noundef null, i32 noundef %i.by, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i64 noundef %i.cm) ; 0 uses
  %i.co = add nuw nsw i32 %i.cl, 124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.thread276

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.loopexit.sink.split

bb.l:                                             ; preds = %bb.h
  %i.cp = load i128, ptr %i.a, align 16
  %i.cq = load i128, ptr @ff_stream2_guid, align 16
  %i.cr = icmp ne i128 %i.cp, %i.cq
  %i.cs = zext i1 %i.cr to i32
  %.not220 = icmp eq i32 %i.cs, 0
  br i1 %.not220, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ct = call i32 @ff_find_stream_index(ptr noundef %0, i32 noundef %i.by) #11 ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, -1
  br i1 %i.cu, label %bb.n, label %.thread276

bb.n:                                             ; preds = %bb.m
  %i.cv = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.cw = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !41
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !65 ; 2 uses
  %.not221 = icmp eq ptr %i.da, null
  br i1 %.not221, label %.thread276, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = load i32, ptr %i.da, align 4, !tbaa !84
  %.not222 = icmp eq i32 %i.db, 0
  br i1 %.not222, label %bb.p, label %.thread276

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.dc = call i64 @avio_skip(ptr noundef %i.ad, i64 noundef 12) #11 ; 0 uses
  %i.dd = call i32 @ff_get_guid(ptr noundef %i.ad, ptr noundef nonnull %i.e) #11 ; 0 uses
  %i.de = call i32 @ff_get_guid(ptr noundef %i.ad, ptr noundef nonnull %i.f) #11 ; 0 uses
  %i.df = call i64 @avio_skip(ptr noundef %i.ad, i64 noundef 12) #11 ; 0 uses
  %i.dg = call i32 @ff_get_guid(ptr noundef %i.ad, ptr noundef nonnull %i.g) #11 ; 0 uses
  %i.dh = call i32 @avio_rl32(ptr noundef %i.ad) #11 ; 3 uses
  %or.cond270 = icmp ugt i32 %i.dh, 2147483539
  br i1 %or.cond270, label %bb.q, label %.thread280

.thread280:                                       ; preds = %bb.p
  %i.di = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.cw
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !41
  %i.dl = zext nneg i32 %i.dh to i64
  %i.dm = call fastcc ptr @parse_media_type(ptr noundef nonnull %0, ptr noundef %i.dk, i32 noundef %i.by, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, i64 noundef %i.dl) ; 0 uses
  %i.dn = add nuw nsw i32 %i.dh, 108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %.thread276

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %.loopexit.sink.split

bb.r:                                             ; preds = %bb.l
  %i.do = load i128, ptr %i.a, align 16
  %i.dp = icmp ne i128 %i.do, -151320835338623698440509432502094670820
  %i.dq = zext i1 %i.dp to i32
  %.not223 = icmp eq i32 %i.dq, 0
  br i1 %.not223, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dr = load i128, ptr %i.a, align 16
  %i.ds = icmp ne i128 %i.dr, 48001864593177946008820646297275245286
  %i.dt = zext i1 %i.ds to i32
  %.not224 = icmp eq i32 %i.dt, 0
  br i1 %.not224, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.du = load i128, ptr %i.a, align 16
  %i.dv = icmp ne i128 %i.du, 136725453545528812598203965516825459161
  %i.dw = zext i1 %i.dv to i32
  %.not225 = icmp eq i32 %i.dw, 0
  br i1 %.not225, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = load i128, ptr %i.a, align 16
  %i.dy = icmp ne i128 %i.dx, -23314151238886783038435370195269604504
  %i.dz = zext i1 %i.dy to i32
  %.not226 = icmp eq i32 %i.dz, 0
  br i1 %.not226, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ea = load i128, ptr %i.a, align 16
  %i.eb = icmp ne i128 %i.ea, -155643091259945886149323322410440671160
  %i.ec = zext i1 %i.eb to i32
  %.not227 = icmp eq i32 %i.ec, 0
  br i1 %.not227, label %bb.x, label %bb.w

end_hunk_0
begin_hunk_1_@parse_chunks:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(258) %i.h, i8 0, i64 258, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  store ptr %i.h, ptr %i.i, align 8, !tbaa !64
  %i.em = call i64 @avio_skip(ptr noundef %i.ad, i64 noundef 8) #11 ; 0 uses
  %i.en = load i128, ptr %i.a, align 16
  %i.eo = icmp ne i128 %i.en, 48001864593177946008820646297275245286
  %i.ep = zext i1 %i.eo to i32
  %.not229 = icmp eq i32 %i.ep, 0
  br i1 %.not229, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eq = load i128, ptr %i.a, align 16
  %i.er = icmp ne i128 %i.eq, 136725453545528812598203965516825459161
  %i.es = zext i1 %i.er to i32
  %.not230 = icmp eq i32 %i.es, 0
  br i1 %.not230, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.et = call i64 @avio_skip(ptr noundef %i.ad, i64 noundef 6) #11 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.4178 = phi i32 [ 40, %bb.z ], [ 46, %bb.aa ]  ; 2 uses
  %i.eu = sub nsw i32 %i.bd, %.4178
  %i.ev = call i32 @llvm.umin.i32(i32 %i.eu, i32 258) ; 3 uses
  %i.ew = call i32 @ffio_read_size(ptr noundef %i.ad, ptr noundef nonnull %i.h, i32 noundef %i.ev) #11 ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, -1
  br i1 %i.ex, label %.thread288, label %bb.ac

.thread288:                                       ; preds = %bb.ab
  %i.ey = add nuw nsw i32 %i.ev, %.4178
  %i.ez = zext nneg i32 %i.ev to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ez
  %i.fb = call i32 @ff_parse_mpeg2_descriptor(ptr noundef nonnull %0, ptr noundef %i.el, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.fa, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  br label %.thread276

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  br label %.loopexit.sink.split

bb.ad:                                            ; preds = %bb.w
  %i.fc = load i128, ptr %i.a, align 16
  %i.fd = icmp ne i128 %i.fc, -101670457823041324597278508282546438210
  %i.fe = zext i1 %i.fd to i32
  %.not231 = icmp eq i32 %i.fe, 0
  br i1 %.not231, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.ff = call i32 @ff_find_stream_index(ptr noundef %0, i32 noundef %i.by) #11 ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, -1
  br i1 %i.fg, label %bb.af, label %.thread276

bb.af:                                            ; preds = %bb.ae
  %i.fh = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.fi = zext nneg i32 %i.ff to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fi
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !41 ; 2 uses
  %i.fl = call i64 @avio_skip(ptr noundef %i.ad, i64 noundef 8) #11 ; 0 uses
  %i.fm = call i32 @avio_r8(ptr noundef %i.ad) #11
  switch i32 %i.fm, label %.thread276 [
    i32 2, label %bb.ag
    i32 3, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 64 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !85
  %i.fp = or i32 %i.fo, 128
  store i32 %i.fp, ptr %i.fn, align 8, !tbaa !85
  br label %.thread276

bb.ah:                                            ; preds = %bb.af
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 64 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !85
  %i.fs = or i32 %i.fr, 256
  store i32 %i.fs, ptr %i.fq, align 8, !tbaa !85
  br label %.thread276

bb.ai:                                            ; preds = %bb.ad
  %i.ft = load i128, ptr %i.a, align 16
  %i.fu = icmp ne i128 %i.ft, 122021512660286988803611410937234645444
  %i.fv = zext i1 %i.fu to i32
  %.not232 = icmp eq i32 %i.fv, 0
  br i1 %.not232, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.fw = call i32 @ff_find_stream_index(ptr noundef %0, i32 noundef %i.by) #11 ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, -1
  br i1 %i.fx, label %bb.ak, label %.thread276

bb.ak:                                            ; preds = %bb.aj
  %i.fy = call i64 @avio_skip(ptr noundef %i.ad, i64 noundef 12) #11 ; 0 uses
  %i.fz = call i32 @avio_rl32(ptr noundef %i.ad) #11
  %.not233 = icmp eq i32 %i.fz, 0
  br i1 %.not233, label %.thread276, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.12, i32 noundef %i.fw) #11
  br label %.thread276

bb.am:                                            ; preds = %bb.ai
  %i.ga = load i128, ptr %i.a, align 16
  %i.gb = icmp ne i128 %i.ga, -141209754557209743195399943419354519955
  %i.gc = zext i1 %i.gb to i32
  %.not234 = icmp eq i32 %i.gc, 0
  br i1 %.not234, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.gd = call i32 @ff_find_stream_index(ptr noundef %0, i32 noundef %i.by) #11 ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, -1
  br i1 %i.ge, label %bb.ao, label %.thread276

bb.ao:                                            ; preds = %bb.an
  %i.gf = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.gg = zext nneg i32 %i.gd to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  %i.gj = call i64 @avio_skip(ptr noundef %i.ad, i64 noundef 12) #11 ; 0 uses
  %i.gk = call i32 @avio_read(ptr noundef %i.ad, ptr noundef nonnull %i.j, i32 noundef 3) #11
  %.not235 = icmp eq i32 %i.gk, 3
  br i1 %.not235, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.gl = load i8, ptr %i.j, align 1, !tbaa !37
  %.not236 = icmp eq i8 %i.gl, 0
  br i1 %.not236, label %.thread296, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 0, ptr %i.az, align 1, !tbaa !37
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 80
  %i.gn = call i32 @av_dict_set(ptr noundef nonnull %i.gm, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.j, i32 noundef 0) #11 ; 0 uses
  %i.go = load i32, ptr %i.j, align 1
  %i.gp = icmp ne i32 %i.go, 7496046
  %i.gq = zext i1 %i.gp to i32
  %.not237 = icmp eq i32 %i.gq, 0
  br i1 %.not237, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gr = load i32, ptr %i.j, align 1
  %i.gs = icmp ne i32 %i.gr, 5390670
  %i.gt = zext i1 %i.gs to i32
  %.not239 = icmp eq i32 %i.gt, 0
  br i1 %.not239, label %bb.as, label %.thread296

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gi, i64 64 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !85
  %i.gw = or i32 %i.gv, 256
  store i32 %i.gw, ptr %i.gu, align 8, !tbaa !85
  br label %.thread296

.thread296:                                       ; preds = %bb.ar, %bb.as, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  br label %.thread276

bb.at:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  br label %.loopexit.sink.split

bb.au:                                            ; preds = %bb.am
  %i.gx = load i128, ptr %i.a, align 16
  %i.gy = load i128, ptr @ff_timestamp_guid, align 16
  %i.gz = icmp ne i128 %i.gx, %i.gy
  %i.ha = zext i1 %i.gz to i32
  %.not240 = icmp eq i32 %i.ha, 0
  br i1 %.not240, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.hb = call i32 @ff_find_stream_index(ptr noundef %0, i32 noundef %i.by) #11
  %i.hc = icmp sgt i32 %i.hb, -1
  br i1 %i.hc, label %bb.aw, label %.thread276

bb.aw:                                            ; preds = %bb.av
  %i.hd = call i64 @avio_skip(ptr noundef %i.ad, i64 noundef 8) #11 ; 0 uses
  %i.he = call i64 @avio_rl64(ptr noundef %i.ad) #11 ; 6 uses
  store i64 %i.he, ptr %i.aw, align 8, !tbaa !30
  %i.hf = icmp eq i64 %i.he, -1
  br i1 %i.hf, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i64 -9223372036854775808, ptr %i.aw, align 8, !tbaa !30
  br label %.thread276

bb.ay:                                            ; preds = %bb.aw
  store i64 %i.he, ptr %i.ax, align 8, !tbaa !29
  %i.hg = load i64, ptr %i.ay, align 8, !tbaa !31 ; 2 uses
  %i.hh = icmp eq i64 %i.hg, -9223372036854775808
  %i.hi = icmp slt i64 %i.he, %i.hg
  %or.cond321 = or i1 %i.hh, %i.hi
  br i1 %or.cond321, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i64 %i.he, ptr %i.ay, align 8, !tbaa !31
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %.not241 = icmp sge i64 %i.he, %2
  %or.cond322.not = and i1 %.not241, %4
  br i1 %or.cond322.not, label %bb.bb, label %.thread276

bb.bb:                                            ; preds = %bb.ba
  %i.hj = add nuw nsw i32 %i.bd, 7
  %i.hk = and i32 %i.hj, 2147483640
  %i.hl = add nsw i32 %i.hk, -48
  %i.hm = sext i32 %i.hl to i64
  %i.hn = call i64 @avio_skip(ptr noundef %i.ad, i64 noundef %i.hm) #11 ; 0 uses
  br label %.loopexit.sink.split

bb.bc:                                            ; preds = %bb.au
  %i.ho = load i128, ptr %i.a, align 16
  %i.hp = load i128, ptr @ff_data_guid, align 16
  %i.hq = icmp ne i128 %i.ho, %i.hp
  %i.hr = zext i1 %i.hq to i32
  %.not243.a = icmp eq i32 %i.hr, 0
  br i1 %.not243.a, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.hs = call i32 @ff_find_stream_index(ptr noundef %0, i32 noundef %i.by) #11 ; 4 uses
  %i.ht = icmp sgt i32 %i.hs, -1
  %or.cond11 = select i1 %i.au, i1 %i.ht, i1 false
  %i.hu = icmp samesign ugt i32 %i.bd, 32
  %or.cond13 = and i1 %i.hu, %or.cond11
  br i1 %or.cond13, label %bb.be, label %.thread276

bb.be:                                            ; preds = %bb.bd
  %i.hv = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.hw = zext nneg i32 %i.hs to i64
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hw
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !41
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !65 ; 2 uses
  %.not244.a = icmp eq ptr %i.ia, null
  br i1 %.not244.a, label %.thread276, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 1, ptr %i.ia, align 4, !tbaa !84
  %.not245.a = icmp eq ptr %3, null
  br i1 %.not245.a, label %.loopexit.sink.split, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i32 %i.bd, ptr %3, align 4, !tbaa !55
  br label %.loopexit.sink.split

bb.bh:                                            ; preds = %bb.bc
  store <16 x i8> <i8 -125, i8 -107, i8 116, i8 64, i8 -99, i8 107, i8 -20, i8 78, i8 -76, i8 60, i8 103, i8 -95, i8 -128, i8 30, i8 26, i8 -101>, ptr %i.k, align 16, !tbaa !37
  %i.ib = load i128, ptr %i.a, align 16
  %i.ic = load i128, ptr %i.k, align 16
  %i.id = icmp ne i128 %i.ib, %i.ic
  %i.ie = zext i1 %i.id to i32
  %.not246.a = icmp eq i32 %i.ie, 0
  br i1 %.not246.a, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.if = call i32 @ff_find_stream_index(ptr noundef %0, i32 noundef %i.by) #11 ; 2 uses
  %i.ig = icmp sgt i32 %i.if, -1
  br i1 %i.ig, label %bb.bj, label %.thread276

bb.bj:                                            ; preds = %bb.bi
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.16, i32 noundef %i.if) #11
  br label %.thread276

bb.bk:                                            ; preds = %bb.bh
  store <16 x i8> <i8 20, i8 86, i8 26, i8 12, i8 -51, i8 48, i8 64, i8 79, i8 -68, i8 -65, i8 -48, i8 62, i8 82, i8 48, i8 98, i8 7>, ptr %i.l, align 16, !tbaa !37
  %i.ih = load i128, ptr %i.a, align 16
  %i.ii = load i128, ptr %i.l, align 16
  %i.ij = icmp ne i128 %i.ih, %i.ii
  %i.ik = zext i1 %i.ij to i32
  %.not247.a = icmp eq i32 %i.ik, 0
  br i1 %.not247.a, label %.thread276, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store <16 x i8> <i8 121, i8 102, i8 -75, i8 -32, i8 -71, i8 18, i8 -52, i8 67, i8 -73, i8 -33, i8 87, i8 -116, i8 -86, i8 90, i8 123, i8 99>, ptr %i.m, align 16, !tbaa !37
  %i.il = load i128, ptr %i.a, align 16
  %i.im = load i128, ptr %i.m, align 16
  %i.in = icmp ne i128 %i.il, %i.im
  %i.io = zext i1 %i.in to i32
  %.not248.a = icmp eq i32 %i.io, 0
  br i1 %.not248.a, label %.thread276, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store <16 x i8> <i8 2, i8 -82, i8 91, i8 47, i8 -113, i8 123, i8 96, i8 79, i8 -126, i8 -42, i8 -28, i8 -22, i8 47, i8 31, i8 76, i8 -103>, ptr %i.n, align 16, !tbaa !37
  %i.ip = load i128, ptr %i.a, align 16
  %i.iq = load i128, ptr %i.n, align 16
  %i.ir = icmp ne i128 %i.ip, %i.iq
  %i.is = zext i1 %i.ir to i32
  %.not249.a = icmp eq i32 %i.is, 0
  br i1 %.not249.a, label %.thread276, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.it = load i128, ptr %i.a, align 16
  %i.iu = load i128, ptr @ff_DSATTRIB_TRANSPORT_PROPERTIES, align 16
  %i.iv = icmp ne i128 %i.it, %i.iu
  %i.iw = zext i1 %i.iv to i32
  %.not250.a = icmp eq i32 %i.iw, 0
  br i1 %.not250.a, label %.thread276, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store <16 x i8> <i8 -52, i8 50, i8 100, i8 -35, i8 41, i8 -30, i8 -37, i8 64, i8 -128, i8 -10, i8 -46, i8 99, i8 40, i8 -46, i8 118, i8 31>, ptr %i.o, align 16, !tbaa !37
  %i.ix = load i128, ptr %i.a, align 16
  %i.iy = load i128, ptr %i.o, align 16
  %i.iz = icmp ne i128 %i.ix, %i.iy
  %i.ja = zext i1 %i.iz to i32
  %.not251.a = icmp eq i32 %i.ja, 0
  br i1 %.not251.a, label %.thread276, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store <16 x i8> <i8 -27, i8 -59, i8 103, i8 -112, i8 92, i8 76, i8 5, i8 66, i8 -122, i8 -56, i8 122, i8 -2, i8 32, i8 -2, i8 30, i8 -6>, ptr %i.p, align 16, !tbaa !37
  %i.jb = load i128, ptr %i.a, align 16
  %i.jc = load i128, ptr %i.p, align 16
  %i.jd = icmp ne i128 %i.jb, %i.jc
  %i.je = zext i1 %i.jd to i32
  %.not252.a = icmp eq i32 %i.je, 0
  br i1 %.not252.a, label %.thread276, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store <16 x i8> <i8 -128, i8 109, i8 -13, i8 65, i8 50, i8 65, i8 -62, i8 76, i8 -79, i8 33, i8 1, i8 -92, i8 50, i8 25, i8 -40, i8 27>, ptr %i.q, align 16, !tbaa !37
  %i.jf = load i128, ptr %i.a, align 16
  %i.jg = load i128, ptr %i.q, align 16
  %i.jh = icmp ne i128 %i.jf, %i.jg
  %i.ji = zext i1 %i.jh to i32
  %.not253.a = icmp eq i32 %i.ji, 0
  br i1 %.not253.a, label %.thread276, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store <16 x i8> <i8 81, i8 29, i8 -85, i8 114, i8 -46, i8 -121, i8 -101, i8 72, i8 -70, i8 17, i8 14, i8 8, i8 -36, i8 33, i8 2, i8 67>, ptr %i.r, align 16, !tbaa !37
  %i.jj = load i128, ptr %i.a, align 16
  %i.jk = load i128, ptr %i.r, align 16
  %i.jl = icmp ne i128 %i.jj, %i.jk
  %i.jm = zext i1 %i.jl to i32
  %.not254.a = icmp eq i32 %i.jm, 0
  br i1 %.not254.a, label %.thread276, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store <16 x i8> <i8 101, i8 -113, i8 -4, i8 71, i8 -69, i8 -30, i8 52, i8 70, i8 -100, i8 -17, i8 -3, i8 -65, i8 -26, i8 38, i8 29, i8 92>, ptr %i.s, align 16, !tbaa !37
  %i.jn = load i128, ptr %i.a, align 16
  %i.jo = load i128, ptr %i.s, align 16
  %i.jp = icmp ne i128 %i.jn, %i.jo
  %i.jq = zext i1 %i.jp to i32
  %.not255.a = icmp eq i32 %i.jq, 0
  br i1 %.not255.a, label %.thread276, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store <16 x i8> <i8 -53, i8 -59, i8 104, i8 -128, i8 4, i8 60, i8 43, i8 73, i8 -76, i8 125, i8 3, i8 8, i8 -126, i8 13, i8 -50, i8 81>, ptr %i.t, align 16, !tbaa !37
  %i.jr = load i128, ptr %i.a, align 16
  %i.js = load i128, ptr %i.t, align 16
  %i.jt = icmp ne i128 %i.jr, %i.js
  %i.ju = zext i1 %i.jt to i32
  %.not256.a = icmp eq i32 %i.ju, 0
  br i1 %.not256.a, label %.thread276, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store <16 x i8> <i8 -68, i8 46, i8 -81, i8 -126, i8 -90, i8 48, i8 100, i8 66, i8 -88, i8 11, i8 -83, i8 46, i8 19, i8 114, i8 -84, i8 96>, ptr %i.u, align 16, !tbaa !37
  %i.jv = load i128, ptr %i.a, align 16
  %i.jw = load i128, ptr %i.u, align 16
  %i.jx = icmp ne i128 %i.jv, %i.jw
  %i.jy = zext i1 %i.jx to i32
  %.not257.a = icmp eq i32 %i.jy, 0
  br i1 %.not257.a, label %.thread276, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store <16 x i8> <i8 30, i8 -66, i8 -61, i8 -59, i8 67, i8 -110, i8 -36, i8 17, i8 -123, i8 -27, i8 0, i8 18, i8 63, i8 111, i8 115, i8 -71>, ptr %i.v, align 16, !tbaa !37
  %i.jz = load i128, ptr %i.a, align 16
  %i.ka = load i128, ptr %i.v, align 16
  %i.kb = icmp ne i128 %i.jz, %i.ka
  %i.kc = zext i1 %i.kb to i32
  %.not258.a = icmp eq i32 %i.kc, 0
  br i1 %.not258.a, label %.thread276, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store <16 x i8> <i8 59, i8 -122, i8 -94, i8 -79, i8 -21, i8 30, i8 -61, i8 68, i8 -116, i8 -120, i8 28, i8 -93, i8 -1, i8 -29, i8 -25, i8 106>, ptr %i.w, align 16, !tbaa !37
  %i.kd = load i128, ptr %i.a, align 16
  %i.ke = load i128, ptr %i.w, align 16
  %i.kf = icmp ne i128 %i.kd, %i.ke
  %i.kg = zext i1 %i.kf to i32
  %.not259.a = icmp eq i32 %i.kg, 0
  br i1 %.not259.a, label %.thread276, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store <16 x i8> <i8 78, i8 127, i8 76, i8 91, i8 -60, i8 -48, i8 56, i8 75, i8 -88, i8 62, i8 33, i8 127, i8 123, i8 -65, i8 82, i8 -25>, ptr %i.x, align 16, !tbaa !37
  %i.kh = load i128, ptr %i.a, align 16
  %i.ki = load i128, ptr %i.x, align 16
  %i.kj = icmp ne i128 %i.kh, %i.ki
  %i.kk = zext i1 %i.kj to i32
  %.not260.a = icmp eq i32 %i.kk, 0
  br i1 %.not260.a, label %.thread276, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store <16 x i8> <i8 99, i8 54, i8 -21, i8 -2, i8 -95, i8 126, i8 -39, i8 17, i8 -125, i8 8, i8 0, i8 7, i8 -23, i8 94, i8 -83, i8 -115>, ptr %i.y, align 16, !tbaa !37
  %i.kl = load i128, ptr %i.a, align 16
  %i.km = load i128, ptr %i.y, align 16
  %i.kn = icmp ne i128 %i.kl, %i.km
  %i.ko = zext i1 %i.kn to i32
  %.not261.a = icmp eq i32 %i.ko, 0
  br i1 %.not261.a, label %.thread276, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store <16 x i8> <i8 112, i8 -23, i8 -15, i8 -8, i8 -119, i8 -92, i8 76, i8 77, i8 -125, i8 115, i8 -72, i8 18, i8 -32, i8 -43, i8 -8, i8 30>, ptr %i.z, align 16, !tbaa !37
  %i.kp = load i128, ptr %i.a, align 16
  %i.kq = load i128, ptr %i.z, align 16
end_hunk_1
