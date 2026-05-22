inline.NumInlined: 112
inline.NumDeleted: 5
begin_hunk_0_@png_handle_iCCP:bb.a
  %i.ac = add i64 %index.lcssa, %i.ab
  br label %.critedge.split.loop.exit

.thread146:                                       ; preds = %png_crc_read.exit
  %i.ad = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef %i.h, i32 noundef 0) ; 0 uses
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull @.str.14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.w

.lr.ph:                                           ; preds = %.lr.ph.preheader187, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.lr.ph.preheader187 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !7
  %.not = icmp eq i8 %i.af, 0
  br i1 %.not, label %.critedge.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !185

.critedge.split.loop.exit:                        ; preds = %.lr.ph, %vector.early.exit
  %indvars.iv.lcssa = phi i64 [ %i.ac, %vector.early.exit ], [ %indvars.iv, %.lr.ph ]
  %i.ag = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %middle.block, %.critedge.split.loop.exit
  %.0105.lcssa = phi i32 [ %i.ag, %.critedge.split.loop.exit ], [ %invariant.umin, %middle.block ], [ %invariant.umin, %bb.c ] ; 3 uses
  %i.ah = add nsw i32 %.0105.lcssa, -1
  %or.cond = icmp ult i32 %i.ah, 79
  br i1 %or.cond, label %bb.d, label %.thread155

bb.d:                                             ; preds = %.critedge
  %i.ai = add nuw nsw i32 %.0105.lcssa, 1         ; 2 uses
  %i.aj = icmp samesign ult i32 %i.ai, %spec.select
  br i1 %i.aj, label %bb.e, label %.thread155

bb.e:                                             ; preds = %bb.d
  %i.ak = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !7
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.f, label %.thread155

bb.f:                                             ; preds = %bb.e
  %i.ao = call fastcc i32 @png_inflate_claim(ptr noundef %0, i32 noundef 1766015824)
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.aq = add nuw nsw i32 %.0105.lcssa, 2         ; 2 uses
  %i.ar = sub nsw i32 %spec.select, %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.c, i8 0, i64 132, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i64 132, ptr %i.e, align 8, !tbaa !186
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.at, ptr %i.au, align 8, !tbaa !42
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 %i.ar, ptr %i.av, align 8, !tbaa !41
  call fastcc void @png_inflate_read(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.e, i32 noundef 0)
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !186
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %.thread160

bb.h:                                             ; preds = %bb.g
  %i.ay = load i32, ptr %i.c, align 16
  %i.az = call i32 @llvm.bswap.i32(i32 %i.ay)     ; 5 uses
  %i.ba = call i32 @png_icc_check_length(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.az) #13
  %.not112 = icmp eq i32 %i.ba, 0
  br i1 %.not112, label %.thread164, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !142
  %i.bd = zext i8 %i.bc to i32
  %i.be = call i32 @png_icc_check_header(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.az, ptr noundef nonnull %i.c, i32 noundef %i.bd) #13
  %.not113 = icmp eq i32 %i.be, 0
  br i1 %.not113, label %.thread164, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.bg = load i8, ptr %i.bf, align 16, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 129
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 130
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 131
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !7
  %i.bn = zext i32 %i.az to i64                   ; 2 uses
  %i.bo = call fastcc ptr @png_read_buffer(ptr noundef nonnull %0, i64 noundef %i.bn) ; 5 uses
  %.not114 = icmp eq ptr %i.bo, null
  br i1 %.not114, label %.thread164, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = zext i8 %i.bg to i64
  %i.bq = shl nuw nsw i64 %i.bp, 24
  %i.br = zext i8 %i.bi to i64
  %i.bs = shl nuw nsw i64 %i.br, 16
  %i.bt = or disjoint i64 %i.bs, %i.bq
  %i.bu = zext i8 %i.bk to i64
  %i.bv = shl nuw nsw i64 %i.bu, 8
  %i.bw = or disjoint i64 %i.bt, %i.bv
  %i.bx = zext i8 %i.bm to i64
  %i.by = or disjoint i64 %i.bw, %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(132) %i.bo, ptr noundef nonnull align 16 dereferenceable(132) %i.c, i64 132, i1 false)
  %i.bz = mul nuw nsw i64 %i.by, 12
  %i.ca = and i64 %i.bz, 4294967292               ; 3 uses
  store i64 %i.ca, ptr %i.e, align 8, !tbaa !186
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 132 ; 2 uses
  call fastcc void @png_inflate_read(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.cb, ptr noundef %i.e, i32 noundef 0)
  %i.cc = load i64, ptr %i.e, align 8, !tbaa !186
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.l, label %.thread164.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ce = call i32 @png_icc_check_tag_table(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.az, ptr noundef nonnull %i.bo) #13
  %.not115 = icmp eq i32 %i.ce, 0
  br i1 %.not115, label %.thread164, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = add nsw i64 %i.bn, -132
  %i.cg = sub nsw i64 %i.cf, %i.ca
  store i64 %i.cg, ptr %i.e, align 8, !tbaa !186
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  call fastcc void @png_inflate_read(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.a, ptr noundef %i.ch, ptr noundef %i.e, i32 noundef 1)
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not116 = icmp eq i32 %i.ci, 0
  br i1 %.not116, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !33
  %i.cl = and i32 %i.ck, 1048576
  %.not117 = icmp eq i32 %i.cl, 0
  br i1 %.not117, label %.thread164, label %.thread

bb.o:                                             ; preds = %bb.m
  %i.cm = load i64, ptr %i.e, align 8, !tbaa !186
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.q, label %.thread164.sink.split

.thread:                                          ; preds = %bb.n
  %i.co = load i64, ptr %i.e, align 8, !tbaa !186
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.p, label %.thread164.sink.split

bb.p:                                             ; preds = %.thread
  call void @png_chunk_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.34) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.cq = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %i.ci, i32 noundef 0) ; 0 uses
  %.not119 = icmp eq ptr %1, null
  br i1 %.not119, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @png_free_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 16, i32 noundef 0) #13
  %i.cr = call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef %i.ak) #13 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !187
  %.not120 = icmp eq ptr %i.cr, null
  br i1 %.not120, label %.thread167, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cr, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 %i.ak, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.az, ptr %i.ct, align 8, !tbaa !188
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.bo, ptr %i.cu, align 8, !tbaa !189
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store ptr null, ptr %i.cv, align 8, !tbaa !122
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 252 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !190
  %i.cy = or i32 %i.cx, 16
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !190
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !191
  %i.db = or i32 %i.da, 4096
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !191
  br label %bb.u

.thread160:                                       ; preds = %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !43
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.de, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.thread155

bb.t:                                             ; preds = %bb.f
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !43
  br label %.thread155

bb.u:                                             ; preds = %bb.s, %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.dh, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.w

.thread164.sink.split:                            ; preds = %bb.k, %bb.o, %.thread
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !43
  br label %.thread164

.thread164:                                       ; preds = %.thread164.sink.split, %bb.n, %bb.l, %bb.j, %bb.i, %bb.h
  %.589.ph.ph = phi ptr [ null, %bb.h ], [ null, %bb.i ], [ @.str.34, %bb.n ], [ @.str.22, %bb.j ], [ null, %bb.l ], [ %i.dj, %.thread164.sink.split ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.dk, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.thread155

.thread167:                                       ; preds = %bb.r
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.dl, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.v

.thread155:                                       ; preds = %.critedge, %bb.d, %bb.e, %bb.t, %.preheader, %.thread160, %.thread164
  %.9145159 = phi ptr [ %i.dd, %.thread160 ], [ %.589.ph.ph, %.thread164 ], [ @.str.36, %.critedge ], [ @.str.35, %bb.e ], [ @.str.35, %bb.d ], [ %i.dg, %bb.t ], [ @.str.36, %.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.dm = load i32, ptr %i.a, align 4, !tbaa !3
  %i.dn = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef %i.dm, i32 noundef 0) ; 0 uses
  %.not121 = icmp eq ptr %.9145159, null
  br i1 %.not121, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread167, %.thread155
  %.9145158170 = phi ptr [ @.str.22, %.thread167 ], [ %.9145159, %.thread155 ]
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull %.9145158170) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %.thread146, %.thread155, %bb.v
  %.7 = phi i32 [ 3, %bb.u ], [ 0, %bb.v ], [ 0, %.thread155 ], [ 0, %.thread146 ]
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_iTXt(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %3 = alloca %struct.png_text_struct, align 8    ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !46   ; 2 uses
  switch i32 %i.c, label %bb.c [
    i32 0, label %bb.e
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.e = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !46
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #13
  br label %bb.x

bb.e:                                             ; preds = %bb.a, %bb.c
  %i.h = add i32 %2, 1
  %i.i = zext i32 %i.h to i64                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122, !alias.scope !192 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48, !alias.scope !192
  %i.n = icmp ult i64 %i.m, %i.i
  br i1 %i.n, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.p = load i64, ptr %i.o, align 8, !tbaa !126, !alias.scope !192
  %i.q = icmp ult i64 %i.p, %i.i
  br i1 %i.q, label %bb.h, label %png_crc_read.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !alias.scope !192
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.k) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.r = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %i.i) #13 ; 4 uses
  %.not27.i = icmp eq ptr %i.r, null
  br i1 %.not27.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 range(i64 0, 4294967296) %i.i, i1 false)
  store ptr %i.r, ptr %i.j, align 8, !tbaa !122, !alias.scope !192
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i64 %i.i, ptr %i.s, align 8, !tbaa !126, !alias.scope !192
  br label %png_crc_read.exit

bb.k:                                             ; preds = %bb.e, %bb.i
  %i.t = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #13
  br label %bb.x

png_crc_read.exit:                                ; preds = %bb.j, %bb.g
  %.021.i = phi ptr [ %i.k, %bb.g ], [ %i.r, %bb.j ] ; 8 uses
  %i.u = zext i32 %2 to i64                       ; 3 uses
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.u) #13
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.u) #13
  %i.v = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not100 = icmp eq i32 %i.v, 0
  br i1 %.not100, label %.preheader, label %bb.x

.preheader:                                       ; preds = %png_crc_read.exit
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.thread123, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.021.i, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7
  %.not101 = icmp eq i8 %i.x, 0
  br i1 %.not101, label %.critedge.split.loop.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !195

.critedge.split.loop.exit:                        ; preds = %.lr.ph
  %i.y = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.critedge.split.loop.exit
  %.093.lcssa = phi i32 [ %i.y, %.critedge.split.loop.exit ], [ %2, %bb.l ] ; 4 uses
  %i.z = add i32 %.093.lcssa, -80
  %or.cond = icmp ult i32 %i.z, -79
  br i1 %or.cond, label %.thread123, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.aa = add nuw nsw i32 %.093.lcssa, 5
  %i.ab = icmp ugt i32 %i.aa, %2
  br i1 %i.ab, label %.thread123, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = zext nneg i32 %.093.lcssa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.021.i, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !7   ; 2 uses
  switch i8 %i.af, label %.thread123 [
    i8 0, label %bb.p
    i8 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !7
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.p, label %.thread123

bb.p:                                             ; preds = %bb.n, %bb.o
  %.not104 = icmp ne i8 %i.af, 0                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.aj = add nuw nsw i32 %.093.lcssa, 3          ; 4 uses
  %i.ak = icmp ult i32 %i.aj, %2
  br i1 %i.ak, label %.lr.ph131.preheader, label %.critedge4

.lr.ph131.preheader:                              ; preds = %bb.p
  %i.al = zext nneg i32 %i.aj to i64
  br label %.lr.ph131

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %bb.q
  %indvars.iv141 = phi i64 [ %i.al, %.lr.ph131.preheader ], [ %indvars.iv.next142, %bb.q ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.021.i, i64 %indvars.iv141
  %i.an = load i8, ptr %i.am, align 1, !tbaa !7
  %.not102 = icmp eq i8 %i.an, 0
  br i1 %.not102, label %.critedge4.loopexit.split.loop.exit163, label %bb.q

bb.q:                                             ; preds = %.lr.ph131
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next142 to i32
  %exitcond144.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond144.not, label %.critedge4, label %.lr.ph131, !llvm.loop !196

.critedge4.loopexit.split.loop.exit163:           ; preds = %.lr.ph131
  %i.ao = trunc nuw i64 %indvars.iv141 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.q, %.critedge4.loopexit.split.loop.exit163, %bb.p
  %.194.lcssa = phi i32 [ %i.aj, %bb.p ], [ %i.ao, %.critedge4.loopexit.split.loop.exit163 ], [ %2, %bb.q ]
  %i.ap = add i32 %.194.lcssa, 1                  ; 4 uses
  %i.aq = icmp ult i32 %i.ap, %2
  br i1 %i.aq, label %.lr.ph136.preheader, label %.critedge6

.lr.ph136.preheader:                              ; preds = %.critedge4
  %i.ar = zext i32 %i.ap to i64
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %bb.r
  %indvars.iv145 = phi i64 [ %i.ar, %.lr.ph136.preheader ], [ %indvars.iv.next146, %bb.r ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.021.i, i64 %indvars.iv145
  %i.at = load i8, ptr %i.as, align 1, !tbaa !7
  %.not103 = icmp eq i8 %i.at, 0
  br i1 %.not103, label %.critedge6.loopexit.split.loop.exit165, label %bb.r

bb.r:                                             ; preds = %.lr.ph136
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %lftr.wideiv148 = trunc i64 %indvars.iv.next146 to i32
  %exitcond149.not = icmp eq i32 %2, %lftr.wideiv148
  br i1 %exitcond149.not, label %.critedge6, label %.lr.ph136, !llvm.loop !197

.critedge6.loopexit.split.loop.exit165:           ; preds = %.lr.ph136
  %i.au = trunc nuw i64 %indvars.iv145 to i32
  br label %.critedge6

.critedge6:                                       ; preds = %bb.r, %.critedge6.loopexit.split.loop.exit165, %.critedge4
  %.295.lcssa = phi i32 [ %i.ap, %.critedge4 ], [ %i.au, %.critedge6.loopexit.split.loop.exit165 ], [ %2, %bb.r ]
  %i.av = add i32 %.295.lcssa, 1                  ; 5 uses
  %.not105 = icmp ugt i32 %i.av, %2
  %or.cond108 = or i1 %.not104, %.not105
  br i1 %or.cond108, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge6
  %i.aw = sub nuw i32 %2, %i.av
  %i.ax = zext i32 %i.aw to i64
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !186
  br label %.thread

bb.t:                                             ; preds = %.critedge6
  %i.ay = icmp ult i32 %i.av, %2
  %or.cond110 = and i1 %.not104, %i.ay
  br i1 %or.cond110, label %bb.u, label %.thread119

bb.u:                                             ; preds = %bb.t
  store i64 -1, ptr %i.a, align 8, !tbaa !186
  %i.az = call fastcc i32 @png_decompress_chunk(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.av, ptr noundef %i.a)
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !122
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !43 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.thread, label %.thread119

.thread119:                                       ; preds = %bb.w, %bb.t
  %.389.ph = phi ptr [ %i.bd, %bb.w ], [ @.str.38, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.thread123

.thread:                                          ; preds = %bb.v, %bb.s, %bb.w
  %.090114 = phi ptr [ %.021.i, %bb.w ], [ %i.bb, %bb.v ], [ %.021.i, %bb.s ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !186
  %i.bg = zext i32 %i.av to i64                   ; 2 uses
  %i.bh = getelementptr i8, ptr %.090114, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.bg
  store i8 0, ptr %i.bi, align 1, !tbaa !7
  %. = select i1 %.not104, i32 2, i32 1
  store i32 %., ptr %3, align 8, !tbaa !198
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.090114, ptr %i.bj, align 8, !tbaa !200
  %i.bk = zext nneg i32 %i.aj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.090114, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !201
  %i.bn = zext i32 %i.ap to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.090114, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !202
  %i.bq = getelementptr inbounds nuw i8, ptr %.090114, i64 %i.bg
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !203
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.bs, align 8, !tbaa !204
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !186
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !205
  %i.bv = call i32 @png_set_text_2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1) #13
  %.not106.not = icmp eq i32 %i.bv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %.not106.not, label %bb.x, label %.thread123

.thread123:                                       ; preds = %.preheader, %.thread, %.thread119, %bb.o, %bb.n, %.critedge, %bb.m
  %.4126 = phi ptr [ @.str.38, %bb.m ], [ %.389.ph, %.thread119 ], [ @.str.39, %bb.o ], [ @.str.39, %bb.n ], [ @.str.36, %.critedge ], [ @.str.22, %.thread ], [ @.str.36, %.preheader ]
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull %.4126) #13
  br label %bb.x

bb.x:                                             ; preds = %.thread123, %png_crc_read.exit, %.thread, %bb.k, %bb.d, %bb.b
  %.3 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.k ], [ 3, %.thread ], [ 0, %png_crc_read.exit ], [ 0, %.thread123 ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_mDCV(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %png_crc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 24) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 24) #13
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.a, %bb.b
  %i.c = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %png_crc_read.exit
  %i.d = load i8, ptr %i.a, align 16, !tbaa !7
  %i.e = zext i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !7
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.e, 9
  %i.j = shl nuw nsw i32 %i.h, 1
  %i.k = or disjoint i32 %i.j, %i.i               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.m = load i8, ptr %i.l, align 2, !tbaa !7
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !7
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.n, 9
  %i.s = shl nuw nsw i32 %i.q, 1
  %i.t = or disjoint i32 %i.s, %i.r               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !7
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.y = load i8, ptr %i.x, align 1, !tbaa !7
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.w, 9
  %i.ab = shl nuw nsw i32 %i.z, 1
  %i.ac = or disjoint i32 %i.ab, %i.aa            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !7
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !7
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.af, 9
  %i.ak = shl nuw nsw i32 %i.ai, 1
  %i.al = or disjoint i32 %i.ak, %i.aj            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !7
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !7
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ao, 9
  %i.at = shl nuw nsw i32 %i.ar, 1
  %i.au = or disjoint i32 %i.at, %i.as            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !7
  %i.ax = zext i8 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !7
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ax, 9
  %i.bc = shl nuw nsw i32 %i.ba, 1
  %i.bd = or disjoint i32 %i.bc, %i.bb            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !7
  %i.bg = zext i8 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !7
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bg, 9
  %i.bl = shl nuw nsw i32 %i.bj, 1
  %i.bm = or disjoint i32 %i.bl, %i.bk            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !7
  %i.bp = zext i8 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !7
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bp, 9
  %i.bu = shl nuw nsw i32 %i.bs, 1
  %i.bv = or disjoint i32 %i.bu, %i.bt            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bx = load i32, ptr %i.bw, align 16
  %i.by = call i32 @llvm.bswap.i32(i32 %i.bx)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = call i32 @llvm.bswap.i32(i32 %i.ca)
  call void @png_set_mDCV_fixed(ptr noundef %0, ptr noundef %1, i32 noundef %i.bm, i32 noundef %i.bv, i32 noundef %i.k, i32 noundef %i.t, i32 noundef %i.ac, i32 noundef %i.al, i32 noundef %i.au, i32 noundef %i.bd, i32 noundef %i.by, i32 noundef %i.cb) #13
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 %i.k, ptr %i.cc, align 8, !tbaa !3
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 684
  store i32 %i.t, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !3
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %i.ac, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !3
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 692
  store i32 %i.al, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !3
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 %i.au, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !3
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 700
  store i32 %i.bd, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !3
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i32 %i.bm, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !3
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 708
  store i32 %i.bv, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %png_crc_read.exit, %bb.c
  %.0 = phi i32 [ 3, %bb.c ], [ 0, %png_crc_read.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_oFFs(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %png_crc_read.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 9) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 9) #13
  br label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.a, %bb.b
  %i.c = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %png_crc_read.exit
  %i.d = load i8, ptr %i.a, align 1, !tbaa !7     ; 2 uses
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %.not7 = icmp sgt i8 %i.d, -1
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !7
  %i.h = zext i8 %i.g to i32
  %.neg8 = mul i32 %i.h, 2147418112
  %i.i = shl nuw i32 %i.e, 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = or disjoint i32 %i.m, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !7
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q
  %.neg12 = sub i32 %.neg8, %i.r
  %i.s = and i32 %.neg12, 2147483647
  %i.t = sub nsw i32 0, %i.s
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = shl nuw nsw i32 %i.e, 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !7
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 16
  %i.z = or disjoint i32 %i.y, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !7
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 8
  %i.ae = or disjoint i32 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !7
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = phi i32 [ %i.t, %bb.d ], [ %i.ai, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !7   ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %.not13 = icmp sgt i8 %i.al, -1
  br i1 %.not13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !7
  %i.ap = zext i8 %i.ao to i32
  %.neg14 = mul i32 %i.ap, 2147418112
  %i.aq = shl nuw i32 %i.am, 24
end_hunk_0
begin_hunk_1_@png_handle_tRNS:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.am = load i8, ptr %i.al, align 1, !tbaa !7
  %i.an = zext i8 %i.am to i16
  %i.ao = or disjoint i16 %i.ak, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 814
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.aq = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !26
  %i.at = and i32 %i.as, 2
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #13
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !183
  %i.ay = zext i16 %i.ax to i32
  %i.az = icmp ugt i32 %2, 256
  %i.ba = add i32 %2, -1
  %i.bb = icmp uge i32 %i.ba, %i.ay
  %or.cond4 = or i1 %i.az, %i.bb
  br i1 %or.cond4, label %bb.i, label %png_crc_read.exit59

bb.i:                                             ; preds = %bb.h
  %i.bc = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #13
  br label %bb.n

png_crc_read.exit59:                              ; preds = %bb.h
  %i.bd = zext nneg i32 %2 to i64                 ; 2 uses
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.bd) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.bd) #13
  %i.be = trunc nuw nsw i32 %2 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i16 %i.be, ptr %i.bf, align 8, !tbaa !143
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.bg = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.54) #13
  br label %bb.n

bb.k:                                             ; preds = %.thread60, %.thread, %png_crc_read.exit59
  %i.bh = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not57 = icmp eq i32 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  br i1 %.not57, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i16 0, ptr %i.bi, align 8, !tbaa !143
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !143
  %i.bk = zext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 808
  call void @png_set_tRNS(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %i.bk, ptr noundef nonnull %i.bl) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.c, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g
  %.2 = phi i32 [ 0, %bb.l ], [ 3, %bb.m ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @png_handle_zTXt(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.png_text_struct, align 8    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !46   ; 2 uses
  switch i32 %i.c, label %bb.c [
    i32 0, label %bb.e
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.e = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !46
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #13
  br label %bb.r

bb.e:                                             ; preds = %bb.a, %bb.c
  %i.h = zext i32 %2 to i64                       ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !122, !alias.scope !246 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48, !alias.scope !246
  %i.m = icmp ult i64 %i.l, %i.h
  br i1 %i.m, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.o = load i64, ptr %i.n, align 8, !tbaa !126, !alias.scope !246
  %i.p = icmp ult i64 %i.o, %i.h
  br i1 %i.p, label %bb.h, label %png_crc_read.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !alias.scope !246
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.j) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.q = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %i.h) #13 ; 4 uses
  %.not27.i = icmp eq ptr %i.q, null
  br i1 %.not27.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 range(i64 0, 4294967296) %i.h, i1 false)
  store ptr %i.q, ptr %i.i, align 8, !tbaa !122, !alias.scope !246
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i64 %i.h, ptr %i.r, align 8, !tbaa !126, !alias.scope !246
  br label %png_crc_read.exit

bb.k:                                             ; preds = %bb.e, %bb.i
  %i.s = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #13
  br label %bb.r

png_crc_read.exit:                                ; preds = %bb.j, %bb.g
  %.021.i = phi ptr [ %i.j, %bb.g ], [ %i.q, %bb.j ] ; 4 uses
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.h) #13
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %.021.i, i64 noundef %i.h) #13
  %i.t = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %.not59 = icmp eq i32 %i.t, 0
  br i1 %.not59, label %.preheader, label %bb.r

.preheader:                                       ; preds = %png_crc_read.exit
  %.not73 = icmp eq i32 %2, 0
  br i1 %.not73, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.021.i, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !7
  %.not60 = icmp eq i8 %i.v, 0
  br i1 %.not60, label %.critedge.split.loop.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !249

.critedge.split.loop.exit:                        ; preds = %.lr.ph
  %i.w = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.critedge.split.loop.exit
  %.048.lcssa = phi i32 [ %i.w, %.critedge.split.loop.exit ], [ %2, %bb.l ] ; 4 uses
  %i.x = add i32 %.048.lcssa, -80
  %or.cond = icmp ult i32 %i.x, -79
  br i1 %or.cond, label %.critedge.thread, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.y = add nuw nsw i32 %.048.lcssa, 3
  %i.z = icmp ugt i32 %i.y, %2
  br i1 %i.z, label %.critedge.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = zext nneg i32 %.048.lcssa to i64        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.021.i, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !7
  %.not61 = icmp eq i8 %i.ad, 0
  br i1 %.not61, label %bb.o, label %.critedge.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 -1, ptr %i.a, align 8, !tbaa !186
  %i.ae = add nuw nsw i32 %.048.lcssa, 2          ; 2 uses
  %i.af = call fastcc i32 @png_decompress_chunk(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.ae, ptr noundef %i.a)
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !122 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.thread67, label %bb.q

.thread67:                                        ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.critedge.thread.sink.split

.thread:                                          ; preds = %bb.o
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  br label %.critedge.thread.sink.split

bb.q:                                             ; preds = %bb.p
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !186 ; 2 uses
  %i.ak = zext nneg i32 %i.ae to i64
  %i.al = getelementptr i8, ptr %i.ah, i64 %i.aj
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !7
  store i32 0, ptr %3, align 8, !tbaa !198
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ah, ptr %i.an, align 8, !tbaa !200
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aa
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !203
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.aj, ptr %i.ar, align 8, !tbaa !204
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %i.at = call i32 @png_set_text_2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1) #13
  %.not = icmp eq i32 %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %.not, label %bb.r, label %.critedge.thread

.critedge.thread.sink.split:                      ; preds = %.thread, %.thread67
  %.4.ph = phi ptr [ @.str.56, %.thread67 ], [ %5, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.sink.split, %.preheader, %bb.n, %bb.m, %.critedge, %bb.q
  %.4 = phi ptr [ @.str.22, %bb.q ], [ @.str.36, %.critedge ], [ @.str.38, %bb.m ], [ @.str.55, %bb.n ], [ @.str.36, %.preheader ], [ %.4.ph, %.critedge.thread.sink.split ]
  call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef %.4) #13
  br label %bb.r

bb.r:                                             ; preds = %png_crc_read.exit, %bb.q, %.critedge.thread, %bb.k, %bb.d, %bb.b
  %.354 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.k ], [ 3, %bb.q ], [ 0, %.critedge.thread ], [ 0, %png_crc_read.exit ]
  ret i32 %.354
}

declare void @png_set_IHDR(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @png_set_PLTE(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @png_set_bKGD(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @png_set_cHRM_fixed(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @png_set_cICP(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

declare void @png_set_cLLI_fixed(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @png_set_eXIf_1(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @png_set_gAMA_fixed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @png_set_hIST(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @png_inflate_read(ptr noalias noundef %0, ptr noundef nonnull %1, ptr noundef nonnull captures(none) %2, ptr noundef nonnull %3, ptr noundef nonnull captures(none) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load i32, ptr %i.a, align 8, !tbaa !130
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %3, ptr %i.g, align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  store i32 0, ptr %i.h, align 8, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %.not47 = icmp eq i32 %5, 0
  %i.j = select i1 %.not47, i32 2, i32 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.backedge, %bb.b
  %.043 = phi i32 [ 1024, %bb.b ], [ %.2, %.critedge2.backedge ] ; 2 uses
  %i.l = load i32, ptr %i.i, align 8, !tbaa !41
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.critedge2
  %i.n = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.043, i32 %i.n) ; 6 uses
  %i.o = sub i32 %i.n, %spec.select
  store i32 %i.o, ptr %2, align 4, !tbaa !3
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %bb.d, label %png_crc_read.exit

png_crc_read.exit:                                ; preds = %bb.c
  %i.p = zext nneg i32 %spec.select to i64        ; 2 uses
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.p) #13
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.p) #13
  br label %bb.d

bb.d:                                             ; preds = %png_crc_read.exit, %bb.c
  store ptr %1, ptr %i.f, align 8, !tbaa !42
  store i32 %spec.select, ptr %i.i, align 8, !tbaa !41
  %i.q = icmp eq i32 %spec.select, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge2
  %.not7.i = phi i1 [ %i.q, %bb.d ], [ false, %.critedge2 ]
  %.2 = phi i32 [ %spec.select, %bb.d ], [ %.043, %.critedge2 ]
  %i.r = load i32, ptr %i.h, align 8, !tbaa !104  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %4, align 8, !tbaa !186    ; 2 uses
  %spec.select5053 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 4294967295) ; 2 uses
  %spec.select50 = trunc nuw i64 %spec.select5053 to i32 ; 2 uses
  %i.u = sub i64 %i.t, %spec.select5053
  store i64 %i.u, ptr %4, align 8, !tbaa !186
  store i32 %spec.select50, ptr %i.h, align 8, !tbaa !104
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i32 [ %spec.select50, %bb.f ], [ %i.r, %bb.e ]
  %i.w = load i32, ptr %2, align 4, !tbaa !3
  %.not46 = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not46, i32 %i.j, i32 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.y = load i8, ptr %i.k, align 8, !tbaa !40, !alias.scope !250
  %.not.i = icmp eq i8 %i.y, 0
  %brmerge = or i1 %.not.i, %.not7.i
  br i1 %brmerge, label %png_zlib_inflate.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !42, !alias.scope !250
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !7, !noalias !250
  %i.ab = icmp slt i8 %i.aa, 0
  br i1 %i.ab, label %png_zlib_inflate.exit.thread, label %bb.i

png_zlib_inflate.exit.thread:                     ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr @.str.5, ptr %i.ac, align 8, !tbaa !43, !alias.scope !250
  br label %.critedge

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.k, align 8, !tbaa !40, !alias.scope !250
  br label %png_zlib_inflate.exit

png_zlib_inflate.exit:                            ; preds = %bb.g, %bb.i
  %i.ad = tail call i32 @inflate(ptr noundef nonnull %i.f, i32 noundef %i.x) #13 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %png_zlib_inflate.exit..critedge.loopexit_crit_edge

png_zlib_inflate.exit..critedge.loopexit_crit_edge: ; preds = %png_zlib_inflate.exit
  %.pre.pre = load i32, ptr %i.h, align 8, !tbaa !104
  br label %.critedge

bb.j:                                             ; preds = %png_zlib_inflate.exit
  %i.af = load i64, ptr %4, align 8, !tbaa !186
  %.not48 = icmp eq i64 %i.af, 0
  br i1 %.not48, label %bb.k, label %.critedge2.backedge

bb.k:                                             ; preds = %bb.j
  %i.ag = load i32, ptr %i.h, align 8, !tbaa !104
  %.not49 = icmp eq i32 %i.ag, 0
  br i1 %.not49, label %.critedge, label %.critedge2.backedge

.critedge2.backedge:                              ; preds = %bb.k, %bb.j
  br label %.critedge2, !llvm.loop !253

.critedge:                                        ; preds = %bb.k, %png_zlib_inflate.exit..critedge.loopexit_crit_edge, %png_zlib_inflate.exit.thread
  %i.ah = phi i32 [ %i.v, %png_zlib_inflate.exit.thread ], [ %.pre.pre, %png_zlib_inflate.exit..critedge.loopexit_crit_edge ], [ 0, %bb.k ]
  %.0.i52 = phi i32 [ -3, %png_zlib_inflate.exit.thread ], [ %i.ad, %png_zlib_inflate.exit..critedge.loopexit_crit_edge ], [ 0, %bb.k ]
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load i64, ptr %4, align 8, !tbaa !186
  %i.ak = add i64 %i.aj, %i.ai
  store i64 %i.ak, ptr %4, align 8, !tbaa !186
  store i32 0, ptr %i.h, align 8, !tbaa !104
  tail call void @png_zstream_error(ptr noundef nonnull %0, i32 noundef %.0.i52) #13
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr @.str.37, ptr %i.al, align 8, !tbaa !43
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  ret void
}

declare i32 @png_icc_check_length(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @png_icc_check_header(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @png_icc_check_tag_table(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @png_free_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare noalias ptr @png_malloc_base(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 0) i32 @png_decompress_chunk(ptr noalias noundef %0, i32 noundef range(i32 4, 0) %1, i32 noundef range(i32 0, -1) %2, ptr noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = add nuw i32 %2, 1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.not = icmp ult i64 %i.c, %i.e
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub nuw i64 %i.c, %i.e                   ; 2 uses
  %i.g = load i64, ptr %3, align 8, !tbaa !186
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.f, ptr %3, align 8, !tbaa !186
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !30
  %i.k = tail call fastcc i32 @png_inflate_claim(ptr noundef nonnull %0, i32 noundef %i.j) ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.m = sub i32 %1, %2                           ; 2 uses
  store i32 %i.m, ptr %i.a, align 4, !tbaa !3
  %i.n = load i32, ptr %i.i, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.q = zext i32 %2 to i64                       ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
end_hunk_1
