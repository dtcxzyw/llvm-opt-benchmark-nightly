Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_waveform?download=true
inline.NumInlined: 250
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@yflat16_row:bb.a
  %i.ap = mul nsw i64 %i.an, %i.ao
  %i.aq = sext i32 %3 to i64                      ; 2 uses
  %i.ar = sdiv i64 %i.ap, %i.aq
  %i.as = trunc i64 %i.ar to i32                  ; 6 uses
  %i.at = add nsw i32 %2, 1
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.an, %i.au
  %i.aw = sdiv i64 %i.av, %i.aq
  %i.ax = trunc i64 %i.aw to i32                  ; 2 uses
  %i.ay = icmp slt i32 %i.as, %i.ax
  br i1 %i.ay, label %.preheader.lr.ph, label %._crit_edge204.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !108 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = getelementptr inbounds [20 x i8], ptr %i.bd, i64 %i.h
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !70 ; 3 uses
  %i.bg = add nsw i32 %i.bf, 2
  %i.bh = srem i32 %i.bg, %i.j
  %i.bi = sext i32 %i.bh to i64                   ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !44
  %i.bm = sdiv i32 %i.bl, 2                       ; 2 uses
  %i.bn = add nsw i32 %i.bf, 1
  %i.bo = srem i32 %i.bn, %i.j
  %i.bp = sext i32 %i.bo to i64                   ; 4 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !44
  %i.bs = sdiv i32 %i.br, 2                       ; 2 uses
  %i.bt = sext i32 %i.bf to i64                   ; 4 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !44
  %i.bw = sdiv i32 %i.bv, 2                       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bi
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !44
  %i.ca = sdiv i32 %i.bz, 2                       ; 2 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bp
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !44
  %i.cd = sdiv i32 %i.cc, 2                       ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bt
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !44
  %i.cg = sdiv i32 %i.cf, 2                       ; 2 uses
  %i.ch = icmp sgt i32 %i.am, 0
  %.not = icmp ne i32 %i.z, 0
  %i.ci = sext i32 %i.cg to i64
  %.not184 = icmp ne i32 %i.ab, 0
  %i.cj = sext i32 %i.cd to i64
  %.not186 = icmp ne i32 %i.ad, 0
  %i.ck = sext i32 %i.ca to i64
  %i.cl = sext i32 %i.bw to i64
  %i.cm = sext i32 %i.bs to i64
  %i.cn = sext i32 %i.bm to i64
  br i1 %i.ch, label %.preheader.preheader, label %._crit_edge204.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.co = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bt
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !71
  %i.cq = ashr i32 %i.as, %i.z
  %i.cr = mul nsw i32 %i.cq, %i.cg
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.cs
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bp
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !71
  %i.cw = ashr i32 %i.as, %i.ab
  %i.cx = mul nsw i32 %i.cw, %i.cd
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.cv, i64 %i.cy
  %i.da = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bi
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !71
  %i.dc = ashr i32 %i.as, %i.ad
  %i.dd = mul nsw i32 %i.dc, %i.ca
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [2 x i8], ptr %i.db, i64 %i.de
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bt
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !71
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !110
  %i.dk = add nsw i32 %i.dj, %i.as                ; 3 uses
  %i.dl = mul nsw i32 %i.dk, %i.bw
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !111
  %i.dq = sext i32 %i.dp to i64                   ; 3 uses
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.dn, i64 %i.dq
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bp
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !71
  %i.du = mul nsw i32 %i.dk, %i.bs
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.dv
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.dw, i64 %i.dq
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bi
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !71
  %i.ea = mul nsw i32 %i.dk, %i.bm
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [2 x i8], ptr %i.dz, i64 %i.eb
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.dq
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0203 = phi ptr [ %i.ft, %._crit_edge ], [ %i.ed, %.preheader.preheader ] ; 2 uses
  %.0166202 = phi ptr [ %i.fs, %._crit_edge ], [ %i.dx, %.preheader.preheader ] ; 2 uses
  %.0167201 = phi ptr [ %i.fr, %._crit_edge ], [ %i.dr, %.preheader.preheader ] ; 2 uses
  %.0168200 = phi ptr [ %.1, %._crit_edge ], [ %i.df, %.preheader.preheader ] ; 2 uses
  %.0169199 = phi ptr [ %.1170, %._crit_edge ], [ %i.cz, %.preheader.preheader ] ; 2 uses
  %.0171198 = phi ptr [ %.1172, %._crit_edge ], [ %i.ct, %.preheader.preheader ] ; 2 uses
  %.0173197 = phi i32 [ %i.fu, %._crit_edge ], [ %i.as, %.preheader.preheader ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.0174196 = phi i32 [ 0, %.preheader ], [ %i.fn, %bb.b ] ; 4 uses
  %i.ee = lshr i32 %.0174196, %i.m
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.0171198, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !72
  %i.ei = zext i16 %i.eh to i32
  %. = tail call i32 @llvm.smin.i32(i32 %i.ei, i32 %i.ag) ; 3 uses
  %i.ej = add nsw i32 %., %i.ai
  %i.ek = lshr i32 %.0174196, %i.r
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %.0169199, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2, !tbaa !72
  %i.eo = zext i16 %i.en to i32
  %i.ep = tail call i32 @llvm.smin.i32(i32 %i.eo, i32 %i.ag)
  %i.eq = lshr i32 %.0174196, %i.w
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %.0168200, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !72
  %i.eu = zext i16 %i.et to i32
  %i.ev = tail call i32 @llvm.smin.i32(i32 %i.eu, i32 %i.ag)
  %i.ew = sext i32 %i.ej to i64
  %i.ex = getelementptr inbounds [2 x i8], ptr %.0167201, i64 %i.ew ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !72
  %i.ez = zext i16 %i.ey to i32                   ; 2 uses
  %.not.i = icmp slt i32 %i.ah, %i.ez
  %i.fa = add nsw i32 %i.g, %i.ez
  %storemerge.in.i = select i1 %.not.i, i32 %i.ag, i32 %i.fa
  %storemerge.i = trunc i32 %storemerge.in.i to i16
  store i16 %storemerge.i, ptr %i.ex, align 2, !tbaa !72
  %i.fb = add i32 %i.ep, %.
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [2 x i8], ptr %.0166202, i64 %i.fc ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !72
  %i.ff = zext i16 %i.fe to i32
  %i.fg = sub nsw i32 %i.ff, %i.g
  %storemerge4.i = tail call i32 @llvm.smax.i32(i32 %i.fg, i32 0)
  %storemerge.i193 = trunc i32 %storemerge4.i to i16
  store i16 %storemerge.i193, ptr %i.fd, align 2, !tbaa !72
  %i.fh = add i32 %i.ev, %.
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [2 x i8], ptr %.0203, i64 %i.fi ; 2 uses
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !72
  %i.fl = zext i16 %i.fk to i32
  %i.fm = sub nsw i32 %i.fl, %i.g
  %storemerge4.i194 = tail call i32 @llvm.smax.i32(i32 %i.fm, i32 0)
  %storemerge.i195 = trunc i32 %storemerge4.i194 to i16
  store i16 %storemerge.i195, ptr %i.fj, align 2, !tbaa !72
  %i.fn = add nuw nsw i32 %.0174196, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.fn, %i.am
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !260

._crit_edge:                                      ; preds = %bb.b
  %i.fo = and i32 %.0173197, %i.z
  %.not183 = icmp eq i32 %i.fo, 0
  %or.cond = and i1 %.not, %.not183
  %.1172.idx = select i1 %or.cond, i64 0, i64 %i.ci
  %.1172 = getelementptr inbounds [2 x i8], ptr %.0171198, i64 %.1172.idx
  %i.fp = and i32 %.0173197, %i.ab
  %.not185 = icmp eq i32 %i.fp, 0
  %or.cond191 = and i1 %.not184, %.not185
  %.1170.idx = select i1 %or.cond191, i64 0, i64 %i.cj
  %.1170 = getelementptr inbounds [2 x i8], ptr %.0169199, i64 %.1170.idx
  %i.fq = and i32 %.0173197, %i.ad
  %.not187 = icmp eq i32 %i.fq, 0
  %or.cond192 = and i1 %.not186, %.not187
  %.1.idx = select i1 %or.cond192, i64 0, i64 %i.ck
  %.1 = getelementptr inbounds [2 x i8], ptr %.0168200, i64 %.1.idx
  %i.fr = getelementptr inbounds [2 x i8], ptr %.0167201, i64 %i.cl
  %i.fs = getelementptr inbounds [2 x i8], ptr %.0166202, i64 %i.cm
  %i.ft = getelementptr inbounds [2 x i8], ptr %.0203, i64 %i.cn
  %i.fu = add nsw i32 %.0173197, 1                ; 2 uses
  %exitcond205.not = icmp eq i32 %i.fu, %i.ax
  br i1 %exitcond205.not, label %._crit_edge204.split, label %.preheader, !llvm.loop !261

._crit_edge204.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_vline(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sitofp nsz i32 %5 to float               ; 3 uses
  %i.c = mul nsw i32 %6, %2
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %7 = add nsw i32 %1, -1                         ; 2 uses
  %8 = udiv i32 %7, %6                            ; 2 uses
  %9 = add i32 %8, 1                              ; 2 uses
  %10 = icmp ugt i32 %6, %7
  br i1 %10, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %9, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.01112 = phi ptr [ %0, %.lr.ph.new ], [ %i.j, %bb.b ] ; 3 uses
  %.013 = phi i32 [ 0, %.lr.ph.new ], [ %i.k, %bb.b ]
  %11 = load i8, ptr %.01112, align 1, !tbaa !62
  %12 = uitofp i8 %11 to float
  %13 = fmul nsz float %4, %12
  %14 = tail call nsz float @llvm.fmuladd.f32(float %i.b, float %3, float %13)
  %15 = fptoui float %14 to i8
  store i8 %15, ptr %.01112, align 1, !tbaa !62
  %16 = getelementptr inbounds i8, ptr %.01112, i64 %i.d ; 3 uses
  %i.e = load i8, ptr %16, align 1, !tbaa !62
  %i.f = uitofp i8 %i.e to float
  %i.g = fmul nsz float %4, %i.f
  %i.h = tail call nsz float @llvm.fmuladd.f32(float %i.b, float %3, float %i.g)
  %i.i = fptoui float %i.h to i8
  store i8 %i.i, ptr %16, align 1, !tbaa !62
  %i.j = getelementptr inbounds i8, ptr %16, i64 %i.d ; 2 uses
  %i.k = add i32 %.013, 2                         ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %i.k, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !262

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %17 = and i32 %8, 1
  %lcmp.mod.not.not = icmp eq i32 %17, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.01112.epil.init = phi ptr [ %0, %.lr.ph ], [ %i.j, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod14 = trunc i32 %9 to i1
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %18 = load i8, ptr %.01112.epil.init, align 1, !tbaa !62
  %19 = uitofp i8 %18 to float
  %20 = fmul nsz float %4, %19
  %21 = tail call nsz float @llvm.fmuladd.f32(float %i.b, float %3, float %20)
  %22 = fptoui float %21 to i8
  store i8 %22, ptr %.01112.epil.init, align 1, !tbaa !62
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_vline16(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sitofp nsz i32 %5 to float               ; 3 uses
  %i.c = sdiv i32 %2, 2
  %i.d = mul nsw i32 %6, %i.c
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %7 = add nsw i32 %1, -1                         ; 2 uses
  %8 = udiv i32 %7, %6                            ; 2 uses
  %9 = add i32 %8, 1                              ; 2 uses
  %10 = icmp ugt i32 %6, %7
  br i1 %10, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %9, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.01213 = phi ptr [ %0, %.lr.ph.new ], [ %i.k, %bb.b ] ; 3 uses
  %.014 = phi i32 [ 0, %.lr.ph.new ], [ %i.l, %bb.b ]
  %11 = load i16, ptr %.01213, align 2, !tbaa !72
  %12 = uitofp i16 %11 to float
  %13 = fmul nsz float %4, %12
  %14 = tail call nsz float @llvm.fmuladd.f32(float %i.b, float %3, float %13)
  %15 = fptoui float %14 to i16
  store i16 %15, ptr %.01213, align 2, !tbaa !72
  %16 = getelementptr inbounds [2 x i8], ptr %.01213, i64 %i.e ; 3 uses
  %i.f = load i16, ptr %16, align 2, !tbaa !72
  %i.g = uitofp i16 %i.f to float
  %i.h = fmul nsz float %4, %i.g
  %i.i = tail call nsz float @llvm.fmuladd.f32(float %i.b, float %3, float %i.h)
  %i.j = fptoui float %i.i to i16
  store i16 %i.j, ptr %16, align 2, !tbaa !72
  %i.k = getelementptr inbounds [2 x i8], ptr %16, i64 %i.e ; 2 uses
  %i.l = add i32 %.014, 2                         ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %i.l, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !263

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %17 = and i32 %8, 1
  %lcmp.mod.not.not = icmp eq i32 %17, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.01213.epil.init = phi ptr [ %0, %.lr.ph ], [ %i.k, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod15 = trunc i32 %9 to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %18 = load i16, ptr %.01213.epil.init, align 2, !tbaa !72
  %19 = uitofp i16 %18 to float
  %20 = fmul nsz float %4, %19
  %21 = tail call nsz float @llvm.fmuladd.f32(float %i.b, float %3, float %20)
  %22 = fptoui float %21 to i16
  store i16 %22, ptr %.01213.epil.init, align 2, !tbaa !72
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_vtext(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 %3, float noundef %4, float noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) #1 {
bb.a:
  %i.a = tail call ptr @avpriv_cga_font_get() #12 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %indvars.iv54 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next55, %._crit_edge ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv54 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.f = load i8, ptr %6, align 1, !tbaa !62
  %.not4147 = icmp eq i8 %i.f, 0
  br i1 %.not4147, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv54
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv54 ; 8 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv51 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next52, %bb.u ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv51 ; 8 uses
  %i.j = load i8, ptr %i.g, align 1, !tbaa !62
  %i.k = trunc i64 %indvars.iv51 to i32
  %i.l = mul i32 %i.k, 10
  %i.m = add nsw i32 %i.l, %2
  %i.n = uitofp i8 %i.j to float
  %i.o = fmul nsz float %4, %i.n                  ; 8 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.t
  %indvars.iv = phi i64 [ 7, %bb.c ], [ %indvars.iv.next, %bb.t ] ; 11 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.q = load i32, ptr %i.h, align 4, !tbaa !44   ; 2 uses
  %i.r = mul nsw i32 %i.q, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.c ; 2 uses
  %i.v = load i8, ptr %i.i, align 1, !tbaa !62
  %i.w = sext i8 %i.v to i32
  %i.x = shl nsw i32 %i.w, 3
  %i.y = trunc nuw nsw i64 %indvars.iv to i32     ; 8 uses
  %reass.sub = sub i32 %i.x, %i.y
  %i.z = add i32 %reass.sub, 7
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.a, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !62
  %.not43 = icmp sgt i8 %i.ac, -1
  br i1 %.not43, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !62
  %i.af = uitofp i8 %i.ae to float
  %i.ag = tail call nsz float @llvm.fmuladd.f32(float %i.af, float %5, float %i.o)
  %i.ah = fptoui float %i.ag to i8
  store i8 %i.ah, ptr %i.ad, align 1, !tbaa !62
  %.pre = load i32, ptr %i.h, align 4, !tbaa !44
  %.pre57 = load i8, ptr %i.i, align 1, !tbaa !62
  %.pre70 = sext i8 %.pre57 to i32
  %.pre71 = shl nsw i32 %.pre70, 3
  %.pre73 = sub i32 %.pre71, %i.y
  %.pre74 = add i32 %.pre73, 7
  %.pre76 = sext i32 %.pre74 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi77 = phi i64 [ %.pre76, %bb.e ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ai = phi i32 [ %.pre, %bb.e ], [ %i.q, %bb.d ]
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.u, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi77
  %i.am = load i8, ptr %i.al, align 1, !tbaa !62
  %i.an = and i8 %i.am, 64
  %.not43.1 = icmp eq i8 %i.an, 0
  br i1 %.not43.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !62
  %i.aq = uitofp i8 %i.ap to float
  %i.ar = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %5, float %i.o)
  %i.as = fptoui float %i.ar to i8
  store i8 %i.as, ptr %i.ao, align 1, !tbaa !62
  %.pre58 = load i32, ptr %i.h, align 4, !tbaa !44
  %.pre59 = load i8, ptr %i.i, align 1, !tbaa !62
  %.pre78 = sext i32 %.pre58 to i64
  %.pre80 = sext i8 %.pre59 to i32
  %.pre82 = shl nsw i32 %.pre80, 3
  %.pre84 = sub i32 %.pre82, %i.y
  %.pre85 = add i32 %.pre84, 7
  %.pre87 = sext i32 %.pre85 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi88 = phi i64 [ %.pre87, %bb.g ], [ %.pre-phi77, %bb.f ] ; 2 uses
  %.pre-phi79 = phi i64 [ %.pre78, %bb.g ], [ %i.aj, %bb.f ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.ak, i64 %.pre-phi79 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi88
  %i.av = load i8, ptr %i.au, align 1, !tbaa !62
  %i.aw = and i8 %i.av, 32
  %.not43.2 = icmp eq i8 %i.aw, 0
  br i1 %.not43.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !62
  %i.az = uitofp i8 %i.ay to float
  %i.ba = tail call nsz float @llvm.fmuladd.f32(float %i.az, float %5, float %i.o)
  %i.bb = fptoui float %i.ba to i8
  store i8 %i.bb, ptr %i.ax, align 1, !tbaa !62
  %.pre60 = load i32, ptr %i.h, align 4, !tbaa !44
  %.pre61 = load i8, ptr %i.i, align 1, !tbaa !62
  %.pre89 = sext i32 %.pre60 to i64
  %.pre91 = sext i8 %.pre61 to i32
  %.pre93 = shl nsw i32 %.pre91, 3
  %.pre95 = sub i32 %.pre93, %i.y
  %.pre96 = add i32 %.pre95, 7
  %.pre98 = sext i32 %.pre96 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi99 = phi i64 [ %.pre98, %bb.i ], [ %.pre-phi88, %bb.h ] ; 2 uses
  %.pre-phi90 = phi i64 [ %.pre89, %bb.i ], [ %.pre-phi79, %bb.h ] ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.at, i64 %.pre-phi90 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi99
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !62
  %i.bf = and i8 %i.be, 16
  %.not43.3 = icmp eq i8 %i.bf, 0
  br i1 %.not43.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !62
  %i.bi = uitofp i8 %i.bh to float
  %i.bj = tail call nsz float @llvm.fmuladd.f32(float %i.bi, float %5, float %i.o)
  %i.bk = fptoui float %i.bj to i8
  store i8 %i.bk, ptr %i.bg, align 1, !tbaa !62
  %.pre62 = load i32, ptr %i.h, align 4, !tbaa !44
  %.pre63 = load i8, ptr %i.i, align 1, !tbaa !62
  %.pre100 = sext i32 %.pre62 to i64
  %.pre102 = sext i8 %.pre63 to i32
  %.pre104 = shl nsw i32 %.pre102, 3
  %.pre106 = sub i32 %.pre104, %i.y
  %.pre107 = add i32 %.pre106, 7
  %.pre109 = sext i32 %.pre107 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi110 = phi i64 [ %.pre109, %bb.k ], [ %.pre-phi99, %bb.j ] ; 2 uses
  %.pre-phi101 = phi i64 [ %.pre100, %bb.k ], [ %.pre-phi90, %bb.j ] ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bc, i64 %.pre-phi101 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi110
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !62
  %i.bo = and i8 %i.bn, 8
  %.not43.4 = icmp eq i8 %i.bo, 0
  br i1 %.not43.4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !62
  %i.br = uitofp i8 %i.bq to float
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.br, float %5, float %i.o)
  %i.bt = fptoui float %i.bs to i8
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !62
  %.pre64 = load i32, ptr %i.h, align 4, !tbaa !44
  %.pre65 = load i8, ptr %i.i, align 1, !tbaa !62
  %.pre111 = sext i32 %.pre64 to i64
  %.pre113 = sext i8 %.pre65 to i32
  %.pre115 = shl nsw i32 %.pre113, 3
  %.pre117 = sub i32 %.pre115, %i.y
  %.pre118 = add i32 %.pre117, 7
  %.pre120 = sext i32 %.pre118 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi121 = phi i64 [ %.pre120, %bb.m ], [ %.pre-phi110, %bb.l ] ; 2 uses
  %.pre-phi112 = phi i64 [ %.pre111, %bb.m ], [ %.pre-phi101, %bb.l ] ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bl, i64 %.pre-phi112 ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi121
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !62
  %i.bx = and i8 %i.bw, 4
  %.not43.5 = icmp eq i8 %i.bx, 0
  br i1 %.not43.5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !62
  %i.ca = uitofp i8 %i.bz to float
  %i.cb = tail call nsz float @llvm.fmuladd.f32(float %i.ca, float %5, float %i.o)
  %i.cc = fptoui float %i.cb to i8
end_hunk_0
begin_hunk_1_@draw_htext16:bb.a
  %i.w = shl nsw i32 %i.v, 3
  %i.x = add nuw nsw i32 %i.w, %.03746
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.a, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !62
  %.not42 = icmp sgt i8 %i.aa, -1
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.ab = load i16, ptr %.047, align 2, !tbaa !72
  %i.ac = uitofp i16 %i.ab to float
  %i.ad = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float %5, float %i.t)
  %i.ae = fptoui float %i.ad to i16
  store i16 %i.ae, ptr %.047, align 2, !tbaa !72
  %.pre = load i8, ptr %i.o, align 1, !tbaa !62
  %.pre62 = sext i8 %.pre to i32
  %.pre63 = shl nsw i32 %.pre62, 3
  %.pre65 = add nuw nsw i32 %.pre63, %.03746
  %.pre67 = sext i32 %.pre65 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader
  %.pre-phi68 = phi i64 [ %.pre67, %bb.d ], [ %i.y, %.preheader ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi68
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !62
  %i.ah = and i8 %i.ag, 64
  %.not42.1 = icmp eq i8 %i.ah, 0
  br i1 %.not42.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.047, i64 2 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !72
  %i.ak = uitofp i16 %i.aj to float
  %i.al = tail call nsz float @llvm.fmuladd.f32(float %i.ak, float %5, float %i.t)
  %i.am = fptoui float %i.al to i16
  store i16 %i.am, ptr %i.ai, align 2, !tbaa !72
  %.pre56 = load i8, ptr %i.o, align 1, !tbaa !62
  %.pre69 = sext i8 %.pre56 to i32
  %.pre71 = shl nsw i32 %.pre69, 3
  %.pre73 = add nuw nsw i32 %.pre71, %.03746
  %.pre75 = sext i32 %.pre73 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi76 = phi i64 [ %.pre75, %bb.f ], [ %.pre-phi68, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi76
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !62
  %i.ap = and i8 %i.ao, 32
  %.not42.2 = icmp eq i8 %i.ap, 0
  br i1 %.not42.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.047, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !72
  %i.as = uitofp i16 %i.ar to float
  %i.at = tail call nsz float @llvm.fmuladd.f32(float %i.as, float %5, float %i.t)
  %i.au = fptoui float %i.at to i16
  store i16 %i.au, ptr %i.aq, align 2, !tbaa !72
  %.pre57 = load i8, ptr %i.o, align 1, !tbaa !62
  %.pre77 = sext i8 %.pre57 to i32
  %.pre79 = shl nsw i32 %.pre77, 3
  %.pre81 = add nuw nsw i32 %.pre79, %.03746
  %.pre83 = sext i32 %.pre81 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi84 = phi i64 [ %.pre83, %bb.h ], [ %.pre-phi76, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi84
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !62
  %i.ax = and i8 %i.aw, 16
  %.not42.3 = icmp eq i8 %i.ax, 0
  br i1 %.not42.3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.047, i64 6 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !72
  %i.ba = uitofp i16 %i.az to float
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ba, float %5, float %i.t)
  %i.bc = fptoui float %i.bb to i16
  store i16 %i.bc, ptr %i.ay, align 2, !tbaa !72
  %.pre58 = load i8, ptr %i.o, align 1, !tbaa !62
  %.pre85 = sext i8 %.pre58 to i32
  %.pre87 = shl nsw i32 %.pre85, 3
  %.pre89 = add nuw nsw i32 %.pre87, %.03746
  %.pre91 = sext i32 %.pre89 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi92 = phi i64 [ %.pre91, %bb.j ], [ %.pre-phi84, %bb.i ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi92
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !62
  %i.bf = and i8 %i.be, 8
  %.not42.4 = icmp eq i8 %i.bf, 0
  br i1 %.not42.4, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.047, i64 8 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !72
  %i.bi = uitofp i16 %i.bh to float
  %i.bj = tail call nsz float @llvm.fmuladd.f32(float %i.bi, float %5, float %i.t)
  %i.bk = fptoui float %i.bj to i16
  store i16 %i.bk, ptr %i.bg, align 2, !tbaa !72
  %.pre59 = load i8, ptr %i.o, align 1, !tbaa !62
  %.pre93 = sext i8 %.pre59 to i32
  %.pre95 = shl nsw i32 %.pre93, 3
  %.pre97 = add nuw nsw i32 %.pre95, %.03746
  %.pre99 = sext i32 %.pre97 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi100 = phi i64 [ %.pre99, %bb.l ], [ %.pre-phi92, %bb.k ] ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi100
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !62
  %i.bn = and i8 %i.bm, 4
  %.not42.5 = icmp eq i8 %i.bn, 0
  br i1 %.not42.5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.047, i64 10 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !72
  %i.bq = uitofp i16 %i.bp to float
  %i.br = tail call nsz float @llvm.fmuladd.f32(float %i.bq, float %5, float %i.t)
  %i.bs = fptoui float %i.br to i16
  store i16 %i.bs, ptr %i.bo, align 2, !tbaa !72
  %.pre60 = load i8, ptr %i.o, align 1, !tbaa !62
  %.pre101 = sext i8 %.pre60 to i32
  %.pre103 = shl nsw i32 %.pre101, 3
  %.pre105 = add nuw nsw i32 %.pre103, %.03746
  %.pre107 = sext i32 %.pre105 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi108 = phi i64 [ %.pre107, %bb.n ], [ %.pre-phi100, %bb.m ] ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi108
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !62
  %i.bv = and i8 %i.bu, 2
  %.not42.6 = icmp eq i8 %i.bv, 0
  br i1 %.not42.6, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.047, i64 12 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !72
  %i.by = uitofp i16 %i.bx to float
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %5, float %i.t)
  %i.ca = fptoui float %i.bz to i16
  store i16 %i.ca, ptr %i.bw, align 2, !tbaa !72
  %.pre61 = load i8, ptr %i.o, align 1, !tbaa !62
  %.pre109 = sext i8 %.pre61 to i32
  %.pre111 = shl nsw i32 %.pre109, 3
  %.pre113 = add nuw nsw i32 %.pre111, %.03746
  %.pre115 = sext i32 %.pre113 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre-phi116 = phi i64 [ %.pre115, %bb.p ], [ %.pre-phi108, %bb.o ]
  %i.cb = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi116
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !62
  %i.cd = and i8 %i.cc, 1
  %.not42.7 = icmp eq i8 %i.cd, 0
  br i1 %.not42.7, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.047, i64 14 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !72
  %i.cg = uitofp i16 %i.cf to float
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %i.cg, float %5, float %i.t)
  %i.ci = fptoui float %i.ch to i16
  store i16 %i.ci, ptr %i.ce, align 2, !tbaa !72
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cj = getelementptr [2 x i8], ptr %.047, i64 %i.n
  %i.ck = add nuw nsw i32 %.03746, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ck, 8
  br i1 %exitcond.not, label %bb.t, label %.preheader, !llvm.loop !278

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv.next
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !62
  %.not40 = icmp eq i8 %i.cm, 0
  br i1 %.not40, label %._crit_edge, label %bb.c, !llvm.loop !279

._crit_edge:                                      ; preds = %bb.t, %.preheader43
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next53, 4
  br i1 %exitcond55.not, label %.critedge, label %bb.b, !llvm.loop !280

.critedge:                                        ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @iblend_vline(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = mul nsw i32 %6, %2
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %7 = add nsw i32 %1, -1                         ; 2 uses
  %8 = udiv i32 %7, %6                            ; 2 uses
  %9 = add i32 %8, 1                              ; 2 uses
  %10 = icmp ugt i32 %6, %7
  br i1 %10, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %9, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.01213 = phi ptr [ %0, %.lr.ph.new ], [ %i.l, %bb.b ] ; 3 uses
  %.014 = phi i32 [ 0, %.lr.ph.new ], [ %i.m, %bb.b ]
  %11 = load i8, ptr %.01213, align 1, !tbaa !62  ; 2 uses
  %12 = zext i8 %11 to i32
  %13 = sub nsw i32 %5, %12
  %14 = sitofp nsz i32 %13 to float
  %15 = uitofp i8 %11 to float
  %16 = fmul nsz float %4, %15
  %17 = tail call nsz float @llvm.fmuladd.f32(float %14, float %3, float %16)
  %18 = fptoui float %17 to i8
  store i8 %18, ptr %.01213, align 1, !tbaa !62
  %19 = getelementptr inbounds i8, ptr %.01213, i64 %i.c ; 3 uses
  %i.d = load i8, ptr %19, align 1, !tbaa !62     ; 2 uses
  %i.e = zext i8 %i.d to i32
  %i.f = sub nsw i32 %5, %i.e
  %i.g = sitofp nsz i32 %i.f to float
  %i.h = uitofp i8 %i.d to float
  %i.i = fmul nsz float %4, %i.h
  %i.j = tail call nsz float @llvm.fmuladd.f32(float %i.g, float %3, float %i.i)
  %i.k = fptoui float %i.j to i8
  store i8 %i.k, ptr %19, align 1, !tbaa !62
  %i.l = getelementptr inbounds i8, ptr %19, i64 %i.c ; 2 uses
  %i.m = add i32 %.014, 2                         ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %i.m, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !281

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %20 = and i32 %8, 1
  %lcmp.mod.not.not = icmp eq i32 %20, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.01213.epil.init = phi ptr [ %0, %.lr.ph ], [ %i.l, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod15 = trunc i32 %9 to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %21 = load i8, ptr %.01213.epil.init, align 1, !tbaa !62 ; 2 uses
  %22 = zext i8 %21 to i32
  %23 = sub nsw i32 %5, %22
  %24 = sitofp nsz i32 %23 to float
  %25 = uitofp i8 %21 to float
  %26 = fmul nsz float %4, %25
  %27 = tail call nsz float @llvm.fmuladd.f32(float %24, float %3, float %26)
  %28 = fptoui float %27 to i8
  store i8 %28, ptr %.01213.epil.init, align 1, !tbaa !62
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @iblend_vline16(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sdiv i32 %2, 2
  %i.c = mul nsw i32 %6, %i.b
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %7 = add nsw i32 %1, -1                         ; 2 uses
  %8 = udiv i32 %7, %6                            ; 2 uses
  %9 = add i32 %8, 1                              ; 2 uses
  %10 = icmp ugt i32 %6, %7
  br i1 %10, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %9, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.01314 = phi ptr [ %0, %.lr.ph.new ], [ %i.m, %bb.b ] ; 3 uses
  %.015 = phi i32 [ 0, %.lr.ph.new ], [ %i.n, %bb.b ]
  %11 = load i16, ptr %.01314, align 2, !tbaa !72 ; 2 uses
  %12 = zext i16 %11 to i32
  %13 = sub nsw i32 %5, %12
  %14 = sitofp nsz i32 %13 to float
  %15 = uitofp i16 %11 to float
  %16 = fmul nsz float %4, %15
  %17 = tail call nsz float @llvm.fmuladd.f32(float %14, float %3, float %16)
  %18 = fptoui float %17 to i16
  store i16 %18, ptr %.01314, align 2, !tbaa !72
  %19 = getelementptr inbounds [2 x i8], ptr %.01314, i64 %i.d ; 3 uses
  %i.e = load i16, ptr %19, align 2, !tbaa !72    ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = sub nsw i32 %5, %i.f
  %i.h = sitofp nsz i32 %i.g to float
  %i.i = uitofp i16 %i.e to float
  %i.j = fmul nsz float %4, %i.i
  %i.k = tail call nsz float @llvm.fmuladd.f32(float %i.h, float %3, float %i.j)
  %i.l = fptoui float %i.k to i16
  store i16 %i.l, ptr %19, align 2, !tbaa !72
  %i.m = getelementptr inbounds [2 x i8], ptr %19, i64 %i.d ; 2 uses
  %i.n = add i32 %.015, 2                         ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %i.n, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !282

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %20 = and i32 %8, 1
  %lcmp.mod.not.not = icmp eq i32 %20, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.01314.epil.init = phi ptr [ %0, %.lr.ph ], [ %i.m, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod16 = trunc i32 %9 to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %21 = load i16, ptr %.01314.epil.init, align 2, !tbaa !72 ; 2 uses
  %22 = zext i16 %21 to i32
  %23 = sub nsw i32 %5, %22
  %24 = sitofp nsz i32 %23 to float
  %25 = uitofp i16 %21 to float
  %26 = fmul nsz float %4, %25
  %27 = tail call nsz float @llvm.fmuladd.f32(float %24, float %3, float %26)
  %28 = fptoui float %27 to i16
  store i16 %28, ptr %.01314.epil.init, align 2, !tbaa !72
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @idraw_vtext(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 %3, float noundef %4, float noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) #1 {
bb.a:
  %i.a = tail call ptr @avpriv_cga_font_get() #12 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %indvars.iv56 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next57, %._crit_edge ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.f = load i8, ptr %6, align 1, !tbaa !62
  %.not4349 = icmp eq i8 %i.f, 0
  br i1 %.not4349, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv56
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv56 ; 8 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv53 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next54, %bb.u ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv53 ; 8 uses
  %i.j = load i8, ptr %i.g, align 1, !tbaa !62
  %i.k = zext i8 %i.j to i32                      ; 8 uses
  %i.l = trunc i64 %indvars.iv53 to i32
  %i.m = mul i32 %i.l, 10
  %i.n = add nsw i32 %i.m, %2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.t
  %indvars.iv = phi i64 [ 7, %bb.c ], [ %indvars.iv.next, %bb.t ] ; 11 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.p = load i32, ptr %i.h, align 4, !tbaa !44   ; 2 uses
  %i.q = mul nsw i32 %i.p, %i.n
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.c ; 2 uses
  %i.u = load i8, ptr %i.i, align 1, !tbaa !62
  %i.v = sext i8 %i.u to i32
  %i.w = shl nsw i32 %i.v, 3
  %i.x = trunc nuw nsw i64 %indvars.iv to i32     ; 8 uses
  %reass.sub = sub i32 %i.w, %i.x
  %i.y = add i32 %reass.sub, 7
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !62
  %.not45 = icmp sgt i8 %i.ab, -1
  br i1 %.not45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !62  ; 2 uses
  %i.ae = zext i8 %i.ad to i32
  %i.af = uitofp i8 %i.ad to float
  %i.ag = sub nsw i32 %i.k, %i.ae
  %i.ah = sitofp nsz i32 %i.ag to float
  %i.ai = fmul nsz float %4, %i.ah
  %i.aj = tail call nsz float @llvm.fmuladd.f32(float %i.af, float %5, float %i.ai)
  %i.ak = fptoui float %i.aj to i8
  store i8 %i.ak, ptr %i.ac, align 1, !tbaa !62
  %.pre = load i32, ptr %i.h, align 4, !tbaa !44
  %.pre59 = load i8, ptr %i.i, align 1, !tbaa !62
  %.pre72 = sext i8 %.pre59 to i32
  %.pre73 = shl nsw i32 %.pre72, 3
  %.pre75 = sub i32 %.pre73, %i.x
  %.pre76 = add i32 %.pre75, 7
  %.pre78 = sext i32 %.pre76 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi79 = phi i64 [ %.pre78, %bb.e ], [ %i.z, %bb.d ] ; 2 uses
  %i.al = phi i32 [ %.pre, %bb.e ], [ %i.p, %bb.d ]
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.t, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi79
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !62
  %i.aq = and i8 %i.ap, 64
  %.not45.1 = icmp eq i8 %i.aq, 0
  br i1 %.not45.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !62  ; 2 uses
  %i.at = zext i8 %i.as to i32
  %i.au = uitofp i8 %i.as to float
  %i.av = sub nsw i32 %i.k, %i.at
  %i.aw = sitofp nsz i32 %i.av to float
  %i.ax = fmul nsz float %4, %i.aw
  %i.ay = tail call nsz float @llvm.fmuladd.f32(float %i.au, float %5, float %i.ax)
  %i.az = fptoui float %i.ay to i8
  store i8 %i.az, ptr %i.ar, align 1, !tbaa !62
  %.pre60 = load i32, ptr %i.h, align 4, !tbaa !44
  %.pre61 = load i8, ptr %i.i, align 1, !tbaa !62
  %.pre80 = sext i32 %.pre60 to i64
  %.pre82 = sext i8 %.pre61 to i32
  %.pre84 = shl nsw i32 %.pre82, 3
  %.pre86 = sub i32 %.pre84, %i.x
  %.pre87 = add i32 %.pre86, 7
  %.pre89 = sext i32 %.pre87 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi90 = phi i64 [ %.pre89, %bb.g ], [ %.pre-phi79, %bb.f ] ; 2 uses
  %.pre-phi81 = phi i64 [ %.pre80, %bb.g ], [ %i.am, %bb.f ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.an, i64 %.pre-phi81 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi90
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !62
  %i.bd = and i8 %i.bc, 32
  %.not45.2 = icmp eq i8 %i.bd, 0
  br i1 %.not45.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !62  ; 2 uses
  %i.bg = zext i8 %i.bf to i32
  %i.bh = uitofp i8 %i.bf to float
  %i.bi = sub nsw i32 %i.k, %i.bg
  %i.bj = sitofp nsz i32 %i.bi to float
  %i.bk = fmul nsz float %4, %i.bj
  %i.bl = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float %5, float %i.bk)
  %i.bm = fptoui float %i.bl to i8
  store i8 %i.bm, ptr %i.be, align 1, !tbaa !62
  %.pre62 = load i32, ptr %i.h, align 4, !tbaa !44
  %.pre63 = load i8, ptr %i.i, align 1, !tbaa !62
  %.pre91 = sext i32 %.pre62 to i64
  %.pre93 = sext i8 %.pre63 to i32
  %.pre95 = shl nsw i32 %.pre93, 3
  %.pre97 = sub i32 %.pre95, %i.x
  %.pre98 = add i32 %.pre97, 7
  %.pre100 = sext i32 %.pre98 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi101 = phi i64 [ %.pre100, %bb.i ], [ %.pre-phi90, %bb.h ] ; 2 uses
  %.pre-phi92 = phi i64 [ %.pre91, %bb.i ], [ %.pre-phi81, %bb.h ] ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.ba, i64 %.pre-phi92 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi101
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = and i8 %i.bp, 16
  %.not45.3 = icmp eq i8 %i.bq, 0
  br i1 %.not45.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !62  ; 2 uses
  %i.bt = zext i8 %i.bs to i32
  %i.bu = uitofp i8 %i.bs to float
  %i.bv = sub nsw i32 %i.k, %i.bt
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = fmul nsz float %4, %i.bw
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %i.bu, float %5, float %i.bx)
  %i.bz = fptoui float %i.by to i8
  store i8 %i.bz, ptr %i.br, align 1, !tbaa !62
  %.pre64 = load i32, ptr %i.h, align 4, !tbaa !44
  %.pre65 = load i8, ptr %i.i, align 1, !tbaa !62
  %.pre102 = sext i32 %.pre64 to i64
  %.pre104 = sext i8 %.pre65 to i32
  %.pre106 = shl nsw i32 %.pre104, 3
  %.pre108 = sub i32 %.pre106, %i.x
  %.pre109 = add i32 %.pre108, 7
  %.pre111 = sext i32 %.pre109 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi112 = phi i64 [ %.pre111, %bb.k ], [ %.pre-phi101, %bb.j ] ; 2 uses
  %.pre-phi103 = phi i64 [ %.pre102, %bb.k ], [ %.pre-phi92, %bb.j ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bn, i64 %.pre-phi103 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi112
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !62
  %i.cd = and i8 %i.cc, 8
  %.not45.4 = icmp eq i8 %i.cd, 0
  br i1 %.not45.4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !62  ; 2 uses
  %i.cg = zext i8 %i.cf to i32
  %i.ch = uitofp i8 %i.cf to float
  %i.ci = sub nsw i32 %i.k, %i.cg
  %i.cj = sitofp nsz i32 %i.ci to float
  %i.ck = fmul nsz float %4, %i.cj
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %i.ch, float %5, float %i.ck)
  %i.cm = fptoui float %i.cl to i8
  store i8 %i.cm, ptr %i.ce, align 1, !tbaa !62
  %.pre66 = load i32, ptr %i.h, align 4, !tbaa !44
  %.pre67 = load i8, ptr %i.i, align 1, !tbaa !62
  %.pre113 = sext i32 %.pre66 to i64
  %.pre115 = sext i8 %.pre67 to i32
  %.pre117 = shl nsw i32 %.pre115, 3
  %.pre119 = sub i32 %.pre117, %i.x
  %.pre120 = add i32 %.pre119, 7
end_hunk_1
