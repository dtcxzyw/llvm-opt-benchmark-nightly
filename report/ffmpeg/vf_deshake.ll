Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_deshake?download=true
inline.NumInlined: 12
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@filter_frame:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !60
  %i.t = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.s) #10 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.y = load i32, ptr %i.u, align 8, !tbaa !61
  %i.z = load i8, ptr %i.v, align 1, !tbaa !64
  %i.aa = sub nsw i32 0, %i.y
  %i.ab = zext nneg i8 %i.z to i32
  %i.ac = ashr i32 %i.aa, %i.ab
  %i.ad = sub nsw i32 0, %i.ac                    ; 2 uses
  %i.ae = load i32, ptr %i.w, align 4, !tbaa !65
  %i.af = load i8, ptr %i.x, align 2, !tbaa !66
  %i.ag = sub nsw i32 0, %i.ae
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = ashr i32 %i.ag, %i.ah
  %i.aj = sub nsw i32 0, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.an = load i32, ptr %i.am, align 4, !tbaa !65
  %i.ao = tail call ptr @ff_get_video_buffer(ptr noundef %i.l, i32 noundef %i.al, i32 noundef %i.an) #10 ; 5 uses
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !56
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.a) #10
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.ap = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.ao, ptr noundef %1) #10 ; 0 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !49
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 15
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !50
  %i.av = and i32 %i.au, 15
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = or i64 %i.as, %i.aw
  %.not133 = icmp eq i64 %i.ax, 0
  %i.ay = zext i1 %.not133 to i32
  %i.az = tail call ptr @av_pixelutils_get_sad_fn(i32 noundef 4, i32 noundef 4, i32 noundef %i.ay, ptr noundef nonnull %i.i) #10 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 66624
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !51
  %.not134 = icmp eq ptr %i.az, null
  br i1 %.not134, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 66720 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !31 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 66724 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !34 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 66712 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !32 ; 3 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 66716 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !35 ; 3 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 66592
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !52 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  %.in135 = select i1 %i.bp, ptr %1, ptr %i.bo
  %i.bq = load ptr, ptr %.in135, align 8, !tbaa !49
  %i.br = load ptr, ptr %1, align 8, !tbaa !49
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !61
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !65
  %i.bw = load i32, ptr %i.at, align 8, !tbaa !50
  call fastcc void @find_motion(ptr noundef nonnull %i.i, ptr noundef %i.bq, ptr noundef %i.br, i32 noundef %i.bt, i32 noundef %i.bv, i32 noundef %i.bw, ptr noundef %2)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 66592
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !52 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  %.in = select i1 %i.bz, ptr %1, ptr %i.by
  %i.ca = load ptr, ptr %.in, align 8, !tbaa !49
  %i.cb = load ptr, ptr %1, align 8, !tbaa !49
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !61 ; 3 uses
  %i.ce = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.cd) ; 4 uses
  store i32 %i.ce, ptr %i.bb, align 8, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !65 ; 3 uses
  %i.ch = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %i.cg) ; 4 uses
  store i32 %i.ch, ptr %i.be, align 4, !tbaa !34
  %i.ci = add i32 %i.ce, %i.bi
  %i.cj = icmp ugt i32 %i.ci, %i.cd
  %i.ck = sub nsw i32 %i.cd, %i.ce
  %spec.select = select i1 %i.cj, i32 %i.ck, i32 %i.bi
  %i.cl = add i32 %i.ch, %i.bl
  %i.cm = icmp ugt i32 %i.cl, %i.cg
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = sub nsw i32 %i.cg, %i.ch                ; 2 uses
  store i32 %i.cn, ptr %i.bk, align 4, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.co = phi i32 [ %i.cn, %bb.j ], [ %i.bl, %bb.i ]
  %i.cp = and i32 %spec.select, 2147483632        ; 2 uses
  store i32 %i.cp, ptr %i.bh, align 8, !tbaa !32
  %i.cq = load i32, ptr %i.at, align 8, !tbaa !50 ; 2 uses
  %i.cr = mul nsw i32 %i.cq, %i.ch
  %i.cs = add nsw i32 %i.cr, %i.ce
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ca, i64 %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cb, i64 %i.ct
  call fastcc void @find_motion(ptr noundef nonnull %i.i, ptr noundef %i.cu, ptr noundef %i.cv, i32 noundef %i.cp, i32 noundef %i.co, i32 noundef %i.cq, ptr noundef %2)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.cw = fpext nsz float %i.q to double          ; 2 uses
  %i.cx = fsub nsz double 1.000000e+00, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 66680 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 66696
  %i.da = load <4 x double>, ptr %2, align 8, !tbaa !53 ; 6 uses
  %i.db = load <4 x double>, ptr %i.cy, align 8, !tbaa !53
  %i.dc = insertelement <4 x double> poison, double %i.cx, i64 0
  %i.dd = shufflevector <4 x double> %i.dc, <4 x double> poison, <4 x i32> zeroinitializer
  %i.de = fmul nsz <4 x double> %i.dd, %i.db
  %i.df = insertelement <4 x double> poison, double %i.cw, i64 0
  %i.dg = shufflevector <4 x double> %i.df, <4 x double> poison, <4 x i32> zeroinitializer
  %i.dh = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dg, <4 x double> %i.da, <4 x double> %i.de) ; 7 uses
  %i.di = shufflevector <4 x double> %i.dh, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.di, ptr %i.cy, align 8, !tbaa !53
  %i.dj = shufflevector <4 x double> %i.dh, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  store <2 x double> %i.dj, ptr %i.cz, align 8, !tbaa !53
  %i.dk = fsub nsz <4 x double> %i.da, %i.dh      ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 66672 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !30
  %.not136 = icmp eq ptr %i.dm, null
  br i1 %.not136, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dn = extractelement <4 x double> %i.dk, i64 2
  %i.do = fneg nsz double %i.dn
  %i.dp = extractelement <4 x double> %i.dk, i64 1
  %i.dq = fneg nsz double %i.dp
  %i.dr = extractelement <4 x double> %i.dk, i64 0
  %i.ds = fneg nsz double %i.dr
  %i.dt = extractelement <4 x double> %i.dk, i64 3
  %i.du = extractelement <4 x double> %i.da, i64 0
  %i.dv = extractelement <4 x double> %i.da, i64 1
  %i.dw = extractelement <4 x double> %i.da, i64 2
  %i.dx = extractelement <4 x double> %i.da, i64 3
  %i.dy = extractelement <4 x double> %i.dh, i64 0
  %i.dz = extractelement <4 x double> %i.dh, i64 1
  %i.ea = extractelement <4 x double> %i.dh, i64 2
  %i.eb = extractelement <4 x double> %i.dh, i64 3
  %i.ec = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 256, ptr noundef nonnull @.str.3, double noundef %i.du, double noundef %i.dy, double noundef %i.ds, double noundef %i.dv, double noundef %i.dz, double noundef %i.dq, double noundef %i.dw, double noundef %i.ea, double noundef %i.do, double noundef %i.dx, double noundef %i.eb, double noundef %i.dt) #10 ; 0 uses
  %i.ed = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #11
  %i.ee = load ptr, ptr %i.dl, align 8, !tbaa !30
  %i.ef = call i64 @fwrite(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef %i.ed, ptr noundef %i.ee) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.eg = getelementptr inbounds nuw i8, ptr %i.i, i64 66632 ; 2 uses
  %i.eh = load <4 x double>, ptr %i.eg, align 8, !tbaa !53 ; 2 uses
  %i.ei = fsub nsz <4 x double> %i.eh, %i.dk
  %i.ej = fadd nsz <4 x double> %i.eh, %i.dk      ; 2 uses
  %i.ek = shufflevector <4 x double> %i.ei, <4 x double> %i.ej, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.el = fmul nsz <4 x double> %i.ek, <double 9.000000e-01, double 9.000000e-01, double 9.000000e-01, double 1.000000e+00> ; 5 uses
  store <4 x double> %i.el, ptr %i.eg, align 8, !tbaa !53
  %i.em = extractelement <4 x double> %i.ej, i64 3
  %i.en = fdiv nsz double %i.em, 1.000000e+02
  %i.eo = fadd nsz double %i.en, 1.000000e+00
  %i.ep = fptrunc nsz double %i.eo to float       ; 4 uses
  %i.eq = extractelement <4 x double> %i.el, i64 0
  %i.er = fptrunc nsz double %i.eq to float
  %i.es = extractelement <4 x double> %i.el, i64 1
  %i.et = fptrunc nsz double %i.es to float
  %i.eu = extractelement <4 x double> %i.el, i64 2
  %i.ev = fptrunc nsz double %i.eu to float       ; 2 uses
  call void @ff_get_matrix(float noundef %i.er, float noundef %i.et, float noundef %i.ev, float noundef %i.ep, float noundef %i.ep, ptr noundef nonnull %i.c) #10
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ey = load <2 x i32>, ptr %i.ew, align 8, !tbaa !50
  %i.ez = insertelement <2 x i32> poison, i32 %i.ad, i64 0
  %i.fa = insertelement <2 x i32> %i.ez, i32 %i.aj, i64 1
  %i.fb = sdiv <2 x i32> %i.ey, %i.fa
  %i.fc = sitofp <2 x i32> %i.fb to <2 x double>
  %i.fd = shufflevector <4 x double> %i.el, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.fe = fdiv nsz <2 x double> %i.fd, %i.fc
  %i.ff = fptrunc <2 x double> %i.fe to <2 x float> ; 2 uses
  %i.fg = extractelement <2 x float> %i.ff, i64 0
  %i.fh = extractelement <2 x float> %i.ff, i64 1
  call void @ff_get_matrix(float noundef %i.fg, float noundef %i.fh, float noundef %i.ev, float noundef %i.ep, float noundef %i.ep, ptr noundef nonnull %i.d) #10
  %i.fi = getelementptr inbounds nuw i8, ptr %i.i, i64 66744
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !33
  %i.fk = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.fl = load i32, ptr %i.ew, align 8, !tbaa !61
  %i.fm = load i32, ptr %i.ex, align 4, !tbaa !65
  %i.fn = getelementptr inbounds nuw i8, ptr %i.i, i64 66608
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !37
  %i.fp = call i32 %i.fj(ptr noundef %i.fk, i32 noundef %i.fl, i32 noundef %i.fm, i32 noundef %i.ad, i32 noundef %i.aj, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1, i32 noundef %i.fo, ptr noundef nonnull %1, ptr noundef nonnull %i.ao) #10 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.i, i64 66592 ; 2 uses
  call void @av_frame_free(ptr noundef nonnull %i.fq) #10
  %i.fr = icmp slt i32 %i.fp, 0
  br i1 %i.fr, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %1, ptr %i.fq, align 8, !tbaa !52
  %i.fs = call i32 @ff_filter_frame(ptr noundef nonnull %i.l, ptr noundef nonnull %i.ao) #10
  br label %bb.q

bb.p:                                             ; preds = %bb.c, %bb.n
  %.0 = phi i32 [ %i.fp, %bb.n ], [ -22, %bb.c ]
  call void @av_frame_free(ptr noundef nonnull %i.b) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.b
  %.0122 = phi i32 [ %.0, %bb.p ], [ %i.fs, %bb.o ], [ -12, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %.0122
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @config_props(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 66592
  store ptr null, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 66632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #5

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @av_frame_free(ptr noundef) local_unnamed_addr #5

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @av_pixelutils_get_sad_fn(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @find_motion(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 66576 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 66584
  %i.d = mul nsw i32 %4, %3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 66612 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  %i.g = shl nsw i32 %i.f, 4
  %i.h = sdiv i32 %i.d, %i.g
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  tail call void @av_fast_malloc(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.j) #10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 66600 ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !29   ; 3 uses
  %.not175 = icmp slt i32 %i.l, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 66604 ; 3 uses
  br i1 %.not175, label %.._crit_edge177_crit_edge, label %.preheader162.lr.ph

.._crit_edge177_crit_edge:                        ; preds = %bb.a
  %.pre243 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !36
  br label %._crit_edge177

.preheader162.lr.ph:                              ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !36
  br label %.preheader162

.preheader162:                                    ; preds = %.preheader162.lr.ph, %._crit_edge
  %i.n = phi i32 [ %i.l, %.preheader162.lr.ph ], [ %i.u, %._crit_edge ]
  %i.o = phi i32 [ %.pre, %.preheader162.lr.ph ], [ %i.v, %._crit_edge ] ; 2 uses
  %indvars.iv230 = phi i64 [ 0, %.preheader162.lr.ph ], [ %indvars.iv.next231, %._crit_edge ] ; 3 uses
  %.not132173 = icmp slt i32 %i.o, 0
  br i1 %.not132173, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader162
  %i.p = getelementptr inbounds nuw [516 x i8], ptr %i.m, i64 %indvars.iv230
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 0, ptr %i.q, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.r = load i32, ptr %.phi.trans.insert, align 4, !tbaa !36 ; 2 uses
  %i.s = shl nsw i32 %i.r, 1
  %i.t = sext i32 %i.s to i64
  %.not132.not = icmp slt i64 %indvars.iv, %i.t
  br i1 %.not132.not, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !67

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre242 = load i32, ptr %i.k, align 8, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader162
  %i.u = phi i32 [ %.pre242, %._crit_edge.loopexit ], [ %i.n, %.preheader162 ] ; 3 uses
  %i.v = phi i32 [ %i.r, %._crit_edge.loopexit ], [ %i.o, %.preheader162 ] ; 2 uses
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1
  %i.w = shl nsw i32 %i.u, 1
  %i.x = sext i32 %i.w to i64
  %.not.not = icmp slt i64 %indvars.iv230, %i.x
  br i1 %.not.not, label %.preheader162, label %._crit_edge177, !llvm.loop !68

._crit_edge177:                                   ; preds = %._crit_edge, %.._crit_edge177_crit_edge
  %i.y = phi i32 [ %i.l, %.._crit_edge177_crit_edge ], [ %i.u, %._crit_edge ] ; 2 uses
  %i.z = phi i32 [ %.pre243, %.._crit_edge177_crit_edge ], [ %i.v, %._crit_edge ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 66604 ; 7 uses
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !28  ; 2 uses
  %i.ac = shl i32 %i.ab, 1
  %i.ad = add i32 %i.z, %i.ac
  %i.ae = sub i32 %4, %i.ad
  %i.af = icmp slt i32 %i.z, %i.ae
  br i1 %i.af, label %.lr.ph203, label %._crit_edge204.thread

.lr.ph203:                                        ; preds = %._crit_edge177
  %i.ag = add i32 %3, -16                         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 66616
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 66620
  %.pre166.i = sext i32 %5 to i64                 ; 11 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 66624 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph203, %._crit_edge188
  %i.al = phi i32 [ %i.z, %.lr.ph203 ], [ %i.jm, %._crit_edge188 ]
  %i.am = phi i32 [ %i.ab, %.lr.ph203 ], [ %i.jn, %._crit_edge188 ]
  %i.an = phi i32 [ %i.y, %.lr.ph203 ], [ %i.jo, %._crit_edge188 ] ; 5 uses
  %.0201 = phi i32 [ 0, %.lr.ph203 ], [ %.1.lcssa, %._crit_edge188 ] ; 2 uses
  %.0107200 = phi i32 [ 0, %.lr.ph203 ], [ %.1108.lcssa, %._crit_edge188 ] ; 2 uses
  %.0111199 = phi i32 [ 0, %.lr.ph203 ], [ %.1112.lcssa, %._crit_edge188 ] ; 2 uses
  %.1119198 = phi i32 [ %i.z, %.lr.ph203 ], [ %i.jq, %._crit_edge188 ] ; 7 uses
  %.sroa.0.0197 = phi i32 [ 0, %.lr.ph203 ], [ %.sroa.0.1.lcssa, %._crit_edge188 ] ; 2 uses
  %.sroa.12.0196 = phi i32 [ 0, %.lr.ph203 ], [ %.sroa.12.1.lcssa, %._crit_edge188 ] ; 2 uses
  %i.ao = sub i32 %i.ag, %i.an
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph187, label %._crit_edge188

.lr.ph187:                                        ; preds = %bb.c
  %.pre161.i = mul nsw i32 %.1119198, %5
  %.pre162.i = sext i32 %.pre161.i to i64
  %.pre168.i = sext i32 %.1119198 to i64          ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %.pre162.i ; 3 uses
  %i.ar = sitofp nsz i32 %.1119198 to double
  %i.as = sext i32 %i.an to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph187, %find_block_motion.exit.thread
  %indvars.iv233 = phi i64 [ %i.as, %.lr.ph187 ], [ %indvars.iv.next234, %find_block_motion.exit.thread ] ; 11 uses
  %i.at = phi i32 [ %i.an, %.lr.ph187 ], [ %i.ji, %find_block_motion.exit.thread ] ; 2 uses
  %.1185 = phi i32 [ %.0201, %.lr.ph187 ], [ %.2, %find_block_motion.exit.thread ] ; 6 uses
  %.1108184 = phi i32 [ %.0107200, %.lr.ph187 ], [ %.2109, %find_block_motion.exit.thread ] ; 6 uses
  %.1112183 = phi i32 [ %.0111199, %.lr.ph187 ], [ %.3114, %find_block_motion.exit.thread ] ; 9 uses
  %.sroa.0.1180 = phi i32 [ %.sroa.0.0197, %.lr.ph187 ], [ %.sroa.0.2, %find_block_motion.exit.thread ] ; 4 uses
  %.sroa.12.1179 = phi i32 [ %.sroa.12.0196, %.lr.ph187 ], [ %.sroa.12.2, %find_block_motion.exit.thread ] ; 4 uses
  %i.au = load i32, ptr %i.e, align 4, !tbaa !28  ; 2 uses
  %.not31.i = icmp slt i32 %i.au, 0
  br i1 %.not31.i, label %block_contrast.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.d
  %i.av = shl nuw i32 %i.au, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.av, i32 0)
  %i.aw = or disjoint i32 %smax.i, 1
  %wide.trip.count.i = zext nneg i32 %i.aw to i64
  %i.ax = trunc nsw i64 %indvars.iv233 to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 2 uses
  %.02233.i = phi i32 [ 255, %.preheader.preheader.i ], [ %.2.15.i, %.preheader.i ] ; 2 uses
  %.02332.i = phi i32 [ 0, %.preheader.preheader.i ], [ %.225.15.i, %.preheader.i ] ; 2 uses
  %i.ay = trunc i64 %indvars.iv.i to i32
  %i.az = add i32 %.1119198, %i.ay
  %i.ba = mul i32 %i.az, %5
end_hunk_0
begin_hunk_1_@find_motion:bb.a
bb.as:                                            ; preds = %.thread.i140
  %i.ma = sdiv i32 %.1108.lcssa, %.1112.lcssa
  %i.mb = sdiv i32 %.1.lcssa, %.1112.lcssa
  %i.mc = sdiv i32 %.1112.lcssa, 5                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.md = sub nsw i32 %.1112.lcssa, %i.mc         ; 2 uses
  %i.me = icmp slt i32 %i.mc, %i.md
  br i1 %i.me, label %.lr.ph200.preheader.i, label %clean_mean.exit

.lr.ph200.preheader.i:                            ; preds = %bb.as
  %i.mf = sext i32 %i.mc to i64                   ; 4 uses
  %wide.trip.count.i142 = sext i32 %i.md to i64
  %i.mg = sext i32 %.1112.lcssa to i64            ; 2 uses
  %i.mh = shl nsw i64 %i.mf, 1
  %i.mi = sub nsw i64 %i.mg, %i.mh
  %i.mj = shl nsw i64 %i.mf, 1
  %xtraiter = and i64 %i.mi, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph200.i.prol.loopexit, label %.lr.ph200.i.prol

.lr.ph200.i.prol:                                 ; preds = %.lr.ph200.preheader.i, %.lr.ph200.i.prol
  %indvars.iv210.i.prol = phi i64 [ %indvars.iv.next211.i.prol, %.lr.ph200.i.prol ], [ %i.mf, %.lr.ph200.preheader.i ] ; 2 uses
  %.0198.i.prol = phi double [ %i.mm, %.lr.ph200.i.prol ], [ 0.000000e+00, %.lr.ph200.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph200.i.prol ], [ 0, %.lr.ph200.preheader.i ]
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %indvars.iv210.i.prol
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !53
  %i.mm = fadd nsz double %.0198.i.prol, %i.ml    ; 3 uses
  %indvars.iv.next211.i.prol = add nsw i64 %indvars.iv210.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph200.i.prol.loopexit, label %.lr.ph200.i.prol, !llvm.loop !84

.lr.ph200.i.prol.loopexit:                        ; preds = %.lr.ph200.i.prol, %.lr.ph200.preheader.i
  %.lcssa.unr = phi double [ poison, %.lr.ph200.preheader.i ], [ %i.mm, %.lr.ph200.i.prol ]
  %indvars.iv210.i.unr = phi i64 [ %i.mf, %.lr.ph200.preheader.i ], [ %indvars.iv.next211.i.prol, %.lr.ph200.i.prol ]
  %.0198.i.unr = phi double [ 0.000000e+00, %.lr.ph200.preheader.i ], [ %i.mm, %.lr.ph200.i.prol ]
  %i.mn = sub nsw i64 %i.mj, %i.mg
  %i.mo = icmp ugt i64 %i.mn, -8
  br i1 %i.mo, label %clean_mean.exit, label %.lr.ph200.i

.lr.ph200.i:                                      ; preds = %.lr.ph200.i.prol.loopexit, %.lr.ph200.i
  %indvars.iv210.i = phi i64 [ %indvars.iv.next211.i.7, %.lr.ph200.i ], [ %indvars.iv210.i.unr, %.lr.ph200.i.prol.loopexit ] ; 9 uses
  %.0198.i = phi double [ %i.nt, %.lr.ph200.i ], [ %.0198.i.unr, %.lr.ph200.i.prol.loopexit ]
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !53
  %i.mr = fadd nsz double %.0198.i, %i.mq
  %i.ms = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.mt = getelementptr i8, ptr %i.ms, i64 8
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !53
  %i.mv = fadd nsz double %i.mr, %i.mu
  %i.mw = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.mx = getelementptr i8, ptr %i.mw, i64 16
  %i.my = load double, ptr %i.mx, align 8, !tbaa !53
  %i.mz = fadd nsz double %i.mv, %i.my
  %i.na = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.nb = getelementptr i8, ptr %i.na, i64 24
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !53
  %i.nd = fadd nsz double %i.mz, %i.nc
  %i.ne = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.nf = getelementptr i8, ptr %i.ne, i64 32
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !53
  %i.nh = fadd nsz double %i.nd, %i.ng
  %i.ni = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.nj = getelementptr i8, ptr %i.ni, i64 40
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !53
  %i.nl = fadd nsz double %i.nh, %i.nk
  %i.nm = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.nn = getelementptr i8, ptr %i.nm, i64 48
  %i.no = load double, ptr %i.nn, align 8, !tbaa !53
  %i.np = fadd nsz double %i.nl, %i.no
  %i.nq = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.nr = getelementptr i8, ptr %i.nq, i64 56
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !53
  %i.nt = fadd nsz double %i.np, %i.ns            ; 2 uses
  %indvars.iv.next211.i.7 = add nsw i64 %indvars.iv210.i, 8 ; 2 uses
  %exitcond.not.i143.7 = icmp eq i64 %indvars.iv.next211.i.7, %wide.trip.count.i142
  br i1 %exitcond.not.i143.7, label %clean_mean.exit, label %.lr.ph200.i, !llvm.loop !85

clean_mean.exit:                                  ; preds = %.lr.ph200.i.prol.loopexit, %.lr.ph200.i, %bb.as
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.as ], [ %.lcssa.unr, %.lr.ph200.i.prol.loopexit ], [ %i.nt, %.lr.ph200.i ]
  %i.nu = shl nsw i32 %i.mc, 1
  %i.nv = sub nsw i32 %.1112.lcssa, %i.nu
  %i.nw = sitofp nsz i32 %i.nv to double
  %i.nx = fdiv nsz double %.0.lcssa.i, %i.nw      ; 2 uses
  %i.ny = fcmp nsz olt double %i.nx, 1.000000e-03
  %spec.store.select = select i1 %i.ny, double 0.000000e+00, double %i.nx
  br label %._crit_edge204.thread

._crit_edge204.thread:                            ; preds = %._crit_edge204, %._crit_edge177, %clean_mean.exit
  %.lcssa171287 = phi i32 [ %i.jm, %clean_mean.exit ], [ %i.jm, %._crit_edge204 ], [ %i.z, %._crit_edge177 ] ; 3 uses
  %i.nz = phi i32 [ %i.jo, %clean_mean.exit ], [ %i.jo, %._crit_edge204 ], [ %i.y, %._crit_edge177 ] ; 5 uses
  %i.oa = phi double [ %spec.store.select, %clean_mean.exit ], [ 0.000000e+00, %._crit_edge204 ], [ 0.000000e+00, %._crit_edge177 ] ; 2 uses
  %.3110 = phi i32 [ %i.ma, %clean_mean.exit ], [ %.1108.lcssa, %._crit_edge204 ], [ 0, %._crit_edge177 ]
  %.3 = phi i32 [ %i.mb, %clean_mean.exit ], [ %.1.lcssa, %._crit_edge204 ], [ 0, %._crit_edge177 ]
  %i.ob = icmp sgt i32 %.lcssa171287, -1
  %i.oc = insertelement <2 x i32> poison, i32 %i.nz, i64 0
  %i.od = insertelement <2 x i32> %i.oc, i32 %.lcssa171287, i64 1 ; 2 uses
  %i.oe = shl <2 x i32> %i.od, splat (i32 1)      ; 3 uses
  br i1 %i.ob, label %.preheader.lr.ph, label %._crit_edge217.split

.preheader.lr.ph:                                 ; preds = %._crit_edge204.thread
  %.not131209 = icmp slt i32 %i.nz, 0
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.og = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br i1 %.not131209, label %._crit_edge217.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.oh = extractelement <2 x i32> %i.oe, i64 0   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.oh, i32 0)
  %i.oi = extractelement <2 x i32> %i.oe, i64 1
  %i.oj = zext i32 %i.oi to i64
  %i.ok = icmp slt i32 %i.oh, 1
  %unroll_iter = zext nneg i32 %smax to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge213
  %indvars.iv239 = phi i64 [ %i.oj, %.preheader.preheader ], [ %indvars.iv.next240, %._crit_edge213 ] ; 3 uses
  %.0115216 = phi i32 [ 0, %.preheader.preheader ], [ %.2117.epil, %._crit_edge213 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %indvars.iv239 ; 3 uses
  %i.ol = trunc nuw i64 %indvars.iv239 to i32     ; 2 uses
  %i.om = sub nsw i32 %i.ol, %.lcssa171287
  %i.on = sitofp nsz i32 %i.om to double          ; 3 uses
  br i1 %i.ok, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %bb.aw
  %indvars.iv236 = phi i64 [ %indvars.iv.next237.1, %bb.aw ], [ 0, %.preheader ] ; 4 uses
  %.1116211 = phi i32 [ %.2117.1, %bb.aw ], [ %.0115216, %.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.aw ], [ 0, %.preheader ]
  %gep = getelementptr inbounds nuw [516 x i8], ptr %invariant.gep, i64 %indvars.iv236
  %i.oo = load i32, ptr %gep, align 4, !tbaa !50  ; 2 uses
  %i.op = icmp sgt i32 %i.oo, %.1116211
  br i1 %i.op, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.preheader.new
  %i.oq = trunc i64 %indvars.iv236 to i32
  %i.or = sub i32 %i.oq, %i.nz
  %i.os = sitofp nsz i32 %i.or to double
  store double %i.os, ptr %6, align 8, !tbaa !93
  store double %i.on, ptr %i.og, align 8, !tbaa !94
  br label %bb.au

bb.au:                                            ; preds = %.preheader.new, %bb.at
  %.2117 = phi i32 [ %i.oo, %bb.at ], [ %.1116211, %.preheader.new ] ; 2 uses
  %indvars.iv.next237 = or disjoint i64 %indvars.iv236, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [516 x i8], ptr %invariant.gep, i64 %indvars.iv.next237
  %i.ot = load i32, ptr %gep.1, align 4, !tbaa !50 ; 2 uses
  %i.ou = icmp sgt i32 %i.ot, %.2117
  br i1 %i.ou, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ov = trunc i64 %indvars.iv.next237 to i32
  %i.ow = sub i32 %i.ov, %i.nz
  %i.ox = sitofp nsz i32 %i.ow to double
  store double %i.ox, ptr %6, align 8, !tbaa !93
  store double %i.on, ptr %i.og, align 8, !tbaa !94
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.2117.1 = phi i32 [ %i.ot, %bb.av ], [ %.2117, %bb.au ] ; 2 uses
  %indvars.iv.next237.1 = add nuw nsw i64 %indvars.iv236, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.epil.preheader, label %.preheader.new, !llvm.loop !86

.epil.preheader:                                  ; preds = %.preheader, %bb.aw
  %indvars.iv236.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next237.1, %bb.aw ] ; 2 uses
  %.1116211.epil.init = phi i32 [ %.0115216, %.preheader ], [ %.2117.1, %bb.aw ] ; 2 uses
  %gep.epil = getelementptr inbounds nuw [516 x i8], ptr %invariant.gep, i64 %indvars.iv236.epil.init
  %i.oy = load i32, ptr %gep.epil, align 4, !tbaa !50 ; 2 uses
  %i.oz = icmp sgt i32 %i.oy, %.1116211.epil.init
  br i1 %i.oz, label %bb.ax, label %._crit_edge213

bb.ax:                                            ; preds = %.epil.preheader
  %i.pa = trunc i64 %indvars.iv236.epil.init to i32
  %i.pb = sub i32 %i.pa, %i.nz
  %i.pc = sitofp nsz i32 %i.pb to double
  store double %i.pc, ptr %6, align 8, !tbaa !93
  store double %i.on, ptr %i.og, align 8, !tbaa !94
  br label %._crit_edge213

._crit_edge213:                                   ; preds = %.epil.preheader, %bb.ax
  %.2117.epil = phi i32 [ %i.oy, %bb.ax ], [ %.1116211.epil.init, %.epil.preheader ]
  %indvars.iv.next240 = add nsw i64 %indvars.iv239, -1
  %i.pd = icmp sgt i32 %i.ol, 0
  br i1 %i.pd, label %.preheader, label %._crit_edge217.split, !llvm.loop !87

._crit_edge217.split:                             ; preds = %._crit_edge213, %._crit_edge204.thread, %.preheader.lr.ph
  %i.pe = sitofp nsz i32 %.3110 to double
  %i.pf = sitofp nsz i32 %3 to double
  %i.pg = fmul nnan nsz double %i.pf, 5.000000e-01
  %i.ph = fsub nsz double %i.pe, %i.pg
  %i.pi = sitofp nsz i32 %.3 to double
  %i.pj = sitofp nsz i32 %4 to double
  %i.pk = fmul nnan nsz double %i.pj, 5.000000e-01
  %i.pl = fsub nsz double %i.pi, %i.pk            ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.oa) ; 2 uses
  %cos = extractvalue { double, double } %sincos, 1
  %i.pn = fneg nsz double %i.pl
  %i.po = mul <2 x i32> %i.od, splat (i32 -2)
  %i.pp = sitofp <2 x i32> %i.oe to <2 x float>   ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 2 uses
  %i.pq = insertelement <2 x double> poison, double %cos, i64 0
  %i.pr = insertelement <2 x double> %i.pq, double %sin, i64 1
  %i.ps = fadd <2 x double> %i.pr, <double -1.000000e+00, double -0.000000e+00> ; 2 uses
  %i.pt = fmul nsz double %sin, %i.pn
  %i.pu = extractelement <2 x double> %i.ps, i64 0
  %i.pv = fmul nsz double %i.pl, %i.pu
  %i.pw = insertelement <2 x double> poison, double %i.ph, i64 0
  %i.px = shufflevector <2 x double> %i.pw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.py = insertelement <2 x double> poison, double %i.pt, i64 0
  %i.pz = insertelement <2 x double> %i.py, double %i.pv, i64 1
  %i.qa = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ps, <2 x double> %i.px, <2 x double> %i.pz)
  %i.qb = load <2 x double>, ptr %6, align 8, !tbaa !53
  %i.qc = fadd nsz <2 x double> %i.qb, %i.qa
  %i.qd = fptrunc <2 x double> %i.qc to <2 x float> ; 2 uses
  %i.qe = sitofp <2 x i32> %i.po to <2 x float>   ; 2 uses
  %i.qf = fcmp nsz ogt <2 x float> %i.qd, %i.qe
  %i.qg = select <2 x i1> %i.qf, <2 x float> %i.qd, <2 x float> %i.qe ; 2 uses
  %i.qh = fcmp nsz ogt <2 x float> %i.qg, %i.pp
  %i.qi = select <2 x i1> %i.qh, <2 x float> %i.pp, <2 x float> %i.qg
  %i.qj = fpext <2 x float> %i.qi to <2 x double>
  store <2 x double> %i.qj, ptr %6, align 8, !tbaa !53
  %i.qk = fptrunc nsz double %i.oa to float       ; 2 uses
  %i.ql = fcmp nsz ogt float %i.qk, -1.000000e-01
  %i.qm = select nsz i1 %i.ql, float %i.qk, float -1.000000e-01 ; 2 uses
  %i.qn = fcmp nsz ogt float %i.qm, 1.000000e-01
  %..i = select nsz i1 %i.qn, float 1.000000e-01, float %i.qm
  %i.qo = fpext nsz float %..i to double
  store double %i.qo, ptr %i.pm, align 8, !tbaa !95
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare void @ff_get_matrix(float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @av_fast_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #8

declare ptr @av_default_item_name(ptr noundef) #5

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare ptr @avpriv_fopen_utf8(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @deshake_transform_c(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.c = load ptr, ptr %9, align 8, !tbaa !49
  %i.d = load ptr, ptr %10, align 8, !tbaa !49
  %i.e = load i32, ptr %i.a, align 8, !tbaa !50
  %i.f = load i32, ptr %i.b, align 8, !tbaa !50
  %i.g = tail call i32 @ff_affine_transform(ptr noundef %i.c, ptr noundef %i.d, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %1, i32 noundef %2, ptr noundef %5, i32 noundef %7, i32 noundef %8) #10 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 68
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = tail call i32 @ff_affine_transform(ptr noundef %i.j, ptr noundef %i.l, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %3, i32 noundef %4, ptr noundef %6, i32 noundef %7, i32 noundef %8) #10 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !50
  %i.aa = tail call i32 @ff_affine_transform(ptr noundef %i.t, ptr noundef %i.v, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %3, i32 noundef %4, ptr noundef %6, i32 noundef %7, i32 noundef %8) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa = phi i32 [ %i.aa, %bb.c ], [ %i.g, %bb.a ], [ %i.q, %bb.b ]
  ret i32 %.lcssa
}

declare i32 @ff_affine_transform(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @av_freep(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 double", !9, i64 0}
!21 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!22 = !{!"double", !5, i64 0}
!23 = !{!"MotionVector", !22, i64 0, !22, i64 8}
!24 = !{!"Transform", !23, i64 0, !22, i64 16, !22, i64 24}
!25 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!26 = !{!"DeshakeContext", !10, i64 0, !5, i64 8, !20, i64 66576, !6, i64 66584, !21, i64 66592, !6, i64 66600, !6, i64 66604, !6, i64 66608, !6, i64 66612, !6, i64 66616, !6, i64 66620, !9, i64 66624, !24, i64 66632, !6, i64 66664, !25, i64 66672, !24, i64 66680, !6, i64 66712, !6, i64 66716, !6, i64 66720, !6, i64 66724, !12, i64 66728, !6, i64 66736, !9, i64 66744}
!27 = !{!26, !6, i64 66664}
!28 = !{!26, !6, i64 66612}
!29 = !{!26, !6, i64 66600}
!30 = !{!26, !25, i64 66672}
!31 = !{!26, !6, i64 66720}
!32 = !{!26, !6, i64 66712}
!33 = !{!26, !9, i64 66744}
!34 = !{!26, !6, i64 66724}
!35 = !{!26, !6, i64 66716}
!36 = !{!26, !6, i64 66604}
!37 = !{!26, !6, i64 66608}
!38 = !{!26, !6, i64 66616}
!39 = !{!26, !6, i64 66620}
!40 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!41 = !{!"AVRational", !6, i64 0, !6, i64 4}
!42 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!43 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!44 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!45 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!46 = !{!"AVFilterFormatsConfig", !44, i64 0, !44, i64 8, !45, i64 16, !44, i64 24, !44, i64 32, !44, i64 40}
!47 = !{!"AVFilterLink", !40, i64 0, !13, i64 8, !40, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !41, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !42, i64 72, !41, i64 96, !43, i64 104, !6, i64 112, !6, i64 116, !46, i64 120, !46, i64 168}
!48 = !{!47, !40, i64 16}
!49 = !{!12, !12, i64 0}
!50 = !{!6, !6, i64 0}
!51 = !{!26, !9, i64 66624}
!52 = !{!26, !21, i64 66592}
!53 = !{!22, !22, i64 0}
!54 = !{!26, !12, i64 66728}
!55 = !{!26, !6, i64 66584}
!56 = !{!21, !21, i64 0}
!57 = !{!18, !15, i64 56}
!58 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!47, !6, i64 36}
!61 = !{!47, !6, i64 40}
!62 = !{!"long", !5, i64 0}
!63 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !62, i64 16, !5, i64 24, !12, i64 104}
!64 = !{!63, !5, i64 9}
!65 = !{!47, !6, i64 44}
!66 = !{!63, !5, i64 10}
!67 = distinct !{!67, !88}
!68 = distinct !{!68, !88}
!69 = distinct !{!69, !88}
!70 = distinct !{null}
!71 = distinct !{!71, !88}
!72 = distinct !{!72, !88}
!73 = distinct !{!73, !88}
!74 = distinct !{!74, !88}
!75 = distinct !{!75, !88}
!76 = distinct !{!76, !88}
end_hunk_1
