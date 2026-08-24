Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/psaux?download=true
inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@afm_parser_init:bb.a
  store ptr %2, ptr %i.b, align 8, !tbaa !368
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %3, ptr %i.e, align 8, !tbaa !369
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 2, ptr %i.f, align 8, !tbaa !370
  store ptr %1, ptr %0, align 8, !tbaa !371
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.g, align 8, !tbaa !375
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal void @afm_parser_done(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !371
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !375
  tail call void @ft_mem_free(ptr noundef %i.a, ptr noundef %i.c) #19
  store ptr null, ptr %i.b, align 8, !tbaa !375
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @afm_parser_parse(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca [4 x %struct.AFM_ValueRec_], align 16 ; 12 uses
  %3 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca [5 x %struct.AFM_ValueRec_], align 16 ; 15 uses
  %5 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %6 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %7 = alloca [4 x %struct.AFM_ValueRec_], align 16 ; 19 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !371    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !376  ; 13 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %afm_parser_next_key.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8          ; 7 uses
  %.val67 = load ptr, ptr %i.f, align 8, !tbaa !375 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val67, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val67, i64 16
  %.pre.i = load i32, ptr %i.g, align 8, !tbaa !370
  %i.i = icmp sgt i32 %.pre.i, 1
  br i1 %i.i, label %afm_stream_read_string.exit.i.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @afm_stream_skip_spaces(ptr noundef nonnull %.val67)
  %i.j = load i32, ptr %i.g, align 8, !tbaa !370
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %afm_stream_read_string.exit.i.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %.val67, align 8, !tbaa !368 ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !369  ; 2 uses
  %i.n = icmp ult ptr %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %afm_stream_read_string.exit.i.preheader

bb.e:                                             ; preds = %.lr.ph
  %i.o = icmp ult ptr %i.q, %i.m
  br i1 %i.o, label %.lr.ph, label %afm_stream_read_string.exit.i.preheader

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  store ptr %i.q, ptr %.val67, align 8, !tbaa !368
  %i.r = load i8, ptr %i.p, align 1, !tbaa !40
  switch i8 %i.r, label %bb.e [
    i8 13, label %afm_stream_read_string.exit.i.preheader
    i8 10, label %afm_stream_read_string.exit.i.preheader
    i8 26, label %afm_stream_read_string.exit.i.preheader
  ]

afm_stream_read_string.exit.i.preheader:          ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %bb.e, %bb.b, %bb.c, %bb.d
  br label %afm_stream_read_string.exit.i

afm_stream_read_string.exit.i:                    ; preds = %afm_stream_read_string.exit.i.preheader, %bb.f
  store i32 0, ptr %i.g, align 8, !tbaa !370
  %i.s = tail call fastcc ptr @afm_stream_read_one(ptr noundef nonnull %.val67) ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.f, label %afm_parser_next_key.exit

bb.f:                                             ; preds = %afm_stream_read_string.exit.i
  %i.t = load i32, ptr %i.g, align 8, !tbaa !370
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %afm_stream_read_string.exit.i, label %afm_parser_next_key.exit.thread

afm_parser_next_key.exit:                         ; preds = %afm_stream_read_string.exit.i
  %i.v = load ptr, ptr %.val67, align 8, !tbaa !368
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
  %.val = load ptr, ptr %i.f, align 8, !tbaa !375 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.pre.i68 = load i32, ptr %i.ap, align 8, !tbaa !370
  %i.ar = icmp sgt i32 %.pre.i68, 1
  br i1 %i.ar, label %afm_stream_read_string.exit.i69.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @afm_stream_skip_spaces(ptr noundef nonnull %.val)
  %i.as = load i32, ptr %i.ap, align 8, !tbaa !370
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %afm_stream_read_string.exit.i69.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %.val, align 8, !tbaa !368 ; 2 uses
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !369 ; 2 uses
  %i.aw = icmp ult ptr %i.au, %i.av
  br i1 %i.aw, label %.lr.ph644, label %afm_stream_read_string.exit.i69.preheader

bb.k:                                             ; preds = %.lr.ph644
  %i.ax = icmp ult ptr %i.az, %i.av
  br i1 %i.ax, label %.lr.ph644, label %afm_stream_read_string.exit.i69.preheader

.lr.ph644:                                        ; preds = %bb.j, %bb.k
  %i.ay = phi ptr [ %i.az, %bb.k ], [ %i.au, %bb.j ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  store ptr %i.az, ptr %.val, align 8, !tbaa !368
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !40
  switch i8 %i.ba, label %bb.k [
    i8 13, label %afm_stream_read_string.exit.i69.preheader
    i8 10, label %afm_stream_read_string.exit.i69.preheader
    i8 26, label %afm_stream_read_string.exit.i69.preheader
  ]

afm_stream_read_string.exit.i69.preheader:        ; preds = %.lr.ph644, %.lr.ph644, %.lr.ph644, %bb.k, %bb.h, %bb.i, %bb.j
  br label %afm_stream_read_string.exit.i69

afm_stream_read_string.exit.i69:                  ; preds = %afm_stream_read_string.exit.i69.preheader, %bb.l
  store i32 0, ptr %i.ap, align 8, !tbaa !370
  %i.bb = tail call fastcc ptr @afm_stream_read_one(ptr noundef nonnull %.val) ; 4 uses
  %.not.i70 = icmp eq ptr %i.bb, null
  br i1 %.not.i70, label %bb.l, label %bb.m

bb.l:                                             ; preds = %afm_stream_read_string.exit.i69
  %i.bc = load i32, ptr %i.ap, align 8, !tbaa !370
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %afm_stream_read_string.exit.i69, label %afm_parser_next_key.exit72.thread

bb.m:                                             ; preds = %afm_stream_read_string.exit.i69
  %i.be = load ptr, ptr %.val, align 8, !tbaa !368
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bb to i64
  %i.bh = xor i64 %i.bg, -1
  %i.bi = add i64 %i.bf, %i.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bj = load i8, ptr %i.bb, align 1, !tbaa !40  ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %.loopexit17.i.1, %bb.m
  %indvars.iv = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.1, %.loopexit17.i.1 ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 16, !tbaa !28
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !40
  %i.bn = icmp eq i8 %i.bm, %i.bj
  br i1 %i.bn, label %.preheader.i.preheader, label %.loopexit17.i

.preheader.i.preheader:                           ; preds = %.loopexit17.i, %bb.n
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %bb.n ], [ %indvars.iv.next, %.loopexit17.i ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.p
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.a, %bb.p ], [ %indvars.iv.lcssa, %.preheader.i.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i.a
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !28 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !40
  %.not.i73 = icmp eq i8 %i.bq, %i.bj
  br i1 %.not.i73, label %bb.o, label %afm_parse_kern_data.exit

bb.o:                                             ; preds = %.preheader.i
  %i.br = tail call i32 @strncmp(ptr noundef nonnull %i.bp, ptr noundef nonnull readonly %i.bb, i64 noundef %i.bi) #20
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %afm_tokenize.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %8 = and i64 %indvars.iv.next.i.a, 4294967295
  %exitcond.not.i = icmp eq i64 %8, 74
  br i1 %exitcond.not.i, label %afm_parse_kern_data.exit, label %.preheader.i

.loopexit17.i:                                    ; preds = %bb.n
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.next
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !28
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !40
  %i.bw = icmp eq i8 %i.bv, %i.bj
  br i1 %i.bw, label %.preheader.i.preheader, label %.loopexit17.i.1

.loopexit17.i.1:                                  ; preds = %.loopexit17.i
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 74
  br i1 %exitcond.not.1, label %afm_parse_kern_data.exit, label %bb.n, !llvm.loop !377

afm_tokenize.exit:                                ; preds = %bb.o
  %i.bx = trunc nsw i64 %indvars.iv.i.a to i32
  switch i32 %i.bx, label %afm_parse_kern_data.exit [
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
  store i32 3, ptr %6, align 8, !tbaa !378
  %i.by = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull readonly %0, ptr noundef %6, i32 noundef 1)
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.r, label %afm_parser_read_int.exit

afm_parser_read_int.exit:                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %afm_parse_kern_data.exit.thread128

bb.r:                                             ; preds = %bb.q
  %i.ca = load i32, ptr %i.ao, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cb = and i32 %i.ca, -3
  %or.cond3.not = icmp eq i32 %i.cb, 0
  br i1 %or.cond3.not, label %afm_parse_kern_data.exit, label %afm_parse_kern_data.exit.thread128

bb.s:                                             ; preds = %afm_tokenize.exit
  store i32 4, ptr %7, align 16, !tbaa !378
  %i.cc = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull %0, ptr noundef %7, i32 noundef 1)
  %.not63 = icmp eq i32 %i.cc, 1
  br i1 %.not63, label %bb.t, label %afm_parse_kern_data.exit.thread128

bb.t:                                             ; preds = %bb.s
  %i.cd = load i8, ptr %i.ab, align 8, !tbaa !40
  store i8 %i.cd, ptr %i.e, align 8, !tbaa !380
  br label %afm_parse_kern_data.exit

bb.u:                                             ; preds = %afm_tokenize.exit
  store i32 2, ptr %7, align 16, !tbaa !378
  store i32 2, ptr %i.ae, align 16, !tbaa !378
  store i32 2, ptr %i.af, align 16, !tbaa !378
  store i32 2, ptr %i.ag, align 16, !tbaa !378
  %i.ce = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull %0, ptr noundef %7, i32 noundef 4)
  %.not62 = icmp eq i32 %i.ce, 4
  br i1 %.not62, label %bb.v, label %afm_parse_kern_data.exit.thread128

bb.v:                                             ; preds = %bb.u
  %i.cf = load i64, ptr %i.ab, align 8, !tbaa !40
  store i64 %i.cf, ptr %i.ah, align 8, !tbaa !384
  %i.cg = load i64, ptr %i.ai, align 8, !tbaa !40
  store i64 %i.cg, ptr %i.aj, align 8, !tbaa !385
  %i.ch = load i64, ptr %i.ak, align 8, !tbaa !40
  store i64 %i.ch, ptr %i.al, align 8, !tbaa !386
  %i.ci = load i64, ptr %i.am, align 8, !tbaa !40
  store i64 %i.ci, ptr %i.an, align 8, !tbaa !387
  br label %afm_parse_kern_data.exit

bb.w:                                             ; preds = %afm_tokenize.exit
  store i32 2, ptr %7, align 16, !tbaa !378
  %i.cj = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull %0, ptr noundef %7, i32 noundef 1)
  %.not61 = icmp eq i32 %i.cj, 1
  br i1 %.not61, label %bb.x, label %afm_parse_kern_data.exit.thread128

bb.x:                                             ; preds = %bb.w
  %i.ck = load i64, ptr %i.ab, align 8, !tbaa !40
  store i64 %i.ck, ptr %i.ad, align 8, !tbaa !388
  br label %afm_parse_kern_data.exit

bb.y:                                             ; preds = %afm_tokenize.exit
  store i32 2, ptr %7, align 16, !tbaa !378
  %i.cl = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull %0, ptr noundef %7, i32 noundef 1)
  %.not60 = icmp eq i32 %i.cl, 1
  br i1 %.not60, label %bb.z, label %afm_parse_kern_data.exit.thread128

bb.z:                                             ; preds = %bb.y
  %i.cm = load i64, ptr %i.ab, align 8, !tbaa !40
  store i64 %i.cm, ptr %i.ac, align 8, !tbaa !389
  br label %afm_parse_kern_data.exit

bb.aa:                                            ; preds = %afm_tokenize.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 3, ptr %5, align 8, !tbaa !378
  %i.cn = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull readonly %0, ptr noundef %5, i32 noundef 1)
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %bb.ab, label %.thread

.thread:                                          ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %afm_parse_kern_data.exit.thread128

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load i32, ptr %i.aa, align 8, !tbaa !40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.i, label %.preheader.i76.preheader

.lr.ph.i:                                         ; preds = %bb.ab
  %.val16.i = load ptr, ptr %i.f, align 8, !tbaa !375 ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val16.i, i64 24 ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !369 ; 8 uses
  %.promoted84.i.a = load i32, ptr %i.cr, align 8
  %.val16.promoted87.i.a = load ptr, ptr %.val16.i, align 8, !tbaa !368
  br label %bb.ac

bb.ac:                                            ; preds = %afm_parser_next_key.exit.i, %.lr.ph.i
  %.val16.promoted88.i.a = phi ptr [ %.val16.promoted87.i.a, %.lr.ph.i ], [ %.val16.promoted89.i, %afm_parser_next_key.exit.i ]
  %.promoted85.i = phi i32 [ %.promoted84.i.a, %.lr.ph.i ], [ %.promoted86.i, %afm_parser_next_key.exit.i ] ; 2 uses
  %.01183.i = phi i32 [ %i.cp, %.lr.ph.i ], [ %i.cu, %afm_parser_next_key.exit.i ] ; 2 uses
  %i.cu = add nsw i32 %.01183.i, -1
  %i.cv = icmp sgt i32 %.promoted85.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %afm_stream_skip_spaces.exit41.thread.i, %bb.ac
  %i.cw = phi ptr [ %i.do, %afm_stream_skip_spaces.exit41.thread.i ], [ %.val16.promoted88.i.a, %bb.ac ] ; 5 uses
  %.pr5574.i = phi i32 [ 2, %afm_stream_skip_spaces.exit41.thread.i ], [ %.promoted85.i, %bb.ac ] ; 2 uses
  %i.cx = phi i1 [ true, %afm_stream_skip_spaces.exit41.thread.i ], [ %i.cv, %bb.ac ]
  br i1 %i.cx, label %.preheader.i33.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = icmp sgt i32 %.pr5574.i, 0
  br i1 %i.cy, label %afm_stream_skip_spaces.exit.i, label %.preheader.i25.i

.preheader.i25.i:                                 ; preds = %bb.ae
  %i.cz = icmp ult ptr %i.cw, %i.ct
  br i1 %i.cz, label %.lr.ph.i.i, label %.preheader.i33.i

.lr.ph.i.i:                                       ; preds = %.preheader.i25.i, %.backedge.i.i
  %i.da = phi ptr [ %i.db, %.backedge.i.i ], [ %i.cw, %.preheader.i25.i ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1 ; 9 uses
  store ptr %i.db, ptr %.val16.i, align 8, !tbaa !368
  %i.dc = load i8, ptr %i.da, align 1, !tbaa !40
  switch i8 %i.dc, label %afm_stream_skip_spaces.exit.i [
    i8 32, label %.backedge.i.i
    i8 9, label %.backedge.i.i
    i8 13, label %.preheader.i33.i
    i8 10, label %.preheader.i33.i
    i8 59, label %afm_stream_skip_spaces.exit.thread51.i
    i8 26, label %.preheader.i33.i
  ]

.backedge.i.i:                                    ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %exitcond.not.i27.i = icmp eq ptr %i.db, %i.ct
  br i1 %exitcond.not.i27.i, label %.preheader.i33.i, label %.lr.ph.i.i

afm_stream_skip_spaces.exit.thread51.i:           ; preds = %.lr.ph.i.i
  store i32 1, ptr %i.cr, align 8, !tbaa !370
  br label %bb.af

afm_stream_skip_spaces.exit.i:                    ; preds = %.lr.ph.i.i, %bb.ae
  %i.dd = phi ptr [ %i.cw, %bb.ae ], [ %i.db, %.lr.ph.i.i ] ; 2 uses
  %i.de = icmp sgt i32 %.pr5574.i, 1
  br i1 %i.de, label %.preheader.i33.i, label %bb.af

bb.af:                                            ; preds = %afm_stream_skip_spaces.exit.i, %afm_stream_skip_spaces.exit.thread51.i
  %i.df = phi ptr [ %i.db, %afm_stream_skip_spaces.exit.thread51.i ], [ %i.dd, %afm_stream_skip_spaces.exit.i ] ; 3 uses
  %i.dg = icmp ult ptr %i.df, %i.ct
  br i1 %i.dg, label %.lr.ph648, label %.preheader.i33.i

bb.ag:                                            ; preds = %.lr.ph648
  %i.dh = icmp ult ptr %i.dj, %i.ct
  br i1 %i.dh, label %.lr.ph648, label %.preheader.i33.i

.lr.ph648:                                        ; preds = %bb.af, %bb.ag
  %i.di = phi ptr [ %i.dj, %bb.ag ], [ %i.df, %bb.af ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1 ; 7 uses
  store ptr %i.dj, ptr %.val16.i, align 8, !tbaa !368
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !40
  switch i8 %i.dk, label %bb.ag [
    i8 13, label %.preheader.i33.i
    i8 10, label %.preheader.i33.i
    i8 26, label %.preheader.i33.i
  ]

.preheader.i33.i:                                 ; preds = %.backedge.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %bb.ag, %.lr.ph648, %.lr.ph648, %.lr.ph648, %bb.af, %afm_stream_skip_spaces.exit.i, %.preheader.i25.i, %bb.ad
  %i.dl = phi ptr [ %i.dd, %afm_stream_skip_spaces.exit.i ], [ %i.dj, %bb.ag ], [ %i.cw, %.preheader.i25.i ], [ %i.cw, %bb.ad ], [ %i.df, %bb.af ], [ %i.dj, %.lr.ph648 ], [ %i.dj, %.lr.ph648 ], [ %i.dj, %.lr.ph648 ], [ %i.db, %.lr.ph.i.i ], [ %i.db, %.lr.ph.i.i ], [ %i.db, %.lr.ph.i.i ], [ %i.db, %.backedge.i.i ] ; 2 uses
  store i32 0, ptr %i.cr, align 8, !tbaa !370
  %i.dm = icmp ult ptr %i.dl, %i.ct
  br i1 %i.dm, label %.lr.ph.i37.i, label %.thread.i35.i

.lr.ph.i37.i:                                     ; preds = %.preheader.i33.i, %.backedge.i38.i
  %i.dn = phi ptr [ %i.do, %.backedge.i38.i ], [ %i.dl, %.preheader.i33.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 7 uses
  store ptr %i.do, ptr %.val16.i, align 8, !tbaa !368
  %i.dp = load i8, ptr %i.dn, align 1, !tbaa !40
  switch i8 %i.dp, label %afm_stream_skip_spaces.exit41.i.loopexit [
    i8 32, label %.backedge.i38.i
    i8 9, label %.backedge.i38.i
    i8 13, label %afm_stream_skip_spaces.exit41.thread.i
    i8 10, label %afm_stream_skip_spaces.exit41.thread.i
    i8 59, label %bb.ah
    i8 26, label %.thread.i35.i
  ]

.backedge.i38.i:                                  ; preds = %.lr.ph.i37.i, %.lr.ph.i37.i
  %exitcond.not.i39.i = icmp eq ptr %i.do, %i.ct
  br i1 %exitcond.not.i39.i, label %.thread.i35.i, label %.lr.ph.i37.i

bb.ah:                                            ; preds = %.lr.ph.i37.i
  store i32 1, ptr %i.cr, align 8, !tbaa !370
  br label %afm_parse_kern_data.exit.thread135

.thread.i35.i:                                    ; preds = %.preheader.i33.i, %.backedge.i38.i, %.lr.ph.i37.i
  store i32 3, ptr %i.cr, align 8, !tbaa !370
  br label %afm_parse_kern_data.exit.thread135

afm_stream_skip_spaces.exit41.i.loopexit:         ; preds = %.lr.ph.i37.i
  %i.dq = icmp ult ptr %i.do, %i.ct
  br i1 %i.dq, label %.lr.ph656, label %.thread26.sink.split.i.i

afm_stream_skip_spaces.exit41.i:                  ; preds = %.lr.ph656
  %i.dr = icmp ult ptr %i.ds, %i.ct
  br i1 %i.dr, label %.lr.ph656, label %.thread26.sink.split.i.i

.lr.ph656:                                        ; preds = %afm_stream_skip_spaces.exit41.i.loopexit, %afm_stream_skip_spaces.exit41.i
  %.val16.promoted92.i655 = phi ptr [ %i.ds, %afm_stream_skip_spaces.exit41.i ], [ %i.do, %afm_stream_skip_spaces.exit41.i.loopexit ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val16.promoted92.i655, i64 1 ; 9 uses
  store ptr %i.ds, ptr %.val16.i, align 8, !tbaa !368
  %i.dt = load i8, ptr %.val16.promoted92.i655, align 1, !tbaa !40
  switch i8 %i.dt, label %afm_stream_skip_spaces.exit41.i [
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
  %.val16.promoted90.i = phi ptr [ %i.ds, %.lr.ph656 ], [ %i.ds, %.thread26.sink.split.i.i.loopexit ], [ %i.do, %afm_stream_skip_spaces.exit41.i.loopexit ], [ %i.ds, %afm_stream_skip_spaces.exit41.i ], [ %i.ds, %.thread26.sink.split.i.i.loopexit744 ]
  %.sink.i.i = phi i32 [ 3, %.lr.ph656 ], [ 2, %.thread26.sink.split.i.i.loopexit ], [ 3, %afm_stream_skip_spaces.exit41.i.loopexit ], [ 3, %afm_stream_skip_spaces.exit41.i ], [ 1, %.thread26.sink.split.i.i.loopexit744 ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.cr, align 8, !tbaa !370
  br label %afm_parser_next_key.exit.i

afm_stream_skip_spaces.exit41.thread.i:           ; preds = %.lr.ph.i37.i, %.lr.ph.i37.i
  store i32 2, ptr %i.cr, align 8, !tbaa !370
  br label %bb.ad

afm_parser_next_key.exit.i:                       ; preds = %.lr.ph656, %.lr.ph656, %.thread26.sink.split.i.i
  %.val16.promoted89.i = phi ptr [ %.val16.promoted90.i, %.thread26.sink.split.i.i ], [ %i.ds, %.lr.ph656 ], [ %i.ds, %.lr.ph656 ]
  %.promoted86.i = phi i32 [ %.sink.i.i, %.thread26.sink.split.i.i ], [ 0, %.lr.ph656 ], [ 0, %.lr.ph656 ]
  %i.du = icmp sgt i32 %.01183.i, 1
  br i1 %i.du, label %bb.ac, label %.preheader.i76.preheader, !llvm.loop !390

.preheader.i76.preheader:                         ; preds = %afm_parser_next_key.exit.i, %bb.ab
  br label %.preheader.i76

.preheader.i76:                                   ; preds = %.preheader.i76.preheader, %afm_tokenize.exit.i
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !375 ; 8 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i, i64 24 ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %.pre.i17.i = load i32, ptr %i.dv, align 8, !tbaa !370
  %i.dx = icmp sgt i32 %.pre.i17.i, 1
  br i1 %i.dx, label %..preheader.i42_crit_edge.i, label %bb.ai

..preheader.i42_crit_edge.i:                      ; preds = %afm_stream_skip_spaces.exit50.thread.i, %.preheader.i76
  %.pre.i80 = load ptr, ptr %i.dw, align 8, !tbaa !369
  %.promoted.i43.pre.i = load ptr, ptr %.val.i, align 8, !tbaa !368
  br label %.preheader.i42.i

bb.ai:                                            ; preds = %.preheader.i76
  tail call fastcc void @afm_stream_skip_spaces(ptr noundef nonnull %.val.i)
  %i.dy = load i32, ptr %i.dv, align 8, !tbaa !370
  %i.dz = icmp slt i32 %i.dy, 2
  %.pre119.i = load ptr, ptr %i.dw, align 8, !tbaa !369 ; 7 uses
  %.promoted.i43.pre120.i = load ptr, ptr %.val.i, align 8, !tbaa !368 ; 3 uses
  %i.ea = icmp ult ptr %.promoted.i43.pre120.i, %.pre119.i
  %or.cond = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond, label %.lr.ph659, label %.preheader.i42.i

.preheader:                                       ; preds = %.lr.ph659
  %i.eb = icmp ult ptr %i.ed, %.pre119.i
  br i1 %i.eb, label %.lr.ph659, label %.preheader.i42.i

.lr.ph659:                                        ; preds = %bb.ai, %.preheader
  %i.ec = phi ptr [ %i.ed, %.preheader ], [ %.promoted.i43.pre120.i, %bb.ai ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1 ; 7 uses
  store ptr %i.ed, ptr %.val.i, align 8, !tbaa !368
  %i.ee = load i8, ptr %i.ec, align 1, !tbaa !40
  switch i8 %i.ee, label %.preheader [
    i8 13, label %.preheader.i42.i
    i8 10, label %.preheader.i42.i
    i8 26, label %.preheader.i42.i
  ]

.preheader.i42.i:                                 ; preds = %.preheader, %.lr.ph659, %.lr.ph659, %.lr.ph659, %bb.ai, %..preheader.i42_crit_edge.i
  %.promoted.i43.i = phi ptr [ %.promoted.i43.pre.i, %..preheader.i42_crit_edge.i ], [ %.promoted.i43.pre120.i, %bb.ai ], [ %i.ed, %.lr.ph659 ], [ %i.ed, %.lr.ph659 ], [ %i.ed, %.lr.ph659 ], [ %i.ed, %.preheader ] ; 2 uses
  %i.ef = phi ptr [ %.pre.i80, %..preheader.i42_crit_edge.i ], [ %.pre119.i, %bb.ai ], [ %.pre119.i, %.lr.ph659 ], [ %.pre119.i, %.lr.ph659 ], [ %.pre119.i, %.lr.ph659 ], [ %.pre119.i, %.preheader ] ; 4 uses
  store i32 0, ptr %i.dv, align 8, !tbaa !370
  %i.eg = icmp ult ptr %.promoted.i43.i, %i.ef
  br i1 %i.eg, label %.lr.ph.i46.i, label %.thread.i44.i

.lr.ph.i46.i:                                     ; preds = %.preheader.i42.i, %.backedge.i47.i
  %i.eh = phi ptr [ %i.ei, %.backedge.i47.i ], [ %.promoted.i43.i, %.preheader.i42.i ] ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 6 uses
  store ptr %i.ei, ptr %.val.i, align 8, !tbaa !368
  %i.ej = load i8, ptr %i.eh, align 1, !tbaa !40
  switch i8 %i.ej, label %afm_stream_skip_spaces.exit50.i.loopexit [
    i8 32, label %.backedge.i47.i
    i8 9, label %.backedge.i47.i
    i8 13, label %afm_stream_skip_spaces.exit50.thread.i
    i8 10, label %afm_stream_skip_spaces.exit50.thread.i
    i8 59, label %bb.aj
    i8 26, label %.thread.i44.i
  ]

.backedge.i47.i:                                  ; preds = %.lr.ph.i46.i, %.lr.ph.i46.i
  %exitcond.not.i48.i = icmp eq ptr %i.ei, %i.ef
  br i1 %exitcond.not.i48.i, label %.thread.i44.i, label %.lr.ph.i46.i

bb.aj:                                            ; preds = %.lr.ph.i46.i
  store i32 1, ptr %i.dv, align 8, !tbaa !370
  br label %afm_parse_kern_data.exit.thread135

.thread.i44.i:                                    ; preds = %.preheader.i42.i, %.backedge.i47.i, %.lr.ph.i46.i
  store i32 3, ptr %i.dv, align 8, !tbaa !370
  br label %afm_parse_kern_data.exit.thread135

afm_stream_skip_spaces.exit50.i.loopexit:         ; preds = %.lr.ph.i46.i
  %i.ek = icmp ult ptr %i.ei, %i.ef
  br i1 %i.ek, label %.lr.ph666, label %.thread26.sink.split.i29.i

afm_stream_skip_spaces.exit50.i:                  ; preds = %.lr.ph666
  %i.el = icmp ult ptr %i.en, %i.ef
  br i1 %i.el, label %.lr.ph666, label %.thread26.sink.split.i29.i

.lr.ph666:                                        ; preds = %afm_stream_skip_spaces.exit50.i.loopexit, %afm_stream_skip_spaces.exit50.i
  %i.em = phi ptr [ %i.en, %afm_stream_skip_spaces.exit50.i ], [ %i.ei, %afm_stream_skip_spaces.exit50.i.loopexit ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1 ; 9 uses
  store ptr %i.en, ptr %.val.i, align 8, !tbaa !368
  %i.eo = load i8, ptr %i.em, align 1, !tbaa !40
  switch i8 %i.eo, label %afm_stream_skip_spaces.exit50.i [
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
  %i.ep = phi ptr [ %i.en, %.thread26.sink.split.i29.i.loopexit ], [ %i.en, %.lr.ph666 ], [ %i.ei, %afm_stream_skip_spaces.exit50.i.loopexit ], [ %i.en, %afm_stream_skip_spaces.exit50.i ], [ %i.en, %.thread26.sink.split.i29.i.loopexit743 ]
  %.sink.i30.i = phi i32 [ 2, %.thread26.sink.split.i29.i.loopexit ], [ 3, %.lr.ph666 ], [ 3, %afm_stream_skip_spaces.exit50.i.loopexit ], [ 3, %afm_stream_skip_spaces.exit50.i ], [ 1, %.thread26.sink.split.i29.i.loopexit743 ]
  store i32 %.sink.i30.i, ptr %i.dv, align 8, !tbaa !370
  br label %.loopexit.i

afm_stream_skip_spaces.exit50.thread.i:           ; preds = %.lr.ph.i46.i, %.lr.ph.i46.i
  store i32 2, ptr %i.dv, align 8, !tbaa !370
  br label %..preheader.i42_crit_edge.i

.loopexit.i:                                      ; preds = %.lr.ph666, %.lr.ph666, %.thread26.sink.split.i29.i
  %i.eq = phi ptr [ %i.ep, %.thread26.sink.split.i29.i ], [ %i.en, %.lr.ph666 ], [ %i.en, %.lr.ph666 ]
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.eh to i64
  %i.et = xor i64 %i.es, -1
  %i.eu = add i64 %i.er, %i.et
  %i.ev = load i8, ptr %i.eh, align 1, !tbaa !40  ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit17.i.i.1, %.loopexit.i
  %indvars.iv.i77 = phi i64 [ 0, %.loopexit.i ], [ %indvars.iv.next.i78.1, %.loopexit17.i.i.1 ] ; 4 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i77
  %i.ex = load ptr, ptr %i.ew, align 16, !tbaa !28
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !40
  %i.ez = icmp eq i8 %i.ey, %i.ev
  br i1 %i.ez, label %.preheader.i.i.preheader, label %.loopexit17.i.i

.preheader.i.i.preheader:                         ; preds = %.loopexit17.i.i, %bb.ak
  %indvars.iv.i77.lcssa = phi i64 [ %indvars.iv.i77, %bb.ak ], [ %indvars.iv.next.i78, %.loopexit17.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.am
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.a, %bb.am ], [ %indvars.iv.i77.lcssa, %.preheader.i.i.preheader ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i.i.a
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !28 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !40
  %.not.i23.i = icmp eq i8 %i.fc, %i.ev
  br i1 %.not.i23.i, label %bb.al, label %afm_tokenize.exit.i

bb.al:                                            ; preds = %.preheader.i.i
  %i.fd = tail call i32 @strncmp(ptr noundef nonnull %i.fb, ptr noundef nonnull readonly %i.eh, i64 noundef %i.eu) #20
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %.loopexit.loopexit.split.loop.exit25.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next.i.i.a = add nuw nsw i64 %indvars.iv.i.i.a, 1 ; 2 uses
  %9 = and i64 %indvars.iv.next.i.i.a, 4294967295
  %exitcond.not.i.i = icmp eq i64 %9, 74
  br i1 %exitcond.not.i.i, label %afm_tokenize.exit.i, label %.preheader.i.i

.loopexit17.i.i:                                  ; preds = %bb.ak
  %indvars.iv.next.i78 = or disjoint i64 %indvars.iv.i77, 1 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.next.i78
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !28
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !40
  %i.fi = icmp eq i8 %i.fh, %i.ev
  br i1 %i.fi, label %.preheader.i.i.preheader, label %.loopexit17.i.i.1

.loopexit17.i.i.1:                                ; preds = %.loopexit17.i.i
  %indvars.iv.next.i78.1 = add nuw nsw i64 %indvars.iv.i77, 2 ; 2 uses
  %exitcond.not.i79.1 = icmp eq i64 %indvars.iv.next.i78.1, 74
  br i1 %exitcond.not.i79.1, label %afm_tokenize.exit.i, label %bb.ak, !llvm.loop !377

.loopexit.loopexit.split.loop.exit25.i.i:         ; preds = %bb.al
  %i.fj = trunc nsw i64 %indvars.iv.i.i.a to i32
  br label %afm_tokenize.exit.i

afm_tokenize.exit.i:                              ; preds = %.loopexit17.i.i.1, %bb.am, %.preheader.i.i, %.loopexit.loopexit.split.loop.exit25.i.i
  %.014.i.i = phi i32 [ 75, %bb.am ], [ %i.fj, %.loopexit.loopexit.split.loop.exit25.i.i ], [ 75, %.preheader.i.i ], [ 75, %.loopexit17.i.i.1 ]
  switch i32 %.014.i.i, label %.preheader.i76 [
    i32 20, label %afm_parse_kern_data.exit
    i32 17, label %afm_parse_kern_data.exit
  ]

bb.an:                                            ; preds = %afm_tokenize.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 72
  br label %bb.ao

bb.ao:                                            ; preds = %afm_tokenize.exit.thread.i, %bb.an
  %.010.i = phi i32 [ 0, %bb.an ], [ %.111.i, %afm_tokenize.exit.thread.i ] ; 6 uses
  %.0.i81 = phi i32 [ 0, %bb.an ], [ %.1.i, %afm_tokenize.exit.thread.i ] ; 6 uses
  %.val.i82 = load ptr, ptr %i.f, align 8, !tbaa !375 ; 9 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.val.i82, i64 24 ; 7 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.val.i82, i64 16 ; 3 uses
  %.pre.i.i = load i32, ptr %i.gc, align 8, !tbaa !370 ; 2 uses
  %i.ge = icmp sgt i32 %.pre.i.i, 1
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !369 ; 8 uses
  %.val.promoted.i = load ptr, ptr %.val.i82, align 8, !tbaa !368
  br label %bb.ap

bb.ap:                                            ; preds = %afm_stream_skip_spaces.exit58.thread.i, %bb.ao
  %i.gg = phi ptr [ %i.gy, %afm_stream_skip_spaces.exit58.thread.i ], [ %.val.promoted.i, %bb.ao ] ; 5 uses
  %.pr6798.i = phi i32 [ 2, %afm_stream_skip_spaces.exit58.thread.i ], [ %.pre.i.i, %bb.ao ] ; 2 uses
  %i.gh = phi i1 [ true, %afm_stream_skip_spaces.exit58.thread.i ], [ %i.ge, %bb.ao ]
  br i1 %i.gh, label %.preheader.i50.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gi = icmp sgt i32 %.pr6798.i, 0
  br i1 %i.gi, label %afm_stream_skip_spaces.exit.i98, label %.preheader.i47.i

.preheader.i47.i:                                 ; preds = %bb.aq
  %i.gj = icmp ult ptr %i.gg, %i.gf
  br i1 %i.gj, label %.lr.ph.i.i96, label %.preheader.i50.i

.lr.ph.i.i96:                                     ; preds = %.preheader.i47.i, %.backedge.i.i97
  %i.gk = phi ptr [ %i.gl, %.backedge.i.i97 ], [ %i.gg, %.preheader.i47.i ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1 ; 9 uses
  store ptr %i.gl, ptr %.val.i82, align 8, !tbaa !368
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !40
  switch i8 %i.gm, label %afm_stream_skip_spaces.exit.i98 [
    i8 32, label %.backedge.i.i97
    i8 9, label %.backedge.i.i97
    i8 13, label %.preheader.i50.i
    i8 10, label %.preheader.i50.i
    i8 59, label %afm_stream_skip_spaces.exit.thread59.i
    i8 26, label %.preheader.i50.i
  ]

.backedge.i.i97:                                  ; preds = %.lr.ph.i.i96, %.lr.ph.i.i96
  %exitcond.not.i49.i = icmp eq ptr %i.gl, %i.gf
  br i1 %exitcond.not.i49.i, label %.preheader.i50.i, label %.lr.ph.i.i96

afm_stream_skip_spaces.exit.thread59.i:           ; preds = %.lr.ph.i.i96
  store i32 1, ptr %i.gc, align 8, !tbaa !370
  br label %bb.ar

afm_stream_skip_spaces.exit.i98:                  ; preds = %.lr.ph.i.i96, %bb.aq
  %i.gn = phi ptr [ %i.gg, %bb.aq ], [ %i.gl, %.lr.ph.i.i96 ] ; 2 uses
  %i.go = icmp sgt i32 %.pr6798.i, 1
  br i1 %i.go, label %.preheader.i50.i, label %bb.ar

bb.ar:                                            ; preds = %afm_stream_skip_spaces.exit.i98, %afm_stream_skip_spaces.exit.thread59.i
  %i.gp = phi ptr [ %i.gl, %afm_stream_skip_spaces.exit.thread59.i ], [ %i.gn, %afm_stream_skip_spaces.exit.i98 ] ; 3 uses
  %i.gq = icmp ult ptr %i.gp, %i.gf
  br i1 %i.gq, label %.lr.ph669, label %.preheader.i50.i

bb.as:                                            ; preds = %.lr.ph669
  %i.gr = icmp ult ptr %i.gt, %i.gf
  br i1 %i.gr, label %.lr.ph669, label %.preheader.i50.i

.lr.ph669:                                        ; preds = %bb.ar, %bb.as
  %i.gs = phi ptr [ %i.gt, %bb.as ], [ %i.gp, %bb.ar ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1 ; 7 uses
  store ptr %i.gt, ptr %.val.i82, align 8, !tbaa !368
  %i.gu = load i8, ptr %i.gs, align 1, !tbaa !40
  switch i8 %i.gu, label %bb.as [
    i8 13, label %.preheader.i50.i
    i8 10, label %.preheader.i50.i
    i8 26, label %.preheader.i50.i
  ]

.preheader.i50.i:                                 ; preds = %.backedge.i.i97, %.lr.ph.i.i96, %.lr.ph.i.i96, %.lr.ph.i.i96, %bb.as, %.lr.ph669, %.lr.ph669, %.lr.ph669, %bb.ar, %afm_stream_skip_spaces.exit.i98, %.preheader.i47.i, %bb.ap
  %i.gv = phi ptr [ %i.gn, %afm_stream_skip_spaces.exit.i98 ], [ %i.gt, %bb.as ], [ %i.gg, %.preheader.i47.i ], [ %i.gg, %bb.ap ], [ %i.gp, %bb.ar ], [ %i.gt, %.lr.ph669 ], [ %i.gt, %.lr.ph669 ], [ %i.gt, %.lr.ph669 ], [ %i.gl, %.lr.ph.i.i96 ], [ %i.gl, %.lr.ph.i.i96 ], [ %i.gl, %.lr.ph.i.i96 ], [ %i.gl, %.backedge.i.i97 ] ; 2 uses
  store i32 0, ptr %i.gc, align 8, !tbaa !370
  %i.gw = icmp ult ptr %i.gv, %i.gf
  br i1 %i.gw, label %.lr.ph.i54.i, label %.thread.i52.i

.lr.ph.i54.i:                                     ; preds = %.preheader.i50.i, %.backedge.i55.i
  %i.gx = phi ptr [ %i.gy, %.backedge.i55.i ], [ %i.gv, %.preheader.i50.i ] ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 1 ; 7 uses
  store ptr %i.gy, ptr %.val.i82, align 8, !tbaa !368
  %i.gz = load i8, ptr %i.gx, align 1, !tbaa !40
  switch i8 %i.gz, label %afm_stream_skip_spaces.exit58.i.loopexit [
    i8 32, label %.backedge.i55.i
    i8 9, label %.backedge.i55.i
    i8 13, label %afm_stream_skip_spaces.exit58.thread.i
    i8 10, label %afm_stream_skip_spaces.exit58.thread.i
    i8 59, label %bb.at
    i8 26, label %.thread.i52.i
  ]

.backedge.i55.i:                                  ; preds = %.lr.ph.i54.i, %.lr.ph.i54.i
  %exitcond.not.i56.i = icmp eq ptr %i.gy, %i.gf
  br i1 %exitcond.not.i56.i, label %.thread.i52.i, label %.lr.ph.i54.i

bb.at:                                            ; preds = %.lr.ph.i54.i
  store i32 1, ptr %i.gc, align 8, !tbaa !370
  br label %afm_parse_kern_data.exit.thread128

.thread.i52.i:                                    ; preds = %.preheader.i50.i, %.backedge.i55.i, %.lr.ph.i54.i
  store i32 3, ptr %i.gc, align 8, !tbaa !370
  br label %afm_parse_kern_data.exit.thread128

afm_stream_skip_spaces.exit58.i.loopexit:         ; preds = %.lr.ph.i54.i
  %i.ha = icmp ult ptr %i.gy, %i.gf
  br i1 %i.ha, label %.lr.ph677, label %.thread26.sink.split.i.i83

afm_stream_skip_spaces.exit58.i:                  ; preds = %.lr.ph677
  %i.hb = icmp ult ptr %i.hd, %i.gf
  br i1 %i.hb, label %.lr.ph677, label %.thread26.sink.split.i.i83

.lr.ph677:                                        ; preds = %afm_stream_skip_spaces.exit58.i.loopexit, %afm_stream_skip_spaces.exit58.i
  %i.hc = phi ptr [ %i.hd, %afm_stream_skip_spaces.exit58.i ], [ %i.gy, %afm_stream_skip_spaces.exit58.i.loopexit ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1 ; 9 uses
  store ptr %i.hd, ptr %.val.i82, align 8, !tbaa !368
  %i.he = load i8, ptr %i.hc, align 1, !tbaa !40
  switch i8 %i.he, label %afm_stream_skip_spaces.exit58.i [
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
  %i.hf = phi ptr [ %i.hd, %.thread26.sink.split.i.i83.loopexit ], [ %i.hd, %.lr.ph677 ], [ %i.gy, %afm_stream_skip_spaces.exit58.i.loopexit ], [ %i.hd, %afm_stream_skip_spaces.exit58.i ], [ %i.hd, %.thread26.sink.split.i.i83.loopexit694 ]
  %.sink.i46.i = phi i32 [ 2, %.thread26.sink.split.i.i83.loopexit ], [ 3, %.lr.ph677 ], [ 3, %afm_stream_skip_spaces.exit58.i.loopexit ], [ 3, %afm_stream_skip_spaces.exit58.i ], [ 1, %.thread26.sink.split.i.i83.loopexit694 ]
  store i32 %.sink.i46.i, ptr %i.gc, align 8, !tbaa !370
  br label %.loopexit.i84

afm_stream_skip_spaces.exit58.thread.i:           ; preds = %.lr.ph.i54.i, %.lr.ph.i54.i
  store i32 2, ptr %i.gc, align 8, !tbaa !370
  br label %bb.ap

.loopexit.i84:                                    ; preds = %.lr.ph677, %.lr.ph677, %.thread26.sink.split.i.i83
  %i.hg = phi ptr [ %i.hf, %.thread26.sink.split.i.i83 ], [ %i.hd, %.lr.ph677 ], [ %i.hd, %.lr.ph677 ]
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.gx to i64
  %i.hj = xor i64 %i.hi, -1
  %i.hk = add i64 %i.hh, %i.hj
  %i.hl = load i8, ptr %i.gx, align 1, !tbaa !40  ; 3 uses
  br label %bb.au

bb.au:                                            ; preds = %.loopexit17.i.i86.1, %.loopexit.i84
  %indvars.iv.i85 = phi i64 [ 0, %.loopexit.i84 ], [ %indvars.iv.next.i87.1, %.loopexit17.i.i86.1 ] ; 4 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i85
  %i.hn = load ptr, ptr %i.hm, align 16, !tbaa !28
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !40
  %i.hp = icmp eq i8 %i.ho, %i.hl
  br i1 %i.hp, label %.preheader.i.i89.preheader, label %.loopexit17.i.i86

.preheader.i.i89.preheader:                       ; preds = %.loopexit17.i.i86, %bb.au
  %indvars.iv.i85.lcssa = phi i64 [ %indvars.iv.i85, %bb.au ], [ %indvars.iv.next.i87, %.loopexit17.i.i86 ]
  br label %.preheader.i.i89

.preheader.i.i89:                                 ; preds = %.preheader.i.i89.preheader, %bb.aw
  %indvars.iv.i.i90 = phi i64 [ %indvars.iv.next.i.i91, %bb.aw ], [ %indvars.iv.i85.lcssa, %.preheader.i.i89.preheader ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i.i90
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !28 ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !40
  %.not.i20.i = icmp eq i8 %i.hs, %i.hl
  br i1 %.not.i20.i, label %bb.av, label %afm_tokenize.exit.thread.i

bb.av:                                            ; preds = %.preheader.i.i89
  %i.ht = call i32 @strncmp(ptr noundef nonnull %i.hr, ptr noundef nonnull readonly %i.gx, i64 noundef %i.hk) #20
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %afm_tokenize.exit.i93, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %indvars.iv.next.i.i91 = add nuw nsw i64 %indvars.iv.i.i90, 1 ; 2 uses
  %10 = and i64 %indvars.iv.next.i.i91, 4294967295
  %exitcond.not.i.i92 = icmp eq i64 %10, 74
  br i1 %exitcond.not.i.i92, label %afm_tokenize.exit.thread.i, label %.preheader.i.i89

.loopexit17.i.i86:                                ; preds = %bb.au
  %indvars.iv.next.i87 = or disjoint i64 %indvars.iv.i85, 1 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.next.i87
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !28
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !40
  %i.hy = icmp eq i8 %i.hx, %i.hl
  br i1 %i.hy, label %.preheader.i.i89.preheader, label %.loopexit17.i.i86.1

.loopexit17.i.i86.1:                              ; preds = %.loopexit17.i.i86
  %indvars.iv.next.i87.1 = add nuw nsw i64 %indvars.iv.i85, 2 ; 2 uses
  %exitcond.not.i88.1 = icmp eq i64 %indvars.iv.next.i87.1, 74
  br i1 %exitcond.not.i88.1, label %afm_tokenize.exit.thread.i, label %bb.au, !llvm.loop !377

afm_tokenize.exit.i93:                            ; preds = %bb.av
  %i.hz = trunc nsw i64 %indvars.iv.i.i90 to i32
  switch i32 %i.hz, label %afm_parse_kern_data.exit.thread128 [
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
  %i.ia = load ptr, ptr %i.d, align 8, !tbaa !376 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 3, ptr %3, align 8, !tbaa !378
  %i.ib = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull readonly %0, ptr noundef %3, i32 noundef 1)
  %i.ic = icmp eq i32 %i.ib, 1
  br i1 %i.ic, label %afm_parser_read_int.exit.i.i, label %afm_parser_read_int.exit.thread.i.i

afm_parser_read_int.exit.thread.i.i:              ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %afm_parse_kern_data.exit.thread128

afm_parser_read_int.exit.i.i:                     ; preds = %bb.ay
  %i.id = load i32, ptr %i.fs, align 8, !tbaa !40 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ie = icmp slt i32 %i.id, 0
  br i1 %i.ie, label %afm_parse_kern_data.exit.thread128, label %bb.az

bb.az:                                            ; preds = %afm_parser_read_int.exit.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 64 ; 4 uses
  store i32 %i.id, ptr %i.if, align 8, !tbaa !391
  %i.ig = load ptr, ptr %i.gd, align 8, !tbaa !369
  %i.ih = load ptr, ptr %.val.i82, align 8, !tbaa !368
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = udiv i64 %i.ik, 20
  %i.im = zext nneg i32 %i.id to i64              ; 2 uses
  %i.in = icmp samesign ult i64 %i.il, %i.im
  br i1 %i.in, label %afm_parse_kern_data.exit.thread128, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.i21.i = icmp eq i32 %i.id, 0
  br i1 %.not.i21.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.io = load ptr, ptr %0, align 8, !tbaa !371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.ip = call ptr @ft_mem_qrealloc(ptr noundef %i.io, i64 noundef 40, i64 noundef 0, i64 noundef %i.im, ptr noundef null, ptr noundef nonnull %i.b) #19
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !392
  %i.ir = load i32, ptr %i.b, align 4, !tbaa !19  ; 2 uses
  %.not41.i.i = icmp eq i32 %i.ir, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br i1 %.not41.i.i, label %bb.bc, label %afm_parse_kern_data.exit.thread128

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.is = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  br label %bb.bd

bb.bd:                                            ; preds = %afm_tokenize.exit.thread.i.i, %bb.bc
  %.031.i.i = phi i32 [ -1, %bb.bc ], [ %.2.i.i, %afm_tokenize.exit.thread.i.i ] ; 6 uses
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !375 ; 7 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %.pre.i.i.i = load i32, ptr %i.it, align 8, !tbaa !370
  %i.iv = icmp sgt i32 %.pre.i.i.i, 1
  br i1 %i.iv, label %afm_stream_read_string.exit.i.i.i.preheader, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call fastcc void @afm_stream_skip_spaces(ptr noundef nonnull %.val.i.i)
  %i.iw = load i32, ptr %i.it, align 8, !tbaa !370
  %i.ix = icmp sgt i32 %i.iw, 1
  br i1 %i.ix, label %afm_stream_read_string.exit.i.i.i.preheader, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iy = load ptr, ptr %.val.i.i, align 8, !tbaa !368 ; 2 uses
  %i.iz = load ptr, ptr %i.iu, align 8, !tbaa !369 ; 2 uses
  %i.ja = icmp ult ptr %i.iy, %i.iz
  br i1 %i.ja, label %.lr.ph684, label %afm_stream_read_string.exit.i.i.i.preheader

bb.bg:                                            ; preds = %.lr.ph684
  %i.jb = icmp ult ptr %i.jd, %i.iz
  br i1 %i.jb, label %.lr.ph684, label %afm_stream_read_string.exit.i.i.i.preheader

.lr.ph684:                                        ; preds = %bb.bf, %bb.bg
  %i.jc = phi ptr [ %i.jd, %bb.bg ], [ %i.iy, %bb.bf ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 1 ; 3 uses
  store ptr %i.jd, ptr %.val.i.i, align 8, !tbaa !368
  %i.je = load i8, ptr %i.jc, align 1, !tbaa !40
  switch i8 %i.je, label %bb.bg [
    i8 13, label %afm_stream_read_string.exit.i.i.i.preheader
    i8 10, label %afm_stream_read_string.exit.i.i.i.preheader
    i8 26, label %afm_stream_read_string.exit.i.i.i.preheader
  ]

afm_stream_read_string.exit.i.i.i.preheader:      ; preds = %.lr.ph684, %.lr.ph684, %.lr.ph684, %bb.bg, %bb.bd, %bb.be, %bb.bf
  br label %afm_stream_read_string.exit.i.i.i

afm_stream_read_string.exit.i.i.i:                ; preds = %afm_stream_read_string.exit.i.i.i.preheader, %bb.bh
  store i32 0, ptr %i.it, align 8, !tbaa !370
  %i.jf = call fastcc ptr @afm_stream_read_one(ptr noundef nonnull %.val.i.i) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %afm_stream_read_string.exit.i.i.i
  %i.jg = load i32, ptr %i.it, align 8, !tbaa !370
  %i.jh = icmp eq i32 %i.jg, 2
  br i1 %i.jh, label %afm_stream_read_string.exit.i.i.i, label %afm_parse_kern_data.exit.thread128

bb.bi:                                            ; preds = %afm_stream_read_string.exit.i.i.i
  %i.ji = load ptr, ptr %.val.i.i, align 8, !tbaa !368
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %i.jf to i64
  %i.jl = xor i64 %i.jk, -1
  %i.jm = add i64 %i.jj, %i.jl
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.jn = load i8, ptr %i.jf, align 1, !tbaa !40  ; 3 uses
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit17.i.i.i.1, %bb.bi
  %indvars.iv.i22.i = phi i64 [ 0, %bb.bi ], [ %indvars.iv.next.i23.i.1, %.loopexit17.i.i.i.1 ] ; 4 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i22.i
  %i.jp = load ptr, ptr %i.jo, align 16, !tbaa !28
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !40
  %i.jr = icmp eq i8 %i.jq, %i.jn
  br i1 %i.jr, label %.preheader.i.i.i.preheader, label %.loopexit17.i.i.i

.preheader.i.i.i.preheader:                       ; preds = %.loopexit17.i.i.i, %bb.bj
  %indvars.iv.i22.i.lcssa = phi i64 [ %indvars.iv.i22.i, %bb.bj ], [ %indvars.iv.next.i23.i, %.loopexit17.i.i.i ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %bb.bl
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.bl ], [ %indvars.iv.i22.i.lcssa, %.preheader.i.i.i.preheader ] ; 3 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i.i.i
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !28 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !40
  %.not.i46.i.i = icmp eq i8 %i.ju, %i.jn
  br i1 %.not.i46.i.i, label %bb.bk, label %afm_tokenize.exit.thread.i.i

bb.bk:                                            ; preds = %.preheader.i.i.i
  %i.jv = call i32 @strncmp(ptr noundef nonnull %i.jt, ptr noundef nonnull readonly %i.jf, i64 noundef %i.jm) #20
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %afm_tokenize.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %11 = and i64 %indvars.iv.next.i.i.i, 4294967295
  %exitcond.not.i.i.i = icmp eq i64 %11, 74
  br i1 %exitcond.not.i.i.i, label %afm_tokenize.exit.thread.i.i, label %.preheader.i.i.i

.loopexit17.i.i.i:                                ; preds = %bb.bj
  %indvars.iv.next.i23.i = or disjoint i64 %indvars.iv.i22.i, 1 ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.next.i23.i
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !28
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !40
  %i.ka = icmp eq i8 %i.jz, %i.jn
  br i1 %i.ka, label %.preheader.i.i.i.preheader, label %.loopexit17.i.i.i.1

.loopexit17.i.i.i.1:                              ; preds = %.loopexit17.i.i.i
  %indvars.iv.next.i23.i.1 = add nuw nsw i64 %indvars.iv.i22.i, 2 ; 2 uses
  %exitcond.not.i24.i.1 = icmp eq i64 %indvars.iv.next.i23.i.1, 74
  br i1 %exitcond.not.i24.i.1, label %afm_tokenize.exit.thread.i.i, label %bb.bj, !llvm.loop !377

afm_tokenize.exit.i.i:                            ; preds = %bb.bk
  %i.kb = trunc nsw i64 %indvars.iv.i.i.i to i32
  switch i32 %i.kb, label %.thread.i25.i [
    i32 56, label %bb.bm
    i32 23, label %bb.bp
    i32 21, label %bb.bp
    i32 20, label %bb.bp
    i32 75, label %afm_tokenize.exit.thread.i.i
  ]

bb.bm:                                            ; preds = %afm_tokenize.exit.i.i
  %i.kc = add nsw i32 %.031.i.i, 1                ; 3 uses
  %i.kd = load i32, ptr %i.if, align 8, !tbaa !391
  %.not44.i.i = icmp slt i32 %i.kc, %i.kd
  br i1 %.not44.i.i, label %bb.bn, label %.thread.i25.i

bb.bn:                                            ; preds = %bb.bm
  %i.ke = load ptr, ptr %i.is, align 8, !tbaa !392
  store i32 3, ptr %4, align 16, !tbaa !378
  store i32 2, ptr %i.ft, align 16, !tbaa !378
  store i32 2, ptr %i.fu, align 16, !tbaa !378
  store i32 2, ptr %i.fv, align 16, !tbaa !378
  store i32 2, ptr %i.fw, align 16, !tbaa !378
  %i.kf = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull readonly %0, ptr noundef %4, i32 noundef 5)
  %.not45.i.i = icmp eq i32 %i.kf, 5
  br i1 %.not45.i.i, label %bb.bo, label %.thread.i25.i

bb.bo:                                            ; preds = %bb.bn
  %i.kg = sext i32 %i.kc to i64
  %i.kh = getelementptr inbounds [40 x i8], ptr %i.ke, i64 %i.kg ; 5 uses
  %i.ki = load i32, ptr %i.fx, align 8, !tbaa !40
  store i32 %i.ki, ptr %i.kh, align 8, !tbaa !393
  %i.kj = load i64, ptr %i.fy, align 8, !tbaa !40
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store i64 %i.kj, ptr %i.kk, align 8, !tbaa !395
  %i.kl = load i64, ptr %i.fz, align 8, !tbaa !40
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  store i64 %i.kl, ptr %i.km, align 8, !tbaa !396
  %i.kn = load i64, ptr %i.ga, align 8, !tbaa !40
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  store i64 %i.kn, ptr %i.ko, align 8, !tbaa !397
  %i.kp = load i64, ptr %i.gb, align 8, !tbaa !40
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  store i64 %i.kp, ptr %i.kq, align 8, !tbaa !398
  br label %afm_tokenize.exit.thread.i.i

bb.bp:                                            ; preds = %afm_tokenize.exit.i.i, %afm_tokenize.exit.i.i, %afm_tokenize.exit.i.i
  %i.kr = add nsw i32 %.031.i.i, 1                ; 2 uses
  %i.ks = load i32, ptr %i.if, align 8, !tbaa !391
  %.not43.i.i = icmp eq i32 %i.kr, %i.ks
  br i1 %.not43.i.i, label %afm_parse_track_kern.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i32 %i.kr, ptr %i.if, align 8, !tbaa !391
  br label %afm_parse_track_kern.exit.i

.thread.i25.i:                                    ; preds = %bb.bn, %bb.bm, %afm_tokenize.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %afm_parse_kern_data.exit.thread128

afm_tokenize.exit.thread.i.i:                     ; preds = %.loopexit17.i.i.i.1, %bb.bl, %.preheader.i.i.i, %bb.bo, %afm_tokenize.exit.i.i
  %.2.i.i = phi i32 [ %i.kc, %bb.bo ], [ %.031.i.i, %bb.bl ], [ %.031.i.i, %afm_tokenize.exit.i.i ], [ %.031.i.i, %.preheader.i.i.i ], [ %.031.i.i, %.loopexit17.i.i.i.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bd

afm_parse_track_kern.exit.i:                      ; preds = %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %afm_tokenize.exit.thread.i

bb.br:                                            ; preds = %afm_tokenize.exit.i93, %afm_tokenize.exit.i93
  %.not16.i = icmp eq i32 %.0.i81, 0
  br i1 %.not16.i, label %bb.bs, label %afm_parse_kern_data.exit.thread128

bb.bs:                                            ; preds = %bb.br
  %i.kt = load ptr, ptr %i.d, align 8, !tbaa !376 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i32 3, ptr %1, align 8, !tbaa !378
  %i.ku = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull readonly %0, ptr noundef %1, i32 noundef 1)
  %i.kv = icmp eq i32 %i.ku, 1
  br i1 %i.kv, label %afm_parser_read_int.exit.i28.i, label %afm_parser_read_int.exit.thread.i26.i

afm_parser_read_int.exit.thread.i26.i:            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %afm_parse_kern_data.exit.thread128

afm_parser_read_int.exit.i28.i:                   ; preds = %bb.bs
  %i.kw = load i32, ptr %i.fk, align 8, !tbaa !40 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.kx = icmp slt i32 %i.kw, 0
  br i1 %i.kx, label %afm_parse_kern_data.exit.thread128, label %bb.bt

bb.bt:                                            ; preds = %afm_parser_read_int.exit.i28.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 80 ; 4 uses
  store i32 %i.kw, ptr %i.ky, align 8, !tbaa !399
  %i.kz = load ptr, ptr %i.gd, align 8, !tbaa !369
  %i.la = load ptr, ptr %.val.i82, align 8, !tbaa !368
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = sub i64 %i.lb, %i.lc
  %i.le = udiv i64 %i.ld, 10
  %i.lf = zext nneg i32 %i.kw to i64              ; 2 uses
  %i.lg = icmp samesign ult i64 %i.le, %i.lf
  br i1 %i.lg, label %afm_parse_kern_data.exit.thread128, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not.i29.i = icmp eq i32 %i.kw, 0
  br i1 %.not.i29.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lh = load ptr, ptr %0, align 8, !tbaa !371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.li = call ptr @ft_mem_qrealloc(ptr noundef %i.lh, i64 noundef 16, i64 noundef 0, i64 noundef %i.lf, ptr noundef null, ptr noundef nonnull %i.a) #19
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kt, i64 72
  store ptr %i.li, ptr %i.lj, align 8, !tbaa !400
  %i.lk = load i32, ptr %i.a, align 4, !tbaa !19  ; 2 uses
  %.not55.i.i = icmp eq i32 %i.lk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %.not55.i.i, label %bb.bw, label %afm_parse_kern_data.exit.thread128

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kt, i64 72 ; 2 uses
  br label %afm_tokenize.exit.thread.i38.i.outer

afm_tokenize.exit.thread.i38.i.outer:             ; preds = %.thread.i44.i94, %bb.bw
  %.043.i.i.ph = phi i32 [ %i.mv, %.thread.i44.i94 ], [ -1, %bb.bw ] ; 2 uses
  br label %afm_tokenize.exit.thread.i38.i

afm_tokenize.exit.thread.i38.i:                   ; preds = %afm_tokenize.exit.thread.i38.i.backedge, %afm_tokenize.exit.thread.i38.i.outer
  %.val.i30.i = load ptr, ptr %i.f, align 8, !tbaa !375 ; 7 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.val.i30.i, i64 24 ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.val.i30.i, i64 16
  %.pre.i.i31.i = load i32, ptr %i.lm, align 8, !tbaa !370
  %i.lo = icmp sgt i32 %.pre.i.i31.i, 1
  br i1 %i.lo, label %afm_stream_read_string.exit.i.i32.i.preheader, label %bb.bx

bb.bx:                                            ; preds = %afm_tokenize.exit.thread.i38.i
  call fastcc void @afm_stream_skip_spaces(ptr noundef nonnull %.val.i30.i)
  %i.lp = load i32, ptr %i.lm, align 8, !tbaa !370
  %i.lq = icmp sgt i32 %i.lp, 1
  br i1 %i.lq, label %afm_stream_read_string.exit.i.i32.i.preheader, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lr = load ptr, ptr %.val.i30.i, align 8, !tbaa !368 ; 2 uses
  %i.ls = load ptr, ptr %i.ln, align 8, !tbaa !369 ; 2 uses
  %i.lt = icmp ult ptr %i.lr, %i.ls
  br i1 %i.lt, label %.lr.ph680, label %afm_stream_read_string.exit.i.i32.i.preheader

bb.bz:                                            ; preds = %.lr.ph680
  %i.lu = icmp ult ptr %i.lw, %i.ls
  br i1 %i.lu, label %.lr.ph680, label %afm_stream_read_string.exit.i.i32.i.preheader

.lr.ph680:                                        ; preds = %bb.by, %bb.bz
  %i.lv = phi ptr [ %i.lw, %bb.bz ], [ %i.lr, %bb.by ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 1 ; 3 uses
  store ptr %i.lw, ptr %.val.i30.i, align 8, !tbaa !368
  %i.lx = load i8, ptr %i.lv, align 1, !tbaa !40
  switch i8 %i.lx, label %bb.bz [
    i8 13, label %afm_stream_read_string.exit.i.i32.i.preheader
    i8 10, label %afm_stream_read_string.exit.i.i32.i.preheader
    i8 26, label %afm_stream_read_string.exit.i.i32.i.preheader
  ]

afm_stream_read_string.exit.i.i32.i.preheader:    ; preds = %.lr.ph680, %.lr.ph680, %.lr.ph680, %bb.bz, %afm_tokenize.exit.thread.i38.i, %bb.bx, %bb.by
  br label %afm_stream_read_string.exit.i.i32.i

afm_stream_read_string.exit.i.i32.i:              ; preds = %afm_stream_read_string.exit.i.i32.i.preheader, %bb.ca
  store i32 0, ptr %i.lm, align 8, !tbaa !370
  %i.ly = call fastcc ptr @afm_stream_read_one(ptr noundef nonnull %.val.i30.i) ; 4 uses
  %.not.i.i33.i = icmp eq ptr %i.ly, null
  br i1 %.not.i.i33.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %afm_stream_read_string.exit.i.i32.i
  %i.lz = load i32, ptr %i.lm, align 8, !tbaa !370
  %i.ma = icmp eq i32 %i.lz, 2
  br i1 %i.ma, label %afm_stream_read_string.exit.i.i32.i, label %afm_parse_kern_data.exit.thread128

bb.cb:                                            ; preds = %afm_stream_read_string.exit.i.i32.i
  %i.mb = load ptr, ptr %.val.i30.i, align 8, !tbaa !368
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = ptrtoint ptr %i.ly to i64
  %i.me = xor i64 %i.md, -1
  %i.mf = add i64 %i.mc, %i.me
  %i.mg = load i8, ptr %i.ly, align 1, !tbaa !40  ; 3 uses
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit17.i.i35.i.1, %bb.cb
  %indvars.iv.i34.i = phi i64 [ 0, %bb.cb ], [ %indvars.iv.next.i36.i.1, %.loopexit17.i.i35.i.1 ] ; 4 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i34.i
  %i.mi = load ptr, ptr %i.mh, align 16, !tbaa !28
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !40
  %i.mk = icmp eq i8 %i.mj, %i.mg
  br i1 %i.mk, label %.preheader.i.i39.i.preheader, label %.loopexit17.i.i35.i

.preheader.i.i39.i.preheader:                     ; preds = %.loopexit17.i.i35.i, %bb.cc
  %indvars.iv.i34.i.lcssa = phi i64 [ %indvars.iv.i34.i, %bb.cc ], [ %indvars.iv.next.i36.i, %.loopexit17.i.i35.i ]
  br label %.preheader.i.i39.i

.preheader.i.i39.i:                               ; preds = %.preheader.i.i39.i.preheader, %bb.ce
  %indvars.iv.i.i40.i = phi i64 [ %indvars.iv.next.i.i41.i, %bb.ce ], [ %indvars.iv.i34.i.lcssa, %.preheader.i.i39.i.preheader ] ; 5 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.i.i40.i
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !28 ; 2 uses
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !40
  %.not.i59.i.i = icmp eq i8 %i.mn, %i.mg
  br i1 %.not.i59.i.i, label %bb.cd, label %afm_tokenize.exit.thread.i38.i.backedge

bb.cd:                                            ; preds = %.preheader.i.i39.i
  %i.mo = call i32 @strncmp(ptr noundef nonnull %i.mm, ptr noundef nonnull readonly %i.ly, i64 noundef %i.mf) #20
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %afm_tokenize.exit.i43.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %indvars.iv.next.i.i41.i = add nuw nsw i64 %indvars.iv.i.i40.i, 1 ; 2 uses
  %12 = and i64 %indvars.iv.next.i.i41.i, 4294967295
  %exitcond.not.i.i42.i = icmp eq i64 %12, 74
  br i1 %exitcond.not.i.i42.i, label %afm_tokenize.exit.thread.i38.i.backedge, label %.preheader.i.i39.i

.loopexit17.i.i35.i:                              ; preds = %bb.cc
  %indvars.iv.next.i36.i = or disjoint i64 %indvars.iv.i34.i, 1 ; 2 uses
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr @afm_key_table, i64 %indvars.iv.next.i36.i
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !28
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !40
  %i.mt = icmp eq i8 %i.ms, %i.mg
  br i1 %i.mt, label %.preheader.i.i39.i.preheader, label %.loopexit17.i.i35.i.1

.loopexit17.i.i35.i.1:                            ; preds = %.loopexit17.i.i35.i
  %indvars.iv.next.i36.i.1 = add nuw nsw i64 %indvars.iv.i34.i, 2 ; 2 uses
  %exitcond.not.i37.i.1 = icmp eq i64 %indvars.iv.next.i36.i.1, 74
  br i1 %exitcond.not.i37.i.1, label %afm_tokenize.exit.thread.i38.i.backedge, label %bb.cc, !llvm.loop !377

afm_tokenize.exit.i43.i:                          ; preds = %bb.cd
  %i.mu = trunc nsw i64 %indvars.iv.i.i40.i to i32
  switch i32 %i.mu, label %afm_parse_kern_data.exit.thread128 [
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
  %i.mv = add nsw i32 %.043.i.i.ph, 1             ; 3 uses
  %i.mw = load i32, ptr %i.ky, align 8, !tbaa !399
  %.not58.i.i = icmp slt i32 %i.mv, %i.mw
  br i1 %.not58.i.i, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.mx = load ptr, ptr %i.ll, align 8, !tbaa !400
  %i.my = sext i32 %i.mv to i64
  %i.mz = getelementptr inbounds [16 x i8], ptr %i.mx, i64 %i.my ; 4 uses
  store i32 5, ptr %2, align 16, !tbaa !378
  store i32 5, ptr %i.fl, align 16, !tbaa !378
  store i32 3, ptr %i.fm, align 16, !tbaa !378
  store i32 3, ptr %i.fn, align 16, !tbaa !378
  %i.na = call fastcc i32 @afm_parser_read_vals(ptr noundef nonnull readonly %0, ptr noundef %2, i32 noundef 4) ; 2 uses
  %i.nb = icmp slt i32 %i.na, 3
  br i1 %i.nb, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nc = load i32, ptr %i.fo, align 8, !tbaa !40
  store i32 %i.nc, ptr %i.mz, align 4, !tbaa !401
  %i.nd = load i32, ptr %i.fp, align 8, !tbaa !40
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  store i32 %i.nd, ptr %i.ne, align 4, !tbaa !403
  %i.nf = icmp eq i64 %indvars.iv.i.i40.i, 37
  %i.ng = load i32, ptr %i.fq, align 8, !tbaa !40 ; 2 uses
  br i1 %i.nf, label %.thread.i44.i94, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nh = icmp eq i64 %indvars.iv.i.i40.i, 34
  %i.ni = icmp eq i32 %i.na, 4
  %or.cond.i.i = and i1 %i.nh, %i.ni
  %i.nj = load i32, ptr %i.fr, align 8
  %i.nk = select i1 %or.cond.i.i, i32 %i.nj, i32 0
  br label %.thread.i44.i94

.thread.i44.i94:                                  ; preds = %bb.ci, %bb.ch
  %.sink95.i.i = phi i32 [ %i.ng, %bb.ci ], [ 0, %bb.ch ]
  %.sink.i.i95 = phi i32 [ %i.nk, %bb.ci ], [ %i.ng, %bb.ch ]
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store i32 %.sink95.i.i, ptr %i.nl, align 4, !tbaa !404
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mz, i64 12
  store i32 %.sink.i.i95, ptr %i.nm, align 4, !tbaa !405
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %afm_tokenize.exit.thread.i38.i.outer

bb.cj:                                            ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %afm_parse_kern_data.exit.thread128

bb.ck:                                            ; preds = %afm_tokenize.exit.i43.i, %afm_tokenize.exit.i43.i, %afm_tokenize.exit.i43.i
  %i.nn = add nsw i32 %.043.i.i.ph, 1             ; 3 uses
  %i.no = load i32, ptr %i.ky, align 8, !tbaa !399
  %.not57.i.i = icmp eq i32 %i.nn, %i.no
  br i1 %.not57.i.i, label %afm_parse_kern_pairs.exit.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store i32 %i.nn, ptr %i.ky, align 8, !tbaa !399
  br label %afm_parse_kern_pairs.exit.i

afm_parse_kern_pairs.exit.i:                      ; preds = %bb.cl, %bb.ck
  %i.np = load ptr, ptr %i.ll, align 8, !tbaa !400
  %i.nq = zext i32 %i.nn to i64
  call void @qsort(ptr noundef %i.np, i64 noundef %i.nq, i64 noundef 16, ptr noundef nonnull @afm_compare_kern_pairs) #19
  br label %afm_tokenize.exit.thread.i

afm_tokenize.exit.thread.i:                       ; preds = %.loopexit17.i.i86.1, %bb.aw, %.preheader.i.i89, %afm_parse_kern_pairs.exit.i, %afm_parse_track_kern.exit.i, %afm_tokenize.exit.i93
  %.111.i = phi i32 [ %.010.i, %afm_tokenize.exit.i93 ], [ 1, %afm_parse_track_kern.exit.i ], [ %.010.i, %afm_parse_kern_pairs.exit.i ], [ %.010.i, %bb.aw ], [ %.010.i, %.preheader.i.i89 ], [ %.010.i, %.loopexit17.i.i86.1 ]
  %.1.i = phi i32 [ %.0.i81, %afm_tokenize.exit.i93 ], [ %.0.i81, %afm_parse_track_kern.exit.i ], [ 1, %afm_parse_kern_pairs.exit.i ], [ %.0.i81, %bb.aw ], [ %.0.i81, %.preheader.i.i89 ], [ %.0.i81, %.loopexit17.i.i86.1 ]
  br label %bb.ao, !llvm.loop !406

afm_parse_kern_data.exit.thread128:               ; preds = %bb.r, %bb.s, %bb.u, %bb.w, %bb.y, %afm_tokenize.exit.i93, %bb.bb, %bb.bv, %bb.az, %afm_parser_read_int.exit.i.i, %bb.bt, %afm_parser_read_int.exit.i28.i, %bb.ax, %bb.br, %afm_tokenize.exit.i43.i, %bb.ca, %bb.bh, %afm_parser_read_int.exit, %.thread, %.thread.i52.i, %.thread.i25.i, %bb.cj, %afm_parser_read_int.exit.thread.i26.i, %afm_parser_read_int.exit.thread.i.i, %bb.at
  %.4.ph = phi i32 [ %.041, %.thread ], [ 160, %afm_parser_read_int.exit.thread.i26.i ], [ 160, %bb.cj ], [ 160, %bb.ca ], [ 160, %.thread.i25.i ], [ 160, %afm_tokenize.exit.i43.i ], [ %.041, %afm_parser_read_int.exit ], [ 160, %bb.br ], [ 160, %bb.bh ], [ 160, %.thread.i52.i ], [ 160, %bb.at ], [ 160, %afm_parser_read_int.exit.thread.i.i ], [ 160, %afm_tokenize.exit.i93 ], [ %i.ir, %bb.bb ], [ %i.lk, %bb.bv ], [ 160, %bb.az ], [ 160, %afm_parser_read_int.exit.i.i ], [ 160, %bb.bt ], [ 160, %afm_parser_read_int.exit.i28.i ], [ 160, %bb.ax ], [ 7, %bb.r ], [ %.041, %bb.w ], [ %.041, %bb.u ], [ %.041, %bb.s ], [ %.041, %bb.y ]
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
  %i.nr = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !392
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.ns) #19
  store ptr null, ptr %i.nr, align 8, !tbaa !392
  %i.nt = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i32 0, ptr %i.nt, align 8, !tbaa !391
  %i.nu = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !400
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.nv) #19
  store ptr null, ptr %i.nu, align 8, !tbaa !400
  %i.nw = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i32 0, ptr %i.nw, align 8, !tbaa !399
  store i8 0, ptr %i.e, align 8, !tbaa !380
  br label %afm_parser_next_key.exit.thread

afm_parser_next_key.exit.thread:                  ; preds = %bb.f, %afm_parse_kern_data.exit.thread135, %afm_parser_next_key.exit, %bb.g, %bb.a, %afm_parser_next_key.exit72.thread
  %.447 = phi i32 [ 6, %bb.a ], [ %.346.ph, %afm_parse_kern_data.exit.thread135 ], [ %.5, %afm_parser_next_key.exit72.thread ], [ 2, %bb.g ], [ 2, %afm_parser_next_key.exit ], [ 2, %bb.f ]
  ret i32 %.447
}

; Function Attrs: nounwind uwtable
define internal void @cff_builder_init(ptr nofree noundef writeonly captures(none) initializes((0, 24), (48, 96), (128, 130), (152, 216)) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i8 noundef zeroext %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 1, ptr %i.b, align 1, !tbaa !407
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !408
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.d, align 8, !tbaa !409
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !410
  store ptr %i.f, ptr %0, align 8, !tbaa !411
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 296 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !412
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !133  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !413
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %i.l, align 8, !tbaa !414
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.n, align 8, !tbaa !415
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
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !139
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !143  ; 2 uses
  %.not37 = icmp eq ptr %i.u, null
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !416
  store ptr %i.v, ptr %i.o, align 8, !tbaa !419
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !412
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !147
  store ptr %i.y, ptr %i.p, align 8, !tbaa !420
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, i8 0, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) @cff_builder_funcs, i64 64, i1 false), !tbaa.struct !148
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cff_builder_done(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !414
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !tbaa.struct !101
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
