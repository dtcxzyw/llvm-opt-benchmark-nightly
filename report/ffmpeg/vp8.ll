Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp8?download=true
inline.NumInlined: 61
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 80
loop-unroll.NumUnrolled: 83
begin_hunk_0_@ff_vp8_decode_frame:bb.a
  store i32 -64, ptr %i.gz, align 8, !tbaa !132
  %i.ha = load i16, ptr %i.da, align 2, !tbaa !109
  %i.hb = zext i16 %i.ha to i32
  %i.hc = shl nuw nsw i32 %i.hb, 6
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i32 %i.hc, ptr %i.hd, align 8, !tbaa !133
  %i.he = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 928
  store i32 0, ptr %i.hf, align 4, !tbaa !135
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 932
  store i32 2147483647, ptr %i.hg, align 4, !tbaa !135
  %i.hh = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2576
  store i32 0, ptr %i.hi, align 4, !tbaa !135
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 2580
  store i32 2147483647, ptr %i.hj, align 4, !tbaa !135
  %i.hk = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4224
  store i32 0, ptr %i.hl, align 4, !tbaa !135
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 4228
  store i32 2147483647, ptr %i.hm, align 4, !tbaa !135
  %i.hn = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 5872
  store i32 0, ptr %i.ho, align 4, !tbaa !135
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 5876
  store i32 2147483647, ptr %i.hp, align 4, !tbaa !135
  %i.hq = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 7520
  store i32 0, ptr %i.hr, align 4, !tbaa !135
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 7524
  store i32 2147483647, ptr %i.hs, align 4, !tbaa !135
  %i.ht = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 9168
  store i32 0, ptr %i.hu, align 4, !tbaa !135
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 9172
  store i32 2147483647, ptr %i.hv, align 4, !tbaa !135
  %i.hw = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 10816
  store i32 0, ptr %i.hx, align 4, !tbaa !135
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 10820
  store i32 2147483647, ptr %i.hy, align 4, !tbaa !135
  %i.hz = load ptr, ptr %i.c, align 8, !tbaa !134 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 12464
  store i32 0, ptr %i.ia, align 4, !tbaa !135
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 12468
  store i32 2147483647, ptr %i.ib, align 4, !tbaa !135
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !136
  %i.ie = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.if = call i32 %i.id(ptr noundef nonnull %0, ptr noundef nonnull @vp8_decode_mb_row_sliced, ptr noundef %i.ie, ptr noundef null, i32 noundef %.0188.i) #12, !inline_history !0 ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bc, %bb.bn
  call void @ff_progress_frame_report(ptr noundef nonnull %i.cs, i32 noundef 2147483647) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i64 32, i1 false)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.j
  %.0187.i = phi ptr [ undef, %bb.j ], [ %i.cs, %bb.bo ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 4760
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !137
  %.not237.i = icmp eq i32 %i.ih, 0
  br i1 %.not237.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ii = getelementptr inbounds nuw i8, ptr %i.c, i64 372
  %i.ij = getelementptr inbounds nuw i8, ptr %i.c, i64 2552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2180) %i.ii, ptr noundef nonnull align 8 dereferenceable(2180) %i.ij, i64 2180, i1 false), !tbaa.struct !138
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 4744
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !95
  %.not238.i = icmp eq i32 %i.il, 0
  br i1 %.not238.i, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.im = load ptr, ptr %.0187.i, align 8, !tbaa !103
  %i.in = call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.im) #12 ; 2 uses
  %i.io = icmp slt i32 %i.in, 0
  br i1 %i.io, label %vp78_decode_frame.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i32 1, ptr %2, align 4, !tbaa !117
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.br
  %i.ip = load i32, ptr %i.f, align 8, !tbaa !67
  br label %vp78_decode_frame.exit

vp8_alloc_frame.exit.thread:                      ; preds = %bb.bc, %bb.ba, %bb.bb, %bb.av, %bb.as, %bb.bk, %bb.ar, %bb.e, %bb.a
  %.3.i = phi i32 [ %i.h, %bb.a ], [ -22, %bb.e ], [ %i.gn, %bb.bk ], [ %i.cv, %bb.as ], [ -1094995529, %bb.ar ], [ %.0.i5, %bb.av ], [ %i.et, %bb.bb ], [ %i.en, %bb.ba ], [ %i.ex, %bb.bc ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iq, ptr noundef nonnull align 8 dereferenceable(32) %i.ir, i64 32, i1 false)
  br label %vp78_decode_frame.exit

vp78_decode_frame.exit:                           ; preds = %bb.c, %bb.bs, %bb.bu, %vp8_alloc_frame.exit.thread
  %.0.i = phi i32 [ %.3.i, %vp8_alloc_frame.exit.thread ], [ %i.ip, %bb.bu ], [ -1094995529, %bb.c ], [ %i.in, %bb.bs ]
  ret i32 %.0.i
}

; Function Attrs: cold nounwind optsize uwtable
define noundef i32 @ff_vp8_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 4 uses
  tail call fastcc void @vp78_decode_init(ptr noundef %0) #11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5632
  tail call void @ff_h264_pred_init(ptr noundef nonnull %i.c, i32 noundef 139, i32 noundef 8, i32 noundef 1) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 5072
  tail call void @ff_vp8dsp_init(ptr noundef nonnull %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 6496
  store ptr @vp8_decode_mb_row_no_filter, ptr %i.e, align 8, !tbaa !139
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 6504
  store ptr @vp8_filter_mb_row, ptr %i.f, align 8, !tbaa !140
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @vp78_decode_init(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -1, ptr %i.d, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.e, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 5056
  tail call void @ff_videodsp_init(ptr noundef nonnull %i.f, i32 noundef 8) #12
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 5072
  tail call void @ff_vp78dsp_init(ptr noundef nonnull %i.g) #12
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 16 dereferenceable(16) @ff_zigzag_scan, i64 16, i1 false)
  ret void
}

declare void @ff_h264_pred_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_vp8dsp_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @vp8_decode_mb_row_no_filter(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [40 x i8], align 4                ; 18 uses
  %4 = alloca [4 x %struct.VP8mv], align 16       ; 12 uses
  %i.d = alloca [4 x i8], align 4                 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 105 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.h = sext i32 %3 to i64
  %i.i = getelementptr inbounds [1648 x i8], ptr %i.g, i64 %i.h ; 53 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 928 ; 5 uses
  %i.k = load atomic i32, ptr %i.j seq_cst, align 16 ; 2 uses
  %i.l = ashr i32 %i.k, 16                        ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 8 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !108
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = mul nsw i32 %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 6484
  %i.r = load i32, ptr %i.q, align 4, !tbaa !129  ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !131  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !130  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 4768
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 4764
  %i.y = load i32, ptr %i.x, align 4, !tbaa !127
  %i.z = add nsw i32 %i.y, -1
  %i.aa = and i32 %i.z, %i.l
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [32 x i8], ptr %i.w, i64 %i.ab ; 50 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !103 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !141
  %i.af = shl nsw i32 %i.l, 4                     ; 12 uses
  %i.ag = sext i32 %i.af to i64                   ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 50 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.aj = mul nsw i64 %i.ai, %i.ag
  %i.ak = getelementptr inbounds i8, ptr %i.ae, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !141 ; 2 uses
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = shl nsw i32 %i.l, 3                     ; 9 uses
  %i.ap = sext i32 %i.ao to i64                   ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 32 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !119
  %i.as = mul nsw i64 %i.ar, %i.ap                ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.am, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !141 ; 2 uses
  %i.aw = ptrtoaddr ptr %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 312 ; 94 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 328 ; 57 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !142
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 112 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !143
  %.not.i300.i = icmp ugt ptr %i.ba, %i.bc
  br i1 %.not.i300.i, label %vpx_rac_is_end.exit301.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 316
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !144
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %bb.c, label %vpx_rac_is_end.exit301.i

bb.c:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 340 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !145
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !145
  br label %vpx_rac_is_end.exit301.i

vpx_rac_is_end.exit301.i:                         ; preds = %bb.c, %bb.b, %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 340 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !145
  %i.bl = icmp slt i32 %i.bk, 11
  br i1 %i.bl, label %bb.d, label %decode_mb_row_no_filter.exit

bb.d:                                             ; preds = %vpx_rac_is_end.exit301.i
  %i.bm = icmp eq i32 %i.l, 0                     ; 10 uses
  br i1 %i.bm, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.bo = add i32 %i.r, -1
  %i.bp = add i32 %i.bo, %2
  %i.bq = srem i32 %i.bp, %i.r
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [1648 x i8], ptr %i.bn, i64 %i.br
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0251.i = phi ptr [ %i.bs, %bb.e ], [ %i.i, %bb.d ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 106 ; 3 uses
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !109
  %i.bv = zext i16 %i.bu to i32                   ; 4 uses
  %i.bw = add nsw i32 %i.bv, -1
  %i.bx = icmp eq i32 %i.l, %i.bw
  br i1 %i.bx, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.bz = add nsw i32 %2, 1
  %i.ca = srem i32 %i.bz, %i.r
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [1648 x i8], ptr %i.by, i64 %i.cb
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0252.i = phi ptr [ %i.cc, %bb.g ], [ %i.i, %bb.f ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 6488 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !121
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 4736
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !146
  %i.ci = add nuw nsw i32 %i.o, 1
  %i.cj = add nsw i32 %i.l, 1
  %i.ck = mul nsw i32 %i.ci, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr [96 x i8], ptr %i.ch, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 96
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %.not264.i = icmp eq ptr %i.t, null
  br i1 %.not264.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 164
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !124
  %.not265.i = icmp eq i8 %i.cp, 0
  br i1 %.not265.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 166
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !125
  %.not266.i = icmp eq i8 %i.cr, 0
  br i1 %.not266.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @ff_progress_frame_await(ptr noundef nonnull %i.t, i32 noundef %i.l) #12
  %.pre = load i16, ptr %i.bt, align 2, !tbaa !109
  %.pre700 = zext i16 %.pre to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.pre-phi701 = phi i32 [ %.pre700, %bb.m ], [ %i.bv, %bb.l ], [ %i.bv, %bb.k ], [ %i.bv, %bb.j ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !122
  %i.cu = xor i32 %i.l, -1
  %i.cv = add nsw i32 %.pre-phi701, %i.cu
  %i.cw = shl nsw i32 %i.cv, 1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [96 x i8], ptr %i.ct, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.cz, i8 0, i64 96, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  store i32 33686018, ptr %i.da, align 8, !tbaa !135
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.0255.i = phi ptr [ %i.cn, %bb.i ], [ %i.cy, %bb.n ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 824 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.db, i8 0, i64 9, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 1624 ; 6 uses
  store i32 -64, ptr %i.dc, align 8, !tbaa !149
  %i.dd = load i16, ptr %i.m, align 8, !tbaa !108 ; 2 uses
  %i.de = zext i16 %i.dd to i32                   ; 2 uses
  %i.df = shl nuw nsw i32 %i.de, 6
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 1632 ; 6 uses
  store i32 %i.df, ptr %i.dg, align 16, !tbaa !150
  %.not557 = icmp eq i16 %i.dd, 0
  br i1 %.not557, label %decode_mb_row_no_filter.exit, label %.lr.ph552

.lr.ph552:                                        ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 316 ; 68 uses
  %.not268.i = icmp eq ptr %.0251.i, %i.i         ; 5 uses
  %.not269.i = icmp eq i32 %3, 0
  %i.di = and i32 %i.k, -65536                    ; 4 uses
  %invariant.op = add i32 %i.di, -65535
  %i.dj = getelementptr inbounds nuw i8, ptr %.0251.i, i64 928 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0251.i, i64 840 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 932 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0251.i, i64 880 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 5064 ; 8 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.not275.i = icmp eq ptr %i.t, null
  %i.dp = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 166
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 372 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 336 ; 78 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 164 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 130
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 375
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 200 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 377
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 378
  %i.ec = getelementptr i8, ptr %i.f, i64 148     ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 1628
  %i.ek = getelementptr inbounds nuw i8, ptr %i.i, i64 1636
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 2498 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.f, i64 2510
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 2500 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.f, i64 2499
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 2517 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 2529
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 2519 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.f, i64 2518
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 379
  %i.ev = getelementptr inbounds nuw i8, ptr %i.f, i64 383
  %i.ew = getelementptr i8, ptr %i.f, i64 152
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 9 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 18 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 19 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ac, i64 28 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 304 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 832 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 768 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.f, i64 914 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 27 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 5080
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 5072
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 386
  %i.fk = getelementptr inbounds nuw i8, ptr %i.f, i64 204
  %i.fl = getelementptr inbounds nuw i8, ptr %i.i, i64 800 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 1442 ; 8 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 6176 ; 24 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 5056 ; 30 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.i, i64 944 ; 50 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.f, i64 131 ; 10 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.f, i64 6248 ; 30 uses
  %i.ft = or disjoint i32 %i.af, 8                ; 4 uses
  %i.fu = add nsw i32 %i.af, 16
  %i.fv = ashr exact i32 %i.fu, 4                 ; 6 uses
  %i.fw = sext i32 %i.ft to i64                   ; 3 uses
  %i.fx = or disjoint i32 %i.ao, 4                ; 4 uses
  %i.fy = add nsw i32 %i.ao, 8
  %i.fz = ashr exact i32 %i.fy, 3                 ; 6 uses
  %i.ga = sext i32 %i.fx to i64                   ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.f, i64 6104 ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.f, i64 129 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.i, i64 836 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.f, i64 296 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.f, i64 176 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 8 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 11 ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 19 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.c, i64 27 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 35 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.f, i64 5632 ; 8 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 5096 ; 16 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.f, i64 5088 ; 16 uses
  %i.gt = select i1 %i.bm, i64 1, i64 3           ; 2 uses
  %i.gu = select i1 %i.bm, i64 8, i64 2           ; 2 uses
  %i.gv = select i1 %i.bm, i64 7, i64 2           ; 2 uses
  %i.gw = select i1 %i.bm, i64 4, i64 0           ; 2 uses
  %i.gx = select i1 %i.bm, i64 6, i64 5           ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.f, i64 5936
  %i.gz = getelementptr inbounds nuw i8, ptr %i.f, i64 5848
  %i.ha = getelementptr i8, ptr %i.f, i64 156
  %i.hb = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 5104 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.f, i64 5112 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.i, i64 1616
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 172
  %i.hg = getelementptr inbounds nuw i8, ptr %i.f, i64 165
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 177 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.f, i64 276
  %i.hj = getelementptr inbounds nuw i8, ptr %i.f, i64 286
  %i.hk = getelementptr inbounds nuw i8, ptr %i.f, i64 278
  %i.hl = getelementptr inbounds nuw i8, ptr %i.f, i64 178
  %i.hm = icmp ne i32 %i.r, 1
  %i.hn = add nsw i32 %i.r, -1
  %i.ho = icmp eq i32 %3, %i.hn
  %or.cond293.i = select i1 %i.hm, i1 %i.ho, i1 false
  %i.hp = getelementptr i8, ptr %i.f, i64 160
  %i.hq = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.hs = icmp sgt i32 %i.r, 1                    ; 2 uses
  %.not284.i = icmp eq ptr %.0252.i, null
  %.not285.i = icmp eq ptr %.0251.i, null
  %spec.select295.i = select i1 %.not284.i, i1 true, i1 %.not285.i ; 2 uses
  %.not286.i = icmp eq ptr %.0252.i, %i.i         ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.0252.i, i64 932 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.0251.i, i64 932 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.i, i64 840 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.i, i64 880 ; 2 uses
  %i.hx = sext i32 %i.l to i64
  %i.hy = sub i64 %i.aw, %i.an
  %i.hz = sext i32 %invariant.op to i64
  %i.ia = sext i32 %i.di to i64
  %i.ib = sext i32 %i.p to i64
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ic = getelementptr inbounds nuw i8, ptr %i.f, i64 2507
  %i.id = getelementptr inbounds nuw i8, ptr %i.f, i64 2508
  %i.ie = getelementptr inbounds nuw i8, ptr %i.f, i64 2509
  %i.if = getelementptr inbounds nuw i8, ptr %i.f, i64 2516
  %i.ig = getelementptr inbounds nuw i8, ptr %i.f, i64 2515
  %i.ih = getelementptr inbounds nuw i8, ptr %i.f, i64 2514
  %i.ii = getelementptr inbounds nuw i8, ptr %i.f, i64 2513
  %i.ij = getelementptr inbounds nuw i8, ptr %i.f, i64 2512
  %i.ik = getelementptr inbounds nuw i8, ptr %i.f, i64 2511
  %i.il = getelementptr inbounds nuw i8, ptr %i.f, i64 2526
  %i.im = getelementptr inbounds nuw i8, ptr %i.f, i64 2527
  %i.in = getelementptr inbounds nuw i8, ptr %i.f, i64 2528
  %i.io = getelementptr inbounds nuw i8, ptr %i.f, i64 2535
  %i.ip = getelementptr inbounds nuw i8, ptr %i.f, i64 2534
  %i.iq = getelementptr inbounds nuw i8, ptr %i.f, i64 2533
  %i.ir = getelementptr inbounds nuw i8, ptr %i.f, i64 2532
  %i.is = getelementptr inbounds nuw i8, ptr %i.f, i64 2531
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 2530
  %i.iu = getelementptr inbounds nuw i8, ptr %i.i, i64 804
  %i.iv = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.iw = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.ix = getelementptr inbounds nuw i8, ptr %i.i, i64 808
  %i.iy = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %i.iz = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %i.ja = getelementptr inbounds nuw i8, ptr %i.i, i64 812
  %i.jb = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  %i.jc = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  %i.jd = getelementptr inbounds nuw i8, ptr %i.i, i64 816
  %i.je = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  %i.jf = getelementptr inbounds nuw i8, ptr %i.i, i64 544
  %i.jg = getelementptr inbounds nuw i8, ptr %i.i, i64 544
  %i.jh = getelementptr inbounds nuw i8, ptr %i.i, i64 576
  %i.ji = getelementptr inbounds nuw i8, ptr %i.i, i64 576
  %i.jj = getelementptr inbounds nuw i8, ptr %i.i, i64 608
  %i.jk = getelementptr inbounds nuw i8, ptr %i.i, i64 608
  %i.jl = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  %i.jm = getelementptr inbounds nuw i8, ptr %i.i, i64 820
  %i.jn = getelementptr inbounds nuw i8, ptr %i.i, i64 640
  %i.jo = getelementptr inbounds nuw i8, ptr %i.i, i64 672
  %i.jp = getelementptr inbounds nuw i8, ptr %i.i, i64 672
  %i.jq = getelementptr inbounds nuw i8, ptr %i.i, i64 704
  %i.jr = getelementptr inbounds nuw i8, ptr %i.i, i64 704
  %i.js = getelementptr inbounds nuw i8, ptr %i.i, i64 736
  %i.jt = getelementptr inbounds nuw i8, ptr %i.i, i64 736
  %i.ju = getelementptr inbounds nuw i8, ptr %i.i, i64 640
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph552, %bb.tg
  %.sroa.7.0683 = phi ptr [ %i.ax, %.lr.ph552 ], [ %i.gmu, %bb.tg ] ; 28 uses
  %.sroa.4.0 = phi ptr [ %i.at, %.lr.ph552 ], [ %i.gmt, %bb.tg ] ; 29 uses
  %indvars.iv674 = phi i64 [ %i.ib, %.lr.ph552 ], [ %indvars.iv.next675, %bb.tg ] ; 4 uses
  %indvars.iv671 = phi i64 [ 0, %.lr.ph552 ], [ %indvars.iv.next672, %bb.tg ] ; 39 uses
  %i.jv = phi i32 [ %i.de, %.lr.ph552 ], [ %i.goi, %bb.tg ]
  %.1.i547 = phi ptr [ %.0255.i, %.lr.ph552 ], [ %i.gog, %bb.tg ] ; 70 uses
  %i.jw = phi ptr [ %i.ak, %.lr.ph552 ], [ %i.gms, %bb.tg ] ; 26 uses
  %i.jx = load ptr, ptr %i.az, align 8, !tbaa !142
  %i.jy = load ptr, ptr %i.bb, align 8, !tbaa !143
  %.not.i298.i = icmp ugt ptr %i.jx, %i.jy
  br i1 %.not.i298.i, label %.vpx_rac_is_end.exit299.i_crit_edge, label %bb.q

.vpx_rac_is_end.exit299.i_crit_edge:              ; preds = %bb.p
  %.pre684.a = load i32, ptr %i.bj, align 4, !tbaa !145
  br label %vpx_rac_is_end.exit299.i

bb.q:                                             ; preds = %bb.p
  %i.jz = load i32, ptr %i.dh, align 4, !tbaa !144
  %i.ka = icmp sgt i32 %i.jz, -1
  %.pre685 = load i32, ptr %i.bj, align 4, !tbaa !145 ; 2 uses
  br i1 %i.ka, label %bb.r, label %vpx_rac_is_end.exit299.i

bb.r:                                             ; preds = %bb.q
  %i.kb = add nsw i32 %.pre685, 1                 ; 2 uses
  store i32 %i.kb, ptr %i.bj, align 4, !tbaa !145
  br label %vpx_rac_is_end.exit299.i

vpx_rac_is_end.exit299.i:                         ; preds = %.vpx_rac_is_end.exit299.i_crit_edge, %bb.r, %bb.q
  %i.kc = phi i32 [ %.pre684.a, %.vpx_rac_is_end.exit299.i_crit_edge ], [ %i.kb, %bb.r ], [ %.pre685, %bb.q ]
  %i.kd = icmp slt i32 %i.kc, 11
  br i1 %i.kd, label %bb.s, label %decode_mb_row_no_filter.exit

bb.s:                                             ; preds = %vpx_rac_is_end.exit299.i
end_hunk_0
begin_hunk_1_@vp8_decode_mb_row_no_filter:bb.a
  %i.zc = sub i32 %.0.i.i41.i.i.3, %i.za          ; 2 uses
  store i32 %i.zc, ptr %i.ds, align 8, !tbaa !153
  %i.zd = zext i1 %i.yy to i64
  %i.ze = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.zd
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !135 ; 3 uses
  %i.zg = zext nneg i8 %i.zf to i64
  %i.zh = icmp sgt i8 %i.zf, 0
  br i1 %i.zh, label %bb.bb, label %vp89_rac_get_tree.exit42.i.i.3, !llvm.loop !2

vp89_rac_get_tree.exit42.i.i.3:                   ; preds = %vpx_rac_renorm.exit.i39.i.i.3
  %i.zi = getelementptr inbounds nuw i8, ptr %.033.i.i469, i64 3
  %i.zj = sub i8 0, %i.zf                         ; 3 uses
  store i8 %i.zj, ptr %i.zi, align 1, !tbaa !135
  store i8 %i.zj, ptr %i.sc, align 1, !tbaa !135
  store i8 %i.zj, ptr %i.sd, align 1, !tbaa !135
  %i.zk = getelementptr inbounds nuw i8, ptr %.033.i.i469, i64 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %decode_intra4x4_modes.exit332.i, label %.preheader443, !llvm.loop !3

bb.be:                                            ; preds = %vp89_rac_get_tree.exit326.i
  %i.zl = zext nneg i32 %i.rt to i64
  %i.zm = getelementptr inbounds nuw i8, ptr @vp8_pred4x4_mode, i64 %i.zl
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !135
  %i.zo = zext i8 %i.zn to i32
  %i.zp = mul nuw i32 %i.zo, 16843009             ; 3 uses
  %i.zq = load i32, ptr %i.cd, align 8, !tbaa !121
  %.not105.i.i = icmp eq i32 %i.zq, 0
  br i1 %.not105.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.zr = getelementptr inbounds nuw i8, ptr %.1.i547, i64 24
  store i32 %i.zp, ptr %i.zr, align 4, !tbaa !135
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.zs = load ptr, ptr %i.dx, align 8, !tbaa !123
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.lc
  store i32 %i.zp, ptr %i.zt, align 4, !tbaa !135
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  store i32 %i.zp, ptr %i.dy, align 8, !tbaa !135
  br label %decode_intra4x4_modes.exit332.i

decode_intra4x4_modes.exit332.i:                  ; preds = %vp89_rac_get_tree.exit42.i.i.3, %bb.bh
  %.promoted470 = load i32, ptr %i.ay, align 8, !tbaa !152
  %.lcssa449.promoted471 = load i32, ptr %i.dh, align 4, !tbaa !144
  %.lcssa.promoted472 = load i32, ptr %i.ds, align 8, !tbaa !153
  br label %bb.bi

bb.bi:                                            ; preds = %vpx_rac_renorm.exit.i318.i, %decode_intra4x4_modes.exit332.i
  %i.zu = phi i32 [ %.lcssa.promoted472, %decode_intra4x4_modes.exit332.i ], [ %i.abc, %vpx_rac_renorm.exit.i318.i ]
  %i.zv = phi i32 [ %.lcssa449.promoted471, %decode_intra4x4_modes.exit332.i ], [ %.018.i.i319.i, %vpx_rac_renorm.exit.i318.i ]
  %i.zw = phi i32 [ %.promoted470, %decode_intra4x4_modes.exit332.i ], [ %i.abb, %vpx_rac_renorm.exit.i318.i ] ; 2 uses
  %.0.i317.i = phi i64 [ 0, %decode_intra4x4_modes.exit332.i ], [ %i.abg, %vpx_rac_renorm.exit.i318.i ] ; 2 uses
  %i.zx = getelementptr inbounds nuw [2 x i8], ptr @vp8_pred8x8c_tree, i64 %.0.i317.i
  %i.zy = getelementptr inbounds nuw i8, ptr @vp8_pred8x8c_prob_intra, i64 %.0.i317.i
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !135
  %i.aaa = sext i32 %i.zw to i64
  %i.aab = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.aaa
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !135
  %i.aad = zext i8 %i.aac to i32                  ; 3 uses
  %i.aae = shl i32 %i.zw, %i.aad                  ; 3 uses
  store i32 %i.aae, ptr %i.ay, align 8, !tbaa !152
  %i.aaf = shl i32 %i.zu, %i.aad                  ; 3 uses
  %i.aag = add nsw i32 %i.zv, %i.aad              ; 5 uses
  %i.aah = icmp sgt i32 %i.aag, -1
  br i1 %i.aah, label %bb.bj, label %vpx_rac_renorm.exit.i318.i

bb.bj:                                            ; preds = %bb.bi
  %i.aai = load ptr, ptr %i.bb, align 8, !tbaa !143 ; 3 uses
  %i.aaj = load ptr, ptr %i.az, align 8, !tbaa !142
  %i.aak = icmp ult ptr %i.aai, %i.aaj
  br i1 %i.aak, label %bb.bk, label %vpx_rac_renorm.exit.i318.i

bb.bk:                                            ; preds = %bb.bj
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aai, i64 2
  store ptr %i.aal, ptr %i.bb, align 8, !tbaa !141
  %i.aam = load i16, ptr %i.aai, align 1, !tbaa !135
  %i.aan = call i16 @llvm.bswap.i16(i16 %i.aam)
  %i.aao = zext i16 %i.aan to i32
  %i.aap = shl i32 %i.aao, %i.aag
  %i.aaq = or i32 %i.aap, %i.aaf
  %i.aar = add nsw i32 %i.aag, -16
  br label %vpx_rac_renorm.exit.i318.i

vpx_rac_renorm.exit.i318.i:                       ; preds = %bb.bk, %bb.bj, %bb.bi
  %.018.i.i319.i = phi i32 [ %i.aar, %bb.bk ], [ %i.aag, %bb.bj ], [ %i.aag, %bb.bi ] ; 2 uses
  %.0.i.i320.i = phi i32 [ %i.aaq, %bb.bk ], [ %i.aaf, %bb.bj ], [ %i.aaf, %bb.bi ] ; 2 uses
  store i32 %.018.i.i319.i, ptr %i.dh, align 4, !tbaa !144
  %i.aas = add nsw i32 %i.aae, -1
  %i.aat = zext i8 %i.zz to i32
  %i.aau = mul nsw i32 %i.aas, %i.aat
  %i.aav = ashr i32 %i.aau, 8
  %i.aaw = add nsw i32 %i.aav, 1                  ; 3 uses
  %i.aax = shl i32 %i.aaw, 16                     ; 2 uses
  %i.aay = icmp uge i32 %.0.i.i320.i, %i.aax      ; 3 uses
  %i.aaz = sub i32 %i.aae, %i.aaw
  %i.aba = select i1 %i.aay, i32 %i.aax, i32 0
  %i.abb = select i1 %i.aay, i32 %i.aaz, i32 %i.aaw ; 2 uses
  store i32 %i.abb, ptr %i.ay, align 8, !tbaa !152
  %i.abc = sub i32 %.0.i.i320.i, %i.aba           ; 2 uses
  store i32 %i.abc, ptr %i.ds, align 8, !tbaa !153
  %i.abd = zext i1 %i.aay to i64
  %i.abe = getelementptr inbounds nuw i8, ptr %i.zx, i64 %i.abd
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !135 ; 3 uses
  %i.abg = zext nneg i8 %i.abf to i64
  %i.abh = icmp sgt i8 %i.abf, 0
  br i1 %i.abh, label %bb.bi, label %vp89_rac_get_tree.exit321.i, !llvm.loop !2

vp89_rac_get_tree.exit321.i:                      ; preds = %vpx_rac_renorm.exit.i318.i
  %i.abi = sub i8 0, %i.abf
  %i.abj = getelementptr inbounds nuw i8, ptr %.1.i547, i64 4
  store i8 %i.abi, ptr %i.abj, align 4, !tbaa !162
  %i.abk = getelementptr inbounds nuw i8, ptr %.1.i547, i64 2
  store i8 0, ptr %i.abk, align 2, !tbaa !163
  br label %decode_mb_mode.exit.i

bb.bl:                                            ; preds = %bb.an
  %i.abl = load i8, ptr %i.dz, align 8, !tbaa !164
  %i.abm = zext i8 %i.abl to i32
  %i.abn = load i32, ptr %i.ay, align 8, !tbaa !152 ; 2 uses
  %i.abo = sext i32 %i.abn to i64
  %i.abp = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.abo
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !135
  %i.abr = zext i8 %i.abq to i32                  ; 3 uses
  %i.abs = load i32, ptr %i.dh, align 4, !tbaa !144
  %i.abt = load i32, ptr %i.ds, align 8, !tbaa !153
  %i.abu = shl i32 %i.abn, %i.abr                 ; 3 uses
  store i32 %i.abu, ptr %i.ay, align 8, !tbaa !152
  %i.abv = shl i32 %i.abt, %i.abr                 ; 3 uses
  %i.abw = add nsw i32 %i.abs, %i.abr             ; 5 uses
  %i.abx = icmp sgt i32 %i.abw, -1
  br i1 %i.abx, label %bb.bm, label %vpx_rac_renorm.exit.i118.i.i.a

bb.bm:                                            ; preds = %bb.bl
  %i.aby = load ptr, ptr %i.bb, align 8, !tbaa !143 ; 3 uses
  %i.abz = load ptr, ptr %i.az, align 8, !tbaa !142
  %i.aca = icmp ult ptr %i.aby, %i.abz
  br i1 %i.aca, label %bb.bn, label %vpx_rac_renorm.exit.i118.i.i.a

bb.bn:                                            ; preds = %bb.bm
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aby, i64 2
  store ptr %i.acb, ptr %i.bb, align 8, !tbaa !141
  %i.acc = load i16, ptr %i.aby, align 1, !tbaa !135
  %i.acd = call i16 @llvm.bswap.i16(i16 %i.acc)
  %i.ace = zext i16 %i.acd to i32
  %i.acf = shl i32 %i.ace, %i.abw
  %i.acg = or i32 %i.acf, %i.abv
  %i.ach = add nsw i32 %i.abw, -16
  br label %vpx_rac_renorm.exit.i118.i.i.a

vpx_rac_renorm.exit.i118.i.i.a:                   ; preds = %bb.bn, %bb.bm, %bb.bl
  %.promoted505 = phi i32 [ %i.ach, %bb.bn ], [ %i.abw, %bb.bm ], [ %i.abw, %bb.bl ] ; 3 uses
  %.0.i.i120.i.i.a = phi i32 [ %i.acg, %bb.bn ], [ %i.abv, %bb.bm ], [ %i.abv, %bb.bl ] ; 4 uses
  store i32 %.promoted505, ptr %i.dh, align 4, !tbaa !144
  %i.aci = add nsw i32 %i.abu, -1
  %i.acj = mul nsw i32 %i.aci, %i.abm
  %i.ack = ashr i32 %i.acj, 8
  %i.acl = add nsw i32 %i.ack, 1                  ; 3 uses
  %i.acm = shl i32 %i.acl, 16                     ; 2 uses
  %.not.i121.i.i.a = icmp ult i32 %.0.i.i120.i.i.a, %i.acm
  br i1 %.not.i121.i.i.a, label %bb.ha, label %bb.bo

bb.bo:                                            ; preds = %vpx_rac_renorm.exit.i118.i.i.a
  %i.acn = sub i32 %i.abu, %i.acl                 ; 2 uses
  %narrow.i122.i.i.a = sub nuw i32 %.0.i.i120.i.i.a, %i.acm ; 2 uses
  store i32 %narrow.i122.i.i.a, ptr %i.ds, align 8, !tbaa !153
  %i.aco = load i8, ptr %i.ea, align 1, !tbaa !165
  %i.acp = zext i8 %i.aco to i32
  %i.acq = sext i32 %i.acn to i64
  %i.acr = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.acq
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !135
  %i.act = zext i8 %i.acs to i32                  ; 3 uses
  %i.acu = shl i32 %i.acn, %i.act                 ; 3 uses
  store i32 %i.acu, ptr %i.ay, align 8, !tbaa !152
  %i.acv = shl i32 %narrow.i122.i.i.a, %i.act     ; 3 uses
  %i.acw = add nsw i32 %.promoted505, %i.act      ; 5 uses
  %i.acx = icmp sgt i32 %i.acw, -1
  br i1 %i.acx, label %bb.bp, label %vpx_rac_renorm.exit.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.acy = load ptr, ptr %i.bb, align 8, !tbaa !143 ; 3 uses
  %i.acz = load ptr, ptr %i.az, align 8, !tbaa !142
  %i.ada = icmp ult ptr %i.acy, %i.acz
  br i1 %i.ada, label %bb.bq, label %vpx_rac_renorm.exit.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acy, i64 2
  store ptr %i.adb, ptr %i.bb, align 8, !tbaa !141
  %i.adc = load i16, ptr %i.acy, align 1, !tbaa !135
  %i.add = call i16 @llvm.bswap.i16(i16 %i.adc)
  %i.ade = zext i16 %i.add to i32
  %i.adf = shl i32 %i.ade, %i.acw
  %i.adg = or i32 %i.adf, %i.acv
  %i.adh = add nsw i32 %i.acw, -16
  br label %vpx_rac_renorm.exit.i.i.i

vpx_rac_renorm.exit.i.i.i:                        ; preds = %bb.bq, %bb.bp, %bb.bo
  %.018.i.i.i.i = phi i32 [ %i.adh, %bb.bq ], [ %i.acw, %bb.bp ], [ %i.acw, %bb.bo ] ; 3 uses
  %.0.i.i.i.i = phi i32 [ %i.adg, %bb.bq ], [ %i.acv, %bb.bp ], [ %i.acv, %bb.bo ] ; 4 uses
  store i32 %.018.i.i.i.i, ptr %i.dh, align 4, !tbaa !144
  %i.adi = add nsw i32 %i.acu, -1
  %i.adj = mul nsw i32 %i.adi, %i.acp
  %i.adk = ashr i32 %i.adj, 8
  %i.adl = add nsw i32 %i.adk, 1                  ; 4 uses
  %i.adm = shl i32 %i.adl, 16                     ; 2 uses
  %.not.i.i.i = icmp ult i32 %.0.i.i.i.i, %i.adm
  br i1 %.not.i.i.i, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %vpx_rac_renorm.exit.i.i.i
  %i.adn = sub i32 %i.acu, %i.adl                 ; 2 uses
  %narrow.i.i.i = sub nuw i32 %.0.i.i.i.i, %i.adm ; 2 uses
  store i32 %narrow.i.i.i, ptr %i.ds, align 8, !tbaa !153
  %i.ado = load i8, ptr %i.eb, align 2, !tbaa !166
  %i.adp = sext i32 %i.adn to i64
  %i.adq = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.adp
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !135
  %i.ads = zext i8 %i.adr to i32                  ; 3 uses
  %i.adt = shl i32 %i.adn, %i.ads                 ; 3 uses
  store i32 %i.adt, ptr %i.ay, align 8, !tbaa !152
  %i.adu = shl i32 %narrow.i.i.i, %i.ads          ; 3 uses
  %i.adv = add nsw i32 %.018.i.i.i.i, %i.ads      ; 5 uses
  %i.adw = icmp sgt i32 %i.adv, -1
  br i1 %i.adw, label %bb.bs, label %vpx_rac_renorm.exit116.i.i

bb.bs:                                            ; preds = %bb.br
  %i.adx = load ptr, ptr %i.bb, align 8, !tbaa !143 ; 3 uses
  %i.ady = load ptr, ptr %i.az, align 8, !tbaa !142
  %i.adz = icmp ult ptr %i.adx, %i.ady
  br i1 %i.adz, label %bb.bt, label %vpx_rac_renorm.exit116.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adx, i64 2
  store ptr %i.aea, ptr %i.bb, align 8, !tbaa !141
  %i.aeb = load i16, ptr %i.adx, align 1, !tbaa !135
  %i.aec = call i16 @llvm.bswap.i16(i16 %i.aeb)
  %i.aed = zext i16 %i.aec to i32
  %i.aee = shl i32 %i.aed, %i.adv
  %i.aef = or i32 %i.aee, %i.adu
  %i.aeg = add nsw i32 %i.adv, -16
  br label %vpx_rac_renorm.exit116.i.i

vpx_rac_renorm.exit116.i.i:                       ; preds = %bb.bt, %bb.bs, %bb.br
  %.018.i114.i.i = phi i32 [ %i.aeg, %bb.bt ], [ %i.adv, %bb.bs ], [ %i.adv, %bb.br ] ; 2 uses
  %.0.i115.i.i = phi i32 [ %i.aef, %bb.bt ], [ %i.adu, %bb.bs ], [ %i.adu, %bb.br ] ; 2 uses
  store i32 %.018.i114.i.i, ptr %i.dh, align 4, !tbaa !144
  %i.aeh = add nsw i32 %i.adt, -1
  %i.aei = zext i8 %i.ado to i32
  %i.aej = mul nsw i32 %i.aeh, %i.aei
  %i.aek = ashr i32 %i.aej, 8
  %i.ael = add nsw i32 %i.aek, 1                  ; 3 uses
  %i.aem = shl i32 %i.ael, 16                     ; 2 uses
  %.not336 = icmp ult i32 %.0.i115.i.i, %i.aem    ; 3 uses
  %i.aen = sub i32 %i.adt, %i.ael
  %i.aeo = select i1 %.not336, i32 0, i32 %i.aem
  %i.aep = select i1 %.not336, i32 %i.ael, i32 %i.aen ; 2 uses
  store i32 %i.aep, ptr %i.ay, align 8, !tbaa !152
  %i.aeq = sub i32 %.0.i115.i.i, %i.aeo           ; 2 uses
  store i32 %i.aeq, ptr %i.ds, align 8, !tbaa !153
  %5 = select i1 %.not336, i8 2, i8 3             ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %.1.i547, i64 2
  store i8 %5, ptr %i.aer, align 2, !tbaa !163
  %i.aes = zext nneg i8 %5 to i64
  br label %bb.bv

bb.bu:                                            ; preds = %vpx_rac_renorm.exit.i.i.i
  store i32 %i.adl, ptr %i.ay, align 8, !tbaa !152
  store i32 %.0.i.i.i.i, ptr %i.ds, align 8, !tbaa !153
  %i.aet = getelementptr inbounds nuw i8, ptr %.1.i547, i64 2
  store i8 1, ptr %i.aet, align 2, !tbaa !163
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %vpx_rac_renorm.exit116.i.i
  %6 = phi i32 [ %.0.i.i.i.i, %bb.bu ], [ %i.aeq, %vpx_rac_renorm.exit116.i.i ]
  %7 = phi i32 [ %.018.i.i.i.i, %bb.bu ], [ %.018.i114.i.i, %vpx_rac_renorm.exit116.i.i ]
  %8 = phi i32 [ %i.adl, %bb.bu ], [ %i.aep, %vpx_rac_renorm.exit116.i.i ] ; 2 uses
  %i.aeu = phi i64 [ 1, %bb.bu ], [ %i.aes, %vpx_rac_renorm.exit116.i.i ] ; 2 uses
  %i.aev = getelementptr [4 x i8], ptr %i.ec, i64 %i.aeu ; 2 uses
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !117
  %i.aex = add nsw i32 %i.aew, 1
  store i32 %i.aex, ptr %i.aev, align 4, !tbaa !117
  %i.aey = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.aeu
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !135 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4
  store i32 0, ptr %4, align 16, !tbaa !135
  store i32 0, ptr %i.ed, align 4, !tbaa !135
  store i32 0, ptr %i.ee, align 8, !tbaa !135
  %i.afa = getelementptr inbounds nuw i8, ptr %.1.i547, i64 194
  %i.afb = load i8, ptr %i.afa, align 2, !tbaa !163 ; 2 uses
  %.not102.i341.i = icmp eq i8 %i.afb, 0
  br i1 %.not102.i341.i, label %bb.cb, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.afc = getelementptr inbounds nuw i8, ptr %.1.i547, i64 220
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !135 ; 3 uses
  %.not103.i342.i = icmp eq i32 %i.afd, 0
  br i1 %.not103.i342.i, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.afe = zext i8 %i.afb to i64
  %i.aff = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.afe
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !135
  %.not104.i343.i = icmp eq i8 %i.aez, %i.afg
  br i1 %.not104.i343.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.afh = xor i32 %i.afd, -1                     ; 2 uses
  %i.afi = and i32 %i.afh, 2147450879
  %i.afj = add nuw i32 %i.afi, 65537
  %i.afk = and i32 %i.afh, -2147450880
  %i.afl = xor i32 %i.afj, %i.afk
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.094.i.i = phi i32 [ %i.afl, %bb.by ], [ %i.afd, %bb.bx ]
  store i32 %.094.i.i, ptr %i.ed, align 4, !tbaa !135
  store i8 2, ptr %i.ef, align 1, !tbaa !135
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bw
  store i8 2, ptr %i.d, align 4, !tbaa !135
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.bv
  %i.afm = phi i8 [ 2, %bb.bv ], [ 2, %bb.bz ], [ 4, %bb.ca ]
  %.1.i344.i = phi i32 [ 0, %bb.bv ], [ 1, %bb.bz ], [ 0, %bb.ca ] ; 5 uses
  %i.afn = getelementptr inbounds i8, ptr %.1.i547, i64 -94
  %i.afo = load i8, ptr %i.afn, align 2, !tbaa !163 ; 2 uses
  %.not105.i345.i = icmp eq i8 %i.afo, 0
  br i1 %.not105.i345.i, label %bb.cj, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.afp = getelementptr inbounds i8, ptr %.1.i547, i64 -68
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !135 ; 3 uses
  %.not106.i346.i = icmp eq i32 %i.afq, 0
  br i1 %.not106.i346.i, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.afr = zext i8 %i.afo to i64
  %i.afs = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.afr
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !135
  %.not107.i347.i = icmp eq i8 %i.aez, %i.aft
  br i1 %.not107.i347.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.afu = xor i32 %i.afq, -1                     ; 2 uses
  %i.afv = and i32 %i.afu, 2147450879
  %i.afw = add nuw i32 %i.afv, 65537
  %i.afx = and i32 %i.afu, -2147450880
  %i.afy = xor i32 %i.afw, %i.afx
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.093.i.i = phi i32 [ %i.afy, %bb.ce ], [ %i.afq, %bb.cd ] ; 2 uses
  %i.afz = zext nneg i32 %.1.i344.i to i64        ; 2 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.afz
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !135
  %.not108.i.i = icmp eq i32 %.093.i.i, %i.agb
  br i1 %.not108.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.agc = add nuw nsw i32 %.1.i344.i, 1          ; 2 uses
  %i.agd = zext nneg i32 %i.agc to i64            ; 2 uses
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agd
  store i32 %.093.i.i, ptr %i.age, align 4, !tbaa !135
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pre-phi = phi i64 [ %i.agd, %bb.cg ], [ %i.afz, %bb.cf ]
  %.2.i348.i = phi i32 [ %i.agc, %bb.cg ], [ %.1.i344.i, %bb.cf ]
  %i.agf = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre-phi ; 2 uses
  %i.agg = load i8, ptr %i.agf, align 1, !tbaa !135
  %i.agh = add i8 %i.agg, 2
  store i8 %i.agh, ptr %i.agf, align 1, !tbaa !135
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cc
  store i8 %i.afm, ptr %i.d, align 4, !tbaa !135
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cb
  %.4.i349.i = phi i32 [ %.1.i344.i, %bb.cb ], [ %.2.i348.i, %bb.ch ], [ %.1.i344.i, %bb.ci ] ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %.1.i547, i64 98
  %i.agj = load i8, ptr %i.agi, align 2, !tbaa !163 ; 2 uses
  %.not109.i.i = icmp eq i8 %i.agj, 0
  br i1 %.not109.i.i, label %bb.cr, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.agk = getelementptr inbounds nuw i8, ptr %.1.i547, i64 124
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !135 ; 3 uses
  %.not110.i.i = icmp eq i32 %i.agl, 0
  br i1 %.not110.i.i, label %bb.cq, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.agm = zext i8 %i.agj to i64
  %i.agn = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.agm
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !135
  %.not111.i.i = icmp eq i8 %i.aez, %i.ago
  br i1 %.not111.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.agp = xor i32 %i.agl, -1                     ; 2 uses
  %i.agq = and i32 %i.agp, 2147450879
  %i.agr = add nuw i32 %i.agq, 65537
  %i.ags = and i32 %i.agp, -2147450880
  %i.agt = xor i32 %i.agr, %i.ags
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.0.i350.i = phi i32 [ %i.agt, %bb.cm ], [ %i.agl, %bb.cl ] ; 2 uses
  %i.agu = zext nneg i32 %.4.i349.i to i64        ; 2 uses
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agu
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !135
  %.not112.i.i = icmp eq i32 %.0.i350.i, %i.agw
  br i1 %.not112.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.agx = add nuw nsw i32 %.4.i349.i, 1
  %i.agy = zext nneg i32 %i.agx to i64            ; 2 uses
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agy
  store i32 %.0.i350.i, ptr %i.agz, align 4, !tbaa !135
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pre-phi688 = phi i64 [ %i.agy, %bb.co ], [ %i.agu, %bb.cn ]
  %i.aha = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre-phi688 ; 2 uses
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !135
  %i.ahc = add i8 %i.ahb, 1
  store i8 %i.ahc, ptr %i.aha, align 1, !tbaa !135
  br label %bb.cr

bb.cq:                                            ; preds = %bb.ck
  %i.ahd = load i8, ptr %i.d, align 4, !tbaa !135
  %i.ahe = add i8 %i.ahd, 1
  store i8 %i.ahe, ptr %i.d, align 4, !tbaa !135
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.cj
  %i.ahf = getelementptr inbounds nuw i8, ptr %.1.i547, i64 3 ; 2 uses
  store i8 4, ptr %i.ahf, align 1, !tbaa !167
  %i.ahg = load i8, ptr %i.d, align 4, !tbaa !135 ; 2 uses
  %i.ahh = zext i8 %i.ahg to i64
  %i.ahi = getelementptr inbounds nuw [16 x i8], ptr @vp8_mode_contexts, i64 %i.ahh
  %i.ahj = load i32, ptr %i.ahi, align 16, !tbaa !117
  %i.ahk = sext i32 %8 to i64
  %i.ahl = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.ahk
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !135
  %i.ahn = zext i8 %i.ahm to i32                  ; 3 uses
  %i.aho = shl i32 %8, %i.ahn                     ; 3 uses
  store i32 %i.aho, ptr %i.ay, align 8, !tbaa !152
  %i.ahp = shl i32 %6, %i.ahn                     ; 3 uses
  %i.ahq = add nsw i32 %7, %i.ahn                 ; 5 uses
  %i.ahr = icmp sgt i32 %i.ahq, -1
  br i1 %i.ahr, label %bb.cs, label %vpx_rac_renorm.exit.i132.i.i

bb.cs:                                            ; preds = %bb.cr
  %i.ahs = load ptr, ptr %i.bb, align 8, !tbaa !143 ; 3 uses
  %i.aht = load ptr, ptr %i.az, align 8, !tbaa !142
  %i.ahu = icmp ult ptr %i.ahs, %i.aht
  br i1 %i.ahu, label %bb.ct, label %vpx_rac_renorm.exit.i132.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahs, i64 2
  store ptr %i.ahv, ptr %i.bb, align 8, !tbaa !141
  %i.ahw = load i16, ptr %i.ahs, align 1, !tbaa !135
  %i.ahx = call i16 @llvm.bswap.i16(i16 %i.ahw)
  %i.ahy = zext i16 %i.ahx to i32
  %i.ahz = shl i32 %i.ahy, %i.ahq
  %i.aia = or i32 %i.ahz, %i.ahp
  %i.aib = add nsw i32 %i.ahq, -16
  br label %vpx_rac_renorm.exit.i132.i.i

vpx_rac_renorm.exit.i132.i.i:                     ; preds = %bb.ct, %bb.cs, %bb.cr
  %.018.i.i133.i.i = phi i32 [ %i.aib, %bb.ct ], [ %i.ahq, %bb.cs ], [ %i.ahq, %bb.cr ] ; 2 uses
  %.0.i.i134.i.i = phi i32 [ %i.aia, %bb.ct ], [ %i.ahp, %bb.cs ], [ %i.ahp, %bb.cr ] ; 3 uses
  store i32 %.018.i.i133.i.i, ptr %i.dh, align 4, !tbaa !144
  %i.aic = add nsw i32 %i.aho, -1
  %i.aid = mul nsw i32 %i.aic, %i.ahj
  %i.aie = ashr i32 %i.aid, 8
  %i.aif = add nsw i32 %i.aie, 1                  ; 3 uses
  %i.aig = shl i32 %i.aif, 16                     ; 2 uses
  %.not.i135.i.i = icmp ult i32 %.0.i.i134.i.i, %i.aig
  br i1 %.not.i135.i.i, label %bb.gz, label %bb.cu

bb.cu:                                            ; preds = %vpx_rac_renorm.exit.i132.i.i
  %i.aih = sub i32 %i.aho, %i.aif                 ; 2 uses
  %narrow.i136.i.i = sub nuw i32 %.0.i.i134.i.i, %i.aig ; 2 uses
  store i32 %narrow.i136.i.i, ptr %i.ds, align 8, !tbaa !153
  %i.aii = getelementptr inbounds nuw i8, ptr %.1.i547, i64 1 ; 2 uses
  store i8 6, ptr %i.aii, align 1, !tbaa !161
  %i.aij = load i8, ptr %i.eg, align 1, !tbaa !135
  %.not114.i.i = icmp eq i8 %i.aij, 0
  br i1 %.not114.i.i, label %._crit_edge689, label %bb.cv

._crit_edge689:                                   ; preds = %bb.cu
  %.pre690.a = load i8, ptr %i.ef, align 1, !tbaa !135
  br label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.aik = load i32, ptr %i.ed, align 4, !tbaa !135
  %i.ail = load i32, ptr %i.eh, align 4, !tbaa !135
  %i.aim = icmp eq i32 %i.aik, %i.ail
  %.pre691 = load i8, ptr %i.ef, align 1, !tbaa !135 ; 2 uses
  br i1 %i.aim, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ain = add i8 %.pre691, 1                     ; 2 uses
  store i8 %i.ain, ptr %i.ef, align 1, !tbaa !135
  br label %bb.cx

bb.cx:                                            ; preds = %._crit_edge689, %bb.cw, %bb.cv
  %i.aio = phi i8 [ %.pre690.a, %._crit_edge689 ], [ %i.ain, %bb.cw ], [ %.pre691, %bb.cv ] ; 4 uses
  %i.aip = load i8, ptr %i.ei, align 2, !tbaa !135 ; 4 uses
  %i.aiq = icmp ugt i8 %i.aip, %i.aio
  br i1 %i.aiq, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i8 %i.aio, ptr %i.ei, align 2, !tbaa !135
  store i8 %i.aip, ptr %i.ef, align 1, !tbaa !135
  %i.air = load <2 x i32>, ptr %i.ed, align 4
  %i.ais = shufflevector <2 x i32> %i.air, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ais, ptr %i.ed, align 4
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.ait = phi i8 [ %i.aio, %bb.cy ], [ %i.aip, %bb.cx ]
  %i.aiu = phi i8 [ %i.aip, %bb.cy ], [ %i.aio, %bb.cx ] ; 2 uses
  %i.aiv = zext i8 %i.aiu to i64
  %i.aiw = getelementptr inbounds nuw [16 x i8], ptr @vp8_mode_contexts, i64 %i.aiv
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 4
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !117
  %i.aiz = sext i32 %i.aih to i64
  %i.aja = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.aiz
  %i.ajb = load i8, ptr %i.aja, align 1, !tbaa !135
  %i.ajc = zext i8 %i.ajb to i32                  ; 3 uses
  %i.ajd = shl i32 %i.aih, %i.ajc                 ; 3 uses
  store i32 %i.ajd, ptr %i.ay, align 8, !tbaa !152
  %i.aje = shl i32 %narrow.i136.i.i, %i.ajc       ; 3 uses
  %i.ajf = add nsw i32 %.018.i.i133.i.i, %i.ajc   ; 5 uses
  %i.ajg = icmp sgt i32 %i.ajf, -1
  br i1 %i.ajg, label %bb.da, label %vpx_rac_renorm.exit.i125.i351.i

bb.da:                                            ; preds = %bb.cz
  %i.ajh = load ptr, ptr %i.bb, align 8, !tbaa !143 ; 3 uses
  %i.aji = load ptr, ptr %i.az, align 8, !tbaa !142
  %i.ajj = icmp ult ptr %i.ajh, %i.aji
  br i1 %i.ajj, label %bb.db, label %vpx_rac_renorm.exit.i125.i351.i

bb.db:                                            ; preds = %bb.da
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajh, i64 2
  store ptr %i.ajk, ptr %i.bb, align 8, !tbaa !141
  %i.ajl = load i16, ptr %i.ajh, align 1, !tbaa !135
  %i.ajm = call i16 @llvm.bswap.i16(i16 %i.ajl)
  %i.ajn = zext i16 %i.ajm to i32
  %i.ajo = shl i32 %i.ajn, %i.ajf
  %i.ajp = or i32 %i.ajo, %i.aje
  %i.ajq = add nsw i32 %i.ajf, -16
  br label %vpx_rac_renorm.exit.i125.i351.i

vpx_rac_renorm.exit.i125.i351.i:                  ; preds = %bb.db, %bb.da, %bb.cz
  %.018.i.i126.i352.i = phi i32 [ %i.ajq, %bb.db ], [ %i.ajf, %bb.da ], [ %i.ajf, %bb.cz ] ; 2 uses
  %.0.i.i127.i353.i = phi i32 [ %i.ajp, %bb.db ], [ %i.aje, %bb.da ], [ %i.aje, %bb.cz ] ; 3 uses
  store i32 %.018.i.i126.i352.i, ptr %i.dh, align 4, !tbaa !144
  %i.ajr = add nsw i32 %i.ajd, -1
  %i.ajs = mul nsw i32 %i.ajr, %i.aiy
  %i.ajt = ashr i32 %i.ajs, 8
  %i.aju = add nsw i32 %i.ajt, 1                  ; 3 uses
  %i.ajv = shl i32 %i.aju, 16                     ; 2 uses
  %.not.i128.i354.i = icmp ult i32 %.0.i.i127.i353.i, %i.ajv
  br i1 %.not.i128.i354.i, label %bb.gy, label %bb.dc

bb.dc:                                            ; preds = %vpx_rac_renorm.exit.i125.i351.i
  %i.ajw = sub i32 %i.ajd, %i.aju                 ; 2 uses
  %narrow.i129.i355.i = sub nuw i32 %.0.i.i127.i353.i, %i.ajv ; 2 uses
  store i32 %narrow.i129.i355.i, ptr %i.ds, align 8, !tbaa !153
  %i.ajx = zext i8 %i.ait to i64
  %i.ajy = getelementptr inbounds nuw [16 x i8], ptr @vp8_mode_contexts, i64 %i.ajx
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 8
  %i.aka = load i32, ptr %i.ajz, align 8, !tbaa !117
  %i.akb = sext i32 %i.ajw to i64
  %i.akc = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.akb
  %i.akd = load i8, ptr %i.akc, align 1, !tbaa !135
  %i.ake = zext i8 %i.akd to i32                  ; 3 uses
  %i.akf = shl i32 %i.ajw, %i.ake                 ; 3 uses
  store i32 %i.akf, ptr %i.ay, align 8, !tbaa !152
  %i.akg = shl i32 %narrow.i129.i355.i, %i.ake    ; 3 uses
  %i.akh = add nsw i32 %.018.i.i126.i352.i, %i.ake ; 5 uses
  %i.aki = icmp sgt i32 %i.akh, -1
  br i1 %i.aki, label %bb.dd, label %vpx_rac_renorm.exit.i118.i358.i

bb.dd:                                            ; preds = %bb.dc
  %i.akj = load ptr, ptr %i.bb, align 8, !tbaa !143 ; 3 uses
  %i.akk = load ptr, ptr %i.az, align 8, !tbaa !142
  %i.akl = icmp ult ptr %i.akj, %i.akk
  br i1 %i.akl, label %bb.de, label %vpx_rac_renorm.exit.i118.i358.i

bb.de:                                            ; preds = %bb.dd
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akj, i64 2
  store ptr %i.akm, ptr %i.bb, align 8, !tbaa !141
  %i.akn = load i16, ptr %i.akj, align 1, !tbaa !135
  %i.ako = call i16 @llvm.bswap.i16(i16 %i.akn)
  %i.akp = zext i16 %i.ako to i32
  %i.akq = shl i32 %i.akp, %i.akh
  %i.akr = or i32 %i.akq, %i.akg
  %i.aks = add nsw i32 %i.akh, -16
  br label %vpx_rac_renorm.exit.i118.i358.i

vpx_rac_renorm.exit.i118.i358.i:                  ; preds = %bb.de, %bb.dd, %bb.dc
  %.018.i.i119.i359.i = phi i32 [ %i.aks, %bb.de ], [ %i.akh, %bb.dd ], [ %i.akh, %bb.dc ] ; 2 uses
  %.0.i.i120.i360.i = phi i32 [ %i.akr, %bb.de ], [ %i.akg, %bb.dd ], [ %i.akg, %bb.dc ] ; 3 uses
  store i32 %.018.i.i119.i359.i, ptr %i.dh, align 4, !tbaa !144
  %i.akt = add nsw i32 %i.akf, -1
  %i.aku = mul nsw i32 %i.akt, %i.aka
  %i.akv = ashr i32 %i.aku, 8
  %i.akw = add nsw i32 %i.akv, 1                  ; 3 uses
  %i.akx = shl i32 %i.akw, 16                     ; 2 uses
  %.not.i121.i361.i = icmp ult i32 %.0.i.i120.i360.i, %i.akx
  br i1 %.not.i121.i361.i, label %bb.gx, label %bb.df

bb.df:                                            ; preds = %vpx_rac_renorm.exit.i118.i358.i
  %i.aky = sub i32 %i.akf, %i.akw                 ; 2 uses
  %narrow.i122.i362.i = sub nuw i32 %.0.i.i120.i360.i, %i.akx ; 2 uses
  store i32 %narrow.i122.i362.i, ptr %i.ds, align 8, !tbaa !153
  %i.akz = getelementptr inbounds nuw i8, ptr %.1.i547, i64 28 ; 5 uses
  %.not337 = icmp ult i8 %i.aiu, %i.ahg           ; 2 uses
  %.val338 = load i16, ptr %i.ed, align 4
  %i.ala = sext i16 %.val338 to i32
  %i.alb = select i1 %.not337, i32 0, i32 %i.ala  ; 2 uses
  %i.alc = load i32, ptr %i.dc, align 8, !tbaa !168
  %i.ald = call i32 @llvm.smax.i32(i32 %i.alc, i32 -32768) ; 2 uses
  %.0.i583.i = call i32 @llvm.smin.i32(i32 %i.ald, i32 32767)
  %i.ale = load i32, ptr %i.dg, align 16, !tbaa !169
  %i.alf = call i32 @llvm.smax.i32(i32 %i.ale, i32 -32768)
  %i.alg = icmp sgt i32 %.0.i583.i, %i.alb
  %.0.i581.i = call i32 @llvm.smin.i32(i32 %i.alf, i32 %i.alb)
  %minmaxop = select i1 %i.alg, i32 %i.ald, i32 %.0.i581.i
  %.0.i579.i = call i32 @llvm.smin.i32(i32 %minmaxop, i32 32767)
  %i.alh = trunc nsw i32 %.0.i579.i to i16        ; 2 uses
  store i16 %i.alh, ptr %i.akz, align 4, !tbaa !170
  %.sroa.gep.val = load i16, ptr %.sroa.gep, align 2
  %.val = load i16, ptr %i.et, align 2
  %i.ali = select i1 %.not337, i16 %.sroa.gep.val, i16 %.val
  %i.alj = sext i16 %i.ali to i32                 ; 2 uses
  %i.alk = load i32, ptr %i.ej, align 4, !tbaa !171
  %i.all = call i32 @llvm.smax.i32(i32 %i.alk, i32 -32768) ; 2 uses
  %.0.i577.i = call i32 @llvm.smin.i32(i32 %i.all, i32 32767)
  %i.alm = load i32, ptr %i.ek, align 4, !tbaa !172
  %i.aln = call i32 @llvm.smax.i32(i32 %i.alm, i32 -32768)
  %i.alo = icmp sgt i32 %.0.i577.i, %i.alj
  %.0.i575.i = call i32 @llvm.smin.i32(i32 %i.aln, i32 %i.alj)
  %minmaxop339 = select i1 %i.alo, i32 %i.all, i32 %.0.i575.i
  %.0.i573.i = call i32 @llvm.smin.i32(i32 %minmaxop339, i32 32767)
  %i.alp = trunc nsw i32 %.0.i573.i to i16        ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %.1.i547, i64 30 ; 3 uses
  store i16 %i.alp, ptr %i.alq, align 2, !tbaa !173
  %i.alr = getelementptr inbounds i8, ptr %.1.i547, i64 -95
  %i.als = load i8, ptr %i.alr, align 1, !tbaa !161
  %i.alt = icmp eq i8 %i.als, 7
  %i.alu = zext i1 %i.alt to i8
  %i.alv = getelementptr inbounds nuw i8, ptr %.1.i547, i64 193
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !161
  %i.alx = icmp eq i8 %i.alw, 7
  %i.aly = zext i1 %i.alx to i8
  %i.alz = add nuw nsw i8 %i.aly, %i.alu
  %i.ama = shl nuw nsw i8 %i.alz, 1
  %i.amb = getelementptr inbounds nuw i8, ptr %.1.i547, i64 97
  %i.amc = load i8, ptr %i.amb, align 1, !tbaa !161
  %i.amd = icmp eq i8 %i.amc, 7
  %i.ame = zext i1 %i.amd to i8
  %i.amf = or disjoint i8 %i.ama, %i.ame          ; 2 uses
  store i8 %i.amf, ptr %i.eg, align 1, !tbaa !135
  %i.amg = zext nneg i8 %i.amf to i64
  %i.amh = getelementptr inbounds nuw [16 x i8], ptr @vp8_mode_contexts, i64 %i.amg
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 12
  %i.amj = load i32, ptr %i.ami, align 4, !tbaa !117
  %i.amk = sext i32 %i.aky to i64
  %i.aml = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.amk
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !135
end_hunk_1
begin_hunk_2_@vp8_decode_frame_header:bb.a
  %i.coe = getelementptr inbounds nuw i8, ptr %.pre327, i64 2 ; 2 uses
  store ptr %i.coe, ptr %i.zc, align 8, !tbaa !141
  %i.cof = load i16, ptr %.pre327, align 1, !tbaa !135
  %i.cog = call i16 @llvm.bswap.i16(i16 %i.cof)
  %i.coh = zext i16 %i.cog to i32
  %i.coi = shl i32 %i.coh, %i.coa
  %i.coj = or i32 %i.coi, %i.cnz
  %i.cok = add nsw i32 %i.coa, -16
  br label %vpx_rac_renorm.exit206

vpx_rac_renorm.exit206:                           ; preds = %bb.ho, %bb.hp, %bb.hq
  %i.col = phi ptr [ %i.coe, %bb.hq ], [ %.pre327, %bb.hp ], [ %.pre327, %bb.ho ]
  %.018.i204 = phi i32 [ %i.cok, %bb.hq ], [ %i.coa, %bb.hp ], [ %i.coa, %bb.ho ] ; 3 uses
  %.0.i205 = phi i32 [ %i.coj, %bb.hq ], [ %i.cnz, %bb.hp ], [ %i.cnz, %bb.ho ] ; 2 uses
  store i32 %.018.i204, ptr %i.hk, align 4, !tbaa !144
  store i32 %.0.i205, ptr %i.hl, align 8, !tbaa !245
  %.neg173 = sdiv i32 %.018.i204, 8
  %i.com = sext i32 %.neg173 to i64
  %i.con = getelementptr inbounds i8, ptr %i.col, i64 %i.com
  %i.coo = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.con, ptr %i.coo, align 8, !tbaa !246
  %i.cop = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 %i.cny, ptr %i.cop, align 8, !tbaa !247
  %i.coq = lshr i32 %.0.i205, 16
  %i.cor = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 %i.coq, ptr %i.cor, align 4, !tbaa !248
  %i.cos = srem i32 %.018.i204, 8
  %i.cot = sub nsw i32 0, %i.cos
  %i.cou = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 %i.cot, ptr %i.cou, align 8, !tbaa !249
  br label %vp8_update_dimensions.exit.thread

vp8_update_dimensions.exit.thread:                ; preds = %bb.eg, %bb.er, %bb.fo, %.thread536, %vp8_update_dimensions.exit, %bb.m, %vpx_rac_renorm.exit206, %setup_partitions.exit.thread, %bb.i, %bb.f, %bb.b
  %.0147 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.f ], [ -1094995529, %bb.i ], [ 0, %vpx_rac_renorm.exit206 ], [ -1094995529, %setup_partitions.exit.thread ], [ %i.ee, %bb.m ], [ %.079.i.i, %vp8_update_dimensions.exit ], [ -22, %bb.eg ], [ -12, %bb.er ], [ -12, %bb.fo ], [ %i.bjj, %.thread536 ]
  ret i32 %.0147
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef nonnull ptr @vp8_find_free_buffer(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6320 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %.not = icmp eq ptr %i.a, %i.c
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !90
  %.not22 = icmp eq ptr %i.a, %i.g
  br i1 %.not22, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !90
  %.not23 = icmp eq ptr %i.a, %i.h
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !90
  %.not24 = icmp eq ptr %i.a, %i.i
  br i1 %.not24, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 5 uses
  %.not.1 = icmp eq ptr %i.j, %i.c
  br i1 %.not.1, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !90
  %.not22.1 = icmp eq ptr %i.j, %i.k
  br i1 %.not22.1, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !90
  %.not23.1 = icmp eq ptr %i.j, %i.l
  br i1 %.not23.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !90
  %.not24.1 = icmp eq ptr %i.j, %i.m
  br i1 %.not24.1, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 6384 ; 5 uses
  %.not.2 = icmp eq ptr %i.n, %i.c
  br i1 %.not.2, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !90
  %.not22.2 = icmp eq ptr %i.n, %i.o
  br i1 %.not22.2, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !90
  %.not23.2 = icmp eq ptr %i.n, %i.p
  br i1 %.not23.2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !90
  %.not24.2 = icmp eq ptr %i.n, %i.q
  br i1 %.not24.2, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6416 ; 5 uses
  %.not.3 = icmp eq ptr %i.r, %i.c
  br i1 %.not.3, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !90
  %.not22.3 = icmp eq ptr %i.r, %i.s
  br i1 %.not22.3, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !90
  %.not23.3 = icmp eq ptr %i.r, %i.t
  br i1 %.not23.3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !90
  %.not24.3 = icmp eq ptr %i.r, %i.u
  br i1 %.not24.3, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6448 ; 5 uses
  %.not.4 = icmp eq ptr %i.v, %i.c
  br i1 %.not.4, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !90
  %.not22.4 = icmp eq ptr %i.v, %i.w
  br i1 %.not22.4, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !90
  %.not23.4 = icmp eq ptr %i.v, %i.x
  br i1 %.not23.4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !90
  %.not24.4 = icmp eq ptr %i.v, %i.y
  br i1 %.not24.4, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !88
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aa, i32 noundef 8, ptr noundef nonnull @.str.15) #12
  tail call void @abort() #13
  unreachable

.thread:                                          ; preds = %bb.t, %bb.p, %bb.l, %bb.h, %bb.d
  %.lcssa = phi ptr [ %i.a, %bb.d ], [ %i.j, %bb.h ], [ %i.n, %bb.l ], [ %i.r, %bb.p ], [ %i.v, %bb.t ] ; 5 uses
  %i.ab = load ptr, ptr %.lcssa, align 8, !tbaa !103
  %.not25 = icmp eq ptr %i.ab, null
  br i1 %.not25, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.ac) #12
  %i.ad = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.ad) #12
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %.lcssa) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread
  ret ptr %.lcssa
}

declare void @ff_thread_finish_setup(ptr noundef) local_unnamed_addr #3

declare void @ff_progress_frame_await(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @vp8_decode_mv_mb_modes(ptr initializes((136, 140), (144, 148)) %.32.val, ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #6 {
bb.a:
  %2 = alloca [4 x %struct.VP8mv], align 16       ; 12 uses
  %i.a = alloca [4 x i8], align 4                 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.32.val, i64 132 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.32.val, i64 136 ; 4 uses
  store i32 -64, ptr %i.c, align 4, !tbaa !132
  %i.d = getelementptr inbounds nuw i8, ptr %.32.val, i64 106 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !109  ; 3 uses
  %i.f = zext i16 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 6                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.32.val, i64 140 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.32.val, i64 144 ; 4 uses
  store i32 %i.g, ptr %i.i, align 4, !tbaa !133
  %.not126 = icmp eq i16 %i.e, 0
  br i1 %.not126, label %vp78_decode_mv_mb_modes.exit, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.32.val, i64 4736
  %i.k = getelementptr inbounds nuw i8, ptr %.32.val, i64 104 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.32.val, i64 200 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.32.val, i64 312 ; 94 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.32.val, i64 328 ; 56 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.32.val, i64 320 ; 111 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.32.val, i64 316 ; 68 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.32.val, i64 340 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not49.i = icmp eq ptr %1, null
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.32.val, i64 166
  %i.u = getelementptr inbounds nuw i8, ptr %.32.val, i64 372 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.32.val, i64 336 ; 78 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.32.val, i64 164
  %i.x = getelementptr inbounds nuw i8, ptr %.32.val, i64 130
  %i.y = getelementptr inbounds nuw i8, ptr %.32.val, i64 375
  %i.z = getelementptr inbounds nuw i8, ptr %.32.val, i64 128
  %i.aa = getelementptr inbounds nuw i8, ptr %.32.val, i64 6488
  %i.ab = getelementptr inbounds nuw i8, ptr %.32.val, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %.32.val, i64 376
  %i.ad = getelementptr inbounds nuw i8, ptr %.32.val, i64 377
  %i.ae = getelementptr inbounds nuw i8, ptr %.32.val, i64 378
  %i.af = getelementptr i8, ptr %.32.val, i64 148 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.32.val, i64 2498 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.32.val, i64 2510
  %i.ao = getelementptr inbounds nuw i8, ptr %.32.val, i64 2500 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.32.val, i64 2499
  %i.aq = getelementptr inbounds nuw i8, ptr %.32.val, i64 2517 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.32.val, i64 2529
  %i.as = getelementptr inbounds nuw i8, ptr %.32.val, i64 2519 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.32.val, i64 2518
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.av = getelementptr inbounds nuw i8, ptr %.32.val, i64 379
  %i.aw = getelementptr inbounds nuw i8, ptr %.32.val, i64 383
  %.pre = load i16, ptr %i.k, align 8, !tbaa !108
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ax = getelementptr inbounds nuw i8, ptr %.32.val, i64 2507
  %i.ay = getelementptr inbounds nuw i8, ptr %.32.val, i64 2508
  %i.az = getelementptr inbounds nuw i8, ptr %.32.val, i64 2509
  %i.ba = getelementptr inbounds nuw i8, ptr %.32.val, i64 2516
  %i.bb = getelementptr inbounds nuw i8, ptr %.32.val, i64 2515
  %i.bc = getelementptr inbounds nuw i8, ptr %.32.val, i64 2514
  %i.bd = getelementptr inbounds nuw i8, ptr %.32.val, i64 2513
  %i.be = getelementptr inbounds nuw i8, ptr %.32.val, i64 2512
  %i.bf = getelementptr inbounds nuw i8, ptr %.32.val, i64 2511
  %i.bg = getelementptr inbounds nuw i8, ptr %.32.val, i64 2526
  %i.bh = getelementptr inbounds nuw i8, ptr %.32.val, i64 2527
  %i.bi = getelementptr inbounds nuw i8, ptr %.32.val, i64 2528
  %i.bj = getelementptr inbounds nuw i8, ptr %.32.val, i64 2535
  %i.bk = getelementptr inbounds nuw i8, ptr %.32.val, i64 2534
  %i.bl = getelementptr inbounds nuw i8, ptr %.32.val, i64 2533
  %i.bm = getelementptr inbounds nuw i8, ptr %.32.val, i64 2532
  %i.bn = getelementptr inbounds nuw i8, ptr %.32.val, i64 2531
  %i.bo = getelementptr inbounds nuw i8, ptr %.32.val, i64 2530
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph125, %._crit_edge
  %i.bp = phi i16 [ %i.e, %.lr.ph125 ], [ %i.cei, %._crit_edge ]
  %i.bq = phi i32 [ %i.g, %.lr.ph125 ], [ %i.cen, %._crit_edge ]
  %i.br = phi i32 [ -64, %.lr.ph125 ], [ %i.cem, %._crit_edge ]
  %i.bs = phi i16 [ %.pre, %.lr.ph125 ], [ %i.cel, %._crit_edge ] ; 3 uses
  %.044.i123 = phi i32 [ 0, %.lr.ph125 ], [ %i.bv, %._crit_edge ] ; 3 uses
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.bu = zext i16 %i.bs to i32                   ; 3 uses
  %i.bv = add nuw nsw i32 %.044.i123, 1           ; 3 uses
  store i32 33686018, ptr %i.l, align 8, !tbaa !135
  store i32 -64, ptr %i.b, align 4, !tbaa !208
  %i.bw = shl nuw nsw i32 %i.bu, 6
  store i32 %i.bw, ptr %i.h, align 4, !tbaa !209
  %.not51.i115.not = icmp eq i16 %i.bs, 0
  br i1 %.not51.i115.not, label %._crit_edge, label %.lr.ph122

.lr.ph122:                                        ; preds = %bb.b
  %i.bx = add nuw nsw i32 %i.bu, 1
  %i.by = mul nuw nsw i32 %i.bx, %i.bv
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [96 x i8], ptr %i.bt, i64 %i.bz
  %i.cb = icmp eq i32 %.044.i123, 0
  %i.cc = mul nuw i32 %.044.i123, %i.bu
  %i.cd = zext i32 %i.cc to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph122, %decode_mb_mode.exit
  %indvars.iv166 = phi i64 [ 0, %.lr.ph122 ], [ %indvars.iv.next167, %decode_mb_mode.exit ] ; 2 uses
  %indvars.iv164 = phi i64 [ %i.cd, %.lr.ph122 ], [ %indvars.iv.next165, %decode_mb_mode.exit ] ; 3 uses
  %i.ce = phi i16 [ %i.bs, %.lr.ph122 ], [ %i.ceg, %decode_mb_mode.exit ]
  %.pn.i119 = phi ptr [ %i.ca, %.lr.ph122 ], [ %.043.i121, %decode_mb_mode.exit ] ; 38 uses
  %.043.i121 = getelementptr inbounds nuw i8, ptr %.pn.i119, i64 96 ; 8 uses
  %i.cf = load ptr, ptr %i.n, align 8, !tbaa !142
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !143
  %.not.i.i = icmp ugt ptr %i.cf, %i.cg
  br i1 %.not.i.i, label %.vpx_rac_is_end.exit.i_crit_edge, label %bb.d

.vpx_rac_is_end.exit.i_crit_edge:                 ; preds = %bb.c
  %.pre169.a = load i32, ptr %i.q, align 4, !tbaa !145
  br label %vpx_rac_is_end.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ch = load i32, ptr %i.p, align 4, !tbaa !144
  %i.ci = icmp sgt i32 %i.ch, -1
  %.pre170 = load i32, ptr %i.q, align 4, !tbaa !145 ; 2 uses
  br i1 %i.ci, label %bb.e, label %vpx_rac_is_end.exit.i

bb.e:                                             ; preds = %bb.d
  %i.cj = add nsw i32 %.pre170, 1                 ; 2 uses
  store i32 %i.cj, ptr %i.q, align 4, !tbaa !145
  br label %vpx_rac_is_end.exit.i

vpx_rac_is_end.exit.i:                            ; preds = %.vpx_rac_is_end.exit.i_crit_edge, %bb.e, %bb.d
  %i.ck = phi i32 [ %.pre169.a, %.vpx_rac_is_end.exit.i_crit_edge ], [ %i.cj, %bb.e ], [ %.pre170, %bb.d ]
  %i.cl = icmp slt i32 %i.ck, 11
  br i1 %i.cl, label %bb.f, label %vp78_decode_mv_mb_modes.exit

bb.f:                                             ; preds = %vpx_rac_is_end.exit.i
  br i1 %i.cb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cm = zext i16 %i.ce to i64
  %i.cn = sub nsw i64 0, %i.cm
  %i.co = getelementptr inbounds [96 x i8], ptr %.043.i121, i64 %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -72
  store i32 33686018, ptr %i.cp, align 4, !tbaa !135
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cq = load ptr, ptr %i.r, align 8, !tbaa !110
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv164 ; 4 uses
  br i1 %.not49.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cs = load ptr, ptr %i.s, align 8, !tbaa !110 ; 2 uses
  %.not50.i = icmp eq ptr %i.cs, null
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %indvars.iv164
  %spec.select.i = select i1 %.not50.i, ptr null, ptr %i.ct
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cu = phi ptr [ null, %bb.h ], [ %spec.select.i, %bb.i ] ; 2 uses
  %i.cv = load i8, ptr %i.t, align 2, !tbaa !125
  %.not97.i = icmp eq i8 %i.cv, 0
  br i1 %.not97.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cw = load i8, ptr %i.u, align 4, !tbaa !135
  %i.cx = load i32, ptr %i.m, align 8, !tbaa !152 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !135
  %i.db = zext i8 %i.da to i32                    ; 3 uses
  %i.dc = load i32, ptr %i.p, align 4, !tbaa !144
  %i.dd = load i32, ptr %i.v, align 8, !tbaa !153
  %i.de = shl i32 %i.cx, %i.db                    ; 3 uses
  store i32 %i.de, ptr %i.m, align 8, !tbaa !152
  %i.df = shl i32 %i.dd, %i.db                    ; 3 uses
  %i.dg = add nsw i32 %i.dc, %i.db                ; 5 uses
  %i.dh = icmp sgt i32 %i.dg, -1
  br i1 %i.dh, label %bb.l, label %vpx_rac_renorm.exit.i

bb.l:                                             ; preds = %bb.k
  %i.di = load ptr, ptr %i.o, align 8, !tbaa !143 ; 3 uses
  %i.dj = load ptr, ptr %i.n, align 8, !tbaa !142
  %i.dk = icmp ult ptr %i.di, %i.dj
  br i1 %i.dk, label %bb.m, label %vpx_rac_renorm.exit.i

bb.m:                                             ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  store ptr %i.dl, ptr %i.o, align 8, !tbaa !141
  %i.dm = load i16, ptr %i.di, align 1, !tbaa !135
  %i.dn = tail call i16 @llvm.bswap.i16(i16 %i.dm)
  %i.do = zext i16 %i.dn to i32
  %i.dp = shl i32 %i.do, %i.dg
  %i.dq = or i32 %i.dp, %i.df
  %i.dr = add nsw i32 %i.dg, -16
  br label %vpx_rac_renorm.exit.i

vpx_rac_renorm.exit.i:                            ; preds = %bb.m, %bb.l, %bb.k
  %.018.i.i = phi i32 [ %i.dr, %bb.m ], [ %i.dg, %bb.l ], [ %i.dg, %bb.k ] ; 2 uses
  %.0.i.i = phi i32 [ %i.dq, %bb.m ], [ %i.df, %bb.l ], [ %i.df, %bb.k ] ; 2 uses
  store i32 %.018.i.i, ptr %i.p, align 4, !tbaa !144
  %i.ds = add nsw i32 %i.de, -1
  %i.dt = zext i8 %i.cw to i32
  %i.du = mul nsw i32 %i.ds, %i.dt
  %i.dv = ashr i32 %i.du, 8
  %i.dw = add nsw i32 %i.dv, 1                    ; 3 uses
  %i.dx = shl i32 %i.dw, 16                       ; 2 uses
  %i.dy = icmp uge i32 %.0.i.i, %i.dx             ; 4 uses
  %i.dz = sub i32 %i.de, %i.dw
  %i.ea = select i1 %i.dy, i32 %i.dx, i32 0
  %i.eb = select i1 %i.dy, i32 %i.dz, i32 %i.dw   ; 2 uses
  %i.ec = sub i32 %.0.i.i, %i.ea                  ; 2 uses
  store i32 %i.ec, ptr %i.v, align 8, !tbaa !153
  %i.ed = zext i1 %i.dy to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !135
  %i.eh = sext i32 %i.eb to i64
  %i.ei = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !135
  %i.ek = zext i8 %i.ej to i32                    ; 3 uses
  %i.el = shl i32 %i.eb, %i.ek                    ; 3 uses
  store i32 %i.el, ptr %i.m, align 8, !tbaa !152
  %i.em = shl i32 %i.ec, %i.ek                    ; 3 uses
  %i.en = add nsw i32 %.018.i.i, %i.ek            ; 5 uses
  %i.eo = icmp sgt i32 %i.en, -1
  br i1 %i.eo, label %bb.n, label %vpx_rac_renorm.exit110.i

bb.n:                                             ; preds = %vpx_rac_renorm.exit.i
end_hunk_2
begin_hunk_3_@vp8_decode_mv_mb_modes:bb.a
  store i32 %i.qe, ptr %i.v, align 8, !tbaa !153
  %i.qf = zext i1 %i.qa to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !135 ; 3 uses
  %i.qi = zext nneg i8 %i.qh to i64
  %i.qj = icmp sgt i8 %i.qh, 0
  br i1 %i.qj, label %bb.aj, label %vp89_rac_get_tree.exit42.i.3, !llvm.loop !2

vp89_rac_get_tree.exit42.i.3:                     ; preds = %vpx_rac_renorm.exit.i39.i.3
  %i.qk = getelementptr inbounds nuw i8, ptr %.033.i68, i64 3
  %i.ql = sub i8 0, %i.qh                         ; 3 uses
  store i8 %i.ql, ptr %i.qk, align 1, !tbaa !135
  store i8 %i.ql, ptr %i.je, align 1, !tbaa !135
  store i8 %i.ql, ptr %i.jf, align 1, !tbaa !135
  %i.qm = getelementptr inbounds nuw i8, ptr %.033.i68, i64 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %decode_intra4x4_modes.exit27, label %.preheader51, !llvm.loop !3

bb.am:                                            ; preds = %vp89_rac_get_tree.exit21
  %i.qn = zext nneg i32 %i.iq to i64
  %i.qo = getelementptr inbounds nuw i8, ptr @vp8_pred4x4_mode, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !135
  %i.qq = zext i8 %i.qp to i32
  %i.qr = mul nuw i32 %i.qq, 16843009             ; 3 uses
  %i.qs = load i32, ptr %i.aa, align 8, !tbaa !121
  %.not105.i.a = icmp eq i32 %i.qs, 0
  br i1 %.not105.i.a, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qt = getelementptr inbounds nuw i8, ptr %.pn.i119, i64 120
  store i32 %i.qr, ptr %i.qt, align 4, !tbaa !135
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.qu = load ptr, ptr %i.ab, align 8, !tbaa !123
  %i.qv = shl nuw nsw i64 %indvars.iv166, 2
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qv
  store i32 %i.qr, ptr %i.qw, align 4, !tbaa !135
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store i32 %i.qr, ptr %i.l, align 8, !tbaa !135
  br label %decode_intra4x4_modes.exit27

decode_intra4x4_modes.exit27:                     ; preds = %vp89_rac_get_tree.exit42.i.3, %bb.ap
  %.promoted69 = load i32, ptr %i.m, align 8, !tbaa !152
  %.lcssa54.promoted70 = load i32, ptr %i.p, align 4, !tbaa !144
  %.lcssa.promoted71 = load i32, ptr %i.v, align 8, !tbaa !153
  br label %bb.aq

bb.aq:                                            ; preds = %vpx_rac_renorm.exit.i13, %decode_intra4x4_modes.exit27
  %i.qx = phi i32 [ %.lcssa.promoted71, %decode_intra4x4_modes.exit27 ], [ %i.sf, %vpx_rac_renorm.exit.i13 ]
  %i.qy = phi i32 [ %.lcssa54.promoted70, %decode_intra4x4_modes.exit27 ], [ %.018.i.i14, %vpx_rac_renorm.exit.i13 ]
  %i.qz = phi i32 [ %.promoted69, %decode_intra4x4_modes.exit27 ], [ %i.se, %vpx_rac_renorm.exit.i13 ] ; 2 uses
  %.0.i12 = phi i64 [ 0, %decode_intra4x4_modes.exit27 ], [ %i.sj, %vpx_rac_renorm.exit.i13 ] ; 2 uses
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr @vp8_pred8x8c_tree, i64 %.0.i12
  %i.rb = getelementptr inbounds nuw i8, ptr @vp8_pred8x8c_prob_intra, i64 %.0.i12
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !135
  %i.rd = sext i32 %i.qz to i64
  %i.re = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.rd
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !135
  %i.rg = zext i8 %i.rf to i32                    ; 3 uses
  %i.rh = shl i32 %i.qz, %i.rg                    ; 3 uses
  store i32 %i.rh, ptr %i.m, align 8, !tbaa !152
  %i.ri = shl i32 %i.qx, %i.rg                    ; 3 uses
  %i.rj = add nsw i32 %i.qy, %i.rg                ; 5 uses
  %i.rk = icmp sgt i32 %i.rj, -1
  br i1 %i.rk, label %bb.ar, label %vpx_rac_renorm.exit.i13

bb.ar:                                            ; preds = %bb.aq
  %i.rl = load ptr, ptr %i.o, align 8, !tbaa !143 ; 3 uses
  %i.rm = load ptr, ptr %i.n, align 8, !tbaa !142
  %i.rn = icmp ult ptr %i.rl, %i.rm
  br i1 %i.rn, label %bb.as, label %vpx_rac_renorm.exit.i13

bb.as:                                            ; preds = %bb.ar
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 2
  store ptr %i.ro, ptr %i.o, align 8, !tbaa !141
  %i.rp = load i16, ptr %i.rl, align 1, !tbaa !135
  %i.rq = tail call i16 @llvm.bswap.i16(i16 %i.rp)
  %i.rr = zext i16 %i.rq to i32
  %i.rs = shl i32 %i.rr, %i.rj
  %i.rt = or i32 %i.rs, %i.ri
  %i.ru = add nsw i32 %i.rj, -16
  br label %vpx_rac_renorm.exit.i13

vpx_rac_renorm.exit.i13:                          ; preds = %bb.as, %bb.ar, %bb.aq
  %.018.i.i14 = phi i32 [ %i.ru, %bb.as ], [ %i.rj, %bb.ar ], [ %i.rj, %bb.aq ] ; 2 uses
  %.0.i.i15 = phi i32 [ %i.rt, %bb.as ], [ %i.ri, %bb.ar ], [ %i.ri, %bb.aq ] ; 2 uses
  store i32 %.018.i.i14, ptr %i.p, align 4, !tbaa !144
  %i.rv = add nsw i32 %i.rh, -1
  %i.rw = zext i8 %i.rc to i32
  %i.rx = mul nsw i32 %i.rv, %i.rw
  %i.ry = ashr i32 %i.rx, 8
  %i.rz = add nsw i32 %i.ry, 1                    ; 3 uses
  %i.sa = shl i32 %i.rz, 16                       ; 2 uses
  %i.sb = icmp uge i32 %.0.i.i15, %i.sa           ; 3 uses
  %i.sc = sub i32 %i.rh, %i.rz
  %i.sd = select i1 %i.sb, i32 %i.sa, i32 0
  %i.se = select i1 %i.sb, i32 %i.sc, i32 %i.rz   ; 2 uses
  store i32 %i.se, ptr %i.m, align 8, !tbaa !152
  %i.sf = sub i32 %.0.i.i15, %i.sd                ; 2 uses
  store i32 %i.sf, ptr %i.v, align 8, !tbaa !153
  %i.sg = zext i1 %i.sb to i64
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.sg
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !135 ; 3 uses
  %i.sj = zext nneg i8 %i.si to i64
  %i.sk = icmp sgt i8 %i.si, 0
  br i1 %i.sk, label %bb.aq, label %vp89_rac_get_tree.exit16, !llvm.loop !2

vp89_rac_get_tree.exit16:                         ; preds = %vpx_rac_renorm.exit.i13
  %i.sl = sub i8 0, %i.si
  %i.sm = getelementptr inbounds nuw i8, ptr %.pn.i119, i64 100
  store i8 %i.sl, ptr %i.sm, align 4, !tbaa !162
  %i.sn = getelementptr inbounds nuw i8, ptr %.pn.i119, i64 98
  store i8 0, ptr %i.sn, align 2, !tbaa !163
  br label %decode_mb_mode.exit

bb.at:                                            ; preds = %bb.v
  %i.so = load i8, ptr %i.ac, align 8, !tbaa !164
  %i.sp = zext i8 %i.so to i32
  %i.sq = load i32, ptr %i.m, align 8, !tbaa !152 ; 2 uses
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !135
  %i.su = zext i8 %i.st to i32                    ; 3 uses
  %i.sv = load i32, ptr %i.p, align 4, !tbaa !144
  %i.sw = load i32, ptr %i.v, align 8, !tbaa !153
  %i.sx = shl i32 %i.sq, %i.su                    ; 3 uses
  store i32 %i.sx, ptr %i.m, align 8, !tbaa !152
  %i.sy = shl i32 %i.sw, %i.su                    ; 3 uses
  %i.sz = add nsw i32 %i.sv, %i.su                ; 5 uses
  %i.ta = icmp sgt i32 %i.sz, -1
  br i1 %i.ta, label %bb.au, label %vpx_rac_renorm.exit.i118.i.a

bb.au:                                            ; preds = %bb.at
  %i.tb = load ptr, ptr %i.o, align 8, !tbaa !143 ; 3 uses
  %i.tc = load ptr, ptr %i.n, align 8, !tbaa !142
  %i.td = icmp ult ptr %i.tb, %i.tc
  br i1 %i.td, label %bb.av, label %vpx_rac_renorm.exit.i118.i.a

bb.av:                                            ; preds = %bb.au
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 2
  store ptr %i.te, ptr %i.o, align 8, !tbaa !141
  %i.tf = load i16, ptr %i.tb, align 1, !tbaa !135
  %i.tg = tail call i16 @llvm.bswap.i16(i16 %i.tf)
  %i.th = zext i16 %i.tg to i32
  %i.ti = shl i32 %i.th, %i.sz
  %i.tj = or i32 %i.ti, %i.sy
  %i.tk = add nsw i32 %i.sz, -16
  br label %vpx_rac_renorm.exit.i118.i.a

vpx_rac_renorm.exit.i118.i.a:                     ; preds = %bb.av, %bb.au, %bb.at
  %.promoted102 = phi i32 [ %i.tk, %bb.av ], [ %i.sz, %bb.au ], [ %i.sz, %bb.at ] ; 3 uses
  %.0.i.i120.i.a = phi i32 [ %i.tj, %bb.av ], [ %i.sy, %bb.au ], [ %i.sy, %bb.at ] ; 4 uses
  store i32 %.promoted102, ptr %i.p, align 4, !tbaa !144
  %i.tl = add nsw i32 %i.sx, -1
  %i.tm = mul nsw i32 %i.tl, %i.sp
  %i.tn = ashr i32 %i.tm, 8
  %i.to = add nsw i32 %i.tn, 1                    ; 3 uses
  %i.tp = shl i32 %i.to, 16                       ; 2 uses
  %.not.i121.i.a = icmp ult i32 %.0.i.i120.i.a, %i.tp
  br i1 %.not.i121.i.a, label %bb.gi, label %bb.aw

bb.aw:                                            ; preds = %vpx_rac_renorm.exit.i118.i.a
  %i.tq = sub i32 %i.sx, %i.to                    ; 2 uses
  %narrow.i122.i.a = sub nuw i32 %.0.i.i120.i.a, %i.tp ; 2 uses
  store i32 %narrow.i122.i.a, ptr %i.v, align 8, !tbaa !153
  %i.tr = load i8, ptr %i.ad, align 1, !tbaa !165
  %i.ts = zext i8 %i.tr to i32
  %i.tt = sext i32 %i.tq to i64
  %i.tu = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.tt
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !135
  %i.tw = zext i8 %i.tv to i32                    ; 3 uses
  %i.tx = shl i32 %i.tq, %i.tw                    ; 3 uses
  store i32 %i.tx, ptr %i.m, align 8, !tbaa !152
  %i.ty = shl i32 %narrow.i122.i.a, %i.tw         ; 3 uses
  %i.tz = add nsw i32 %.promoted102, %i.tw        ; 5 uses
  %i.ua = icmp sgt i32 %i.tz, -1
  br i1 %i.ua, label %bb.ax, label %vpx_rac_renorm.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.ub = load ptr, ptr %i.o, align 8, !tbaa !143 ; 3 uses
  %i.uc = load ptr, ptr %i.n, align 8, !tbaa !142
  %i.ud = icmp ult ptr %i.ub, %i.uc
  br i1 %i.ud, label %bb.ay, label %vpx_rac_renorm.exit.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 2
  store ptr %i.ue, ptr %i.o, align 8, !tbaa !141
  %i.uf = load i16, ptr %i.ub, align 1, !tbaa !135
  %i.ug = tail call i16 @llvm.bswap.i16(i16 %i.uf)
  %i.uh = zext i16 %i.ug to i32
  %i.ui = shl i32 %i.uh, %i.tz
  %i.uj = or i32 %i.ui, %i.ty
  %i.uk = add nsw i32 %i.tz, -16
  br label %vpx_rac_renorm.exit.i.i

vpx_rac_renorm.exit.i.i:                          ; preds = %bb.ay, %bb.ax, %bb.aw
  %.018.i.i.i = phi i32 [ %i.uk, %bb.ay ], [ %i.tz, %bb.ax ], [ %i.tz, %bb.aw ] ; 3 uses
  %.0.i.i.i = phi i32 [ %i.uj, %bb.ay ], [ %i.ty, %bb.ax ], [ %i.ty, %bb.aw ] ; 4 uses
  store i32 %.018.i.i.i, ptr %i.p, align 4, !tbaa !144
  %i.ul = add nsw i32 %i.tx, -1
  %i.um = mul nsw i32 %i.ul, %i.ts
  %i.un = ashr i32 %i.um, 8
  %i.uo = add nsw i32 %i.un, 1                    ; 4 uses
  %i.up = shl i32 %i.uo, 16                       ; 2 uses
  %.not.i.i3 = icmp ult i32 %.0.i.i.i, %i.up
  br i1 %.not.i.i3, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %vpx_rac_renorm.exit.i.i
  %i.uq = sub i32 %i.tx, %i.uo                    ; 2 uses
  %narrow.i.i = sub nuw i32 %.0.i.i.i, %i.up      ; 2 uses
  store i32 %narrow.i.i, ptr %i.v, align 8, !tbaa !153
  %i.ur = load i8, ptr %i.ae, align 2, !tbaa !166
  %i.us = sext i32 %i.uq to i64
  %i.ut = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.us
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !135
  %i.uv = zext i8 %i.uu to i32                    ; 3 uses
  %i.uw = shl i32 %i.uq, %i.uv                    ; 3 uses
  store i32 %i.uw, ptr %i.m, align 8, !tbaa !152
  %i.ux = shl i32 %narrow.i.i, %i.uv              ; 3 uses
  %i.uy = add nsw i32 %.018.i.i.i, %i.uv          ; 5 uses
  %i.uz = icmp sgt i32 %i.uy, -1
  br i1 %i.uz, label %bb.ba, label %vpx_rac_renorm.exit116.i

bb.ba:                                            ; preds = %bb.az
  %i.va = load ptr, ptr %i.o, align 8, !tbaa !143 ; 3 uses
  %i.vb = load ptr, ptr %i.n, align 8, !tbaa !142
  %i.vc = icmp ult ptr %i.va, %i.vb
  br i1 %i.vc, label %bb.bb, label %vpx_rac_renorm.exit116.i

bb.bb:                                            ; preds = %bb.ba
  %i.vd = getelementptr inbounds nuw i8, ptr %i.va, i64 2
  store ptr %i.vd, ptr %i.o, align 8, !tbaa !141
  %i.ve = load i16, ptr %i.va, align 1, !tbaa !135
  %i.vf = tail call i16 @llvm.bswap.i16(i16 %i.ve)
  %i.vg = zext i16 %i.vf to i32
  %i.vh = shl i32 %i.vg, %i.uy
  %i.vi = or i32 %i.vh, %i.ux
  %i.vj = add nsw i32 %i.uy, -16
  br label %vpx_rac_renorm.exit116.i

vpx_rac_renorm.exit116.i:                         ; preds = %bb.bb, %bb.ba, %bb.az
  %.018.i114.i = phi i32 [ %i.vj, %bb.bb ], [ %i.uy, %bb.ba ], [ %i.uy, %bb.az ] ; 2 uses
  %.0.i115.i = phi i32 [ %i.vi, %bb.bb ], [ %i.ux, %bb.ba ], [ %i.ux, %bb.az ] ; 2 uses
  store i32 %.018.i114.i, ptr %i.p, align 4, !tbaa !144
  %i.vk = add nsw i32 %i.uw, -1
  %i.vl = zext i8 %i.ur to i32
  %i.vm = mul nsw i32 %i.vk, %i.vl
  %i.vn = ashr i32 %i.vm, 8
  %i.vo = add nsw i32 %i.vn, 1                    ; 3 uses
  %i.vp = shl i32 %i.vo, 16                       ; 2 uses
  %.not = icmp ult i32 %.0.i115.i, %i.vp          ; 3 uses
  %i.vq = sub i32 %i.uw, %i.vo
  %i.vr = select i1 %.not, i32 0, i32 %i.vp
  %i.vs = select i1 %.not, i32 %i.vo, i32 %i.vq   ; 2 uses
  store i32 %i.vs, ptr %i.m, align 8, !tbaa !152
  %i.vt = sub i32 %.0.i115.i, %i.vr               ; 2 uses
  store i32 %i.vt, ptr %i.v, align 8, !tbaa !153
  %3 = select i1 %.not, i8 2, i8 3                ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.pn.i119, i64 98
  store i8 %3, ptr %i.vu, align 2, !tbaa !163
  %i.vv = zext nneg i8 %3 to i64
  br label %bb.bd

bb.bc:                                            ; preds = %vpx_rac_renorm.exit.i.i
  store i32 %i.uo, ptr %i.m, align 8, !tbaa !152
  store i32 %.0.i.i.i, ptr %i.v, align 8, !tbaa !153
  %i.vw = getelementptr inbounds nuw i8, ptr %.pn.i119, i64 98
  store i8 1, ptr %i.vw, align 2, !tbaa !163
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %vpx_rac_renorm.exit116.i
  %4 = phi i32 [ %.0.i.i.i, %bb.bc ], [ %i.vt, %vpx_rac_renorm.exit116.i ]
  %5 = phi i32 [ %.018.i.i.i, %bb.bc ], [ %.018.i114.i, %vpx_rac_renorm.exit116.i ]
  %6 = phi i32 [ %i.uo, %bb.bc ], [ %i.vs, %vpx_rac_renorm.exit116.i ] ; 2 uses
  %i.vx = phi i64 [ 1, %bb.bc ], [ %i.vv, %vpx_rac_renorm.exit116.i ] ; 2 uses
  %i.vy = getelementptr [4 x i8], ptr %i.af, i64 %i.vx ; 2 uses
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !117
  %i.wa = add nsw i32 %i.vz, 1
  store i32 %i.wa, ptr %i.vy, align 4, !tbaa !117
  %i.wb = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.vx
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !135 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4
  %i.wd = load i16, ptr %i.k, align 8, !tbaa !108
  %i.we = zext i16 %i.wd to i64                   ; 2 uses
  %i.wf = sub nsw i64 0, %i.we
  %i.wg = getelementptr inbounds [96 x i8], ptr %.043.i121, i64 %i.wf ; 6 uses
  store i32 0, ptr %2, align 16, !tbaa !135
  store i32 0, ptr %i.ag, align 4, !tbaa !135
  store i32 0, ptr %i.ah, align 8, !tbaa !135
  %i.wh = getelementptr inbounds i8, ptr %i.wg, i64 -94
  %i.wi = load i8, ptr %i.wh, align 2, !tbaa !163 ; 2 uses
  %.not102.i28 = icmp eq i8 %i.wi, 0
  br i1 %.not102.i28, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.wj = getelementptr inbounds i8, ptr %i.wg, i64 -68
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !135 ; 3 uses
  %.not103.i29 = icmp eq i32 %i.wk, 0
  br i1 %.not103.i29, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.wl = zext i8 %i.wi to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.wl
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !135
  %.not104.i30 = icmp eq i8 %i.wc, %i.wn
  br i1 %.not104.i30, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.wo = xor i32 %i.wk, -1                       ; 2 uses
  %i.wp = and i32 %i.wo, 2147450879
  %i.wq = add nuw i32 %i.wp, 65537
  %i.wr = and i32 %i.wo, -2147450880
  %i.ws = xor i32 %i.wq, %i.wr
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.094.i = phi i32 [ %i.ws, %bb.bg ], [ %i.wk, %bb.bf ]
  store i32 %.094.i, ptr %i.ag, align 4, !tbaa !135
  store i8 2, ptr %i.ai, align 1, !tbaa !135
  br label %bb.bj

bb.bi:                                            ; preds = %bb.be
  store i8 2, ptr %i.a, align 4, !tbaa !135
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bd
  %i.wt = phi i8 [ 2, %bb.bd ], [ 2, %bb.bh ], [ 4, %bb.bi ]
  %.1.i31 = phi i32 [ 0, %bb.bd ], [ 1, %bb.bh ], [ 0, %bb.bi ] ; 5 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.pn.i119, i64 2
  %i.wv = load i8, ptr %i.wu, align 2, !tbaa !163 ; 2 uses
  %.not105.i32 = icmp eq i8 %i.wv, 0
  br i1 %.not105.i32, label %bb.br, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ww = getelementptr inbounds nuw i8, ptr %.pn.i119, i64 28
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !135 ; 3 uses
  %.not106.i = icmp eq i32 %i.wx, 0
  br i1 %.not106.i, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.wy = zext i8 %i.wv to i64
  %i.wz = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.wy
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !135
  %.not107.i = icmp eq i8 %i.wc, %i.xa
  br i1 %.not107.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.xb = xor i32 %i.wx, -1                       ; 2 uses
  %i.xc = and i32 %i.xb, 2147450879
  %i.xd = add nuw i32 %i.xc, 65537
  %i.xe = and i32 %i.xb, -2147450880
  %i.xf = xor i32 %i.xd, %i.xe
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.093.i = phi i32 [ %i.xf, %bb.bm ], [ %i.wx, %bb.bl ] ; 2 uses
  %i.xg = zext nneg i32 %.1.i31 to i64            ; 2 uses
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.xg
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !135
  %.not108.i = icmp eq i32 %.093.i, %i.xi
  br i1 %.not108.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.xj = add nuw nsw i32 %.1.i31, 1              ; 2 uses
  %i.xk = zext nneg i32 %i.xj to i64              ; 2 uses
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.xk
  store i32 %.093.i, ptr %i.xl, align 4, !tbaa !135
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pre-phi = phi i64 [ %i.xk, %bb.bo ], [ %i.xg, %bb.bn ]
  %.2.i33 = phi i32 [ %i.xj, %bb.bo ], [ %.1.i31, %bb.bn ]
  %i.xm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi ; 2 uses
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !135
  %i.xo = add i8 %i.xn, 2
  store i8 %i.xo, ptr %i.xm, align 1, !tbaa !135
  br label %bb.br

bb.bq:                                            ; preds = %bb.bk
  store i8 %i.wt, ptr %i.a, align 4, !tbaa !135
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bj
  %.4.i = phi i32 [ %.1.i31, %bb.bj ], [ %.2.i33, %bb.bp ], [ %.1.i31, %bb.bq ] ; 2 uses
  %i.xp = getelementptr inbounds i8, ptr %i.wg, i64 -190
  %i.xq = load i8, ptr %i.xp, align 2, !tbaa !163 ; 2 uses
  %.not109.i = icmp eq i8 %i.xq, 0
  br i1 %.not109.i, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.xr = getelementptr inbounds i8, ptr %i.wg, i64 -164
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !135 ; 3 uses
  %.not110.i = icmp eq i32 %i.xs, 0
  br i1 %.not110.i, label %bb.by, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.xt = zext i8 %i.xq to i64
  %i.xu = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.xt
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !135
  %.not111.i = icmp eq i8 %i.wc, %i.xv
  br i1 %.not111.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.xw = xor i32 %i.xs, -1                       ; 2 uses
  %i.xx = and i32 %i.xw, 2147450879
  %i.xy = add nuw i32 %i.xx, 65537
  %i.xz = and i32 %i.xw, -2147450880
  %i.ya = xor i32 %i.xy, %i.xz
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0.i34 = phi i32 [ %i.ya, %bb.bu ], [ %i.xs, %bb.bt ] ; 2 uses
  %i.yb = zext nneg i32 %.4.i to i64              ; 2 uses
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yb
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !135
  %.not112.i = icmp eq i32 %.0.i34, %i.yd
  br i1 %.not112.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ye = add nuw nsw i32 %.4.i, 1
  %i.yf = zext nneg i32 %i.ye to i64              ; 2 uses
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yf
  store i32 %.0.i34, ptr %i.yg, align 4, !tbaa !135
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pre-phi173 = phi i64 [ %i.yf, %bb.bw ], [ %i.yb, %bb.bv ]
  %i.yh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi173 ; 2 uses
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !135
  %i.yj = add i8 %i.yi, 1
  store i8 %i.yj, ptr %i.yh, align 1, !tbaa !135
  br label %bb.bz

bb.by:                                            ; preds = %bb.bs
  %i.yk = load i8, ptr %i.a, align 4, !tbaa !135
  %i.yl = add i8 %i.yk, 1
  store i8 %i.yl, ptr %i.a, align 4, !tbaa !135
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.br
  %i.ym = getelementptr inbounds nuw i8, ptr %.pn.i119, i64 99 ; 2 uses
  store i8 4, ptr %i.ym, align 1, !tbaa !167
  %i.yn = load i8, ptr %i.a, align 4, !tbaa !135  ; 2 uses
  %i.yo = zext i8 %i.yn to i64
  %i.yp = getelementptr inbounds nuw [16 x i8], ptr @vp8_mode_contexts, i64 %i.yo
  %i.yq = load i32, ptr %i.yp, align 16, !tbaa !117
  %i.yr = sext i32 %6 to i64
  %i.ys = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.yr
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !135
  %i.yu = zext i8 %i.yt to i32                    ; 3 uses
  %i.yv = shl i32 %6, %i.yu                       ; 3 uses
  store i32 %i.yv, ptr %i.m, align 8, !tbaa !152
  %i.yw = shl i32 %4, %i.yu                       ; 3 uses
  %i.yx = add nsw i32 %5, %i.yu                   ; 5 uses
  %i.yy = icmp sgt i32 %i.yx, -1
  br i1 %i.yy, label %bb.ca, label %vpx_rac_renorm.exit.i132.i

bb.ca:                                            ; preds = %bb.bz
  %i.yz = load ptr, ptr %i.o, align 8, !tbaa !143 ; 3 uses
  %i.za = load ptr, ptr %i.n, align 8, !tbaa !142
  %i.zb = icmp ult ptr %i.yz, %i.za
  br i1 %i.zb, label %bb.cb, label %vpx_rac_renorm.exit.i132.i

bb.cb:                                            ; preds = %bb.ca
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 2
  store ptr %i.zc, ptr %i.o, align 8, !tbaa !141
  %i.zd = load i16, ptr %i.yz, align 1, !tbaa !135
  %i.ze = tail call i16 @llvm.bswap.i16(i16 %i.zd)
  %i.zf = zext i16 %i.ze to i32
  %i.zg = shl i32 %i.zf, %i.yx
  %i.zh = or i32 %i.zg, %i.yw
  %i.zi = add nsw i32 %i.yx, -16
  br label %vpx_rac_renorm.exit.i132.i

vpx_rac_renorm.exit.i132.i:                       ; preds = %bb.cb, %bb.ca, %bb.bz
  %.018.i.i133.i = phi i32 [ %i.zi, %bb.cb ], [ %i.yx, %bb.ca ], [ %i.yx, %bb.bz ] ; 2 uses
  %.0.i.i134.i = phi i32 [ %i.zh, %bb.cb ], [ %i.yw, %bb.ca ], [ %i.yw, %bb.bz ] ; 3 uses
  store i32 %.018.i.i133.i, ptr %i.p, align 4, !tbaa !144
  %i.zj = add nsw i32 %i.yv, -1
  %i.zk = mul nsw i32 %i.zj, %i.yq
  %i.zl = ashr i32 %i.zk, 8
  %i.zm = add nsw i32 %i.zl, 1                    ; 3 uses
  %i.zn = shl i32 %i.zm, 16                       ; 2 uses
  %.not.i135.i = icmp ult i32 %.0.i.i134.i, %i.zn
  br i1 %.not.i135.i, label %bb.gh, label %bb.cc

bb.cc:                                            ; preds = %vpx_rac_renorm.exit.i132.i
  %i.zo = sub i32 %i.yv, %i.zm                    ; 2 uses
  %narrow.i136.i = sub nuw i32 %.0.i.i134.i, %i.zn ; 2 uses
  store i32 %narrow.i136.i, ptr %i.v, align 8, !tbaa !153
  %i.zp = getelementptr inbounds nuw i8, ptr %.pn.i119, i64 97 ; 2 uses
  store i8 6, ptr %i.zp, align 1, !tbaa !161
  %i.zq = load i8, ptr %i.aj, align 1, !tbaa !135
  %.not114.i = icmp eq i8 %i.zq, 0
  br i1 %.not114.i, label %._crit_edge174, label %bb.cd

._crit_edge174:                                   ; preds = %bb.cc
  %.pre175.a = load i8, ptr %i.ai, align 1, !tbaa !135
  br label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.zr = load i32, ptr %i.ag, align 4, !tbaa !135
  %i.zs = load i32, ptr %i.ak, align 4, !tbaa !135
  %i.zt = icmp eq i32 %i.zr, %i.zs
  %.pre176 = load i8, ptr %i.ai, align 1, !tbaa !135 ; 2 uses
  br i1 %i.zt, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.zu = add i8 %.pre176, 1                      ; 2 uses
  store i8 %i.zu, ptr %i.ai, align 1, !tbaa !135
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge174, %bb.ce, %bb.cd
  %i.zv = phi i8 [ %.pre175.a, %._crit_edge174 ], [ %i.zu, %bb.ce ], [ %.pre176, %bb.cd ] ; 4 uses
  %i.zw = load i8, ptr %i.al, align 2, !tbaa !135 ; 4 uses
  %i.zx = icmp ugt i8 %i.zw, %i.zv
  br i1 %i.zx, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i8 %i.zv, ptr %i.al, align 2, !tbaa !135
  store i8 %i.zw, ptr %i.ai, align 1, !tbaa !135
  %i.zy = load <2 x i32>, ptr %i.ag, align 4
  %i.zz = shufflevector <2 x i32> %i.zy, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.zz, ptr %i.ag, align 4
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.aaa = phi i8 [ %i.zv, %bb.cg ], [ %i.zw, %bb.cf ]
  %i.aab = phi i8 [ %i.zw, %bb.cg ], [ %i.zv, %bb.cf ] ; 2 uses
  %i.aac = zext i8 %i.aab to i64
  %i.aad = getelementptr inbounds nuw [16 x i8], ptr @vp8_mode_contexts, i64 %i.aac
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 4
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !117
  %i.aag = sext i32 %i.zo to i64
  %i.aah = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.aag
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !135
  %i.aaj = zext i8 %i.aai to i32                  ; 3 uses
  %i.aak = shl i32 %i.zo, %i.aaj                  ; 3 uses
  store i32 %i.aak, ptr %i.m, align 8, !tbaa !152
  %i.aal = shl i32 %narrow.i136.i, %i.aaj         ; 3 uses
  %i.aam = add nsw i32 %.018.i.i133.i, %i.aaj     ; 5 uses
  %i.aan = icmp sgt i32 %i.aam, -1
  br i1 %i.aan, label %bb.ci, label %vpx_rac_renorm.exit.i125.i

bb.ci:                                            ; preds = %bb.ch
  %i.aao = load ptr, ptr %i.o, align 8, !tbaa !143 ; 3 uses
  %i.aap = load ptr, ptr %i.n, align 8, !tbaa !142
  %i.aaq = icmp ult ptr %i.aao, %i.aap
  br i1 %i.aaq, label %bb.cj, label %vpx_rac_renorm.exit.i125.i

bb.cj:                                            ; preds = %bb.ci
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aao, i64 2
  store ptr %i.aar, ptr %i.o, align 8, !tbaa !141
  %i.aas = load i16, ptr %i.aao, align 1, !tbaa !135
  %i.aat = tail call i16 @llvm.bswap.i16(i16 %i.aas)
  %i.aau = zext i16 %i.aat to i32
  %i.aav = shl i32 %i.aau, %i.aam
  %i.aaw = or i32 %i.aav, %i.aal
  %i.aax = add nsw i32 %i.aam, -16
  br label %vpx_rac_renorm.exit.i125.i

vpx_rac_renorm.exit.i125.i:                       ; preds = %bb.cj, %bb.ci, %bb.ch
  %.018.i.i126.i = phi i32 [ %i.aax, %bb.cj ], [ %i.aam, %bb.ci ], [ %i.aam, %bb.ch ] ; 2 uses
  %.0.i.i127.i = phi i32 [ %i.aaw, %bb.cj ], [ %i.aal, %bb.ci ], [ %i.aal, %bb.ch ] ; 3 uses
  store i32 %.018.i.i126.i, ptr %i.p, align 4, !tbaa !144
  %i.aay = add nsw i32 %i.aak, -1
  %i.aaz = mul nsw i32 %i.aay, %i.aaf
  %i.aba = ashr i32 %i.aaz, 8
  %i.abb = add nsw i32 %i.aba, 1                  ; 3 uses
  %i.abc = shl i32 %i.abb, 16                     ; 2 uses
  %.not.i128.i = icmp ult i32 %.0.i.i127.i, %i.abc
  br i1 %.not.i128.i, label %bb.gg, label %bb.ck

bb.ck:                                            ; preds = %vpx_rac_renorm.exit.i125.i
  %i.abd = sub i32 %i.aak, %i.abb                 ; 2 uses
  %narrow.i129.i = sub nuw i32 %.0.i.i127.i, %i.abc ; 2 uses
  store i32 %narrow.i129.i, ptr %i.v, align 8, !tbaa !153
  %i.abe = zext i8 %i.aaa to i64
  %i.abf = getelementptr inbounds nuw [16 x i8], ptr @vp8_mode_contexts, i64 %i.abe
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.abh = load i32, ptr %i.abg, align 8, !tbaa !117
  %i.abi = sext i32 %i.abd to i64
  %i.abj = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.abi
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !135
  %i.abl = zext i8 %i.abk to i32                  ; 3 uses
  %i.abm = shl i32 %i.abd, %i.abl                 ; 3 uses
  store i32 %i.abm, ptr %i.m, align 8, !tbaa !152
  %i.abn = shl i32 %narrow.i129.i, %i.abl         ; 3 uses
  %i.abo = add nsw i32 %.018.i.i126.i, %i.abl     ; 5 uses
  %i.abp = icmp sgt i32 %i.abo, -1
  br i1 %i.abp, label %bb.cl, label %vpx_rac_renorm.exit.i118.i35

bb.cl:                                            ; preds = %bb.ck
  %i.abq = load ptr, ptr %i.o, align 8, !tbaa !143 ; 3 uses
  %i.abr = load ptr, ptr %i.n, align 8, !tbaa !142
  %i.abs = icmp ult ptr %i.abq, %i.abr
  br i1 %i.abs, label %bb.cm, label %vpx_rac_renorm.exit.i118.i35

bb.cm:                                            ; preds = %bb.cl
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abq, i64 2
  store ptr %i.abt, ptr %i.o, align 8, !tbaa !141
  %i.abu = load i16, ptr %i.abq, align 1, !tbaa !135
  %i.abv = tail call i16 @llvm.bswap.i16(i16 %i.abu)
  %i.abw = zext i16 %i.abv to i32
  %i.abx = shl i32 %i.abw, %i.abo
  %i.aby = or i32 %i.abx, %i.abn
  %i.abz = add nsw i32 %i.abo, -16
  br label %vpx_rac_renorm.exit.i118.i35

vpx_rac_renorm.exit.i118.i35:                     ; preds = %bb.cm, %bb.cl, %bb.ck
  %.018.i.i119.i36 = phi i32 [ %i.abz, %bb.cm ], [ %i.abo, %bb.cl ], [ %i.abo, %bb.ck ] ; 2 uses
  %.0.i.i120.i37 = phi i32 [ %i.aby, %bb.cm ], [ %i.abn, %bb.cl ], [ %i.abn, %bb.ck ] ; 3 uses
  store i32 %.018.i.i119.i36, ptr %i.p, align 4, !tbaa !144
  %i.aca = add nsw i32 %i.abm, -1
  %i.acb = mul nsw i32 %i.aca, %i.abh
  %i.acc = ashr i32 %i.acb, 8
  %i.acd = add nsw i32 %i.acc, 1                  ; 3 uses
  %i.ace = shl i32 %i.acd, 16                     ; 2 uses
  %.not.i121.i38 = icmp ult i32 %.0.i.i120.i37, %i.ace
  br i1 %.not.i121.i38, label %bb.gf, label %bb.cn

bb.cn:                                            ; preds = %vpx_rac_renorm.exit.i118.i35
  %i.acf = sub i32 %i.abm, %i.acd                 ; 2 uses
  %narrow.i122.i39 = sub nuw i32 %.0.i.i120.i37, %i.ace ; 2 uses
  store i32 %narrow.i122.i39, ptr %i.v, align 8, !tbaa !153
  %i.acg = getelementptr inbounds nuw i8, ptr %.pn.i119, i64 124 ; 5 uses
  %.not36 = icmp ult i8 %i.aab, %i.yn             ; 2 uses
  %.val37 = load i16, ptr %i.ag, align 4
  %i.ach = sext i16 %.val37 to i32
  %i.aci = select i1 %.not36, i32 0, i32 %i.ach   ; 2 uses
  %i.acj = load i32, ptr %i.b, align 4, !tbaa !168
  %i.ack = tail call i32 @llvm.smax.i32(i32 %i.acj, i32 -32768) ; 2 uses
  %.0.i125 = tail call i32 @llvm.smin.i32(i32 %i.ack, i32 32767)
  %i.acl = load i32, ptr %i.h, align 4, !tbaa !169
  %i.acm = tail call i32 @llvm.smax.i32(i32 %i.acl, i32 -32768)
  %i.acn = icmp sgt i32 %.0.i125, %i.aci
  %.0.i123 = tail call i32 @llvm.smin.i32(i32 %i.acm, i32 %i.aci)
  %minmaxop = select i1 %i.acn, i32 %i.ack, i32 %.0.i123
  %.0.i121 = tail call i32 @llvm.smin.i32(i32 %minmaxop, i32 32767)
  %i.aco = trunc nsw i32 %.0.i121 to i16          ; 2 uses
  store i16 %i.aco, ptr %i.acg, align 4, !tbaa !170
  %.sroa.gep.val = load i16, ptr %.sroa.gep, align 2
  %.val = load i16, ptr %i.au, align 2
  %i.acp = select i1 %.not36, i16 %.sroa.gep.val, i16 %.val
  %i.acq = sext i16 %i.acp to i32                 ; 2 uses
  %i.acr = load i32, ptr %i.c, align 8, !tbaa !171
  %i.acs = tail call i32 @llvm.smax.i32(i32 %i.acr, i32 -32768) ; 2 uses
  %.0.i119 = tail call i32 @llvm.smin.i32(i32 %i.acs, i32 32767)
  %i.act = load i32, ptr %i.i, align 8, !tbaa !172
  %i.acu = tail call i32 @llvm.smax.i32(i32 %i.act, i32 -32768)
  %i.acv = icmp sgt i32 %.0.i119, %i.acq
  %.0.i117 = tail call i32 @llvm.smin.i32(i32 %i.acu, i32 %i.acq)
  %minmaxop38 = select i1 %i.acv, i32 %i.acs, i32 %.0.i117
  %.0.i115 = tail call i32 @llvm.smin.i32(i32 %minmaxop38, i32 32767)
  %i.acw = trunc nsw i32 %.0.i115 to i16          ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.pn.i119, i64 126 ; 3 uses
  store i16 %i.acw, ptr %i.acx, align 2, !tbaa !173
  %i.acy = getelementptr inbounds nuw i8, ptr %.pn.i119, i64 1
  %i.acz = load i8, ptr %i.acy, align 1, !tbaa !161
  %i.ada = icmp eq i8 %i.acz, 7
  %i.adb = zext i1 %i.ada to i8
  %i.adc = getelementptr inbounds i8, ptr %i.wg, i64 -95
  %i.add = load i8, ptr %i.adc, align 1, !tbaa !161
  %i.ade = icmp eq i8 %i.add, 7
  %i.adf = zext i1 %i.ade to i8
  %i.adg = add nuw nsw i8 %i.adf, %i.adb
  %i.adh = shl nuw nsw i8 %i.adg, 1
  %i.adi = getelementptr inbounds i8, ptr %i.wg, i64 -191
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !161
  %i.adk = icmp eq i8 %i.adj, 7
  %i.adl = zext i1 %i.adk to i8
  %i.adm = or disjoint i8 %i.adh, %i.adl          ; 2 uses
  store i8 %i.adm, ptr %i.aj, align 1, !tbaa !135
  %i.adn = zext nneg i8 %i.adm to i64
  %i.ado = getelementptr inbounds nuw [16 x i8], ptr @vp8_mode_contexts, i64 %i.adn
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 12
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !117
  %i.adr = sext i32 %i.acf to i64
  %i.ads = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.adr
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !135
end_hunk_3
