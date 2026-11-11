Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp8?download=true
inline.NumInlined: 61
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 80
loop-unroll.NumUnrolled: 83
begin_hunk_0_@ff_vp8_decode_frame:bb.a

bb.bg:                                            ; preds = %.thread11
  %.not229.i = icmp eq ptr %i.v, null
  br i1 %.not229.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.gk = load i8, ptr %i.gj, align 4, !tbaa !124
  %.not230.i = icmp eq i8 %i.gk, 0
  br i1 %.not230.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gl = getelementptr inbounds nuw i8, ptr %i.c, i64 166
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !125
  %.not231.i = icmp eq i8 %i.gm, 0
  br i1 %.not231.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @ff_progress_frame_await(ptr noundef nonnull %i.v, i32 noundef 1) #12
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg
  %.val4 = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.gn = call fastcc i32 @vp8_decode_mv_mb_modes(ptr %.val4, ptr noundef nonnull %i.cs, ptr noundef %i.v) ; 2 uses
  %i.go = icmp slt i32 %i.gn, 0
  br i1 %i.go, label %vp8_alloc_frame.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %.thread14, %bb.bk, %.thread11
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !126
  %i.gr = icmp eq i32 %i.gq, 1
  br i1 %i.gr, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 4764
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !127
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !128
  %.241.i = call i32 @llvm.smin.i32(i32 %i.gt, i32 %i.gv)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.0188.i = phi i32 [ %.241.i, %bb.bm ], [ 1, %bb.bl ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.c, i64 6484
  store i32 %.0188.i, ptr %i.gw, align 4, !tbaa !129
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.cs, ptr %i.gx, align 8, !tbaa !130
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.v, ptr %i.gy, align 8, !tbaa !131
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 136
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
  %.pre705 = zext i16 %.pre to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.pre-phi706 = phi i32 [ %.pre705, %bb.m ], [ %i.bv, %bb.l ], [ %i.bv, %bb.k ], [ %i.bv, %bb.j ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !122
  %i.cu = xor i32 %i.l, -1
  %i.cv = add nsw i32 %.pre-phi706, %i.cu
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
end_hunk_0
begin_hunk_1_@vp8_decode_mb_row_no_filter:bb.a
  store i8 %i.dea, ptr %i.deb, align 1, !tbaa !135
  %i.dec = icmp ne i32 %.0.i37.1.1, 0
  %i.ded = zext i1 %i.dec to i8                   ; 2 uses
  store i8 %i.ded, ptr %i.day, align 1, !tbaa !135
  store i8 %i.ded, ptr %i.czj, align 1, !tbaa !135
  %i.dee = add nsw i32 %.0.i37.1.1, %i.dco        ; 2 uses
  br i1 %exitcond624.not, label %bb.is, label %.preheader438, !llvm.loop !9

bb.is:                                            ; preds = %decode_block_coeffs.exit38.1.1
  %.not116.i = icmp eq i32 %i.dee, 0
  br i1 %.not116.i, label %bb.it, label %decode_mb_coeffs.exit

bb.it:                                            ; preds = %bb.is
  store i8 1, ptr %.1.i547, align 4, !tbaa !160
  br label %decode_mb_coeffs.exit

decode_mb_coeffs.exit:                            ; preds = %bb.it, %bb.is, %prefetch_motion.exit4
  %i.def = getelementptr inbounds nuw i8, ptr %.1.i547, i64 1 ; 6 uses
  %i.deg = load i8, ptr %i.def, align 1, !tbaa !161
  %i.deh = icmp ult i8 %i.deg, 5
  br i1 %i.deh, label %bb.iu, label %bb.li

bb.iu:                                            ; preds = %decode_mb_coeffs.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br i1 %i.bm, label %xchg_mb_border.exit, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.dei = load i8, ptr %i.gc, align 1, !tbaa !98
  %i.dej = icmp eq i8 %i.dei, 0
  br i1 %i.dej, label %xchg_mb_border.exit, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.dek = load i32, ptr %i.gd, align 4, !tbaa !179
  %i.del = icmp eq i32 %i.dek, 0
  br i1 %i.del, label %bb.ix, label %xchg_mb_border.exit

bb.ix:                                            ; preds = %bb.iw
  %i.dem = load ptr, ptr %i.ge, align 8, !tbaa !180
  %i.den = getelementptr [32 x i8], ptr %i.dem, i64 %indvars.iv671 ; 8 uses
  %i.deo = getelementptr i8, ptr %i.den, i64 32   ; 2 uses
  %i.dep = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.deq = load i64, ptr %i.aq, align 8, !tbaa !119
  %i.der = load i16, ptr %i.m, align 8, !tbaa !108
  %i.des = zext i16 %i.der to i64
  %i.det = load i8, ptr %i.gf, align 8, !tbaa !181
  %i.deu = sub i64 0, %i.dep
  %i.dev = getelementptr inbounds i8, ptr %i.jw, i64 %i.deu ; 5 uses
  %i.dew = sub i64 0, %i.deq                      ; 2 uses
  %i.dex = getelementptr inbounds i8, ptr %.sroa.4.0, i64 %i.dew ; 3 uses
  %i.dey = getelementptr inbounds i8, ptr %.sroa.7.0683, i64 %i.dew ; 3 uses
  %i.dez = getelementptr i8, ptr %i.den, i64 8    ; 2 uses
  %.sroa.015.0.copyload.i = load i64, ptr %i.dez, align 8, !tbaa !135
  %i.dfa = getelementptr inbounds i8, ptr %i.dev, i64 -8 ; 2 uses
  %i.dfb = load i64, ptr %i.dfa, align 8, !tbaa !135
  store i64 %i.dfb, ptr %i.dez, align 8, !tbaa !135
  store i64 %.sroa.015.0.copyload.i, ptr %i.dfa, align 8, !tbaa !135
  %.sroa.013.0.copyload.i = load i64, ptr %i.deo, align 8, !tbaa !135
  %i.dfc = load i64, ptr %i.dev, align 8, !tbaa !135
  store i64 %i.dfc, ptr %i.deo, align 8, !tbaa !135
  store i64 %.sroa.013.0.copyload.i, ptr %i.dev, align 8, !tbaa !135
  %i.dfd = getelementptr i8, ptr %i.den, i64 40   ; 2 uses
  %.sroa.011.0.copyload.i = load i64, ptr %i.dfd, align 8, !tbaa !135
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.dev, i64 8 ; 2 uses
  %i.dff = load i64, ptr %i.dfe, align 8, !tbaa !135
  store i64 %i.dff, ptr %i.dfd, align 8, !tbaa !135
  store i64 %.sroa.011.0.copyload.i, ptr %i.dfe, align 8, !tbaa !135
  %i.dfg = add nsw i64 %i.des, -1
  %i.dfh = icmp slt i64 %indvars.iv671, %i.dfg
  br i1 %i.dfh, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.dfi = getelementptr i8, ptr %i.den, i64 64   ; 2 uses
  %.sroa.09.0.copyload.i = load i64, ptr %i.dfi, align 8, !tbaa !135
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.dev, i64 16 ; 2 uses
  %i.dfk = load i64, ptr %i.dfj, align 8, !tbaa !135
  store i64 %i.dfk, ptr %i.dfi, align 8, !tbaa !135
  store i64 %.sroa.09.0.copyload.i, ptr %i.dfj, align 8, !tbaa !135
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %.not = icmp eq i8 %i.det, 0
  br i1 %.not, label %bb.ja, label %xchg_mb_border.exit

bb.ja:                                            ; preds = %bb.iz
  %i.dfl = getelementptr i8, ptr %i.den, i64 16   ; 2 uses
  %.sroa.07.0.copyload.i = load i64, ptr %i.dfl, align 8, !tbaa !135
  %i.dfm = getelementptr inbounds i8, ptr %i.dex, i64 -8 ; 2 uses
  %i.dfn = load i64, ptr %i.dfm, align 8, !tbaa !135
  store i64 %i.dfn, ptr %i.dfl, align 8, !tbaa !135
  store i64 %.sroa.07.0.copyload.i, ptr %i.dfm, align 8, !tbaa !135
  %i.dfo = getelementptr i8, ptr %i.den, i64 24   ; 2 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.dfo, align 8, !tbaa !135
  %i.dfp = getelementptr inbounds i8, ptr %i.dey, i64 -8 ; 2 uses
  %i.dfq = load i64, ptr %i.dfp, align 8, !tbaa !135
  store i64 %i.dfq, ptr %i.dfo, align 8, !tbaa !135
  store i64 %.sroa.05.0.copyload.i, ptr %i.dfp, align 8, !tbaa !135
  %i.dfr = getelementptr i8, ptr %i.den, i64 48   ; 2 uses
  %.sroa.03.0.copyload.i = load i64, ptr %i.dfr, align 8, !tbaa !135
  %i.dfs = load i64, ptr %i.dex, align 8, !tbaa !135
  store i64 %i.dfs, ptr %i.dfr, align 8, !tbaa !135
  store i64 %.sroa.03.0.copyload.i, ptr %i.dex, align 8, !tbaa !135
  %i.dft = getelementptr i8, ptr %i.den, i64 56   ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.dft, align 8, !tbaa !135
  %i.dfu = load i64, ptr %i.dey, align 8, !tbaa !135
  store i64 %i.dfu, ptr %i.dft, align 8, !tbaa !135
  store i64 %.sroa.0.0.copyload.i, ptr %i.dey, align 8, !tbaa !135
  br label %xchg_mb_border.exit

xchg_mb_border.exit:                              ; preds = %bb.ja, %bb.iz, %bb.iw, %bb.iv, %bb.iu
  %i.dfv = load i8, ptr %i.def, align 1, !tbaa !161 ; 2 uses
  %i.dfw = icmp ult i8 %i.dfv, 4
  br i1 %i.dfw, label %bb.jb, label %bb.jf

bb.jb:                                            ; preds = %xchg_mb_border.exit
  switch i8 %i.dfv, label %default.unreachable1054 [
    i8 0, label %bb.jc
    i8 2, label %check_intra_pred8x8_mode_emuedge.exit
    i8 1, label %bb.jd
    i8 3, label %bb.je
  ]

bb.jc:                                            ; preds = %bb.jb
  %.not.i67 = icmp eq i64 %indvars.iv671, 0
  %.0.i70 = select i1 %.not.i67, i64 %i.gx, i64 %i.gw
  br label %check_intra_pred8x8_mode_emuedge.exit

bb.jd:                                            ; preds = %bb.jb
  %.not.i56 = icmp eq i64 %indvars.iv671, 0
  %i.dfx = select i1 %.not.i56, i64 8, i64 1
  br label %check_intra_pred8x8_mode_emuedge.exit

bb.je:                                            ; preds = %bb.jb
  %.not.i74 = icmp eq i64 %indvars.iv671, 0
  %. = select i1 %.not.i74, i64 %i.gu, i64 %i.gt
  br label %check_intra_pred8x8_mode_emuedge.exit

default.unreachable1054:                          ; preds = %bb.jb
  unreachable

check_intra_pred8x8_mode_emuedge.exit:            ; preds = %bb.je, %bb.jb, %bb.jc, %bb.jd
  %.0.i55 = phi i64 [ %., %bb.je ], [ %.0.i70, %bb.jc ], [ %i.gv, %bb.jb ], [ %i.dfx, %bb.jd ]
  %i.dfy = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %.0.i55
  %i.dfz = load ptr, ptr %i.dfy, align 8, !tbaa !182
  %i.dga = load i64, ptr %i.ah, align 8, !tbaa !118
  call void %i.dfz(ptr noundef %i.jw, i64 noundef %i.dga) #12, !inline_history !10
  br label %bb.kx

bb.jf:                                            ; preds = %xchg_mb_border.exit
  %i.dgb = getelementptr inbounds nuw i8, ptr %.1.i547, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 2139062143, ptr %i.b, align 4
  %i.dgc = load i64, ptr %i.ah, align 8, !tbaa !118 ; 2 uses
  %i.dgd = sub i64 0, %i.dgc
  %i.dge = getelementptr inbounds i8, ptr %i.jw, i64 %i.dgd ; 2 uses
  br i1 %i.bm, label %bb.ji, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.dgf = getelementptr inbounds nuw i8, ptr %i.dge, i64 16
  %i.dgg = load i16, ptr %i.m, align 8, !tbaa !108
  %i.dgh = zext i16 %i.dgg to i64
  %i.dgi = add nuw nsw i64 %i.dgh, 4294967295
  %i.dgj = and i64 %i.dgi, 4294967295
  %i.dgk = icmp eq i64 %indvars.iv671, %i.dgj
  br i1 %i.dgk, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.dge, i64 15
  %i.dgm = load i8, ptr %i.dgl, align 1, !tbaa !135
  %i.dgn = zext i8 %i.dgm to i32
  %i.dgo = mul nuw i32 %i.dgn, 16843009
  store i32 %i.dgo, ptr %i.a, align 4, !tbaa !117
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jg, %bb.jf
  %.1.i11.peel = phi ptr [ %i.a, %bb.jh ], [ %i.dgf, %bb.jg ], [ %i.b, %bb.jf ] ; 2 uses
  %i.dgp = load i8, ptr %.1.i547, align 4, !tbaa !160
  %.not191.i = icmp eq i8 %i.dgp, 0
  br i1 %.not191.i, label %.preheader, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fl, i8 0, i64 16, i1 false)
  %.pre697.pre = load i64, ptr %i.ah, align 8, !tbaa !118
  br label %.preheader

.preheader:                                       ; preds = %bb.jj, %bb.ji
  %.ph = phi i64 [ %i.dgc, %bb.ji ], [ %.pre697.pre, %bb.jj ]
  %i.dgq = icmp ne i64 %indvars.iv671, 0          ; 2 uses
  %.not.i79 = icmp eq i64 %indvars.iv671, 0
  %.not195.i = icmp eq i64 %indvars.iv671, 0
  %.not27.i = icmp eq i64 %indvars.iv671, 0
  %i.dgr = icmp eq i64 %indvars.iv671, 0
  br label %bb.jk

bb.jk:                                            ; preds = %.preheader, %.peel.next
  %i.dgs = phi i64 [ %i.dnq, %.peel.next ], [ %.ph, %.preheader ]
  %indvars.iv644 = phi i64 [ %indvars.iv.next645, %.peel.next ], [ 0, %.preheader ] ; 5 uses
  %.0182.i535 = phi ptr [ %i.dnt, %.peel.next ], [ %i.dgb, %.preheader ] ; 5 uses
  %.0183.i534 = phi ptr [ %i.dns, %.peel.next ], [ %i.jw, %.preheader ] ; 30 uses
  %i.dgt = getelementptr inbounds nuw i8, ptr %.0183.i534, i64 4
  %i.dgu = sub i64 0, %i.dgs
  %i.dgv = getelementptr inbounds i8, ptr %i.dgt, i64 %i.dgu ; 2 uses
  %i.dgw = icmp eq i64 %indvars.iv644, 0
  %i.dgx = icmp ne i64 %indvars.iv644, %i.it      ; 16 uses
  %i.dgy = select i1 %i.dgx, i32 9, i32 14        ; 4 uses
  %i.dgz = select i1 %i.dgx, i32 10, i32 13
  %i.dha = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv644 ; 4 uses
  %i.dhb = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %indvars.iv644 ; 4 uses
  %or.cond5.i9 = and i1 %i.bm, %i.dgw             ; 4 uses
  %i.dhc = load i64, ptr %i.ah, align 8, !tbaa !118 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %.1.i11 = select i1 %or.cond5.i9, ptr %i.b, ptr %i.dgv ; 2 uses
  %i.dhd = load i8, ptr %.0182.i535, align 1, !tbaa !135 ; 3 uses
  %i.dhe = zext i8 %i.dhd to i32                  ; 4 uses
  switch i8 %i.dhd, label %bb.ju [
    i8 0, label %bb.jl
    i8 3, label %bb.jm
    i8 7, label %bb.jm
    i8 1, label %bb.jn
    i8 8, label %bb.jo
    i8 9, label %bb.jp
    i8 2, label %bb.jq
    i8 4, label %bb.jq
    i8 5, label %bb.jq
    i8 6, label %bb.jq
  ]

bb.jl:                                            ; preds = %bb.jk
  %or.cond.i64 = and i1 %i.dgx, %i.dgr
  br i1 %or.cond.i64, label %.thread312, label %bb.jm

.thread312:                                       ; preds = %bb.jl
  %i.dhf = sub i64 0, %i.dhc
  %i.dhg = getelementptr inbounds i8, ptr %.0183.i534, i64 %i.dhf
  %i.dhh = load i32, ptr %i.dhg, align 4, !tbaa !135
  store i32 %i.dhh, ptr %i.gh, align 4, !tbaa !135
  br label %.thread316

bb.jm:                                            ; preds = %bb.jl, %bb.jk, %bb.jk
  %i.dhi = select i1 %i.dgx, i32 %i.dhe, i32 12
  br label %bb.ju

bb.jn:                                            ; preds = %bb.jk
  br i1 %i.dgx, label %bb.jo, label %check_intra_pred4x4_mode_emuedge.exit.thread301

bb.jo:                                            ; preds = %bb.jn, %bb.jk
  %i.dhj = select i1 %.not27.i, i32 13, i32 %i.dhe
  br label %bb.ju

bb.jp:                                            ; preds = %bb.jk
  %.555 = select i1 %.not.i79, i32 %i.dgz, i32 %i.dgy
  br label %bb.ju

bb.jq:                                            ; preds = %bb.jk, %bb.jk, %bb.jk, %bb.jk
  %or.cond3.i61 = and i1 %i.dgx, %i.dgq
  br i1 %or.cond3.i61, label %bb.ju, label %check_intra_pred4x4_mode_emuedge.exit

check_intra_pred4x4_mode_emuedge.exit:            ; preds = %bb.jq
  br i1 %i.dgx, label %bb.jr, label %check_intra_pred4x4_mode_emuedge.exit.thread301

bb.jr:                                            ; preds = %check_intra_pred4x4_mode_emuedge.exit
  %i.dhk = sub i64 0, %i.dhc
  %i.dhl = getelementptr inbounds i8, ptr %.0183.i534, i64 %i.dhk
  %i.dhm = load i32, ptr %i.dhl, align 4, !tbaa !135
  store i32 %i.dhm, ptr %i.gh, align 4, !tbaa !135
  br i1 %i.dgq, label %.thread320, label %.thread316

.thread316:                                       ; preds = %bb.jr, %.thread312
  store i8 -127, ptr %i.gi, align 1, !tbaa !135
  br label %bb.js

.thread320:                                       ; preds = %bb.jr
  %i.dhn = xor i64 %i.dhc, -1
  %i.dho = getelementptr i8, ptr %.0183.i534, i64 %i.dhn
  %i.dhp = load i8, ptr %i.dho, align 1, !tbaa !135
  store i8 %i.dhp, ptr %i.gi, align 1, !tbaa !135
  br label %bb.jt

check_intra_pred4x4_mode_emuedge.exit.thread301:  ; preds = %bb.jn, %check_intra_pred4x4_mode_emuedge.exit
  store i8 127, ptr %i.gi, align 1, !tbaa !135
  store i32 2139062143, ptr %i.gh, align 4, !tbaa !135
  br i1 %.not195.i, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %.thread316, %check_intra_pred4x4_mode_emuedge.exit.thread301
  store i8 -127, ptr %i.gm, align 1, !tbaa !135
  store i8 -127, ptr %i.gl, align 1, !tbaa !135
  store i8 -127, ptr %i.gk, align 1, !tbaa !135
  store i8 -127, ptr %i.gj, align 1, !tbaa !135
  br label %bb.jv

bb.jt:                                            ; preds = %.thread320, %check_intra_pred4x4_mode_emuedge.exit.thread301
  %i.dhq = getelementptr i8, ptr %.0183.i534, i64 -1
  %i.dhr = load i8, ptr %i.dhq, align 1, !tbaa !135
  store i8 %i.dhr, ptr %i.gj, align 1, !tbaa !135
  %i.dhs = getelementptr i8, ptr %.0183.i534, i64 %i.dhc
  %i.dht = getelementptr i8, ptr %i.dhs, i64 -1
  %i.dhu = load i8, ptr %i.dht, align 1, !tbaa !135
  store i8 %i.dhu, ptr %i.gk, align 1, !tbaa !135
  %i.dhv = shl nsw i64 %i.dhc, 1
  %i.dhw = getelementptr i8, ptr %.0183.i534, i64 %i.dhv
  %i.dhx = getelementptr i8, ptr %i.dhw, i64 -1
  %i.dhy = load i8, ptr %i.dhx, align 1, !tbaa !135
  store i8 %i.dhy, ptr %i.gl, align 1, !tbaa !135
  %i.dhz = mul nsw i64 %i.dhc, 3
  %i.dia = getelementptr i8, ptr %.0183.i534, i64 %i.dhz
  %i.dib = getelementptr i8, ptr %i.dia, i64 -1
  %i.dic = load i8, ptr %i.dib, align 1, !tbaa !135
  store i8 %i.dic, ptr %i.gm, align 1, !tbaa !135
  br label %bb.jv

bb.ju:                                            ; preds = %bb.jp, %bb.jk, %bb.jm, %bb.jo, %bb.jq
  %.0.i62.ph = phi i32 [ %.555, %bb.jp ], [ %i.dhe, %bb.jk ], [ %i.dhe, %bb.jq ], [ %i.dhj, %bb.jo ], [ %i.dhi, %bb.jm ]
  %i.did = zext nneg i32 %.0.i62.ph to i64
  %i.die = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.did
  %i.dif = load ptr, ptr %i.die, align 8, !tbaa !182
  call void %i.dif(ptr noundef %.0183.i534, ptr noundef nonnull %.1.i11, i64 noundef %i.dhc) #12, !inline_history !10
  br label %bb.jw

bb.jv:                                            ; preds = %bb.jt, %bb.js
  %i.dig = zext i8 %i.dhd to i64
  %i.dih = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.dig
  %i.dii = load ptr, ptr %i.dih, align 8, !tbaa !182
  call void %i.dii(ptr noundef nonnull %i.gg, ptr noundef nonnull %.1.i11, i64 noundef 8) #12, !inline_history !10
  %i.dij = load i32, ptr %i.gg, align 4, !tbaa !135
  store i32 %i.dij, ptr %.0183.i534, align 4, !tbaa !135
  %i.dik = load i32, ptr %i.go, align 4, !tbaa !135
  %i.dil = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.dim = getelementptr inbounds i8, ptr %.0183.i534, i64 %i.dil
  store i32 %i.dik, ptr %i.dim, align 4, !tbaa !135
  %i.din = load i32, ptr %i.gp, align 4, !tbaa !135
  %i.dio = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.dip = shl nsw i64 %i.dio, 1
  %i.diq = getelementptr inbounds i8, ptr %.0183.i534, i64 %i.dip
  store i32 %i.din, ptr %i.diq, align 4, !tbaa !135
  %i.dir = load i32, ptr %i.gq, align 4, !tbaa !135
  %i.dis = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.dit = mul nsw i64 %i.dis, 3
  %i.diu = getelementptr inbounds i8, ptr %.0183.i534, i64 %i.dit
  store i32 %i.dir, ptr %i.diu, align 4, !tbaa !135
  br label %bb.jw

bb.jw:                                            ; preds = %bb.ju, %bb.jv
  %i.div = load i8, ptr %i.dha, align 1, !tbaa !135
  switch i8 %i.div, label %bb.jx [
    i8 0, label %bb.jy
    i8 1, label %.sink.split1128
  ]

bb.jx:                                            ; preds = %bb.jw
  br label %.sink.split1128

.sink.split1128:                                  ; preds = %bb.jw, %bb.jx
  %.sink1131.in = phi ptr [ %i.gs, %bb.jx ], [ %i.gr, %bb.jw ]
  %.sink1131 = load ptr, ptr %.sink1131.in, align 8, !tbaa !182
  %i.diw = load i64, ptr %i.ah, align 8, !tbaa !118
  call void %.sink1131(ptr noundef %.0183.i534, ptr noundef %i.dhb, i64 noundef %i.diw) #12
  br label %bb.jy

bb.jy:                                            ; preds = %.sink.split1128, %bb.jw
  %.1.i11.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %or.cond5.i9, ptr %i.b, ptr %i.dgv ; 2 uses
  %.1.i11.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.1.i11.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.dix = load i64, ptr %i.ah, align 8, !tbaa !118 ; 4 uses
  %i.diy = getelementptr i8, ptr %.0183.i534, i64 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %.1.i11.1 = select i1 %or.cond5.i9, ptr %i.b, ptr %.1.i11.sroa.sel.v.sroa.sel.v.sroa.sel ; 2 uses
  %i.diz = getelementptr inbounds nuw i8, ptr %.0182.i535, i64 1
  %i.dja = load i8, ptr %i.diz, align 1, !tbaa !135 ; 3 uses
  %i.djb = zext i8 %i.dja to i32                  ; 4 uses
  switch i8 %i.dja, label %bb.kd [
    i8 0, label %bb.kc
    i8 3, label %bb.kc
    i8 7, label %bb.kc
    i8 1, label %bb.kb
    i8 6, label %bb.jz
    i8 9, label %bb.ka
    i8 2, label %bb.jz
    i8 4, label %bb.jz
    i8 5, label %bb.jz
  ]

bb.jz:                                            ; preds = %bb.jy, %bb.jy, %bb.jy, %bb.jy
  br i1 %i.dgx, label %bb.kd, label %check_intra_pred4x4_mode_emuedge.exit.thread301.1

bb.ka:                                            ; preds = %bb.jy
  br label %bb.kd

bb.kb:                                            ; preds = %bb.jy
  br i1 %i.dgx, label %bb.kd, label %check_intra_pred4x4_mode_emuedge.exit.thread301.1

check_intra_pred4x4_mode_emuedge.exit.thread301.1: ; preds = %bb.jz, %bb.kb
  store i8 127, ptr %i.gi, align 1, !tbaa !135
  store i32 2139062143, ptr %i.gh, align 4, !tbaa !135
  %i.djc = getelementptr i8, ptr %.0183.i534, i64 3
  %i.djd = load i8, ptr %i.djc, align 1, !tbaa !135
  store i8 %i.djd, ptr %i.gj, align 1, !tbaa !135
  %i.dje = getelementptr i8, ptr %.0183.i534, i64 %i.dix
  %i.djf = getelementptr i8, ptr %i.dje, i64 3
  %i.djg = load i8, ptr %i.djf, align 1, !tbaa !135
  store i8 %i.djg, ptr %i.gk, align 1, !tbaa !135
  %i.djh = shl nsw i64 %i.dix, 1
  %i.dji = getelementptr i8, ptr %.0183.i534, i64 %i.djh
  %i.djj = getelementptr i8, ptr %i.dji, i64 3
  %i.djk = load i8, ptr %i.djj, align 1, !tbaa !135
  store i8 %i.djk, ptr %i.gl, align 1, !tbaa !135
  %i.djl = mul nsw i64 %i.dix, 3
  %i.djm = getelementptr i8, ptr %.0183.i534, i64 %i.djl
  %i.djn = getelementptr i8, ptr %i.djm, i64 3
  %i.djo = load i8, ptr %i.djn, align 1, !tbaa !135
  store i8 %i.djo, ptr %i.gm, align 1, !tbaa !135
  %i.djp = zext i8 %i.dja to i64
  %i.djq = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.djp
  %i.djr = load ptr, ptr %i.djq, align 8, !tbaa !182
  call void %i.djr(ptr noundef nonnull %i.gg, ptr noundef nonnull %.1.i11.1, i64 noundef 8) #12, !inline_history !10
  %i.djs = load i32, ptr %i.gg, align 4, !tbaa !135
  store i32 %i.djs, ptr %i.diy, align 4, !tbaa !135
  %i.djt = load i32, ptr %i.go, align 4, !tbaa !135
  %i.dju = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.djv = getelementptr inbounds i8, ptr %i.diy, i64 %i.dju
  store i32 %i.djt, ptr %i.djv, align 4, !tbaa !135
  %i.djw = load i32, ptr %i.gp, align 4, !tbaa !135
  %i.djx = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.djy = shl nsw i64 %i.djx, 1
  %i.djz = getelementptr inbounds i8, ptr %i.diy, i64 %i.djy
  store i32 %i.djw, ptr %i.djz, align 4, !tbaa !135
  %i.dka = load i32, ptr %i.gq, align 4, !tbaa !135
  %i.dkb = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.dkc = mul nsw i64 %i.dkb, 3
  %i.dkd = getelementptr inbounds i8, ptr %i.diy, i64 %i.dkc
  store i32 %i.dka, ptr %i.dkd, align 4, !tbaa !135
  br label %bb.ke

bb.kc:                                            ; preds = %bb.jy, %bb.jy, %bb.jy
  %i.dke = select i1 %i.dgx, i32 %i.djb, i32 12
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kb, %bb.kc, %bb.ka, %bb.jz, %bb.jy
  %.0.i62.ph.1 = phi i32 [ %i.dgy, %bb.ka ], [ %i.djb, %bb.jy ], [ %i.djb, %bb.jz ], [ %i.dke, %bb.kc ], [ %i.djb, %bb.kb ]
  %i.dkf = zext nneg i32 %.0.i62.ph.1 to i64
  %i.dkg = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.dkf
  %i.dkh = load ptr, ptr %i.dkg, align 8, !tbaa !182
  call void %i.dkh(ptr noundef %i.diy, ptr noundef nonnull %.1.i11.1, i64 noundef %i.dix) #12, !inline_history !10
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %check_intra_pred4x4_mode_emuedge.exit.thread301.1
  %i.dki = getelementptr inbounds nuw i8, ptr %i.dha, i64 1
  %i.dkj = load i8, ptr %i.dki, align 1, !tbaa !135
  switch i8 %i.dkj, label %bb.kf [
    i8 0, label %bb.kg
    i8 1, label %.sink.split1128.1
  ]

bb.kf:                                            ; preds = %bb.ke
  br label %.sink.split1128.1

.sink.split1128.1:                                ; preds = %bb.kf, %bb.ke
  %.sink1131.in.1 = phi ptr [ %i.gs, %bb.kf ], [ %i.gr, %bb.ke ]
  %.sink1131.1 = load ptr, ptr %.sink1131.in.1, align 8, !tbaa !182
  %i.dkk = getelementptr inbounds nuw i8, ptr %i.dhb, i64 32
  %i.dkl = load i64, ptr %i.ah, align 8, !tbaa !118
  call void %.sink1131.1(ptr noundef %i.diy, ptr noundef nonnull %i.dkk, i64 noundef %i.dkl) #12
  br label %bb.kg

bb.kg:                                            ; preds = %.sink.split1128.1, %bb.ke
  %.1.i11.sroa.sel.v.sroa.sel.v.sroa.sel.sroa.gep = getelementptr inbounds nuw i8, ptr %.1.i11.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.dkm = load i64, ptr %i.ah, align 8, !tbaa !118 ; 4 uses
  %i.dkn = getelementptr i8, ptr %.0183.i534, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %.1.i11.2 = select i1 %or.cond5.i9, ptr %i.b, ptr %.1.i11.sroa.sel.v.sroa.sel.v.sroa.sel.sroa.gep ; 2 uses
  %i.dko = getelementptr inbounds nuw i8, ptr %.0182.i535, i64 2
  %i.dkp = load i8, ptr %i.dko, align 1, !tbaa !135 ; 3 uses
  %i.dkq = zext i8 %i.dkp to i32                  ; 4 uses
  switch i8 %i.dkp, label %bb.kl [
    i8 0, label %bb.kk
    i8 3, label %bb.kk
    i8 7, label %bb.kk
    i8 1, label %bb.kj
    i8 6, label %bb.kh
    i8 9, label %bb.ki
    i8 2, label %bb.kh
    i8 4, label %bb.kh
    i8 5, label %bb.kh
  ]

bb.kh:                                            ; preds = %bb.kg, %bb.kg, %bb.kg, %bb.kg
  br i1 %i.dgx, label %bb.kl, label %check_intra_pred4x4_mode_emuedge.exit.thread301.2

bb.ki:                                            ; preds = %bb.kg
  br label %bb.kl

bb.kj:                                            ; preds = %bb.kg
  br i1 %i.dgx, label %bb.kl, label %check_intra_pred4x4_mode_emuedge.exit.thread301.2

check_intra_pred4x4_mode_emuedge.exit.thread301.2: ; preds = %bb.kh, %bb.kj
  store i8 127, ptr %i.gi, align 1, !tbaa !135
  store i32 2139062143, ptr %i.gh, align 4, !tbaa !135
  %i.dkr = getelementptr i8, ptr %.0183.i534, i64 7
  %i.dks = load i8, ptr %i.dkr, align 1, !tbaa !135
  store i8 %i.dks, ptr %i.gj, align 1, !tbaa !135
  %i.dkt = getelementptr i8, ptr %.0183.i534, i64 %i.dkm
  %i.dku = getelementptr i8, ptr %i.dkt, i64 7
  %i.dkv = load i8, ptr %i.dku, align 1, !tbaa !135
  store i8 %i.dkv, ptr %i.gk, align 1, !tbaa !135
  %i.dkw = shl nsw i64 %i.dkm, 1
  %i.dkx = getelementptr i8, ptr %.0183.i534, i64 %i.dkw
  %i.dky = getelementptr i8, ptr %i.dkx, i64 7
  %i.dkz = load i8, ptr %i.dky, align 1, !tbaa !135
  store i8 %i.dkz, ptr %i.gl, align 1, !tbaa !135
  %i.dla = mul nsw i64 %i.dkm, 3
  %i.dlb = getelementptr i8, ptr %.0183.i534, i64 %i.dla
  %i.dlc = getelementptr i8, ptr %i.dlb, i64 7
  %i.dld = load i8, ptr %i.dlc, align 1, !tbaa !135
  store i8 %i.dld, ptr %i.gm, align 1, !tbaa !135
  %i.dle = zext i8 %i.dkp to i64
  %i.dlf = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.dle
  %i.dlg = load ptr, ptr %i.dlf, align 8, !tbaa !182
  call void %i.dlg(ptr noundef nonnull %i.gg, ptr noundef nonnull %.1.i11.2, i64 noundef 8) #12, !inline_history !10
  %i.dlh = load i32, ptr %i.gg, align 4, !tbaa !135
  store i32 %i.dlh, ptr %i.dkn, align 4, !tbaa !135
  %i.dli = load i32, ptr %i.go, align 4, !tbaa !135
  %i.dlj = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.dlk = getelementptr inbounds i8, ptr %i.dkn, i64 %i.dlj
  store i32 %i.dli, ptr %i.dlk, align 4, !tbaa !135
  %i.dll = load i32, ptr %i.gp, align 4, !tbaa !135
  %i.dlm = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.dln = shl nsw i64 %i.dlm, 1
  %i.dlo = getelementptr inbounds i8, ptr %i.dkn, i64 %i.dln
  store i32 %i.dll, ptr %i.dlo, align 4, !tbaa !135
  %i.dlp = load i32, ptr %i.gq, align 4, !tbaa !135
  %i.dlq = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.dlr = mul nsw i64 %i.dlq, 3
  %i.dls = getelementptr inbounds i8, ptr %i.dkn, i64 %i.dlr
  store i32 %i.dlp, ptr %i.dls, align 4, !tbaa !135
  br label %bb.km

bb.kk:                                            ; preds = %bb.kg, %bb.kg, %bb.kg
  %i.dlt = select i1 %i.dgx, i32 %i.dkq, i32 12
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kj, %bb.kk, %bb.ki, %bb.kh, %bb.kg
  %.0.i62.ph.2 = phi i32 [ %i.dgy, %bb.ki ], [ %i.dkq, %bb.kg ], [ %i.dkq, %bb.kh ], [ %i.dlt, %bb.kk ], [ %i.dkq, %bb.kj ]
  %i.dlu = zext nneg i32 %.0.i62.ph.2 to i64
  %i.dlv = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.dlu
  %i.dlw = load ptr, ptr %i.dlv, align 8, !tbaa !182
  call void %i.dlw(ptr noundef %i.dkn, ptr noundef nonnull %.1.i11.2, i64 noundef %i.dkm) #12, !inline_history !10
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %check_intra_pred4x4_mode_emuedge.exit.thread301.2
  %i.dlx = getelementptr inbounds nuw i8, ptr %i.dha, i64 2
  %i.dly = load i8, ptr %i.dlx, align 1, !tbaa !135
  switch i8 %i.dly, label %bb.kn [
    i8 0, label %.peel.begin
    i8 1, label %.sink.split1128.2
  ]

bb.kn:                                            ; preds = %bb.km
  br label %.sink.split1128.2

.sink.split1128.2:                                ; preds = %bb.kn, %bb.km
  %.sink1131.in.2 = phi ptr [ %i.gs, %bb.kn ], [ %i.gr, %bb.km ]
  %.sink1131.2 = load ptr, ptr %.sink1131.in.2, align 8, !tbaa !182
  %i.dlz = getelementptr inbounds nuw i8, ptr %i.dhb, i64 64
  %i.dma = load i64, ptr %i.ah, align 8, !tbaa !118
  call void %.sink1131.2(ptr noundef %i.dkn, ptr noundef nonnull %i.dlz, i64 noundef %i.dma) #12
  br label %.peel.begin

.peel.begin:                                      ; preds = %.sink.split1128.2, %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.dmb = load i64, ptr %i.ah, align 8, !tbaa !118 ; 4 uses
  %i.dmc = getelementptr i8, ptr %.0183.i534, i64 12 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.dmd = getelementptr inbounds nuw i8, ptr %.0182.i535, i64 3
  %i.dme = load i8, ptr %i.dmd, align 1, !tbaa !135 ; 3 uses
  %i.dmf = zext i8 %i.dme to i32                  ; 3 uses
  switch i8 %i.dme, label %bb.kt [
    i8 0, label %bb.kr
    i8 3, label %bb.kr
    i8 7, label %bb.kr
    i8 1, label %bb.kq
    i8 6, label %bb.ko
    i8 9, label %bb.kp
    i8 2, label %bb.ko
    i8 4, label %bb.ko
    i8 5, label %bb.ko
  ]

bb.ko:                                            ; preds = %.peel.begin, %.peel.begin, %.peel.begin, %.peel.begin
  br i1 %i.dgx, label %bb.kt, label %bb.ks

bb.kp:                                            ; preds = %.peel.begin
  br label %bb.kt

bb.kq:                                            ; preds = %.peel.begin
  br i1 %i.dgx, label %bb.kt, label %bb.ks

bb.kr:                                            ; preds = %.peel.begin, %.peel.begin, %.peel.begin
  %i.dmg = select i1 %i.dgx, i32 %i.dmf, i32 12
  br label %bb.kt

bb.ks:                                            ; preds = %bb.ko, %bb.kq
  store i8 127, ptr %i.gi, align 1, !tbaa !135
  store i32 2139062143, ptr %i.gh, align 4, !tbaa !135
  %i.dmh = getelementptr i8, ptr %.0183.i534, i64 11
  %i.dmi = load i8, ptr %i.dmh, align 1, !tbaa !135
  store i8 %i.dmi, ptr %i.gj, align 1, !tbaa !135
  %i.dmj = getelementptr i8, ptr %.0183.i534, i64 %i.dmb
  %i.dmk = getelementptr i8, ptr %i.dmj, i64 11
  %i.dml = load i8, ptr %i.dmk, align 1, !tbaa !135
  store i8 %i.dml, ptr %i.gk, align 1, !tbaa !135
  %i.dmm = shl nsw i64 %i.dmb, 1
  %i.dmn = getelementptr i8, ptr %.0183.i534, i64 %i.dmm
  %i.dmo = getelementptr i8, ptr %i.dmn, i64 11
  %i.dmp = load i8, ptr %i.dmo, align 1, !tbaa !135
  store i8 %i.dmp, ptr %i.gl, align 1, !tbaa !135
  %i.dmq = mul nsw i64 %i.dmb, 3
  %i.dmr = getelementptr i8, ptr %.0183.i534, i64 %i.dmq
  %i.dms = getelementptr i8, ptr %i.dmr, i64 11
  %i.dmt = load i8, ptr %i.dms, align 1, !tbaa !135
  store i8 %i.dmt, ptr %i.gm, align 1, !tbaa !135
  %i.dmu = zext nneg i8 %i.dme to i64
  %i.dmv = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.dmu
  %i.dmw = load ptr, ptr %i.dmv, align 8, !tbaa !182
  call void %i.dmw(ptr noundef nonnull %i.gg, ptr noundef nonnull %.1.i11.peel, i64 noundef 8) #12, !inline_history !10
  %i.dmx = load i32, ptr %i.gg, align 4, !tbaa !135
  store i32 %i.dmx, ptr %i.dmc, align 4, !tbaa !135
  %i.dmy = load i32, ptr %i.go, align 4, !tbaa !135
  %i.dmz = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.dna = getelementptr inbounds i8, ptr %i.dmc, i64 %i.dmz
  store i32 %i.dmy, ptr %i.dna, align 4, !tbaa !135
  %i.dnb = load i32, ptr %i.gp, align 4, !tbaa !135
  %i.dnc = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.dnd = shl nsw i64 %i.dnc, 1
  %i.dne = getelementptr inbounds i8, ptr %i.dmc, i64 %i.dnd
  store i32 %i.dnb, ptr %i.dne, align 4, !tbaa !135
  %i.dnf = load i32, ptr %i.gq, align 4, !tbaa !135
  %i.dng = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.dnh = mul nsw i64 %i.dng, 3
  %i.dni = getelementptr inbounds i8, ptr %i.dmc, i64 %i.dnh
  store i32 %i.dnf, ptr %i.dni, align 4, !tbaa !135
  br label %bb.ku

bb.kt:                                            ; preds = %bb.kq, %bb.kr, %bb.kp, %bb.ko, %.peel.begin
  %.0.i62.ph.peel = phi i32 [ %i.dgy, %bb.kp ], [ %i.dmf, %.peel.begin ], [ %i.dmf, %bb.ko ], [ %i.dmg, %bb.kr ], [ 1, %bb.kq ]
  %i.dnj = zext nneg i32 %.0.i62.ph.peel to i64
  %i.dnk = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.dnj
  %i.dnl = load ptr, ptr %i.dnk, align 8, !tbaa !182
  call void %i.dnl(ptr noundef %i.dmc, ptr noundef nonnull %.1.i11.peel, i64 noundef %i.dmb) #12, !inline_history !10
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.ks
  %i.dnm = getelementptr inbounds nuw i8, ptr %i.dha, i64 3
  %i.dnn = load i8, ptr %i.dnm, align 1, !tbaa !135
  switch i8 %i.dnn, label %bb.kv [
    i8 0, label %.peel.next
    i8 1, label %.peel.next.sink.split
  ]

bb.kv:                                            ; preds = %bb.ku
  br label %.peel.next.sink.split

.peel.next.sink.split:                            ; preds = %bb.ku, %bb.kv
  %.sink1134.in = phi ptr [ %i.gs, %bb.kv ], [ %i.gr, %bb.ku ]
  %.sink1134 = load ptr, ptr %.sink1134.in, align 8, !tbaa !182
  %i.dno = getelementptr inbounds nuw i8, ptr %i.dhb, i64 96
end_hunk_1
begin_hunk_2_@vp8_decode_block_coeffs_internal:bb.a
  %i.kw = ashr i32 %i.kv, 8
  %i.kx = add nsw i32 %i.kw, 1                    ; 3 uses
  %i.ky = shl i32 %i.kx, 16                       ; 2 uses
  %i.kz = icmp uge i32 %.0.i69.i, %i.ky           ; 4 uses
  %i.la = sub i32 %i.kh, %i.kx
  %i.lb = select i1 %i.kz, i32 %i.ky, i32 0
  %i.lc = select i1 %i.kz, i32 %i.la, i32 %i.kx   ; 2 uses
  %i.ld = sub i32 %.0.i69.i, %i.lb
  %i.le = zext i1 %i.kz to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %.140.i, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 9
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !135
  %i.li = sext i32 %i.lc to i64
  %i.lj = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !135
  %i.ll = zext i8 %i.lk to i32                    ; 3 uses
  %i.lm = shl i32 %i.lc, %i.ll                    ; 2 uses
  %i.ln = shl i32 %i.ld, %i.ll                    ; 2 uses
  %i.lo = add nsw i32 %.018.i68.i, %i.ll          ; 4 uses
  %i.lp = icmp sgt i32 %i.lo, -1
  %i.lq = icmp ult ptr %.sroa.100.5, %.sroa.144.0.copyload
  %or.cond164 = select i1 %i.lp, i1 %i.lq, i1 false
  br i1 %or.cond164, label %bb.z, label %vpx_rac_renorm.exit73.i

bb.z:                                             ; preds = %vpx_rac_renorm.exit70.i
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.100.5, i64 2
  %i.ls = load i16, ptr %.sroa.100.5, align 1, !tbaa !135
  %i.lt = tail call i16 @llvm.bswap.i16(i16 %i.ls)
  %i.lu = zext i16 %i.lt to i32
  %i.lv = shl i32 %i.lu, %i.lo
  %i.lw = or i32 %i.lv, %i.ln
  %i.lx = add nsw i32 %i.lo, -16
  br label %vpx_rac_renorm.exit73.i

vpx_rac_renorm.exit73.i:                          ; preds = %bb.z, %vpx_rac_renorm.exit70.i
  %.sroa.100.6 = phi ptr [ %i.lr, %bb.z ], [ %.sroa.100.5, %vpx_rac_renorm.exit70.i ]
  %.018.i71.i = phi i32 [ %i.lx, %bb.z ], [ %i.lo, %vpx_rac_renorm.exit70.i ]
  %.0.i72.i = phi i32 [ %i.lw, %bb.z ], [ %i.ln, %vpx_rac_renorm.exit70.i ] ; 2 uses
  %i.ly = add nsw i32 %i.lm, -1
  %i.lz = zext i8 %i.lh to i32
  %i.ma = mul nsw i32 %i.ly, %i.lz
  %i.mb = ashr i32 %i.ma, 8
  %i.mc = add nsw i32 %i.mb, 1                    ; 3 uses
  %i.md = shl i32 %i.mc, 16                       ; 2 uses
  %i.me = icmp uge i32 %.0.i72.i, %i.md           ; 3 uses
  %i.mf = sub i32 %i.lm, %i.mc
  %i.mg = select i1 %i.me, i32 %i.md, i32 0
  %i.mh = select i1 %i.me, i32 %i.mf, i32 %i.mc
  %i.mi = zext i1 %i.me to i32
  %i.mj = sub i32 %.0.i72.i, %i.mg
  %i.mk = select i1 %i.kz, i32 2, i32 0
  %i.ml = or disjoint i32 %i.mk, %i.mi            ; 2 uses
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr @ff_vp8_dct_cat_prob, i64 %i.mm
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !141 ; 2 uses
  %.pre.i = load i8, ptr %i.mo, align 1, !tbaa !135
  br label %bb.aa

bb.aa:                                            ; preds = %vpx_rac_renorm.exit.i5, %vpx_rac_renorm.exit73.i
  %.sroa.100.18 = phi ptr [ %.sroa.100.6, %vpx_rac_renorm.exit73.i ], [ %.sroa.100.19, %vpx_rac_renorm.exit.i5 ] ; 4 uses
  %i.mp = phi i8 [ %.pre.i, %vpx_rac_renorm.exit73.i ], [ %i.nx, %vpx_rac_renorm.exit.i5 ]
  %i.mq = phi i32 [ %i.mj, %vpx_rac_renorm.exit73.i ], [ %i.nv, %vpx_rac_renorm.exit.i5 ]
  %.018.i6.i = phi i32 [ %.018.i71.i, %vpx_rac_renorm.exit73.i ], [ %.018.i.i6, %vpx_rac_renorm.exit.i5 ]
  %i.mr = phi i32 [ %i.mh, %vpx_rac_renorm.exit73.i ], [ %i.nt, %vpx_rac_renorm.exit.i5 ] ; 2 uses
  %.04.i = phi ptr [ %i.mo, %vpx_rac_renorm.exit73.i ], [ %i.mt, %vpx_rac_renorm.exit.i5 ]
  %.0.i = phi i32 [ 0, %vpx_rac_renorm.exit73.i ], [ %i.nw, %vpx_rac_renorm.exit.i5 ]
  %i.ms = shl i32 %.0.i, 1
  %i.mt = getelementptr inbounds nuw i8, ptr %.04.i, i64 1 ; 2 uses
  %i.mu = sext i32 %i.mr to i64
  %i.mv = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !135
  %i.mx = zext i8 %i.mw to i32                    ; 3 uses
  %i.my = shl i32 %i.mr, %i.mx                    ; 2 uses
  %i.mz = shl i32 %i.mq, %i.mx                    ; 2 uses
  %i.na = add nsw i32 %.018.i6.i, %i.mx           ; 4 uses
  %i.nb = icmp sgt i32 %i.na, -1
  %i.nc = icmp ult ptr %.sroa.100.18, %.sroa.144.0.copyload
  %or.cond165 = select i1 %i.nb, i1 %i.nc, i1 false
  br i1 %or.cond165, label %bb.ab, label %vpx_rac_renorm.exit.i5

bb.ab:                                            ; preds = %bb.aa
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.100.18, i64 2
  %i.ne = load i16, ptr %.sroa.100.18, align 1, !tbaa !135
  %i.nf = tail call i16 @llvm.bswap.i16(i16 %i.ne)
  %i.ng = zext i16 %i.nf to i32
  %i.nh = shl i32 %i.ng, %i.na
  %i.ni = or i32 %i.nh, %i.mz
  %i.nj = add nsw i32 %i.na, -16
  br label %vpx_rac_renorm.exit.i5

vpx_rac_renorm.exit.i5:                           ; preds = %bb.ab, %bb.aa
  %.sroa.100.19 = phi ptr [ %i.nd, %bb.ab ], [ %.sroa.100.18, %bb.aa ] ; 2 uses
  %.018.i.i6 = phi i32 [ %i.nj, %bb.ab ], [ %i.na, %bb.aa ] ; 2 uses
  %.0.i.i7 = phi i32 [ %i.ni, %bb.ab ], [ %i.mz, %bb.aa ] ; 2 uses
  %i.nk = add nsw i32 %i.my, -1
  %i.nl = zext i8 %i.mp to i32
  %i.nm = mul nsw i32 %i.nk, %i.nl
  %i.nn = ashr i32 %i.nm, 8
  %i.no = add nsw i32 %i.nn, 1                    ; 3 uses
  %i.np = shl i32 %i.no, 16                       ; 2 uses
  %i.nq = icmp uge i32 %.0.i.i7, %i.np            ; 3 uses
  %i.nr = sub i32 %i.my, %i.no
  %i.ns = select i1 %i.nq, i32 %i.np, i32 0
  %i.nt = select i1 %i.nq, i32 %i.nr, i32 %i.no   ; 2 uses
  %i.nu = zext i1 %i.nq to i32
  %i.nv = sub i32 %.0.i.i7, %i.ns                 ; 2 uses
  %i.nw = or disjoint i32 %i.ms, %i.nu            ; 2 uses
  %i.nx = load i8, ptr %i.mt, align 1, !tbaa !135 ; 2 uses
  %.not.i8 = icmp eq i8 %i.nx, 0
  br i1 %.not.i8, label %vp8_rac_get_coeff.exit, label %bb.aa, !llvm.loop !30

vp8_rac_get_coeff.exit:                           ; preds = %vpx_rac_renorm.exit.i5
  %i.ny = shl nuw nsw i32 8, %i.ml
  %i.nz = or disjoint i32 %i.ny, 3
  %i.oa = add nsw i32 %i.nz, %i.nw
  br label %vpx_rac_get_prob_branchy.exit91.i.thread

vpx_rac_get_prob_branchy.exit91.i.thread:         ; preds = %vpx_rac_renorm.exit.i, %vpx_rac_renorm.exit61.i, %vpx_rac_renorm.exit67.i, %vp8_rac_get_coeff.exit, %vpx_rac_renorm.exit.i85.i, %vpx_rac_renorm.exit.i99.i
  %.sink199 = phi i64 [ 44, %vpx_rac_renorm.exit.i99.i ], [ 55, %vpx_rac_renorm.exit.i85.i ], [ 55, %vp8_rac_get_coeff.exit ], [ 55, %vpx_rac_renorm.exit67.i ], [ 55, %vpx_rac_renorm.exit61.i ], [ 55, %vpx_rac_renorm.exit.i ]
  %.sroa.159.6 = phi i32 [ %.0.i.i101.i, %vpx_rac_renorm.exit.i99.i ], [ %.0.i.i87.i, %vpx_rac_renorm.exit.i85.i ], [ %i.nv, %vp8_rac_get_coeff.exit ], [ %i.jy, %vpx_rac_renorm.exit67.i ], [ %i.hv, %vpx_rac_renorm.exit61.i ], [ %i.ey, %vpx_rac_renorm.exit.i ]
  %.sroa.100.8 = phi ptr [ %.sroa.100.2, %vpx_rac_renorm.exit.i99.i ], [ %.sroa.100.15, %vpx_rac_renorm.exit.i85.i ], [ %.sroa.100.19, %vp8_rac_get_coeff.exit ], [ %.sroa.100.13, %vpx_rac_renorm.exit67.i ], [ %.sroa.100.14, %vpx_rac_renorm.exit61.i ], [ %.sroa.100.16, %vpx_rac_renorm.exit.i ] ; 4 uses
  %.sroa.70.2 = phi i32 [ %.018.i.i100.i, %vpx_rac_renorm.exit.i99.i ], [ %.018.i.i86.i, %vpx_rac_renorm.exit.i85.i ], [ %.018.i.i6, %vp8_rac_get_coeff.exit ], [ %.018.i65.i, %vpx_rac_renorm.exit67.i ], [ %.018.i59.i, %vpx_rac_renorm.exit61.i ], [ %.018.i.i, %vpx_rac_renorm.exit.i ]
  %.sroa.0.6 = phi i32 [ %i.bx, %vpx_rac_renorm.exit.i99.i ], [ %i.du, %vpx_rac_renorm.exit.i85.i ], [ %i.nt, %vp8_rac_get_coeff.exit ], [ %i.jw, %vpx_rac_renorm.exit67.i ], [ %i.hu, %vpx_rac_renorm.exit61.i ], [ %i.ex, %vpx_rac_renorm.exit.i ] ; 2 uses
  %.244.i = phi i32 [ 1, %vpx_rac_renorm.exit.i99.i ], [ 2, %vpx_rac_renorm.exit.i85.i ], [ %i.oa, %vp8_rac_get_coeff.exit ], [ %i.jz, %vpx_rac_renorm.exit67.i ], [ %i.hw, %vpx_rac_renorm.exit61.i ], [ %i.ez, %vpx_rac_renorm.exit.i ] ; 2 uses
  %i.ob = sext i32 %.1.i to i64
  %i.oc = getelementptr [33 x i8], ptr %2, i64 %i.ob
  %i.od = getelementptr i8, ptr %i.oc, i64 %.sink199 ; 2 uses
  %i.oe = sext i32 %.sroa.0.6 to i64
  %i.of = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1, !tbaa !135
  %i.oh = zext i8 %i.og to i32                    ; 3 uses
  %i.oi = shl i32 %.sroa.0.6, %i.oh               ; 2 uses
  %i.oj = shl i32 %.sroa.159.6, %i.oh             ; 2 uses
  %i.ok = add nsw i32 %.sroa.70.2, %i.oh          ; 4 uses
  %i.ol = icmp sgt i32 %i.ok, -1
  %i.om = icmp ult ptr %.sroa.100.8, %.sroa.144.0.copyload
  %or.cond166 = select i1 %i.ol, i1 %i.om, i1 false
  br i1 %or.cond166, label %bb.ac, label %vpx_rac_renorm.exit76.i

bb.ac:                                            ; preds = %vpx_rac_get_prob_branchy.exit91.i.thread
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.100.8, i64 2
  %i.oo = load i16, ptr %.sroa.100.8, align 1, !tbaa !135
  %i.op = tail call i16 @llvm.bswap.i16(i16 %i.oo)
  %i.oq = zext i16 %i.op to i32
  %i.or = shl i32 %i.oq, %i.ok
  %i.os = or i32 %i.or, %i.oj
  %i.ot = add nsw i32 %i.ok, -16
  br label %vpx_rac_renorm.exit76.i

vpx_rac_renorm.exit76.i:                          ; preds = %bb.ac, %vpx_rac_get_prob_branchy.exit91.i.thread
  %.sroa.100.9 = phi ptr [ %i.on, %bb.ac ], [ %.sroa.100.8, %vpx_rac_get_prob_branchy.exit91.i.thread ] ; 5 uses
  %.018.i74.i = phi i32 [ %i.ot, %bb.ac ], [ %i.ok, %vpx_rac_get_prob_branchy.exit91.i.thread ] ; 2 uses
  %.0.i75.i = phi i32 [ %i.os, %bb.ac ], [ %i.oj, %vpx_rac_get_prob_branchy.exit91.i.thread ] ; 2 uses
  %i.ou = shl i32 %i.oi, 7
  %i.ov = add i32 %i.ou, -128
  %i.ow = ashr i32 %i.ov, 8
  %i.ox = add nsw i32 %i.ow, 1                    ; 3 uses
  %i.oy = shl i32 %i.ox, 16                       ; 2 uses
  %.not169 = icmp ult i32 %.0.i75.i, %i.oy        ; 3 uses
  %i.oz = sub i32 %i.oi, %i.ox
  %i.pa = select i1 %.not169, i32 0, i32 %i.oy
  %i.pb = select i1 %.not169, i32 %i.ox, i32 %i.oz ; 3 uses
  %i.pc = sub i32 %.0.i75.i, %i.pa                ; 2 uses
  %i.pd = sub nsw i32 0, %.244.i
  %i.pe = select i1 %.not169, i32 %.244.i, i32 %i.pd
  %i.pf = icmp ne i32 %.1.i, 0
  %i.pg = zext i1 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.pg
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !168
  %i.pj = trunc i32 %i.pe to i16
  %i.pk = mul i16 %i.pi, %i.pj
  %i.pl = sext i32 %.1.i to i64
  %i.pm = getelementptr inbounds i8, ptr @ff_zigzag_scan, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !135
  %i.po = zext i8 %i.pn to i64
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.po
  store i16 %i.pk, ptr %i.pp, align 2, !tbaa !168
  %i.pq = add nsw i32 %.1.i, 1                    ; 3 uses
  %i.pr = icmp slt i32 %.1.i, 15
  br i1 %i.pr, label %bb.b, label %decode_block_coeffs_internal.exit, !llvm.loop !31

decode_block_coeffs_internal.exit:                ; preds = %vpx_rac_renorm.exit.i113.i, %bb.e, %vpx_rac_renorm.exit76.i
  %.sroa.159.10 = phi i32 [ %.0.i.i108.i, %bb.e ], [ %i.pc, %vpx_rac_renorm.exit76.i ], [ %.0.i.i115.i, %vpx_rac_renorm.exit.i113.i ]
  %.sroa.100.17 = phi ptr [ %.sroa.100.1, %bb.e ], [ %.sroa.100.9, %vpx_rac_renorm.exit76.i ], [ %.sroa.100.10, %vpx_rac_renorm.exit.i113.i ]
  %.sroa.70.3 = phi i32 [ %.018.i.i107.i, %bb.e ], [ %.018.i74.i, %vpx_rac_renorm.exit76.i ], [ %.018.i.i114.i, %vpx_rac_renorm.exit.i113.i ]
  %.sroa.0.10 = phi i32 [ %i.au, %bb.e ], [ %i.pb, %vpx_rac_renorm.exit76.i ], [ %i.v, %vpx_rac_renorm.exit.i113.i ]
  %.2.i = phi i32 [ 16, %bb.e ], [ %i.pq, %vpx_rac_renorm.exit76.i ], [ %i.pq, %vpx_rac_renorm.exit.i113.i ]
  store i32 %.sroa.0.10, ptr %0, align 8, !tbaa !117
  store i32 %.sroa.70.3, ptr %.sroa.70.0..sroa_idx, align 4, !tbaa !117
  store ptr %.sroa.100.17, ptr %.sroa.100.0..sroa_idx, align 8, !tbaa !141
  store i32 %.sroa.159.10, ptr %.sroa.159.0..sroa_idx, align 8, !tbaa !117
  ret i32 %.2.i
}

declare void @ff_vp7dsp_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @vp7_decode_mb_row_no_filter(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [40 x i8], align 4                ; 18 uses
  %.sroa.0714 = alloca i8, align 1                ; 7 uses
  %.sroa.7715 = alloca i8, align 1                ; 6 uses
  %.sroa.10 = alloca i8, align 1                  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 107 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.g = sext i32 %3 to i64
  %i.h = getelementptr inbounds [1648 x i8], ptr %i.f, i64 %i.g ; 52 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 928 ; 5 uses
  %i.j = load atomic i32, ptr %i.i seq_cst, align 16 ; 2 uses
  %i.k = ashr i32 %i.j, 16                        ; 17 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 9 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !108
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %i.o = mul nsw i32 %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 6484
  %i.q = load i32, ptr %i.p, align 4, !tbaa !129  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !131  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !130  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 4768
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 4764
  %i.x = load i32, ptr %i.w, align 4, !tbaa !127
  %i.y = add nsw i32 %i.x, -1
  %i.z = and i32 %i.y, %i.k
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.aa ; 50 uses
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !103 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !141
  %i.ae = shl nsw i32 %i.k, 4                     ; 12 uses
  %i.af = sext i32 %i.ae to i64                   ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 50 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !118
  %i.ai = mul nsw i64 %i.ah, %i.af
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !141 ; 2 uses
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = shl nsw i32 %i.k, 3                     ; 9 uses
  %i.ao = sext i32 %i.an to i64                   ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 32 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !119
  %i.ar = mul nsw i64 %i.aq, %i.ao                ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !141 ; 2 uses
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.ar
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 312 ; 91 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 328 ; 52 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !142
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 320 ; 102 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !143
  %.not.i300.i = icmp ugt ptr %i.az, %i.bb
  br i1 %.not.i300.i, label %vpx_rac_is_end.exit301.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 316
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !144
  %i.be = icmp sgt i32 %i.bd, -1
  br i1 %i.be, label %bb.c, label %vpx_rac_is_end.exit301.i

bb.c:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 340 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !145
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !145
  br label %vpx_rac_is_end.exit301.i

vpx_rac_is_end.exit301.i:                         ; preds = %bb.c, %bb.b, %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 340 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !145
  %i.bk = icmp slt i32 %i.bj, 11
  br i1 %i.bk, label %bb.d, label %decode_mb_row_no_filter.exit

bb.d:                                             ; preds = %vpx_rac_is_end.exit301.i
  %i.bl = icmp eq i32 %i.k, 0                     ; 10 uses
  br i1 %i.bl, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.bn = add i32 %i.q, -1
  %i.bo = add i32 %i.bn, %2
  %i.bp = srem i32 %i.bo, %i.q
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [1648 x i8], ptr %i.bm, i64 %i.bq
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0251.i = phi ptr [ %i.br, %bb.e ], [ %i.h, %bb.d ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 106 ; 4 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !109
  %i.bu = zext i16 %i.bt to i32                   ; 4 uses
  %i.bv = add nsw i32 %i.bu, -1
  %i.bw = icmp eq i32 %i.k, %i.bv
  br i1 %i.bw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.by = add nsw i32 %2, 1
  %i.bz = srem i32 %i.by, %i.q
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [1648 x i8], ptr %i.bx, i64 %i.ca
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0252.i = phi ptr [ %i.cb, %bb.g ], [ %i.h, %bb.f ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 6488 ; 4 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !121
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 4736
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !146
  %i.ch = add nuw nsw i32 %i.n, 1
  %i.ci = add nsw i32 %i.k, 1
  %i.cj = mul nsw i32 %i.ch, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [96 x i8], ptr %i.cg, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 96
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %.not264.i = icmp eq ptr %i.s, null
  br i1 %.not264.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 164
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !124
  %.not265.i = icmp eq i8 %i.co, 0
  br i1 %.not265.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 166
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !125
  %.not266.i = icmp eq i8 %i.cq, 0
  br i1 %.not266.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @ff_progress_frame_await(ptr noundef nonnull %i.s, i32 noundef %i.k) #12
  %.pre = load i16, ptr %i.bs, align 2, !tbaa !109
  %.pre737 = zext i16 %.pre to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.pre-phi = phi i32 [ %.pre737, %bb.m ], [ %i.bu, %bb.l ], [ %i.bu, %bb.k ], [ %i.bu, %bb.j ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !122
  %i.ct = xor i32 %i.k, -1
  %i.cu = add nsw i32 %.pre-phi, %i.ct
  %i.cv = shl nsw i32 %i.cu, 1
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [96 x i8], ptr %i.cs, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.cy, i8 0, i64 96, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store i32 33686018, ptr %i.cz, align 8, !tbaa !135
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.0255.i = phi ptr [ %i.cm, %bb.i ], [ %i.cx, %bb.n ]
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.da, i8 0, i64 9, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 1624 ; 3 uses
  store i32 -64, ptr %i.db, align 8, !tbaa !149
  %i.dc = load i16, ptr %i.l, align 8, !tbaa !108 ; 2 uses
  %i.dd = zext i16 %i.dc to i32                   ; 2 uses
  %i.de = shl nuw nsw i32 %i.dd, 6
  %i.df = getelementptr inbounds nuw i8, ptr %i.h, i64 1632 ; 3 uses
  store i32 %i.de, ptr %i.df, align 16, !tbaa !150
  %.not575 = icmp eq i16 %i.dc, 0
  br i1 %.not575, label %decode_mb_row_no_filter.exit, label %.lr.ph570

.lr.ph570:                                        ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 316 ; 64 uses
  %.not268.i = icmp eq ptr %.0251.i, %i.h         ; 5 uses
  %.not269.i = icmp eq i32 %3, 0
  %i.dh = and i32 %i.j, -65536                    ; 3 uses
  %i.di = add i32 %i.dh, -131072                  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0251.i, i64 928 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0251.i, i64 840 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 932 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0251.i, i64 880 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 5064 ; 8 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 6520
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 6524
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 74 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 6528
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 6540
end_hunk_2
begin_hunk_3_@vp7_decode_mb_row_no_filter:bb.a
  store i8 %i.cvv, ptr %i.cvw, align 1, !tbaa !135
  %i.cvx = icmp ne i32 %.0.i35.1.1, 0
  %i.cvy = zext i1 %i.cvx to i8                   ; 2 uses
  store i8 %i.cvy, ptr %i.cst, align 1, !tbaa !135
  store i8 %i.cvy, ptr %i.cre, align 1, !tbaa !135
  %i.cvz = add nsw i32 %.0.i35.1.1, %i.cuj        ; 2 uses
  br i1 %exitcond654.not, label %bb.hw, label %.preheader446, !llvm.loop !9

bb.hw:                                            ; preds = %decode_block_coeffs.exit36.1.1
  %.not116.i = icmp eq i32 %i.cvz, 0
  br i1 %.not116.i, label %bb.hx, label %decode_mb_coeffs.exit

bb.hx:                                            ; preds = %bb.hw
  store i8 1, ptr %.1.i564, align 4, !tbaa !160
  br label %decode_mb_coeffs.exit

decode_mb_coeffs.exit:                            ; preds = %bb.hx, %bb.hw, %prefetch_motion.exit4
  %i.cwa = getelementptr inbounds nuw i8, ptr %.1.i564, i64 1 ; 5 uses
  %i.cwb = load i8, ptr %i.cwa, align 1, !tbaa !161
  %i.cwc = icmp ult i8 %i.cwb, 5
  br i1 %i.cwc, label %bb.hy, label %bb.km

bb.hy:                                            ; preds = %decode_mb_coeffs.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br i1 %i.bl, label %xchg_mb_border.exit, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.cwd = load i8, ptr %i.fy, align 1, !tbaa !98
  %i.cwe = icmp eq i8 %i.cwd, 0
  br i1 %i.cwe, label %xchg_mb_border.exit, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.cwf = load i32, ptr %i.fz, align 4, !tbaa !179
  %i.cwg = icmp eq i32 %i.cwf, 0
  br i1 %i.cwg, label %bb.ib, label %xchg_mb_border.exit

bb.ib:                                            ; preds = %bb.ia
  %i.cwh = load ptr, ptr %i.ga, align 8, !tbaa !180
  %i.cwi = getelementptr [32 x i8], ptr %i.cwh, i64 %indvars.iv701 ; 8 uses
  %i.cwj = getelementptr i8, ptr %i.cwi, i64 32   ; 2 uses
  %i.cwk = load i64, ptr %i.ag, align 8, !tbaa !118
  %i.cwl = load i64, ptr %i.ap, align 8, !tbaa !119
  %i.cwm = load i16, ptr %i.l, align 8, !tbaa !108
  %i.cwn = zext i16 %i.cwm to i64
  %i.cwo = load i8, ptr %i.gb, align 8, !tbaa !181
  %i.cwp = sub i64 0, %i.cwk
  %i.cwq = getelementptr inbounds i8, ptr %i.jn, i64 %i.cwp ; 5 uses
  %i.cwr = sub i64 0, %i.cwl                      ; 2 uses
  %i.cws = getelementptr inbounds i8, ptr %.sroa.4.0, i64 %i.cwr ; 3 uses
  %i.cwt = getelementptr inbounds i8, ptr %.sroa.7.0718, i64 %i.cwr ; 3 uses
  %i.cwu = getelementptr i8, ptr %i.cwi, i64 8    ; 2 uses
  %.sroa.015.0.copyload.i = load i64, ptr %i.cwu, align 8, !tbaa !135
  %i.cwv = getelementptr inbounds i8, ptr %i.cwq, i64 -8 ; 2 uses
  %i.cww = load i64, ptr %i.cwv, align 8, !tbaa !135
  store i64 %i.cww, ptr %i.cwu, align 8, !tbaa !135
  store i64 %.sroa.015.0.copyload.i, ptr %i.cwv, align 8, !tbaa !135
  %.sroa.013.0.copyload.i = load i64, ptr %i.cwj, align 8, !tbaa !135
  %i.cwx = load i64, ptr %i.cwq, align 8, !tbaa !135
  store i64 %i.cwx, ptr %i.cwj, align 8, !tbaa !135
  store i64 %.sroa.013.0.copyload.i, ptr %i.cwq, align 8, !tbaa !135
  %i.cwy = getelementptr i8, ptr %i.cwi, i64 40   ; 2 uses
  %.sroa.011.0.copyload.i = load i64, ptr %i.cwy, align 8, !tbaa !135
  %i.cwz = getelementptr inbounds nuw i8, ptr %i.cwq, i64 8 ; 2 uses
  %i.cxa = load i64, ptr %i.cwz, align 8, !tbaa !135
  store i64 %i.cxa, ptr %i.cwy, align 8, !tbaa !135
  store i64 %.sroa.011.0.copyload.i, ptr %i.cwz, align 8, !tbaa !135
  %i.cxb = add nsw i64 %i.cwn, -1
  %i.cxc = icmp slt i64 %indvars.iv701, %i.cxb
  br i1 %i.cxc, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.cxd = getelementptr i8, ptr %i.cwi, i64 64   ; 2 uses
  %.sroa.09.0.copyload.i = load i64, ptr %i.cxd, align 8, !tbaa !135
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cwq, i64 16 ; 2 uses
  %i.cxf = load i64, ptr %i.cxe, align 8, !tbaa !135
  store i64 %i.cxf, ptr %i.cxd, align 8, !tbaa !135
  store i64 %.sroa.09.0.copyload.i, ptr %i.cxe, align 8, !tbaa !135
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.not = icmp eq i8 %i.cwo, 0
  br i1 %.not, label %bb.ie, label %xchg_mb_border.exit

bb.ie:                                            ; preds = %bb.id
  %i.cxg = getelementptr i8, ptr %i.cwi, i64 16   ; 2 uses
  %.sroa.07.0.copyload.i = load i64, ptr %i.cxg, align 8, !tbaa !135
  %i.cxh = getelementptr inbounds i8, ptr %i.cws, i64 -8 ; 2 uses
  %i.cxi = load i64, ptr %i.cxh, align 8, !tbaa !135
  store i64 %i.cxi, ptr %i.cxg, align 8, !tbaa !135
  store i64 %.sroa.07.0.copyload.i, ptr %i.cxh, align 8, !tbaa !135
  %i.cxj = getelementptr i8, ptr %i.cwi, i64 24   ; 2 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.cxj, align 8, !tbaa !135
  %i.cxk = getelementptr inbounds i8, ptr %i.cwt, i64 -8 ; 2 uses
  %i.cxl = load i64, ptr %i.cxk, align 8, !tbaa !135
  store i64 %i.cxl, ptr %i.cxj, align 8, !tbaa !135
  store i64 %.sroa.05.0.copyload.i, ptr %i.cxk, align 8, !tbaa !135
  %i.cxm = getelementptr i8, ptr %i.cwi, i64 48   ; 2 uses
  %.sroa.03.0.copyload.i = load i64, ptr %i.cxm, align 8, !tbaa !135
  %i.cxn = load i64, ptr %i.cws, align 8, !tbaa !135
  store i64 %i.cxn, ptr %i.cxm, align 8, !tbaa !135
  store i64 %.sroa.03.0.copyload.i, ptr %i.cws, align 8, !tbaa !135
  %i.cxo = getelementptr i8, ptr %i.cwi, i64 56   ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.cxo, align 8, !tbaa !135
  %i.cxp = load i64, ptr %i.cwt, align 8, !tbaa !135
  store i64 %i.cxp, ptr %i.cxo, align 8, !tbaa !135
  store i64 %.sroa.0.0.copyload.i, ptr %i.cwt, align 8, !tbaa !135
  br label %xchg_mb_border.exit

xchg_mb_border.exit:                              ; preds = %bb.ie, %bb.id, %bb.ia, %bb.hz, %bb.hy
  %i.cxq = load i8, ptr %i.cwa, align 1, !tbaa !161 ; 2 uses
  %i.cxr = icmp ult i8 %i.cxq, 4
  br i1 %i.cxr, label %bb.if, label %bb.ij

bb.if:                                            ; preds = %xchg_mb_border.exit
  switch i8 %i.cxq, label %default.unreachable1066 [
    i8 0, label %bb.ig
    i8 2, label %check_intra_pred8x8_mode_emuedge.exit
    i8 1, label %bb.ih
    i8 3, label %bb.ii
  ]

bb.ig:                                            ; preds = %bb.if
  %.not.i67 = icmp eq i64 %indvars.iv701, 0
  %.0.i70 = select i1 %.not.i67, i64 %i.gs, i64 %i.gr
  br label %check_intra_pred8x8_mode_emuedge.exit

bb.ih:                                            ; preds = %bb.if
  %.not.i56 = icmp eq i64 %indvars.iv701, 0
  %i.cxs = select i1 %.not.i56, i64 6, i64 1
  br label %check_intra_pred8x8_mode_emuedge.exit

bb.ii:                                            ; preds = %bb.if
  %.not.i74 = icmp eq i64 %indvars.iv701, 0
  %. = select i1 %.not.i74, i64 %i.gq, i64 %i.gp
  br label %check_intra_pred8x8_mode_emuedge.exit

default.unreachable1066:                          ; preds = %bb.if
  unreachable

check_intra_pred8x8_mode_emuedge.exit:            ; preds = %bb.ii, %bb.if, %bb.ig, %bb.ih
  %.0.i55 = phi i64 [ %., %bb.ii ], [ %.0.i70, %bb.ig ], [ %i.gq, %bb.if ], [ %i.cxs, %bb.ih ]
  %i.cxt = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.0.i55
  %i.cxu = load ptr, ptr %i.cxt, align 8, !tbaa !182
  %i.cxv = load i64, ptr %i.ag, align 8, !tbaa !118
  call void %i.cxu(ptr noundef %i.jn, i64 noundef %i.cxv) #12, !inline_history !10
  br label %bb.kb

bb.ij:                                            ; preds = %xchg_mb_border.exit
  %i.cxw = getelementptr inbounds nuw i8, ptr %.1.i564, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 -2139062144, ptr %i.b, align 4
  %i.cxx = load i64, ptr %i.ag, align 8, !tbaa !118 ; 2 uses
  %i.cxy = sub i64 0, %i.cxx
  %i.cxz = getelementptr inbounds i8, ptr %i.jn, i64 %i.cxy ; 2 uses
  br i1 %i.bl, label %bb.im, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cxz, i64 16
  %i.cyb = load i16, ptr %i.l, align 8, !tbaa !108
  %i.cyc = zext i16 %i.cyb to i64
  %i.cyd = add nuw nsw i64 %i.cyc, 4294967295
  %i.cye = and i64 %i.cyd, 4294967295
  %i.cyf = icmp eq i64 %indvars.iv701, %i.cye
  br i1 %i.cyf, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cxz, i64 15
  %i.cyh = load i8, ptr %i.cyg, align 1, !tbaa !135
  %i.cyi = zext i8 %i.cyh to i32
  %i.cyj = mul nuw i32 %i.cyi, 16843009
  store i32 %i.cyj, ptr %i.a, align 4, !tbaa !117
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik, %bb.ij
  %.1.i11.peel = phi ptr [ %i.a, %bb.il ], [ %i.cya, %bb.ik ], [ %i.b, %bb.ij ] ; 2 uses
  %i.cyk = load i8, ptr %.1.i564, align 4, !tbaa !160
  %.not191.i = icmp eq i8 %i.cyk, 0
  br i1 %.not191.i, label %.preheader, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fi, i8 0, i64 16, i1 false)
  %.pre729.pre = load i64, ptr %i.ag, align 8, !tbaa !118
  br label %.preheader

.preheader:                                       ; preds = %bb.in, %bb.im
  %.ph = phi i64 [ %i.cxx, %bb.im ], [ %.pre729.pre, %bb.in ]
  %i.cyl = icmp ne i64 %indvars.iv701, 0          ; 2 uses
  %.not.i79 = icmp eq i64 %indvars.iv701, 0
  %.not195.i = icmp eq i64 %indvars.iv701, 0
  %.not27.i = icmp eq i64 %indvars.iv701, 0
  %i.cym = icmp eq i64 %indvars.iv701, 0
  br label %bb.io

bb.io:                                            ; preds = %.preheader, %.peel.next
  %i.cyn = phi i64 [ %i.dfl, %.peel.next ], [ %.ph, %.preheader ]
  %indvars.iv674 = phi i64 [ %indvars.iv.next675, %.peel.next ], [ 0, %.preheader ] ; 5 uses
  %.0182.i552 = phi ptr [ %i.dfo, %.peel.next ], [ %i.cxw, %.preheader ] ; 5 uses
  %.0183.i551 = phi ptr [ %i.dfn, %.peel.next ], [ %i.jn, %.preheader ] ; 30 uses
  %i.cyo = getelementptr inbounds nuw i8, ptr %.0183.i551, i64 4
  %i.cyp = sub i64 0, %i.cyn
  %i.cyq = getelementptr inbounds i8, ptr %i.cyo, i64 %i.cyp ; 2 uses
  %i.cyr = icmp eq i64 %indvars.iv674, 0
  %i.cys = icmp ne i64 %indvars.iv674, %i.ik      ; 16 uses
  %i.cyt = select i1 %i.cys, i32 9, i32 14        ; 4 uses
  %i.cyu = select i1 %i.cys, i32 10, i32 11
  %i.cyv = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv674 ; 4 uses
  %i.cyw = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %indvars.iv674 ; 4 uses
  %or.cond5.i9 = and i1 %i.bl, %i.cyr             ; 4 uses
  %i.cyx = load i64, ptr %i.ag, align 8, !tbaa !118 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %.1.i11 = select i1 %or.cond5.i9, ptr %i.b, ptr %i.cyq ; 2 uses
  %i.cyy = load i8, ptr %.0182.i552, align 1, !tbaa !135 ; 3 uses
  %i.cyz = zext i8 %i.cyy to i32                  ; 4 uses
  switch i8 %i.cyy, label %bb.iy [
    i8 0, label %bb.ip
    i8 3, label %bb.iq
    i8 7, label %bb.iq
    i8 1, label %bb.ir
    i8 8, label %bb.is
    i8 9, label %bb.it
    i8 2, label %bb.iu
    i8 4, label %bb.iu
    i8 5, label %bb.iu
    i8 6, label %bb.iu
  ]

bb.ip:                                            ; preds = %bb.io
  %or.cond.i64 = and i1 %i.cys, %i.cym
  br i1 %or.cond.i64, label %.thread327, label %bb.iq

.thread327:                                       ; preds = %bb.ip
  %i.cza = sub i64 0, %i.cyx
  %i.czb = getelementptr inbounds i8, ptr %.0183.i551, i64 %i.cza
  %i.czc = load i32, ptr %i.czb, align 4, !tbaa !135
  store i32 %i.czc, ptr %i.gd, align 4, !tbaa !135
  br label %.thread331

bb.iq:                                            ; preds = %bb.ip, %bb.io, %bb.io
  %i.czd = select i1 %i.cys, i32 %i.cyz, i32 11
  br label %bb.iy

bb.ir:                                            ; preds = %bb.io
  br i1 %i.cys, label %bb.is, label %check_intra_pred4x4_mode_emuedge.exit.thread316

bb.is:                                            ; preds = %bb.ir, %bb.io
  %i.cze = select i1 %.not27.i, i32 11, i32 %i.cyz
  br label %bb.iy

bb.it:                                            ; preds = %bb.io
  %.573 = select i1 %.not.i79, i32 %i.cyu, i32 %i.cyt
  br label %bb.iy

bb.iu:                                            ; preds = %bb.io, %bb.io, %bb.io, %bb.io
  %or.cond3.i61 = and i1 %i.cys, %i.cyl
  br i1 %or.cond3.i61, label %bb.iy, label %check_intra_pred4x4_mode_emuedge.exit

check_intra_pred4x4_mode_emuedge.exit:            ; preds = %bb.iu
  br i1 %i.cys, label %bb.iv, label %check_intra_pred4x4_mode_emuedge.exit.thread316

bb.iv:                                            ; preds = %check_intra_pred4x4_mode_emuedge.exit
  %i.czf = sub i64 0, %i.cyx
  %i.czg = getelementptr inbounds i8, ptr %.0183.i551, i64 %i.czf
  %i.czh = load i32, ptr %i.czg, align 4, !tbaa !135
  store i32 %i.czh, ptr %i.gd, align 4, !tbaa !135
  br i1 %i.cyl, label %.thread335, label %.thread331

.thread331:                                       ; preds = %bb.iv, %.thread327
  store i8 -128, ptr %i.ge, align 1, !tbaa !135
  br label %bb.iw

.thread335:                                       ; preds = %bb.iv
  %i.czi = xor i64 %i.cyx, -1
  %i.czj = getelementptr i8, ptr %.0183.i551, i64 %i.czi
  %i.czk = load i8, ptr %i.czj, align 1, !tbaa !135
  store i8 %i.czk, ptr %i.ge, align 1, !tbaa !135
  br label %bb.ix

check_intra_pred4x4_mode_emuedge.exit.thread316:  ; preds = %bb.ir, %check_intra_pred4x4_mode_emuedge.exit
  store i8 -128, ptr %i.ge, align 1, !tbaa !135
  store i32 -2139062144, ptr %i.gd, align 4, !tbaa !135
  br i1 %.not195.i, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %.thread331, %check_intra_pred4x4_mode_emuedge.exit.thread316
  store i8 -128, ptr %i.gi, align 1, !tbaa !135
  store i8 -128, ptr %i.gh, align 1, !tbaa !135
  store i8 -128, ptr %i.gg, align 1, !tbaa !135
  store i8 -128, ptr %i.gf, align 1, !tbaa !135
  br label %bb.iz

bb.ix:                                            ; preds = %.thread335, %check_intra_pred4x4_mode_emuedge.exit.thread316
  %i.czl = getelementptr i8, ptr %.0183.i551, i64 -1
  %i.czm = load i8, ptr %i.czl, align 1, !tbaa !135
  store i8 %i.czm, ptr %i.gf, align 1, !tbaa !135
  %i.czn = getelementptr i8, ptr %.0183.i551, i64 %i.cyx
  %i.czo = getelementptr i8, ptr %i.czn, i64 -1
  %i.czp = load i8, ptr %i.czo, align 1, !tbaa !135
  store i8 %i.czp, ptr %i.gg, align 1, !tbaa !135
  %i.czq = shl nsw i64 %i.cyx, 1
  %i.czr = getelementptr i8, ptr %.0183.i551, i64 %i.czq
  %i.czs = getelementptr i8, ptr %i.czr, i64 -1
  %i.czt = load i8, ptr %i.czs, align 1, !tbaa !135
  store i8 %i.czt, ptr %i.gh, align 1, !tbaa !135
  %i.czu = mul nsw i64 %i.cyx, 3
  %i.czv = getelementptr i8, ptr %.0183.i551, i64 %i.czu
  %i.czw = getelementptr i8, ptr %i.czv, i64 -1
  %i.czx = load i8, ptr %i.czw, align 1, !tbaa !135
  store i8 %i.czx, ptr %i.gi, align 1, !tbaa !135
  br label %bb.iz

bb.iy:                                            ; preds = %bb.it, %bb.io, %bb.iq, %bb.is, %bb.iu
  %.0.i62.ph = phi i32 [ %.573, %bb.it ], [ %i.cyz, %bb.io ], [ %i.cyz, %bb.iu ], [ %i.cze, %bb.is ], [ %i.czd, %bb.iq ]
  %i.czy = zext nneg i32 %.0.i62.ph to i64
  %i.czz = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.czy
  %i.daa = load ptr, ptr %i.czz, align 8, !tbaa !182
  call void %i.daa(ptr noundef %.0183.i551, ptr noundef nonnull %.1.i11, i64 noundef %i.cyx) #12, !inline_history !10
  br label %bb.ja

bb.iz:                                            ; preds = %bb.ix, %bb.iw
  %i.dab = zext i8 %i.cyy to i64
  %i.dac = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.dab
  %i.dad = load ptr, ptr %i.dac, align 8, !tbaa !182
  call void %i.dad(ptr noundef nonnull %i.gc, ptr noundef nonnull %.1.i11, i64 noundef 8) #12, !inline_history !10
  %i.dae = load i32, ptr %i.gc, align 4, !tbaa !135
  store i32 %i.dae, ptr %.0183.i551, align 4, !tbaa !135
  %i.daf = load i32, ptr %i.gk, align 4, !tbaa !135
  %i.dag = load i64, ptr %i.ag, align 8, !tbaa !118
  %i.dah = getelementptr inbounds i8, ptr %.0183.i551, i64 %i.dag
  store i32 %i.daf, ptr %i.dah, align 4, !tbaa !135
  %i.dai = load i32, ptr %i.gl, align 4, !tbaa !135
  %i.daj = load i64, ptr %i.ag, align 8, !tbaa !118
  %i.dak = shl nsw i64 %i.daj, 1
  %i.dal = getelementptr inbounds i8, ptr %.0183.i551, i64 %i.dak
  store i32 %i.dai, ptr %i.dal, align 4, !tbaa !135
  %i.dam = load i32, ptr %i.gm, align 4, !tbaa !135
  %i.dan = load i64, ptr %i.ag, align 8, !tbaa !118
  %i.dao = mul nsw i64 %i.dan, 3
  %i.dap = getelementptr inbounds i8, ptr %.0183.i551, i64 %i.dao
  store i32 %i.dam, ptr %i.dap, align 4, !tbaa !135
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iy, %bb.iz
  %i.daq = load i8, ptr %i.cyv, align 1, !tbaa !135
  switch i8 %i.daq, label %bb.jb [
    i8 0, label %bb.jc
    i8 1, label %.sink.split1138
  ]

bb.jb:                                            ; preds = %bb.ja
  br label %.sink.split1138

.sink.split1138:                                  ; preds = %bb.ja, %bb.jb
  %.sink1141.in = phi ptr [ %i.go, %bb.jb ], [ %i.gn, %bb.ja ]
  %.sink1141 = load ptr, ptr %.sink1141.in, align 8, !tbaa !182
  %i.dar = load i64, ptr %i.ag, align 8, !tbaa !118
  call void %.sink1141(ptr noundef %.0183.i551, ptr noundef %i.cyw, i64 noundef %i.dar) #12
  br label %bb.jc

bb.jc:                                            ; preds = %.sink.split1138, %bb.ja
  %.1.i11.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %or.cond5.i9, ptr %i.b, ptr %i.cyq ; 2 uses
  %.1.i11.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.1.i11.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.das = load i64, ptr %i.ag, align 8, !tbaa !118 ; 4 uses
  %i.dat = getelementptr i8, ptr %.0183.i551, i64 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %.1.i11.1 = select i1 %or.cond5.i9, ptr %i.b, ptr %.1.i11.sroa.sel.v.sroa.sel.v.sroa.sel ; 2 uses
  %i.dau = getelementptr inbounds nuw i8, ptr %.0182.i552, i64 1
  %i.dav = load i8, ptr %i.dau, align 1, !tbaa !135 ; 3 uses
  %i.daw = zext i8 %i.dav to i32                  ; 4 uses
  switch i8 %i.dav, label %bb.jh [
    i8 0, label %bb.jg
    i8 3, label %bb.jg
    i8 7, label %bb.jg
    i8 1, label %bb.jf
    i8 6, label %bb.jd
    i8 9, label %bb.je
    i8 2, label %bb.jd
    i8 4, label %bb.jd
    i8 5, label %bb.jd
  ]

bb.jd:                                            ; preds = %bb.jc, %bb.jc, %bb.jc, %bb.jc
  br i1 %i.cys, label %bb.jh, label %check_intra_pred4x4_mode_emuedge.exit.thread316.1

bb.je:                                            ; preds = %bb.jc
  br label %bb.jh

bb.jf:                                            ; preds = %bb.jc
  br i1 %i.cys, label %bb.jh, label %check_intra_pred4x4_mode_emuedge.exit.thread316.1

check_intra_pred4x4_mode_emuedge.exit.thread316.1: ; preds = %bb.jd, %bb.jf
  store i8 -128, ptr %i.ge, align 1, !tbaa !135
  store i32 -2139062144, ptr %i.gd, align 4, !tbaa !135
  %i.dax = getelementptr i8, ptr %.0183.i551, i64 3
  %i.day = load i8, ptr %i.dax, align 1, !tbaa !135
  store i8 %i.day, ptr %i.gf, align 1, !tbaa !135
  %i.daz = getelementptr i8, ptr %.0183.i551, i64 %i.das
  %i.dba = getelementptr i8, ptr %i.daz, i64 3
  %i.dbb = load i8, ptr %i.dba, align 1, !tbaa !135
  store i8 %i.dbb, ptr %i.gg, align 1, !tbaa !135
  %i.dbc = shl nsw i64 %i.das, 1
  %i.dbd = getelementptr i8, ptr %.0183.i551, i64 %i.dbc
  %i.dbe = getelementptr i8, ptr %i.dbd, i64 3
  %i.dbf = load i8, ptr %i.dbe, align 1, !tbaa !135
  store i8 %i.dbf, ptr %i.gh, align 1, !tbaa !135
  %i.dbg = mul nsw i64 %i.das, 3
  %i.dbh = getelementptr i8, ptr %.0183.i551, i64 %i.dbg
  %i.dbi = getelementptr i8, ptr %i.dbh, i64 3
  %i.dbj = load i8, ptr %i.dbi, align 1, !tbaa !135
  store i8 %i.dbj, ptr %i.gi, align 1, !tbaa !135
  %i.dbk = zext i8 %i.dav to i64
  %i.dbl = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.dbk
  %i.dbm = load ptr, ptr %i.dbl, align 8, !tbaa !182
  call void %i.dbm(ptr noundef nonnull %i.gc, ptr noundef nonnull %.1.i11.1, i64 noundef 8) #12, !inline_history !10
  %i.dbn = load i32, ptr %i.gc, align 4, !tbaa !135
  store i32 %i.dbn, ptr %i.dat, align 4, !tbaa !135
  %i.dbo = load i32, ptr %i.gk, align 4, !tbaa !135
  %i.dbp = load i64, ptr %i.ag, align 8, !tbaa !118
  %i.dbq = getelementptr inbounds i8, ptr %i.dat, i64 %i.dbp
  store i32 %i.dbo, ptr %i.dbq, align 4, !tbaa !135
  %i.dbr = load i32, ptr %i.gl, align 4, !tbaa !135
  %i.dbs = load i64, ptr %i.ag, align 8, !tbaa !118
  %i.dbt = shl nsw i64 %i.dbs, 1
  %i.dbu = getelementptr inbounds i8, ptr %i.dat, i64 %i.dbt
  store i32 %i.dbr, ptr %i.dbu, align 4, !tbaa !135
  %i.dbv = load i32, ptr %i.gm, align 4, !tbaa !135
  %i.dbw = load i64, ptr %i.ag, align 8, !tbaa !118
  %i.dbx = mul nsw i64 %i.dbw, 3
  %i.dby = getelementptr inbounds i8, ptr %i.dat, i64 %i.dbx
  store i32 %i.dbv, ptr %i.dby, align 4, !tbaa !135
  br label %bb.ji

bb.jg:                                            ; preds = %bb.jc, %bb.jc, %bb.jc
  %i.dbz = select i1 %i.cys, i32 %i.daw, i32 11
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jf, %bb.jg, %bb.je, %bb.jd, %bb.jc
  %.0.i62.ph.1 = phi i32 [ %i.cyt, %bb.je ], [ %i.daw, %bb.jc ], [ %i.daw, %bb.jd ], [ %i.dbz, %bb.jg ], [ %i.daw, %bb.jf ]
  %i.dca = zext nneg i32 %.0.i62.ph.1 to i64
  %i.dcb = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.dca
  %i.dcc = load ptr, ptr %i.dcb, align 8, !tbaa !182
  call void %i.dcc(ptr noundef %i.dat, ptr noundef nonnull %.1.i11.1, i64 noundef %i.das) #12, !inline_history !10
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %check_intra_pred4x4_mode_emuedge.exit.thread316.1
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.cyv, i64 1
  %i.dce = load i8, ptr %i.dcd, align 1, !tbaa !135
  switch i8 %i.dce, label %bb.jj [
    i8 0, label %bb.jk
    i8 1, label %.sink.split1138.1
  ]

bb.jj:                                            ; preds = %bb.ji
  br label %.sink.split1138.1

.sink.split1138.1:                                ; preds = %bb.jj, %bb.ji
  %.sink1141.in.1 = phi ptr [ %i.go, %bb.jj ], [ %i.gn, %bb.ji ]
  %.sink1141.1 = load ptr, ptr %.sink1141.in.1, align 8, !tbaa !182
  %i.dcf = getelementptr inbounds nuw i8, ptr %i.cyw, i64 32
  %i.dcg = load i64, ptr %i.ag, align 8, !tbaa !118
  call void %.sink1141.1(ptr noundef %i.dat, ptr noundef nonnull %i.dcf, i64 noundef %i.dcg) #12
  br label %bb.jk

bb.jk:                                            ; preds = %.sink.split1138.1, %bb.ji
  %.1.i11.sroa.sel.v.sroa.sel.v.sroa.sel.sroa.gep = getelementptr inbounds nuw i8, ptr %.1.i11.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.dch = load i64, ptr %i.ag, align 8, !tbaa !118 ; 4 uses
  %i.dci = getelementptr i8, ptr %.0183.i551, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %.1.i11.2 = select i1 %or.cond5.i9, ptr %i.b, ptr %.1.i11.sroa.sel.v.sroa.sel.v.sroa.sel.sroa.gep ; 2 uses
  %i.dcj = getelementptr inbounds nuw i8, ptr %.0182.i552, i64 2
  %i.dck = load i8, ptr %i.dcj, align 1, !tbaa !135 ; 3 uses
  %i.dcl = zext i8 %i.dck to i32                  ; 4 uses
  switch i8 %i.dck, label %bb.jp [
    i8 0, label %bb.jo
    i8 3, label %bb.jo
    i8 7, label %bb.jo
    i8 1, label %bb.jn
    i8 6, label %bb.jl
    i8 9, label %bb.jm
    i8 2, label %bb.jl
    i8 4, label %bb.jl
    i8 5, label %bb.jl
  ]

bb.jl:                                            ; preds = %bb.jk, %bb.jk, %bb.jk, %bb.jk
  br i1 %i.cys, label %bb.jp, label %check_intra_pred4x4_mode_emuedge.exit.thread316.2

bb.jm:                                            ; preds = %bb.jk
  br label %bb.jp

bb.jn:                                            ; preds = %bb.jk
  br i1 %i.cys, label %bb.jp, label %check_intra_pred4x4_mode_emuedge.exit.thread316.2

check_intra_pred4x4_mode_emuedge.exit.thread316.2: ; preds = %bb.jl, %bb.jn
  store i8 -128, ptr %i.ge, align 1, !tbaa !135
  store i32 -2139062144, ptr %i.gd, align 4, !tbaa !135
  %i.dcm = getelementptr i8, ptr %.0183.i551, i64 7
  %i.dcn = load i8, ptr %i.dcm, align 1, !tbaa !135
  store i8 %i.dcn, ptr %i.gf, align 1, !tbaa !135
  %i.dco = getelementptr i8, ptr %.0183.i551, i64 %i.dch
  %i.dcp = getelementptr i8, ptr %i.dco, i64 7
  %i.dcq = load i8, ptr %i.dcp, align 1, !tbaa !135
  store i8 %i.dcq, ptr %i.gg, align 1, !tbaa !135
  %i.dcr = shl nsw i64 %i.dch, 1
  %i.dcs = getelementptr i8, ptr %.0183.i551, i64 %i.dcr
  %i.dct = getelementptr i8, ptr %i.dcs, i64 7
  %i.dcu = load i8, ptr %i.dct, align 1, !tbaa !135
  store i8 %i.dcu, ptr %i.gh, align 1, !tbaa !135
  %i.dcv = mul nsw i64 %i.dch, 3
  %i.dcw = getelementptr i8, ptr %.0183.i551, i64 %i.dcv
  %i.dcx = getelementptr i8, ptr %i.dcw, i64 7
  %i.dcy = load i8, ptr %i.dcx, align 1, !tbaa !135
  store i8 %i.dcy, ptr %i.gi, align 1, !tbaa !135
  %i.dcz = zext i8 %i.dck to i64
  %i.dda = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.dcz
  %i.ddb = load ptr, ptr %i.dda, align 8, !tbaa !182
  call void %i.ddb(ptr noundef nonnull %i.gc, ptr noundef nonnull %.1.i11.2, i64 noundef 8) #12, !inline_history !10
  %i.ddc = load i32, ptr %i.gc, align 4, !tbaa !135
  store i32 %i.ddc, ptr %i.dci, align 4, !tbaa !135
  %i.ddd = load i32, ptr %i.gk, align 4, !tbaa !135
  %i.dde = load i64, ptr %i.ag, align 8, !tbaa !118
  %i.ddf = getelementptr inbounds i8, ptr %i.dci, i64 %i.dde
  store i32 %i.ddd, ptr %i.ddf, align 4, !tbaa !135
  %i.ddg = load i32, ptr %i.gl, align 4, !tbaa !135
  %i.ddh = load i64, ptr %i.ag, align 8, !tbaa !118
  %i.ddi = shl nsw i64 %i.ddh, 1
  %i.ddj = getelementptr inbounds i8, ptr %i.dci, i64 %i.ddi
  store i32 %i.ddg, ptr %i.ddj, align 4, !tbaa !135
  %i.ddk = load i32, ptr %i.gm, align 4, !tbaa !135
  %i.ddl = load i64, ptr %i.ag, align 8, !tbaa !118
  %i.ddm = mul nsw i64 %i.ddl, 3
  %i.ddn = getelementptr inbounds i8, ptr %i.dci, i64 %i.ddm
  store i32 %i.ddk, ptr %i.ddn, align 4, !tbaa !135
  br label %bb.jq

bb.jo:                                            ; preds = %bb.jk, %bb.jk, %bb.jk
  %i.ddo = select i1 %i.cys, i32 %i.dcl, i32 11
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jn, %bb.jo, %bb.jm, %bb.jl, %bb.jk
  %.0.i62.ph.2 = phi i32 [ %i.cyt, %bb.jm ], [ %i.dcl, %bb.jk ], [ %i.dcl, %bb.jl ], [ %i.ddo, %bb.jo ], [ %i.dcl, %bb.jn ]
  %i.ddp = zext nneg i32 %.0.i62.ph.2 to i64
  %i.ddq = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.ddp
  %i.ddr = load ptr, ptr %i.ddq, align 8, !tbaa !182
  call void %i.ddr(ptr noundef %i.dci, ptr noundef nonnull %.1.i11.2, i64 noundef %i.dch) #12, !inline_history !10
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %check_intra_pred4x4_mode_emuedge.exit.thread316.2
  %i.dds = getelementptr inbounds nuw i8, ptr %i.cyv, i64 2
  %i.ddt = load i8, ptr %i.dds, align 1, !tbaa !135
  switch i8 %i.ddt, label %bb.jr [
    i8 0, label %.peel.begin
    i8 1, label %.sink.split1138.2
  ]

bb.jr:                                            ; preds = %bb.jq
  br label %.sink.split1138.2

.sink.split1138.2:                                ; preds = %bb.jr, %bb.jq
  %.sink1141.in.2 = phi ptr [ %i.go, %bb.jr ], [ %i.gn, %bb.jq ]
  %.sink1141.2 = load ptr, ptr %.sink1141.in.2, align 8, !tbaa !182
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.cyw, i64 64
  %i.ddv = load i64, ptr %i.ag, align 8, !tbaa !118
  call void %.sink1141.2(ptr noundef %i.dci, ptr noundef nonnull %i.ddu, i64 noundef %i.ddv) #12
  br label %.peel.begin

.peel.begin:                                      ; preds = %.sink.split1138.2, %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.ddw = load i64, ptr %i.ag, align 8, !tbaa !118 ; 4 uses
  %i.ddx = getelementptr i8, ptr %.0183.i551, i64 12 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ddy = getelementptr inbounds nuw i8, ptr %.0182.i552, i64 3
  %i.ddz = load i8, ptr %i.ddy, align 1, !tbaa !135 ; 3 uses
  %i.dea = zext i8 %i.ddz to i32                  ; 3 uses
  switch i8 %i.ddz, label %bb.jx [
    i8 0, label %bb.jv
    i8 3, label %bb.jv
    i8 7, label %bb.jv
    i8 1, label %bb.ju
    i8 6, label %bb.js
    i8 9, label %bb.jt
    i8 2, label %bb.js
    i8 4, label %bb.js
    i8 5, label %bb.js
  ]

bb.js:                                            ; preds = %.peel.begin, %.peel.begin, %.peel.begin, %.peel.begin
  br i1 %i.cys, label %bb.jx, label %bb.jw

bb.jt:                                            ; preds = %.peel.begin
  br label %bb.jx

bb.ju:                                            ; preds = %.peel.begin
  br i1 %i.cys, label %bb.jx, label %bb.jw

bb.jv:                                            ; preds = %.peel.begin, %.peel.begin, %.peel.begin
  %i.deb = select i1 %i.cys, i32 %i.dea, i32 11
  br label %bb.jx

bb.jw:                                            ; preds = %bb.js, %bb.ju
  store i8 -128, ptr %i.ge, align 1, !tbaa !135
  store i32 -2139062144, ptr %i.gd, align 4, !tbaa !135
  %i.dec = getelementptr i8, ptr %.0183.i551, i64 11
  %i.ded = load i8, ptr %i.dec, align 1, !tbaa !135
  store i8 %i.ded, ptr %i.gf, align 1, !tbaa !135
  %i.dee = getelementptr i8, ptr %.0183.i551, i64 %i.ddw
  %i.def = getelementptr i8, ptr %i.dee, i64 11
  %i.deg = load i8, ptr %i.def, align 1, !tbaa !135
  store i8 %i.deg, ptr %i.gg, align 1, !tbaa !135
  %i.deh = shl nsw i64 %i.ddw, 1
  %i.dei = getelementptr i8, ptr %.0183.i551, i64 %i.deh
  %i.dej = getelementptr i8, ptr %i.dei, i64 11
  %i.dek = load i8, ptr %i.dej, align 1, !tbaa !135
  store i8 %i.dek, ptr %i.gh, align 1, !tbaa !135
  %i.del = mul nsw i64 %i.ddw, 3
  %i.dem = getelementptr i8, ptr %.0183.i551, i64 %i.del
  %i.den = getelementptr i8, ptr %i.dem, i64 11
  %i.deo = load i8, ptr %i.den, align 1, !tbaa !135
  store i8 %i.deo, ptr %i.gi, align 1, !tbaa !135
  %i.dep = zext nneg i8 %i.ddz to i64
  %i.deq = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.dep
  %i.der = load ptr, ptr %i.deq, align 8, !tbaa !182
  call void %i.der(ptr noundef nonnull %i.gc, ptr noundef nonnull %.1.i11.peel, i64 noundef 8) #12, !inline_history !10
  %i.des = load i32, ptr %i.gc, align 4, !tbaa !135
  store i32 %i.des, ptr %i.ddx, align 4, !tbaa !135
  %i.det = load i32, ptr %i.gk, align 4, !tbaa !135
  %i.deu = load i64, ptr %i.ag, align 8, !tbaa !118
  %i.dev = getelementptr inbounds i8, ptr %i.ddx, i64 %i.deu
  store i32 %i.det, ptr %i.dev, align 4, !tbaa !135
  %i.dew = load i32, ptr %i.gl, align 4, !tbaa !135
  %i.dex = load i64, ptr %i.ag, align 8, !tbaa !118
  %i.dey = shl nsw i64 %i.dex, 1
  %i.dez = getelementptr inbounds i8, ptr %i.ddx, i64 %i.dey
  store i32 %i.dew, ptr %i.dez, align 4, !tbaa !135
  %i.dfa = load i32, ptr %i.gm, align 4, !tbaa !135
  %i.dfb = load i64, ptr %i.ag, align 8, !tbaa !118
  %i.dfc = mul nsw i64 %i.dfb, 3
  %i.dfd = getelementptr inbounds i8, ptr %i.ddx, i64 %i.dfc
  store i32 %i.dfa, ptr %i.dfd, align 4, !tbaa !135
  br label %bb.jy

bb.jx:                                            ; preds = %bb.ju, %bb.jv, %bb.jt, %bb.js, %.peel.begin
  %.0.i62.ph.peel = phi i32 [ %i.cyt, %bb.jt ], [ %i.dea, %.peel.begin ], [ %i.dea, %bb.js ], [ %i.deb, %bb.jv ], [ 1, %bb.ju ]
  %i.dfe = zext nneg i32 %.0.i62.ph.peel to i64
  %i.dff = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.dfe
  %i.dfg = load ptr, ptr %i.dff, align 8, !tbaa !182
  call void %i.dfg(ptr noundef %i.ddx, ptr noundef nonnull %.1.i11.peel, i64 noundef %i.ddw) #12, !inline_history !10
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jw
  %i.dfh = getelementptr inbounds nuw i8, ptr %i.cyv, i64 3
  %i.dfi = load i8, ptr %i.dfh, align 1, !tbaa !135
  switch i8 %i.dfi, label %bb.jz [
    i8 0, label %.peel.next
    i8 1, label %.peel.next.sink.split
  ]

bb.jz:                                            ; preds = %bb.jy
  br label %.peel.next.sink.split

.peel.next.sink.split:                            ; preds = %bb.jy, %bb.jz
  %.sink1144.in = phi ptr [ %i.go, %bb.jz ], [ %i.gn, %bb.jy ]
  %.sink1144 = load ptr, ptr %.sink1144.in, align 8, !tbaa !182
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.cyw, i64 96
end_hunk_3
