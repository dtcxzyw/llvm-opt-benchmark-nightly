Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_deshake?download=true
inline.NumInlined: 12
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@filter_frame:bb.a
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
  %.not176 = icmp slt i32 %i.l, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 66604 ; 3 uses
  br i1 %.not176, label %.._crit_edge178_crit_edge, label %.preheader164.lr.ph

.._crit_edge178_crit_edge:                        ; preds = %bb.a
  %.pre242 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !36
  br label %._crit_edge178

.preheader164.lr.ph:                              ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !36
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader164.lr.ph, %._crit_edge
  %i.n = phi i32 [ %i.l, %.preheader164.lr.ph ], [ %i.u, %._crit_edge ]
  %i.o = phi i32 [ %.pre, %.preheader164.lr.ph ], [ %i.v, %._crit_edge ] ; 2 uses
  %indvars.iv229 = phi i64 [ 0, %.preheader164.lr.ph ], [ %indvars.iv.next230, %._crit_edge ] ; 3 uses
  %.not132174 = icmp slt i32 %i.o, 0
  br i1 %.not132174, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader164
  %i.p = getelementptr inbounds nuw [516 x i8], ptr %i.m, i64 %indvars.iv229
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
  %.pre241 = load i32, ptr %i.k, align 8, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader164
  %i.u = phi i32 [ %.pre241, %._crit_edge.loopexit ], [ %i.n, %.preheader164 ] ; 3 uses
  %i.v = phi i32 [ %i.r, %._crit_edge.loopexit ], [ %i.o, %.preheader164 ] ; 2 uses
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1
  %i.w = shl nsw i32 %i.u, 1
  %i.x = sext i32 %i.w to i64
  %.not.not = icmp slt i64 %indvars.iv229, %i.x
  br i1 %.not.not, label %.preheader164, label %._crit_edge178, !llvm.loop !68

._crit_edge178:                                   ; preds = %._crit_edge, %.._crit_edge178_crit_edge
  %i.y = phi i32 [ %i.l, %.._crit_edge178_crit_edge ], [ %i.u, %._crit_edge ] ; 2 uses
  %i.z = phi i32 [ %.pre242, %.._crit_edge178_crit_edge ], [ %i.v, %._crit_edge ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 66604 ; 7 uses
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !28  ; 2 uses
  %i.ac = shl i32 %i.ab, 1
  %i.ad = add i32 %i.z, %i.ac
  %i.ae = sub i32 %4, %i.ad
  %i.af = icmp slt i32 %i.z, %i.ae
  br i1 %i.af, label %.lr.ph204, label %._crit_edge205.thread

.lr.ph204:                                        ; preds = %._crit_edge178
  %i.ag = add i32 %3, -16                         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 66616
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 66620
  %.pre166.i = sext i32 %5 to i64                 ; 11 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 66624 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph204, %._crit_edge189
  %i.al = phi i32 [ %i.z, %.lr.ph204 ], [ %i.jm, %._crit_edge189 ]
  %i.am = phi i32 [ %i.ab, %.lr.ph204 ], [ %i.jn, %._crit_edge189 ]
  %i.an = phi i32 [ %i.y, %.lr.ph204 ], [ %i.jo, %._crit_edge189 ] ; 5 uses
  %.0202 = phi i32 [ 0, %.lr.ph204 ], [ %.1.lcssa, %._crit_edge189 ] ; 2 uses
  %.0107201 = phi i32 [ 0, %.lr.ph204 ], [ %.1108.lcssa, %._crit_edge189 ] ; 2 uses
  %.0111200 = phi i32 [ 0, %.lr.ph204 ], [ %.1112.lcssa, %._crit_edge189 ] ; 2 uses
  %.1119199 = phi i32 [ %i.z, %.lr.ph204 ], [ %i.jq, %._crit_edge189 ] ; 7 uses
  %.sroa.0.0198 = phi i32 [ 0, %.lr.ph204 ], [ %.sroa.0.1.lcssa, %._crit_edge189 ] ; 2 uses
  %.sroa.12.0197 = phi i32 [ 0, %.lr.ph204 ], [ %.sroa.12.1.lcssa, %._crit_edge189 ] ; 2 uses
  %i.ao = sub i32 %i.ag, %i.an
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %bb.c
  %.pre161.i = mul nsw i32 %.1119199, %5
  %.pre162.i = sext i32 %.pre161.i to i64
  %.pre168.i = sext i32 %.1119199 to i64          ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %.pre162.i ; 3 uses
  %i.ar = sitofp nsz i32 %.1119199 to double
  %i.as = sext i32 %i.an to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph188, %find_block_motion.exit.thread
  %indvars.iv232 = phi i64 [ %i.as, %.lr.ph188 ], [ %indvars.iv.next233, %find_block_motion.exit.thread ] ; 11 uses
  %i.at = phi i32 [ %i.an, %.lr.ph188 ], [ %i.ji, %find_block_motion.exit.thread ] ; 2 uses
  %.1186 = phi i32 [ %.0202, %.lr.ph188 ], [ %.2, %find_block_motion.exit.thread ] ; 6 uses
  %.1108185 = phi i32 [ %.0107201, %.lr.ph188 ], [ %.2109, %find_block_motion.exit.thread ] ; 6 uses
  %.1112184 = phi i32 [ %.0111200, %.lr.ph188 ], [ %.3114, %find_block_motion.exit.thread ] ; 9 uses
  %.sroa.0.1181 = phi i32 [ %.sroa.0.0198, %.lr.ph188 ], [ %.sroa.0.2, %find_block_motion.exit.thread ] ; 4 uses
  %.sroa.12.1180 = phi i32 [ %.sroa.12.0197, %.lr.ph188 ], [ %.sroa.12.2, %find_block_motion.exit.thread ] ; 4 uses
  %i.au = load i32, ptr %i.e, align 4, !tbaa !28  ; 2 uses
  %.not31.i = icmp slt i32 %i.au, 0
  br i1 %.not31.i, label %block_contrast.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.d
  %i.av = shl nuw i32 %i.au, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.av, i32 0)
  %i.aw = or disjoint i32 %smax.i, 1
  %wide.trip.count.i = zext nneg i32 %i.aw to i64
  %i.ax = trunc nsw i64 %indvars.iv232 to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 2 uses
  %.02233.i = phi i32 [ 255, %.preheader.preheader.i ], [ %.2.15.i, %.preheader.i ] ; 2 uses
  %.02332.i = phi i32 [ 0, %.preheader.preheader.i ], [ %.225.15.i, %.preheader.i ] ; 2 uses
  %i.ay = trunc i64 %indvars.iv.i to i32
  %i.az = add i32 %.1119199, %i.ay
  %i.ba = mul i32 %i.az, %5
  %i.bb = add i32 %i.ba, %i.ax                    ; 16 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !89
  %i.bf = zext i8 %i.be to i32                    ; 3 uses
  %i.bg = icmp samesign ugt i32 %.02233.i, %i.bf
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.02332.i, i32 %i.bf)
  %.225.i = select i1 %i.bg, i32 %.02332.i, i32 %spec.select.i ; 2 uses
  %.2.i = tail call i32 @llvm.umin.i32(i32 %.02233.i, i32 %i.bf) ; 2 uses
  %i.bh = add i32 %i.bb, 1
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %2, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !89
  %i.bl = zext i8 %i.bk to i32                    ; 3 uses
  %i.bm = icmp samesign ugt i32 %.2.i, %i.bl
  %spec.select.1.i = tail call i32 @llvm.smax.i32(i32 %.225.i, i32 %i.bl)
  %.225.1.i = select i1 %i.bm, i32 %.225.i, i32 %spec.select.1.i ; 2 uses
  %.2.1.i = tail call i32 @llvm.umin.i32(i32 %.2.i, i32 %i.bl) ; 2 uses
  %i.bn = add i32 %i.bb, 2
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !89
  %i.br = zext i8 %i.bq to i32                    ; 3 uses
  %i.bs = icmp samesign ugt i32 %.2.1.i, %i.br
  %spec.select.2.i = tail call i32 @llvm.smax.i32(i32 %.225.1.i, i32 %i.br)
  %.225.2.i = select i1 %i.bs, i32 %.225.1.i, i32 %spec.select.2.i ; 2 uses
  %.2.2.i = tail call i32 @llvm.umin.i32(i32 %.2.1.i, i32 %i.br) ; 2 uses
  %i.bt = add i32 %i.bb, 3
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %2, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !89
  %i.bx = zext i8 %i.bw to i32                    ; 3 uses
  %i.by = icmp samesign ugt i32 %.2.2.i, %i.bx
  %spec.select.3.i = tail call i32 @llvm.smax.i32(i32 %.225.2.i, i32 %i.bx)
  %.225.3.i = select i1 %i.by, i32 %.225.2.i, i32 %spec.select.3.i ; 2 uses
  %.2.3.i = tail call i32 @llvm.umin.i32(i32 %.2.2.i, i32 %i.bx) ; 2 uses
  %i.bz = add i32 %i.bb, 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %2, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !89
  %i.cd = zext i8 %i.cc to i32                    ; 3 uses
  %i.ce = icmp samesign ugt i32 %.2.3.i, %i.cd
  %spec.select.4.i = tail call i32 @llvm.smax.i32(i32 %.225.3.i, i32 %i.cd)
  %.225.4.i = select i1 %i.ce, i32 %.225.3.i, i32 %spec.select.4.i ; 2 uses
  %.2.4.i = tail call i32 @llvm.umin.i32(i32 %.2.3.i, i32 %i.cd) ; 2 uses
  %i.cf = add i32 %i.bb, 5
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %2, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !89
  %i.cj = zext i8 %i.ci to i32                    ; 3 uses
  %i.ck = icmp samesign ugt i32 %.2.4.i, %i.cj
  %spec.select.5.i = tail call i32 @llvm.smax.i32(i32 %.225.4.i, i32 %i.cj)
  %.225.5.i = select i1 %i.ck, i32 %.225.4.i, i32 %spec.select.5.i ; 2 uses
  %.2.5.i = tail call i32 @llvm.umin.i32(i32 %.2.4.i, i32 %i.cj) ; 2 uses
  %i.cl = add i32 %i.bb, 6
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %2, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !89
  %i.cp = zext i8 %i.co to i32                    ; 3 uses
  %i.cq = icmp samesign ugt i32 %.2.5.i, %i.cp
  %spec.select.6.i = tail call i32 @llvm.smax.i32(i32 %.225.5.i, i32 %i.cp)
  %.225.6.i = select i1 %i.cq, i32 %.225.5.i, i32 %spec.select.6.i ; 2 uses
  %.2.6.i = tail call i32 @llvm.umin.i32(i32 %.2.5.i, i32 %i.cp) ; 2 uses
  %i.cr = add i32 %i.bb, 7
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %2, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !89
  %i.cv = zext i8 %i.cu to i32                    ; 3 uses
  %i.cw = icmp samesign ugt i32 %.2.6.i, %i.cv
  %spec.select.7.i = tail call i32 @llvm.smax.i32(i32 %.225.6.i, i32 %i.cv)
  %.225.7.i = select i1 %i.cw, i32 %.225.6.i, i32 %spec.select.7.i ; 2 uses
  %.2.7.i = tail call i32 @llvm.umin.i32(i32 %.2.6.i, i32 %i.cv) ; 2 uses
  %i.cx = add i32 %i.bb, 8
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %2, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !89
  %i.db = zext i8 %i.da to i32                    ; 3 uses
  %i.dc = icmp samesign ugt i32 %.2.7.i, %i.db
  %spec.select.8.i = tail call i32 @llvm.smax.i32(i32 %.225.7.i, i32 %i.db)
  %.225.8.i = select i1 %i.dc, i32 %.225.7.i, i32 %spec.select.8.i ; 2 uses
  %.2.8.i = tail call i32 @llvm.umin.i32(i32 %.2.7.i, i32 %i.db) ; 2 uses
  %i.dd = add i32 %i.bb, 9
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %2, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !89
  %i.dh = zext i8 %i.dg to i32                    ; 3 uses
  %i.di = icmp samesign ugt i32 %.2.8.i, %i.dh
  %spec.select.9.i = tail call i32 @llvm.smax.i32(i32 %.225.8.i, i32 %i.dh)
  %.225.9.i = select i1 %i.di, i32 %.225.8.i, i32 %spec.select.9.i ; 2 uses
  %.2.9.i = tail call i32 @llvm.umin.i32(i32 %.2.8.i, i32 %i.dh) ; 2 uses
  %i.dj = add i32 %i.bb, 10
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %2, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !89
  %i.dn = zext i8 %i.dm to i32                    ; 3 uses
  %i.do = icmp samesign ugt i32 %.2.9.i, %i.dn
  %spec.select.10.i = tail call i32 @llvm.smax.i32(i32 %.225.9.i, i32 %i.dn)
  %.225.10.i = select i1 %i.do, i32 %.225.9.i, i32 %spec.select.10.i ; 2 uses
  %.2.10.i = tail call i32 @llvm.umin.i32(i32 %.2.9.i, i32 %i.dn) ; 2 uses
  %i.dp = add i32 %i.bb, 11
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds i8, ptr %2, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !89
  %i.dt = zext i8 %i.ds to i32                    ; 3 uses
  %i.du = icmp samesign ugt i32 %.2.10.i, %i.dt
  %spec.select.11.i = tail call i32 @llvm.smax.i32(i32 %.225.10.i, i32 %i.dt)
  %.225.11.i = select i1 %i.du, i32 %.225.10.i, i32 %spec.select.11.i ; 2 uses
  %.2.11.i = tail call i32 @llvm.umin.i32(i32 %.2.10.i, i32 %i.dt) ; 2 uses
  %i.dv = add i32 %i.bb, 12
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %2, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !89
  %i.dz = zext i8 %i.dy to i32                    ; 3 uses
  %i.ea = icmp samesign ugt i32 %.2.11.i, %i.dz
  %spec.select.12.i = tail call i32 @llvm.smax.i32(i32 %.225.11.i, i32 %i.dz)
  %.225.12.i = select i1 %i.ea, i32 %.225.11.i, i32 %spec.select.12.i ; 2 uses
  %.2.12.i = tail call i32 @llvm.umin.i32(i32 %.2.11.i, i32 %i.dz) ; 2 uses
  %i.eb = add i32 %i.bb, 13
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr %2, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !89
  %i.ef = zext i8 %i.ee to i32                    ; 3 uses
  %i.eg = icmp samesign ugt i32 %.2.12.i, %i.ef
  %spec.select.13.i = tail call i32 @llvm.smax.i32(i32 %.225.12.i, i32 %i.ef)
  %.225.13.i = select i1 %i.eg, i32 %.225.12.i, i32 %spec.select.13.i ; 2 uses
  %.2.13.i = tail call i32 @llvm.umin.i32(i32 %.2.12.i, i32 %i.ef) ; 2 uses
  %i.eh = add i32 %i.bb, 14
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds i8, ptr %2, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !89
  %i.el = zext i8 %i.ek to i32                    ; 3 uses
  %i.em = icmp samesign ugt i32 %.2.13.i, %i.el
  %spec.select.14.i = tail call i32 @llvm.smax.i32(i32 %.225.13.i, i32 %i.el)
  %.225.14.i = select i1 %i.em, i32 %.225.13.i, i32 %spec.select.14.i ; 2 uses
end_hunk_0
begin_hunk_1_@find_motion:bb.a
  %i.gl = getelementptr inbounds i8, ptr %i.gg, i64 %i.gk
  %i.gm = tail call i32 %i.gj(ptr noundef %i.fy, i64 noundef %.pre166.i, ptr noundef %i.gl, i64 noundef %.pre166.i) #10, !inline_history !70 ; 2 uses
  %i.gn = icmp slt i32 %i.gm, %.4110.i            ; 2 uses
  %i.go = trunc nsw i64 %indvars.iv.i136 to i32
  %.sroa.12.14 = select i1 %i.gn, i32 %i.gi, i32 %.sroa.12.13 ; 2 uses
  %.sroa.0.14 = select i1 %i.gn, i32 %i.go, i32 %.sroa.0.13 ; 2 uses
  %.5.i = tail call i32 @llvm.smin.i32(i32 %i.gm, i32 %.4110.i) ; 2 uses
  %indvars.iv.next.i137 = add nsw i64 %indvars.iv.i136, 2 ; 2 uses
  %i.gp = load i32, ptr %i.k, align 8, !tbaa !29  ; 2 uses
  %i.gq = sext i32 %i.gp to i64
  %i.gr = icmp slt i64 %indvars.iv.next.i137, %i.gq
  br i1 %i.gr, label %bb.k, label %._crit_edge.loopexit.i138, !llvm.loop !73

._crit_edge.loopexit.i138:                        ; preds = %bb.k
  %.pre158.i = load i32, ptr %i.aa, align 4, !tbaa !36
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i138, %bb.j
  %.sroa.12.12 = phi i32 [ %.sroa.12.14, %._crit_edge.loopexit.i138 ], [ %.sroa.12.11, %bb.j ] ; 2 uses
  %.sroa.0.12 = phi i32 [ %.sroa.0.14, %._crit_edge.loopexit.i138 ], [ %.sroa.0.11, %bb.j ] ; 2 uses
  %i.gs = phi i32 [ %.pre158.i, %._crit_edge.loopexit.i138 ], [ %i.ga, %bb.j ] ; 2 uses
  %i.gt = phi i32 [ %i.gp, %._crit_edge.loopexit.i138 ], [ %i.gb, %bb.j ]
  %.4.lcssa.i = phi i32 [ %.5.i, %._crit_edge.loopexit.i138 ], [ %.3112.i, %bb.j ] ; 2 uses
  %indvars.iv.next140.i = add nsw i64 %indvars.iv139.i, 2 ; 2 uses
  %i.gu = sext i32 %i.gs to i64
  %i.gv = icmp slt i64 %indvars.iv.next140.i, %i.gu
  br i1 %i.gv, label %bb.j, label %._crit_edge115.i, !llvm.loop !74

._crit_edge115.i:                                 ; preds = %._crit_edge.i, %bb.i
  %.sroa.12.3 = phi i32 [ %.sroa.12.1180, %bb.i ], [ %.sroa.12.12, %._crit_edge.i ] ; 3 uses
  %.sroa.0.3 = phi i32 [ %.sroa.0.1181, %bb.i ], [ %.sroa.0.12, %._crit_edge.i ] ; 3 uses
  %.3.lcssa.i = phi i32 [ 2147483647, %bb.i ], [ %.4.lcssa.i, %._crit_edge.i ]
  %i.gw = add i32 %.sroa.12.3, -1
  %i.gx = add i32 %.sroa.0.3, -1
  %i.gy = getelementptr inbounds i8, ptr %i.aq, i64 %indvars.iv232 ; 2 uses
  %i.gz = sext i32 %i.gx to i64                   ; 2 uses
  %i.ha = sext i32 %.sroa.0.3 to i64              ; 3 uses
  %i.hb = sext i32 %i.gw to i64
  %i.hc = sext i32 %.sroa.12.3 to i64             ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.split120.us.i, %._crit_edge115.i
  %.sroa.12.4 = phi i32 [ %.sroa.12.3, %._crit_edge115.i ], [ %.sroa.12.7, %.split120.us.i ] ; 2 uses
  %.sroa.0.4 = phi i32 [ %.sroa.0.3, %._crit_edge115.i ], [ %.sroa.0.7, %.split120.us.i ] ; 2 uses
  %indvars.iv148.i = phi i64 [ %i.hb, %._crit_edge115.i ], [ %indvars.iv.next149.i, %.split120.us.i ] ; 5 uses
  %.6122.i = phi i32 [ %.3.lcssa.i, %._crit_edge115.i ], [ %.us-phi.i, %.split120.us.i ] ; 2 uses
  %i.hd = icmp eq i64 %indvars.iv148.i, %i.hc
  %i.he = sub nsw i64 %.pre168.i, %indvars.iv148.i
  %i.hf = mul nsw i64 %i.he, %.pre166.i
  %i.hg = getelementptr inbounds i8, ptr %2, i64 %i.hf ; 2 uses
  %.fr.i = freeze i1 %i.hd
  %i.hh = trunc nsw i64 %indvars.iv148.i to i32   ; 2 uses
  br i1 %.fr.i, label %.split.i, label %.split.us.i

.split.us.i:                                      ; preds = %bb.l, %.split.us.i
  %.sroa.12.5 = phi i32 [ %.sroa.12.6, %.split.us.i ], [ %.sroa.12.4, %bb.l ]
  %.sroa.0.5 = phi i32 [ %.sroa.0.6, %.split.us.i ], [ %.sroa.0.4, %bb.l ]
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %.split.us.i ], [ %i.gz, %bb.l ] ; 4 uses
  %.7118.us.i = phi i32 [ %.8.us.i, %.split.us.i ], [ %.6122.i, %bb.l ] ; 2 uses
  %i.hi = load ptr, ptr %i.aj, align 8, !tbaa !51
  %i.hj = sub nsw i64 %indvars.iv232, %indvars.iv142.i
  %i.hk = getelementptr inbounds i8, ptr %i.hg, i64 %i.hj
  %i.hl = tail call i32 %i.hi(ptr noundef %i.gy, i64 noundef %.pre166.i, ptr noundef %i.hk, i64 noundef %.pre166.i) #10, !inline_history !70 ; 2 uses
  %i.hm = icmp slt i32 %i.hl, %.7118.us.i         ; 2 uses
  %i.hn = trunc nsw i64 %indvars.iv142.i to i32
  %.sroa.12.6 = select i1 %i.hm, i32 %i.hh, i32 %.sroa.12.5 ; 2 uses
  %.sroa.0.6 = select i1 %i.hm, i32 %i.hn, i32 %.sroa.0.5 ; 2 uses
  %.8.us.i = tail call i32 @llvm.smin.i32(i32 %i.hl, i32 %.7118.us.i) ; 2 uses
  %indvars.iv.next143.i = add nsw i64 %indvars.iv142.i, 1
  %.not104.us.i = icmp sgt i64 %indvars.iv142.i, %i.ha
  br i1 %.not104.us.i, label %.split120.us.i, label %.split.us.i, !llvm.loop !75

.split.i:                                         ; preds = %bb.l, %bb.o
  %.sroa.12.9 = phi i32 [ %.sroa.12.10, %bb.o ], [ %.sroa.12.4, %bb.l ] ; 2 uses
  %.sroa.0.9 = phi i32 [ %.sroa.0.10, %bb.o ], [ %.sroa.0.4, %bb.l ] ; 2 uses
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %bb.o ], [ %i.gz, %bb.l ] ; 5 uses
  %.7118.i = phi i32 [ %.8.i, %bb.o ], [ %.6122.i, %bb.l ] ; 3 uses
  %i.ho = icmp eq i64 %indvars.iv145.i, %i.ha
  br i1 %i.ho, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.split.i
  %i.hp = load ptr, ptr %i.aj, align 8, !tbaa !51
  %i.hq = sub nsw i64 %indvars.iv232, %indvars.iv145.i
  %i.hr = getelementptr inbounds i8, ptr %i.hg, i64 %i.hq
  %i.hs = tail call i32 %i.hp(ptr noundef %i.gy, i64 noundef %.pre166.i, ptr noundef %i.hr, i64 noundef %.pre166.i) #10, !inline_history !70 ; 2 uses
  %i.ht = icmp slt i32 %i.hs, %.7118.i
  br i1 %i.ht, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hu = trunc nsw i64 %indvars.iv145.i to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.split.i
  %.sroa.12.10 = phi i32 [ %.sroa.12.9, %.split.i ], [ %i.hh, %bb.n ], [ %.sroa.12.9, %bb.m ] ; 2 uses
  %.sroa.0.10 = phi i32 [ %.sroa.0.9, %.split.i ], [ %i.hu, %bb.n ], [ %.sroa.0.9, %bb.m ] ; 2 uses
  %.8.i = phi i32 [ %.7118.i, %.split.i ], [ %i.hs, %bb.n ], [ %.7118.i, %bb.m ] ; 2 uses
  %indvars.iv.next146.i = add nsw i64 %indvars.iv145.i, 1
  %.not104.i = icmp sgt i64 %indvars.iv145.i, %i.ha
  br i1 %.not104.i, label %.split120.us.i, label %.split.i, !llvm.loop !75

.split120.us.i:                                   ; preds = %.split.us.i, %bb.o
  %.sroa.12.7 = phi i32 [ %.sroa.12.10, %bb.o ], [ %.sroa.12.6, %.split.us.i ] ; 2 uses
  %.sroa.0.7 = phi i32 [ %.sroa.0.10, %bb.o ], [ %.sroa.0.6, %.split.us.i ] ; 2 uses
  %.us-phi.i = phi i32 [ %.8.i, %bb.o ], [ %.8.us.i, %.split.us.i ] ; 2 uses
  %indvars.iv.next149.i = add nsw i64 %indvars.iv148.i, 1
  %.not.i = icmp sgt i64 %indvars.iv148.i, %i.hc
  br i1 %.not.i, label %.loopexit.i, label %bb.l, !llvm.loop !76

.loopexit.i:                                      ; preds = %.split120.us.i, %._crit_edge128.i
  %.sroa.12.8 = phi i32 [ %.sroa.12.18, %._crit_edge128.i ], [ %.sroa.12.7, %.split120.us.i ] ; 6 uses
  %.sroa.0.8 = phi i32 [ %.sroa.0.18, %._crit_edge128.i ], [ %.sroa.0.7, %.split120.us.i ] ; 6 uses
  %.9.i = phi i32 [ %.1.lcssa.i, %._crit_edge128.i ], [ %.us-phi.i, %.split120.us.i ]
  %i.hv = icmp sgt i32 %.9.i, 512
  br i1 %i.hv, label %find_block_motion.exit.thread, label %find_block_motion.exit

find_block_motion.exit:                           ; preds = %.loopexit.i
  %i.hw = icmp ne i32 %.sroa.0.8, -1
  %i.hx = icmp ne i32 %.sroa.12.8, -1
  %or.cond = select i1 %i.hw, i1 %i.hx, i1 false
  br i1 %or.cond, label %bb.p, label %find_block_motion.exit.thread

bb.p:                                             ; preds = %find_block_motion.exit
  %i.hy = load i32, ptr %i.k, align 8, !tbaa !29
  %i.hz = add nsw i32 %i.hy, %.sroa.0.8
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [516 x i8], ptr %i.ak, i64 %i.ia
  %i.ic = load i32, ptr %i.aa, align 4, !tbaa !36
  %i.id = add nsw i32 %i.ic, %.sroa.12.8
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.ie ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !50
  %i.ih = add nsw i32 %i.ig, 1
  store i32 %i.ih, ptr %i.if, align 4, !tbaa !50
  %i.ii = load i32, ptr %i.k, align 8, !tbaa !29
  %i.ij = sext i32 %i.ii to i64
  %i.ik = icmp sgt i64 %indvars.iv232, %i.ij
  br i1 %i.ik, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.il = load i32, ptr %i.aa, align 4, !tbaa !36
  %i.im = icmp sgt i32 %.1119199, %i.il
  br i1 %i.im, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.in = trunc nsw i64 %indvars.iv232 to i32     ; 2 uses
  %i.io = sitofp nsz i32 %i.in to double
  %i.ip = tail call nsz double @llvm.atan2.f64(double %i.ar, double %i.io)
  %i.iq = add nsw i32 %.sroa.12.8, %.1119199
  %i.ir = sitofp nsz i32 %i.iq to double
  %i.is = add nsw i32 %.sroa.0.8, %i.in
  %i.it = sitofp nsz i32 %i.is to double
  %i.iu = tail call nsz double @llvm.atan2.f64(double %i.ir, double %i.it)
  %i.iv = fsub nsz double %i.iu, %i.ip            ; 5 uses
  %i.iw = fcmp nsz ogt double %i.iv, f0x400921FB54442D18
  br i1 %i.iw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ix = fadd nsz double %i.iv, f0xC01921FB54442D18
  br label %block_angle.exit

bb.t:                                             ; preds = %bb.r
  %i.iy = fcmp nsz olt double %i.iv, f0xC00921FB54442D18
  %i.iz = fadd nsz double %i.iv, f0x401921FB54442D18
  %i.ja = select nsz i1 %i.iy, double %i.iz, double %i.iv
  br label %block_angle.exit

block_angle.exit:                                 ; preds = %bb.s, %bb.t
  %i.jb = phi nsz double [ %i.ix, %bb.s ], [ %i.ja, %bb.t ]
  %i.jc = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.jd = add nsw i32 %.1112184, 1
  %i.je = sext i32 %.1112184 to i64
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %i.je
  store double %i.jb, ptr %i.jf, align 8, !tbaa !53
  br label %bb.u

bb.u:                                             ; preds = %block_angle.exit, %bb.q, %bb.p
  %.2113 = phi i32 [ %i.jd, %block_angle.exit ], [ %.1112184, %bb.q ], [ %.1112184, %bb.p ]
  %i.jg = add nsw i32 %.sroa.0.8, %.1108185
  %i.jh = add nsw i32 %.sroa.12.8, %.1186
  br label %find_block_motion.exit.thread

find_block_motion.exit.thread:                    ; preds = %.loopexit.i, %bb.f, %bb.e, %block_contrast.exit, %bb.u, %find_block_motion.exit
  %.sroa.12.2 = phi i32 [ %.sroa.12.8, %bb.u ], [ %.sroa.12.8, %find_block_motion.exit ], [ %.sroa.12.1180, %block_contrast.exit ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %.loopexit.i ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %.sroa.0.8, %bb.u ], [ %.sroa.0.8, %find_block_motion.exit ], [ %.sroa.0.1181, %block_contrast.exit ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %.loopexit.i ] ; 2 uses
  %.3114 = phi i32 [ %.2113, %bb.u ], [ %.1112184, %find_block_motion.exit ], [ %.1112184, %block_contrast.exit ], [ %.1112184, %bb.e ], [ %.1112184, %bb.f ], [ %.1112184, %.loopexit.i ] ; 2 uses
  %.2109 = phi i32 [ %i.jg, %bb.u ], [ %.1108185, %find_block_motion.exit ], [ %.1108185, %block_contrast.exit ], [ %.1108185, %bb.e ], [ %.1108185, %bb.f ], [ %.1108185, %.loopexit.i ] ; 2 uses
  %.2 = phi i32 [ %i.jh, %bb.u ], [ %.1186, %find_block_motion.exit ], [ %.1186, %block_contrast.exit ], [ %.1186, %bb.e ], [ %.1186, %bb.f ], [ %.1186, %.loopexit.i ] ; 2 uses
  %indvars.iv.next233 = add nsw i64 %indvars.iv232, 16 ; 2 uses
  %i.ji = load i32, ptr %i.k, align 8, !tbaa !29  ; 3 uses
  %i.jj = sub i32 %i.ag, %i.ji
  %i.jk = sext i32 %i.jj to i64
  %i.jl = icmp slt i64 %indvars.iv.next233, %i.jk
  br i1 %i.jl, label %bb.d, label %._crit_edge189.loopexit, !llvm.loop !77

._crit_edge189.loopexit:                          ; preds = %find_block_motion.exit.thread
  %.pre243 = load i32, ptr %i.e, align 4, !tbaa !28
  %.pre244 = load i32, ptr %i.aa, align 4, !tbaa !36
  br label %._crit_edge189

._crit_edge189:                                   ; preds = %._crit_edge189.loopexit, %bb.c
  %i.jm = phi i32 [ %i.al, %bb.c ], [ %.pre244, %._crit_edge189.loopexit ] ; 4 uses
  %i.jn = phi i32 [ %i.am, %bb.c ], [ %.pre243, %._crit_edge189.loopexit ] ; 2 uses
  %i.jo = phi i32 [ %i.an, %bb.c ], [ %i.ji, %._crit_edge189.loopexit ] ; 3 uses
  %.sroa.12.1.lcssa = phi i32 [ %.sroa.12.0197, %bb.c ], [ %.sroa.12.2, %._crit_edge189.loopexit ]
  %.sroa.0.1.lcssa = phi i32 [ %.sroa.0.0198, %bb.c ], [ %.sroa.0.2, %._crit_edge189.loopexit ]
  %.1112.lcssa = phi i32 [ %.0111200, %bb.c ], [ %.3114, %._crit_edge189.loopexit ] ; 9 uses
  %.1108.lcssa = phi i32 [ %.0107201, %bb.c ], [ %.2109, %._crit_edge189.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0202, %bb.c ], [ %.2, %._crit_edge189.loopexit ] ; 3 uses
  %i.jp = shl i32 %i.jn, 1                        ; 2 uses
  %i.jq = add nsw i32 %i.jp, %.1119199            ; 2 uses
  %i.jr = add i32 %i.jm, %i.jp
  %i.js = sub i32 %4, %i.jr
  %i.jt = icmp slt i32 %i.jq, %i.js
  br i1 %i.jt, label %bb.c, label %._crit_edge205, !llvm.loop !78

._crit_edge205:                                   ; preds = %._crit_edge189
  %.not126 = icmp eq i32 %.1112.lcssa, 0
  br i1 %.not126, label %._crit_edge205.thread, label %bb.v

bb.v:                                             ; preds = %._crit_edge205
  %i.ju = load ptr, ptr %i.b, align 8, !tbaa !90  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr %i.ju, ptr %i.a, align 16, !tbaa !91
  %i.jv = sext i32 %.1112.lcssa to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %i.jv
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 -8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !91
  br label %bb.w

bb.w:                                             ; preds = %.thread.i140, %bb.v
  %.0127196.i = phi i32 [ 1, %bb.v ], [ %.1176.i, %.thread.i140 ] ; 2 uses
  %i.jz = add nsw i32 %.0127196.i, -1             ; 2 uses
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.ka ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 16, !tbaa !91 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !91 ; 2 uses
  %i.kf = icmp ult ptr %i.kc, %i.ke
  br i1 %i.kf, label %.lr.ph191.preheader.i, label %.thread.i140

.lr.ph191.preheader.i:                            ; preds = %bb.w
  %i.kg = sext i32 %.0127196.i to i64
  %i.kh = add nsw i64 %i.kg, -1
  br label %.lr.ph191.i

.lr.ph191.i:                                      ; preds = %bb.ap, %.lr.ph191.preheader.i
  %indvars.iv.i144 = phi i64 [ %i.kh, %.lr.ph191.preheader.i ], [ %indvars.iv.next.i150, %bb.ap ] ; 6 uses
  %.0129188.i = phi ptr [ %i.kc, %.lr.ph191.preheader.i ], [ %.1130.i, %bb.ap ] ; 12 uses
  %.0132187.i = phi ptr [ %i.ke, %.lr.ph191.preheader.i ], [ %.1133.i, %bb.ap ] ; 13 uses
  %i.ki = getelementptr inbounds i8, ptr %.0132187.i, i64 -8 ; 6 uses
  %i.kj = icmp ult ptr %.0129188.i, %i.ki
  br i1 %i.kj, label %bb.x, label %bb.aq

bb.x:                                             ; preds = %.lr.ph191.i
  %i.kk = getelementptr inbounds i8, ptr %.0132187.i, i64 -16 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.0129188.i, i64 8 ; 3 uses
  %i.km = ptrtoint ptr %.0132187.i to i64         ; 2 uses
  %i.kn = ptrtoint ptr %.0129188.i to i64         ; 2 uses
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = ashr i64 %i.ko, 4
  %i.kq = getelementptr inbounds [8 x i8], ptr %.0129188.i, i64 %i.kp ; 8 uses
  %.0129.val160.i = load double, ptr %.0129188.i, align 8, !tbaa !53 ; 5 uses
  %.0132.val161.i = load double, ptr %.0132187.i, align 8, !tbaa !53 ; 4 uses
  %i.kr = fcmp nsz ogt double %.0129.val160.i, %.0132.val161.i
  %.val159.i = load double, ptr %i.kq, align 8, !tbaa !53 ; 5 uses
  br i1 %i.kr, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ks = fcmp nsz ogt double %.0132.val161.i, %.val159.i
  br i1 %i.ks, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store double %.0129.val160.i, ptr %i.kq, align 8, !tbaa !53
  br label %.sink.split.i

bb.aa:                                            ; preds = %bb.y
  store double %.0129.val160.i, ptr %.0132187.i, align 8, !tbaa !53
  br label %.sink.split.i

bb.ab:                                            ; preds = %bb.x
  %i.kt = fcmp nsz ogt double %.0129.val160.i, %.val159.i
  br i1 %i.kt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store double %.0129.val160.i, ptr %i.kq, align 8, !tbaa !53
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ac, %bb.aa, %bb.z
  %.val159.sink.i = phi double [ %.val159.i, %bb.ac ], [ %.val159.i, %bb.z ], [ %.0132.val161.i, %bb.aa ]
  store double %.val159.sink.i, ptr %.0129188.i, align 8, !tbaa !53
  %.val154.i.pre = load double, ptr %i.kq, align 8, !tbaa !53
  %.0132.val155.i.pre = load double, ptr %.0132187.i, align 8, !tbaa !53
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i, %bb.ab
  %.0132.val155.i = phi double [ %.0132.val161.i, %bb.ab ], [ %.0132.val155.i.pre, %.sink.split.i ] ; 3 uses
  %.val154.i = phi double [ %.val159.i, %bb.ab ], [ %.val154.i.pre, %.sink.split.i ] ; 3 uses
  %.0135.i = phi i32 [ 1, %bb.ab ], [ 0, %.sink.split.i ]
  %i.ku = fcmp nsz ogt double %.val154.i, %.0132.val155.i
  br i1 %i.ku, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store double %.val154.i, ptr %.0132187.i, align 8, !tbaa !53
  store double %.0132.val155.i, ptr %i.kq, align 8, !tbaa !53
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.kv = phi double [ %.0132.val155.i, %bb.ae ], [ %.val154.i, %bb.ad ] ; 2 uses
  %.1136.i = phi i32 [ 0, %bb.ae ], [ %.0135.i, %bb.ad ]
  %i.kw = icmp eq ptr %.0129188.i, %i.kk
  br i1 %i.kw, label %.thread.loopexit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kx = load double, ptr %i.ki, align 8, !tbaa !53
  store double %i.kx, ptr %i.kq, align 8, !tbaa !53
  store double %i.kv, ptr %i.ki, align 8, !tbaa !53
  %.not147182.i = icmp ugt ptr %i.kl, %i.kk
  br i1 %.not147182.i, label %._crit_edge.i149, label %.preheader.i145

.preheader.i145:                                  ; preds = %bb.ag, %.critedge151.i
  %.0137184.i = phi ptr [ %.2139.i, %.critedge151.i ], [ %i.kk, %bb.ag ] ; 4 uses
  %.0141183.i = phi ptr [ %.2143.i, %.critedge151.i ], [ %i.kl, %bb.ag ]
  %.val153.i = load double, ptr %i.ki, align 8, !tbaa !53 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.preheader.i145
  %.1142179.i = phi ptr [ %.0141183.i, %.preheader.i145 ], [ %i.kz, %bb.ai ] ; 3 uses
  %.1142.val.i = load double, ptr %.1142179.i, align 8, !tbaa !53
  %i.ky = fcmp nsz olt double %.1142.val.i, %.val153.i
  br i1 %i.ky, label %bb.ai, label %.critedge.i

bb.ai:                                            ; preds = %bb.ah
  %i.kz = getelementptr inbounds nuw i8, ptr %.1142179.i, i64 8 ; 3 uses
  %.not149.i = icmp ugt ptr %i.kz, %.0137184.i
  br i1 %.not149.i, label %.critedge.i, label %bb.ah, !llvm.loop !79

.critedge.i:                                      ; preds = %bb.ai, %bb.ah
  %.1142.lcssa.i = phi ptr [ %i.kz, %bb.ai ], [ %.1142179.i, %bb.ah ] ; 7 uses
  %.not150180.i = icmp ugt ptr %.1142.lcssa.i, %.0137184.i
  br i1 %.not150180.i, label %.critedge151.i, label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %.critedge.i, %bb.aj
  %.1138181.i = phi ptr [ %i.lb, %bb.aj ], [ %.0137184.i, %.critedge.i ] ; 4 uses
  %.1138.val.i = load double, ptr %.1138181.i, align 8, !tbaa !53 ; 2 uses
  %i.la = fcmp nsz ogt double %.1138.val.i, %.val153.i
  br i1 %i.la, label %bb.aj, label %.critedge2.i

bb.aj:                                            ; preds = %.lr.ph.i146
  %i.lb = getelementptr inbounds i8, ptr %.1138181.i, i64 -8 ; 3 uses
  %.not150.i = icmp ugt ptr %.1142.lcssa.i, %i.lb
  br i1 %.not150.i, label %.critedge151.i, label %.lr.ph.i146, !llvm.loop !80

.critedge2.i:                                     ; preds = %.lr.ph.i146
  %i.lc = load double, ptr %.1142.lcssa.i, align 8, !tbaa !53
  store double %i.lc, ptr %.1138181.i, align 8, !tbaa !53
  store double %.1138.val.i, ptr %.1142.lcssa.i, align 8, !tbaa !53
  %i.ld = getelementptr inbounds nuw i8, ptr %.1142.lcssa.i, i64 8
  %i.le = getelementptr inbounds i8, ptr %.1138181.i, i64 -8
  br label %.critedge151.i

.critedge151.i:                                   ; preds = %bb.aj, %.critedge2.i, %.critedge.i
  %.2143.i = phi ptr [ %i.ld, %.critedge2.i ], [ %.1142.lcssa.i, %.critedge.i ], [ %.1142.lcssa.i, %bb.aj ] ; 3 uses
  %.2139.i = phi ptr [ %i.le, %.critedge2.i ], [ %.0137184.i, %.critedge.i ], [ %i.lb, %bb.aj ] ; 3 uses
  %.not147.i = icmp ugt ptr %.2143.i, %.2139.i
  br i1 %.not147.i, label %._crit_edge.loopexit.i147, label %.preheader.i145, !llvm.loop !81

._crit_edge.loopexit.i147:                        ; preds = %.critedge151.i
  %.pre.i148 = load double, ptr %i.ki, align 8, !tbaa !53
  br label %._crit_edge.i149

._crit_edge.i149:                                 ; preds = %._crit_edge.loopexit.i147, %bb.ag
  %i.lf = phi double [ %i.kv, %bb.ag ], [ %.pre.i148, %._crit_edge.loopexit.i147 ]
  %.0141.lcssa.i = phi ptr [ %i.kl, %bb.ag ], [ %.2143.i, %._crit_edge.loopexit.i147 ] ; 7 uses
  %.0137.lcssa.i = phi ptr [ %i.kk, %bb.ag ], [ %.2139.i, %._crit_edge.loopexit.i147 ] ; 2 uses
  %i.lg = load double, ptr %.0141.lcssa.i, align 8, !tbaa !53
  store double %i.lf, ptr %.0141.lcssa.i, align 8, !tbaa !53
  store double %i.lg, ptr %i.ki, align 8, !tbaa !53
  %.not148.i = icmp eq i32 %.1136.i, 0
  br i1 %.not148.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i149
  %i.lh = getelementptr inbounds i8, ptr %.0141.lcssa.i, i64 -8
  %i.li = icmp eq ptr %i.kq, %i.lh
  %i.lj = icmp eq ptr %i.kq, %.0141.lcssa.i
  %or.cond.i = or i1 %i.lj, %i.li
  br i1 %or.cond.i, label %.preheader173.i, label %bb.am

.preheader173.i:                                  ; preds = %bb.ak, %bb.al
  %.0140.i = phi ptr [ %i.ll, %bb.al ], [ %.0129188.i, %bb.ak ] ; 4 uses
  %i.lk = icmp ult ptr %.0140.i, %.0132187.i
  br i1 %i.lk, label %bb.al, label %.critedge4.i

bb.al:                                            ; preds = %.preheader173.i
  %i.ll = getelementptr inbounds nuw i8, ptr %.0140.i, i64 8 ; 2 uses
  %.0140.val.i = load double, ptr %.0140.i, align 8, !tbaa !53
  %.val.i = load double, ptr %i.ll, align 8, !tbaa !53
  %i.lm = fcmp nsz ule double %.0140.val.i, %.val.i
  br i1 %i.lm, label %.preheader173.i, label %.critedge4.i, !llvm.loop !82

.critedge4.i:                                     ; preds = %bb.al, %.preheader173.i
  %i.ln = icmp eq ptr %.0140.i, %.0132187.i
  br i1 %i.ln, label %.thread.loopexit.i, label %bb.am

bb.am:                                            ; preds = %.critedge4.i, %bb.ak, %._crit_edge.i149
  %i.lo = ptrtoint ptr %.0141.lcssa.i to i64      ; 2 uses
  %i.lp = sub i64 %i.km, %i.lo
  %i.lq = sub i64 %i.lo, %i.kn
  %i.lr = icmp slt i64 %i.lp, %i.lq
  br i1 %i.lr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ls = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv.i144 ; 2 uses
  store ptr %.0129188.i, ptr %i.ls, align 16, !tbaa !91
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store ptr %.0137.lcssa.i, ptr %i.lt, align 8, !tbaa !91
  %i.lu = getelementptr inbounds nuw i8, ptr %.0141.lcssa.i, i64 8
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.lv = getelementptr inbounds nuw i8, ptr %.0141.lcssa.i, i64 8
  %i.lw = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv.i144 ; 2 uses
  store ptr %i.lv, ptr %i.lw, align 16, !tbaa !91
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store ptr %.0132187.i, ptr %i.lx, align 8, !tbaa !91
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1133.i = phi ptr [ %.0132187.i, %bb.an ], [ %.0137.lcssa.i, %bb.ao ] ; 2 uses
  %.1130.i = phi ptr [ %i.lu, %bb.an ], [ %.0129188.i, %bb.ao ] ; 2 uses
  %indvars.iv.next.i150 = add nsw i64 %indvars.iv.i144, 1 ; 2 uses
  %i.ly = icmp ult ptr %.1130.i, %.1133.i
  br i1 %i.ly, label %.lr.ph191.i, label %.thread.loopexit.i

bb.aq:                                            ; preds = %.lr.ph191.i
  %i.lz = trunc nsw i64 %indvars.iv.i144 to i32   ; 2 uses
  %.0129.val.i = load double, ptr %.0129188.i, align 8, !tbaa !53 ; 2 uses
  %.0132.val.i = load double, ptr %.0132187.i, align 8, !tbaa !53 ; 2 uses
  %i.ma = fcmp nsz ogt double %.0129.val.i, %.0132.val.i
  br i1 %i.ma, label %bb.ar, label %.thread.i140

bb.ar:                                            ; preds = %bb.aq
  store double %.0129.val.i, ptr %.0132187.i, align 8, !tbaa !53
  store double %.0132.val.i, ptr %.0129188.i, align 8, !tbaa !53
  br label %.thread.i140

.thread.loopexit.i:                               ; preds = %bb.ap, %.critedge4.i, %bb.af
  %.1176.ph.in.i = phi i64 [ %indvars.iv.i144, %.critedge4.i ], [ %indvars.iv.i144, %bb.af ], [ %indvars.iv.next.i150, %bb.ap ]
  %.1176.ph.i = trunc i64 %.1176.ph.in.i to i32
  br label %.thread.i140

.thread.i140:                                     ; preds = %.thread.loopexit.i, %bb.ar, %bb.aq, %bb.w
  %.1176.i = phi i32 [ %i.lz, %bb.ar ], [ %i.lz, %bb.aq ], [ %i.jz, %bb.w ], [ %.1176.ph.i, %.thread.loopexit.i ] ; 2 uses
  %.not.i141 = icmp eq i32 %.1176.i, 0
  br i1 %.not.i141, label %bb.as, label %bb.w, !llvm.loop !83

bb.as:                                            ; preds = %.thread.i140
  %i.mb = sdiv i32 %.1108.lcssa, %.1112.lcssa
  %i.mc = sdiv i32 %.1.lcssa, %.1112.lcssa
  %i.md = sdiv i32 %.1112.lcssa, 5                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.me = sub nsw i32 %.1112.lcssa, %i.md         ; 2 uses
  %i.mf = icmp slt i32 %i.md, %i.me
  br i1 %i.mf, label %.lr.ph200.preheader.i, label %clean_mean.exit

.lr.ph200.preheader.i:                            ; preds = %bb.as
  %i.mg = sext i32 %i.md to i64                   ; 4 uses
  %wide.trip.count.i142 = sext i32 %i.me to i64
  %i.mh = sext i32 %.1112.lcssa to i64            ; 2 uses
  %i.mi = shl nsw i64 %i.mg, 1
  %i.mj = sub nsw i64 %i.mh, %i.mi
  %i.mk = shl nsw i64 %i.mg, 1
  %xtraiter = and i64 %i.mj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph200.i.prol.loopexit, label %.lr.ph200.i.prol

.lr.ph200.i.prol:                                 ; preds = %.lr.ph200.preheader.i, %.lr.ph200.i.prol
  %indvars.iv210.i.prol = phi i64 [ %indvars.iv.next211.i.prol, %.lr.ph200.i.prol ], [ %i.mg, %.lr.ph200.preheader.i ] ; 2 uses
  %.0198.i.prol = phi double [ %i.mn, %.lr.ph200.i.prol ], [ 0.000000e+00, %.lr.ph200.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph200.i.prol ], [ 0, %.lr.ph200.preheader.i ]
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %indvars.iv210.i.prol
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !53
  %i.mn = fadd nsz double %.0198.i.prol, %i.mm    ; 3 uses
  %indvars.iv.next211.i.prol = add nsw i64 %indvars.iv210.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph200.i.prol.loopexit, label %.lr.ph200.i.prol, !llvm.loop !84

.lr.ph200.i.prol.loopexit:                        ; preds = %.lr.ph200.i.prol, %.lr.ph200.preheader.i
  %.lcssa.unr = phi double [ poison, %.lr.ph200.preheader.i ], [ %i.mn, %.lr.ph200.i.prol ]
  %indvars.iv210.i.unr = phi i64 [ %i.mg, %.lr.ph200.preheader.i ], [ %indvars.iv.next211.i.prol, %.lr.ph200.i.prol ]
  %.0198.i.unr = phi double [ 0.000000e+00, %.lr.ph200.preheader.i ], [ %i.mn, %.lr.ph200.i.prol ]
  %i.mo = sub nsw i64 %i.mk, %i.mh
  %i.mp = icmp ugt i64 %i.mo, -8
  br i1 %i.mp, label %clean_mean.exit, label %.lr.ph200.i

.lr.ph200.i:                                      ; preds = %.lr.ph200.i.prol.loopexit, %.lr.ph200.i
  %indvars.iv210.i = phi i64 [ %indvars.iv.next211.i.7, %.lr.ph200.i ], [ %indvars.iv210.i.unr, %.lr.ph200.i.prol.loopexit ] ; 9 uses
  %.0198.i = phi double [ %i.nu, %.lr.ph200.i ], [ %.0198.i.unr, %.lr.ph200.i.prol.loopexit ]
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !53
  %i.ms = fadd nsz double %.0198.i, %i.mr
  %i.mt = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.mu = getelementptr i8, ptr %i.mt, i64 8
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !53
  %i.mw = fadd nsz double %i.ms, %i.mv
  %i.mx = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.my = getelementptr i8, ptr %i.mx, i64 16
  %i.mz = load double, ptr %i.my, align 8, !tbaa !53
  %i.na = fadd nsz double %i.mw, %i.mz
  %i.nb = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.nc = getelementptr i8, ptr %i.nb, i64 24
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !53
  %i.ne = fadd nsz double %i.na, %i.nd
  %i.nf = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.ng = getelementptr i8, ptr %i.nf, i64 32
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !53
  %i.ni = fadd nsz double %i.ne, %i.nh
  %i.nj = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.nk = getelementptr i8, ptr %i.nj, i64 40
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !53
  %i.nm = fadd nsz double %i.ni, %i.nl
  %i.nn = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.no = getelementptr i8, ptr %i.nn, i64 48
  %i.np = load double, ptr %i.no, align 8, !tbaa !53
  %i.nq = fadd nsz double %i.nm, %i.np
  %i.nr = getelementptr [8 x i8], ptr %i.ju, i64 %indvars.iv210.i
  %i.ns = getelementptr i8, ptr %i.nr, i64 56
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !53
  %i.nu = fadd nsz double %i.nq, %i.nt            ; 2 uses
  %indvars.iv.next211.i.7 = add nsw i64 %indvars.iv210.i, 8 ; 2 uses
  %exitcond.not.i143.7 = icmp eq i64 %indvars.iv.next211.i.7, %wide.trip.count.i142
  br i1 %exitcond.not.i143.7, label %clean_mean.exit, label %.lr.ph200.i, !llvm.loop !85

clean_mean.exit:                                  ; preds = %.lr.ph200.i.prol.loopexit, %.lr.ph200.i, %bb.as
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.as ], [ %.lcssa.unr, %.lr.ph200.i.prol.loopexit ], [ %i.nu, %.lr.ph200.i ]
  %i.nv = shl nsw i32 %i.md, 1
  %i.nw = sub nsw i32 %.1112.lcssa, %i.nv
  %i.nx = sitofp nsz i32 %i.nw to double
  %i.ny = fdiv nsz double %.0.lcssa.i, %i.nx      ; 2 uses
  %i.nz = fcmp nsz olt double %i.ny, 1.000000e-03
  %spec.store.select = select i1 %i.nz, double 0.000000e+00, double %i.ny
  br label %._crit_edge205.thread

._crit_edge205.thread:                            ; preds = %._crit_edge205, %._crit_edge178, %clean_mean.exit
  %.pre248 = phi i32 [ %i.jm, %clean_mean.exit ], [ %i.jm, %._crit_edge205 ], [ %i.z, %._crit_edge178 ] ; 3 uses
  %7 = phi i32 [ %i.jo, %clean_mean.exit ], [ %i.jo, %._crit_edge205 ], [ %i.y, %._crit_edge178 ] ; 5 uses
  %8 = phi double [ %spec.store.select, %clean_mean.exit ], [ 0.000000e+00, %._crit_edge205 ], [ 0.000000e+00, %._crit_edge178 ] ; 2 uses
  %.3110 = phi i32 [ %i.mb, %clean_mean.exit ], [ %.1108.lcssa, %._crit_edge205 ], [ 0, %._crit_edge178 ]
  %.3 = phi i32 [ %i.mc, %clean_mean.exit ], [ %.1.lcssa, %._crit_edge205 ], [ 0, %._crit_edge178 ]
  %i.oa = icmp sgt i32 %.pre248, -1
  %i.ob = insertelement <2 x i32> poison, i32 %7, i64 0
  %i.oc = insertelement <2 x i32> %i.ob, i32 %.pre248, i64 1 ; 2 uses
  %i.od = shl <2 x i32> %i.oc, splat (i32 1)      ; 3 uses
  br i1 %i.oa, label %.preheader.lr.ph, label %._crit_edge217.split

.preheader.lr.ph:                                 ; preds = %._crit_edge205.thread
  %.not131209 = icmp slt i32 %7, 0
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.of = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br i1 %.not131209, label %._crit_edge217.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.og = extractelement <2 x i32> %i.od, i64 0   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.og, i32 0)
  %i.oh = extractelement <2 x i32> %i.od, i64 1
  %i.oi = zext i32 %i.oh to i64
  %i.oj = icmp slt i32 %i.og, 1
  %unroll_iter = zext nneg i32 %smax to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge213
  %indvars.iv238.a = phi i64 [ %i.oi, %.preheader.preheader ], [ %indvars.iv.next239, %._crit_edge213 ] ; 3 uses
  %.0115216 = phi i32 [ 0, %.preheader.preheader ], [ %.2117.epil, %._crit_edge213 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %indvars.iv238.a ; 3 uses
  %i.ok = trunc nuw i64 %indvars.iv238.a to i32   ; 2 uses
  %i.ol = sub nsw i32 %i.ok, %.pre248
  %i.om = sitofp nsz i32 %i.ol to double          ; 3 uses
  br i1 %i.oj, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %bb.aw
  %indvars.iv235 = phi i64 [ %indvars.iv.next236.1, %bb.aw ], [ 0, %.preheader ] ; 4 uses
  %.1116211 = phi i32 [ %.2117.1, %bb.aw ], [ %.0115216, %.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.aw ], [ 0, %.preheader ]
  %gep = getelementptr inbounds nuw [516 x i8], ptr %invariant.gep, i64 %indvars.iv235
  %i.on = load i32, ptr %gep, align 4, !tbaa !50  ; 2 uses
  %i.oo = icmp sgt i32 %i.on, %.1116211
  br i1 %i.oo, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.preheader.new
  %i.op = trunc i64 %indvars.iv235 to i32
  %i.oq = sub i32 %i.op, %7
  %i.or = sitofp nsz i32 %i.oq to double
  store double %i.or, ptr %6, align 8, !tbaa !93
  store double %i.om, ptr %i.of, align 8, !tbaa !94
  br label %bb.au

bb.au:                                            ; preds = %.preheader.new, %bb.at
  %.2117 = phi i32 [ %i.on, %bb.at ], [ %.1116211, %.preheader.new ] ; 2 uses
  %indvars.iv.next236 = or disjoint i64 %indvars.iv235, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [516 x i8], ptr %invariant.gep, i64 %indvars.iv.next236
  %i.os = load i32, ptr %gep.1, align 4, !tbaa !50 ; 2 uses
  %i.ot = icmp sgt i32 %i.os, %.2117
  br i1 %i.ot, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ou = trunc i64 %indvars.iv.next236 to i32
  %i.ov = sub i32 %i.ou, %7
  %i.ow = sitofp nsz i32 %i.ov to double
  store double %i.ow, ptr %6, align 8, !tbaa !93
  store double %i.om, ptr %i.of, align 8, !tbaa !94
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.2117.1 = phi i32 [ %i.os, %bb.av ], [ %.2117, %bb.au ] ; 2 uses
  %indvars.iv.next236.1 = add nuw nsw i64 %indvars.iv235, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.epil.preheader, label %.preheader.new, !llvm.loop !86

.epil.preheader:                                  ; preds = %.preheader, %bb.aw
  %indvars.iv235.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next236.1, %bb.aw ] ; 2 uses
  %.1116211.epil.init = phi i32 [ %.0115216, %.preheader ], [ %.2117.1, %bb.aw ] ; 2 uses
  %gep.epil = getelementptr inbounds nuw [516 x i8], ptr %invariant.gep, i64 %indvars.iv235.epil.init
  %i.ox = load i32, ptr %gep.epil, align 4, !tbaa !50 ; 2 uses
  %i.oy = icmp sgt i32 %i.ox, %.1116211.epil.init
  br i1 %i.oy, label %bb.ax, label %._crit_edge213

bb.ax:                                            ; preds = %.epil.preheader
  %i.oz = trunc i64 %indvars.iv235.epil.init to i32
  %i.pa = sub i32 %i.oz, %7
  %i.pb = sitofp nsz i32 %i.pa to double
  store double %i.pb, ptr %6, align 8, !tbaa !93
  store double %i.om, ptr %i.of, align 8, !tbaa !94
  br label %._crit_edge213

._crit_edge213:                                   ; preds = %.epil.preheader, %bb.ax
  %.2117.epil = phi i32 [ %i.ox, %bb.ax ], [ %.1116211.epil.init, %.epil.preheader ]
  %indvars.iv.next239 = add nsw i64 %indvars.iv238.a, -1
  %i.pc = icmp sgt i32 %i.ok, 0
  br i1 %i.pc, label %.preheader, label %._crit_edge217.split, !llvm.loop !87

._crit_edge217.split:                             ; preds = %._crit_edge213, %._crit_edge205.thread, %.preheader.lr.ph
  %i.pd = sitofp nsz i32 %.3110 to double
  %i.pe = sitofp nsz i32 %3 to double
  %i.pf = fmul nnan nsz double %i.pe, 5.000000e-01
  %i.pg = fsub nsz double %i.pd, %i.pf
  %i.ph = sitofp nsz i32 %.3 to double
  %i.pi = sitofp nsz i32 %4 to double
  %i.pj = fmul nnan nsz double %i.pi, 5.000000e-01
  %i.pk = fsub nsz double %i.ph, %i.pj            ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %8) ; 2 uses
  %cos = extractvalue { double, double } %sincos, 1
  %i.pm = fneg nsz double %i.pk
  %i.pn = mul <2 x i32> %i.oc, splat (i32 -2)
  %i.po = sitofp <2 x i32> %i.od to <2 x float>   ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 2 uses
  %i.pp = insertelement <2 x double> poison, double %cos, i64 0
  %i.pq = insertelement <2 x double> %i.pp, double %sin, i64 1
  %i.pr = fadd nsz <2 x double> %i.pq, <double -1.000000e+00, double -0.000000e+00> ; 2 uses
  %i.ps = fmul nsz double %sin, %i.pm
  %i.pt = extractelement <2 x double> %i.pr, i64 0
  %i.pu = fmul nsz double %i.pk, %i.pt
  %i.pv = insertelement <2 x double> poison, double %i.pg, i64 0
  %i.pw = shufflevector <2 x double> %i.pv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.px = insertelement <2 x double> poison, double %i.ps, i64 0
  %i.py = insertelement <2 x double> %i.px, double %i.pu, i64 1
  %i.pz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pr, <2 x double> %i.pw, <2 x double> %i.py)
  %i.qa = load <2 x double>, ptr %6, align 8, !tbaa !53
  %i.qb = fadd nsz <2 x double> %i.qa, %i.pz
  %i.qc = fptrunc <2 x double> %i.qb to <2 x float> ; 2 uses
  %i.qd = sitofp <2 x i32> %i.pn to <2 x float>   ; 2 uses
  %i.qe = fcmp nsz ogt <2 x float> %i.qc, %i.qd
  %i.qf = select <2 x i1> %i.qe, <2 x float> %i.qc, <2 x float> %i.qd ; 2 uses
  %i.qg = fcmp nsz ogt <2 x float> %i.qf, %i.po
  %i.qh = select <2 x i1> %i.qg, <2 x float> %i.po, <2 x float> %i.qf
  %i.qi = fpext <2 x float> %i.qh to <2 x double>
  store <2 x double> %i.qi, ptr %6, align 8, !tbaa !53
  %i.qj = fptrunc nsz double %8 to float          ; 2 uses
  %i.qk = fcmp nsz ogt float %i.qj, -1.000000e-01
  %i.ql = select nsz i1 %i.qk, float %i.qj, float -1.000000e-01 ; 2 uses
  %i.qm = fcmp nsz ogt float %i.ql, 1.000000e-01
  %..i = select nsz i1 %i.qm, float 1.000000e-01, float %i.ql
  %i.qn = fpext nsz float %..i to double
  store double %i.qn, ptr %i.pl, align 8, !tbaa !95
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
end_hunk_1
