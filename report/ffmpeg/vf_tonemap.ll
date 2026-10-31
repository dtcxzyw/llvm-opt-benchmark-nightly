Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_tonemap?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0_@filter_frame:bb.a

.loopexit:                                        ; preds = %._crit_edge, %bb.t, %.preheader.lr.ph, %.preheader64, %bb.v, %bb.u
  call void @av_frame_free(ptr noundef nonnull %i.a) #7
  call void @ff_update_hdr_metadata(ptr noundef nonnull %i.x, double noundef %.0) #7
  %i.cm = call i32 @ff_filter_frame(ptr noundef nonnull %i.i, ptr noundef nonnull %i.x) #7
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %bb.f, %bb.d, %bb.b
  %.047 = phi i32 [ %i.y, %bb.f ], [ %i.cm, %.loopexit ], [ -12, %bb.d ], [ -558323010, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.047
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare double @ff_determine_signal_peak(ptr noundef) local_unnamed_addr #3

declare ptr @av_csp_luma_coeffs_from_avcsp(i32 noundef) local_unnamed_addr #3

declare ptr @av_color_space_name(i32 noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @tonemap_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !39     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = sext i32 %2 to i64
  %i.h = mul nsw i64 %i.f, %i.g
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = sdiv i64 %i.h, %i.i                      ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = add nsw i32 %2, 1
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %i.f, %i.m
  %i.o = sdiv i64 %i.n, %i.i                      ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !41 ; 10 uses
  %i.s = icmp slt i32 %i.k, %i.p
  br i1 %i.s, label %.preheader.lr.ph, label %._crit_edge38.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.w = load i32, ptr %i.v, align 8, !tbaa !45   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 5 uses
  %i.aa = fptrunc nsz double %i.r to float        ; 4 uses
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float 1.500000e-01, float 5.000000e-02)
  %i.ac = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float %i.ab, float 4.000000e-03)
  %i.ad = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float 1.500000e-01, float 5.000000e-01)
  %i.ae = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float %i.ad, float f0x3D75C290)
  %i.af = fdiv nsz float %i.ac, %i.ae
  %i.ag = fadd nsz float %i.af, f0xBD888888
  %i.ah = fdiv nsz double f0x3FA99999A0000000, %i.r
  %i.ai = fadd nsz double %i.r, -1.000000e+00     ; 3 uses
  %i.aj = fcmp nsz ogt double %i.ai, f0x3EB0C6F7A0B5ED8D
  %i.ak = select nsz i1 %i.aj, double %i.ai, double f0x3EB0C6F7A0B5ED8D
  br i1 %i.x, label %.preheader.lr.ph.split, label %._crit_edge38.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !40 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 44
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !73
  %i.av = load i32, ptr %i.as, align 4, !tbaa !73
  %i.aw = load i32, ptr %i.ar, align 8, !tbaa !73
  %i.ax = sext i32 %i.au to i64                   ; 5 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.ba = getelementptr inbounds [20 x i8], ptr %i.at, i64 %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !47
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ax
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !44
  %i.bf = sext i32 %i.av to i64                   ; 5 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !43
  %i.bi = getelementptr inbounds [20 x i8], ptr %i.at, i64 %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !47
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bf
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !44
  %i.bn = sext i32 %i.aw to i64                   ; 5 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.bq = getelementptr inbounds [20 x i8], ptr %i.at, i64 %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !47
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bn
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !44
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ax
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ax
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !44
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bf
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !43
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.bf
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !44
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bn
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !43
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.bn
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !44
  %i.ch = load double, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %i.ci = fcmp nsz ogt double %i.ch, 0.000000e+00
  %i.cj = load i32, ptr %i.al, align 8, !tbaa !23
  %i.ck = sext i32 %i.bs to i64
  %i.cl = sext i32 %i.bk to i64
  %i.cm = sext i32 %i.bc to i64
  %sext = shl i64 %i.j, 32
  %i.cn = ashr exact i64 %sext, 32
  %i.co = sext i32 %i.cg to i64
  %i.cp = sext i32 %i.cc to i64
  %i.cq = sext i32 %i.by to i64
  %i.cr = sext i32 %i.bu to i64
  %i.cs = sext i32 %i.bm to i64
  %i.ct = sext i32 %i.be to i64
  %sext51 = shl i64 %i.o, 32
  %wide.trip.count43 = ashr exact i64 %sext51, 32
  %wide.trip.count = zext nneg i32 %i.w to i64
  %i.cu = insertelement <2 x double> poison, double %i.ak, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv40 = phi i64 [ %i.cn, %.preheader.lr.ph.split ], [ %indvars.iv.next41, %._crit_edge ] ; 7 uses
  %i.cv = mul nsw i64 %indvars.iv40, %i.ct
  %invariant.gep = getelementptr i8, ptr %i.az, i64 %i.cv
  %i.cw = mul nsw i64 %indvars.iv40, %i.cs
  %invariant.gep27 = getelementptr i8, ptr %i.bh, i64 %i.cw
  %i.cx = mul nsw i64 %indvars.iv40, %i.cr
  %invariant.gep29 = getelementptr i8, ptr %i.bp, i64 %i.cx
  %i.cy = mul nsw i64 %indvars.iv40, %i.cq
  %invariant.gep31 = getelementptr i8, ptr %i.bw, i64 %i.cy
  %i.cz = mul nsw i64 %indvars.iv40, %i.cp
  %invariant.gep33 = getelementptr i8, ptr %i.ca, i64 %i.cz
  %i.da = mul nsw i64 %indvars.iv40, %i.co
  %invariant.gep35 = getelementptr i8, ptr %i.ce, i64 %i.da
  br label %bb.b

._crit_edge38.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %tonemap.exit
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge38.split, label %.preheader, !llvm.loop !71

bb.b:                                             ; preds = %.preheader, %tonemap.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %tonemap.exit ] ; 4 uses
  %i.db = mul nsw i64 %indvars.iv, %i.cm          ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.db ; 2 uses
  %i.dc = mul nsw i64 %indvars.iv, %i.cl          ; 2 uses
  %gep28 = getelementptr i8, ptr %invariant.gep27, i64 %i.dc ; 3 uses
  %i.dd = mul nsw i64 %indvars.iv, %i.ck          ; 2 uses
  %gep30 = getelementptr i8, ptr %invariant.gep29, i64 %i.dd ; 2 uses
  %gep32 = getelementptr i8, ptr %invariant.gep31, i64 %i.db ; 4 uses
  %gep34 = getelementptr i8, ptr %invariant.gep33, i64 %i.dc ; 5 uses
  %gep36 = getelementptr i8, ptr %invariant.gep35, i64 %i.dd ; 4 uses
  %i.de = load float, ptr %gep, align 4, !tbaa !75
  store float %i.de, ptr %gep32, align 4, !tbaa !75
  %i.df = load float, ptr %gep28, align 4, !tbaa !75
  store float %i.df, ptr %gep34, align 4, !tbaa !75
  %i.dg = load float, ptr %gep30, align 4, !tbaa !75 ; 3 uses
  store float %i.dg, ptr %gep36, align 4, !tbaa !75
  br i1 %i.ci, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.dh = load ptr, ptr %i.y, align 8, !tbaa !34  ; 2 uses
  %i.di = load float, ptr %gep, align 4, !tbaa !75 ; 2 uses
  %i.dj = fpext nsz float %i.di to double
  %i.dk = load <2 x i64>, ptr %i.dh, align 4      ; 2 uses
  %i.dl = trunc <2 x i64> %i.dk to <2 x i32>
  %i.dm = lshr <2 x i64> %i.dk, splat (i64 32)
  %i.dn = trunc nuw <2 x i64> %i.dm to <2 x i32>
  %i.do = sitofp nsz <2 x i32> %i.dl to <2 x double>
  %i.dp = sitofp nsz <2 x i32> %i.dn to <2 x double>
  %i.dq = fdiv nsz <2 x double> %i.do, %i.dp      ; 2 uses
  %i.dr = load float, ptr %gep28, align 4, !tbaa !75
  %i.ds = fpext nsz float %i.dr to double
  %i.dt = extractelement <2 x double> %i.dq, i64 1
  %i.du = fmul nsz double %i.dt, %i.ds
  %i.dv = extractelement <2 x double> %i.dq, i64 0
  %i.dw = tail call nsz double @llvm.fmuladd.f64(double %i.dv, double %i.dj, double %i.du)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dy = load i64, ptr %i.dx, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc.i153.i = trunc i64 %i.dy to i32
  %.sroa.2.0.extract.shift.i154.i = lshr i64 %i.dy, 32
  %.sroa.2.0.extract.trunc.i155.i = trunc nuw i64 %.sroa.2.0.extract.shift.i154.i to i32
  %i.dz = sitofp nsz i32 %.sroa.0.0.extract.trunc.i153.i to double
  %i.ea = sitofp nsz i32 %.sroa.2.0.extract.trunc.i155.i to double
  %i.eb = fdiv nsz double %i.dz, %i.ea
  %i.ec = fpext nsz float %i.dg to double
  %i.ed = tail call nsz double @llvm.fmuladd.f64(double %i.eb, double %i.ec, double %i.dw)
  %i.ee = fptrunc nsz double %i.ed to float       ; 2 uses
  %i.ef = fpext nsz float %i.ee to double         ; 3 uses
  %i.eg = fsub nsz double %i.ef, %i.ch            ; 2 uses
  %i.eh = fcmp nsz ogt double %i.eg, f0x3EB0C6F7A0B5ED8D
  %i.ei = select nsz i1 %i.eh, double %i.eg, double f0x3EB0C6F7A0B5ED8D
  %i.ej = fcmp nsz ogt double %i.ef, f0x3EB0C6F7A0B5ED8D
  %i.ek = select nsz i1 %i.ej, double %i.ef, double f0x3EB0C6F7A0B5ED8D
  %i.el = fdiv nsz double %i.ei, %i.ek
  %i.em = fptrunc nsz double %i.el to float       ; 2 uses
  %i.en = fsub nsz float 1.000000e+00, %i.em      ; 3 uses
  %i.eo = fmul nsz float %i.ee, %i.em             ; 3 uses
  %i.ep = tail call nsz float @llvm.fmuladd.f32(float %i.di, float %i.en, float %i.eo)
  store float %i.ep, ptr %gep32, align 4, !tbaa !75
  %i.eq = load float, ptr %gep28, align 4, !tbaa !75
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.en, float %i.eo)
  store float %i.er, ptr %gep34, align 4, !tbaa !75
  %i.es = load float, ptr %gep30, align 4, !tbaa !75
  %i.et = tail call nsz float @llvm.fmuladd.f32(float %i.es, float %i.en, float %i.eo) ; 2 uses
  store float %i.et, ptr %gep36, align 4, !tbaa !75
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.eu = phi float [ %i.et, %bb.c ], [ %i.dg, %bb.b ] ; 3 uses
  %i.ev = load float, ptr %gep32, align 4, !tbaa !75 ; 3 uses
  %i.ew = load float, ptr %gep34, align 4, !tbaa !75 ; 2 uses
  %i.ex = fcmp nsz ogt float %i.ev, %i.ew
  %..i = select nsz i1 %i.ex, float %i.ev, float %i.ew ; 3 uses
  %i.ey = fcmp nsz ogt float %..i, %i.eu
  br i1 %i.ey, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.ez = fpext nsz float %..i to double
  %i.fa = fcmp nsz ogt double %i.ez, f0x3EB0C6F7A0B5ED8D
  br i1 %i.fa, label %bb.f, label %bb.g

.thread.i:                                        ; preds = %bb.d
  %i.fb = fpext nsz float %i.eu to double
  %i.fc = fcmp nsz ogt double %i.fb, f0x3EB0C6F7A0B5ED8D
  br i1 %i.fc, label %.thread156.i, label %bb.g

.thread156.i:                                     ; preds = %.thread.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread156.i, %.thread.i, %bb.e
  %i.fd = phi float [ f0x358637BD, %bb.e ], [ %..i, %bb.f ], [ %i.eu, %.thread156.i ], [ f0x358637BD, %.thread.i ] ; 11 uses
  switch i32 %i.cj, label %tonemap.exit [
    i32 6, label %bb.p
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.m
    i32 5, label %bb.n
    i32 4, label %bb.o
  ]

bb.h:                                             ; preds = %bb.g
  %i.fe = fpext nsz float %i.fd to double
  %i.ff = load double, ptr %i.z, align 8, !tbaa !24
  %i.fg = fmul nsz double %i.ff, %i.fe
  %i.fh = fdiv nsz double %i.fg, %i.r
  %i.fi = fptrunc nsz double %i.fh to float
  br label %tonemap.exit

bb.i:                                             ; preds = %bb.g
  %i.fj = fcmp nsz ogt float %i.fd, 5.000000e-02
  %i.fk = fpext nsz float %i.fd to double         ; 2 uses
  %i.fl = load double, ptr %i.z, align 8, !tbaa !24
  %i.fm = fdiv nsz double 1.000000e+00, %i.fl     ; 2 uses
  br i1 %i.fj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fn = fdiv nsz double %i.fk, %i.r
  %i.fo = tail call nsz double @llvm.pow.f64(double %i.fn, double %i.fm)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.fp = tail call nsz double @llvm.pow.f64(double %i.ah, double %i.fm)
  %i.fq = fmul nsz double %i.fp, %i.fk
  %i.fr = fdiv nsz double %i.fq, f0x3FA99999A0000000
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fs = phi nsz double [ %i.fo, %bb.j ], [ %i.fr, %bb.k ]
  %i.ft = fptrunc nsz double %i.fs to float
  br label %tonemap.exit

bb.m:                                             ; preds = %bb.g
  %i.fu = fpext nsz float %i.fd to double
  %i.fv = load double, ptr %i.z, align 8, !tbaa !24
  %i.fw = fmul nsz double %i.fv, %i.fu
  %i.fx = fptrunc nsz double %i.fw to float       ; 2 uses
  %i.fy = fcmp nsz ogt float %i.fx, 0.000000e+00
  %i.fz = select nsz i1 %i.fy, float %i.fx, float 0.000000e+00 ; 2 uses
  %i.ga = fcmp nsz ogt float %i.fz, 1.000000e+00
  %..i.i = select nsz i1 %i.ga, float 1.000000e+00, float %i.fz
  br label %tonemap.exit

bb.n:                                             ; preds = %bb.g
  %i.gb = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> splat (float 1.500000e-01), <2 x float> <float 5.000000e-02, float 5.000000e-01>)
  %i.ge = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.gd, <2 x float> <float 4.000000e-03, float f0x3D75C290>) ; 2 uses
  %i.gf = extractelement <2 x float> %i.ge, i64 0
  %i.gg = extractelement <2 x float> %i.ge, i64 1
  %i.gh = fdiv nsz float %i.gf, %i.gg
  %i.gi = fadd nsz float %i.gh, f0xBD888888
  %i.gj = fdiv nsz float %i.gi, %i.ag
  br label %tonemap.exit

bb.o:                                             ; preds = %bb.g
  %i.gk = fpext nsz float %i.fd to double         ; 2 uses
  %i.gl = load double, ptr %i.z, align 8, !tbaa !24 ; 2 uses
  %i.gm = fadd nsz double %i.gl, %i.gk
  %i.gn = fdiv nsz double %i.gk, %i.gm
  %i.go = fadd nsz double %i.r, %i.gl
  %i.gp = fmul nsz double %i.go, %i.gn
  %i.gq = fdiv nsz double %i.gp, %i.r
  %i.gr = fptrunc nsz double %i.gq to float
  br label %tonemap.exit

bb.p:                                             ; preds = %bb.g
  %i.gs = load double, ptr %i.z, align 8, !tbaa !24
  %i.gt = fptrunc nsz double %i.gs to float       ; 11 uses
  %i.gu = fcmp nsz ugt float %i.fd, %i.gt
  br i1 %i.gu, label %bb.q, label %tonemap.exit

bb.q:                                             ; preds = %bb.p
  %i.gv = fneg nsz float %i.gt
  %i.gw = fmul nsz float %i.gt, 2.000000e+00      ; 2 uses
  %i.gx = fneg nsz float %i.gw
  %i.gy = tail call nsz float @llvm.fmuladd.f32(float %i.gt, float %i.gt, float %i.gx)
  %i.gz = fpext nsz float %i.gy to double
  %i.ha = fadd nsz double %i.r, %i.gz
  %i.hb = fpext nsz float %i.gw to double
  %i.hc = fneg nsz double %i.hb
  %i.hd = fmul nsz float %i.gt, %i.gv
  %i.he = fpext nsz float %i.hd to double
  %i.hf = fmul nsz double %i.ai, %i.he
  %i.hg = fmul nsz float %i.gt, %i.gt
  %i.hh = fpext nsz float %i.hg to double
  %i.hi = tail call nsz double @llvm.fmuladd.f64(double %i.hc, double %i.r, double %i.hh)
  %i.hj = fadd nsz double %i.r, %i.hi
  %i.hk = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hl = insertelement <2 x double> %i.hk, double %i.hj, i64 1
  %i.hm = insertelement <2 x double> %i.cu, double %i.ha, i64 0
  %i.hn = fdiv nsz <2 x double> %i.hl, %i.hm
  %i.ho = fptrunc nsz <2 x double> %i.hn to <2 x float> ; 3 uses
  %i.hp = extractelement <2 x float> %i.ho, i64 1 ; 4 uses
  %i.hq = fmul nsz float %i.hp, 2.000000e+00
  %i.hr = fmul nsz float %i.hq, %i.gt
  %i.hs = tail call nsz float @llvm.fmuladd.f32(float %i.hp, float %i.hp, float %i.hr)
  %i.ht = tail call nsz float @llvm.fmuladd.f32(float %i.gt, float %i.gt, float %i.hs)
  %i.hu = extractelement <2 x float> %i.ho, i64 0
  %i.hv = fsub nsz float %i.hp, %i.hu
  %i.hw = fdiv nsz float %i.ht, %i.hv
  %i.hx = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = fadd nsz <2 x float> %i.hy, %i.ho       ; 2 uses
  %i.ia = extractelement <2 x float> %i.hz, i64 0
  %i.ib = fmul nsz float %i.ia, %i.hw
  %i.ic = extractelement <2 x float> %i.hz, i64 1
  %i.id = fdiv nsz float %i.ib, %i.ic
  br label %tonemap.exit

tonemap.exit:                                     ; preds = %bb.g, %bb.h, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i = phi nsz float [ %i.fd, %bb.g ], [ %i.gr, %bb.o ], [ %i.fi, %bb.h ], [ %i.ft, %bb.l ], [ %..i.i, %bb.m ], [ %i.gj, %bb.n ], [ %i.id, %bb.q ], [ %i.fd, %bb.p ]
  %i.ie = fdiv nsz float %.0.i, %i.fd             ; 3 uses
  %i.if = fmul nsz float %i.ev, %i.ie
  store float %i.if, ptr %gep32, align 4, !tbaa !75
  %i.ig = load float, ptr %gep34, align 4, !tbaa !75
  %i.ih = fmul nsz float %i.ie, %i.ig
  store float %i.ih, ptr %gep34, align 4, !tbaa !75
  %i.ii = load float, ptr %gep36, align 4, !tbaa !75
  %i.ij = fmul nsz float %i.ie, %i.ii
  store float %i.ij, ptr %gep36, align 4, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !72
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #5

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_update_hdr_metadata(ptr noundef, double noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #6

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!20 = !{!"double", !5, i64 0}
!21 = !{!"p1 _ZTS18AVLumaCoefficients", !9, i64 0}
!22 = !{!"TonemapContext", !10, i64 0, !6, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !21, i64 40}
!23 = !{!22, !6, i64 8}
!24 = !{!22, !20, i64 16}
!25 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!26 = !{!"AVRational", !6, i64 0, !6, i64 4}
!27 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!28 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!29 = !{!"p2 omnipotent char", !14, i64 0}
!30 = !{!"long", !5, i64 0}
!31 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!32 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!33 = !{!"AVFrame", !5, i64 0, !5, i64 64, !29, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !26, i64 124, !30, i64 136, !30, i64 144, !26, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !31, i64 248, !6, i64 256, !28, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !30, i64 304, !32, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !30, i64 344, !30, i64 352, !30, i64 360, !30, i64 368, !9, i64 376, !27, i64 384, !30, i64 408, !6, i64 416}
!34 = !{!22, !21, i64 40}
!35 = !{!22, !20, i64 24}
!36 = !{!"p1 _ZTS18AVPixFmtDescriptor", !9, i64 0}
!37 = !{!"ThreadData", !25, i64 0, !25, i64 8, !36, i64 16, !20, i64 24}
!38 = !{!37, !25, i64 8}
!39 = !{!37, !25, i64 0}
!40 = !{!37, !36, i64 16}
!41 = !{!37, !20, i64 24}
!42 = !{!33, !6, i64 108}
!43 = !{!12, !12, i64 0}
!44 = !{!6, !6, i64 0}
!45 = !{!33, !6, i64 104}
!46 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!47 = !{!46, !6, i64 4}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48, !70}
!51 = !{!25, !25, i64 0}
!52 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!53 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!54 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!55 = !{!"AVFilterFormatsConfig", !53, i64 0, !53, i64 8, !54, i64 16, !53, i64 24, !53, i64 32, !53, i64 40}
!56 = !{!"AVFilterLink", !52, i64 0, !13, i64 8, !52, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !26, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !27, i64 72, !26, i64 96, !28, i64 104, !6, i64 112, !6, i64 116, !55, i64 120, !55, i64 168}
!57 = !{!56, !52, i64 16}
!58 = !{!18, !15, i64 56}
!59 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!56, !6, i64 36}
!62 = !{!22, !20, i64 32}
!63 = !{!56, !6, i64 40}
!64 = !{!56, !6, i64 44}
!65 = !{!33, !6, i64 288}
!66 = !{!33, !6, i64 292}
!67 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !30, i64 16, !5, i64 24, !12, i64 104}
!68 = !{!67, !30, i64 16}
!69 = !{!5, !5, i64 0}
!70 = !{!"llvm.loop.unswitch.partial.disable"}
!71 = distinct !{!71, !48}
!72 = distinct !{!72, !48}
!73 = !{!46, !6, i64 0}
!74 = !{!"float", !5, i64 0}
!75 = !{!74, !74, i64 0}
end_hunk_0
