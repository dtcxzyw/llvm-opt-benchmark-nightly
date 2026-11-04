Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp56?download=true
inline.NumInlined: 24
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ff_vp56_init_dequant:bb.a
}

declare void @ff_vp3dsp_set_bounding_values(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @ff_vp56_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 616 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !88   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 3076
  %i.j = load i32, ptr %i.i, align 4, !tbaa !49
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i32 %i.h, 3
  br i1 %i.k, label %.thread94, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.m = load i8, ptr %i.b, align 1, !tbaa !27
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !27
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = or disjoint i32 %i.s, %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !27
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.t, %i.w               ; 2 uses
  %i.y = add nsw i32 %i.h, -3                     ; 2 uses
  %i.z = icmp samesign ult i32 %i.y, %i.x
  br i1 %i.z, label %.thread94, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.l, %bb.c ]  ; 2 uses
  %.076 = phi i32 [ %i.h, %bb.a ], [ %i.y, %bb.c ]
  %.075 = phi i32 [ %i.h, %bb.a ], [ %i.x, %bb.c ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 3192
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !89
  %i.ac = tail call i32 %i.ab(ptr noundef nonnull %i.d, ptr noundef %.0, i32 noundef %.075) #8 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.thread94, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp eq i32 %i.ac, 1                    ; 3 uses
  br i1 %i.ae, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 3200 ; 4 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !48
  tail call void @av_frame_unref(ptr noundef %i.ag) #8
  %i.ah = load ptr, ptr %i.af, align 16, !tbaa !50 ; 2 uses
  %.not91 = icmp eq ptr %i.ah, null
  br i1 %.not91, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 616
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !48
  tail call void @av_frame_unref(ptr noundef %i.aj) #8
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 624
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !48
  tail call void @av_frame_unref(ptr noundef %i.al) #8
  %i.am = load ptr, ptr %i.af, align 16, !tbaa !50 ; 2 uses
  %.not91.1 = icmp eq ptr %i.am, null
  br i1 %.not91.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 624
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48
  tail call void @av_frame_unref(ptr noundef %i.ao) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 632
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48
  tail call void @av_frame_unref(ptr noundef %i.aq) #8
  %i.ar = load ptr, ptr %i.af, align 16, !tbaa !50 ; 2 uses
  %.not91.2 = icmp eq ptr %i.ar, null
  br i1 %.not91.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 632
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !48
  tail call void @av_frame_unref(ptr noundef %i.at) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 640
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !48
  tail call void @av_frame_unref(ptr noundef %i.av) #8
  %i.aw = load ptr, ptr %i.af, align 16, !tbaa !50 ; 2 uses
  %.not91.3 = icmp eq ptr %i.aw, null
  br i1 %.not91.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 640
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48
  tail call void @av_frame_unref(ptr noundef %i.ay) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 276 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !55
  %i.bc = or i32 %i.bb, 2
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !55
  %i.bd = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %i.f, i32 noundef 1) #8 ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.n, label %bb.o

.thread:                                          ; preds = %bb.e
  %i.bf = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %i.f, i32 noundef 1) #8 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %.thread94, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bh = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #8 ; 0 uses
  br label %.thread94

bb.o:                                             ; preds = %.thread, %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !56
  %i.bk = icmp eq i32 %i.bj, 33
  br i1 %i.bk, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 3200
  %i.bm = load ptr, ptr %i.bl, align 16, !tbaa !50
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 616
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !48
  %i.bp = tail call i32 @av_frame_replace(ptr noundef %i.bo, ptr noundef %i.f) #8 ; 3 uses
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  tail call void @av_frame_unref(ptr noundef %i.f) #8
  br i1 %i.ae, label %bb.r, label %.thread94

bb.r:                                             ; preds = %bb.q
  %i.br = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #8 ; 0 uses
  br label %.thread94

bb.s:                                             ; preds = %bb.p, %bb.o
  br i1 %i.ae, label %tailrecurse.i, label %vp56_size_changed.exit

tailrecurse.i:                                    ; preds = %bb.s, %bb.y
  %.tr.i = phi ptr [ %i.ed, %bb.y ], [ %i.d, %bb.s ] ; 20 uses
  %i.bs = load ptr, ptr %.tr.i, align 16, !tbaa !57 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr.i, i64 616
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 64 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !58 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 120 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !90 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr.i, i64 744
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr.i, i64 756
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !58
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !58
  %i.cb = load i32, ptr %i.bx, align 8, !tbaa !90
  %i.cc = sdiv i32 %i.cb, 2                       ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr.i, i64 752
  store i32 %i.cc, ptr %i.cd, align 16, !tbaa !58
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr.i, i64 748
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 124 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !91 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr.i, i64 760
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr.i, i64 772
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !58
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !58
  %i.cj = load i32, ptr %i.cf, align 4, !tbaa !91
  %i.ck = sdiv i32 %i.cj, 2                       ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr.i, i64 768
  store i32 %i.ck, ptr %i.cl, align 16, !tbaa !58
  %i.cm = getelementptr inbounds nuw i8, ptr %.tr.i, i64 764
  store i32 %i.ck, ptr %i.cm, align 4, !tbaa !58
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr.i, i64 5872
  store i32 0, ptr %i.cn, align 16, !tbaa !59
  %i.co = getelementptr inbounds nuw i8, ptr %.tr.i, i64 3092 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !60
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr.i, i64 3104
  %i.cr = load <4 x i32>, ptr %i.bv, align 8, !tbaa !58
  %i.cs = insertelement <4 x i32> poison, i32 %i.cp, i64 0
  %i.ct = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cu = mul nsw <4 x i32> %i.cr, %i.ct
  %i.cv = sext <4 x i32> %i.cu to <4 x i64>
  store <4 x i64> %i.cv, ptr %i.cq, align 16, !tbaa !61
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr.i, i64 776 ; 2 uses
  %i.cx = load <2 x i32>, ptr %i.bx, align 8, !tbaa !58
  %.fr = freeze <2 x i32> %i.cx                   ; 2 uses
  %i.cy = add nsw <2 x i32> %.fr, splat (i32 15)
  %i.cz = sdiv <2 x i32> %i.cy, splat (i32 16)    ; 2 uses
  store <2 x i32> %i.cz, ptr %i.cw, align 8, !tbaa !58
  %i.da = icmp sgt <2 x i32> %.fr, splat (i32 16000)
  %4 = bitcast <2 x i1> %i.da to i2
  %or.cond.i.not = icmp eq i2 %4, 0
  br i1 %or.cond.i.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %tailrecurse.i
  %i.db = tail call i32 @ff_set_dimensions(ptr noundef nonnull %i.bs, i32 noundef 0, i32 noundef 0) #8, !inline_history !85 ; 0 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.bs, i32 noundef 16, ptr noundef nonnull @.str.1) #8, !inline_history !85
  br label %.loopexit

bb.u:                                             ; preds = %tailrecurse.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.tr.i, i64 780
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr.i, i64 816 ; 2 uses
  %i.de = extractelement <2 x i32> %i.cz, i64 0
  %i.df = shl nsw i32 %i.de, 2
  %i.dg = add nsw i32 %i.df, 6
  %i.dh = sext i32 %i.dg to i64
  %i.di = tail call i32 @av_reallocp_array(ptr noundef nonnull %i.dd, i64 noundef %i.dh, i64 noundef 12) #8, !inline_history !85 ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.tr.i, i64 920 ; 2 uses
  %i.dk = load i32, ptr %i.cw, align 8, !tbaa !62
  %i.dl = load i32, ptr %i.dc, align 4, !tbaa !63
  %i.dm = mul nsw i32 %i.dl, %i.dk
  %i.dn = sext i32 %i.dm to i64
  %i.do = tail call i32 @av_reallocp_array(ptr noundef nonnull %i.dj, i64 noundef %i.dn, i64 noundef 8) #8, !inline_history !85 ; 0 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.tr.i, i64 648 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !64
  tail call void @av_free(ptr noundef %i.dq) #8, !inline_history !85
  %i.dr = shl nsw i32 %i.bw, 5
  %i.ds = sext i32 %i.dr to i64
  %i.dt = tail call noalias ptr @av_malloc(i64 noundef %i.ds) #8, !inline_history !85 ; 4 uses
  store ptr %i.dt, ptr %i.dp, align 8, !tbaa !64
  %i.du = getelementptr inbounds nuw i8, ptr %.tr.i, i64 656 ; 2 uses
  store ptr %i.dt, ptr %i.du, align 16, !tbaa !65
  %i.dv = load ptr, ptr %i.dd, align 16, !tbaa !66
  %.not.i = icmp eq ptr %i.dv, null
  br i1 %.not.i, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = load ptr, ptr %i.dj, align 8, !tbaa !67
  %.not51.i = icmp eq ptr %i.dw, null
  %.not52.i = icmp eq ptr %i.dt, null
  %or.cond54.i = select i1 %.not51.i, i1 true, i1 %.not52.i
  br i1 %or.cond54.i, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dx = load i32, ptr %i.co, align 4, !tbaa !60
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dz = mul nsw i32 %i.bw, 30
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 %i.ea
  store ptr %i.eb, ptr %i.du, align 16, !tbaa !65
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %.tr.i, i64 3200
  %i.ed = load ptr, ptr %i.ec, align 16, !tbaa !50 ; 2 uses
  %.not53.i = icmp eq ptr %i.ed, null
  br i1 %.not53.i, label %vp56_size_changed.exit, label %tailrecurse.i

.loopexit:                                        ; preds = %bb.u, %bb.v, %bb.t
  tail call void @av_frame_unref(ptr noundef %i.f) #8
  br label %.thread94

vp56_size_changed.exit:                           ; preds = %bb.y, %bb.s
  %i.ee = load i32, ptr %i.bi, align 8, !tbaa !56
  %i.ef = icmp eq i32 %i.ee, 33
  br i1 %i.ef, label %bb.z, label %.critedge

bb.z:                                             ; preds = %vp56_size_changed.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.eh = load <4 x i32>, ptr %i.eg, align 8, !tbaa !58
  %i.ei = sext i32 %.075 to i64
  %i.ej = getelementptr inbounds i8, ptr %.0, i64 %i.ei
  %i.ek = sub nsw i32 %.076, %.075
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 3200
  %i.em = load ptr, ptr %i.el, align 16, !tbaa !50 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 3192
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !89
  %i.ep = tail call i32 %i.eo(ptr noundef %i.em, ptr noundef %i.ej, i32 noundef %i.ek) #8
  switch i32 %i.ep, label %bb.ab [
    i32 0, label %..critedge_crit_edge
    i32 1, label %bb.aa
  ]

..critedge_crit_edge:                             ; preds = %bb.z
  %.pre = load i32, ptr %i.bi, align 8, !tbaa !56
  %i.eq = icmp eq i32 %.pre, 33
  %i.er = select i1 %i.eq, i32 2, i32 1
  br label %.critedge

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str) #8
  store <4 x i32> %i.eh, ptr %i.eg, align 8, !tbaa !58
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  tail call void @av_frame_unref(ptr noundef %i.f) #8
  br label %.thread94

.critedge:                                        ; preds = %..critedge_crit_edge, %vp56_size_changed.exit
  %i.es = phi i32 [ %i.er, %..critedge_crit_edge ], [ 1, %vp56_size_changed.exit ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 5876 ; 2 uses
  store i32 0, ptr %i.et, align 4, !tbaa !68
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !92
  %i.ew = tail call i32 %i.ev(ptr noundef nonnull %0, ptr noundef nonnull @ff_vp56_decode_mbs, ptr noundef null, ptr noundef null, i32 noundef %i.es) #8 ; 0 uses
  %i.ex = load i32, ptr %i.et, align 4, !tbaa !68
  %.not90 = icmp eq i32 %i.ex, 0
  br i1 %.not90, label %bb.ac, label %.thread94

bb.ac:                                            ; preds = %.critedge
  %i.ey = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.f) #8 ; 2 uses
  %i.ez = icmp slt i32 %i.ey, 0
  br i1 %i.ez, label %.thread94, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %2, align 4, !tbaa !58
  %i.fa = load i32, ptr %i.g, align 8, !tbaa !88
  br label %.thread94

.thread94:                                        ; preds = %.thread, %bb.ab, %bb.ac, %.critedge, %bb.q, %bb.r, %bb.n, %bb.d, %bb.c, %bb.b, %bb.ad, %.loopexit
  %.1 = phi i32 [ -1094995529, %bb.ab ], [ -1094995529, %bb.b ], [ -1094995529, %bb.c ], [ %i.ac, %bb.d ], [ %i.bf, %.thread ], [ -1094995529, %.loopexit ], [ %i.bp, %bb.q ], [ -1094995529, %.critedge ], [ %i.fa, %bb.ad ], [ %i.bd, %bb.n ], [ %i.bp, %bb.r ], [ %i.ey, %bb.ac ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #1

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @av_frame_replace(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @ff_vp56_decode_mbs(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3) #0 {
bb.a:
  %4 = alloca [2 x %struct.VP56mv], align 8       ; 7 uses
  %5 = alloca [2 x %struct.VP56mv], align 8       ; 7 uses
  %6 = alloca [2 x %struct.VP56mv], align 8       ; 7 uses
  %7 = alloca [2 x %struct.VP56mv], align 8       ; 8 uses
  %8 = alloca %struct.VP56mv, align 4             ; 8 uses
  %i.a = alloca [4 x i64], align 16               ; 4 uses
  %i.b = alloca [10 x i32], align 16              ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not206 = icmp eq i32 %2, 1                    ; 5 uses
  br i1 %.not206, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3200
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 125 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 616 ; 11 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 276 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !55
  %i.l = and i32 %i.k, 2
  %.not = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.m, align 8, !tbaa !119
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 3168
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !120
  tail call void %i.o(ptr noundef nonnull %i.g) #8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 780
  %i.q = load i32, ptr %i.p, align 4, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 776
  %i.s = load i32, ptr %i.r, align 8, !tbaa !62
  %i.t = mul nsw i32 %i.s, %i.q                   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 920
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !67   ; 9 uses
  %wide.trip.count = zext nneg i32 %i.t to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.x = icmp ult i32 %i.t, 8
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.e ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.e ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
end_hunk_0
