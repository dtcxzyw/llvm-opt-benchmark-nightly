Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/psaux?download=true
inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@afm_parser_parse:bb.a
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca [4 x %struct.AFM_ValueRec_], align 16 ; 12 uses
  %3 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca [5 x %struct.AFM_ValueRec_], align 16 ; 15 uses
  %5 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %6 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %7 = alloca [4 x %struct.AFM_ValueRec_], align 16 ; 19 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !264    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !535  ; 13 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %afm_parser_next_key.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8          ; 7 uses
  %.val67 = load ptr, ptr %i.f, align 8, !tbaa !265 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val67, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val67, i64 16
  %.pre.i = load i32, ptr %i.g, align 8, !tbaa !260
  %i.i = icmp sgt i32 %.pre.i, 1
  br i1 %i.i, label %afm_stream_read_string.exit.i.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @afm_stream_skip_spaces(ptr noundef nonnull %.val67)
  %i.j = load i32, ptr %i.g, align 8, !tbaa !260
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %afm_stream_read_string.exit.i.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %.val67, align 8, !tbaa !258 ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !259  ; 2 uses
  %i.n = icmp ult ptr %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %afm_stream_read_string.exit.i.preheader

bb.e:                                             ; preds = %.lr.ph
  %i.o = icmp ult ptr %i.q, %i.m
  br i1 %i.o, label %.lr.ph, label %afm_stream_read_string.exit.i.preheader

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  store ptr %i.q, ptr %.val67, align 8, !tbaa !258
  %i.r = load i8, ptr %i.p, align 1, !tbaa !41
  switch i8 %i.r, label %bb.e [
    i8 13, label %afm_stream_read_string.exit.i.preheader
    i8 10, label %afm_stream_read_string.exit.i.preheader
    i8 26, label %afm_stream_read_string.exit.i.preheader
  ]

afm_stream_read_string.exit.i.preheader:          ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %bb.e, %bb.b, %bb.c, %bb.d
  br label %afm_stream_read_string.exit.i

afm_stream_read_string.exit.i:                    ; preds = %afm_stream_read_string.exit.i.preheader, %bb.f
  store i32 0, ptr %i.g, align 8, !tbaa !260
  %i.s = tail call fastcc ptr @afm_stream_read_one(ptr noundef nonnull %.val67) ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.f, label %afm_parser_next_key.exit

bb.f:                                             ; preds = %afm_stream_read_string.exit.i
  %i.t = load i32, ptr %i.g, align 8, !tbaa !260
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %afm_stream_read_string.exit.i, label %afm_parser_next_key.exit.thread

afm_parser_next_key.exit:                         ; preds = %afm_stream_read_string.exit.i
  %i.v = load ptr, ptr %.val67, align 8, !tbaa !258
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %i.x, %i.w
  %.not140 = icmp eq i64 %i.y, -17
  br i1 %.not140, label %bb.g, label %afm_parser_next_key.exit.thread

bb.g:                                             ; preds = %afm_parser_next_key.exit
  %i.z = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(17) @.str.1, i64 noundef 16) #20
  %.not55 = icmp eq i32 %i.z, 0
  br i1 %.not55, label %.preheader156, label %afm_parser_next_key.exit.thread

.preheader156:                                    ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.preheader156, %afm_parse_kern_data.exit
  %.041 = phi i32 [ %.3, %afm_parse_kern_data.exit ], [ 160, %.preheader156 ] ; 16 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !265 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.pre.i68 = load i32, ptr %i.ap, align 8, !tbaa !260
  %i.ar = icmp sgt i32 %.pre.i68, 1
  br i1 %i.ar, label %afm_stream_read_string.exit.i69.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @afm_stream_skip_spaces(ptr noundef nonnull %.val)
  %i.as = load i32, ptr %i.ap, align 8, !tbaa !260
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %afm_stream_read_string.exit.i69.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %.val, align 8, !tbaa !258 ; 2 uses
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !259 ; 2 uses
  %i.aw = icmp ult ptr %i.au, %i.av
  br i1 %i.aw, label %.lr.ph644, label %afm_stream_read_string.exit.i69.preheader

bb.k:                                             ; preds = %.lr.ph644
  %i.ax = icmp ult ptr %i.az, %i.av
  br i1 %i.ax, label %.lr.ph644, label %afm_stream_read_string.exit.i69.preheader

.lr.ph644:                                        ; preds = %bb.j, %bb.k
  %i.ay = phi ptr [ %i.az, %bb.k ], [ %i.au, %bb.j ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  store ptr %i.az, ptr %.val, align 8, !tbaa !258
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !41
  switch i8 %i.ba, label %bb.k [
    i8 13, label %afm_stream_read_string.exit.i69.preheader
    i8 10, label %afm_stream_read_string.exit.i69.preheader
    i8 26, label %afm_stream_read_string.exit.i69.preheader
  ]

afm_stream_read_string.exit.i69.preheader:        ; preds = %.lr.ph644, %.lr.ph644, %.lr.ph644, %bb.k, %bb.h, %bb.i, %bb.j
  br label %afm_stream_read_string.exit.i69

afm_stream_read_string.exit.i69:                  ; preds = %afm_stream_read_string.exit.i69.preheader, %bb.l
  store i32 0, ptr %i.ap, align 8, !tbaa !260
  %i.bb = tail call fastcc ptr @afm_stream_read_one(ptr noundef nonnull %.val) ; 4 uses
  %.not.i70 = icmp eq ptr %i.bb, null
  br i1 %.not.i70, label %bb.l, label %bb.m

bb.l:                                             ; preds = %afm_stream_read_string.exit.i69
  %i.bc = load i32, ptr %i.ap, align 8, !tbaa !260
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %afm_stream_read_string.exit.i69, label %afm_parser_next_key.exit72.thread

bb.m:                                             ; preds = %afm_stream_read_string.exit.i69
  %i.be = load ptr, ptr %.val, align 8, !tbaa !258
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bb to i64
  %i.bh = xor i64 %i.bg, -1
  %i.bi = add i64 %i.bf, %i.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bj = load i8, ptr %i.bb, align 1, !tbaa !41  ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %.loopexit17.i.1, %bb.m
  %indvars.iv = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.1, %.loopexit17.i.1 ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 16, !tbaa !33
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !41
  %i.bn = icmp eq i8 %i.bm, %i.bj
  br i1 %i.bn, label %.preheader.i.preheader, label %.loopexit17.i

.preheader.i.preheader:                           ; preds = %.loopexit17.i, %bb.n
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %bb.n ], [ %indvars.iv.next, %.loopexit17.i ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.p
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ %indvars.iv.lcssa, %.preheader.i.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !33 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !41
  %.not.i73 = icmp eq i8 %i.bq, %i.bj
  br i1 %.not.i73, label %bb.o, label %afm_parse_kern_data.exit

bb.o:                                             ; preds = %.preheader.i
  %i.br = tail call i32 @strncmp(ptr noundef nonnull %i.bp, ptr noundef nonnull readonly %i.bb, i64 noundef %i.bi) #20
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %afm_tokenize.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bt = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.bt, 74
  br i1 %exitcond.not.i, label %afm_parse_kern_data.exit, label %.preheader.i

.loopexit17.i:                                    ; preds = %bb.n
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.next
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !33
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !41
  %i.bx = icmp eq i8 %i.bw, %i.bj
  br i1 %i.bx, label %.preheader.i.preheader, label %.loopexit17.i.1

.loopexit17.i.1:                                  ; preds = %.loopexit17.i
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 74
  br i1 %exitcond.not.1, label %afm_parse_kern_data.exit, label %bb.n, !llvm.loop !532

afm_tokenize.exit:                                ; preds = %bb.o
  %i.by = trunc nsw i64 %indvars.iv.i to i32
  switch i32 %i.by, label %afm_parse_kern_data.exit [
    i32 40, label %bb.q
    i32 30, label %bb.s
    i32 26, label %bb.u
    i32 0, label %bb.w
    i32 14, label %bb.y
    i32 45, label %bb.aa
    i32 49, label %bb.an
    i32 20, label %afm_parse_kern_data.exit.thread135
  ]

bb.q:                                             ; preds = %afm_tokenize.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i32 3, ptr %6, align 8, !tbaa !267
  %i.bz = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull readonly %0, ptr noundef %6, i32 noundef 1)
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.r, label %afm_parser_read_int.exit

afm_parser_read_int.exit:                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %afm_parse_kern_data.exit.thread128

bb.r:                                             ; preds = %bb.q
  %i.cb = load i32, ptr %i.ao, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cc = and i32 %i.cb, -3
  %or.cond3.not = icmp eq i32 %i.cc, 0
  br i1 %or.cond3.not, label %afm_parse_kern_data.exit, label %afm_parse_kern_data.exit.thread128

bb.s:                                             ; preds = %afm_tokenize.exit
  store i32 4, ptr %7, align 16, !tbaa !267
  %i.cd = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull %0, ptr noundef %7, i32 noundef 1)
  %.not63 = icmp eq i32 %i.cd, 1
  br i1 %.not63, label %bb.t, label %afm_parse_kern_data.exit.thread128

bb.t:                                             ; preds = %bb.s
  %i.ce = load i8, ptr %i.ab, align 8, !tbaa !41
  store i8 %i.ce, ptr %i.e, align 8, !tbaa !539
  br label %afm_parse_kern_data.exit

bb.u:                                             ; preds = %afm_tokenize.exit
  store i32 2, ptr %7, align 16, !tbaa !267
  store i32 2, ptr %i.ae, align 16, !tbaa !267
  store i32 2, ptr %i.af, align 16, !tbaa !267
  store i32 2, ptr %i.ag, align 16, !tbaa !267
  %i.cf = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull %0, ptr noundef %7, i32 noundef 4)
  %.not62 = icmp eq i32 %i.cf, 4
  br i1 %.not62, label %bb.v, label %afm_parse_kern_data.exit.thread128

bb.v:                                             ; preds = %bb.u
  %i.cg = load i64, ptr %i.ab, align 8, !tbaa !41
  store i64 %i.cg, ptr %i.ah, align 8, !tbaa !540
  %i.ch = load i64, ptr %i.ai, align 8, !tbaa !41
  store i64 %i.ch, ptr %i.aj, align 8, !tbaa !541
  %i.ci = load i64, ptr %i.ak, align 8, !tbaa !41
  store i64 %i.ci, ptr %i.al, align 8, !tbaa !542
  %i.cj = load i64, ptr %i.am, align 8, !tbaa !41
  store i64 %i.cj, ptr %i.an, align 8, !tbaa !543
  br label %afm_parse_kern_data.exit

bb.w:                                             ; preds = %afm_tokenize.exit
  store i32 2, ptr %7, align 16, !tbaa !267
  %i.ck = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull %0, ptr noundef %7, i32 noundef 1)
  %.not61 = icmp eq i32 %i.ck, 1
  br i1 %.not61, label %bb.x, label %afm_parse_kern_data.exit.thread128

bb.x:                                             ; preds = %bb.w
  %i.cl = load i64, ptr %i.ab, align 8, !tbaa !41
  store i64 %i.cl, ptr %i.ad, align 8, !tbaa !544
  br label %afm_parse_kern_data.exit

bb.y:                                             ; preds = %afm_tokenize.exit
  store i32 2, ptr %7, align 16, !tbaa !267
  %i.cm = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull %0, ptr noundef %7, i32 noundef 1)
  %.not60 = icmp eq i32 %i.cm, 1
  br i1 %.not60, label %bb.z, label %afm_parse_kern_data.exit.thread128

bb.z:                                             ; preds = %bb.y
  %i.cn = load i64, ptr %i.ab, align 8, !tbaa !41
  store i64 %i.cn, ptr %i.ac, align 8, !tbaa !545
  br label %afm_parse_kern_data.exit

bb.aa:                                            ; preds = %afm_tokenize.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 3, ptr %5, align 8, !tbaa !267
  %i.co = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull readonly %0, ptr noundef %5, i32 noundef 1)
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.ab, label %.thread

.thread:                                          ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %afm_parse_kern_data.exit.thread128

bb.ab:                                            ; preds = %bb.aa
  %i.cq = load i32, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph.i, label %.preheader.i76.preheader

.lr.ph.i:                                         ; preds = %bb.ab
  %.val16.i = load ptr, ptr %i.f, align 8, !tbaa !265 ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val16.i, i64 24 ; 7 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !259 ; 8 uses
  %.promoted84.i = load i32, ptr %i.cs, align 8
  %.val16.promoted87.i = load ptr, ptr %.val16.i, align 8, !tbaa !258
  br label %bb.ac

bb.ac:                                            ; preds = %afm_parser_next_key.exit.i, %.lr.ph.i
  %.val16.promoted88.i = phi ptr [ %.val16.promoted87.i, %.lr.ph.i ], [ %.val16.promoted89.i, %afm_parser_next_key.exit.i ]
  %.promoted85.i = phi i32 [ %.promoted84.i, %.lr.ph.i ], [ %.promoted86.i, %afm_parser_next_key.exit.i ] ; 2 uses
  %.01183.i = phi i32 [ %i.cq, %.lr.ph.i ], [ %i.cv, %afm_parser_next_key.exit.i ] ; 2 uses
  %i.cv = add nsw i32 %.01183.i, -1
  %i.cw = icmp sgt i32 %.promoted85.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %afm_stream_skip_spaces.exit41.thread.i, %bb.ac
  %i.cx = phi ptr [ %i.dp, %afm_stream_skip_spaces.exit41.thread.i ], [ %.val16.promoted88.i, %bb.ac ] ; 5 uses
  %.pr5574.i = phi i32 [ 2, %afm_stream_skip_spaces.exit41.thread.i ], [ %.promoted85.i, %bb.ac ] ; 2 uses
  %i.cy = phi i1 [ true, %afm_stream_skip_spaces.exit41.thread.i ], [ %i.cw, %bb.ac ]
  br i1 %i.cy, label %.preheader.i33.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = icmp sgt i32 %.pr5574.i, 0
  br i1 %i.cz, label %afm_stream_skip_spaces.exit.i, label %.preheader.i25.i

.preheader.i25.i:                                 ; preds = %bb.ae
  %i.da = icmp ult ptr %i.cx, %i.cu
  br i1 %i.da, label %.lr.ph.i.i, label %.preheader.i33.i

.lr.ph.i.i:                                       ; preds = %.preheader.i25.i, %.backedge.i.i
  %i.db = phi ptr [ %i.dc, %.backedge.i.i ], [ %i.cx, %.preheader.i25.i ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 9 uses
  store ptr %i.dc, ptr %.val16.i, align 8, !tbaa !258
  %i.dd = load i8, ptr %i.db, align 1, !tbaa !41
  switch i8 %i.dd, label %afm_stream_skip_spaces.exit.i [
    i8 32, label %.backedge.i.i
    i8 9, label %.backedge.i.i
    i8 13, label %.preheader.i33.i
    i8 10, label %.preheader.i33.i
    i8 59, label %afm_stream_skip_spaces.exit.thread51.i
    i8 26, label %.preheader.i33.i
  ]

.backedge.i.i:                                    ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %exitcond.not.i27.i = icmp eq ptr %i.dc, %i.cu
  br i1 %exitcond.not.i27.i, label %.preheader.i33.i, label %.lr.ph.i.i

afm_stream_skip_spaces.exit.thread51.i:           ; preds = %.lr.ph.i.i
  store i32 1, ptr %i.cs, align 8, !tbaa !260
  br label %bb.af

afm_stream_skip_spaces.exit.i:                    ; preds = %.lr.ph.i.i, %bb.ae
  %i.de = phi ptr [ %i.cx, %bb.ae ], [ %i.dc, %.lr.ph.i.i ] ; 2 uses
  %i.df = icmp sgt i32 %.pr5574.i, 1
  br i1 %i.df, label %.preheader.i33.i, label %bb.af

bb.af:                                            ; preds = %afm_stream_skip_spaces.exit.i, %afm_stream_skip_spaces.exit.thread51.i
  %i.dg = phi ptr [ %i.dc, %afm_stream_skip_spaces.exit.thread51.i ], [ %i.de, %afm_stream_skip_spaces.exit.i ] ; 3 uses
  %i.dh = icmp ult ptr %i.dg, %i.cu
  br i1 %i.dh, label %.lr.ph648, label %.preheader.i33.i

bb.ag:                                            ; preds = %.lr.ph648
  %i.di = icmp ult ptr %i.dk, %i.cu
  br i1 %i.di, label %.lr.ph648, label %.preheader.i33.i

.lr.ph648:                                        ; preds = %bb.af, %bb.ag
  %i.dj = phi ptr [ %i.dk, %bb.ag ], [ %i.dg, %bb.af ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 7 uses
  store ptr %i.dk, ptr %.val16.i, align 8, !tbaa !258
  %i.dl = load i8, ptr %i.dj, align 1, !tbaa !41
  switch i8 %i.dl, label %bb.ag [
    i8 13, label %.preheader.i33.i
    i8 10, label %.preheader.i33.i
    i8 26, label %.preheader.i33.i
  ]

.preheader.i33.i:                                 ; preds = %.backedge.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %bb.ag, %.lr.ph648, %.lr.ph648, %.lr.ph648, %bb.af, %afm_stream_skip_spaces.exit.i, %.preheader.i25.i, %bb.ad
  %i.dm = phi ptr [ %i.de, %afm_stream_skip_spaces.exit.i ], [ %i.dk, %bb.ag ], [ %i.cx, %.preheader.i25.i ], [ %i.cx, %bb.ad ], [ %i.dg, %bb.af ], [ %i.dk, %.lr.ph648 ], [ %i.dk, %.lr.ph648 ], [ %i.dk, %.lr.ph648 ], [ %i.dc, %.lr.ph.i.i ], [ %i.dc, %.lr.ph.i.i ], [ %i.dc, %.lr.ph.i.i ], [ %i.dc, %.backedge.i.i ] ; 2 uses
  store i32 0, ptr %i.cs, align 8, !tbaa !260
  %i.dn = icmp ult ptr %i.dm, %i.cu
  br i1 %i.dn, label %.lr.ph.i37.i, label %.thread.i35.i

.lr.ph.i37.i:                                     ; preds = %.preheader.i33.i, %.backedge.i38.i
  %i.do = phi ptr [ %i.dp, %.backedge.i38.i ], [ %i.dm, %.preheader.i33.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 7 uses
  store ptr %i.dp, ptr %.val16.i, align 8, !tbaa !258
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !41
  switch i8 %i.dq, label %afm_stream_skip_spaces.exit41.i.loopexit [
    i8 32, label %.backedge.i38.i
    i8 9, label %.backedge.i38.i
    i8 13, label %afm_stream_skip_spaces.exit41.thread.i
    i8 10, label %afm_stream_skip_spaces.exit41.thread.i
    i8 59, label %bb.ah
    i8 26, label %.thread.i35.i
  ]

.backedge.i38.i:                                  ; preds = %.lr.ph.i37.i, %.lr.ph.i37.i
  %exitcond.not.i39.i = icmp eq ptr %i.dp, %i.cu
  br i1 %exitcond.not.i39.i, label %.thread.i35.i, label %.lr.ph.i37.i
end_hunk_0
begin_hunk_1_@afm_parser_parse:bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %.val16.promoted92.i655, i64 1 ; 9 uses
  store ptr %i.dt, ptr %.val16.i, align 8, !tbaa !258
  %i.du = load i8, ptr %.val16.promoted92.i655, align 1, !tbaa !41
  switch i8 %i.du, label %afm_stream_skip_spaces.exit41.i [
    i8 32, label %afm_parser_next_key.exit.i
    i8 9, label %afm_parser_next_key.exit.i
    i8 13, label %.thread26.sink.split.i.i.loopexit
    i8 10, label %.thread26.sink.split.i.i.loopexit
    i8 59, label %.thread26.sink.split.i.i.loopexit744
    i8 26, label %.thread26.sink.split.i.i
  ]

.thread26.sink.split.i.i.loopexit:                ; preds = %.lr.ph656, %.lr.ph656
  br label %.thread26.sink.split.i.i

.thread26.sink.split.i.i.loopexit744:             ; preds = %.lr.ph656
  br label %.thread26.sink.split.i.i

.thread26.sink.split.i.i:                         ; preds = %afm_stream_skip_spaces.exit41.i, %.lr.ph656, %.thread26.sink.split.i.i.loopexit744, %afm_stream_skip_spaces.exit41.i.loopexit, %.thread26.sink.split.i.i.loopexit
  %.val16.promoted90.i = phi ptr [ %i.dt, %.lr.ph656 ], [ %i.dt, %.thread26.sink.split.i.i.loopexit ], [ %i.dp, %afm_stream_skip_spaces.exit41.i.loopexit ], [ %i.dt, %afm_stream_skip_spaces.exit41.i ], [ %i.dt, %.thread26.sink.split.i.i.loopexit744 ]
  %.sink.i.i = phi i32 [ 3, %.lr.ph656 ], [ 2, %.thread26.sink.split.i.i.loopexit ], [ 3, %afm_stream_skip_spaces.exit41.i.loopexit ], [ 3, %afm_stream_skip_spaces.exit41.i ], [ 1, %.thread26.sink.split.i.i.loopexit744 ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.cs, align 8, !tbaa !260
  br label %afm_parser_next_key.exit.i

afm_stream_skip_spaces.exit41.thread.i:           ; preds = %.lr.ph.i37.i, %.lr.ph.i37.i
  store i32 2, ptr %i.cs, align 8, !tbaa !260
  br label %bb.ad

afm_parser_next_key.exit.i:                       ; preds = %.lr.ph656, %.lr.ph656, %.thread26.sink.split.i.i
  %.val16.promoted89.i = phi ptr [ %.val16.promoted90.i, %.thread26.sink.split.i.i ], [ %i.dt, %.lr.ph656 ], [ %i.dt, %.lr.ph656 ]
  %.promoted86.i = phi i32 [ %.sink.i.i, %.thread26.sink.split.i.i ], [ 0, %.lr.ph656 ], [ 0, %.lr.ph656 ]
  %i.dv = icmp sgt i32 %.01183.i, 1
  br i1 %i.dv, label %bb.ac, label %.preheader.i76.preheader, !llvm.loop !533

.preheader.i76.preheader:                         ; preds = %afm_parser_next_key.exit.i, %bb.ab
  br label %.preheader.i76

.preheader.i76:                                   ; preds = %.preheader.i76.preheader, %afm_tokenize.exit.i
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !265 ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i, i64 24 ; 7 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %.pre.i17.i = load i32, ptr %i.dw, align 8, !tbaa !260
  %i.dy = icmp sgt i32 %.pre.i17.i, 1
  br i1 %i.dy, label %..preheader.i42_crit_edge.i, label %bb.ai

..preheader.i42_crit_edge.i:                      ; preds = %afm_stream_skip_spaces.exit50.thread.i, %.preheader.i76
  %.pre.i80 = load ptr, ptr %i.dx, align 8, !tbaa !259
  %.promoted.i43.pre.i = load ptr, ptr %.val.i, align 8, !tbaa !258
  br label %.preheader.i42.i

bb.ai:                                            ; preds = %.preheader.i76
  tail call fastcc void @afm_stream_skip_spaces(ptr noundef nonnull %.val.i)
  %i.dz = load i32, ptr %i.dw, align 8, !tbaa !260
  %i.ea = icmp slt i32 %i.dz, 2
  %.pre119.i = load ptr, ptr %i.dx, align 8, !tbaa !259 ; 7 uses
  %.promoted.i43.pre120.i = load ptr, ptr %.val.i, align 8, !tbaa !258 ; 3 uses
  %i.eb = icmp ult ptr %.promoted.i43.pre120.i, %.pre119.i
  %or.cond = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond, label %.lr.ph659, label %.preheader.i42.i

.preheader:                                       ; preds = %.lr.ph659
  %i.ec = icmp ult ptr %i.ee, %.pre119.i
  br i1 %i.ec, label %.lr.ph659, label %.preheader.i42.i

.lr.ph659:                                        ; preds = %bb.ai, %.preheader
  %i.ed = phi ptr [ %i.ee, %.preheader ], [ %.promoted.i43.pre120.i, %bb.ai ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1 ; 7 uses
  store ptr %i.ee, ptr %.val.i, align 8, !tbaa !258
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !41
  switch i8 %i.ef, label %.preheader [
    i8 13, label %.preheader.i42.i
    i8 10, label %.preheader.i42.i
    i8 26, label %.preheader.i42.i
  ]

.preheader.i42.i:                                 ; preds = %.preheader, %.lr.ph659, %.lr.ph659, %.lr.ph659, %bb.ai, %..preheader.i42_crit_edge.i
  %.promoted.i43.i = phi ptr [ %.promoted.i43.pre.i, %..preheader.i42_crit_edge.i ], [ %.promoted.i43.pre120.i, %bb.ai ], [ %i.ee, %.lr.ph659 ], [ %i.ee, %.lr.ph659 ], [ %i.ee, %.lr.ph659 ], [ %i.ee, %.preheader ] ; 2 uses
  %i.eg = phi ptr [ %.pre.i80, %..preheader.i42_crit_edge.i ], [ %.pre119.i, %bb.ai ], [ %.pre119.i, %.lr.ph659 ], [ %.pre119.i, %.lr.ph659 ], [ %.pre119.i, %.lr.ph659 ], [ %.pre119.i, %.preheader ] ; 4 uses
  store i32 0, ptr %i.dw, align 8, !tbaa !260
  %i.eh = icmp ult ptr %.promoted.i43.i, %i.eg
  br i1 %i.eh, label %.lr.ph.i46.i, label %.thread.i44.i

.lr.ph.i46.i:                                     ; preds = %.preheader.i42.i, %.backedge.i47.i
  %i.ei = phi ptr [ %i.ej, %.backedge.i47.i ], [ %.promoted.i43.i, %.preheader.i42.i ] ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1 ; 6 uses
  store ptr %i.ej, ptr %.val.i, align 8, !tbaa !258
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !41
  switch i8 %i.ek, label %afm_stream_skip_spaces.exit50.i.loopexit [
    i8 32, label %.backedge.i47.i
    i8 9, label %.backedge.i47.i
    i8 13, label %afm_stream_skip_spaces.exit50.thread.i
    i8 10, label %afm_stream_skip_spaces.exit50.thread.i
    i8 59, label %bb.aj
    i8 26, label %.thread.i44.i
  ]

.backedge.i47.i:                                  ; preds = %.lr.ph.i46.i, %.lr.ph.i46.i
  %exitcond.not.i48.i = icmp eq ptr %i.ej, %i.eg
  br i1 %exitcond.not.i48.i, label %.thread.i44.i, label %.lr.ph.i46.i

bb.aj:                                            ; preds = %.lr.ph.i46.i
  store i32 1, ptr %i.dw, align 8, !tbaa !260
  br label %afm_parse_kern_data.exit.thread135

.thread.i44.i:                                    ; preds = %.preheader.i42.i, %.backedge.i47.i, %.lr.ph.i46.i
  store i32 3, ptr %i.dw, align 8, !tbaa !260
  br label %afm_parse_kern_data.exit.thread135

afm_stream_skip_spaces.exit50.i.loopexit:         ; preds = %.lr.ph.i46.i
  %i.el = icmp ult ptr %i.ej, %i.eg
  br i1 %i.el, label %.lr.ph666, label %.thread26.sink.split.i29.i

afm_stream_skip_spaces.exit50.i:                  ; preds = %.lr.ph666
  %i.em = icmp ult ptr %i.eo, %i.eg
  br i1 %i.em, label %.lr.ph666, label %.thread26.sink.split.i29.i

.lr.ph666:                                        ; preds = %afm_stream_skip_spaces.exit50.i.loopexit, %afm_stream_skip_spaces.exit50.i
  %i.en = phi ptr [ %i.eo, %afm_stream_skip_spaces.exit50.i ], [ %i.ej, %afm_stream_skip_spaces.exit50.i.loopexit ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1 ; 9 uses
  store ptr %i.eo, ptr %.val.i, align 8, !tbaa !258
  %i.ep = load i8, ptr %i.en, align 1, !tbaa !41
  switch i8 %i.ep, label %afm_stream_skip_spaces.exit50.i [
    i8 32, label %.loopexit.i
    i8 9, label %.loopexit.i
    i8 13, label %.thread26.sink.split.i29.i.loopexit
    i8 10, label %.thread26.sink.split.i29.i.loopexit
    i8 59, label %.thread26.sink.split.i29.i.loopexit743
    i8 26, label %.thread26.sink.split.i29.i
  ]

.thread26.sink.split.i29.i.loopexit:              ; preds = %.lr.ph666, %.lr.ph666
  br label %.thread26.sink.split.i29.i

.thread26.sink.split.i29.i.loopexit743:           ; preds = %.lr.ph666
  br label %.thread26.sink.split.i29.i

.thread26.sink.split.i29.i:                       ; preds = %afm_stream_skip_spaces.exit50.i, %.lr.ph666, %.thread26.sink.split.i29.i.loopexit743, %afm_stream_skip_spaces.exit50.i.loopexit, %.thread26.sink.split.i29.i.loopexit
  %i.eq = phi ptr [ %i.eo, %.thread26.sink.split.i29.i.loopexit ], [ %i.eo, %.lr.ph666 ], [ %i.ej, %afm_stream_skip_spaces.exit50.i.loopexit ], [ %i.eo, %afm_stream_skip_spaces.exit50.i ], [ %i.eo, %.thread26.sink.split.i29.i.loopexit743 ]
  %.sink.i30.i = phi i32 [ 2, %.thread26.sink.split.i29.i.loopexit ], [ 3, %.lr.ph666 ], [ 3, %afm_stream_skip_spaces.exit50.i.loopexit ], [ 3, %afm_stream_skip_spaces.exit50.i ], [ 1, %.thread26.sink.split.i29.i.loopexit743 ]
  store i32 %.sink.i30.i, ptr %i.dw, align 8, !tbaa !260
  br label %.loopexit.i

afm_stream_skip_spaces.exit50.thread.i:           ; preds = %.lr.ph.i46.i, %.lr.ph.i46.i
  store i32 2, ptr %i.dw, align 8, !tbaa !260
  br label %..preheader.i42_crit_edge.i

.loopexit.i:                                      ; preds = %.lr.ph666, %.lr.ph666, %.thread26.sink.split.i29.i
  %i.er = phi ptr [ %i.eq, %.thread26.sink.split.i29.i ], [ %i.eo, %.lr.ph666 ], [ %i.eo, %.lr.ph666 ]
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ei to i64
  %i.eu = xor i64 %i.et, -1
  %i.ev = add i64 %i.es, %i.eu
  %i.ew = load i8, ptr %i.ei, align 1, !tbaa !41  ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit17.i.i.1, %.loopexit.i
  %indvars.iv.i77 = phi i64 [ 0, %.loopexit.i ], [ %indvars.iv.next.i78.1, %.loopexit17.i.i.1 ] ; 4 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i77
  %i.ey = load ptr, ptr %i.ex, align 16, !tbaa !33
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !41
  %i.fa = icmp eq i8 %i.ez, %i.ew
  br i1 %i.fa, label %.preheader.i.i.preheader, label %.loopexit17.i.i

.preheader.i.i.preheader:                         ; preds = %.loopexit17.i.i, %bb.ak
  %indvars.iv.i77.lcssa = phi i64 [ %indvars.iv.i77, %bb.ak ], [ %indvars.iv.next.i78, %.loopexit17.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.am
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.am ], [ %indvars.iv.i77.lcssa, %.preheader.i.i.preheader ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i.i
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !33 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !41
  %.not.i23.i = icmp eq i8 %i.fd, %i.ew
  br i1 %.not.i23.i, label %bb.al, label %afm_tokenize.exit.i

bb.al:                                            ; preds = %.preheader.i.i
  %i.fe = tail call i32 @strncmp(ptr noundef nonnull %i.fc, ptr noundef nonnull readonly %i.ei, i64 noundef %i.ev) #20
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %.loopexit.loopexit.split.loop.exit25.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fg = and i64 %indvars.iv.next.i.i, 4294967295
  %exitcond.not.i.i = icmp eq i64 %i.fg, 74
  br i1 %exitcond.not.i.i, label %afm_tokenize.exit.i, label %.preheader.i.i

.loopexit17.i.i:                                  ; preds = %bb.ak
  %indvars.iv.next.i78 = or disjoint i64 %indvars.iv.i77, 1 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.next.i78
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !33
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !41
  %i.fk = icmp eq i8 %i.fj, %i.ew
  br i1 %i.fk, label %.preheader.i.i.preheader, label %.loopexit17.i.i.1

.loopexit17.i.i.1:                                ; preds = %.loopexit17.i.i
  %indvars.iv.next.i78.1 = add nuw nsw i64 %indvars.iv.i77, 2 ; 2 uses
  %exitcond.not.i79.1 = icmp eq i64 %indvars.iv.next.i78.1, 74
  br i1 %exitcond.not.i79.1, label %afm_tokenize.exit.i, label %bb.ak, !llvm.loop !532

.loopexit.loopexit.split.loop.exit25.i.i:         ; preds = %bb.al
  %i.fl = trunc nsw i64 %indvars.iv.i.i to i32
  br label %afm_tokenize.exit.i

afm_tokenize.exit.i:                              ; preds = %.loopexit17.i.i.1, %bb.am, %.preheader.i.i, %.loopexit.loopexit.split.loop.exit25.i.i
  %.014.i.i = phi i32 [ 75, %bb.am ], [ %i.fl, %.loopexit.loopexit.split.loop.exit25.i.i ], [ 75, %.preheader.i.i ], [ 75, %.loopexit17.i.i.1 ]
  switch i32 %.014.i.i, label %.preheader.i76 [
    i32 20, label %afm_parse_kern_data.exit
    i32 17, label %afm_parse_kern_data.exit
  ]

bb.an:                                            ; preds = %afm_tokenize.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 72
  br label %bb.ao

bb.ao:                                            ; preds = %afm_tokenize.exit.thread.i, %bb.an
  %.010.i = phi i32 [ 0, %bb.an ], [ %.111.i, %afm_tokenize.exit.thread.i ] ; 6 uses
  %.0.i81 = phi i32 [ 0, %bb.an ], [ %.1.i, %afm_tokenize.exit.thread.i ] ; 6 uses
  %.val.i82 = load ptr, ptr %i.f, align 8, !tbaa !265 ; 9 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.val.i82, i64 24 ; 7 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val.i82, i64 16 ; 3 uses
  %.pre.i.i = load i32, ptr %i.ge, align 8, !tbaa !260 ; 2 uses
  %i.gg = icmp sgt i32 %.pre.i.i, 1
  %i.gh = load ptr, ptr %i.gf, align 8, !tbaa !259 ; 8 uses
  %.val.promoted.i = load ptr, ptr %.val.i82, align 8, !tbaa !258
  br label %bb.ap

bb.ap:                                            ; preds = %afm_stream_skip_spaces.exit58.thread.i, %bb.ao
  %i.gi = phi ptr [ %i.ha, %afm_stream_skip_spaces.exit58.thread.i ], [ %.val.promoted.i, %bb.ao ] ; 5 uses
  %.pr6798.i = phi i32 [ 2, %afm_stream_skip_spaces.exit58.thread.i ], [ %.pre.i.i, %bb.ao ] ; 2 uses
  %i.gj = phi i1 [ true, %afm_stream_skip_spaces.exit58.thread.i ], [ %i.gg, %bb.ao ]
  br i1 %i.gj, label %.preheader.i50.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gk = icmp sgt i32 %.pr6798.i, 0
  br i1 %i.gk, label %afm_stream_skip_spaces.exit.i98, label %.preheader.i47.i

.preheader.i47.i:                                 ; preds = %bb.aq
  %i.gl = icmp ult ptr %i.gi, %i.gh
  br i1 %i.gl, label %.lr.ph.i.i96, label %.preheader.i50.i

.lr.ph.i.i96:                                     ; preds = %.preheader.i47.i, %.backedge.i.i97
  %i.gm = phi ptr [ %i.gn, %.backedge.i.i97 ], [ %i.gi, %.preheader.i47.i ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1 ; 9 uses
  store ptr %i.gn, ptr %.val.i82, align 8, !tbaa !258
  %i.go = load i8, ptr %i.gm, align 1, !tbaa !41
  switch i8 %i.go, label %afm_stream_skip_spaces.exit.i98 [
    i8 32, label %.backedge.i.i97
    i8 9, label %.backedge.i.i97
    i8 13, label %.preheader.i50.i
    i8 10, label %.preheader.i50.i
    i8 59, label %afm_stream_skip_spaces.exit.thread59.i
    i8 26, label %.preheader.i50.i
  ]

.backedge.i.i97:                                  ; preds = %.lr.ph.i.i96, %.lr.ph.i.i96
  %exitcond.not.i49.i = icmp eq ptr %i.gn, %i.gh
  br i1 %exitcond.not.i49.i, label %.preheader.i50.i, label %.lr.ph.i.i96

afm_stream_skip_spaces.exit.thread59.i:           ; preds = %.lr.ph.i.i96
  store i32 1, ptr %i.ge, align 8, !tbaa !260
  br label %bb.ar

afm_stream_skip_spaces.exit.i98:                  ; preds = %.lr.ph.i.i96, %bb.aq
  %i.gp = phi ptr [ %i.gi, %bb.aq ], [ %i.gn, %.lr.ph.i.i96 ] ; 2 uses
  %i.gq = icmp sgt i32 %.pr6798.i, 1
  br i1 %i.gq, label %.preheader.i50.i, label %bb.ar

bb.ar:                                            ; preds = %afm_stream_skip_spaces.exit.i98, %afm_stream_skip_spaces.exit.thread59.i
  %i.gr = phi ptr [ %i.gn, %afm_stream_skip_spaces.exit.thread59.i ], [ %i.gp, %afm_stream_skip_spaces.exit.i98 ] ; 3 uses
  %i.gs = icmp ult ptr %i.gr, %i.gh
  br i1 %i.gs, label %.lr.ph669, label %.preheader.i50.i

bb.as:                                            ; preds = %.lr.ph669
  %i.gt = icmp ult ptr %i.gv, %i.gh
  br i1 %i.gt, label %.lr.ph669, label %.preheader.i50.i

.lr.ph669:                                        ; preds = %bb.ar, %bb.as
  %i.gu = phi ptr [ %i.gv, %bb.as ], [ %i.gr, %bb.ar ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 1 ; 7 uses
  store ptr %i.gv, ptr %.val.i82, align 8, !tbaa !258
  %i.gw = load i8, ptr %i.gu, align 1, !tbaa !41
  switch i8 %i.gw, label %bb.as [
    i8 13, label %.preheader.i50.i
    i8 10, label %.preheader.i50.i
    i8 26, label %.preheader.i50.i
  ]

.preheader.i50.i:                                 ; preds = %.backedge.i.i97, %.lr.ph.i.i96, %.lr.ph.i.i96, %.lr.ph.i.i96, %bb.as, %.lr.ph669, %.lr.ph669, %.lr.ph669, %bb.ar, %afm_stream_skip_spaces.exit.i98, %.preheader.i47.i, %bb.ap
  %i.gx = phi ptr [ %i.gp, %afm_stream_skip_spaces.exit.i98 ], [ %i.gv, %bb.as ], [ %i.gi, %.preheader.i47.i ], [ %i.gi, %bb.ap ], [ %i.gr, %bb.ar ], [ %i.gv, %.lr.ph669 ], [ %i.gv, %.lr.ph669 ], [ %i.gv, %.lr.ph669 ], [ %i.gn, %.lr.ph.i.i96 ], [ %i.gn, %.lr.ph.i.i96 ], [ %i.gn, %.lr.ph.i.i96 ], [ %i.gn, %.backedge.i.i97 ] ; 2 uses
  store i32 0, ptr %i.ge, align 8, !tbaa !260
  %i.gy = icmp ult ptr %i.gx, %i.gh
  br i1 %i.gy, label %.lr.ph.i54.i, label %.thread.i52.i

.lr.ph.i54.i:                                     ; preds = %.preheader.i50.i, %.backedge.i55.i
  %i.gz = phi ptr [ %i.ha, %.backedge.i55.i ], [ %i.gx, %.preheader.i50.i ] ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 1 ; 7 uses
  store ptr %i.ha, ptr %.val.i82, align 8, !tbaa !258
  %i.hb = load i8, ptr %i.gz, align 1, !tbaa !41
  switch i8 %i.hb, label %afm_stream_skip_spaces.exit58.i.loopexit [
    i8 32, label %.backedge.i55.i
    i8 9, label %.backedge.i55.i
    i8 13, label %afm_stream_skip_spaces.exit58.thread.i
    i8 10, label %afm_stream_skip_spaces.exit58.thread.i
    i8 59, label %bb.at
    i8 26, label %.thread.i52.i
  ]

.backedge.i55.i:                                  ; preds = %.lr.ph.i54.i, %.lr.ph.i54.i
  %exitcond.not.i56.i = icmp eq ptr %i.ha, %i.gh
  br i1 %exitcond.not.i56.i, label %.thread.i52.i, label %.lr.ph.i54.i

bb.at:                                            ; preds = %.lr.ph.i54.i
  store i32 1, ptr %i.ge, align 8, !tbaa !260
  br label %afm_parse_kern_data.exit.thread128

.thread.i52.i:                                    ; preds = %.preheader.i50.i, %.backedge.i55.i, %.lr.ph.i54.i
  store i32 3, ptr %i.ge, align 8, !tbaa !260
  br label %afm_parse_kern_data.exit.thread128

afm_stream_skip_spaces.exit58.i.loopexit:         ; preds = %.lr.ph.i54.i
  %i.hc = icmp ult ptr %i.ha, %i.gh
  br i1 %i.hc, label %.lr.ph677, label %.thread26.sink.split.i.i83

afm_stream_skip_spaces.exit58.i:                  ; preds = %.lr.ph677
  %i.hd = icmp ult ptr %i.hf, %i.gh
  br i1 %i.hd, label %.lr.ph677, label %.thread26.sink.split.i.i83

.lr.ph677:                                        ; preds = %afm_stream_skip_spaces.exit58.i.loopexit, %afm_stream_skip_spaces.exit58.i
  %i.he = phi ptr [ %i.hf, %afm_stream_skip_spaces.exit58.i ], [ %i.ha, %afm_stream_skip_spaces.exit58.i.loopexit ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 1 ; 9 uses
  store ptr %i.hf, ptr %.val.i82, align 8, !tbaa !258
  %i.hg = load i8, ptr %i.he, align 1, !tbaa !41
  switch i8 %i.hg, label %afm_stream_skip_spaces.exit58.i [
    i8 32, label %.loopexit.i84
    i8 9, label %.loopexit.i84
    i8 13, label %.thread26.sink.split.i.i83.loopexit
    i8 10, label %.thread26.sink.split.i.i83.loopexit
    i8 59, label %.thread26.sink.split.i.i83.loopexit694
    i8 26, label %.thread26.sink.split.i.i83
  ]

.thread26.sink.split.i.i83.loopexit:              ; preds = %.lr.ph677, %.lr.ph677
  br label %.thread26.sink.split.i.i83

.thread26.sink.split.i.i83.loopexit694:           ; preds = %.lr.ph677
  br label %.thread26.sink.split.i.i83

.thread26.sink.split.i.i83:                       ; preds = %afm_stream_skip_spaces.exit58.i, %.lr.ph677, %.thread26.sink.split.i.i83.loopexit694, %afm_stream_skip_spaces.exit58.i.loopexit, %.thread26.sink.split.i.i83.loopexit
  %i.hh = phi ptr [ %i.hf, %.thread26.sink.split.i.i83.loopexit ], [ %i.hf, %.lr.ph677 ], [ %i.ha, %afm_stream_skip_spaces.exit58.i.loopexit ], [ %i.hf, %afm_stream_skip_spaces.exit58.i ], [ %i.hf, %.thread26.sink.split.i.i83.loopexit694 ]
  %.sink.i46.i = phi i32 [ 2, %.thread26.sink.split.i.i83.loopexit ], [ 3, %.lr.ph677 ], [ 3, %afm_stream_skip_spaces.exit58.i.loopexit ], [ 3, %afm_stream_skip_spaces.exit58.i ], [ 1, %.thread26.sink.split.i.i83.loopexit694 ]
  store i32 %.sink.i46.i, ptr %i.ge, align 8, !tbaa !260
  br label %.loopexit.i84

afm_stream_skip_spaces.exit58.thread.i:           ; preds = %.lr.ph.i54.i, %.lr.ph.i54.i
  store i32 2, ptr %i.ge, align 8, !tbaa !260
  br label %bb.ap

.loopexit.i84:                                    ; preds = %.lr.ph677, %.lr.ph677, %.thread26.sink.split.i.i83
  %i.hi = phi ptr [ %i.hh, %.thread26.sink.split.i.i83 ], [ %i.hf, %.lr.ph677 ], [ %i.hf, %.lr.ph677 ]
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.gz to i64
  %i.hl = xor i64 %i.hk, -1
  %i.hm = add i64 %i.hj, %i.hl
  %i.hn = load i8, ptr %i.gz, align 1, !tbaa !41  ; 3 uses
  br label %bb.au

bb.au:                                            ; preds = %.loopexit17.i.i86.1, %.loopexit.i84
  %indvars.iv.i85 = phi i64 [ 0, %.loopexit.i84 ], [ %indvars.iv.next.i87.1, %.loopexit17.i.i86.1 ] ; 4 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i85
  %i.hp = load ptr, ptr %i.ho, align 16, !tbaa !33
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !41
  %i.hr = icmp eq i8 %i.hq, %i.hn
  br i1 %i.hr, label %.preheader.i.i89.preheader, label %.loopexit17.i.i86

.preheader.i.i89.preheader:                       ; preds = %.loopexit17.i.i86, %bb.au
  %indvars.iv.i85.lcssa = phi i64 [ %indvars.iv.i85, %bb.au ], [ %indvars.iv.next.i87, %.loopexit17.i.i86 ]
  br label %.preheader.i.i89

.preheader.i.i89:                                 ; preds = %.preheader.i.i89.preheader, %bb.aw
  %indvars.iv.i.i90 = phi i64 [ %indvars.iv.next.i.i91, %bb.aw ], [ %indvars.iv.i85.lcssa, %.preheader.i.i89.preheader ] ; 3 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i.i90
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !33 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !41
  %.not.i20.i = icmp eq i8 %i.hu, %i.hn
  br i1 %.not.i20.i, label %bb.av, label %afm_tokenize.exit.thread.i

bb.av:                                            ; preds = %.preheader.i.i89
  %i.hv = call i32 @strncmp(ptr noundef nonnull %i.ht, ptr noundef nonnull readonly %i.gz, i64 noundef %i.hm) #20
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %afm_tokenize.exit.i93, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %indvars.iv.next.i.i91 = add nuw nsw i64 %indvars.iv.i.i90, 1 ; 2 uses
  %i.hx = and i64 %indvars.iv.next.i.i91, 4294967295
  %exitcond.not.i.i92 = icmp eq i64 %i.hx, 74
  br i1 %exitcond.not.i.i92, label %afm_tokenize.exit.thread.i, label %.preheader.i.i89

.loopexit17.i.i86:                                ; preds = %bb.au
  %indvars.iv.next.i87 = or disjoint i64 %indvars.iv.i85, 1 ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.next.i87
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !33
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !41
  %i.ib = icmp eq i8 %i.ia, %i.hn
  br i1 %i.ib, label %.preheader.i.i89.preheader, label %.loopexit17.i.i86.1

.loopexit17.i.i86.1:                              ; preds = %.loopexit17.i.i86
  %indvars.iv.next.i87.1 = add nuw nsw i64 %indvars.iv.i85, 2 ; 2 uses
  %exitcond.not.i88.1 = icmp eq i64 %indvars.iv.next.i87.1, 74
  br i1 %exitcond.not.i88.1, label %afm_tokenize.exit.thread.i, label %bb.au, !llvm.loop !532

afm_tokenize.exit.i93:                            ; preds = %bb.av
  %i.ic = trunc nsw i64 %indvars.iv.i.i90 to i32
  switch i32 %i.ic, label %afm_parse_kern_data.exit.thread128 [
    i32 53, label %bb.ax
    i32 50, label %bb.br
    i32 51, label %bb.br
    i32 21, label %afm_parse_kern_data.exit.thread135
    i32 20, label %afm_parse_kern_data.exit.thread135
    i32 75, label %afm_tokenize.exit.thread.i
  ]

bb.ax:                                            ; preds = %afm_tokenize.exit.i93
  %.not18.i = icmp eq i32 %.010.i, 0
  br i1 %.not18.i, label %bb.ay, label %afm_parse_kern_data.exit.thread128

bb.ay:                                            ; preds = %bb.ax
  %i.id = load ptr, ptr %i.d, align 8, !tbaa !535 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 3, ptr %3, align 8, !tbaa !267
  %i.ie = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull readonly %0, ptr noundef %3, i32 noundef 1)
  %i.if = icmp eq i32 %i.ie, 1
  br i1 %i.if, label %afm_parser_read_int.exit.i.i, label %afm_parser_read_int.exit.thread.i.i

afm_parser_read_int.exit.thread.i.i:              ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %afm_parse_kern_data.exit.thread128

afm_parser_read_int.exit.i.i:                     ; preds = %bb.ay
  %i.ig = load i32, ptr %i.fu, align 8, !tbaa !41 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ih = icmp slt i32 %i.ig, 0
  br i1 %i.ih, label %afm_parse_kern_data.exit.thread128, label %bb.az

bb.az:                                            ; preds = %afm_parser_read_int.exit.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 64 ; 4 uses
  store i32 %i.ig, ptr %i.ii, align 8, !tbaa !546
  %i.ij = load ptr, ptr %i.gf, align 8, !tbaa !259
  %i.ik = load ptr, ptr %.val.i82, align 8, !tbaa !258
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = udiv i64 %i.in, 20
  %i.ip = zext nneg i32 %i.ig to i64              ; 2 uses
  %i.iq = icmp samesign ult i64 %i.io, %i.ip
  br i1 %i.iq, label %afm_parse_kern_data.exit.thread128, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.i21.i = icmp eq i32 %i.ig, 0
  br i1 %.not.i21.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ir = load ptr, ptr %0, align 8, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.is = call ptr @ft_mem_qrealloc(ptr noundef %i.ir, i64 noundef 40, i64 noundef 0, i64 noundef %i.ip, ptr noundef null, ptr noundef nonnull %i.b) #19
  %i.it = getelementptr inbounds nuw i8, ptr %i.id, i64 56
  store ptr %i.is, ptr %i.it, align 8, !tbaa !547
  %i.iu = load i32, ptr %i.b, align 4, !tbaa !24  ; 2 uses
  %.not41.i.i = icmp eq i32 %i.iu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br i1 %.not41.i.i, label %bb.bc, label %afm_parse_kern_data.exit.thread128

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.iv = getelementptr inbounds nuw i8, ptr %i.id, i64 56
  br label %bb.bd

bb.bd:                                            ; preds = %afm_tokenize.exit.thread.i.i, %bb.bc
  %.031.i.i = phi i32 [ -1, %bb.bc ], [ %.2.i.i, %afm_tokenize.exit.thread.i.i ] ; 6 uses
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !265 ; 7 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %.pre.i.i.i = load i32, ptr %i.iw, align 8, !tbaa !260
  %i.iy = icmp sgt i32 %.pre.i.i.i, 1
  br i1 %i.iy, label %afm_stream_read_string.exit.i.i.i.preheader, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call fastcc void @afm_stream_skip_spaces(ptr noundef nonnull %.val.i.i)
  %i.iz = load i32, ptr %i.iw, align 8, !tbaa !260
  %i.ja = icmp sgt i32 %i.iz, 1
  br i1 %i.ja, label %afm_stream_read_string.exit.i.i.i.preheader, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jb = load ptr, ptr %.val.i.i, align 8, !tbaa !258 ; 2 uses
  %i.jc = load ptr, ptr %i.ix, align 8, !tbaa !259 ; 2 uses
  %i.jd = icmp ult ptr %i.jb, %i.jc
  br i1 %i.jd, label %.lr.ph684, label %afm_stream_read_string.exit.i.i.i.preheader

bb.bg:                                            ; preds = %.lr.ph684
  %i.je = icmp ult ptr %i.jg, %i.jc
  br i1 %i.je, label %.lr.ph684, label %afm_stream_read_string.exit.i.i.i.preheader

.lr.ph684:                                        ; preds = %bb.bf, %bb.bg
  %i.jf = phi ptr [ %i.jg, %bb.bg ], [ %i.jb, %bb.bf ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 1 ; 3 uses
  store ptr %i.jg, ptr %.val.i.i, align 8, !tbaa !258
  %i.jh = load i8, ptr %i.jf, align 1, !tbaa !41
  switch i8 %i.jh, label %bb.bg [
    i8 13, label %afm_stream_read_string.exit.i.i.i.preheader
    i8 10, label %afm_stream_read_string.exit.i.i.i.preheader
    i8 26, label %afm_stream_read_string.exit.i.i.i.preheader
  ]

afm_stream_read_string.exit.i.i.i.preheader:      ; preds = %.lr.ph684, %.lr.ph684, %.lr.ph684, %bb.bg, %bb.bd, %bb.be, %bb.bf
  br label %afm_stream_read_string.exit.i.i.i

afm_stream_read_string.exit.i.i.i:                ; preds = %afm_stream_read_string.exit.i.i.i.preheader, %bb.bh
  store i32 0, ptr %i.iw, align 8, !tbaa !260
  %i.ji = call fastcc ptr @afm_stream_read_one(ptr noundef nonnull %.val.i.i) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %afm_stream_read_string.exit.i.i.i
  %i.jj = load i32, ptr %i.iw, align 8, !tbaa !260
  %i.jk = icmp eq i32 %i.jj, 2
  br i1 %i.jk, label %afm_stream_read_string.exit.i.i.i, label %afm_parse_kern_data.exit.thread128

bb.bi:                                            ; preds = %afm_stream_read_string.exit.i.i.i
  %i.jl = load ptr, ptr %.val.i.i, align 8, !tbaa !258
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.ji to i64
  %i.jo = xor i64 %i.jn, -1
  %i.jp = add i64 %i.jm, %i.jo
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.jq = load i8, ptr %i.ji, align 1, !tbaa !41  ; 3 uses
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit17.i.i.i.1, %bb.bi
  %indvars.iv.i22.i = phi i64 [ 0, %bb.bi ], [ %indvars.iv.next.i23.i.1, %.loopexit17.i.i.i.1 ] ; 4 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i22.i
  %i.js = load ptr, ptr %i.jr, align 16, !tbaa !33
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !41
  %i.ju = icmp eq i8 %i.jt, %i.jq
  br i1 %i.ju, label %.preheader.i.i.i.preheader, label %.loopexit17.i.i.i

.preheader.i.i.i.preheader:                       ; preds = %.loopexit17.i.i.i, %bb.bj
  %indvars.iv.i22.i.lcssa = phi i64 [ %indvars.iv.i22.i, %bb.bj ], [ %indvars.iv.next.i23.i, %.loopexit17.i.i.i ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %bb.bl
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.bl ], [ %indvars.iv.i22.i.lcssa, %.preheader.i.i.i.preheader ] ; 3 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i.i.i
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !33 ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !41
  %.not.i46.i.i = icmp eq i8 %i.jx, %i.jq
  br i1 %.not.i46.i.i, label %bb.bk, label %afm_tokenize.exit.thread.i.i

bb.bk:                                            ; preds = %.preheader.i.i.i
  %i.jy = call i32 @strncmp(ptr noundef nonnull %i.jw, ptr noundef nonnull readonly %i.ji, i64 noundef %i.jp) #20
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %afm_tokenize.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ka = and i64 %indvars.iv.next.i.i.i, 4294967295
  %exitcond.not.i.i.i = icmp eq i64 %i.ka, 74
  br i1 %exitcond.not.i.i.i, label %afm_tokenize.exit.thread.i.i, label %.preheader.i.i.i

.loopexit17.i.i.i:                                ; preds = %bb.bj
  %indvars.iv.next.i23.i = or disjoint i64 %indvars.iv.i22.i, 1 ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.next.i23.i
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !33
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !41
  %i.ke = icmp eq i8 %i.kd, %i.jq
  br i1 %i.ke, label %.preheader.i.i.i.preheader, label %.loopexit17.i.i.i.1

.loopexit17.i.i.i.1:                              ; preds = %.loopexit17.i.i.i
  %indvars.iv.next.i23.i.1 = add nuw nsw i64 %indvars.iv.i22.i, 2 ; 2 uses
  %exitcond.not.i24.i.1 = icmp eq i64 %indvars.iv.next.i23.i.1, 74
  br i1 %exitcond.not.i24.i.1, label %afm_tokenize.exit.thread.i.i, label %bb.bj, !llvm.loop !532

afm_tokenize.exit.i.i:                            ; preds = %bb.bk
  %i.kf = trunc nsw i64 %indvars.iv.i.i.i to i32
  switch i32 %i.kf, label %.thread.i25.i [
    i32 56, label %bb.bm
    i32 23, label %bb.bp
    i32 21, label %bb.bp
    i32 20, label %bb.bp
    i32 75, label %afm_tokenize.exit.thread.i.i
  ]

bb.bm:                                            ; preds = %afm_tokenize.exit.i.i
  %i.kg = add nsw i32 %.031.i.i, 1                ; 3 uses
  %i.kh = load i32, ptr %i.ii, align 8, !tbaa !546
  %.not44.i.i = icmp slt i32 %i.kg, %i.kh
  br i1 %.not44.i.i, label %bb.bn, label %.thread.i25.i

bb.bn:                                            ; preds = %bb.bm
  %i.ki = load ptr, ptr %i.iv, align 8, !tbaa !547
  store i32 3, ptr %4, align 16, !tbaa !267
  store i32 2, ptr %i.fv, align 16, !tbaa !267
  store i32 2, ptr %i.fw, align 16, !tbaa !267
  store i32 2, ptr %i.fx, align 16, !tbaa !267
  store i32 2, ptr %i.fy, align 16, !tbaa !267
  %i.kj = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull readonly %0, ptr noundef %4, i32 noundef 5)
  %.not45.i.i = icmp eq i32 %i.kj, 5
  br i1 %.not45.i.i, label %bb.bo, label %.thread.i25.i

bb.bo:                                            ; preds = %bb.bn
  %i.kk = sext i32 %i.kg to i64
  %i.kl = getelementptr inbounds [40 x i8], ptr %i.ki, i64 %i.kk ; 5 uses
  %i.km = load i32, ptr %i.fz, align 8, !tbaa !41
  store i32 %i.km, ptr %i.kl, align 8, !tbaa !549
  %i.kn = load i64, ptr %i.ga, align 8, !tbaa !41
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store i64 %i.kn, ptr %i.ko, align 8, !tbaa !550
  %i.kp = load i64, ptr %i.gb, align 8, !tbaa !41
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  store i64 %i.kp, ptr %i.kq, align 8, !tbaa !551
  %i.kr = load i64, ptr %i.gc, align 8, !tbaa !41
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !552
  %i.kt = load i64, ptr %i.gd, align 8, !tbaa !41
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !553
  br label %afm_tokenize.exit.thread.i.i

bb.bp:                                            ; preds = %afm_tokenize.exit.i.i, %afm_tokenize.exit.i.i, %afm_tokenize.exit.i.i
  %i.kv = add nsw i32 %.031.i.i, 1                ; 2 uses
  %i.kw = load i32, ptr %i.ii, align 8, !tbaa !546
  %.not43.i.i = icmp eq i32 %i.kv, %i.kw
  br i1 %.not43.i.i, label %afm_parse_track_kern.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i32 %i.kv, ptr %i.ii, align 8, !tbaa !546
  br label %afm_parse_track_kern.exit.i

.thread.i25.i:                                    ; preds = %bb.bn, %bb.bm, %afm_tokenize.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %afm_parse_kern_data.exit.thread128

afm_tokenize.exit.thread.i.i:                     ; preds = %.loopexit17.i.i.i.1, %bb.bl, %.preheader.i.i.i, %bb.bo, %afm_tokenize.exit.i.i
  %.2.i.i = phi i32 [ %i.kg, %bb.bo ], [ %.031.i.i, %bb.bl ], [ %.031.i.i, %afm_tokenize.exit.i.i ], [ %.031.i.i, %.preheader.i.i.i ], [ %.031.i.i, %.loopexit17.i.i.i.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bd

afm_parse_track_kern.exit.i:                      ; preds = %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %afm_tokenize.exit.thread.i

bb.br:                                            ; preds = %afm_tokenize.exit.i93, %afm_tokenize.exit.i93
  %.not16.i = icmp eq i32 %.0.i81, 0
  br i1 %.not16.i, label %bb.bs, label %afm_parse_kern_data.exit.thread128

bb.bs:                                            ; preds = %bb.br
  %i.kx = load ptr, ptr %i.d, align 8, !tbaa !535 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i32 3, ptr %1, align 8, !tbaa !267
  %i.ky = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull readonly %0, ptr noundef %1, i32 noundef 1)
  %i.kz = icmp eq i32 %i.ky, 1
  br i1 %i.kz, label %afm_parser_read_int.exit.i28.i, label %afm_parser_read_int.exit.thread.i26.i

afm_parser_read_int.exit.thread.i26.i:            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %afm_parse_kern_data.exit.thread128

afm_parser_read_int.exit.i28.i:                   ; preds = %bb.bs
  %i.la = load i32, ptr %i.fm, align 8, !tbaa !41 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.lb = icmp slt i32 %i.la, 0
  br i1 %i.lb, label %afm_parse_kern_data.exit.thread128, label %bb.bt

bb.bt:                                            ; preds = %afm_parser_read_int.exit.i28.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 80 ; 4 uses
  store i32 %i.la, ptr %i.lc, align 8, !tbaa !554
  %i.ld = load ptr, ptr %i.gf, align 8, !tbaa !259
  %i.le = load ptr, ptr %.val.i82, align 8, !tbaa !258
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = udiv i64 %i.lh, 10
  %i.lj = zext nneg i32 %i.la to i64              ; 2 uses
  %i.lk = icmp samesign ult i64 %i.li, %i.lj
  br i1 %i.lk, label %afm_parse_kern_data.exit.thread128, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not.i29.i = icmp eq i32 %i.la, 0
  br i1 %.not.i29.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ll = load ptr, ptr %0, align 8, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.lm = call ptr @ft_mem_qrealloc(ptr noundef %i.ll, i64 noundef 16, i64 noundef 0, i64 noundef %i.lj, ptr noundef null, ptr noundef nonnull %i.a) #19
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kx, i64 72
  store ptr %i.lm, ptr %i.ln, align 8, !tbaa !555
  %i.lo = load i32, ptr %i.a, align 4, !tbaa !24  ; 2 uses
  %.not55.i.i = icmp eq i32 %i.lo, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %.not55.i.i, label %bb.bw, label %afm_parse_kern_data.exit.thread128

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kx, i64 72 ; 2 uses
  br label %afm_tokenize.exit.thread.i38.i.outer

afm_tokenize.exit.thread.i38.i.outer:             ; preds = %.thread.i44.i94, %bb.bw
  %.043.i.i.ph = phi i32 [ %i.na, %.thread.i44.i94 ], [ -1, %bb.bw ] ; 2 uses
  br label %afm_tokenize.exit.thread.i38.i

afm_tokenize.exit.thread.i38.i:                   ; preds = %afm_tokenize.exit.thread.i38.i.backedge, %afm_tokenize.exit.thread.i38.i.outer
  %.val.i30.i = load ptr, ptr %i.f, align 8, !tbaa !265 ; 7 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.val.i30.i, i64 24 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.val.i30.i, i64 16
  %.pre.i.i31.i = load i32, ptr %i.lq, align 8, !tbaa !260
  %i.ls = icmp sgt i32 %.pre.i.i31.i, 1
  br i1 %i.ls, label %afm_stream_read_string.exit.i.i32.i.preheader, label %bb.bx

bb.bx:                                            ; preds = %afm_tokenize.exit.thread.i38.i
  call fastcc void @afm_stream_skip_spaces(ptr noundef nonnull %.val.i30.i)
  %i.lt = load i32, ptr %i.lq, align 8, !tbaa !260
  %i.lu = icmp sgt i32 %i.lt, 1
  br i1 %i.lu, label %afm_stream_read_string.exit.i.i32.i.preheader, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lv = load ptr, ptr %.val.i30.i, align 8, !tbaa !258 ; 2 uses
  %i.lw = load ptr, ptr %i.lr, align 8, !tbaa !259 ; 2 uses
  %i.lx = icmp ult ptr %i.lv, %i.lw
  br i1 %i.lx, label %.lr.ph680, label %afm_stream_read_string.exit.i.i32.i.preheader

bb.bz:                                            ; preds = %.lr.ph680
  %i.ly = icmp ult ptr %i.ma, %i.lw
  br i1 %i.ly, label %.lr.ph680, label %afm_stream_read_string.exit.i.i32.i.preheader

.lr.ph680:                                        ; preds = %bb.by, %bb.bz
  %i.lz = phi ptr [ %i.ma, %bb.bz ], [ %i.lv, %bb.by ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 1 ; 3 uses
  store ptr %i.ma, ptr %.val.i30.i, align 8, !tbaa !258
  %i.mb = load i8, ptr %i.lz, align 1, !tbaa !41
  switch i8 %i.mb, label %bb.bz [
    i8 13, label %afm_stream_read_string.exit.i.i32.i.preheader
    i8 10, label %afm_stream_read_string.exit.i.i32.i.preheader
    i8 26, label %afm_stream_read_string.exit.i.i32.i.preheader
  ]

afm_stream_read_string.exit.i.i32.i.preheader:    ; preds = %.lr.ph680, %.lr.ph680, %.lr.ph680, %bb.bz, %afm_tokenize.exit.thread.i38.i, %bb.bx, %bb.by
  br label %afm_stream_read_string.exit.i.i32.i

afm_stream_read_string.exit.i.i32.i:              ; preds = %afm_stream_read_string.exit.i.i32.i.preheader, %bb.ca
  store i32 0, ptr %i.lq, align 8, !tbaa !260
  %i.mc = call fastcc ptr @afm_stream_read_one(ptr noundef nonnull %.val.i30.i) ; 4 uses
  %.not.i.i33.i = icmp eq ptr %i.mc, null
  br i1 %.not.i.i33.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %afm_stream_read_string.exit.i.i32.i
  %i.md = load i32, ptr %i.lq, align 8, !tbaa !260
  %i.me = icmp eq i32 %i.md, 2
  br i1 %i.me, label %afm_stream_read_string.exit.i.i32.i, label %afm_parse_kern_data.exit.thread128

bb.cb:                                            ; preds = %afm_stream_read_string.exit.i.i32.i
  %i.mf = load ptr, ptr %.val.i30.i, align 8, !tbaa !258
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = ptrtoint ptr %i.mc to i64
  %i.mi = xor i64 %i.mh, -1
  %i.mj = add i64 %i.mg, %i.mi
  %i.mk = load i8, ptr %i.mc, align 1, !tbaa !41  ; 3 uses
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit17.i.i35.i.1, %bb.cb
  %indvars.iv.i34.i = phi i64 [ 0, %bb.cb ], [ %indvars.iv.next.i36.i.1, %.loopexit17.i.i35.i.1 ] ; 4 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i34.i
  %i.mm = load ptr, ptr %i.ml, align 16, !tbaa !33
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !41
  %i.mo = icmp eq i8 %i.mn, %i.mk
  br i1 %i.mo, label %.preheader.i.i39.i.preheader, label %.loopexit17.i.i35.i

.preheader.i.i39.i.preheader:                     ; preds = %.loopexit17.i.i35.i, %bb.cc
  %indvars.iv.i34.i.lcssa = phi i64 [ %indvars.iv.i34.i, %bb.cc ], [ %indvars.iv.next.i36.i, %.loopexit17.i.i35.i ]
  br label %.preheader.i.i39.i

.preheader.i.i39.i:                               ; preds = %.preheader.i.i39.i.preheader, %bb.ce
  %indvars.iv.i.i40.i = phi i64 [ %indvars.iv.next.i.i41.i, %bb.ce ], [ %indvars.iv.i34.i.lcssa, %.preheader.i.i39.i.preheader ] ; 5 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i.i40.i
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !33 ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !41
  %.not.i59.i.i = icmp eq i8 %i.mr, %i.mk
  br i1 %.not.i59.i.i, label %bb.cd, label %afm_tokenize.exit.thread.i38.i.backedge

bb.cd:                                            ; preds = %.preheader.i.i39.i
  %i.ms = call i32 @strncmp(ptr noundef nonnull %i.mq, ptr noundef nonnull readonly %i.mc, i64 noundef %i.mj) #20
  %i.mt = icmp eq i32 %i.ms, 0
  br i1 %i.mt, label %afm_tokenize.exit.i43.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %indvars.iv.next.i.i41.i = add nuw nsw i64 %indvars.iv.i.i40.i, 1 ; 2 uses
  %i.mu = and i64 %indvars.iv.next.i.i41.i, 4294967295
  %exitcond.not.i.i42.i = icmp eq i64 %i.mu, 74
  br i1 %exitcond.not.i.i42.i, label %afm_tokenize.exit.thread.i38.i.backedge, label %.preheader.i.i39.i

.loopexit17.i.i35.i:                              ; preds = %bb.cc
  %indvars.iv.next.i36.i = or disjoint i64 %indvars.iv.i34.i, 1 ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.next.i36.i
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !33
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !41
  %i.my = icmp eq i8 %i.mx, %i.mk
  br i1 %i.my, label %.preheader.i.i39.i.preheader, label %.loopexit17.i.i35.i.1

.loopexit17.i.i35.i.1:                            ; preds = %.loopexit17.i.i35.i
  %indvars.iv.next.i36.i.1 = add nuw nsw i64 %indvars.iv.i34.i, 2 ; 2 uses
  %exitcond.not.i37.i.1 = icmp eq i64 %indvars.iv.next.i36.i.1, 74
  br i1 %exitcond.not.i37.i.1, label %afm_tokenize.exit.thread.i38.i.backedge, label %bb.cc, !llvm.loop !532

afm_tokenize.exit.i43.i:                          ; preds = %bb.cd
  %i.mz = trunc nsw i64 %indvars.iv.i.i40.i to i32
  switch i32 %i.mz, label %afm_parse_kern_data.exit.thread128 [
    i32 34, label %bb.cf
    i32 36, label %bb.cf
    i32 37, label %bb.cf
    i32 22, label %bb.ck
    i32 21, label %bb.ck
    i32 20, label %bb.ck
    i32 75, label %afm_tokenize.exit.thread.i38.i.backedge
  ]

afm_tokenize.exit.thread.i38.i.backedge:          ; preds = %.loopexit17.i.i35.i.1, %.preheader.i.i39.i, %bb.ce, %afm_tokenize.exit.i43.i
  br label %afm_tokenize.exit.thread.i38.i

bb.cf:                                            ; preds = %afm_tokenize.exit.i43.i, %afm_tokenize.exit.i43.i, %afm_tokenize.exit.i43.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.na = add nsw i32 %.043.i.i.ph, 1             ; 3 uses
  %i.nb = load i32, ptr %i.lc, align 8, !tbaa !554
  %.not58.i.i = icmp slt i32 %i.na, %i.nb
  br i1 %.not58.i.i, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.nc = load ptr, ptr %i.lp, align 8, !tbaa !555
  %i.nd = sext i32 %i.na to i64
  %i.ne = getelementptr inbounds [16 x i8], ptr %i.nc, i64 %i.nd ; 4 uses
  store i32 5, ptr %2, align 16, !tbaa !267
  store i32 5, ptr %i.fn, align 16, !tbaa !267
  store i32 3, ptr %i.fo, align 16, !tbaa !267
  store i32 3, ptr %i.fp, align 16, !tbaa !267
  %i.nf = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull readonly %0, ptr noundef %2, i32 noundef 4) ; 2 uses
  %i.ng = icmp slt i32 %i.nf, 3
  br i1 %i.ng, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nh = load i32, ptr %i.fq, align 8, !tbaa !41
  store i32 %i.nh, ptr %i.ne, align 4, !tbaa !269
  %i.ni = load i32, ptr %i.fr, align 8, !tbaa !41
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  store i32 %i.ni, ptr %i.nj, align 4, !tbaa !270
  %i.nk = icmp eq i64 %indvars.iv.i.i40.i, 37
  %i.nl = load i32, ptr %i.fs, align 8, !tbaa !41 ; 2 uses
  br i1 %i.nk, label %.thread.i44.i94, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nm = icmp eq i64 %indvars.iv.i.i40.i, 34
  %i.nn = icmp eq i32 %i.nf, 4
  %or.cond.i.i = and i1 %i.nm, %i.nn
  %i.no = load i32, ptr %i.ft, align 8
  %i.np = select i1 %or.cond.i.i, i32 %i.no, i32 0
  br label %.thread.i44.i94

.thread.i44.i94:                                  ; preds = %bb.ci, %bb.ch
  %.sink95.i.i = phi i32 [ %i.nl, %bb.ci ], [ 0, %bb.ch ]
  %.sink.i.i95 = phi i32 [ %i.np, %bb.ci ], [ %i.nl, %bb.ch ]
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store i32 %.sink95.i.i, ptr %i.nq, align 4, !tbaa !556
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ne, i64 12
  store i32 %.sink.i.i95, ptr %i.nr, align 4, !tbaa !557
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %afm_tokenize.exit.thread.i38.i.outer

bb.cj:                                            ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %afm_parse_kern_data.exit.thread128

bb.ck:                                            ; preds = %afm_tokenize.exit.i43.i, %afm_tokenize.exit.i43.i, %afm_tokenize.exit.i43.i
  %i.ns = add nsw i32 %.043.i.i.ph, 1             ; 3 uses
  %i.nt = load i32, ptr %i.lc, align 8, !tbaa !554
  %.not57.i.i = icmp eq i32 %i.ns, %i.nt
  br i1 %.not57.i.i, label %afm_parse_kern_pairs.exit.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store i32 %i.ns, ptr %i.lc, align 8, !tbaa !554
  br label %afm_parse_kern_pairs.exit.i

afm_parse_kern_pairs.exit.i:                      ; preds = %bb.cl, %bb.ck
  %i.nu = load ptr, ptr %i.lp, align 8, !tbaa !555
  %i.nv = zext i32 %i.ns to i64
  call void @qsort(ptr noundef %i.nu, i64 noundef %i.nv, i64 noundef 16, ptr noundef nonnull @afm_compare_kern_pairs) #19
  br label %afm_tokenize.exit.thread.i

afm_tokenize.exit.thread.i:                       ; preds = %.loopexit17.i.i86.1, %bb.aw, %.preheader.i.i89, %afm_parse_kern_pairs.exit.i, %afm_parse_track_kern.exit.i, %afm_tokenize.exit.i93
  %.111.i = phi i32 [ %.010.i, %afm_tokenize.exit.i93 ], [ 1, %afm_parse_track_kern.exit.i ], [ %.010.i, %afm_parse_kern_pairs.exit.i ], [ %.010.i, %bb.aw ], [ %.010.i, %.preheader.i.i89 ], [ %.010.i, %.loopexit17.i.i86.1 ]
  %.1.i = phi i32 [ %.0.i81, %afm_tokenize.exit.i93 ], [ %.0.i81, %afm_parse_track_kern.exit.i ], [ 1, %afm_parse_kern_pairs.exit.i ], [ %.0.i81, %bb.aw ], [ %.0.i81, %.preheader.i.i89 ], [ %.0.i81, %.loopexit17.i.i86.1 ]
  br label %bb.ao, !llvm.loop !534

afm_parse_kern_data.exit.thread128:               ; preds = %bb.r, %bb.s, %bb.u, %bb.w, %bb.y, %afm_tokenize.exit.i93, %bb.bb, %bb.bv, %bb.az, %afm_parser_read_int.exit.i.i, %bb.bt, %afm_parser_read_int.exit.i28.i, %bb.ax, %bb.br, %afm_tokenize.exit.i43.i, %bb.ca, %bb.bh, %afm_parser_read_int.exit, %.thread, %.thread.i52.i, %.thread.i25.i, %bb.cj, %afm_parser_read_int.exit.thread.i26.i, %afm_parser_read_int.exit.thread.i.i, %bb.at
  %.4.ph = phi i32 [ %.041, %.thread ], [ 160, %afm_parser_read_int.exit.thread.i26.i ], [ 160, %bb.cj ], [ 160, %bb.ca ], [ 160, %.thread.i25.i ], [ 160, %afm_tokenize.exit.i43.i ], [ %.041, %afm_parser_read_int.exit ], [ 160, %bb.br ], [ 160, %bb.bh ], [ 160, %.thread.i52.i ], [ 160, %bb.at ], [ 160, %afm_parser_read_int.exit.thread.i.i ], [ 160, %afm_tokenize.exit.i93 ], [ %i.iu, %bb.bb ], [ %i.lo, %bb.bv ], [ 160, %bb.az ], [ 160, %afm_parser_read_int.exit.i.i ], [ 160, %bb.bt ], [ 160, %afm_parser_read_int.exit.i28.i ], [ 160, %bb.ax ], [ 7, %bb.r ], [ %.041, %bb.w ], [ %.041, %bb.u ], [ %.041, %bb.s ], [ %.041, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %afm_parser_next_key.exit72.thread

afm_parse_kern_data.exit.thread135:               ; preds = %afm_tokenize.exit, %afm_tokenize.exit.i93, %afm_tokenize.exit.i93, %bb.ah, %.thread.i44.i, %bb.aj, %.thread.i35.i
  %.346.ph = phi i32 [ 160, %bb.aj ], [ 0, %afm_tokenize.exit.i93 ], [ 160, %.thread.i35.i ], [ 160, %bb.ah ], [ 160, %.thread.i44.i ], [ 0, %afm_tokenize.exit.i93 ], [ 0, %afm_tokenize.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %afm_parser_next_key.exit.thread

afm_parse_kern_data.exit:                         ; preds = %.loopexit17.i.1, %.preheader.i, %bb.p, %afm_tokenize.exit.i, %afm_tokenize.exit.i, %bb.t, %bb.v, %bb.x, %bb.z, %bb.r, %afm_tokenize.exit
  %.3 = phi i32 [ %.041, %afm_tokenize.exit ], [ %.041, %bb.r ], [ %.041, %bb.t ], [ %.041, %bb.v ], [ %.041, %bb.x ], [ %.041, %bb.z ], [ 0, %afm_tokenize.exit.i ], [ %.041, %.preheader.i ], [ 0, %afm_tokenize.exit.i ], [ %.041, %bb.p ], [ %.041, %.loopexit17.i.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.h

afm_parser_next_key.exit72.thread:                ; preds = %bb.l, %afm_parse_kern_data.exit.thread128
  %.5 = phi i32 [ %.4.ph, %afm_parse_kern_data.exit.thread128 ], [ %.041, %bb.l ]
  %i.nw = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !547
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.nx) #19
  store ptr null, ptr %i.nw, align 8, !tbaa !547
  %i.ny = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i32 0, ptr %i.ny, align 8, !tbaa !546
  %i.nz = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !555
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.oa) #19
  store ptr null, ptr %i.nz, align 8, !tbaa !555
  %i.ob = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i32 0, ptr %i.ob, align 8, !tbaa !554
  store i8 0, ptr %i.e, align 8, !tbaa !539
  br label %afm_parser_next_key.exit.thread

afm_parser_next_key.exit.thread:                  ; preds = %bb.f, %afm_parse_kern_data.exit.thread135, %afm_parser_next_key.exit, %bb.g, %bb.a, %afm_parser_next_key.exit72.thread
  %.447 = phi i32 [ 6, %bb.a ], [ %.346.ph, %afm_parse_kern_data.exit.thread135 ], [ %.5, %afm_parser_next_key.exit72.thread ], [ 2, %bb.g ], [ 2, %afm_parser_next_key.exit ], [ 2, %bb.f ]
  ret i32 %.447
}

; Function Attrs: nounwind uwtable
define internal void @cff_builder_init(ptr nofree noundef writeonly captures(none) initializes((0, 24), (48, 96), (128, 130), (152, 216)) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i8 noundef zeroext %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.a, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 1, ptr %i.b, align 1, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !272
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.d, align 8, !tbaa !273
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !274
  store ptr %i.f, ptr %0, align 8, !tbaa !275
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 296 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !276
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !119  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !277
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %i.l, align 8, !tbaa !278
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.n, align 8, !tbaa !279
  tail call void @FT_GlyphLoader_Rewind(ptr noundef %i.i) #19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.q = icmp ne i8 %4, 0
  %i.r = icmp ne ptr %2, null
  %or.cond = and i1 %i.r, %i.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !126
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !128  ; 2 uses
  %.not37 = icmp eq ptr %i.u, null
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !282
  store ptr %i.v, ptr %i.o, align 8, !tbaa !283
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !276
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !131
  store ptr %i.y, ptr %i.p, align 8, !tbaa !284
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, i8 0, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) @cff_builder_funcs, i64 64, i1 false), !tbaa.struct !132
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cff_builder_done(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !278
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !tbaa.struct !88
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_1
