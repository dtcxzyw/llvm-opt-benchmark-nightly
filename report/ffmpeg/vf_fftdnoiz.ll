Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_fftdnoiz?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@filter_frame:bb.a
  br i1 %i.cg, label %bb.t, label %bb.x

bb.t:                                             ; preds = %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !37
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  br i1 %.not95, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr null, ptr %i.ck, align 8, !tbaa !38
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  tail call void @av_frame_free(ptr noundef nonnull %i.ck) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t, %._crit_edge
  %i.cl = tail call i32 @ff_filter_frame(ptr noundef %i.g, ptr noundef %.0) #10
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.n, %bb.j, %bb.g, %bb.f, %bb.e, %bb.x
  %.082 = phi i32 [ %i.cl, %bb.x ], [ -12, %bb.j ], [ -12, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ], [ -12, %bb.n ], [ 0, %bb.d ]
  ret i32 %.082
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = alloca [257 x float], align 16           ; 41 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !128
  %i.j = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.i) #10 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !130  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i32 %i.l, ptr %i.m, align 8, !tbaa !51
  %i.n = icmp slt i32 %i.l, 9                     ; 2 uses
  %spec.select305 = select i1 %i.n, ptr @import_row8, ptr @import_row16
  %spec.select306 = select i1 %i.n, ptr @export_row8, ptr @export_row16
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 270616
  store ptr %spec.select305, ptr %i.o, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 270624
  store ptr %spec.select306, ptr %i.p, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !41   ; 3 uses
  %i.s = sub nsw i32 0, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.u = load i8, ptr %i.t, align 1, !tbaa !133
  %i.v = zext nneg i8 %i.u to i32
  %i.w = ashr i32 %i.s, %i.v
  %i.x = sub nsw i32 0, %i.w                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 3752
  store i32 %i.x, ptr %i.z, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 1920
  store i32 %i.x, ptr %i.aa, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 5584
  store i32 %i.r, ptr %i.ab, align 8, !tbaa !50
  store i32 %i.r, ptr %i.y, align 8, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !42 ; 3 uses
  %i.ae = sub nsw i32 0, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !134
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = ashr i32 %i.ae, %i.ah
  %i.aj = sub nsw i32 0, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 3756
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !52
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 1924
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 5588
  store i32 %i.ad, ptr %i.am, align 4, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 92
  store i32 %i.ad, ptr %i.an, align 4, !tbaa !52
  %i.ao = load i32, ptr %i.h, align 4, !tbaa !128
  %i.ap = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.ao) #10 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 76 ; 3 uses
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !45
  %i.ar = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.e) #11 ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 32)
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 4 uses
  store i32 %spec.select, ptr %i.as, align 8, !tbaa !23
  %.not213 = icmp sgt i32 %i.ar, 0
  br i1 %.not213, label %.lr.ph, label %.preheader211

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 269560
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 270584
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 269816
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 270592
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 270072
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 270600
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 270328
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 270608
  br label %bb.c

bb.b:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = load i32, ptr %i.as, align 8, !tbaa !23
  %i.bf = sext i32 %i.be to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %.not, label %bb.c, label %.preheader211.loopexit, !llvm.loop !86

.preheader211.loopexit:                           ; preds = %bb.b
  %.pre = load i32, ptr %i.aq, align 4, !tbaa !45
  br label %.preheader211

.preheader211:                                    ; preds = %.preheader211.loopexit, %bb.a
  %i.bg = phi i32 [ %.pre, %.preheader211.loopexit ], [ %i.ap, %bb.a ]
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph220, label %._crit_edge221

.lr.ph220:                                        ; preds = %.preheader211
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !55
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.bn = load i32, ptr %i.av, align 8, !tbaa !56
  %i.bo = call i32 @av_tx_init(ptr noundef nonnull %i.bm, ptr noundef nonnull %i.au, i32 noundef 0, i32 noundef 0, i32 noundef %i.bn, ptr noundef nonnull %i.b, i64 noundef 0) #10 ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.br = load i32, ptr %i.av, align 8, !tbaa !56
  %i.bs = call i32 @av_tx_init(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.ax, i32 noundef 0, i32 noundef 1, i32 noundef %i.br, ptr noundef nonnull %i.c, i64 noundef 0) #10 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.bv = load i32, ptr %i.ba, align 8, !tbaa !37
  %i.bw = add nsw i32 %i.bv, 1
  %i.bx = load i32, ptr %i.bb, align 4, !tbaa !36
  %i.by = add nsw i32 %i.bw, %i.bx
  %i.bz = call i32 @av_tx_init(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.az, i32 noundef 0, i32 noundef 0, i32 noundef %i.by, ptr noundef nonnull %i.b, i64 noundef 0) #10 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.c, %bb.e, %bb.d
  %.1164.ph = phi i32 [ %i.bz, %bb.e ], [ %i.bs, %bb.d ], [ %i.bo, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.thread184

bb.f:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.cc = load i32, ptr %i.ba, align 8, !tbaa !37
  %i.cd = add nsw i32 %i.cc, 1
  %i.ce = load i32, ptr %i.bb, align 4, !tbaa !36
  %i.cf = add nsw i32 %i.cd, %i.ce
  %i.cg = call i32 @av_tx_init(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.bd, i32 noundef 0, i32 noundef 1, i32 noundef %i.cf, ptr noundef nonnull %i.c, i64 noundef 0) #10 ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br i1 %i.ch, label %bb.b, label %.thread184

bb.g:                                             ; preds = %.lr.ph220, %._crit_edge
  %indvars.iv254 = phi i64 [ 0, %.lr.ph220 ], [ %indvars.iv.next255, %._crit_edge ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [1832 x i8], ptr %i.y, i64 %indvars.iv254 ; 12 uses
  %i.cj = load i32, ptr %i.bi, align 8, !tbaa !56 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 9 uses
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !57
  %i.cl = mul nsw i32 %i.cj, %i.cj
  %i.cm = uitofp nsz nneg i32 %i.cl to float
  %i.cn = fdiv nsz float 1.000000e+00, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store float %i.cn, ptr %i.co, align 8, !tbaa !135
  %i.cp = sitofp nsz i32 %i.cj to float
  %i.cq = load float, ptr %i.bj, align 4, !tbaa !136
  %i.cr = fmul nsz float %i.cq, %i.cp
  %i.cs = call i64 @llvm.lrint.i64.f32(float %i.cr)
  %i.ct = trunc i64 %i.cs to i32                  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !58
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cw = sub nsw i32 %i.cj, %i.ct                ; 2 uses
  %1 = insertelement <2 x i32> poison, i32 %i.cw, i64 0 ; 2 uses
  %2 = shufflevector <2 x i32> %1, <2 x i32> poison, <2 x i32> zeroinitializer
  %3 = load <2 x i32>, ptr %i.ci, align 8, !tbaa !49
  %i.cx = add nsw <2 x i32> %1, <i32 -1, i32 poison>
  %4 = shufflevector <2 x i32> %i.cx, <2 x i32> poison, <2 x i32> zeroinitializer
  %5 = add nsw <2 x i32> %4, %3
  %i.cy = sdiv <2 x i32> %5, %2                   ; 3 uses
  store <2 x i32> %i.cy, ptr %i.cv, align 8, !tbaa !49
  %i.cz = extractelement <2 x i32> %i.cy, i64 0
  %i.da = extractelement <2 x i32> %i.cy, i64 1
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.e, i32 noundef 48, ptr noundef nonnull @.str.3, i32 noundef %i.cz, i32 noundef %i.da, i32 noundef %i.cw) #10
  %i.db = load i32, ptr %i.ck, align 8, !tbaa !57
  %i.dc = shl i32 %i.db, 3                        ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 1828 ; 4 uses
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !59
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 1824 ; 5 uses
  store i32 %i.dc, ptr %i.de, align 8, !tbaa !60
  %i.df = load i32, ptr %i.as, align 8, !tbaa !23
  %.not178216 = icmp sgt i32 %i.df, 0
  br i1 %.not178216, label %.lr.ph218, label %._crit_edge

.lr.ph218:                                        ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ci, i64 800
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ci, i64 1312
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 1056
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1568
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  br label %bb.i

bb.h:                                             ; preds = %bb.q
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %i.dl = load i32, ptr %i.as, align 8, !tbaa !23
  %i.dm = sext i32 %i.dl to i64
  %.not178 = icmp slt i64 %indvars.iv.next252, %i.dm
  br i1 %.not178, label %bb.i, label %._crit_edge, !llvm.loop !87

bb.i:                                             ; preds = %.lr.ph218, %bb.h
  %indvars.iv251 = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next252, %bb.h ] ; 6 uses
  %i.dn = load i32, ptr %i.ck, align 8, !tbaa !57
  %i.do = sext i32 %i.dn to i64
  %i.dp = load i32, ptr %i.de, align 8, !tbaa !60
  %i.dq = sext i32 %i.dp to i64
  %i.dr = call noalias ptr @av_calloc(i64 noundef %i.do, i64 noundef %i.dq) #10
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv251 ; 2 uses
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !62
  %i.dt = load i32, ptr %i.ck, align 8, !tbaa !57
  %i.du = sext i32 %i.dt to i64
  %i.dv = load i32, ptr %i.de, align 8, !tbaa !60
  %i.dw = sext i32 %i.dv to i64
  %i.dx = call noalias ptr @av_calloc(i64 noundef %i.du, i64 noundef %i.dw) #10
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv251 ; 2 uses
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !62
  %i.dz = load i32, ptr %i.ck, align 8, !tbaa !57
  %i.ea = sext i32 %i.dz to i64
  %i.eb = load i32, ptr %i.de, align 8, !tbaa !60
  %i.ec = sext i32 %i.eb to i64
  %i.ed = call noalias ptr @av_calloc(i64 noundef %i.ea, i64 noundef %i.ec) #10
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv251 ; 2 uses
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !62
  %i.ef = load i32, ptr %i.ck, align 8, !tbaa !57
  %i.eg = sext i32 %i.ef to i64
  %i.eh = load i32, ptr %i.de, align 8, !tbaa !60
  %i.ei = sext i32 %i.eh to i64
  %i.ej = call noalias ptr @av_calloc(i64 noundef %i.eg, i64 noundef %i.ei) #10
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv251 ; 2 uses
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !62
  %i.el = load i32, ptr %i.ck, align 8, !tbaa !57
  %i.em = sext i32 %i.el to i64
  %i.en = load i32, ptr %i.dd, align 4, !tbaa !59
  %i.eo = sext i32 %i.en to i64
  %i.ep = call noalias ptr @av_calloc(i64 noundef %i.em, i64 noundef %i.eo) #10 ; 2 uses
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %indvars.iv251 ; 3 uses
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !64
  %.not171 = icmp eq ptr %i.ep, null
  br i1 %.not171, label %.thread184, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.er = load i32, ptr %i.bk, align 8, !tbaa !37
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.et = load i32, ptr %i.ck, align 8, !tbaa !57
  %i.eu = sext i32 %i.et to i64
  %i.ev = load i32, ptr %i.dd, align 4, !tbaa !59
  %i.ew = sext i32 %i.ev to i64
  %i.ex = call noalias ptr @av_calloc(i64 noundef %i.eu, i64 noundef %i.ew) #10 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !64
  %.not172 = icmp eq ptr %i.ex, null
  br i1 %.not172, label %.thread184, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ez = load i32, ptr %i.bl, align 4, !tbaa !36
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fb = load i32, ptr %i.ck, align 8, !tbaa !57
  %i.fc = sext i32 %i.fb to i64
  %i.fd = load i32, ptr %i.dd, align 4, !tbaa !59
  %i.fe = sext i32 %i.fd to i64
  %i.ff = call noalias ptr @av_calloc(i64 noundef %i.fc, i64 noundef %i.fe) #10 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !64
  %.not173 = icmp eq ptr %i.ff, null
  br i1 %.not173, label %.thread184, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.fh = load ptr, ptr %i.ds, align 8, !tbaa !62
  %.not174 = icmp eq ptr %i.fh, null
  br i1 %.not174, label %.thread184, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fi = load ptr, ptr %i.ee, align 8, !tbaa !62
  %.not175 = icmp eq ptr %i.fi, null
  br i1 %.not175, label %.thread184, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fj = load ptr, ptr %i.dy, align 8, !tbaa !62
  %.not176 = icmp eq ptr %i.fj, null
  br i1 %.not176, label %.thread184, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fk = load ptr, ptr %i.ek, align 8, !tbaa !62
  %.not177 = icmp eq ptr %i.fk, null
  br i1 %.not177, label %.thread184, label %bb.h

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %i.fl = load i32, ptr %i.aq, align 4, !tbaa !45
  %i.fm = sext i32 %i.fl to i64
  %i.fn = icmp slt i64 %indvars.iv.next255, %i.fm
  br i1 %i.fn, label %bb.g, label %._crit_edge221, !llvm.loop !88

._crit_edge221:                                   ; preds = %._crit_edge, %.preheader211
  %i.fo = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !56 ; 45 uses
  %i.fq = add i32 %i.fp, 1                        ; 35 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !137
  switch i32 %i.fs, label %bb.as [
    i32 0, label %.preheader.i
    i32 4, label %.preheader365.i
    i32 1, label %.preheader366.i
    i32 2, label %.preheader367.i
    i32 3, label %.preheader368.i
    i32 5, label %.preheader369.i
    i32 6, label %.preheader370.i
    i32 7, label %.preheader371.i
    i32 8, label %.preheader372.i
    i32 11, label %.preheader373.i
    i32 9, label %.preheader374.i
    i32 10, label %.preheader375.i
    i32 12, label %.preheader376.i
    i32 13, label %.preheader377.i
    i32 14, label %.preheader378.i
    i32 15, label %bb.x
    i32 16, label %.preheader379.i
    i32 17, label %.preheader380.i
    i32 18, label %.preheader381.i
    i32 19, label %.preheader382.i
    i32 20, label %bb.aq
  ]

.preheader382.i:                                  ; preds = %._crit_edge221
  %i.ft = icmp sgt i32 %i.fp, -1
  br i1 %i.ft, label %.lr.ph385.i, label %generate_window_func.exit

.lr.ph385.i:                                      ; preds = %.preheader382.i
  %i.fu = uitofp nneg i32 %i.fp to double         ; 2 uses
  %wide.trip.count456.i = zext nneg i32 %i.fq to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.fq, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph385.i
  %n.vec = and i64 %wide.trip.count456.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.fu, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.fv = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.fw = fdiv nsz <4 x double> %i.fv, %broadcast.splat
  %i.fx = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fw, <4 x double> splat (double 2.000000e+00), <4 x double> splat (double -1.000000e+00))
  %i.fy = call nsz <4 x double> @llvm.fabs.v4f64(<4 x double> %i.fx) ; 2 uses
  %i.fz = fsub nsz <4 x double> splat (double 1.000000e+00), %i.fy
  %i.ga = fmul nsz <4 x double> %i.fy, splat (double f0x400921FB54442D18)
  %i.gb = call nsz { <4 x double>, <4 x double> } @llvm.sincos.v4f64(<4 x double> %i.ga) ; 2 uses
  %i.gc = extractvalue { <4 x double>, <4 x double> } %i.gb, 0
  %i.gd = extractvalue { <4 x double>, <4 x double> } %i.gb, 1
  %i.ge = fmul nsz <4 x double> %i.gc, splat (double f0x3FD45F306DC9C883)
  %i.gf = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fz, <4 x double> %i.gd, <4 x double> %i.ge)
  %i.gg = fptrunc nsz <4 x double> %i.gf to <4 x float>
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  store <4 x float> %i.gg, ptr %i.gh, align 16, !tbaa !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count456.i
  br i1 %cmp.n, label %generate_window_func.exit, label %scalar.ph.preheader

end_hunk_0
