Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg12enc?download=true
inline.NumInlined: 182
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@encode_init:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !111
  %i.ad = icmp sgt i32 %i.ac, 28
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.116) #10
  br label %.critedge

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !71 ; 2 uses
  %i.ag = icmp eq i32 %i.af, -99
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !72
  %.not = icmp eq i32 %i.ai, -99                  ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %.not, label %.thread171, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.117) #10
  br label %.critedge

.thread171:                                       ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !112
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = select i1 %i.al, i32 4, i32 0           ; 2 uses
  store i32 %i.am, ptr %i.ae, align 8, !tbaa !71
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  br i1 %.not, label %bb.o, label %bb.v

bb.o:                                             ; preds = %.thread171, %bb.n
  %i.an = phi i32 [ %i.am, %.thread171 ], [ %i.af, %bb.n ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 692
  switch i32 %i.an, label %bb.q [
    i32 0, label %bb.p
    i32 1, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.ap = icmp slt i32 %i.h, 721
  %i.aq = icmp slt i32 %i.k, 609
  %or.cond153 = and i1 %i.ap, %i.aq
  %. = select i1 %or.cond153, i32 5, i32 2
  br label %.sink.split

bb.q:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !112
  %.not142 = icmp eq i32 %i.as, 0
  br i1 %.not142, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.118) #10
  br label %.critedge

bb.s:                                             ; preds = %bb.o, %bb.q
  %i.at = icmp slt i32 %i.h, 721
  br i1 %i.at, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.au = icmp slt i32 %i.k, 577
  br i1 %i.au, label %.sink.split, label %.thread

bb.u:                                             ; preds = %bb.s
  %i.av = icmp samesign ult i32 %i.h, 1441
  br i1 %i.av, label %.thread, label %.sink.split

.thread:                                          ; preds = %bb.t, %bb.u
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.t, %bb.p, %.thread
  %.sink = phi i32 [ 8, %bb.t ], [ %., %bb.p ], [ 6, %.thread ], [ 4, %bb.u ]
  store i32 %.sink, ptr %i.ao, align 4, !tbaa !72
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 10392
  store ptr @mpeg1_encode_picture_header, ptr %i.aw, align 8, !tbaa !113
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 6552
  store ptr @mpeg12_encode_mb, ptr %i.ax, align 8, !tbaa !114
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 5360
  store ptr @mv_penalty, ptr %i.ay, align 16, !tbaa !115
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 10360
  store ptr getelementptr inbounds nuw (i8, ptr @fcode_tab, i64 4096), ptr %i.az, align 8, !tbaa !116
  %i.ba = icmp eq i32 %i.d, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 6128 ; 2 uses
  br i1 %i.ba, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store <2 x i32> <i32 -255, i32 255>, ptr %i.bb, align 16, !tbaa !79
  %.phi.trans.insert158 = getelementptr inbounds nuw i8, ptr %i.b, i64 3820
  %.pre159 = load i32, ptr %.phi.trans.insert158, align 4, !tbaa !80
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  store <2 x i32> <i32 -2047, i32 2047>, ptr %i.bb, align 16, !tbaa !79
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 6448
  store i32 1, ptr %i.bc, align 16, !tbaa !117
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 3820 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !80 ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !118 ; 7 uses
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !80
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = icmp samesign ugt i32 %i.bh, 7
  br i1 %i.bj, label %bb.aa, label %.thread150

bb.aa:                                            ; preds = %bb.z
  %i.bk = add nsw i32 %i.bh, -8                   ; 2 uses
  store i32 %i.bk, ptr %i.bd, align 4, !tbaa !80
  br label %.thread150

bb.ab:                                            ; preds = %bb.y
  %i.bl = add nsw i32 %i.bh, 8                    ; 2 uses
  store i32 %i.bl, ptr %i.bd, align 4, !tbaa !80
  %i.bm = icmp samesign ult i32 %i.bh, -8
  br i1 %i.bm, label %bb.ac, label %.thread150

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.119) #10
  br label %.critedge

.thread150:                                       ; preds = %bb.aa, %bb.z, %bb.ab
  %i.bn = phi i32 [ %i.bl, %bb.ab ], [ %i.bk, %bb.aa ], [ %i.bh, %bb.z ] ; 2 uses
  %i.bo = icmp samesign ugt i32 %i.bn, 3
  br i1 %i.bo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread150
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.120) #10
  br label %.critedge

bb.ae:                                            ; preds = %bb.x, %.thread150, %bb.w
  %i.bp = phi i32 [ %i.be, %bb.x ], [ %i.bn, %.thread150 ], [ %.pre159, %bb.w ]
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [32 x i8], ptr @ff_mpeg12_dc_scale_table, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 1144
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !119
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  store ptr %i.br, ptr %i.bt, align 16, !tbaa !120
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 3840
  %i.bv = load i32, ptr %i.bu, align 16, !tbaa !81
  %.not143 = icmp eq i32 %i.bv, 0
  %spec.select = select i1 %.not143, ptr @uni_mpeg1_ac_vlc_len, ptr @uni_mpeg2_ac_vlc_len ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 6152
  store ptr %spec.select, ptr %i.bw, align 8, !tbaa !121
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 6144
  store ptr %spec.select, ptr %i.bx, align 16, !tbaa !122
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 6184
  store ptr @uni_mpeg1_ac_vlc_len, ptr %i.by, align 8, !tbaa !123
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 6176
  store ptr @uni_mpeg1_ac_vlc_len, ptr %i.bz, align 16, !tbaa !124
  %i.ca = tail call i32 @ff_mpv_encode_init(ptr noundef nonnull %0) #10 ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = load i32, ptr %i.c, align 8, !tbaa !68
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 504 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 760
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !125 ; 2 uses
  %i.ch = add nsw i32 %i.cg, -1                   ; 5 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 496 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 16, !tbaa !126
  %i.cn = icmp sgt i32 %i.cm, 174
  br i1 %i.cn, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  store i32 174, ptr %i.cl, align 16, !tbaa !126
  %i.co = icmp sgt i32 %i.cg, 1
  br i1 %i.co, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ah
  %i.cp = lshr i32 %i.ch, 1                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ch to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ai ] ; 3 uses
  %i.cq = trunc i64 %indvars.iv to i32
  %i.cr = mul i32 %i.cq, 174
  %i.cs = add i32 %i.cr, %i.cp
  %i.ct = sdiv i32 %i.cs, %i.ch
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 496
  store i32 %i.ct, ptr %i.cw, align 16, !tbaa !126
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cx = trunc i64 %indvars.iv.next to i32
  %i.cy = mul i32 %i.cx, 174
  %i.cz = add i32 %i.cy, %i.cp
  %i.da = sdiv i32 %i.cz, %i.ch
  %i.db = load ptr, ptr %i.cu, align 8, !tbaa !9
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 500
  store i32 %i.da, ptr %i.dc, align 4, !tbaa !127
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.ai, !llvm.loop !103

.loopexit:                                        ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.dd = tail call fastcc i32 @find_frame_rate_index(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #11
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %.loopexit
  %i.df = load i32, ptr %i.u, align 4, !tbaa !69
  %i.dg = icmp sgt i32 %i.df, -2
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !128 ; 2 uses
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !129 ; 2 uses
  br i1 %i.dg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.121, i32 noundef %i.dj, i32 noundef %i.dk) #10
  br label %.critedge

bb.al:                                            ; preds = %bb.aj
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.122, i32 noundef %i.dj, i32 noundef %i.dk) #10
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.loopexit
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !82 ; 3 uses
  %.not144 = icmp eq i64 %i.dm, 0
  br i1 %.not144, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !130
  %i.dp = icmp eq i64 %i.do, %i.dm
  br i1 %i.dp, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !83
  %i.ds = add nsw i32 %i.dr, -1
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul nsw i64 %i.dt, 90000
  %i.dv = mul nsw i64 %i.dm, 65535
  %i.dw = icmp sgt i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.123) #10
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 11048 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !86
  %.not145 = icmp eq i32 %i.dy, 0
  br i1 %.not145, label %.thread151, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 11020 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !87
  %i.eb = or i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !87
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 11000
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !88
  %.not147 = icmp eq i32 %i.ed, 4
  br i1 %.not147, label %.thread151, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.124) #10
  br label %.critedge

.thread151:                                       ; preds = %bb.aq, %bb.ar
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 11040
  %i.ef = load ptr, ptr %i.ee, align 16, !tbaa !131 ; 2 uses
  %.not148 = icmp eq ptr %i.ef, null
  br i1 %.not148, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.thread151
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 11000
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !88
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr @ff_mpeg12_frame_rate_tab, i64 %i.ei
  %.sroa.0.0.copyload = load i64, ptr %i.ej, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 11016 ; 2 uses
  %i.el = tail call i32 @av_timecode_init_from_string(ptr noundef nonnull %i.ek, i64 %.sroa.0.0.copyload, ptr noundef nonnull %i.ef, ptr noundef nonnull %0) #10 ; 2 uses
  %i.em = icmp sgt i32 %i.el, -1
  br i1 %i.em, label %bb.au, label %.critedge

bb.au:                                            ; preds = %bb.at
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 11020
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !87
  %i.ep = and i32 %i.eo, 1
  store i32 %i.ep, ptr %i.dx, align 8, !tbaa !86
  %i.eq = load i32, ptr %i.ek, align 8, !tbaa !132
  %i.er = sext i32 %i.eq to i64
  br label %bb.av

bb.av:                                            ; preds = %.thread151, %bb.au
  %.sink172 = phi i64 [ %i.er, %bb.au ], [ 0, %.thread151 ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 11008
  store i64 %.sink172, ptr %i.es, align 16, !tbaa !89
  %i.et = tail call i32 @pthread_once(ptr noundef nonnull @encode_init.init_static_once, ptr noundef nonnull @mpeg12_encode_init_static) #10 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.at, %bb.ae, %bb.av, %bb.as, %bb.ak, %bb.ad, %bb.ac, %bb.r, %bb.m, %bb.j, %bb.g, %bb.e, %bb.c
  %.1 = phi i32 [ -22, %bb.c ], [ -22, %bb.e ], [ -22, %bb.g ], [ -1163346256, %bb.j ], [ -22, %bb.m ], [ -22, %bb.r ], [ -22, %bb.ak ], [ -22, %bb.as ], [ 0, %bb.av ], [ %i.el, %bb.at ], [ -22, %bb.ac ], [ -22, %bb.ad ], [ %i.ca, %bb.ae ]
  ret i32 %.1
}

declare i32 @ff_mpv_encode_picture(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @ff_mpv_encode_end(ptr noundef) #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @av_default_item_name(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @mpeg1_encode_picture_header(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 95 uses
  %i.b = getelementptr i8, ptr %0, i64 4388       ; 93 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11000 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !88
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @ff_mpeg12_frame_rate_tab, i64 %i.e ; 2 uses
  %.sroa.044.0.copyload.i = load i32, ptr %i.f, align 4, !tbaa !79 ; 3 uses
  %.sroa.647.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.647.0.copyload.i = load i32, ptr %.sroa.647.0..sroa_idx.i, align 4, !tbaa !79 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !135
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !138
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 276
  %i.l = load i32, ptr %i.k, align 4, !tbaa !143
  %i.m = and i32 %i.l, 2
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %mpeg1_encode_sequence_header.exit.thread, label %align_put_bits.exit.i.i

align_put_bits.exit.i.i:                          ; preds = %bb.a
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !144  ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 132
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !79 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %.sroa.035.0.copyload.i = load i32, ptr %i.o, align 8, !tbaa !79 ; 2 uses
  %i.p = icmp eq i32 %.sroa.035.0.copyload.i, 0
  %i.q = icmp eq i32 %.sroa.6.0.copyload.i, 0
  %or.cond.i = select i1 %i.p, i1 true, i1 %i.q   ; 2 uses
  %.phi.trans.insert401.i = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 120 uses
  %.pre402.i = load ptr, ptr %.phi.trans.insert401.i, align 16, !tbaa !54 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 4408 ; 40 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  store i32 32, ptr %i.b, align 4, !tbaa !51
  %i.r = ptrtoint ptr %.pre.i to i64
  %i.s = ptrtoint ptr %.pre402.i to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ugt i64 %i.t, 3
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %align_put_bits.exit.i.i
  store i32 -1291780096, ptr %.pre402.i, align 1, !tbaa !9
  %i.v = load ptr, ptr %.phi.trans.insert401.i, align 16, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store ptr %i.w, ptr %.phi.trans.insert401.i, align 16, !tbaa !54
  br label %put_sbits.exit225.i

bb.c:                                             ; preds = %align_put_bits.exit.i.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_sbits.exit225.i

put_sbits.exit225.i:                              ; preds = %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
  %i.y = load i32, ptr %i.x, align 16, !tbaa !145 ; 2 uses
  %.phi.trans.insert416.i = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 5 uses
  %.pre417.i = load i32, ptr %.phi.trans.insert416.i, align 4, !tbaa !49 ; 2 uses
  %i.z = and i32 %.pre417.i, 4095
  %i.aa = shl i32 %i.y, 12
  %i.ab = and i32 %i.aa, 16773120
  %i.ac = or disjoint i32 %i.ab, %i.z
  %.phi.trans.insert418.i = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %.pre419.i = load i32, ptr %.phi.trans.insert418.i, align 16, !tbaa !48
  %i.ad = sext i32 %.sroa.035.0.copyload.i to i64
  %i.ae = shl nsw i64 %i.ad, 32
  %i.af = select i1 %or.cond.i, i64 4294967296, i64 %i.ae
  %i.ag = sext i32 %.sroa.6.0.copyload.i to i64
  %i.ah = select i1 %or.cond.i, i64 1, i64 %i.ag
  %i.ai = sdiv i64 %i.af, %i.ah                   ; 14 uses
  %.fr393.i = freeze i32 %.pre419.i
  %i.aj = icmp eq i32 %.fr393.i, 1
  %i.ak = sitofp nsz i64 %i.ai to float           ; 3 uses
  %i.al = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg1_aspect, i64 4), align 4, !tbaa !146
  %i.am = fdiv nsz float f0x4F800000, %i.al
  %i.an = fsub nsz float %i.ak, %i.am
  %i.ao = fptosi float %i.an to i64
  %i.ap = tail call i64 @llvm.abs.i64(i64 %i.ao, i1 true) ; 4 uses
  br i1 %i.aj, label %put_sbits.exit225.split.us.preheader.i, label %put_sbits.exit225.split.peel.next.i
end_hunk_0
