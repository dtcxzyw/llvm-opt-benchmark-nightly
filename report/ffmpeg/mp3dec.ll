Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mp3dec?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mp3_read_probe:bb.a
  %next.gep214 = getelementptr i8, ptr %i.am, i64 7
  %i.an = load i32, ptr %next.gep, align 1, !tbaa !12
  %i.ao = load i32, ptr %next.gep208, align 1, !tbaa !12
  %i.ap = load i32, ptr %next.gep209, align 1, !tbaa !12
  %i.aq = load i32, ptr %next.gep210, align 1, !tbaa !12
  %i.ar = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 1
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 2
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 3
  %i.av = load i32, ptr %next.gep211, align 1, !tbaa !12
  %i.aw = load i32, ptr %next.gep212, align 1, !tbaa !12
  %i.ax = load i32, ptr %next.gep213, align 1, !tbaa !12
  %i.ay = load i32, ptr %next.gep214, align 1, !tbaa !12
  %i.az = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %i.ba = insertelement <4 x i32> %i.az, i32 %i.aw, i64 1
  %i.bb = insertelement <4 x i32> %i.ba, i32 %i.ax, i64 2
  %i.bc = insertelement <4 x i32> %i.bb, i32 %i.ay, i64 3
  %i.bd = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.au)
  %i.be = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.bc)
  %i.bf = xor <4 x i32> %i.bd, %broadcast.splat
  %i.bg = xor <4 x i32> %i.be, %broadcast.splat
  %i.bh = and <4 x i32> %i.bf, splat (i32 -127793)
  %i.bi = and <4 x i32> %i.bg, splat (i32 -127793)
  %i.bj = icmp eq <4 x i32> %i.bh, zeroinitializer
  %i.bk = icmp eq <4 x i32> %i.bi, zeroinitializer
  %i.bl = zext <4 x i1> %i.bj to <4 x i32>
  %i.bm = zext <4 x i1> %i.bk to <4 x i32>
  %i.bn = add <4 x i32> %vec.phi, %i.bl           ; 2 uses
  %i.bo = add <4 x i32> %vec.phi207, %i.bm        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bo, %i.bn
  %i.bq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph109.preheader215

.lr.ph109.preheader215:                           ; preds = %.lr.ph109.preheader, %middle.block
  %.068108.ph = phi i32 [ 0, %.lr.ph109.preheader ], [ %i.bq, %middle.block ]
  %.069107.ph = phi ptr [ %i.z, %.lr.ph109.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader215, %.lr.ph109
  %.068108 = phi i32 [ %i.bx, %.lr.ph109 ], [ %.068108.ph, %.lr.ph109.preheader215 ]
  %.069107 = phi ptr [ %i.by, %.lr.ph109 ], [ %.069107.ph, %.lr.ph109.preheader215 ] ; 2 uses
  %i.br = load i32, ptr %.069107, align 1, !tbaa !12
  %i.bs = call i32 @llvm.bswap.i32(i32 %i.br)
  %i.bt = xor i32 %i.bs, %i.o
  %i.bu = and i32 %i.bt, -127793
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = add nuw nsw i32 %.068108, %i.bw         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.069107, i64 1 ; 2 uses
  %i.bz = icmp ult ptr %i.by, %i.x
  br i1 %i.bz, label %.lr.ph109, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph109, %middle.block
  %.lcssa = phi i32 [ %i.bq, %middle.block ], [ %i.bx, %.lr.ph109 ]
  %i.ca = icmp samesign ugt i32 %.lcssa, 2
  br i1 %i.ca, label %.thread, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %i.cb = add nsw i32 %i.q, %.074112              ; 3 uses
  %i.cc = icmp sgt i32 %i.q, %i.v
  br i1 %i.cc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.thread
  %i.cd = add nuw nsw i32 %.077111, 1
  br label %.thread

.thread:                                          ; preds = %bb.c, %._crit_edge, %bb.e
  %.178.ph = phi i32 [ %i.cd, %bb.e ], [ %.077111, %._crit_edge ], [ %.077111, %bb.c ]
  %.175.ph = phi i32 [ %i.cb, %bb.e ], [ %.074112, %._crit_edge ], [ %.074112, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge.thread
  %i.ce = getelementptr inbounds i8, ptr %.070113, i64 %i.r ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.cf = add nuw nsw i32 %.077111, 1             ; 2 uses
  %i.cg = icmp ult ptr %i.ce, %i.g
  br i1 %i.cg, label %bb.c, label %.loopexit, !llvm.loop !71

.loopexit:                                        ; preds = %bb.f, %.thread
  %.07098 = phi ptr [ %.070113, %.thread ], [ %i.ce, %bb.f ] ; 2 uses
  %.279 = phi i32 [ %.178.ph, %.thread ], [ %i.cf, %bb.f ] ; 2 uses
  %.276 = phi i32 [ %.175.ph, %.thread ], [ %i.cb, %bb.f ]
  %i.ch = call i32 @llvm.smax.i32(i32 %.084114, i32 %.279) ; 6 uses
  %i.ci = call i32 @llvm.smax.i32(i32 %.073117, i32 %.276) ; 6 uses
  %i.cj = icmp eq ptr %.072118, %.071.lcssa       ; 2 uses
  %i.ck = icmp eq ptr %.07098, %i.f
  %.183 = select i1 %i.cj, i32 %.279, i32 %.082115 ; 5 uses
  %i.cl = and i1 %i.cj, %i.ck
  %.181 = select i1 %i.cl, i32 1, i32 %.080116    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.07098, i64 1 ; 2 uses
  %i.cn = icmp ult ptr %i.cm, %i.g
  br i1 %i.cn, label %.preheader, label %._crit_edge119, !llvm.loop !72

._crit_edge119:                                   ; preds = %.loopexit
  %i.co = icmp ne i32 %.181, 0                    ; 3 uses
  %i.cp = icmp sgt i32 %.183, 6
  br i1 %i.cp, label %bb.p, label %bb.g

bb.g:                                             ; preds = %._crit_edge119
  %i.cq = icmp sgt i32 %i.ch, 200
  br i1 %i.cq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cr = load i32, ptr %i.c, align 8, !tbaa !74
  %i.cs = shl nuw nsw i32 %i.ci, 1
  %i.ct = icmp slt i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.p, label %.thread172

bb.i:                                             ; preds = %bb.g
  %i.cu = icmp sgt i32 %i.ch, 3
  br i1 %i.cu, label %.thread95, label %.thread172

.thread95:                                        ; preds = %bb.i
  %.pre = load i32, ptr %i.c, align 8, !tbaa !74
  %.pre137 = shl nuw nsw i32 %i.ci, 1
  %i.cv = icmp slt i32 %.pre, %.pre137
  br i1 %i.cv, label %bb.p, label %.thread172

.thread172:                                       ; preds = %bb.h, %.critedge, %.thread95, %bb.i
  %.084.lcssa151169 = phi i32 [ %i.ch, %.thread95 ], [ %i.ch, %bb.i ], [ 0, %.critedge ], [ %i.ch, %bb.h ]
  %.082.lcssa152166 = phi i32 [ %.183, %.thread95 ], [ %.183, %bb.i ], [ 0, %.critedge ], [ %.183, %bb.h ]
  %.080.lcssa153163 = phi i1 [ %i.co, %.thread95 ], [ %i.co, %bb.i ], [ false, %.critedge ], [ %i.co, %bb.h ]
  %.073.lcssa155 = phi i32 [ %i.ci, %.thread95 ], [ %i.ci, %bb.i ], [ 0, %.critedge ], [ %i.ci, %bb.h ]
  %i.cw = call i32 @ff_id3v2_match(ptr noundef %.071.lcssa, ptr noundef nonnull @.str.8) #7
  %.not88 = icmp eq i32 %i.cw, 0
  br i1 %.not88, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.thread172
  %i.cx = call i32 @ff_id3v2_tag_len(ptr noundef %.071.lcssa) #7
  %i.cy = shl nsw i32 %i.cx, 1
  %i.cz = load i32, ptr %i.c, align 8, !tbaa !74  ; 2 uses
  %.not89 = icmp slt i32 %i.cy, %i.cz
  br i1 %.not89, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = icmp slt i32 %i.cz, 1048576
  %i.db = select i1 %i.da, i32 12, i32 48
  br label %bb.p

bb.l:                                             ; preds = %bb.j, %.thread172
  %i.dc = icmp sgt i32 %.082.lcssa152166, 1
  %or.cond = select i1 %i.dc, i1 %.080.lcssa153163, i1 false
  br i1 %or.cond, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dd = icmp sgt i32 %.084.lcssa151169, 0
  br i1 %i.dd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.de = load i32, ptr %i.c, align 8, !tbaa !74
  %i.df = mul nsw i32 %.073.lcssa155, 10
  %i.dg = icmp slt i32 %i.de, %i.df
  br i1 %i.dg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.l, %.thread95, %bb.h, %._crit_edge119, %bb.o, %bb.k
  %.0 = phi i32 [ 0, %bb.o ], [ 52, %._crit_edge119 ], [ 50, %bb.h ], [ %i.db, %bb.k ], [ 25, %.thread95 ], [ 5, %bb.l ], [ 1, %bb.n ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @mp3_read_header(ptr noundef initializes((192, 200)) %0) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %1 = alloca %struct.MPADecodeHeader, align 4    ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %2 = alloca %struct.MPADecodeHeader, align 4    ; 5 uses
  %i.c = alloca [10 x i8], align 4                ; 6 uses
  %3 = alloca %struct.MPADecodeHeader, align 4    ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !82
  store ptr null, ptr %i.f, align 8, !tbaa !81
  %i.i = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #7 ; 15 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83   ; 2 uses
  store i32 1, ptr %i.k, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 86017, ptr %i.l, align 4, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 808
  store i32 5, ptr %i.m, align 8, !tbaa !88
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  store i64 0, ptr %i.n, align 8, !tbaa !89
  tail call void @avpriv_set_pts_info(ptr noundef nonnull %i.i, i32 noundef 64, i32 noundef 1, i32 noundef 14112000) #7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 44 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 232
  store i64 -1, ptr %i.q, align 8, !tbaa !92
  %i.r = tail call i64 @avio_seek(ptr noundef %i.p, i64 noundef 0, i32 noundef 1) #7 ; 3 uses
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.t = tail call i32 @av_dict_count(ptr noundef %i.s) #7
  %.not74 = icmp eq i32 %i.t, 0
  br i1 %.not74, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ff_id3v1_read(ptr noundef nonnull %0) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !51   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.w = load i32, ptr %i.v, align 8, !tbaa !93
  %i.x = and i32 %i.w, 1
  %.not75 = icmp eq i32 %i.x, 0
  br i1 %.not75, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = tail call i64 @avio_size(ptr noundef nonnull %i.u) #7
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !53
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !51
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = phi ptr [ %.pre, %bb.e ], [ %i.u, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !30  ; 6 uses
  tail call void @ffio_init_checksum(ptr noundef %i.aa, ptr noundef nonnull @ff_crcA001_update, i64 noundef 0) #7
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.ad = tail call i32 @avio_rb32(ptr noundef %i.ac) #7
  %i.ae = call i32 @avpriv_mpegaudio_decode_header(ptr noundef nonnull %3, i32 noundef %i.ad) #7 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.aq, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp eq i32 %i.ae, 0
  %i.ah = load i32, ptr %3, align 4
  %narrow.i = select i1 %i.ag, i32 %i.ah, i32 0
  %.038.i = sext i32 %narrow.i to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !94
  %.not.i = icmp eq i32 %i.aj, 3
  br i1 %.not.i, label %bb.h, label %bb.aq

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !95
  %.not42.i = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not42.i, i64 1152, i64 576  ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 3 uses
  store i32 0, ptr %i.an, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 36 ; 3 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !96
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 4 uses
  %.sroa.23.0.insert.ext.i = zext i32 %i.aq to i64
  %.sroa.23.0.insert.shift.i = shl nuw i64 %.sroa.23.0.insert.ext.i, 32
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.23.0.insert.shift.i, 1
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = call i64 @av_rescale_q(i64 noundef %i.am, i64 %.sroa.02.0.insert.insert.i, i64 %i.as) #8
  %i.au = trunc i64 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i32 %i.au, ptr %i.av, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !30  ; 10 uses
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.ay = call i64 @avio_size(ptr noundef %i.ax) #7 ; 2 uses
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.ba = call i64 @avio_seek(ptr noundef %i.az, i64 noundef 0, i32 noundef 1) #7 ; 2 uses
  %i.bb = call i64 @llvm.usub.sat.i64(i64 %i.ay, i64 %i.ba) ; 3 uses
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.bd = load i32, ptr %i.ak, align 4, !tbaa !95
  %i.be = icmp eq i32 %i.bd, 1
  %i.bf = zext i1 %i.be to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr @mp3_parse_info_tag.xing_offtbl, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !97
  %i.bj = icmp eq i32 %i.bi, 1
  %i.bk = zext i1 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !98
  %i.bn = call i64 @avio_skip(ptr noundef %i.bc, i64 noundef %i.bm) #7 ; 0 uses
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.bp = call i32 @avio_rb32(ptr noundef %i.bo) #7 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 1231971951
  %i.br = zext i1 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !57
  switch i32 %i.bp, label %mp3_parse_info_tag.exit.i [
    i32 1483304551, label %bb.i
    i32 1231971951, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.bt = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.bu = call i32 @avio_rb32(ptr noundef %i.bt) #7 ; 4 uses
  %i.bv = and i32 %i.bu, 1
  %.not114.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not114.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.bx = call i32 @avio_rb32(ptr noundef %i.bw) #7
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !54
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bz = and i32 %i.bu, 2
  %.not115.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not115.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.cb = call i32 @avio_rb32(ptr noundef %i.ca) #7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not116.not.i.i = icmp ugt i64 %i.ay, %i.ba
  br i1 %.not116.not.i.i, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !55 ; 2 uses
  %.not117.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not117.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = zext i32 %i.ce to i64                   ; 3 uses
  %i.cg = icmp ugt i64 %i.bb, %i.cf
  %..i.i = call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.cf) ; 2 uses
  %i.ch = call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.cf)
  %i.ci = sub i64 %i.ch, %..i.i
  %i.cj = lshr i64 %..i.i, 4
  %i.ck = icmp ugt i64 %i.ci, %i.cj               ; 2 uses
  %or.cond.i.i = select i1 %i.cg, i1 %i.ck, i1 false
  br i1 %or.cond.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i32 0, ptr %i.cl, align 8, !tbaa !54
  br label %.sink.split.i.i

bb.q:                                             ; preds = %bb.o
  br i1 %i.ck, label %.sink.split.i.i, label %bb.r

.sink.split.i.i:                                  ; preds = %bb.q, %bb.p
  %.str.11.sink.i.i = phi ptr [ @.str.11, %bb.p ], [ @.str.12, %bb.q ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull %.str.11.sink.i.i) #7
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i.i, %bb.q, %bb.n, %bb.m
  %i.cm = and i32 %i.bu, 4
  %.not118.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not118.i.i, label %read_xing_toc.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !55 ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !54
  %i.cs = zext i32 %i.cr to i64
  %i.ct = load i32, ptr %i.ap, align 4, !tbaa !96
  %.sroa.22.0.insert.ext.i.i = zext i32 %i.ct to i64
  %.sroa.22.0.insert.shift.i.i = shl nuw i64 %.sroa.22.0.insert.ext.i.i, 32
  %.sroa.01.0.insert.insert.i.i = or disjoint i64 %.sroa.22.0.insert.shift.i.i, %i.am
  %i.cu = load i64, ptr %i.ar, align 8
  %i.cv = call i64 @av_rescale_q(i64 noundef %i.cs, i64 %.sroa.01.0.insert.insert.i.i, i64 %i.cu) #8 ; 2 uses
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !30  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !58
  %i.cz = and i32 %i.cy, 524288
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 28
  %i.db = load i32, ptr %i.da, align 4, !tbaa !59
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = icmp ne i32 %i.cz, 0
  %or.cond.i.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  %i.de = icmp sgt i64 %i.cv, 0
  %or.cond.fr.i.i.i = freeze i1 %or.cond.i.i.i
  %narrow.i.i.i = and i1 %i.de, %or.cond.fr.i.i.i
  %.not.i.i.i = icmp eq i32 %i.co, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.dg = call i64 @avio_size(ptr noundef %i.df) #7 ; 2 uses
  %i.dh = icmp slt i64 %i.dg, 1
  br i1 %i.dh, label %.thread.i.i.i, label %bb.u

.thread.i.i.i:                                    ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.15) #7
end_hunk_0
begin_hunk_1_@mp3_read_header:bb.a
bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i.i = phi i32 [ -2147483648, %bb.z ], [ %spec.select125.i.i, %bb.aa ]
  %i.ew = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.ex = call i32 @avio_r8(ptr noundef %i.ew) #7 ; 0 uses
  %i.ey = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.ez = call i32 @avio_r8(ptr noundef %i.ey) #7 ; 0 uses
  %i.fa = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.fb = call i32 @avio_rb24(ptr noundef %i.fa) #7 ; 2 uses
  %i.fc = load i32, ptr %i.c, align 4, !tbaa !12
  %i.fd = call i32 @llvm.bswap.i32(i32 %i.fc)
  switch i32 %i.fd, label %bb.ah [
    i32 1279348037, label %bb.ac
    i32 1281455718, label %bb.ac
    i32 1281455715, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab
  %i.fe = lshr i32 %i.fb, 12                      ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !99
  %i.fg = and i32 %i.fb, 4095                     ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i32 %i.fg, ptr %i.fh, align 8, !tbaa !100
  %i.fi = add nuw nsw i32 %i.fe, 529
  %i.fj = zext nneg i32 %i.fi to i64              ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 368
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !101
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !54 ; 2 uses
  %.not122.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not122.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fn = sub nsw i32 529, %i.fg
  %i.fo = sext i32 %i.fn to i64
  %i.fp = zext i32 %i.fm to i64
  %i.fq = mul nuw nsw i64 %i.am, %i.fp            ; 2 uses
  %i.fr = add nsw i64 %i.fq, %i.fo
  %i.fs = getelementptr inbounds nuw i8, ptr %i.i, i64 376
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !102
  %i.ft = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  store i64 %i.fq, ptr %i.ft, align 8, !tbaa !103
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fu = load i64, ptr %i.n, align 8, !tbaa !89
  %.not123.i.i = icmp eq i64 %i.fu, 0
  br i1 %.not123.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fv = load i32, ptr %i.ap, align 4, !tbaa !96
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.fv to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, 1
  %i.fw = load i64, ptr %i.ar, align 8
  %i.fx = call i64 @av_rescale_q(i64 noundef %i.fj, i64 %.sroa.0.0.insert.insert.i.i, i64 %i.fw) #8
  store i64 %i.fx, ptr %i.n, align 8, !tbaa !89
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.13, i32 noundef %i.fe, i32 noundef %i.fg) #7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ab
  %i.fy = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.fz = call i32 @avio_r8(ptr noundef %i.fy) #7 ; 0 uses
  %i.ga = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.gb = call i32 @avio_r8(ptr noundef %i.ga) #7 ; 0 uses
  %i.gc = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.gd = call i32 @avio_rb16(ptr noundef %i.gc) #7 ; 0 uses
  %i.ge = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.gf = call i32 @avio_rb32(ptr noundef %i.ge) #7 ; 0 uses
  %i.gg = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.gh = call i32 @avio_rb16(ptr noundef %i.gg) #7 ; 0 uses
  %i.gi = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.gj = call i64 @ffio_get_checksum(ptr noundef %i.gi) #7
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.gm = call i32 @avio_rb16(ptr noundef %i.gl) #7
  %i.gn = and i32 %i.gk, 65535
  %i.go = icmp eq i32 %i.gm, %i.gn
  br i1 %i.go, label %bb.ai, label %mp3_parse_info_tag.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.gp = call i32 @ff_replaygain_export_raw(ptr noundef nonnull %i.i, i32 noundef %.0107.i.i, i32 noundef %i.ej, i32 noundef %.0.i.i, i32 noundef 0) #7 ; 0 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.gr = call i32 @av_dict_set(ptr noundef nonnull %i.gq, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.c, i32 noundef 0) #7 ; 0 uses
  br label %mp3_parse_info_tag.exit.i

mp3_parse_info_tag.exit.i:                        ; preds = %bb.ai, %bb.ah, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.gs = load ptr, ptr %i.d, align 8, !tbaa !30  ; 2 uses
  %i.gt = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.gu = add nsw i64 %i.r, 36
  %i.gv = call i64 @avio_seek(ptr noundef %i.gt, i64 noundef %i.gu, i32 noundef 0) #7 ; 0 uses
  %i.gw = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.gx = call i32 @avio_rb32(ptr noundef %i.gw) #7
  %i.gy = icmp eq i32 %i.gx, 1447187017
  br i1 %i.gy, label %bb.aj, label %mp3_parse_vbri_tag.exit.i

bb.aj:                                            ; preds = %mp3_parse_info_tag.exit.i
  %i.gz = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.ha = call i32 @avio_rb16(ptr noundef %i.gz) #7
  %i.hb = icmp eq i32 %i.ha, 1
  br i1 %i.hb, label %bb.ak, label %mp3_parse_vbri_tag.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.hc = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.hd = call i64 @avio_skip(ptr noundef %i.hc, i64 noundef 4) #7 ; 0 uses
  %i.he = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.hf = call i32 @avio_rb32(ptr noundef %i.he) #7
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gs, i64 36
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !55
  %i.hh = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.hi = call i32 @avio_rb32(ptr noundef %i.hh) #7
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  store i32 %i.hi, ptr %i.hj, align 8, !tbaa !54
  br label %mp3_parse_vbri_tag.exit.i

mp3_parse_vbri_tag.exit.i:                        ; preds = %bb.ak, %bb.aj, %mp3_parse_info_tag.exit.i
  %i.hk = load i32, ptr %i.an, align 8, !tbaa !54
  %.not43.i = icmp eq i32 %i.hk, 0
  br i1 %.not43.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %mp3_parse_vbri_tag.exit.i
  %i.hl = load i32, ptr %i.ao, align 4, !tbaa !55
  %.not44.i = icmp eq i32 %i.hl, 0
  br i1 %.not44.i, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al, %mp3_parse_vbri_tag.exit.i
  %i.hm = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.hn = add nsw i64 %i.r, %.038.i
  %i.ho = call i64 @avio_seek(ptr noundef %i.hm, i64 noundef %i.hn, i32 noundef 0) #7 ; 0 uses
  %i.hp = load i32, ptr %i.an, align 8, !tbaa !54 ; 2 uses
  %.not45.i = icmp eq i32 %i.hp, 0
  br i1 %.not45.i, label %mp3_parse_vbr_tags.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hq = zext i32 %i.hp to i64
  %i.hr = mul nuw nsw i64 %i.am, %i.hq            ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !99
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !100
  %i.hx = sext i32 %i.hw to i64
  %i.hy = add nsw i64 %i.hu, %i.hx
  %i.hz = sub nsw i64 %i.hr, %i.hy
  %i.ia = load i32, ptr %i.ap, align 4, !tbaa !96 ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.ia to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, 1
  %i.ib = load i64, ptr %i.ar, align 8
  %i.ic = call i64 @av_rescale_q(i64 noundef %i.hz, i64 %.sroa.0.0.insert.insert.i, i64 %i.ib) #8
  %i.id = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !64
  %i.ie = load i32, ptr %i.ao, align 4, !tbaa !55 ; 2 uses
  %.not46.i = icmp eq i32 %i.ie, 0
  br i1 %.not46.i, label %mp3_parse_vbr_tags.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.if = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !57
  %.not47.i = icmp eq i32 %i.ig, 0
  br i1 %.not47.i, label %bb.ap, label %mp3_parse_vbr_tags.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.ih = zext i32 %i.ie to i64
  %i.ii = shl nsw i32 %i.ia, 3
  %i.ij = sext i32 %i.ii to i64
  %i.ik = call i64 @av_rescale(i64 noundef %i.ih, i64 noundef %i.ij, i64 noundef %i.hr) #8
  %i.il = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  store i64 %i.ik, ptr %i.im, align 8, !tbaa !104
  br label %mp3_parse_vbr_tags.exit.thread

mp3_parse_vbr_tags.exit.thread:                   ; preds = %bb.an, %bb.ao, %bb.ap, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.ar

bb.aq:                                            ; preds = %bb.al, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %i.in = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.io = call i64 @avio_seek(ptr noundef %i.in, i64 noundef %i.r, i32 noundef 0) #7 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %mp3_parse_vbr_tags.exit.thread, %bb.aq
  %i.ip = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.iq = call i32 @ff_replaygain_export(ptr noundef nonnull %i.i, ptr noundef %i.ip) #7 ; 2 uses
  %i.ir = icmp slt i32 %i.iq, 0
  br i1 %i.ir, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.is = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.it = call i32 @ffio_ensure_seekback(ptr noundef %i.is, i64 noundef 67332) #7 ; 2 uses
  %i.iu = icmp slt i32 %i.it, 0
  br i1 %i.iu, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iv = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.iw = call i64 @avio_seek(ptr noundef %i.iv, i64 noundef 0, i32 noundef 1) #7 ; 3 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.be
  %indvars.iv = phi i64 [ 0, %bb.at ], [ %indvars.iv.next, %bb.be ] ; 4 uses
  %i.ix = load ptr, ptr %i.o, align 8, !tbaa !51  ; 2 uses
  %i.iy = add nsw i64 %i.iw, %indvars.iv          ; 3 uses
  %i.iz = call i64 @avio_seek(ptr noundef %i.ix, i64 noundef %i.iy, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.ja = icmp slt i64 %i.iz, 0
  br i1 %i.ja, label %check.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jb = call i32 @avio_read(ptr noundef %i.ix, ptr noundef nonnull %i.b, i32 noundef 4) #7
  %i.jc = icmp slt i32 %i.jb, 4
  br i1 %i.jc, label %check.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jd = load i32, ptr %i.b, align 4, !tbaa !12
  %i.je = call i32 @llvm.bswap.i32(i32 %i.jd)     ; 4 uses
  %.not.i.i = icmp ult i32 %i.je, -2097152
  %i.jf = insertelement <4 x i32> poison, i32 %i.je, i64 0
  %i.jg = shufflevector <4 x i32> %i.jf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jh = and <4 x i32> %i.jg, <i32 1572864, i32 393216, i32 61440, i32 3072>
  %i.ji = icmp eq <4 x i32> %i.jh, <i32 524288, i32 0, i32 61440, i32 3072>
  %i.jj = bitcast <4 x i1> %i.ji to i4
  %i.jk = icmp ne i4 %i.jj, 0
  %op.rdx134 = or i1 %i.jk, %.not.i.i
  br i1 %op.rdx134, label %check.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jl = call i32 @avpriv_mpegaudio_decode_header(ptr noundef nonnull %2, i32 noundef %i.je) #7
  %i.jm = icmp eq i32 %i.jl, 1
  br i1 %i.jm, label %check.exit.thread, label %check.exit

check.exit.thread:                                ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax
  %.0.i79.ph = phi i32 [ -1, %bb.ax ], [ -1, %bb.aw ], [ -2, %bb.av ], [ -2, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.bd

check.exit:                                       ; preds = %bb.ax
  %i.jn = load i32, ptr %2, align 4, !tbaa !15    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.jo = icmp sgt i32 %i.jn, 0
  br i1 %i.jo, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %check.exit
  %i.jp = load ptr, ptr %i.o, align 8, !tbaa !51  ; 2 uses
  %i.jq = zext nneg i32 %i.jn to i64
  %i.jr = add nsw i64 %i.iy, %i.jq
  %i.js = call i64 @avio_seek(ptr noundef %i.jp, i64 noundef %i.jr, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.jt = icmp slt i64 %i.js, 0
  br i1 %i.jt, label %check.exit87.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ju = call i32 @avio_read(ptr noundef %i.jp, ptr noundef nonnull %i.a, i32 noundef 4) #7
  %i.jv = icmp slt i32 %i.ju, 4
  br i1 %i.jv, label %check.exit87.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jw = load i32, ptr %i.a, align 4, !tbaa !12
  %i.jx = call i32 @llvm.bswap.i32(i32 %i.jw)     ; 4 uses
  %.not.i.i80 = icmp ult i32 %i.jx, -2097152
  %i.jy = insertelement <4 x i32> poison, i32 %i.jx, i64 0
  %i.jz = shufflevector <4 x i32> %i.jy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ka = and <4 x i32> %i.jz, <i32 1572864, i32 393216, i32 61440, i32 3072>
  %i.kb = icmp eq <4 x i32> %i.ka, <i32 524288, i32 0, i32 61440, i32 3072>
  %i.kc = bitcast <4 x i1> %i.kb to i4
  %i.kd = icmp ne i4 %i.kc, 0
  %op.rdx = or i1 %i.kd, %.not.i.i80
  br i1 %op.rdx, label %check.exit87.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ke = call i32 @avpriv_mpegaudio_decode_header(ptr noundef nonnull %1, i32 noundef %i.jx) #7
  %i.kf = icmp eq i32 %i.ke, 1
  br i1 %i.kf, label %check.exit87.thread, label %check.exit87

check.exit87.thread:                              ; preds = %bb.ay, %bb.az, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.be

check.exit87:                                     ; preds = %bb.bb
  %i.kg = load i32, ptr %1, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.kh = icmp sgt i32 %i.kg, -1
  br i1 %i.kh, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %check.exit87
  %i.ki = xor i32 %i.jx, %i.je
  %i.kj = and i32 %i.ki, 1969359
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %.thread100, label %bb.be

bb.bd:                                            ; preds = %check.exit.thread, %check.exit
  %.0.i7994 = phi i32 [ %.0.i79.ph, %check.exit.thread ], [ %i.jn, %check.exit ]
  %i.kl = icmp eq i32 %.0.i7994, -2
  br i1 %i.kl, label %.thread, label %bb.be

.thread:                                          ; preds = %bb.bd
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.9) #7
  br label %.loopexit

bb.be:                                            ; preds = %bb.bc, %check.exit87, %bb.bd, %check.exit87.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65536
  br i1 %exitcond.not, label %bb.bf, label %bb.au, !llvm.loop !78

.thread100:                                       ; preds = %bb.bc
  %i.km = trunc nuw nsw i64 %indvars.iv to i32
  %.not76 = icmp eq i64 %indvars.iv, 0
  %i.kn = select i1 %.not76, i32 40, i32 32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef %i.kn, ptr noundef nonnull @.str.10, i32 noundef %i.km, i64 noundef %i.iw) #7
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.thread100
  %.067 = phi i64 [ %i.iy, %.thread100 ], [ %i.iw, %bb.be ]
  %4 = load ptr, ptr %i.o, align 8, !tbaa !51
  %5 = call i64 @avio_seek(ptr noundef %4, i64 noundef %.067, i32 noundef 0) #7 ; 7 uses
  %i.ko = icmp slt i64 %5, 0
  br i1 %i.ko, label %bb.bg, label %.preheader

.preheader:                                       ; preds = %bb.bf
  %i.kp = getelementptr inbounds nuw i8, ptr %i.i, i64 328
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !105 ; 3 uses
  %i.kr = icmp sgt i32 %i.kq, 0
  br i1 %i.kr, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ks = getelementptr inbounds nuw i8, ptr %i.i, i64 320
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !65 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.kq to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ku = icmp ult i32 %i.kq, 4
  br i1 %i.ku, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kv = trunc i64 %5 to i32
  br label %.loopexit

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.new
  %indvars.iv113 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next114.3, %bb.bh ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.bh ]
  %i.kw = getelementptr inbounds nuw [24 x i8], ptr %i.kt, i64 %indvars.iv113 ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !67
  %i.ky = add nsw i64 %i.kx, %5
  store i64 %i.ky, ptr %i.kw, align 8, !tbaa !67
  %i.kz = getelementptr inbounds nuw [24 x i8], ptr %i.kt, i64 %indvars.iv113
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24 ; 2 uses
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !67
  %i.lc = add nsw i64 %i.lb, %5
  store i64 %i.lc, ptr %i.la, align 8, !tbaa !67
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %i.kt, i64 %indvars.iv113
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 48 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !67
  %i.lg = add nsw i64 %i.lf, %5
  store i64 %i.lg, ptr %i.le, align 8, !tbaa !67
  %i.lh = getelementptr inbounds nuw [24 x i8], ptr %i.kt, i64 %indvars.iv113
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 72 ; 2 uses
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !67
  %i.lk = add nsw i64 %i.lj, %5
  store i64 %i.lk, ptr %i.li, align 8, !tbaa !67
  %indvars.iv.next114.3 = add nuw nsw i64 %indvars.iv113, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.bh, !llvm.loop !79

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bh
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv113.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next114.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod137 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod137)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.epil.preheader
  %indvars.iv113.epil = phi i64 [ %indvars.iv113.epil.init, %.epil.preheader ], [ %indvars.iv.next114.epil, %bb.bi ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bi ]
  %i.ll = getelementptr inbounds nuw [24 x i8], ptr %i.kt, i64 %indvars.iv113.epil ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !67
  %i.ln = add nsw i64 %i.lm, %5
  store i64 %i.ln, ptr %i.ll, align 8, !tbaa !67
  %indvars.iv.next114.epil = add nuw nsw i64 %indvars.iv113.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.bi, !llvm.loop !80

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.bi, %.preheader, %.thread, %bb.as, %bb.ar, %bb.a, %bb.bg
  %.2 = phi i32 [ -12, %bb.a ], [ %i.iq, %bb.ar ], [ -1094995529, %.thread ], [ %i.kv, %bb.bg ], [ %i.it, %bb.as ], [ 0, %.preheader ], [ 0, %bb.bi ], [ 0, %.loopexit.loopexit.unr-lcssa ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 0) i32 @mp3_read_packet(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #7 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53   ; 3 uses
  %i.h = icmp sgt i64 %i.g, 128
  %i.i = icmp slt i64 %i.e, %i.g
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  %i.j = sub nsw i64 %i.g, %i.e
  %i.k = tail call i64 @llvm.smin.i64(i64 %i.j, i64 1024)
  %i.l = trunc i64 %i.k to i32
  %.0 = select i1 %or.cond, i32 %i.l, i32 1024
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.n = tail call i32 @av_get_packet(ptr noundef %i.m, ptr noundef %1, i32 noundef %.0) #7 ; 4 uses
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.n, 0
  %. = select i1 %.not, i32 -541478725, i32 %i.n
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !107
  %i.r = and i32 %i.q, -3
  store i32 %i.r, ptr %i.p, align 8, !tbaa !107
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 0, ptr %i.s, align 4, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.020 = phi i32 [ %., %bb.b ], [ %i.n, %bb.c ]
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal i32 @mp3_seek(ptr noundef %0, i32 %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 15 uses
  %4 = alloca %struct.MPADecodeHeader, align 4    ; 15 uses
  %5 = alloca %struct.AVIndexEntry, align 8       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i32, ptr %i.g, align 8, !tbaa !58
  %i.i = and i32 %i.h, 524288                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !55   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = icmp eq i32 %i.k, 0
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = tail call i64 @avio_size(ptr noundef %i.o) #7 ; 3 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.s = load i64, ptr %i.r, align 8, !tbaa !110  ; 2 uses
  %i.t = icmp sgt i64 %i.p, %i.s
  %i.u = sub nsw i64 %i.p, %i.s
  %spec.select = select i1 %i.t, i64 %i.u, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i64 [ %i.l, %bb.a ], [ 0, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !63
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !59
  %.not75 = icmp eq i32 %i.y, 0
  br i1 %.not75, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %cond = icmp eq i32 %i.i, 0
  br i1 %cond, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !57
  %.not77 = icmp eq i32 %i.aa, 0
  br i1 %.not77, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ab = tail call i32 @av_index_search_timestamp(ptr noundef %i.f, i64 noundef %2, i32 noundef %3) #7 ; 3 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.16) #7
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !65
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ad ; 2 uses
  %.pre85 = load i64, ptr %i.ag, align 8, !tbaa !67
  br label %bb.n

bb.j:                                             ; preds = %bb.d
  %.not78 = icmp eq i32 %i.i, 0
  br i1 %.not78, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.g, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !64 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  %i.ak = icmp sgt i64 %.1, 0
  %or.cond = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.thread
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.am = load i32, ptr %i.al, align 4, !tbaa !57
  %.not79 = icmp eq i32 %i.am, 0
  br i1 %.not79, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.17) #7
  %.pre = load i64, ptr %i.ah, align 8, !tbaa !64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = phi i64 [ %.pre, %bb.l ], [ %i.ai, %bb.k ] ; 2 uses
  %i.ao = icmp slt i64 %2, 0
  %..i = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.an)
  %.0.i = select i1 %i.ao, i64 0, i64 %..i        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.0.i, ptr %i.ap, align 8, !tbaa !111
  %i.aq = tail call i64 @av_rescale(i64 noundef %.0.i, i64 noundef %.1, i64 noundef %i.an) #8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !110
  %i.at = add nsw i64 %i.as, %i.aq
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m
  %i.au = phi i64 [ %.pre85, %bb.i ], [ %i.at, %bb.m ] ; 6 uses
  %.162 = phi ptr [ %i.ag, %bb.i ], [ %5, %bb.m ] ; 2 uses
  %i.av = and i32 %3, 1
  %.not.i = icmp eq i32 %i.av, 0                  ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !51
  %i.ay = tail call i64 @llvm.smax.i64(i64 %i.au, i64 4096)
  %i.az = add nsw i64 %i.ay, -4096
  %i.ba = tail call i64 @avio_seek(ptr noundef %i.ax, i64 noundef %i.az, i32 noundef 0) #7 ; 0 uses
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !51
  %i.bc = tail call i64 @avio_seek(ptr noundef %i.bb, i64 noundef %i.au, i32 noundef 0) #7 ; 2 uses
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %mp3_sync.exit.thread, label %.preheader87.i

.preheader87.i:                                   ; preds = %bb.n, %.thread.i
  %.053102.i = phi i32 [ %i.ej, %.thread.i ], [ 0, %bb.n ] ; 3 uses
  %.054101.i = phi i32 [ %.2.ph.i, %.thread.i ], [ 999, %bb.n ] ; 6 uses
  %.056100.i = phi i64 [ %.258.ph.i, %.thread.i ], [ %i.au, %bb.n ] ; 5 uses
  %i.be = add nsw i32 %.053102.i, -1024
  %i.bf = sub nsw i32 0, %.053102.i
  %i.bg = select i1 %.not.i, i32 %i.be, i32 %i.bf
  %i.bh = sext i32 %i.bg to i64                   ; 3 uses
  %i.bi = add nsw i64 %i.au, %i.bh                ; 5 uses
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %.thread.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader87.i
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !51 ; 2 uses
  %i.bl = call i64 @avio_seek(ptr noundef %i.bk, i64 noundef %i.bi, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %check.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %.preheader.preheader.i
  %i.bn = call i32 @avio_read(ptr noundef %i.bk, ptr noundef nonnull %i.a, i32 noundef 4) #7
  %i.bo = icmp slt i32 %i.bn, 4
  br i1 %i.bo, label %check.exit.thread.i, label %bb.p
end_hunk_1
