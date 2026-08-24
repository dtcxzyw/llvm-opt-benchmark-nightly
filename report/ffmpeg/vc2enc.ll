Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vc2enc?download=true
inline.NumInlined: 67
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@encode_frame:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1848
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !117
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 8 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 672
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !118
  %i.am = tail call i32 %i.al(ptr noundef %i.aj, ptr noundef nonnull @dwt_plane, ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 3, i32 noundef 112) #14 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(600) %i.a, i8 0, i64 600, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2916 ; 8 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !89
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2920 ; 8 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !90
  %i.ar = mul nsw i32 %i.aq, %i.ao
  %.fr164.i = freeze i32 %i.ar                    ; 4 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %.fr164.i, i32 150) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !82 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1200) %i.b, i8 0, i64 1200, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2972 ; 8 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !70 ; 6 uses
  %i.aw = icmp slt i32 %i.av, 5
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2992
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !119 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  %or.cond.i.i = select i1 %i.aw, i1 %i.az, i1 false
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1984 ; 4 uses
  %i.bb = icmp sgt i32 %i.av, 0                   ; 4 uses
  br i1 %or.cond.i.i, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.ba, align 8, !tbaa !120
  br i1 %i.bb, label %.lr.ph.i.i, label %init_quant_matrix.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2968 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1964
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv141.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next142.i.i, %bb.c ] ; 6 uses
  %i.be = load i32, ptr %i.bc, align 8, !tbaa !121
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [16 x i8], ptr @ff_dirac_default_qmat, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv141.i.i
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !59
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv141.i.i ; 4 uses
  store i8 %i.bi, ptr %i.bj, align 4, !tbaa !59
  %i.bk = load i32, ptr %i.bc, align 8, !tbaa !121
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [16 x i8], ptr @ff_dirac_default_qmat, i64 %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv141.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !59
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !59
  %i.br = load i32, ptr %i.bc, align 8, !tbaa !121
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr @ff_dirac_default_qmat, i64 %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv141.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !59
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i8 %i.bw, ptr %i.bx, align 2, !tbaa !59
  %i.by = load i32, ptr %i.bc, align 8, !tbaa !121
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [16 x i8], ptr @ff_dirac_default_qmat, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv141.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !59
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !59
  %indvars.iv.next142.i.i = add nuw nsw i64 %indvars.iv141.i.i, 1 ; 2 uses
  %i.cf = load i32, ptr %i.au, align 4, !tbaa !70
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next142.i.i, %i.cg
  br i1 %i.ch, label %bb.c, label %init_quant_matrix.exit.i, !llvm.loop !122

._crit_edge.i.i:                                  ; preds = %bb.a
  store i32 1, ptr %i.ba, align 8, !tbaa !120
  switch i32 %i.ay, label %.preheader65.i.i [
    i32 0, label %.preheader68.i.i
    i32 1, label %.preheader71.i.i
  ]

.preheader71.i.i:                                 ; preds = %._crit_edge.i.i
  br i1 %i.bb, label %.preheader70.lr.ph.i.i, label %init_quant_matrix.exit.i

.preheader70.lr.ph.i.i:                           ; preds = %.preheader71.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1964
  br label %.preheader70.i.i

.preheader68.i.i:                                 ; preds = %._crit_edge.i.i
  br i1 %i.bb, label %.split.us.peel.i.i, label %init_quant_matrix.exit.i

.split.us.peel.i.i:                               ; preds = %.preheader68.i.i
  %i.cj = getelementptr i8, ptr %0, i64 1964      ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !121
  %i.cm = sext i32 %i.cl to i64                   ; 4 uses
  %gep.us.peel.i.i = getelementptr [16 x i8], ptr @ff_dirac_default_qmat, i64 %i.cm ; 4 uses
  %i.cn = load i8, ptr %gep.us.peel.i.i, align 16, !tbaa !59
  store i8 %i.cn, ptr %i.cj, align 4, !tbaa !59
  %i.co = getelementptr inbounds nuw i8, ptr %gep.us.peel.i.i, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !59
  %i.cq = getelementptr i8, ptr %0, i64 1965
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !59
  %i.cr = getelementptr inbounds nuw i8, ptr %gep.us.peel.i.i, i64 2
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !59
  %i.ct = getelementptr i8, ptr %0, i64 1966
  store i8 %i.cs, ptr %i.ct, align 2, !tbaa !59
  %i.cu = getelementptr inbounds nuw i8, ptr %gep.us.peel.i.i, i64 3
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !59
  %i.cw = getelementptr i8, ptr %0, i64 1967
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !59
  %.not.i.i = icmp eq i32 %i.av, 1
  br i1 %.not.i.i, label %init_quant_matrix.exit.i, label %.split.us.peel106.i.i

.split.us.peel106.i.i:                            ; preds = %.split.us.peel.i.i
  %i.cx = getelementptr i8, ptr %0, i64 1968
  %gep.us.peel102.i.i = getelementptr [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_dirac_default_qmat, i64 4), i64 %i.cm ; 4 uses
  %i.cy = load i8, ptr %gep.us.peel102.i.i, align 4, !tbaa !59
  store i8 %i.cy, ptr %i.cx, align 8, !tbaa !59
  %i.cz = getelementptr inbounds nuw i8, ptr %gep.us.peel102.i.i, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !59
  %i.db = getelementptr i8, ptr %0, i64 1969
  store i8 %i.da, ptr %i.db, align 1, !tbaa !59
  %i.dc = getelementptr inbounds nuw i8, ptr %gep.us.peel102.i.i, i64 2
  %i.dd = load i8, ptr %i.dc, align 2, !tbaa !59
  %i.de = getelementptr i8, ptr %0, i64 1970
  store i8 %i.dd, ptr %i.de, align 2, !tbaa !59
  %i.df = getelementptr inbounds nuw i8, ptr %gep.us.peel102.i.i, i64 3
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !59
  %i.dh = getelementptr i8, ptr %0, i64 1971
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !59
  %i.di = icmp samesign ugt i32 %i.av, 2
  br i1 %i.di, label %.split.us.peel119.i.i, label %init_quant_matrix.exit.i

.split.us.peel119.i.i:                            ; preds = %.split.us.peel106.i.i
  %i.dj = getelementptr i8, ptr %0, i64 1972
  %gep.us.peel115.i.i = getelementptr [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_dirac_default_qmat, i64 8), i64 %i.cm ; 4 uses
  %i.dk = load i8, ptr %gep.us.peel115.i.i, align 8, !tbaa !59
  store i8 %i.dk, ptr %i.dj, align 4, !tbaa !59
  %i.dl = getelementptr inbounds nuw i8, ptr %gep.us.peel115.i.i, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !59
  %i.dn = getelementptr i8, ptr %0, i64 1973
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !59
  %i.do = getelementptr inbounds nuw i8, ptr %gep.us.peel115.i.i, i64 2
  %i.dp = load i8, ptr %i.do, align 2, !tbaa !59
  %i.dq = getelementptr i8, ptr %0, i64 1974
  store i8 %i.dp, ptr %i.dq, align 2, !tbaa !59
  %i.dr = getelementptr inbounds nuw i8, ptr %gep.us.peel115.i.i, i64 3
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !59
  %i.dt = getelementptr i8, ptr %0, i64 1975
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !59
  %.not147.i.i = icmp eq i32 %i.av, 3
  br i1 %.not147.i.i, label %init_quant_matrix.exit.i, label %.split.us.peel132.i.i

.split.us.peel132.i.i:                            ; preds = %.split.us.peel119.i.i
  %i.du = getelementptr i8, ptr %0, i64 1976
  %gep.us.peel128.i.i = getelementptr [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_dirac_default_qmat, i64 12), i64 %i.cm ; 4 uses
  %i.dv = load i8, ptr %gep.us.peel128.i.i, align 4, !tbaa !59
  store i8 %i.dv, ptr %i.du, align 8, !tbaa !59
  %i.dw = getelementptr inbounds nuw i8, ptr %gep.us.peel128.i.i, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !59
  %i.dy = getelementptr i8, ptr %0, i64 1977
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !59
  %i.dz = getelementptr inbounds nuw i8, ptr %gep.us.peel128.i.i, i64 2
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !59
  %i.eb = getelementptr i8, ptr %0, i64 1978
  store i8 %i.ea, ptr %i.eb, align 2, !tbaa !59
  %i.ec = getelementptr inbounds nuw i8, ptr %gep.us.peel128.i.i, i64 3
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !59
  %i.ee = getelementptr i8, ptr %0, i64 1979
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !59
  %i.ef = icmp samesign ugt i32 %i.av, 4
  br i1 %i.ef, label %.split.us.i.i, label %init_quant_matrix.exit.i

.preheader65.i.i:                                 ; preds = %._crit_edge.i.i
  br i1 %i.bb, label %.preheader.lr.ph.i.i, label %init_quant_matrix.exit.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader65.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1964
  br label %.preheader.i.i

.split.us.i.i:                                    ; preds = %.split.us.peel132.i.i, %.split.us.i.i
  %indvars.iv92.i.i = phi i64 [ %indvars.iv.next93.i.i, %.split.us.i.i ], [ 4, %.split.us.peel132.i.i ] ; 3 uses
  %i.eh = getelementptr [4 x i8], ptr %i.cj, i64 %indvars.iv92.i.i
  %i.ei = getelementptr [4 x i8], ptr @vc2_qm_col_tab, i64 %indvars.iv92.i.i
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !59
  store i32 %i.ej, ptr %i.eh, align 1, !tbaa !59
  %.pre144.i.i = load i32, ptr %i.au, align 4, !tbaa !70
  %indvars.iv.next93.i.i = add nuw nsw i64 %indvars.iv92.i.i, 1 ; 2 uses
  %i.ek = sext i32 %.pre144.i.i to i64
  %i.el = icmp slt i64 %indvars.iv.next93.i.i, %i.ek
  br i1 %i.el, label %.split.us.i.i, label %init_quant_matrix.exit.i, !llvm.loop !123

.preheader70.i.i:                                 ; preds = %.preheader70.i.i, %.preheader70.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader70.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.preheader70.i.i ] ; 3 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr @vc2_qm_col_tab, i64 %indvars.iv.i.i
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i
  %i.en = load i32, ptr %6, align 4, !tbaa !59
  store i32 %i.en, ptr %i.em, align 1, !tbaa !59
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.eo = load i32, ptr %i.au, align 4, !tbaa !70
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next.i.i, %i.ep
  br i1 %i.eq, label %.preheader70.i.i, label %init_quant_matrix.exit.i, !llvm.loop !125

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.lr.ph.i.i
  %indvars.iv138.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.next139.i.i, %.preheader.i.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv138.i.i
  store i32 0, ptr %i.er, align 1
  %indvars.iv.next139.i.i = add nuw nsw i64 %indvars.iv138.i.i, 1 ; 2 uses
  %i.es = load i32, ptr %i.au, align 4, !tbaa !70
  %i.et = sext i32 %i.es to i64
  %i.eu = icmp slt i64 %indvars.iv.next139.i.i, %i.et
  br i1 %i.eu, label %.preheader.i.i, label %init_quant_matrix.exit.i, !llvm.loop !126

init_quant_matrix.exit.i:                         ; preds = %.preheader70.i.i, %.split.us.i.i, %.preheader.i.i, %bb.c, %.preheader65.i.i, %.split.us.peel132.i.i, %.split.us.peel119.i.i, %.split.us.peel106.i.i, %.split.us.peel.i.i, %.preheader68.i.i, %.preheader71.i.i, %bb.b
  %i.ev = load i32, ptr %i.ap, align 8, !tbaa !90 ; 4 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  %.pre197.i = load i32, ptr %i.an, align 4, !tbaa !89 ; 4 uses
  br i1 %i.ew, label %.preheader123.lr.ph.i, label %._crit_edge131.i

.preheader123.lr.ph.i:                            ; preds = %init_quant_matrix.exit.i
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %i.ez = icmp sgt i32 %.pre197.i, 0
  br i1 %i.ez, label %.preheader123.i, label %._crit_edge131.i

.preheader123.i:                                  ; preds = %.preheader123.lr.ph.i, %._crit_edge.i
  %i.fa = phi i32 [ %i.fu, %._crit_edge.i ], [ %i.ev, %.preheader123.lr.ph.i ]
  %i.fb = phi i32 [ %i.fv, %._crit_edge.i ], [ %.pre197.i, %.preheader123.lr.ph.i ] ; 3 uses
  %.0105130.i = phi i32 [ %i.fw, %._crit_edge.i ], [ 0, %.preheader123.lr.ph.i ] ; 3 uses
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader123.i, %.lr.ph.i
  %i.fd = phi i32 [ %i.fs, %.lr.ph.i ], [ %i.fb, %.preheader123.i ]
  %.0106129.i = phi i32 [ %i.fr, %.lr.ph.i ], [ 0, %.preheader123.i ] ; 3 uses
  %i.fe = mul nsw i32 %i.fd, %.0105130.i
  %i.ff = add nsw i32 %i.fe, %.0106129.i
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [496 x i8], ptr %i.at, i64 %i.fg ; 5 uses
  store ptr %0, ptr %i.fh, align 8, !tbaa !127
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 472
  store i32 %.0106129.i, ptr %i.fi, align 8, !tbaa !129
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 476
  store i32 %.0105130.i, ptr %i.fj, align 4, !tbaa !130
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 484
  %i.fl = load <2 x i32>, ptr %i.ex, align 8, !tbaa !29
  %i.fm = shl <2 x i32> %i.fl, splat (i32 3)
  store <2 x i32> %i.fm, ptr %i.fk, align 4, !tbaa !29
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fo = load i32, ptr %i.ey, align 8, !tbaa !131
  %i.fp = sext i32 %i.fo to i64
  %i.fq = shl nsw i64 %i.fp, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fn, i8 0, i64 %i.fq, i1 false)
  %i.fr = add nuw nsw i32 %.0106129.i, 1          ; 2 uses
  %i.fs = load i32, ptr %i.an, align 4, !tbaa !89 ; 3 uses
  %i.ft = icmp slt i32 %i.fr, %i.fs
  br i1 %i.ft, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !132

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.ap, align 8, !tbaa !90
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader123.i
  %i.fu = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.fa, %.preheader123.i ] ; 3 uses
  %i.fv = phi i32 [ %i.fs, %._crit_edge.loopexit.i ], [ %i.fb, %.preheader123.i ] ; 2 uses
  %i.fw = add nuw nsw i32 %.0105130.i, 1          ; 2 uses
  %i.fx = icmp slt i32 %i.fw, %i.fu
  br i1 %i.fx, label %.preheader123.i, label %._crit_edge131.i, !llvm.loop !133

._crit_edge131.i:                                 ; preds = %._crit_edge.i, %.preheader123.lr.ph.i, %init_quant_matrix.exit.i
  %i.fy = phi i32 [ %.pre197.i, %init_quant_matrix.exit.i ], [ %.pre197.i, %.preheader123.lr.ph.i ], [ %i.fv, %._crit_edge.i ]
  %.lcssa128.i = phi i32 [ %i.ev, %init_quant_matrix.exit.i ], [ %i.ev, %.preheader123.lr.ph.i ], [ %i.fu, %._crit_edge.i ]
  %i.fz = load ptr, ptr %i.ai, align 8, !tbaa !86 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 672
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !118
  %i.gc = mul nsw i32 %.lcssa128.i, %i.fy
  %i.gd = tail call i32 %i.gb(ptr noundef %i.fz, ptr noundef nonnull @rate_control, ptr noundef %i.at, ptr noundef null, i32 noundef %i.gc, i32 noundef 496) #14, !inline_history !135 ; 0 uses
  %i.ge = load i32, ptr %i.an, align 4, !tbaa !89
  %i.gf = load i32, ptr %i.ap, align 8, !tbaa !90
  %i.gg = mul nsw i32 %i.gf, %i.ge                ; 3 uses
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %.lr.ph139.i, label %._crit_edge140.i

.lr.ph139.i:                                      ; preds = %._crit_edge131.i
  %i.gi = icmp sgt i32 %.fr164.i, 0
  %wide.trip.count185.i = zext nneg i32 %i.gg to i64 ; 2 uses
  br i1 %i.gi, label %.lr.ph135.us.preheader.i, label %.lr.ph161.i

.lr.ph135.us.preheader.i:                         ; preds = %.lr.ph139.i
  %wide.trip.count180.i = zext nneg i32 %spec.select.i to i64 ; 3 uses
  %min.iters.check = icmp slt i32 %.fr164.i, 4
  %n.vec = and i64 %wide.trip.count180.i, 252     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count180.i
  br label %.lr.ph135.us.i

.lr.ph135.us.i:                                   ; preds = %..loopexit_crit_edge.us.i, %.lr.ph135.us.preheader.i
  %indvars.iv182.i = phi i64 [ 0, %.lr.ph135.us.preheader.i ], [ %indvars.iv.next183.i, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.0101136.us.i = phi i32 [ 0, %.lr.ph135.us.preheader.i ], [ %i.gm, %..loopexit_crit_edge.us.i ]
  %i.gj = getelementptr inbounds nuw [496 x i8], ptr %i.at, i64 %indvars.iv182.i ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 492
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !136 ; 4 uses
  %i.gm = add nsw i32 %i.gl, %.0101136.us.i       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph135.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.gl, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x i32>, ptr %i.gn, align 16, !tbaa !29
  %i.go = icmp sgt <4 x i32> %broadcast.splat, %wide.load
  %i.gp = freeze <4 x i1> %i.go                   ; 2 uses
  %i.gq = bitcast <4 x i1> %i.gp to i4
  %.not176 = icmp eq i4 %i.gq, 0
  br i1 %.not176, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gr = icmp eq i64 %index.next, %n.vec
  br i1 %i.gr, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body.interim
  br i1 %cmp.n, label %..loopexit_crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph135.us.i, %middle.block
  %indvars.iv177.i.ph = phi i64 [ 0, %.lr.ph135.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %i.gs = tail call i64 @llvm.experimental.cttz.elts.i64.v4i1(<4 x i1> %i.gp, i1 false)
  %i.gt = add i64 %index, %i.gs
  br label %.loopexit

bb.d:                                             ; preds = %scalar.ph
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1 ; 2 uses
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next178.i, %wide.trip.count180.i
  br i1 %exitcond181.not.i, label %..loopexit_crit_edge.us.i, label %scalar.ph, !llvm.loop !140

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %indvars.iv177.i = phi i64 [ %indvars.iv.next178.i, %bb.d ], [ %indvars.iv177.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv177.i
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !29
  %i.gw = icmp sgt i32 %i.gl, %i.gv
  br i1 %i.gw, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %scalar.ph, %vector.early.exit
  %indvars.iv177.i.lcssa = phi i64 [ %i.gt, %vector.early.exit ], [ %indvars.iv177.i, %scalar.ph ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv177.i.lcssa
  store i32 %i.gl, ptr %i.gx, align 4, !tbaa !29
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv177.i.lcssa
  store ptr %i.gj, ptr %i.gy, align 8, !tbaa !141
  br label %..loopexit_crit_edge.us.i

..loopexit_crit_edge.us.i:                        ; preds = %bb.d, %middle.block, %.loopexit
  %indvars.iv.next183.i = add nuw nsw i64 %indvars.iv182.i, 1 ; 2 uses
  %exitcond186.not.i = icmp eq i64 %indvars.iv.next183.i, %wide.trip.count185.i
  br i1 %exitcond186.not.i, label %._crit_edge140.i, label %.lr.ph135.us.i, !llvm.loop !142

._crit_edge140.i:                                 ; preds = %..loopexit_crit_edge.us.i, %._crit_edge131.i
  %.0101.lcssa.i = phi i32 [ 0, %._crit_edge131.i ], [ %i.gm, %..loopexit_crit_edge.us.i ]
  %i.gz = icmp sgt i32 %.fr164.i, 0
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 2924
  br i1 %i.gz, label %.split.us.preheader.i, label %.split157.us.i

.split.us.preheader.i:                            ; preds = %._crit_edge140.i
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 2940
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !88
  %i.he = sub nsw i32 %i.hd, %.0101.lcssa.i
  %wide.trip.count190.i = zext nneg i32 %spec.select.i to i64
  br label %.split.us.i

.split.us.i:                                      ; preds = %._crit_edge147.us.i, %.split.us.preheader.i
  %.1102.us.i = phi i32 [ %.2103.lcssa.us.i, %._crit_edge147.us.i ], [ %i.he, %.split.us.preheader.i ] ; 2 uses
  %i.hf = icmp sgt i32 %.1102.us.i, 0
  br i1 %i.hf, label %.preheader.us.i, label %.split157.us.loopexit.i

.preheader.us.i:                                  ; preds = %.split.us.i, %bb.h
  %indvars.iv187.i = phi i64 [ %indvars.iv.next188.i, %bb.h ], [ 0, %.split.us.i ] ; 2 uses
  %.096144.us.i = phi i32 [ %.298.ph.us.i, %bb.h ], [ 0, %.split.us.i ] ; 4 uses
  %.2103143.us.i = phi i32 [ %.4.ph.us.i, %bb.h ], [ %.1102.us.i, %.split.us.i ] ; 4 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv187.i
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !141 ; 4 uses
  %.not.us.i = icmp eq ptr %i.hh, null
  br i1 %.not.us.i, label %._crit_edge147.us.i, label %bb.e

bb.e:                                             ; preds = %.preheader.us.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 480 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !143 ; 2 uses
  %.not115.us.i = icmp eq i32 %i.hj, 0
  br i1 %.not115.us.i, label %._crit_edge147.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
