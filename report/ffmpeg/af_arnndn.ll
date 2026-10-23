Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_arnndn?download=true
inline.NumInlined: 49
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 60
begin_hunk_0_@open_model:bb.a
bb.ag:                                            ; preds = %bb.ae
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 6 uses
  store i32 %i.bt, ptr %i.bv, align 8, !tbaa !83
  %i.bw = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %i.bx = icmp ne i32 %i.bw, 1
  %i.by = load i32, ptr %i.a, align 4             ; 3 uses
  %i.bz = icmp ugt i32 %i.by, 128
  %or.cond68.i = select i1 %i.bx, i1 true, i1 %i.bz
  br i1 %or.cond68.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 28 ; 14 uses
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !84
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 %i.by, ptr %i.cb, align 8, !tbaa !59
  %i.cc = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %i.cd = icmp eq i32 %i.cc, 1
  %i.ce = load i32, ptr %i.a, align 4             ; 3 uses
  %i.cf = icmp ult i32 %i.ce, 129
  %or.cond72.not.i = select i1 %i.cd, i1 %i.cf, i1 false
  br i1 %or.cond72.not.i, label %bb.aj, label %.thread827.i

.thread827.i:                                     ; preds = %bb.ai
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %switch.selectcmp1245.i = icmp eq i32 %i.ce, 2
  %switch.select1246.i = select i1 %switch.selectcmp1245.i, i32 2, i32 0
  %switch.selectcmp1247.i = icmp eq i32 %i.ce, 1
  %switch.select1248.i = select i1 %switch.selectcmp1247.i, i32 1, i32 %switch.select1246.i
  store i32 %switch.select1248.i, ptr %i.cg, align 8, !tbaa !85
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %i.ch = call i32 @fgetc(ptr noundef nonnull %i.f)
  switch i32 %i.ch, label %bb.ak [
    i32 -1, label %bb.al
    i32 10, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %i.ci = load i32, ptr %i.bv, align 8, !tbaa !83
  %i.cj = add nsw i32 %i.ci, 3
  %i.ck = and i32 %i.cj, -4
  %i.cl = load i32, ptr %i.ca, align 4, !tbaa !84
  %i.cm = add nsw i32 %i.cl, 3
  %i.cn = and i32 %i.cm, -4
  %i.co = mul i32 %i.ck, 3
  %i.cp = mul i32 %i.co, %i.cn
  %i.cq = sext i32 %i.cp to i64
  %i.cr = call noalias ptr @av_calloc(i64 noundef %i.cq, i64 noundef 4) #11 ; 5 uses
  %.not744.i = icmp eq ptr %i.cr, null
  br i1 %.not744.i, label %.thread834.i, label %bb.am

.thread834.i:                                     ; preds = %bb.al
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.am:                                            ; preds = %bb.al
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !86
  %i.ct = load i32, ptr %i.bv, align 8, !tbaa !83 ; 2 uses
  %.not747.not966.i = icmp sgt i32 %i.ct, 0
  br i1 %.not747.not966.i, label %.preheader954.preheader.i, label %.critedge.i.preheader

.preheader954.preheader.i:                        ; preds = %bb.am
  %.pre.i = load i32, ptr %i.ca, align 4, !tbaa !84
  br label %.preheader954.i

.preheader954.i:                                  ; preds = %.thread831.i, %.preheader954.preheader.i
  %i.cu = phi i32 [ %i.em, %.thread831.i ], [ %i.ct, %.preheader954.preheader.i ]
  %i.cv = phi i32 [ %i.en, %.thread831.i ], [ %.pre.i, %.preheader954.preheader.i ] ; 2 uses
  %.0635967.i = phi i32 [ %i.eo, %.thread831.i ], [ 0, %.preheader954.preheader.i ] ; 4 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph964.i, label %.thread831.i

.lr.ph964.i:                                      ; preds = %.preheader954.i, %bb.an
  %.0633963.i = phi i32 [ %i.di, %bb.an ], [ 0, %.preheader954.i ] ; 2 uses
  %i.cx = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not745.i = icmp eq i32 %i.cx, 1
  br i1 %.not745.i, label %bb.an, label %.loopexit.i

bb.an:                                            ; preds = %.lr.ph964.i
  %i.cy = load i32, ptr %i.a, align 4, !tbaa !52
  %i.cz = sitofp nsz i32 %i.cy to float
  %i.da = mul nuw nsw i32 %.0633963.i, 3
  %i.db = load i32, ptr %i.bv, align 8, !tbaa !83 ; 2 uses
  %i.dc = add nsw i32 %i.db, 3
  %i.dd = and i32 %i.dc, -4
  %i.de = mul i32 %i.da, %i.dd
  %i.df = add nsw i32 %i.de, %.0635967.i
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.dg
  store float %i.cz, ptr %i.dh, align 4, !tbaa !26
  %i.di = add nuw nsw i32 %.0633963.i, 1          ; 2 uses
  %i.dj = load i32, ptr %i.ca, align 4, !tbaa !84 ; 3 uses
  %.not746.i = icmp slt i32 %i.di, %i.dj
  br i1 %.not746.i, label %.lr.ph964.i, label %._crit_edge.i, !llvm.loop !106

._crit_edge.i:                                    ; preds = %bb.an
  %.not746962.1.i = icmp sgt i32 %i.dj, 0
  br i1 %.not746962.1.i, label %.lr.ph964.1.i, label %.thread831.i

.lr.ph964.1.i:                                    ; preds = %._crit_edge.i, %bb.ao
  %.0633963.1.i = phi i32 [ %i.dw, %bb.ao ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.dk = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not745.1.i = icmp eq i32 %i.dk, 1
  br i1 %.not745.1.i, label %bb.ao, label %.loopexit.i

bb.ao:                                            ; preds = %.lr.ph964.1.i
  %i.dl = load i32, ptr %i.a, align 4, !tbaa !52
  %i.dm = sitofp nsz i32 %i.dl to float
  %i.dn = mul nuw nsw i32 %.0633963.1.i, 3
  %i.do = load i32, ptr %i.bv, align 8, !tbaa !83 ; 2 uses
  %i.dp = add nsw i32 %i.do, 3
  %i.dq = and i32 %i.dp, -4
  %i.dr = add nuw i32 %i.dn, 1
  %i.ds = mul i32 %i.dq, %i.dr
  %i.dt = add nsw i32 %i.ds, %.0635967.i
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.du
  store float %i.dm, ptr %i.dv, align 4, !tbaa !26
  %i.dw = add nuw nsw i32 %.0633963.1.i, 1        ; 2 uses
  %i.dx = load i32, ptr %i.ca, align 4, !tbaa !84 ; 3 uses
  %.not746.1.i = icmp slt i32 %i.dw, %i.dx
  br i1 %.not746.1.i, label %.lr.ph964.1.i, label %._crit_edge.1.i, !llvm.loop !106

._crit_edge.1.i:                                  ; preds = %bb.ao
  %.not746962.2.i = icmp sgt i32 %i.dx, 0
  br i1 %.not746962.2.i, label %.lr.ph964.2.i, label %.thread831.i

.lr.ph964.2.i:                                    ; preds = %._crit_edge.1.i, %bb.ap
  %.0633963.2.i = phi i32 [ %i.ek, %bb.ap ], [ 0, %._crit_edge.1.i ] ; 2 uses
  %i.dy = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not745.2.i = icmp eq i32 %i.dy, 1
  br i1 %.not745.2.i, label %bb.ap, label %.loopexit.i

bb.ap:                                            ; preds = %.lr.ph964.2.i
  %i.dz = load i32, ptr %i.a, align 4, !tbaa !52
  %i.ea = sitofp nsz i32 %i.dz to float
  %i.eb = mul nuw nsw i32 %.0633963.2.i, 3
  %i.ec = load i32, ptr %i.bv, align 8, !tbaa !83 ; 2 uses
  %i.ed = add nsw i32 %i.ec, 3
  %i.ee = and i32 %i.ed, -4
  %i.ef = add nuw i32 %i.eb, 2
  %i.eg = mul i32 %i.ee, %i.ef
  %i.eh = add nsw i32 %i.eg, %.0635967.i
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ei
  store float %i.ea, ptr %i.ej, align 4, !tbaa !26
  %i.ek = add nuw nsw i32 %.0633963.2.i, 1        ; 2 uses
  %i.el = load i32, ptr %i.ca, align 4, !tbaa !84 ; 2 uses
  %.not746.2.i = icmp slt i32 %i.ek, %i.el
  br i1 %.not746.2.i, label %.lr.ph964.2.i, label %.thread831.i, !llvm.loop !106

.loopexit.i:                                      ; preds = %.lr.ph964.i, %.lr.ph964.1.i, %.lr.ph964.2.i
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

.thread831.i:                                     ; preds = %bb.ap, %._crit_edge.1.i, %._crit_edge.i, %.preheader954.i
  %i.em = phi i32 [ %i.cu, %.preheader954.i ], [ %i.db, %._crit_edge.i ], [ %i.do, %._crit_edge.1.i ], [ %i.ec, %bb.ap ] ; 2 uses
  %i.en = phi i32 [ %i.cv, %.preheader954.i ], [ %i.dj, %._crit_edge.i ], [ %i.dx, %._crit_edge.1.i ], [ %i.el, %bb.ap ]
  %i.eo = add nuw nsw i32 %.0635967.i, 1          ; 2 uses
  %.not747.not.i = icmp slt i32 %i.eo, %i.em
  br i1 %.not747.not.i, label %.preheader954.i, label %.critedge.i.preheader, !llvm.loop !107

.critedge.i.preheader:                            ; preds = %.thread831.i, %bb.am
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.preheader, %.critedge.i
  %i.ep = call i32 @fgetc(ptr noundef nonnull %i.f)
  switch i32 %i.ep, label %.critedge.i [
    i32 -1, label %bb.aq
    i32 10, label %bb.aq
  ]

bb.aq:                                            ; preds = %.critedge.i, %.critedge.i
  %i.eq = load i32, ptr %i.ca, align 4, !tbaa !84
  %i.er = add nsw i32 %i.eq, 3
  %i.es = and i32 %i.er, -4                       ; 2 uses
  %i.et = mul i32 %i.es, 3
  %i.eu = mul i32 %i.et, %i.es
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = call noalias ptr @av_calloc(i64 noundef %i.ev, i64 noundef 4) #11 ; 5 uses
  %.not748.i = icmp eq ptr %i.ew, null
  br i1 %.not748.i, label %.thread842.i, label %bb.ar

.thread842.i:                                     ; preds = %bb.aq
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ex = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !87
  %i.ey = load i32, ptr %i.ca, align 4, !tbaa !84
  %.not751.not973.i = icmp sgt i32 %i.ey, 0
  br i1 %.not751.not973.i, label %.preheader952.i, label %.critedge928.i.preheader

.preheader952.i:                                  ; preds = %bb.ar, %.thread839.i
  %.0632974.i = phi i32 [ %i.gl, %.thread839.i ], [ 0, %bb.ar ] ; 4 uses
  br label %.lr.ph970.i

.lr.ph970.i:                                      ; preds = %.preheader952.i, %bb.as
  %.0630969.i = phi i32 [ %i.fk, %bb.as ], [ 0, %.preheader952.i ] ; 2 uses
  %i.ez = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not749.i = icmp eq i32 %i.ez, 1
  br i1 %.not749.i, label %bb.as, label %.loopexit1043.i

bb.as:                                            ; preds = %.lr.ph970.i
  %i.fa = load i32, ptr %i.a, align 4, !tbaa !52
  %i.fb = sitofp nsz i32 %i.fa to float
  %i.fc = mul nuw nsw i32 %.0630969.i, 3
  %i.fd = load i32, ptr %i.ca, align 4, !tbaa !84 ; 4 uses
  %i.fe = add nsw i32 %i.fd, 3
  %i.ff = and i32 %i.fe, -4
  %i.fg = mul i32 %i.fc, %i.ff
  %i.fh = add nsw i32 %i.fg, %.0632974.i
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fi
  store float %i.fb, ptr %i.fj, align 4, !tbaa !26
  %i.fk = add nuw nsw i32 %.0630969.i, 1          ; 2 uses
  %.not750.i = icmp slt i32 %i.fk, %i.fd
  br i1 %.not750.i, label %.lr.ph970.i, label %._crit_edge971.i, !llvm.loop !108

._crit_edge971.i:                                 ; preds = %bb.as
  %.not750968.1.i = icmp sgt i32 %i.fd, 0
  br i1 %.not750968.1.i, label %.lr.ph970.1.i, label %.thread839.i

.lr.ph970.1.i:                                    ; preds = %._crit_edge971.i, %bb.at
  %.0630969.1.i = phi i32 [ %i.fx, %bb.at ], [ 0, %._crit_edge971.i ] ; 2 uses
  %i.fl = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not749.1.i = icmp eq i32 %i.fl, 1
  br i1 %.not749.1.i, label %bb.at, label %.loopexit1043.i

bb.at:                                            ; preds = %.lr.ph970.1.i
  %i.fm = load i32, ptr %i.a, align 4, !tbaa !52
  %i.fn = sitofp nsz i32 %i.fm to float
  %i.fo = mul nuw nsw i32 %.0630969.1.i, 3
  %i.fp = load i32, ptr %i.ca, align 4, !tbaa !84 ; 4 uses
  %i.fq = add nsw i32 %i.fp, 3
  %i.fr = and i32 %i.fq, -4
  %i.fs = add nuw i32 %i.fo, 1
  %i.ft = mul i32 %i.fr, %i.fs
  %i.fu = add nsw i32 %i.ft, %.0632974.i
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fv
  store float %i.fn, ptr %i.fw, align 4, !tbaa !26
  %i.fx = add nuw nsw i32 %.0630969.1.i, 1        ; 2 uses
  %.not750.1.i = icmp slt i32 %i.fx, %i.fp
  br i1 %.not750.1.i, label %.lr.ph970.1.i, label %._crit_edge971.1.i, !llvm.loop !108

._crit_edge971.1.i:                               ; preds = %bb.at
  %.not750968.2.i = icmp sgt i32 %i.fp, 0
  br i1 %.not750968.2.i, label %.lr.ph970.2.i, label %.thread839.i

.lr.ph970.2.i:                                    ; preds = %._crit_edge971.1.i, %bb.au
  %.0630969.2.i = phi i32 [ %i.gk, %bb.au ], [ 0, %._crit_edge971.1.i ] ; 2 uses
  %i.fy = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not749.2.i = icmp eq i32 %i.fy, 1
  br i1 %.not749.2.i, label %bb.au, label %.loopexit1043.i

bb.au:                                            ; preds = %.lr.ph970.2.i
  %i.fz = load i32, ptr %i.a, align 4, !tbaa !52
  %i.ga = sitofp nsz i32 %i.fz to float
  %i.gb = mul nuw nsw i32 %.0630969.2.i, 3
  %i.gc = load i32, ptr %i.ca, align 4, !tbaa !84 ; 3 uses
  %i.gd = add nsw i32 %i.gc, 3
  %i.ge = and i32 %i.gd, -4
  %i.gf = add nuw i32 %i.gb, 2
  %i.gg = mul i32 %i.ge, %i.gf
  %i.gh = add nsw i32 %i.gg, %.0632974.i
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.gi
  store float %i.ga, ptr %i.gj, align 4, !tbaa !26
  %i.gk = add nuw nsw i32 %.0630969.2.i, 1        ; 2 uses
  %.not750.2.i = icmp slt i32 %i.gk, %i.gc
  br i1 %.not750.2.i, label %.lr.ph970.2.i, label %.thread839.i, !llvm.loop !108

.loopexit1043.i:                                  ; preds = %.lr.ph970.i, %.lr.ph970.1.i, %.lr.ph970.2.i
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

.thread839.i:                                     ; preds = %bb.au, %._crit_edge971.1.i, %._crit_edge971.i
  %2 = phi i32 [ %i.fp, %._crit_edge971.1.i ], [ %i.fd, %._crit_edge971.i ], [ %i.gc, %bb.au ]
  %i.gl = add nuw nsw i32 %.0632974.i, 1          ; 2 uses
  %.not751.not.i = icmp slt i32 %i.gl, %2
  br i1 %.not751.not.i, label %.preheader952.i, label %.critedge928.i.preheader, !llvm.loop !109

.critedge928.i.preheader:                         ; preds = %.thread839.i, %bb.ar
  br label %.critedge928.i

.critedge928.i:                                   ; preds = %.critedge928.i.preheader, %.critedge928.i
  %i.gm = call i32 @fgetc(ptr noundef nonnull %i.f)
  switch i32 %i.gm, label %.critedge928.i [
    i32 -1, label %bb.av
    i32 10, label %bb.av
  ]

bb.av:                                            ; preds = %.critedge928.i, %.critedge928.i
  %i.gn = load i32, ptr %i.ca, align 4, !tbaa !84
  %i.go = mul nsw i32 %i.gn, 3
  %i.gp = sext i32 %i.go to i64
  %i.gq = call noalias ptr @av_calloc(i64 noundef %i.gp, i64 noundef 4) #11 ; 3 uses
  %.not752.i = icmp eq ptr %i.gq, null
  br i1 %.not752.i, label %.thread845.i, label %bb.aw

.thread845.i:                                     ; preds = %bb.av
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.aw:                                            ; preds = %bb.av
  store ptr %i.gq, ptr %i.o, align 8, !tbaa !88
  %i.gr = load i32, ptr %i.ca, align 4, !tbaa !84
  %.not754975.i = icmp sgt i32 %i.gr, 0
  br i1 %.not754975.i, label %.lr.ph978.i, label %.preheader950.i.preheader

.lr.ph978.i:                                      ; preds = %bb.aw, %bb.ax
  %indvars.iv1046.i = phi i64 [ %indvars.iv.next1047.i, %bb.ax ], [ 0, %bb.aw ] ; 2 uses
  %i.gs = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not753.i = icmp eq i32 %i.gs, 1
  br i1 %.not753.i, label %bb.ax, label %.thread848.i

.thread848.i:                                     ; preds = %.lr.ph978.i
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.ax:                                            ; preds = %.lr.ph978.i
  %i.gt = load i32, ptr %i.a, align 4, !tbaa !52
  %i.gu = sitofp nsz i32 %i.gt to float
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv1046.i
  store float %i.gu, ptr %i.gv, align 4, !tbaa !26
  %indvars.iv.next1047.i = add nuw nsw i64 %indvars.iv1046.i, 1 ; 2 uses
  %i.gw = load i32, ptr %i.ca, align 4, !tbaa !84
  %i.gx = mul nsw i32 %i.gw, 3
  %i.gy = sext i32 %i.gx to i64
  %.not754.i = icmp slt i64 %indvars.iv.next1047.i, %i.gy
  br i1 %.not754.i, label %.lr.ph978.i, label %.preheader950.i.preheader, !llvm.loop !110

.preheader950.i.preheader:                        ; preds = %bb.ax, %bb.aw
  br label %.preheader950.i

.preheader950.i:                                  ; preds = %.preheader950.i.preheader, %.preheader950.i
  %i.gz = call i32 @fgetc(ptr noundef nonnull %i.f)
  switch i32 %i.gz, label %.preheader950.i [
    i32 -1, label %bb.ay
    i32 10, label %bb.ay
  ]

bb.ay:                                            ; preds = %.preheader950.i, %.preheader950.i
  %i.ha = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %i.hb = icmp ne i32 %i.ha, 1
  %i.hc = load i32, ptr %i.a, align 4             ; 2 uses
  %i.hd = icmp ugt i32 %i.hc, 128
  %or.cond76.i = select i1 %i.hb, i1 true, i1 %i.hd
  br i1 %or.cond76.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.ba:                                            ; preds = %bb.ay
  %i.he = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 6 uses
  store i32 %i.hc, ptr %i.he, align 8, !tbaa !83
  %i.hf = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %i.hg = icmp ne i32 %i.hf, 1
  %i.hh = load i32, ptr %i.a, align 4             ; 3 uses
  %i.hi = icmp ugt i32 %i.hh, 128
  %or.cond80.i = select i1 %i.hg, i1 true, i1 %i.hi
  br i1 %or.cond80.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.bc:                                            ; preds = %bb.ba
  %i.hj = getelementptr inbounds nuw i8, ptr %i.q, i64 28 ; 14 uses
  store i32 %i.hh, ptr %i.hj, align 4, !tbaa !84
  %i.hk = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i32 %i.hh, ptr %i.hk, align 8, !tbaa !61
  %i.hl = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %i.hm = icmp eq i32 %i.hl, 1
  %i.hn = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ho = icmp ult i32 %i.hn, 129
  %or.cond84.not.i = select i1 %i.hm, i1 %i.ho, i1 false
  br i1 %or.cond84.not.i, label %bb.bd, label %.thread851.i

.thread851.i:                                     ; preds = %bb.bc
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.bd:                                            ; preds = %bb.bc
  %i.hp = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %switch.selectcmp1249.i = icmp eq i32 %i.hn, 2
  %switch.select1250.i = select i1 %switch.selectcmp1249.i, i32 2, i32 0
  %switch.selectcmp1251.i = icmp eq i32 %i.hn, 1
  %switch.select1252.i = select i1 %switch.selectcmp1251.i, i32 1, i32 %switch.select1250.i
  store i32 %switch.select1252.i, ptr %i.hp, align 8, !tbaa !85
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %i.hq = call i32 @fgetc(ptr noundef nonnull %i.f)
  switch i32 %i.hq, label %bb.be [
    i32 -1, label %bb.bf
    i32 10, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be
  %i.hr = load i32, ptr %i.he, align 8, !tbaa !83
  %i.hs = add nsw i32 %i.hr, 3
  %i.ht = and i32 %i.hs, -4
  %i.hu = load i32, ptr %i.hj, align 4, !tbaa !84
  %i.hv = add nsw i32 %i.hu, 3
  %i.hw = and i32 %i.hv, -4
  %i.hx = mul i32 %i.ht, 3
  %i.hy = mul i32 %i.hx, %i.hw
  %i.hz = sext i32 %i.hy to i64
  %i.ia = call noalias ptr @av_calloc(i64 noundef %i.hz, i64 noundef 4) #11 ; 5 uses
  %.not758.i = icmp eq ptr %i.ia, null
  br i1 %.not758.i, label %.thread858.i, label %bb.bg

.thread858.i:                                     ; preds = %bb.bf
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.bg:                                            ; preds = %bb.bf
  %i.ib = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !86
  %i.ic = load i32, ptr %i.he, align 8, !tbaa !83 ; 2 uses
  %.not761.not984.i = icmp sgt i32 %i.ic, 0
  br i1 %.not761.not984.i, label %.preheader949.preheader.i, label %.critedge930.i.preheader

.preheader949.preheader.i:                        ; preds = %bb.bg
  %.pre1079.i = load i32, ptr %i.hj, align 4, !tbaa !84
  br label %.preheader949.i

.preheader949.i:                                  ; preds = %.thread855.i, %.preheader949.preheader.i
  %i.id = phi i32 [ %i.jv, %.thread855.i ], [ %i.ic, %.preheader949.preheader.i ]
  %i.ie = phi i32 [ %i.jw, %.thread855.i ], [ %.pre1079.i, %.preheader949.preheader.i ] ; 2 uses
  %.0628985.i = phi i32 [ %i.jx, %.thread855.i ], [ 0, %.preheader949.preheader.i ] ; 4 uses
  %i.if = icmp sgt i32 %i.ie, 0
  br i1 %i.if, label %.lr.ph981.i, label %.thread855.i

.lr.ph981.i:                                      ; preds = %.preheader949.i, %bb.bh
  %.0626980.i = phi i32 [ %i.ir, %bb.bh ], [ 0, %.preheader949.i ] ; 2 uses
  %i.ig = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not759.i = icmp eq i32 %i.ig, 1
  br i1 %.not759.i, label %bb.bh, label %.loopexit1049.i

bb.bh:                                            ; preds = %.lr.ph981.i
  %i.ih = load i32, ptr %i.a, align 4, !tbaa !52
  %i.ii = sitofp nsz i32 %i.ih to float
  %i.ij = mul nuw nsw i32 %.0626980.i, 3
  %i.ik = load i32, ptr %i.he, align 8, !tbaa !83 ; 2 uses
  %i.il = add nsw i32 %i.ik, 3
  %i.im = and i32 %i.il, -4
  %i.in = mul i32 %i.ij, %i.im
  %i.io = add nsw i32 %i.in, %.0628985.i
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.ip
  store float %i.ii, ptr %i.iq, align 4, !tbaa !26
  %i.ir = add nuw nsw i32 %.0626980.i, 1          ; 2 uses
  %i.is = load i32, ptr %i.hj, align 4, !tbaa !84 ; 3 uses
  %.not760.i = icmp slt i32 %i.ir, %i.is
  br i1 %.not760.i, label %.lr.ph981.i, label %._crit_edge982.i, !llvm.loop !111

._crit_edge982.i:                                 ; preds = %bb.bh
  %.not760979.1.i = icmp sgt i32 %i.is, 0
  br i1 %.not760979.1.i, label %.lr.ph981.1.i, label %.thread855.i

.lr.ph981.1.i:                                    ; preds = %._crit_edge982.i, %bb.bi
  %.0626980.1.i = phi i32 [ %i.jf, %bb.bi ], [ 0, %._crit_edge982.i ] ; 2 uses
  %i.it = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not759.1.i = icmp eq i32 %i.it, 1
  br i1 %.not759.1.i, label %bb.bi, label %.loopexit1049.i

bb.bi:                                            ; preds = %.lr.ph981.1.i
  %i.iu = load i32, ptr %i.a, align 4, !tbaa !52
  %i.iv = sitofp nsz i32 %i.iu to float
  %i.iw = mul nuw nsw i32 %.0626980.1.i, 3
  %i.ix = load i32, ptr %i.he, align 8, !tbaa !83 ; 2 uses
  %i.iy = add nsw i32 %i.ix, 3
  %i.iz = and i32 %i.iy, -4
  %i.ja = add nuw i32 %i.iw, 1
  %i.jb = mul i32 %i.iz, %i.ja
  %i.jc = add nsw i32 %i.jb, %.0628985.i
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.jd
  store float %i.iv, ptr %i.je, align 4, !tbaa !26
  %i.jf = add nuw nsw i32 %.0626980.1.i, 1        ; 2 uses
  %i.jg = load i32, ptr %i.hj, align 4, !tbaa !84 ; 3 uses
  %.not760.1.i = icmp slt i32 %i.jf, %i.jg
  br i1 %.not760.1.i, label %.lr.ph981.1.i, label %._crit_edge982.1.i, !llvm.loop !111

._crit_edge982.1.i:                               ; preds = %bb.bi
  %.not760979.2.i = icmp sgt i32 %i.jg, 0
  br i1 %.not760979.2.i, label %.lr.ph981.2.i, label %.thread855.i

.lr.ph981.2.i:                                    ; preds = %._crit_edge982.1.i, %bb.bj
  %.0626980.2.i = phi i32 [ %i.jt, %bb.bj ], [ 0, %._crit_edge982.1.i ] ; 2 uses
  %i.jh = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not759.2.i = icmp eq i32 %i.jh, 1
  br i1 %.not759.2.i, label %bb.bj, label %.loopexit1049.i

bb.bj:                                            ; preds = %.lr.ph981.2.i
  %i.ji = load i32, ptr %i.a, align 4, !tbaa !52
  %i.jj = sitofp nsz i32 %i.ji to float
  %i.jk = mul nuw nsw i32 %.0626980.2.i, 3
  %i.jl = load i32, ptr %i.he, align 8, !tbaa !83 ; 2 uses
  %i.jm = add nsw i32 %i.jl, 3
  %i.jn = and i32 %i.jm, -4
  %i.jo = add nuw i32 %i.jk, 2
  %i.jp = mul i32 %i.jn, %i.jo
  %i.jq = add nsw i32 %i.jp, %.0628985.i
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.jr
  store float %i.jj, ptr %i.js, align 4, !tbaa !26
  %i.jt = add nuw nsw i32 %.0626980.2.i, 1        ; 2 uses
  %i.ju = load i32, ptr %i.hj, align 4, !tbaa !84 ; 2 uses
  %.not760.2.i = icmp slt i32 %i.jt, %i.ju
  br i1 %.not760.2.i, label %.lr.ph981.2.i, label %.thread855.i, !llvm.loop !111

.loopexit1049.i:                                  ; preds = %.lr.ph981.i, %.lr.ph981.1.i, %.lr.ph981.2.i
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

.thread855.i:                                     ; preds = %bb.bj, %._crit_edge982.1.i, %._crit_edge982.i, %.preheader949.i
  %i.jv = phi i32 [ %i.id, %.preheader949.i ], [ %i.ik, %._crit_edge982.i ], [ %i.ix, %._crit_edge982.1.i ], [ %i.jl, %bb.bj ] ; 2 uses
  %i.jw = phi i32 [ %i.ie, %.preheader949.i ], [ %i.is, %._crit_edge982.i ], [ %i.jg, %._crit_edge982.1.i ], [ %i.ju, %bb.bj ]
  %i.jx = add nuw nsw i32 %.0628985.i, 1          ; 2 uses
  %.not761.not.i = icmp slt i32 %i.jx, %i.jv
  br i1 %.not761.not.i, label %.preheader949.i, label %.critedge930.i.preheader, !llvm.loop !112

.critedge930.i.preheader:                         ; preds = %.thread855.i, %bb.bg
  br label %.critedge930.i

.critedge930.i:                                   ; preds = %.critedge930.i.preheader, %.critedge930.i
  %i.jy = call i32 @fgetc(ptr noundef nonnull %i.f)
  switch i32 %i.jy, label %.critedge930.i [
    i32 -1, label %bb.bk
    i32 10, label %bb.bk
  ]

bb.bk:                                            ; preds = %.critedge930.i, %.critedge930.i
  %i.jz = load i32, ptr %i.hj, align 4, !tbaa !84
  %i.ka = add nsw i32 %i.jz, 3
  %i.kb = and i32 %i.ka, -4                       ; 2 uses
  %i.kc = mul i32 %i.kb, 3
  %i.kd = mul i32 %i.kc, %i.kb
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = call noalias ptr @av_calloc(i64 noundef %i.ke, i64 noundef 4) #11 ; 5 uses
  %.not762.i = icmp eq ptr %i.kf, null
  br i1 %.not762.i, label %.thread866.i, label %bb.bl

.thread866.i:                                     ; preds = %bb.bk
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.bl:                                            ; preds = %bb.bk
  %i.kg = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !87
  %i.kh = load i32, ptr %i.hj, align 4, !tbaa !84
  %.not765.not991.i = icmp sgt i32 %i.kh, 0
  br i1 %.not765.not991.i, label %.preheader947.i, label %.critedge932.i.preheader

.preheader947.i:                                  ; preds = %bb.bl, %.thread863.i
  %.0625992.i = phi i32 [ %i.lu, %.thread863.i ], [ 0, %bb.bl ] ; 4 uses
  br label %.lr.ph988.i

.lr.ph988.i:                                      ; preds = %.preheader947.i, %bb.bm
  %.0623987.i = phi i32 [ %i.kt, %bb.bm ], [ 0, %.preheader947.i ] ; 2 uses
  %i.ki = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not763.i = icmp eq i32 %i.ki, 1
  br i1 %.not763.i, label %bb.bm, label %.loopexit1052.i

bb.bm:                                            ; preds = %.lr.ph988.i
  %i.kj = load i32, ptr %i.a, align 4, !tbaa !52
  %i.kk = sitofp nsz i32 %i.kj to float
  %i.kl = mul nuw nsw i32 %.0623987.i, 3
  %i.km = load i32, ptr %i.hj, align 4, !tbaa !84 ; 4 uses
  %i.kn = add nsw i32 %i.km, 3
  %i.ko = and i32 %i.kn, -4
  %i.kp = mul i32 %i.kl, %i.ko
  %i.kq = add nsw i32 %i.kp, %.0625992.i
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.kr
  store float %i.kk, ptr %i.ks, align 4, !tbaa !26
  %i.kt = add nuw nsw i32 %.0623987.i, 1          ; 2 uses
  %.not764.i = icmp slt i32 %i.kt, %i.km
  br i1 %.not764.i, label %.lr.ph988.i, label %._crit_edge989.i, !llvm.loop !113

._crit_edge989.i:                                 ; preds = %bb.bm
  %.not764986.1.i = icmp sgt i32 %i.km, 0
  br i1 %.not764986.1.i, label %.lr.ph988.1.i, label %.thread863.i

.lr.ph988.1.i:                                    ; preds = %._crit_edge989.i, %bb.bn
  %.0623987.1.i = phi i32 [ %i.lg, %bb.bn ], [ 0, %._crit_edge989.i ] ; 2 uses
  %i.ku = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not763.1.i = icmp eq i32 %i.ku, 1
  br i1 %.not763.1.i, label %bb.bn, label %.loopexit1052.i

bb.bn:                                            ; preds = %.lr.ph988.1.i
  %i.kv = load i32, ptr %i.a, align 4, !tbaa !52
  %i.kw = sitofp nsz i32 %i.kv to float
  %i.kx = mul nuw nsw i32 %.0623987.1.i, 3
  %i.ky = load i32, ptr %i.hj, align 4, !tbaa !84 ; 4 uses
  %i.kz = add nsw i32 %i.ky, 3
  %i.la = and i32 %i.kz, -4
  %i.lb = add nuw i32 %i.kx, 1
  %i.lc = mul i32 %i.la, %i.lb
  %i.ld = add nsw i32 %i.lc, %.0625992.i
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.le
  store float %i.kw, ptr %i.lf, align 4, !tbaa !26
  %i.lg = add nuw nsw i32 %.0623987.1.i, 1        ; 2 uses
  %.not764.1.i = icmp slt i32 %i.lg, %i.ky
  br i1 %.not764.1.i, label %.lr.ph988.1.i, label %._crit_edge989.1.i, !llvm.loop !113

._crit_edge989.1.i:                               ; preds = %bb.bn
  %.not764986.2.i = icmp sgt i32 %i.ky, 0
  br i1 %.not764986.2.i, label %.lr.ph988.2.i, label %.thread863.i

.lr.ph988.2.i:                                    ; preds = %._crit_edge989.1.i, %bb.bo
  %.0623987.2.i = phi i32 [ %i.lt, %bb.bo ], [ 0, %._crit_edge989.1.i ] ; 2 uses
  %i.lh = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not763.2.i = icmp eq i32 %i.lh, 1
  br i1 %.not763.2.i, label %bb.bo, label %.loopexit1052.i

bb.bo:                                            ; preds = %.lr.ph988.2.i
  %i.li = load i32, ptr %i.a, align 4, !tbaa !52
  %i.lj = sitofp nsz i32 %i.li to float
  %i.lk = mul nuw nsw i32 %.0623987.2.i, 3
  %i.ll = load i32, ptr %i.hj, align 4, !tbaa !84 ; 3 uses
  %i.lm = add nsw i32 %i.ll, 3
  %i.ln = and i32 %i.lm, -4
  %i.lo = add nuw i32 %i.lk, 2
  %i.lp = mul i32 %i.ln, %i.lo
  %i.lq = add nsw i32 %i.lp, %.0625992.i
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.lr
  store float %i.lj, ptr %i.ls, align 4, !tbaa !26
  %i.lt = add nuw nsw i32 %.0623987.2.i, 1        ; 2 uses
  %.not764.2.i = icmp slt i32 %i.lt, %i.ll
  br i1 %.not764.2.i, label %.lr.ph988.2.i, label %.thread863.i, !llvm.loop !113

.loopexit1052.i:                                  ; preds = %.lr.ph988.i, %.lr.ph988.1.i, %.lr.ph988.2.i
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

.thread863.i:                                     ; preds = %bb.bo, %._crit_edge989.1.i, %._crit_edge989.i
  %3 = phi i32 [ %i.ky, %._crit_edge989.1.i ], [ %i.km, %._crit_edge989.i ], [ %i.ll, %bb.bo ]
  %i.lu = add nuw nsw i32 %.0625992.i, 1          ; 2 uses
  %.not765.not.i = icmp slt i32 %i.lu, %3
  br i1 %.not765.not.i, label %.preheader947.i, label %.critedge932.i.preheader, !llvm.loop !114

.critedge932.i.preheader:                         ; preds = %.thread863.i, %bb.bl
  br label %.critedge932.i

.critedge932.i:                                   ; preds = %.critedge932.i.preheader, %.critedge932.i
  %i.lv = call i32 @fgetc(ptr noundef nonnull %i.f)
  switch i32 %i.lv, label %.critedge932.i [
    i32 -1, label %bb.bp
    i32 10, label %bb.bp
  ]

bb.bp:                                            ; preds = %.critedge932.i, %.critedge932.i
  %i.lw = load i32, ptr %i.hj, align 4, !tbaa !84
  %i.lx = mul nsw i32 %i.lw, 3
  %i.ly = sext i32 %i.lx to i64
  %i.lz = call noalias ptr @av_calloc(i64 noundef %i.ly, i64 noundef 4) #11 ; 3 uses
  %.not766.i = icmp eq ptr %i.lz, null
  br i1 %.not766.i, label %.thread869.i, label %bb.bq

.thread869.i:                                     ; preds = %bb.bp
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.bq:                                            ; preds = %bb.bp
  store ptr %i.lz, ptr %i.q, align 8, !tbaa !88
  %i.ma = load i32, ptr %i.hj, align 4, !tbaa !84
  %.not768993.i = icmp sgt i32 %i.ma, 0
  br i1 %.not768993.i, label %.lr.ph996.i, label %.preheader945.i.preheader

.lr.ph996.i:                                      ; preds = %bb.bq, %bb.br
  %indvars.iv1055.i = phi i64 [ %indvars.iv.next1056.i, %bb.br ], [ 0, %bb.bq ] ; 2 uses
  %i.mb = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not767.i = icmp eq i32 %i.mb, 1
  br i1 %.not767.i, label %bb.br, label %.thread872.i

.thread872.i:                                     ; preds = %.lr.ph996.i
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.br:                                            ; preds = %.lr.ph996.i
  %i.mc = load i32, ptr %i.a, align 4, !tbaa !52
  %i.md = sitofp nsz i32 %i.mc to float
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv1055.i
  store float %i.md, ptr %i.me, align 4, !tbaa !26
  %indvars.iv.next1056.i = add nuw nsw i64 %indvars.iv1055.i, 1 ; 2 uses
  %i.mf = load i32, ptr %i.hj, align 4, !tbaa !84
  %i.mg = mul nsw i32 %i.mf, 3
  %i.mh = sext i32 %i.mg to i64
  %.not768.i = icmp slt i64 %indvars.iv.next1056.i, %i.mh
  br i1 %.not768.i, label %.lr.ph996.i, label %.preheader945.i.preheader, !llvm.loop !115

.preheader945.i.preheader:                        ; preds = %bb.br, %bb.bq
  br label %.preheader945.i

.preheader945.i:                                  ; preds = %.preheader945.i.preheader, %.preheader945.i
  %i.mi = call i32 @fgetc(ptr noundef nonnull %i.f)
  switch i32 %i.mi, label %.preheader945.i [
    i32 -1, label %bb.bs
    i32 10, label %bb.bs
  ]

bb.bs:                                            ; preds = %.preheader945.i, %.preheader945.i
  %i.mj = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %i.mk = icmp ne i32 %i.mj, 1
  %i.ml = load i32, ptr %i.a, align 4             ; 2 uses
  %i.mm = icmp ugt i32 %i.ml, 128
  %or.cond88.i = select i1 %i.mk, i1 true, i1 %i.mm
  br i1 %or.cond88.i, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.bu:                                            ; preds = %bb.bs
  %i.mn = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 6 uses
  store i32 %i.ml, ptr %i.mn, align 8, !tbaa !83
  %i.mo = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %i.mp = icmp ne i32 %i.mo, 1
  %i.mq = load i32, ptr %i.a, align 4             ; 3 uses
  %i.mr = icmp ugt i32 %i.mq, 128
  %or.cond92.i = select i1 %i.mp, i1 true, i1 %i.mr
  br i1 %or.cond92.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.bw:                                            ; preds = %bb.bu
  %i.ms = getelementptr inbounds nuw i8, ptr %i.s, i64 28 ; 14 uses
  store i32 %i.mq, ptr %i.ms, align 4, !tbaa !84
  %i.mt = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i32 %i.mq, ptr %i.mt, align 8, !tbaa !63
  %i.mu = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %i.mv = icmp eq i32 %i.mu, 1
  %i.mw = load i32, ptr %i.a, align 4             ; 3 uses
  %i.mx = icmp ult i32 %i.mw, 129
  %or.cond96.not.i = select i1 %i.mv, i1 %i.mx, i1 false
  br i1 %or.cond96.not.i, label %bb.bx, label %.thread875.i

.thread875.i:                                     ; preds = %bb.bw
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.bx:                                            ; preds = %bb.bw
  %i.my = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %switch.selectcmp1253.i = icmp eq i32 %i.mw, 2
  %switch.select1254.i = select i1 %switch.selectcmp1253.i, i32 2, i32 0
  %switch.selectcmp1255.i = icmp eq i32 %i.mw, 1
  %switch.select1256.i = select i1 %switch.selectcmp1255.i, i32 1, i32 %switch.select1254.i
  store i32 %switch.select1256.i, ptr %i.my, align 8, !tbaa !85
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %bb.bx
  %i.mz = call i32 @fgetc(ptr noundef nonnull %i.f)
  switch i32 %i.mz, label %bb.by [
    i32 -1, label %bb.bz
    i32 10, label %bb.bz
  ]

bb.bz:                                            ; preds = %bb.by, %bb.by
  %i.na = load i32, ptr %i.mn, align 8, !tbaa !83
  %i.nb = add nsw i32 %i.na, 3
  %i.nc = and i32 %i.nb, -4
  %i.nd = load i32, ptr %i.ms, align 4, !tbaa !84
  %i.ne = add nsw i32 %i.nd, 3
  %i.nf = and i32 %i.ne, -4
  %i.ng = mul i32 %i.nc, 3
  %i.nh = mul i32 %i.ng, %i.nf
  %i.ni = sext i32 %i.nh to i64
  %i.nj = call noalias ptr @av_calloc(i64 noundef %i.ni, i64 noundef 4) #11 ; 5 uses
  %.not772.i = icmp eq ptr %i.nj, null
  br i1 %.not772.i, label %.thread882.i, label %bb.ca

.thread882.i:                                     ; preds = %bb.bz
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.ca:                                            ; preds = %bb.bz
  %i.nk = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.nj, ptr %i.nk, align 8, !tbaa !86
  %i.nl = load i32, ptr %i.mn, align 8, !tbaa !83 ; 2 uses
  %.not775.not1002.i = icmp sgt i32 %i.nl, 0
  br i1 %.not775.not1002.i, label %.preheader944.preheader.i, label %.critedge934.i.preheader

.preheader944.preheader.i:                        ; preds = %bb.ca
  %.pre1080.i = load i32, ptr %i.ms, align 4, !tbaa !84
  br label %.preheader944.i

.preheader944.i:                                  ; preds = %.thread879.i, %.preheader944.preheader.i
  %i.nm = phi i32 [ %i.pe, %.thread879.i ], [ %i.nl, %.preheader944.preheader.i ]
  %i.nn = phi i32 [ %i.pf, %.thread879.i ], [ %.pre1080.i, %.preheader944.preheader.i ] ; 2 uses
  %.06211003.i = phi i32 [ %i.pg, %.thread879.i ], [ 0, %.preheader944.preheader.i ] ; 4 uses
  %i.no = icmp sgt i32 %i.nn, 0
  br i1 %i.no, label %.lr.ph999.i, label %.thread879.i

.lr.ph999.i:                                      ; preds = %.preheader944.i, %bb.cb
  %.0619998.i = phi i32 [ %i.oa, %bb.cb ], [ 0, %.preheader944.i ] ; 2 uses
  %i.np = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not773.i = icmp eq i32 %i.np, 1
  br i1 %.not773.i, label %bb.cb, label %.loopexit1058.i

bb.cb:                                            ; preds = %.lr.ph999.i
  %i.nq = load i32, ptr %i.a, align 4, !tbaa !52
  %i.nr = sitofp nsz i32 %i.nq to float
  %i.ns = mul nuw nsw i32 %.0619998.i, 3
  %i.nt = load i32, ptr %i.mn, align 8, !tbaa !83 ; 2 uses
  %i.nu = add nsw i32 %i.nt, 3
  %i.nv = and i32 %i.nu, -4
  %i.nw = mul i32 %i.ns, %i.nv
  %i.nx = add nsw i32 %i.nw, %.06211003.i
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.ny
  store float %i.nr, ptr %i.nz, align 4, !tbaa !26
  %i.oa = add nuw nsw i32 %.0619998.i, 1          ; 2 uses
  %i.ob = load i32, ptr %i.ms, align 4, !tbaa !84 ; 3 uses
  %.not774.i = icmp slt i32 %i.oa, %i.ob
  br i1 %.not774.i, label %.lr.ph999.i, label %._crit_edge1000.i, !llvm.loop !116

._crit_edge1000.i:                                ; preds = %bb.cb
  %.not774997.1.i = icmp sgt i32 %i.ob, 0
  br i1 %.not774997.1.i, label %.lr.ph999.1.i, label %.thread879.i

.lr.ph999.1.i:                                    ; preds = %._crit_edge1000.i, %bb.cc
  %.0619998.1.i = phi i32 [ %i.oo, %bb.cc ], [ 0, %._crit_edge1000.i ] ; 2 uses
  %i.oc = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not773.1.i = icmp eq i32 %i.oc, 1
  br i1 %.not773.1.i, label %bb.cc, label %.loopexit1058.i

bb.cc:                                            ; preds = %.lr.ph999.1.i
  %i.od = load i32, ptr %i.a, align 4, !tbaa !52
  %i.oe = sitofp nsz i32 %i.od to float
  %i.of = mul nuw nsw i32 %.0619998.1.i, 3
  %i.og = load i32, ptr %i.mn, align 8, !tbaa !83 ; 2 uses
  %i.oh = add nsw i32 %i.og, 3
  %i.oi = and i32 %i.oh, -4
  %i.oj = add nuw i32 %i.of, 1
  %i.ok = mul i32 %i.oi, %i.oj
  %i.ol = add nsw i32 %i.ok, %.06211003.i
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.om
  store float %i.oe, ptr %i.on, align 4, !tbaa !26
  %i.oo = add nuw nsw i32 %.0619998.1.i, 1        ; 2 uses
  %i.op = load i32, ptr %i.ms, align 4, !tbaa !84 ; 3 uses
  %.not774.1.i = icmp slt i32 %i.oo, %i.op
  br i1 %.not774.1.i, label %.lr.ph999.1.i, label %._crit_edge1000.1.i, !llvm.loop !116

._crit_edge1000.1.i:                              ; preds = %bb.cc
  %.not774997.2.i = icmp sgt i32 %i.op, 0
  br i1 %.not774997.2.i, label %.lr.ph999.2.i, label %.thread879.i

.lr.ph999.2.i:                                    ; preds = %._crit_edge1000.1.i, %bb.cd
  %.0619998.2.i = phi i32 [ %i.pc, %bb.cd ], [ 0, %._crit_edge1000.1.i ] ; 2 uses
  %i.oq = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not773.2.i = icmp eq i32 %i.oq, 1
  br i1 %.not773.2.i, label %bb.cd, label %.loopexit1058.i

bb.cd:                                            ; preds = %.lr.ph999.2.i
  %i.or = load i32, ptr %i.a, align 4, !tbaa !52
  %i.os = sitofp nsz i32 %i.or to float
  %i.ot = mul nuw nsw i32 %.0619998.2.i, 3
  %i.ou = load i32, ptr %i.mn, align 8, !tbaa !83 ; 2 uses
  %i.ov = add nsw i32 %i.ou, 3
  %i.ow = and i32 %i.ov, -4
  %i.ox = add nuw i32 %i.ot, 2
  %i.oy = mul i32 %i.ow, %i.ox
  %i.oz = add nsw i32 %i.oy, %.06211003.i
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.pa
  store float %i.os, ptr %i.pb, align 4, !tbaa !26
  %i.pc = add nuw nsw i32 %.0619998.2.i, 1        ; 2 uses
  %i.pd = load i32, ptr %i.ms, align 4, !tbaa !84 ; 2 uses
  %.not774.2.i = icmp slt i32 %i.pc, %i.pd
  br i1 %.not774.2.i, label %.lr.ph999.2.i, label %.thread879.i, !llvm.loop !116

.loopexit1058.i:                                  ; preds = %.lr.ph999.i, %.lr.ph999.1.i, %.lr.ph999.2.i
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

.thread879.i:                                     ; preds = %bb.cd, %._crit_edge1000.1.i, %._crit_edge1000.i, %.preheader944.i
  %i.pe = phi i32 [ %i.nm, %.preheader944.i ], [ %i.nt, %._crit_edge1000.i ], [ %i.og, %._crit_edge1000.1.i ], [ %i.ou, %bb.cd ] ; 2 uses
  %i.pf = phi i32 [ %i.nn, %.preheader944.i ], [ %i.ob, %._crit_edge1000.i ], [ %i.op, %._crit_edge1000.1.i ], [ %i.pd, %bb.cd ]
  %i.pg = add nuw nsw i32 %.06211003.i, 1         ; 2 uses
  %.not775.not.i = icmp slt i32 %i.pg, %i.pe
  br i1 %.not775.not.i, label %.preheader944.i, label %.critedge934.i.preheader, !llvm.loop !117

.critedge934.i.preheader:                         ; preds = %.thread879.i, %bb.ca
  br label %.critedge934.i

.critedge934.i:                                   ; preds = %.critedge934.i.preheader, %.critedge934.i
  %i.ph = call i32 @fgetc(ptr noundef nonnull %i.f)
  switch i32 %i.ph, label %.critedge934.i [
    i32 -1, label %bb.ce
    i32 10, label %bb.ce
  ]

bb.ce:                                            ; preds = %.critedge934.i, %.critedge934.i
  %i.pi = load i32, ptr %i.ms, align 4, !tbaa !84
  %i.pj = add nsw i32 %i.pi, 3
  %i.pk = and i32 %i.pj, -4                       ; 2 uses
  %i.pl = mul i32 %i.pk, 3
  %i.pm = mul i32 %i.pl, %i.pk
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = call noalias ptr @av_calloc(i64 noundef %i.pn, i64 noundef 4) #11 ; 5 uses
  %.not776.i = icmp eq ptr %i.po, null
  br i1 %.not776.i, label %.thread890.i, label %bb.cf

.thread890.i:                                     ; preds = %bb.ce
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.cf:                                            ; preds = %bb.ce
  %i.pp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.po, ptr %i.pp, align 8, !tbaa !87
  %i.pq = load i32, ptr %i.ms, align 4, !tbaa !84
  %.not779.not1009.i = icmp sgt i32 %i.pq, 0
  br i1 %.not779.not1009.i, label %.preheader942.i, label %.critedge936.i.preheader

.preheader942.i:                                  ; preds = %bb.cf, %.thread887.i
  %.06181010.i = phi i32 [ %i.rd, %.thread887.i ], [ 0, %bb.cf ] ; 4 uses
  br label %.lr.ph1006.i

.lr.ph1006.i:                                     ; preds = %.preheader942.i, %bb.cg
  %.06161005.i = phi i32 [ %i.qc, %bb.cg ], [ 0, %.preheader942.i ] ; 2 uses
  %i.pr = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not777.i = icmp eq i32 %i.pr, 1
  br i1 %.not777.i, label %bb.cg, label %.loopexit1061.i

bb.cg:                                            ; preds = %.lr.ph1006.i
  %i.ps = load i32, ptr %i.a, align 4, !tbaa !52
  %i.pt = sitofp nsz i32 %i.ps to float
  %i.pu = mul nuw nsw i32 %.06161005.i, 3
  %i.pv = load i32, ptr %i.ms, align 4, !tbaa !84 ; 4 uses
  %i.pw = add nsw i32 %i.pv, 3
  %i.px = and i32 %i.pw, -4
  %i.py = mul i32 %i.pu, %i.px
  %i.pz = add nsw i32 %i.py, %.06181010.i
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.po, i64 %i.qa
  store float %i.pt, ptr %i.qb, align 4, !tbaa !26
  %i.qc = add nuw nsw i32 %.06161005.i, 1         ; 2 uses
  %.not778.i = icmp slt i32 %i.qc, %i.pv
  br i1 %.not778.i, label %.lr.ph1006.i, label %._crit_edge1007.i, !llvm.loop !118

._crit_edge1007.i:                                ; preds = %bb.cg
  %.not7781004.1.i = icmp sgt i32 %i.pv, 0
  br i1 %.not7781004.1.i, label %.lr.ph1006.1.i, label %.thread887.i

.lr.ph1006.1.i:                                   ; preds = %._crit_edge1007.i, %bb.ch
  %.06161005.1.i = phi i32 [ %i.qp, %bb.ch ], [ 0, %._crit_edge1007.i ] ; 2 uses
  %i.qd = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not777.1.i = icmp eq i32 %i.qd, 1
  br i1 %.not777.1.i, label %bb.ch, label %.loopexit1061.i

bb.ch:                                            ; preds = %.lr.ph1006.1.i
  %i.qe = load i32, ptr %i.a, align 4, !tbaa !52
  %i.qf = sitofp nsz i32 %i.qe to float
  %i.qg = mul nuw nsw i32 %.06161005.1.i, 3
  %i.qh = load i32, ptr %i.ms, align 4, !tbaa !84 ; 4 uses
  %i.qi = add nsw i32 %i.qh, 3
  %i.qj = and i32 %i.qi, -4
  %i.qk = add nuw i32 %i.qg, 1
  %i.ql = mul i32 %i.qj, %i.qk
  %i.qm = add nsw i32 %i.ql, %.06181010.i
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.po, i64 %i.qn
  store float %i.qf, ptr %i.qo, align 4, !tbaa !26
  %i.qp = add nuw nsw i32 %.06161005.1.i, 1       ; 2 uses
  %.not778.1.i = icmp slt i32 %i.qp, %i.qh
  br i1 %.not778.1.i, label %.lr.ph1006.1.i, label %._crit_edge1007.1.i, !llvm.loop !118

._crit_edge1007.1.i:                              ; preds = %bb.ch
  %.not7781004.2.i = icmp sgt i32 %i.qh, 0
  br i1 %.not7781004.2.i, label %.lr.ph1006.2.i, label %.thread887.i

.lr.ph1006.2.i:                                   ; preds = %._crit_edge1007.1.i, %bb.ci
  %.06161005.2.i = phi i32 [ %i.rc, %bb.ci ], [ 0, %._crit_edge1007.1.i ] ; 2 uses
  %i.qq = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not777.2.i = icmp eq i32 %i.qq, 1
  br i1 %.not777.2.i, label %bb.ci, label %.loopexit1061.i

bb.ci:                                            ; preds = %.lr.ph1006.2.i
  %i.qr = load i32, ptr %i.a, align 4, !tbaa !52
  %i.qs = sitofp nsz i32 %i.qr to float
  %i.qt = mul nuw nsw i32 %.06161005.2.i, 3
  %i.qu = load i32, ptr %i.ms, align 4, !tbaa !84 ; 3 uses
  %i.qv = add nsw i32 %i.qu, 3
  %i.qw = and i32 %i.qv, -4
  %i.qx = add nuw i32 %i.qt, 2
  %i.qy = mul i32 %i.qw, %i.qx
  %i.qz = add nsw i32 %i.qy, %.06181010.i
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.po, i64 %i.ra
  store float %i.qs, ptr %i.rb, align 4, !tbaa !26
  %i.rc = add nuw nsw i32 %.06161005.2.i, 1       ; 2 uses
  %.not778.2.i = icmp slt i32 %i.rc, %i.qu
  br i1 %.not778.2.i, label %.lr.ph1006.2.i, label %.thread887.i, !llvm.loop !118

.loopexit1061.i:                                  ; preds = %.lr.ph1006.i, %.lr.ph1006.1.i, %.lr.ph1006.2.i
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

.thread887.i:                                     ; preds = %bb.ci, %._crit_edge1007.1.i, %._crit_edge1007.i
  %4 = phi i32 [ %i.qh, %._crit_edge1007.1.i ], [ %i.pv, %._crit_edge1007.i ], [ %i.qu, %bb.ci ]
  %i.rd = add nuw nsw i32 %.06181010.i, 1         ; 2 uses
  %.not779.not.i = icmp slt i32 %i.rd, %4
  br i1 %.not779.not.i, label %.preheader942.i, label %.critedge936.i.preheader, !llvm.loop !119

.critedge936.i.preheader:                         ; preds = %.thread887.i, %bb.cf
  br label %.critedge936.i

.critedge936.i:                                   ; preds = %.critedge936.i.preheader, %.critedge936.i
  %i.re = call i32 @fgetc(ptr noundef nonnull %i.f)
  switch i32 %i.re, label %.critedge936.i [
    i32 -1, label %bb.cj
    i32 10, label %bb.cj
  ]

bb.cj:                                            ; preds = %.critedge936.i, %.critedge936.i
  %i.rf = load i32, ptr %i.ms, align 4, !tbaa !84
  %i.rg = mul nsw i32 %i.rf, 3
  %i.rh = sext i32 %i.rg to i64
  %i.ri = call noalias ptr @av_calloc(i64 noundef %i.rh, i64 noundef 4) #11 ; 3 uses
  %.not780.i = icmp eq ptr %i.ri, null
  br i1 %.not780.i, label %.thread893.i, label %bb.ck

.thread893.i:                                     ; preds = %bb.cj
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.ck:                                            ; preds = %bb.cj
  store ptr %i.ri, ptr %i.s, align 8, !tbaa !88
  %i.rj = load i32, ptr %i.ms, align 4, !tbaa !84
  %.not7821011.i = icmp sgt i32 %i.rj, 0
  br i1 %.not7821011.i, label %.lr.ph1014.i, label %.preheader940.i.preheader

.lr.ph1014.i:                                     ; preds = %bb.ck, %bb.cl
  %indvars.iv1064.i = phi i64 [ %indvars.iv.next1065.i, %bb.cl ], [ 0, %bb.ck ] ; 2 uses
  %i.rk = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not781.i = icmp eq i32 %i.rk, 1
  br i1 %.not781.i, label %bb.cl, label %.thread896.i

.thread896.i:                                     ; preds = %.lr.ph1014.i
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.cl:                                            ; preds = %.lr.ph1014.i
  %i.rl = load i32, ptr %i.a, align 4, !tbaa !52
  %i.rm = sitofp nsz i32 %i.rl to float
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv1064.i
  store float %i.rm, ptr %i.rn, align 4, !tbaa !26
  %indvars.iv.next1065.i = add nuw nsw i64 %indvars.iv1064.i, 1 ; 2 uses
  %i.ro = load i32, ptr %i.ms, align 4, !tbaa !84
  %i.rp = mul nsw i32 %i.ro, 3
  %i.rq = sext i32 %i.rp to i64
  %.not782.i = icmp slt i64 %indvars.iv.next1065.i, %i.rq
  br i1 %.not782.i, label %.lr.ph1014.i, label %.preheader940.i.preheader, !llvm.loop !120

.preheader940.i.preheader:                        ; preds = %bb.cl, %bb.ck
  br label %.preheader940.i

.preheader940.i:                                  ; preds = %.preheader940.i.preheader, %.preheader940.i
  %i.rr = call i32 @fgetc(ptr noundef nonnull %i.f)
  switch i32 %i.rr, label %.preheader940.i [
    i32 -1, label %bb.cm
    i32 10, label %bb.cm
  ]

bb.cm:                                            ; preds = %.preheader940.i, %.preheader940.i
  %i.rs = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %i.rt = icmp ne i32 %i.rs, 1
  %i.ru = load i32, ptr %i.a, align 4             ; 2 uses
  %i.rv = icmp ugt i32 %i.ru, 128
  %or.cond100.i = select i1 %i.rt, i1 true, i1 %i.rv
  br i1 %or.cond100.i, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.co:                                            ; preds = %bb.cm
  %i.rw = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 4 uses
  store i32 %i.ru, ptr %i.rw, align 8, !tbaa !76
  %i.rx = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %i.ry = icmp ne i32 %i.rx, 1
  %i.rz = load i32, ptr %i.a, align 4             ; 3 uses
  %i.sa = icmp ugt i32 %i.rz, 128
  %or.cond104.i = select i1 %i.ry, i1 true, i1 %i.sa
  br i1 %or.cond104.i, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.cq:                                            ; preds = %bb.co
  %i.sb = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 7 uses
  store i32 %i.rz, ptr %i.sb, align 4, !tbaa !77
  %i.sc = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i32 %i.rz, ptr %i.sc, align 8, !tbaa !126
  %i.sd = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %i.se = icmp eq i32 %i.sd, 1
  %i.sf = load i32, ptr %i.a, align 4             ; 3 uses
  %i.sg = icmp ult i32 %i.sf, 129
  %or.cond108.not.i = select i1 %i.se, i1 %i.sg, i1 false
  br i1 %or.cond108.not.i, label %bb.cr, label %.thread899.i

.thread899.i:                                     ; preds = %bb.cq
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.cr:                                            ; preds = %bb.cq
  %i.sh = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %switch.selectcmp1257.i = icmp eq i32 %i.sf, 2
  %switch.select1258.i = select i1 %switch.selectcmp1257.i, i32 2, i32 0
  %switch.selectcmp1259.i = icmp eq i32 %i.sf, 1
  %switch.select1260.i = select i1 %switch.selectcmp1259.i, i32 1, i32 %switch.select1258.i
  store i32 %switch.select1260.i, ptr %i.sh, align 8, !tbaa !79
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %bb.cr
  %i.si = call i32 @fgetc(ptr noundef nonnull %i.f)
  switch i32 %i.si, label %bb.cs [
    i32 -1, label %bb.ct
    i32 10, label %bb.ct
  ]

bb.ct:                                            ; preds = %bb.cs, %bb.cs
  %i.sj = load i32, ptr %i.rw, align 8, !tbaa !76
  %i.sk = load i32, ptr %i.sb, align 4, !tbaa !77
  %i.sl = mul nsw i32 %i.sk, %i.sj
  %i.sm = sext i32 %i.sl to i64
  %i.sn = call noalias ptr @av_calloc(i64 noundef %i.sm, i64 noundef 4) #11 ; 3 uses
  %.not786.i = icmp eq ptr %i.sn, null
  br i1 %.not786.i, label %.thread901.i, label %bb.cu

.thread901.i:                                     ; preds = %bb.ct
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.cu:                                            ; preds = %bb.ct
  %i.so = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.sn, ptr %i.so, align 8, !tbaa !80
  %i.sp = load i32, ptr %i.rw, align 8, !tbaa !76
  %i.sq = load i32, ptr %i.sb, align 4, !tbaa !77
  %i.sr = mul nsw i32 %i.sq, %i.sp
  %.not7881015.i = icmp sgt i32 %i.sr, 0
  br i1 %.not7881015.i, label %.lr.ph1018.i, label %.preheader939.i.preheader

.lr.ph1018.i:                                     ; preds = %bb.cu, %bb.cv
  %indvars.iv1067.i = phi i64 [ %indvars.iv.next1068.i, %bb.cv ], [ 0, %bb.cu ] ; 2 uses
  %i.ss = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not787.i = icmp eq i32 %i.ss, 1
  br i1 %.not787.i, label %bb.cv, label %.thread904.i

.thread904.i:                                     ; preds = %.lr.ph1018.i
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.cv:                                            ; preds = %.lr.ph1018.i
  %i.st = load i32, ptr %i.a, align 4, !tbaa !52
  %i.su = sitofp nsz i32 %i.st to float
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv1067.i
  store float %i.su, ptr %i.sv, align 4, !tbaa !26
  %indvars.iv.next1068.i = add nuw nsw i64 %indvars.iv1067.i, 1 ; 2 uses
  %i.sw = load i32, ptr %i.rw, align 8, !tbaa !76
  %i.sx = load i32, ptr %i.sb, align 4, !tbaa !77
  %i.sy = mul nsw i32 %i.sx, %i.sw
  %i.sz = sext i32 %i.sy to i64
  %.not788.i = icmp slt i64 %indvars.iv.next1068.i, %i.sz
  br i1 %.not788.i, label %.lr.ph1018.i, label %.preheader939.i.preheader, !llvm.loop !121

.preheader939.i.preheader:                        ; preds = %bb.cv, %bb.cu
  br label %.preheader939.i

.preheader939.i:                                  ; preds = %.preheader939.i.preheader, %.preheader939.i
  %i.ta = call i32 @fgetc(ptr noundef nonnull %i.f)
  switch i32 %i.ta, label %.preheader939.i [
    i32 -1, label %bb.cw
    i32 10, label %bb.cw
  ]

bb.cw:                                            ; preds = %.preheader939.i, %.preheader939.i
  %i.tb = load i32, ptr %i.sb, align 4, !tbaa !77
  %i.tc = sext i32 %i.tb to i64
  %i.td = call noalias ptr @av_calloc(i64 noundef %i.tc, i64 noundef 4) #11 ; 3 uses
  %.not789.i = icmp eq ptr %i.td, null
  br i1 %.not789.i, label %.thread907.i, label %bb.cx

.thread907.i:                                     ; preds = %bb.cw
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
  br label %rnnoise_model_from_file.exit

bb.cx:                                            ; preds = %bb.cw
  store ptr %i.td, ptr %i.u, align 8, !tbaa !81
  %i.te = load i32, ptr %i.sb, align 4, !tbaa !77
  %.not7911019.i = icmp sgt i32 %i.te, 0
  br i1 %.not7911019.i, label %.lr.ph1022.i, label %.preheader938.i.preheader

.lr.ph1022.i:                                     ; preds = %bb.cx, %bb.cy
  %indvars.iv1070.i = phi i64 [ %indvars.iv.next1071.i, %bb.cy ], [ 0, %bb.cx ] ; 2 uses
  %i.tf = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #11
  %.not790.i = icmp eq i32 %i.tf, 1
  br i1 %.not790.i, label %bb.cy, label %.thread910.i

.thread910.i:                                     ; preds = %.lr.ph1022.i
  call fastcc void @rnnoise_model_free(ptr noundef nonnull %i.l)
end_hunk_0
