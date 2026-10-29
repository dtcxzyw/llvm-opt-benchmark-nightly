Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colorspace?download=true
inline.NumInlined: 10
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 21
begin_hunk_0_@filter_frame:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !46
  %i.w = tail call ptr @ff_get_video_buffer(ptr noundef %i.p, i32 noundef %i.t, i32 noundef %i.v) #9 ; 14 uses
  store ptr %i.w, ptr %i.k, align 8, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !51
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 1
  %i.ab = add nsw i64 %i.aa, 30
  %i.ac = and i64 %i.ab, -32                      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !52
  %i.af = trunc i64 %i.ac to i32
  %i.ag = mul i32 %i.ae, %i.af                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.j) #9
  br label %bb.dl

bb.c:                                             ; preds = %bb.a
  %i.ah = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.w, ptr noundef nonnull %1) #9 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @av_frame_free(ptr noundef nonnull %i.j) #9
  call void @av_frame_free(ptr noundef nonnull %i.k) #9
  br label %bb.dl

bb.e:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 460
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 292
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !84
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 480
  %i.an = load i32, ptr %i.am, align 16, !tbaa !32 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ar = phi i32 [ %i.aq, %bb.f ], [ %i.an, %bb.e ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 280 ; 3 uses
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !85
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 512
  %i.au = load i32, ptr %i.at, align 16, !tbaa !86 ; 2 uses
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 448
  %i.ax = load i32, ptr %i.aw, align 16, !tbaa !27
  %narrow = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 9)
  %spec.select = zext nneg i32 %narrow to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @default_prm, i64 %spec.select
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ba = phi i32 [ %i.az, %bb.h ], [ %i.au, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 284 ; 4 uses
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !87
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.bd = load i32, ptr %i.bc, align 16, !tbaa !88 ; 3 uses
  %i.be = icmp eq i32 %i.bd, 2
  br i1 %i.be, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 116
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !89
  %i.bh = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.bg) #9 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.r, i64 448
  %i.bj = load i32, ptr %i.bi, align 16, !tbaa !27 ; 2 uses
  %narrow125 = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 9)
  %spec.select116 = zext nneg i32 %narrow125 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @default_trc, i64 %spec.select116
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !28 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.w, i64 288 ; 2 uses
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !90
  %i.bn = icmp eq i32 %i.bj, 8
  %i.bo = icmp ne ptr %i.bh, null
  %or.cond = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !92
  %i.br = icmp sgt i32 %i.bq, 11
  br i1 %i.br, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  store i32 15, ptr %i.bm, align 8, !tbaa !90
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 288
  store i32 %i.bd, ptr %i.bs, align 8, !tbaa !90
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.bt = phi i32 [ %i.bl, %bb.j ], [ %i.bl, %bb.k ], [ 15, %bb.l ], [ %i.bd, %bb.m ]
  %i.bu = load i32, ptr %i.bb, align 4, !tbaa !87
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 284 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !87
  %.not103 = icmp eq i32 %i.bu, %i.bw
  br i1 %.not103, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !90
  %.not104 = icmp eq i32 %i.bt, %i.by
  br i1 %.not104, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 272
  tail call void @av_frame_side_data_remove_by_props(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.ca, i32 noundef 8) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 576 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 16, !tbaa !31
  %.not105 = icmp eq i32 %i.ag, %i.cc
  br i1 %.not105, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %i.w, i64 116
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !89
  %i.cf = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.ce) #9
  %i.cg = load i32, ptr %i.x, align 8, !tbaa !51
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 9
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !94
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = ashr i32 %i.cg, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 544 ; 3 uses
  tail call void @av_freep(ptr noundef nonnull %i.cl) #9
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 552 ; 3 uses
  tail call void @av_freep(ptr noundef nonnull %i.cm) #9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.r, i64 560 ; 3 uses
  tail call void @av_freep(ptr noundef nonnull %i.cn) #9
  store i32 0, ptr %i.cb, align 16, !tbaa !31
  %i.co = getelementptr inbounds nuw i8, ptr %i.r, i64 632 ; 3 uses
  tail call void @av_freep(ptr noundef nonnull %i.co) #9
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 640 ; 3 uses
  tail call void @av_freep(ptr noundef nonnull %i.cp) #9
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 648 ; 2 uses
  tail call void @av_freep(ptr noundef nonnull %i.cq) #9
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 656 ; 3 uses
  tail call void @av_freep(ptr noundef nonnull %i.cr) #9
  %i.cs = getelementptr inbounds nuw i8, ptr %i.r, i64 664 ; 3 uses
  tail call void @av_freep(ptr noundef nonnull %i.cs) #9
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 672 ; 2 uses
  tail call void @av_freep(ptr noundef nonnull %i.ct) #9
  %i.cu = zext i32 %i.ag to i64                   ; 3 uses
  %i.cv = tail call noalias ptr @av_malloc(i64 noundef %i.cu) #9
  store ptr %i.cv, ptr %i.cl, align 16, !tbaa !53
  %i.cw = tail call noalias ptr @av_malloc(i64 noundef %i.cu) #9
  store ptr %i.cw, ptr %i.cm, align 8, !tbaa !53
  %i.cx = tail call noalias ptr @av_malloc(i64 noundef %i.cu) #9
  store ptr %i.cx, ptr %i.cn, align 16, !tbaa !53
  %i.cy = load i32, ptr %i.x, align 8, !tbaa !51
  %i.cz = add nsw i32 %i.cy, 4
  %i.da = sext i32 %i.cz to i64
  %i.db = shl nsw i64 %i.da, 2
  %i.dc = tail call noalias ptr @av_malloc(i64 noundef %i.db) #9
  store ptr %i.dc, ptr %i.co, align 8, !tbaa !96
  %i.dd = load i32, ptr %i.x, align 8, !tbaa !51
  %i.de = add nsw i32 %i.dd, 4
  %i.df = sext i32 %i.de to i64
  %i.dg = shl nsw i64 %i.df, 2
  %i.dh = tail call noalias ptr @av_malloc(i64 noundef %i.dg) #9
  store ptr %i.dh, ptr %i.cp, align 16, !tbaa !96
  %i.di = add nsw i32 %i.ck, 4
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 2                    ; 4 uses
  %i.dl = tail call noalias ptr @av_malloc(i64 noundef %i.dk) #9
  store ptr %i.dl, ptr %i.cq, align 8, !tbaa !96
  %i.dm = tail call noalias ptr @av_malloc(i64 noundef %i.dk) #9
  store ptr %i.dm, ptr %i.cr, align 16, !tbaa !96
  %i.dn = tail call noalias ptr @av_malloc(i64 noundef %i.dk) #9
  store ptr %i.dn, ptr %i.cs, align 8, !tbaa !96
  %i.do = tail call noalias ptr @av_malloc(i64 noundef %i.dk) #9 ; 3 uses
  store ptr %i.do, ptr %i.ct, align 16, !tbaa !96
  %i.dp = getelementptr inbounds nuw i8, ptr %i.r, i64 584
  %i.dq = load ptr, ptr %i.co, align 8, !tbaa !96 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !96
  %i.ds = getelementptr inbounds nuw i8, ptr %i.r, i64 592
  %i.dt = load <2 x ptr>, ptr %i.cp, align 16, !tbaa !96 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, <2 x ptr> %i.dt, i64 4
  store <2 x ptr> %i.du, ptr %i.ds, align 16, !tbaa !96
  %i.dv = load ptr, ptr %i.cr, align 16, !tbaa !96
  %.fr157 = freeze ptr %i.dv                      ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.fr157, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.r, i64 608
  store ptr %i.dw, ptr %i.dx, align 16, !tbaa !96
  %i.dy = load ptr, ptr %i.cs, align 8, !tbaa !96
  %.fr156 = freeze ptr %i.dy                      ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.fr156, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.r, i64 616
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !96
  %i.eb = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 624
  store ptr %i.eb, ptr %i.ec, align 16, !tbaa !96
  %i.ed = load ptr, ptr %i.cl, align 16, !tbaa !53
  %.not106 = icmp eq ptr %i.ed, null
  br i1 %.not106, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = load ptr, ptr %i.cm, align 8, !tbaa !53
  %.not107 = icmp eq ptr %i.ee, null
  br i1 %.not107, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ef = load ptr, ptr %i.cn, align 16, !tbaa !53
  %i.eg = insertelement <4 x ptr> poison, ptr %i.ef, i64 0
  %i.eh = insertelement <4 x ptr> %i.eg, ptr %i.dq, i64 1
  %i.ei = shufflevector <2 x ptr> %i.dt, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ej = shufflevector <4 x ptr> %i.eh, <4 x ptr> %i.ei, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.fr = freeze <4 x ptr> %i.ej
  %i.ek = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %.not112 = icmp eq ptr %.fr157, null
  %.not113 = icmp eq ptr %.fr156, null
  %.not114 = icmp eq ptr %i.do, null
  %i.el = bitcast <4 x i1> %i.ek to i4
  %i.em = icmp ne i4 %i.el, 0
  %op.rdx = or i1 %i.em, %.not112
  %3 = or i1 %op.rdx, %.not113
  %op.rdx155 = select i1 %3, i1 true, i1 %.not114
  br i1 %op.rdx155, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.en = load ptr, ptr %i.q, align 8, !tbaa !19  ; 11 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 544
  tail call void @av_freep(ptr noundef nonnull %i.eo) #9
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 552
  tail call void @av_freep(ptr noundef nonnull %i.ep) #9
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 560
  tail call void @av_freep(ptr noundef nonnull %i.eq) #9
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 576
  store i32 0, ptr %i.er, align 16, !tbaa !31
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 632
  tail call void @av_freep(ptr noundef nonnull %i.es) #9
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 640
  tail call void @av_freep(ptr noundef nonnull %i.et) #9
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 648
  tail call void @av_freep(ptr noundef nonnull %i.eu) #9
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 656
  tail call void @av_freep(ptr noundef nonnull %i.ev) #9
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 664
  tail call void @av_freep(ptr noundef nonnull %i.ew) #9
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 672
  tail call void @av_freep(ptr noundef nonnull %i.ex) #9
  %i.ey = getelementptr inbounds nuw i8, ptr %i.en, i64 872
  tail call void @av_freep(ptr noundef nonnull %i.ey) #9
  call void @av_frame_free(ptr noundef nonnull %i.j) #9
  call void @av_frame_free(ptr noundef nonnull %i.k) #9
  br label %bb.dl

.critedge:                                        ; preds = %bb.t
  store i32 %i.ag, ptr %i.cb, align 16, !tbaa !31
  br label %bb.v

bb.v:                                             ; preds = %.critedge, %bb.q
  %i.ez = load ptr, ptr %i.q, align 8, !tbaa !19  ; 112 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 3 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !89
  %i.fc = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.fb) #9 ; 9 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.w, i64 116 ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !89
  %i.ff = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.fe) #9 ; 9 uses
  %.not.i = icmp eq ptr %i.fc, null
  br i1 %.not.i, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fh = load i8, ptr %i.fg, align 8, !tbaa !97
  %i.fi = icmp eq i8 %i.fh, 3
  br i1 %i.fi, label %bb.x, label %.thread438.i

bb.x:                                             ; preds = %bb.w
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !98
  %i.fl = and i64 %i.fk, 32
  %.not387.i = icmp eq i64 %i.fl, 0
  br i1 %.not387.i, label %bb.y, label %.thread438.i

bb.y:                                             ; preds = %bb.x
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 40 ; 5 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !92
  switch i32 %i.fn, label %.thread438.i [
    i32 8, label %bb.z
    i32 10, label %bb.z
    i32 12, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 9 ; 4 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !94
  switch i8 %i.fp, label %.thread438.i [
    i8 0, label %bb.aa
    i8 1, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fc, i64 10
  %i.fr = load i8, ptr %i.fq, align 2, !tbaa !99
  %i.fs = icmp eq i8 %i.fr, 0
  br i1 %i.fs, label %bb.ae, label %.thread438.i

bb.ab:                                            ; preds = %bb.z
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fc, i64 10
  %i.fu = load i8, ptr %i.ft, align 2, !tbaa !99
  %switch.i = icmp ult i8 %i.fu, 2
  br i1 %switch.i, label %bb.ae, label %.thread438.i

bb.ac:                                            ; preds = %bb.v
  %i.fv = load i32, ptr %i.fa, align 4, !tbaa !89 ; 2 uses
  %i.fw = tail call ptr @av_get_pix_fmt_name(i32 noundef %i.fv) #9
  br label %bb.ad

.thread438.i:                                     ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %i.fx = load i32, ptr %i.fa, align 4, !tbaa !89 ; 2 uses
  %i.fy = tail call ptr @av_get_pix_fmt_name(i32 noundef %i.fx) #9
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !92
  br label %bb.ad

bb.ad:                                            ; preds = %.thread438.i, %bb.ac
  %i.gb = phi ptr [ %i.fy, %.thread438.i ], [ %i.fw, %bb.ac ]
  %i.gc = phi i32 [ %i.fx, %.thread438.i ], [ %i.fv, %bb.ac ]
  %i.gd = phi i32 [ %i.ga, %.thread438.i ], [ -1, %bb.ac ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.m, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.gc, ptr noundef %i.gb, i32 noundef %i.gd) #9
  br label %bb.dg

bb.ae:                                            ; preds = %bb.ab, %bb.aa
  %.not388.i = icmp eq ptr %i.ff, null
  br i1 %.not388.i, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !97
  %i.gg = icmp eq i8 %i.gf, 3
  br i1 %i.gg, label %bb.ag, label %.thread442.i

bb.ag:                                            ; preds = %bb.af
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !98
  %i.gj = and i64 %i.gi, 32
  %.not389.i = icmp eq i64 %i.gj, 0
  br i1 %.not389.i, label %bb.ah, label %.thread442.i

bb.ah:                                            ; preds = %bb.ag
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ff, i64 40 ; 5 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !92
  switch i32 %i.gl, label %.thread442.i [
    i32 8, label %bb.ai
    i32 10, label %bb.ai
    i32 12, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah, %bb.ah
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ff, i64 9 ; 3 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !94
  switch i8 %i.gn, label %.thread442.i [
    i8 0, label %bb.aj
    i8 1, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.go = getelementptr inbounds nuw i8, ptr %i.ff, i64 10
  %i.gp = load i8, ptr %i.go, align 2, !tbaa !99
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.an, label %.thread442.i

bb.ak:                                            ; preds = %bb.ai
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ff, i64 10
  %i.gs = load i8, ptr %i.gr, align 2, !tbaa !99
  %switch525.i = icmp ult i8 %i.gs, 2
  br i1 %switch525.i, label %bb.an, label %.thread442.i

bb.al:                                            ; preds = %bb.ae
  %i.gt = load i32, ptr %i.fd, align 4, !tbaa !89 ; 2 uses
  %i.gu = tail call ptr @av_get_pix_fmt_name(i32 noundef %i.gt) #9
  br label %bb.am

.thread442.i:                                     ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.gv = load i32, ptr %i.fd, align 4, !tbaa !89 ; 2 uses
  %i.gw = tail call ptr @av_get_pix_fmt_name(i32 noundef %i.gv) #9
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !92
  br label %bb.am

bb.am:                                            ; preds = %.thread442.i, %bb.al
  %i.gz = phi ptr [ %i.gw, %.thread442.i ], [ %i.gu, %bb.al ]
  %i.ha = phi i32 [ %i.gv, %.thread442.i ], [ %i.gt, %bb.al ]
  %i.hb = phi i32 [ %i.gy, %.thread442.i ], [ -1, %bb.al ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.m, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.ha, ptr noundef %i.gz, i32 noundef %i.hb) #9
  br label %bb.dg

bb.an:                                            ; preds = %bb.ak, %bb.aj
  %i.hc = load i32, ptr %i.bv, align 4, !tbaa !87 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ez, i64 504 ; 5 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !100
  %.not390.i = icmp eq i32 %i.hc, %i.he
  br i1 %.not390.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ez, i64 680
  store ptr null, ptr %i.hf, align 8, !tbaa !101
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hg = load i32, ptr %i.bb, align 4, !tbaa !87
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ez, i64 508 ; 3 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !102
  %.not391.i = icmp eq i32 %i.hg, %i.hi
  br i1 %.not391.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ez, i64 688
  store ptr null, ptr %i.hj, align 16, !tbaa !103
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !90
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ez, i64 488 ; 4 uses
end_hunk_0
