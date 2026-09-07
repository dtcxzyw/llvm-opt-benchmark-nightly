Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/gencnval?download=true
inline.NumInlined: 14
inline.NumDeleted: 11
begin_hunk_0_@main:bb.a
  br i1 %i.bl, label %bb.z, label %bb.x

bb.x:                                             ; preds = %chomp.exit.i
  %i.bm = icmp sgt i32 %i.bk, 0
  br i1 %i.bm, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bn = tail call ptr @__ctype_b_loc() #19
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62
  %i.bp = load i8, ptr %i.b, align 16, !tbaa !15
  %i.bq = sext i8 %i.bp to i64
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !18
  %i.bt = and i16 %i.bs, 8192
  %.not21.i = icmp eq i16 %i.bt, 0
  br i1 %.not21.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %chomp.exit.i
  %i.bu = sext i32 %.11767.i to i64
  %i.bv = getelementptr inbounds i8, ptr %i.a, i64 %i.bu
  %i.bw = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bv, ptr noundef nonnull dereferenceable(1) %i.b) #15 ; 0 uses
  %i.bx = add nsw i32 %.11767.i, %i.bk
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.by = icmp sgt i32 %.11767.i, 0
  br i1 %i.by, label %.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.218.i = phi i32 [ %i.bx, %bb.z ], [ %.11767.i, %bb.aa ] ; 2 uses
  %i.bz = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr @lineNum, align 4, !tbaa !9
  %i.cb = call ptr @T_FileStream_readLine(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.b, i32 noundef 32767) #15
  %.not20.not.i = icmp eq ptr %i.cb, null
  br i1 %.not20.not.i, label %._crit_edge.i, label %.preheader.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %bb.ab, %.preheader37.i
  %.117.lcssa.i = phi i32 [ %.01675.i, %.preheader37.i ], [ %.218.i, %bb.ab ] ; 2 uses
  %.115.lcssa.i = phi i32 [ %.01476.i, %.preheader37.i ], [ %i.bk, %bb.ab ]
  %i.cc = icmp sgt i32 %.117.lcssa.i, 0
  br i1 %i.cc, label %.thread.i, label %.thread122.i

.thread122.i:                                     ; preds = %._crit_edge.i
  %i.cd = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr @lineNum, align 4, !tbaa !9
  br label %parseFile.exit

.thread.i:                                        ; preds = %bb.aa, %._crit_edge.i
  %.11744.i = phi i32 [ %.117.lcssa.i, %._crit_edge.i ], [ %.11767.i, %bb.aa ]
  %.not.i = phi i1 [ true, %._crit_edge.i ], [ false, %bb.aa ]
  %.231.i = phi i32 [ %.115.lcssa.i, %._crit_edge.i ], [ %i.bk, %bb.aa ] ; 3 uses
  %i.cf = tail call ptr @__ctype_b_loc() #19      ; 4 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !62 ; 2 uses
  %i.ch = load i8, ptr %i.a, align 16, !tbaa !15  ; 4 uses
  %i.ci = sext i8 %i.ch to i64
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !18
  %i.cl = and i16 %i.ck, 8192
  %.not22.i = icmp eq i16 %i.cl, 0
  br i1 %.not22.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.thread.i
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cn = load ptr, ptr @path, align 8, !tbaa !14
  %i.co = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.cp = add nsw i32 %i.co, -1
  %i.cq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.20, ptr noundef %i.cn, i32 noundef %i.cp) #16 ; 0 uses
  call void @exit(i32 noundef 9) #18
  unreachable

bb.ad:                                            ; preds = %.thread.i
  %i.cr = icmp eq i8 %i.ch, 123
  %.b19.i = load i1, ptr @standardTagsUsed, align 1 ; 2 uses
  br i1 %i.cr, label %bb.ae, label %bb.at

bb.ae:                                            ; preds = %bb.ad
  br i1 %.b19.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = zext nneg i32 %.11744.i to i64
  %i.ct = getelementptr i8, ptr %i.a, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 -1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !15
  %.not23.i = icmp eq i8 %i.cv, 125
  br i1 %.not23.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cx = load ptr, ptr @path, align 8, !tbaa !14
  %i.cy = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.cz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.21, ptr noundef %i.cx, i32 noundef %i.cy) #16 ; 0 uses
  call void @exit(i32 noundef 9) #18
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.da = load i16, ptr @tagCount, align 2, !tbaa !18
  %i.db = icmp ugt i16 %i.da, 2
  br i1 %i.db, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dd = load ptr, ptr @path, align 8, !tbaa !14
  %i.de = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.df = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dc, ptr noundef nonnull @.str.29, ptr noundef %i.dd, i32 noundef %i.de) #16 ; 0 uses
  call void @exit(i32 noundef 15) #18
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dg = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 123) #17 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dj = load ptr, ptr @path, align 8, !tbaa !14
  %i.dk = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.dl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.di, ptr noundef nonnull @.str.30, ptr noundef %i.dj, i32 noundef %i.dk) #16 ; 0 uses
  call void @exit(i32 noundef 9) #18
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 2 uses
  %i.dn = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.dm, i32 noundef 125) #17 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dp = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dq = load ptr, ptr @path, align 8, !tbaa !14
  %i.dr = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.ds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dp, ptr noundef nonnull @.str.31, ptr noundef %i.dq, i32 noundef %i.dr) #16 ; 0 uses
  call void @exit(i32 noundef 9) #18
  unreachable

bb.an:                                            ; preds = %bb.al
  store i8 0, ptr %i.dn, align 1, !tbaa !15
  %i.dt = call ptr @strtok(ptr noundef nonnull %i.dm, ptr noundef nonnull @addOfficialTaggedStandards.WHITESPACE) #15 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.dt, null
  br i1 %.not12.i.i, label %addOfficialTaggedStandards.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.an, %allocString.exit.i
  %.013.i.i = phi ptr [ %i.fa, %allocString.exit.i ], [ %i.dt, %bb.an ] ; 2 uses
  %i.du = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.013.i.i) #17 ; 2 uses
  %i.dv = trunc i64 %i.du to i32                  ; 3 uses
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @tagBlock, i64 8), align 8, !tbaa !21 ; 2 uses
  %i.dx = and i32 %i.dv, -2
  %i.dy = add i32 %i.dw, 2
  %i.dz = add i32 %i.dy, %i.dx                    ; 2 uses
  %i.ea = load i32, ptr getelementptr inbounds nuw (i8, ptr @tagBlock, i64 12), align 4, !tbaa !22
  %.not.i27.i = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i27.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i
  %i.eb = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ec = load ptr, ptr @path, align 8, !tbaa !14
  %i.ed = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.ee = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eb, ptr noundef nonnull @.str.27, ptr noundef %i.ec, i32 noundef %i.ed) #16 ; 0 uses
  call void @exit(i32 noundef 7) #18
  unreachable

bb.ap:                                            ; preds = %.lr.ph.i.i
  %i.ef = load ptr, ptr @tagBlock, align 8, !tbaa !23
  %i.eg = zext i32 %i.dw to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eg ; 5 uses
  %sext.i = shl i64 %i.du, 32
  %i.ei = ashr exact i64 %sext.i, 32              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eh, ptr nonnull readonly align 1 %.013.i.i, i64 %i.ei, i1 false)
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 %i.ei ; 2 uses
  store i8 0, ptr %i.ej, align 1, !tbaa !15
  %i.ek = and i32 %i.dv, 1
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.em = getelementptr i8, ptr %i.ej, i64 1
  store i8 0, ptr %i.em, align 1, !tbaa !15
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.en = call signext i8 @uprv_isInvariantString_78(ptr noundef nonnull %i.eh, i32 noundef %i.dv) #15
  %.not23.i.i = icmp eq i8 %i.en, 0
  br i1 %.not23.i.i, label %bb.as, label %allocString.exit.i

bb.as:                                            ; preds = %bb.ar
  %i.eo = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ep = load ptr, ptr @path, align 8, !tbaa !14
  %i.eq = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.er = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eo, ptr noundef nonnull @.str.28, ptr noundef %i.ep, i32 noundef %i.eq, ptr noundef nonnull %i.eh) #16 ; 0 uses
  call void @exit(i32 noundef 13) #18
  unreachable

allocString.exit.i:                               ; preds = %bb.ar
  store i32 %i.dz, ptr getelementptr inbounds nuw (i8, ptr @tagBlock, i64 8), align 8, !tbaa !21
  %i.es = ptrtoint ptr %i.eh to i64
  %i.et = sub i64 %i.es, ptrtoint (ptr @tagStore to i64)
  %i.eu = lshr i64 %i.et, 1
  %i.ev = trunc i64 %i.eu to i16
  %i.ew = load i16, ptr @tagCount, align 2, !tbaa !18 ; 2 uses
  %i.ex = add nuw i16 %i.ew, 1
  store i16 %i.ex, ptr @tagCount, align 2, !tbaa !18
  %i.ey = zext i16 %i.ew to i64
  %i.ez = getelementptr inbounds nuw [65528 x i8], ptr @tags, i64 %i.ey
  store i16 %i.ev, ptr %i.ez, align 8, !tbaa !25
  %i.fa = call ptr @strtok(ptr noundef null, ptr noundef nonnull @addOfficialTaggedStandards.WHITESPACE) #15 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i, label %addOfficialTaggedStandards.exit.i, label %.lr.ph.i.i, !llvm.loop !34

addOfficialTaggedStandards.exit.i:                ; preds = %allocString.exit.i, %bb.an
  store i1 true, ptr @standardTagsUsed, align 1
  br label %parseLine.exit.i

bb.at:                                            ; preds = %bb.ad
  br i1 %.b19.i, label %bb.au, label %bb.bs

bb.au:                                            ; preds = %bb.at
  %i.fb = icmp eq i8 %i.ch, 0
  br i1 %i.fb, label %parseLine.exit.i, label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %bb.au, %bb.av
  %i.fc = phi i8 [ %i.fk, %bb.av ], [ %i.ch, %bb.au ]
  %.0135.i.i = phi i16 [ %i.fh, %bb.av ], [ 0, %bb.au ] ; 2 uses
  %i.fd = sext i8 %i.fc to i64
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !18
  %i.fg = and i16 %i.ff, 8192
  %.not109.i.i = icmp eq i16 %i.fg, 0
  br i1 %.not109.i.i, label %bb.av, label %.critedge.i.i

bb.av:                                            ; preds = %.lr.ph.i24.i
  %i.fh = add i16 %.0135.i.i, 1                   ; 3 uses
  %i.fi = zext i16 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !15  ; 2 uses
  %.not.i25.i = icmp eq i8 %i.fk, 0
  br i1 %.not.i25.i, label %.critedge.i.i, label %.lr.ph.i24.i, !llvm.loop !35

.critedge.i.i:                                    ; preds = %bb.av, %.lr.ph.i24.i
  %.0.lcssa.ph.i.i = phi i16 [ %.0135.i.i, %.lr.ph.i24.i ], [ %i.fh, %bb.av ]
  %i.fl = zext i16 %.0.lcssa.ph.i.i to i32
  %i.fm = call fastcc ptr @allocString(ptr noundef nonnull @stringBlock, ptr noundef nonnull %i.a, i32 noundef %i.fl) ; 5 uses
  %i.fn = load i16, ptr @converterCount, align 2, !tbaa !18 ; 2 uses
  %i.fo = icmp ugt i16 %i.fn, 4094
  br i1 %i.fo, label %bb.aw, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.critedge.i.i
  %.not.i.i.i = icmp eq i16 %i.fn, 0
  br i1 %.not.i.i.i, label %addConverter.exit.i.i, label %.lr.ph.i.i.i

bb.aw:                                            ; preds = %.critedge.i.i
  %i.fp = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.fq = load ptr, ptr @path, align 8, !tbaa !14
  %i.fr = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.fs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fp, ptr noundef nonnull @.str.33, ptr noundef %i.fq, i32 noundef %i.fr) #16 ; 0 uses
  call void @exit(i32 noundef 15) #18
  unreachable

bb.ax:                                            ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ft = load i16, ptr @converterCount, align 2, !tbaa !18 ; 2 uses
  %i.fu = zext i16 %i.ft to i64
  %i.fv = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.fu
  br i1 %i.fv, label %.lr.ph.i.i.i, label %addConverter.exit.i.i, !llvm.loop !36

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.ax
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.ax ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr @converters, i64 %indvars.iv.i.i.i
  %i.fx = load i16, ptr %i.fw, align 4, !tbaa !27
  %i.fy = zext i16 %i.fx to i64
  %i.fz = shl nuw nsw i64 %i.fy, 1
  %i.ga = getelementptr inbounds nuw i8, ptr @stringStore, i64 %i.fz
  %i.gb = call i32 @ucnv_compareNames_78(ptr noundef %i.fm, ptr noundef nonnull %i.ga) #15
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.ay, label %bb.ax

bb.ay:                                            ; preds = %.lr.ph.i.i.i
  %i.gd = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ge = load ptr, ptr @path, align 8, !tbaa !14
  %i.gf = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.gg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gd, ptr noundef nonnull @.str.34, ptr noundef %i.ge, i32 noundef %i.gf, ptr noundef %i.fm) #16 ; 0 uses
  call void @exit(i32 noundef 9) #18
  unreachable

addConverter.exit.i.i:                            ; preds = %bb.ax, %.preheader.i.i.i
  %.lcssa.i.i.i = phi i16 [ 0, %.preheader.i.i.i ], [ %i.ft, %bb.ax ] ; 6 uses
  %i.gh = ptrtoint ptr %i.fm to i64
  %i.gi = sub i64 %i.gh, ptrtoint (ptr @stringStore to i64)
  %i.gj = lshr i64 %i.gi, 1
  %i.gk = trunc i64 %i.gj to i16
  %i.gl = zext i16 %.lcssa.i.i.i to i64           ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr @converters, i64 %i.gl ; 2 uses
  store i16 %i.gk, ptr %i.gm, align 4, !tbaa !27
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  store i16 0, ptr %i.gn, align 2, !tbaa !28
  %i.go = add nuw i16 %.lcssa.i.i.i, 1
  store i16 %i.go, ptr @converterCount, align 2, !tbaa !18
  %i.gp = load i8, ptr %i.a, align 16, !tbaa !15  ; 2 uses
  %.not110139152.i.i = icmp eq i8 %i.gp, 0
  br i1 %.not110139152.i.i, label %parseLine.exit.i, label %.lr.ph141.lr.ph.i.i

.lr.ph141.lr.ph.i.i:                              ; preds = %addConverter.exit.i.i
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @tags, i64 8), i64 %i.gl
  br label %.lr.ph141.i.i

.lr.ph141.i.i:                                    ; preds = %bb.br, %.lr.ph141.lr.ph.i.i
  %i.gr = phi i8 [ %i.gp, %.lr.ph141.lr.ph.i.i ], [ %i.kc, %bb.br ]
  %i.gs = phi i64 [ 0, %.lr.ph141.lr.ph.i.i ], [ %i.ka, %bb.br ]
  %.1153.i.i = phi i16 [ 0, %.lr.ph141.lr.ph.i.i ], [ %.8.i.i, %bb.br ] ; 3 uses
  %i.gt = load ptr, ptr %i.cf, align 8, !tbaa !62 ; 3 uses
  %i.gu = sext i8 %i.gr to i64
  %i.gv = getelementptr inbounds [2 x i8], ptr %i.gt, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !18
  %i.gx = and i16 %i.gw, 8192
  %.not111.i69.i = icmp eq i16 %i.gx, 0
  br i1 %.not111.i69.i, label %.lr.ph141.i..critedge2.preheader.i_crit_edge.i, label %.lr.ph.i

.lr.ph141.i..critedge2.preheader.i_crit_edge.i:   ; preds = %.lr.ph141.i.i
  %.pre.i = zext i16 %.1153.i.i to i64
  br label %.critedge2.preheader.i.i

bb.az:                                            ; preds = %.lr.ph.i
  %i.gy = sext i8 %i.hg to i64
  %i.gz = getelementptr inbounds [2 x i8], ptr %i.gt, i64 %i.gy
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !18
  %i.hb = and i16 %i.ha, 8192
  %.not111.i.i = icmp eq i16 %i.hb, 0
  br i1 %.not111.i.i, label %.critedge2.preheader.i.i, label %.lr.ph.i, !llvm.loop !37

.critedge2.preheader.i.i:                         ; preds = %bb.az, %.lr.ph141.i..critedge2.preheader.i_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.lr.ph141.i..critedge2.preheader.i_crit_edge.i ], [ %i.he, %bb.az ]
  %.lcssa47.i = phi i64 [ %i.gs, %.lr.ph141.i..critedge2.preheader.i_crit_edge.i ], [ %i.he, %bb.az ]
  %.2140.i.lcssa.i = phi i16 [ %.1153.i.i, %.lr.ph141.i..critedge2.preheader.i_crit_edge.i ], [ %i.hd, %bb.az ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.lcssa47.i
  br label %.critedge2.i.i

.lr.ph.i:                                         ; preds = %.lr.ph141.i.i, %bb.az
  %.2140.i70.i = phi i16 [ %i.hd, %bb.az ], [ %.1153.i.i, %.lr.ph141.i.i ]
  %i.hd = add i16 %.2140.i70.i, 1                 ; 3 uses
  %i.he = zext i16 %i.hd to i64                   ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !15  ; 2 uses
  %.not110.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not110.i.i, label %parseLine.exit.i, label %bb.az, !llvm.loop !37

.critedge2.i.i:                                   ; preds = %bb.bb, %.critedge2.preheader.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bb ], [ %.pre-phi.i, %.critedge2.preheader.i.i ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !15  ; 2 uses
  switch i8 %i.hi, label %bb.ba [
    i8 0, label %.critedge4.i.i
    i8 123, label %.critedge4.i.i
  ]

bb.ba:                                            ; preds = %.critedge2.i.i
  %i.hj = sext i8 %i.hi to i64
  %i.hk = getelementptr inbounds [2 x i8], ptr %i.gt, i64 %i.hj
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !18
  %i.hm = and i16 %i.hl, 8192
  %.not114.i.i = icmp eq i16 %i.hm, 0
  br i1 %.not114.i.i, label %bb.bb, label %.critedge4.i.i

bb.bb:                                            ; preds = %bb.ba
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %.critedge2.i.i, !llvm.loop !38

.critedge4.i.i:                                   ; preds = %bb.ba, %.critedge2.i.i, %.critedge2.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %2 = trunc nuw i64 %indvars.iv.i to i16         ; 3 uses
  %i.ho = icmp eq i16 %.2140.i.lcssa.i, 0
  br i1 %i.ho, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.critedge4.i.i
  call fastcc void @addAlias(ptr noundef %i.fm, i16 noundef zeroext 1, i16 noundef zeroext %.lcssa.i.i.i, i8 noundef signext 1)
  br label %bb.be

bb.bd:                                            ; preds = %.critedge4.i.i
  %i.hp = sub i16 %2, %.2140.i.lcssa.i
  %i.hq = zext i16 %i.hp to i32
  %i.hr = call fastcc ptr @allocString(ptr noundef nonnull @stringBlock, ptr noundef nonnull %i.hc, i32 noundef %i.hq) ; 2 uses
  call fastcc void @addAlias(ptr noundef %i.hr, i16 noundef zeroext 1, i16 noundef zeroext %.lcssa.i.i.i, i8 noundef signext 0)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.098.i.i = phi ptr [ %i.fm, %bb.bc ], [ %i.hr, %bb.bd ] ; 3 uses
  %i.hs = load i16, ptr @knownAliasesCount, align 2, !tbaa !18 ; 3 uses
  %i.ht = icmp eq i16 %i.hs, -1
  br i1 %i.ht, label %bb.bf, label %addToKnownAliases.exit.i.i

bb.bf:                                            ; preds = %bb.be
  %i.hu = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.hv = load ptr, ptr @path, align 8, !tbaa !14
  %i.hw = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.hx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hu, ptr noundef nonnull @.str.44, ptr noundef %i.hv, i32 noundef %i.hw) #16 ; 0 uses
  call void @exit(i32 noundef 15) #18
  unreachable

addToKnownAliases.exit.i.i:                       ; preds = %bb.be
  %i.hy = ptrtoint ptr %.098.i.i to i64
  %i.hz = sub i64 %i.hy, ptrtoint (ptr @stringStore to i64)
  %i.ia = lshr i64 %i.hz, 1
  %i.ib = trunc i64 %i.ia to i16
  %i.ic = add nuw i16 %i.hs, 1
  store i16 %i.ic, ptr @knownAliasesCount, align 2, !tbaa !18
  %i.id = zext i16 %i.hs to i64
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr @knownAliases, i64 %i.id
  store i16 %i.ib, ptr %i.ie, align 2, !tbaa !18
  %i.if = load i8, ptr %i.hn, align 1, !tbaa !15  ; 2 uses
  %.not115143.i.i = icmp eq i8 %i.if, 0
  br i1 %.not115143.i.i, label %.critedge6.thread.i.i, label %.lr.ph145.i.i

.lr.ph145.i.i:                                    ; preds = %addToKnownAliases.exit.i.i
  %i.ig = load ptr, ptr %i.cf, align 8, !tbaa !62 ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bh, %.lr.ph145.i.i
  %i.ih = phi i8 [ %i.if, %.lr.ph145.i.i ], [ %i.ip, %bb.bh ] ; 2 uses
  %.4144.i.i = phi i16 [ %2, %.lr.ph145.i.i ], [ %i.im, %bb.bh ] ; 3 uses
  %i.ii = sext i8 %i.ih to i64
  %i.ij = getelementptr inbounds [2 x i8], ptr %i.ig, i64 %i.ii
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !18
  %i.il = and i16 %i.ik, 8192
  %.not116.i.i = icmp eq i16 %i.il, 0
  br i1 %.not116.i.i, label %.critedge6.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.im = add i16 %.4144.i.i, 1                   ; 3 uses
  %i.in = zext i16 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !15  ; 2 uses
  %.not115.i.i = icmp eq i8 %i.ip, 0
  br i1 %.not115.i.i, label %.critedge6.thread.i.i, label %bb.bg, !llvm.loop !39

.critedge6.i.i:                                   ; preds = %bb.bg
  %i.iq = icmp eq i8 %i.ih, 123
  br i1 %i.iq, label %bb.bi, label %.critedge6.thread.i.i

bb.bi:                                            ; preds = %.critedge6.i.i
  %i.ir = add i16 %.4144.i.i, 1
  br label %bb.bj

bb.bj:                                            ; preds = %.critedge10.i.i, %bb.bi
  %i.is = phi ptr [ %i.ig, %bb.bi ], [ %i.ji, %.critedge10.i.i ]
  %.5.i.i = phi i16 [ %i.ir, %bb.bi ], [ %.7149.i.i, %.critedge10.i.i ] ; 3 uses
  %3 = zext i16 %.5.i.i to i64                    ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bm, %bb.bj
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %bb.bm ], [ %3, %bb.bj ] ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv108.i
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !15  ; 3 uses
  switch i8 %i.iu, label %bb.bl [
    i8 0, label %.critedge8.i.i
    i8 125, label %.critedge8.i.i
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.iv = sext i8 %i.iu to i64
  %i.iw = getelementptr inbounds [2 x i8], ptr %i.is, i64 %i.iv
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !18
  %i.iy = and i16 %i.ix, 8192
  %.not119.i.i = icmp eq i16 %i.iy, 0
  br i1 %.not119.i.i, label %bb.bm, label %.critedge8.i.i

bb.bm:                                            ; preds = %bb.bl
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1
  br label %bb.bk, !llvm.loop !40

.critedge8.i.i:                                   ; preds = %bb.bl, %bb.bk, %bb.bk
  %4 = trunc nuw i64 %indvars.iv108.i to i16      ; 3 uses
  %.not120.i.i = icmp eq i16 %.5.i.i, %4
  br i1 %.not120.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.critedge8.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv108.i ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 %3
  %i.jb = sub nuw i16 %4, %.5.i.i
  %i.jc = call fastcc zeroext i16 @getTagNumber(ptr noundef nonnull %i.ja, i16 noundef zeroext %i.jb)
  %i.jd = getelementptr i8, ptr %i.iz, i64 -1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !15
  %i.jf = icmp eq i8 %i.je, 42
  %i.jg = zext i1 %i.jf to i8
  call fastcc void @addAlias(ptr noundef %.098.i.i, i16 noundef zeroext %i.jc, i16 noundef zeroext %.lcssa.i.i.i, i8 noundef signext %i.jg)
  %.pre.i.i = load i8, ptr %i.iz, align 1, !tbaa !15
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.critedge8.i.i
  %i.jh = phi i8 [ %.pre.i.i, %bb.bn ], [ %i.iu, %.critedge8.i.i ] ; 2 uses
  %.not121148.i.i = icmp eq i8 %i.jh, 0
  br i1 %.not121148.i.i, label %.critedge12.thread.i.i, label %.lr.ph150.i.i

.lr.ph150.i.i:                                    ; preds = %bb.bo
  %i.ji = load ptr, ptr %i.cf, align 8, !tbaa !62 ; 2 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bq, %.lr.ph150.i.i
  %i.jj = phi i8 [ %i.jh, %.lr.ph150.i.i ], [ %i.jr, %bb.bq ] ; 2 uses
  %.7149.i.i = phi i16 [ %4, %.lr.ph150.i.i ], [ %i.jo, %bb.bq ] ; 3 uses
  %i.jk = sext i8 %i.jj to i64
  %i.jl = getelementptr inbounds [2 x i8], ptr %i.ji, i64 %i.jk
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !18
  %i.jn = and i16 %i.jm, 8192
  %.not122.i.i = icmp eq i16 %i.jn, 0
  br i1 %.not122.i.i, label %.critedge10.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jo = add i16 %.7149.i.i, 1                   ; 2 uses
  %i.jp = zext i16 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !15  ; 2 uses
  %.not121.i.i = icmp eq i8 %i.jr, 0
  br i1 %.not121.i.i, label %.critedge12.thread.i.i, label %bb.bp, !llvm.loop !41

.critedge10.i.i:                                  ; preds = %bb.bp
  %cond.i.i = icmp eq i8 %i.jj, 125
  br i1 %cond.i.i, label %.critedge12.i.i, label %bb.bj

.critedge12.i.i:                                  ; preds = %.critedge10.i.i
  %i.js = add i16 %.7149.i.i, 1
  br label %bb.br

.critedge12.thread.i.i:                           ; preds = %bb.bo, %bb.bq
  %i.jt = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ju = load ptr, ptr @path, align 8, !tbaa !14
  %i.jv = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.jw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jt, ptr noundef nonnull @.str.32, ptr noundef %i.ju, i32 noundef %i.jv) #16 ; 0 uses
  call void @exit(i32 noundef 65801) #18
  unreachable

.critedge6.thread.i.i:                            ; preds = %bb.bh, %.critedge6.i.i, %addToKnownAliases.exit.i.i
  %.4129.i.i = phi i16 [ %.4144.i.i, %.critedge6.i.i ], [ %2, %addToKnownAliases.exit.i.i ], [ %i.im, %bb.bh ]
  %i.jx = load i16, ptr %i.gq, align 8, !tbaa !30
  %i.jy = icmp eq i16 %i.jx, 0
  %i.jz = zext i1 %i.jy to i8
  call fastcc void @addAlias(ptr noundef %.098.i.i, i16 noundef zeroext 0, i16 noundef zeroext %.lcssa.i.i.i, i8 noundef signext %i.jz)
  br label %bb.br

bb.br:                                            ; preds = %.critedge6.thread.i.i, %.critedge12.i.i
  %.8.i.i = phi i16 [ %i.js, %.critedge12.i.i ], [ %.4129.i.i, %.critedge6.thread.i.i ] ; 2 uses
  %i.ka = zext i16 %.8.i.i to i64                 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !15  ; 2 uses
  %.not110139.i.i = icmp eq i8 %i.kc, 0
  br i1 %.not110139.i.i, label %parseLine.exit.i, label %.lr.ph141.i.i

bb.bs:                                            ; preds = %bb.at
  %i.kd = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ke = load ptr, ptr @path, align 8, !tbaa !14
  %i.kf = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.kg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kd, ptr noundef nonnull @.str.22, ptr noundef %i.ke, i32 noundef %i.kf) #16 ; 0 uses
  call void @exit(i32 noundef 9) #18
  unreachable

parseLine.exit.i:                                 ; preds = %bb.br, %.lr.ph.i, %addConverter.exit.i.i, %bb.au, %addOfficialTaggedStandards.exit.i
  %i.kh = icmp sgt i32 %.231.i, 0
  br i1 %i.kh, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %parseLine.exit.i
  %i.ki = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #15 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %parseLine.exit.i
  %.3.i = phi i32 [ %.231.i, %bb.bt ], [ 0, %parseLine.exit.i ]
  %i.kj = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.kk = add nsw i32 %i.kj, 1
  store i32 %i.kk, ptr @lineNum, align 4, !tbaa !9
  br i1 %.not.i, label %parseFile.exit, label %.preheader37.i, !llvm.loop !42

parseFile.exit:                                   ; preds = %bb.bu, %.thread122.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @T_FileStream_close(ptr noundef nonnull %i.ao) #15
  %i.kl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 168), align 8, !tbaa !60
  %i.km = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 154), align 2, !tbaa !61
  %.not48 = icmp eq i8 %i.km, 0
  %i.kn = select i1 %.not48, ptr null, ptr @.str.8
  %i.ko = call ptr @udata_create(ptr noundef %i.kl, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @dataInfo, ptr noundef %i.kn, ptr noundef nonnull %i.d) #15 ; 25 uses
  %i.kp = load i32, ptr %i.d, align 4, !tbaa !9   ; 2 uses
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %parseFile.exit
  %i.kr = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ks = call ptr @u_errorName_78(i32 noundef %i.kp) #15
  %i.kt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kr, ptr noundef nonnull @.str.9, ptr noundef %i.ks) #16 ; 0 uses
  %i.ku = load i32, ptr %i.d, align 4, !tbaa !9
  call void @exit(i32 noundef %i.ku) #20
  unreachable

bb.bw:                                            ; preds = %parseFile.exit
  %i.kv = load i32, ptr getelementptr inbounds nuw (i8, ptr @tagBlock, i64 8), align 8, !tbaa !21
  %i.kw = lshr i32 %i.kv, 1
  %i.kx = trunc i32 %i.kw to i16                  ; 7 uses
  %i.ky = load i16, ptr @tagCount, align 2, !tbaa !18
  %i.kz = zext i16 %i.ky to i64
  %i.la = load i16, ptr @converterCount, align 2, !tbaa !18
  %i.lb = zext i16 %i.la to i64
  %i.lc = shl nuw nsw i64 %i.kz, 1
  %i.ld = mul nuw nsw i64 %i.lc, %i.lb
  %i.le = call noalias ptr @uprv_malloc_78(i64 noundef %i.ld) #21 ; 7 uses
  %i.lf = load i16, ptr @knownAliasesCount, align 2, !tbaa !18
  %i.lg = zext i16 %i.lf to i64
  %i.lh = shl nuw nsw i64 %i.lg, 1
  %i.li = call noalias ptr @uprv_malloc_78(i64 noundef %i.lh) #21 ; 5 uses
  %i.lj = load i16, ptr @knownAliasesCount, align 2, !tbaa !18
  %i.lk = zext i16 %i.lj to i64
  %i.ll = shl nuw nsw i64 %i.lk, 1
  %i.lm = call noalias ptr @uprv_malloc_78(i64 noundef %i.ll) #21 ; 7 uses
  %i.ln = load i16, ptr @knownAliasesCount, align 2, !tbaa !18
  %i.lo = zext i16 %i.ln to i64
  call void @qsort(ptr noundef nonnull @knownAliases, i64 noundef %i.lo, i64 noundef 2, ptr noundef nonnull @compareAliases) #15
  %i.lp = load i16, ptr @knownAliasesCount, align 2, !tbaa !18 ; 3 uses
  %.not.i.i50 = icmp eq i16 %i.lp, 0
  br i1 %.not.i.i50, label %resolveAliases.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lq = load i16, ptr @knownAliases, align 16, !tbaa !18 ; 5 uses
  %i.lr = load i16, ptr @tagCount, align 2, !tbaa !18 ; 2 uses
  %i.ls = icmp ugt i16 %i.lr, 2
  %.pre.i.i.i = load i16, ptr @converterCount, align 2, !tbaa !18 ; 4 uses
  br i1 %i.ls, label %.preheader47.lr.ph.i.i.i, label %.preheader45.i.i.i

.preheader47.lr.ph.i.i.i:                         ; preds = %bb.bx
  %.not59.i.i.i = icmp eq i16 %.pre.i.i.i, 0
  br i1 %.not59.i.i.i, label %._crit_edge58.i.i.i, label %.preheader47.preheader.i.i.i

.preheader47.preheader.i.i.i:                     ; preds = %.preheader47.lr.ph.i.i.i
  %wide.trip.count75.i.i.i = zext i16 %i.lr to i64
  %wide.trip.count70.i.i.i = zext i16 %.pre.i.i.i to i64
  br label %.preheader47.i.i.i

.preheader47.i.i.i:                               ; preds = %._crit_edge53.i.i.i, %.preheader47.preheader.i.i.i
  %indvars.iv72.i.i.i = phi i64 [ 2, %.preheader47.preheader.i.i.i ], [ %indvars.iv.next73.i.i.i, %._crit_edge53.i.i.i ] ; 3 uses
  %i.lt = getelementptr inbounds nuw [65528 x i8], ptr @tags, i64 %indvars.iv72.i.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  br label %.preheader46.i.i.i

.preheader45.i.i.i:                               ; preds = %._crit_edge53.i.i.i, %bb.bx
  %.not61.i.i.i = icmp eq i16 %.pre.i.i.i, 0
  br i1 %.not61.i.i.i, label %._crit_edge58.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.preheader45.i.i.i
  %wide.trip.count85.i.i.i = zext i16 %.pre.i.i.i to i64
  br label %.preheader.i.i.i51

.preheader46.i.i.i:                               ; preds = %._crit_edge.i.i.i, %.preheader47.i.i.i
  %indvars.iv67.i.i.i = phi i64 [ 0, %.preheader47.i.i.i ], [ %indvars.iv.next68.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.lu, i64 %indvars.iv67.i.i.i ; 2 uses
  %i.lw = load i16, ptr %i.lv, align 8, !tbaa !30 ; 2 uses
  %.not60.i.i.i = icmp eq i16 %i.lw, 0
  br i1 %.not60.i.i.i, label %._crit_edge.i.i.i, label %.critedge.lr.ph.i.i.i

.critedge.lr.ph.i.i.i:                            ; preds = %.preheader46.i.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !31
  %wide.trip.count.i.i.i = zext i16 %i.lw to i64
  br label %.critedge.i.i.i

bb.by:                                            ; preds = %.critedge.i.i.i
  %indvars.iv.next.i.i.i62 = add nuw nsw i64 %indvars.iv.i.i.i61, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i62, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.critedge.i.i.i, !llvm.loop !43

.critedge.i.i.i:                                  ; preds = %bb.by, %.critedge.lr.ph.i.i.i
  %indvars.iv.i.i.i61 = phi i64 [ 0, %.critedge.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i62, %bb.by ] ; 2 uses
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.ly, i64 %indvars.iv.i.i.i61
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !18
  %.not42.i.i.i = icmp eq i16 %i.ma, %i.lq
  br i1 %.not42.i.i.i, label %bb.bz, label %bb.by

bb.bz:                                            ; preds = %.critedge.i.i.i
  %i.mb = trunc nuw i64 %indvars.iv72.i.i.i to i16
  %i.mc = trunc nuw i64 %indvars.iv67.i.i.i to i16
  br label %resolveAliasToConverter.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.by, %.preheader46.i.i.i
  %indvars.iv.next68.i.i.i = add nuw nsw i64 %indvars.iv67.i.i.i, 1 ; 2 uses
  %exitcond71.not.i.i.i = icmp eq i64 %indvars.iv.next68.i.i.i, %wide.trip.count70.i.i.i
  br i1 %exitcond71.not.i.i.i, label %._crit_edge53.i.i.i, label %.preheader46.i.i.i, !llvm.loop !44

._crit_edge53.i.i.i:                              ; preds = %._crit_edge.i.i.i
  %indvars.iv.next73.i.i.i = add nuw nsw i64 %indvars.iv72.i.i.i, 1 ; 2 uses
  %exitcond76.not.i.i.i = icmp eq i64 %indvars.iv.next73.i.i.i, %wide.trip.count75.i.i.i
  br i1 %exitcond76.not.i.i.i, label %.preheader45.i.i.i, label %.preheader47.i.i.i, !llvm.loop !45

.preheader.i.i.i51:                               ; preds = %._crit_edge56.i.i.i, %.preheader.preheader.i.i.i
  %indvars.iv82.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ %indvars.iv.next83.i.i.i, %._crit_edge56.i.i.i ] ; 3 uses
  %i.md = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @tags, i64 8), i64 %indvars.iv82.i.i.i ; 2 uses
  %i.me = load i16, ptr %i.md, align 8, !tbaa !30 ; 2 uses
  %.not62.i.i.i = icmp eq i16 %i.me, 0
  br i1 %.not62.i.i.i, label %._crit_edge56.i.i.i, label %.critedge44.lr.ph.i.i.i

.critedge44.lr.ph.i.i.i:                          ; preds = %.preheader.i.i.i51
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mg = load ptr, ptr %i.mf, align 16, !tbaa !31
  %wide.trip.count80.i.i.i = zext i16 %i.me to i64
  br label %.critedge44.i.i.i

bb.ca:                                            ; preds = %.critedge44.i.i.i
  %indvars.iv.next78.i.i.i = add nuw nsw i64 %indvars.iv77.i.i.i, 1 ; 2 uses
  %exitcond81.not.i.i.i = icmp eq i64 %indvars.iv.next78.i.i.i, %wide.trip.count80.i.i.i
  br i1 %exitcond81.not.i.i.i, label %._crit_edge56.i.i.i, label %.critedge44.i.i.i, !llvm.loop !46

.critedge44.i.i.i:                                ; preds = %bb.ca, %.critedge44.lr.ph.i.i.i
  %indvars.iv77.i.i.i = phi i64 [ 0, %.critedge44.lr.ph.i.i.i ], [ %indvars.iv.next78.i.i.i, %bb.ca ] ; 2 uses
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.mg, i64 %indvars.iv77.i.i.i
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !18
  %.not.i.i.i52 = icmp eq i16 %i.mi, %i.lq
  br i1 %.not.i.i.i52, label %bb.cb, label %bb.ca

bb.cb:                                            ; preds = %.critedge44.i.i.i
  %i.mj = trunc nuw i64 %indvars.iv82.i.i.i to i16
  br label %resolveAliasToConverter.exit.i.i

._crit_edge56.i.i.i:                              ; preds = %bb.ca, %.preheader.i.i.i51
  %indvars.iv.next83.i.i.i = add nuw nsw i64 %indvars.iv82.i.i.i, 1 ; 2 uses
  %exitcond86.not.i.i.i = icmp eq i64 %indvars.iv.next83.i.i.i, %wide.trip.count85.i.i.i
  br i1 %exitcond86.not.i.i.i, label %._crit_edge58.i.i.i, label %.preheader.i.i.i51, !llvm.loop !47

._crit_edge58.i.i.i:                              ; preds = %._crit_edge56.i.i.i, %.preheader45.i.i.i, %.preheader47.lr.ph.i.i.i
  %i.mk = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ml = load ptr, ptr @path, align 8, !tbaa !14
  %i.mm = zext i16 %i.lq to i64
  %i.mn = shl nuw nsw i64 %i.mm, 1
  %i.mo = getelementptr inbounds nuw i8, ptr @stringStore, i64 %i.mn
  %i.mp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mk, ptr noundef nonnull @.str.48, ptr noundef %i.ml, ptr noundef nonnull %i.mo) #16 ; 0 uses
  %.pre.i.i53 = load i16, ptr @knownAliasesCount, align 2, !tbaa !18
  %.pre.i.a = load i16, ptr @knownAliases, align 16, !tbaa !18
  br label %resolveAliasToConverter.exit.i.i

resolveAliasToConverter.exit.i.i:                 ; preds = %._crit_edge58.i.i.i, %bb.cb, %bb.bz
end_hunk_0
begin_hunk_1_@main:bb.a
bb.dj:                                            ; preds = %writeAliasTable.exit
  %i.zw = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.zx = call ptr @u_errorName_78(i32 noundef %i.zu) #15
  %i.zy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zw, ptr noundef nonnull @.str.10, ptr noundef %i.zx) #16 ; 0 uses
  %i.zz = load i32, ptr %i.d, align 4, !tbaa !9
  call void @exit(i32 noundef %i.zz) #20
  unreachable

.preheader:                                       ; preds = %writeAliasTable.exit, %bb.dn
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %bb.dn ], [ 0, %writeAliasTable.exit ] ; 2 uses
  %i.aaa = getelementptr inbounds nuw [65528 x i8], ptr @tags, i64 %indvars.iv155
  br label %bb.dk

bb.dk:                                            ; preds = %.preheader, %bb.dm
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.dm ] ; 2 uses
  %i.aab = getelementptr inbounds nuw [16 x i8], ptr %i.aaa, i64 %indvars.iv
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !31 ; 2 uses
  %.not49 = icmp eq ptr %i.aad, null
  br i1 %.not49, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @uprv_free_78(ptr noundef nonnull %i.aad) #15
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dk, %bb.dl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4095
  br i1 %exitcond.not, label %bb.dn, label %bb.dk, !llvm.loop !57

bb.dn:                                            ; preds = %bb.dm
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next156, 63
  br i1 %exitcond158.not, label %.loopexit, label %.preheader, !llvm.loop !58

.loopexit:                                        ; preds = %bb.dn, %bb.c
  %.037 = phi i32 [ %.lobit, %bb.c ], [ 0, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  ret i32 %.037
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @u_getDataDirectory_78() local_unnamed_addr #2

declare i32 @u_parseArgs(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare ptr @T_FileStream_open(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @T_FileStream_close(ptr noundef) local_unnamed_addr #2

declare ptr @udata_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @u_errorName_78(i32 noundef) local_unnamed_addr #2

declare i32 @udata_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i16 @getTagNumber(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i16 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i16 %1 to i64
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !15
  %i.e = icmp eq i8 %i.d, 42
  %i.f = sext i1 %i.e to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not27 = phi i16 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.g = load i16, ptr @tagCount, align 2, !tbaa !18 ; 3 uses
  %i.h = icmp ugt i16 %i.g, 62
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.j = load ptr, ptr @path, align 8, !tbaa !14
  %i.k = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.23, ptr noundef %i.j, i32 noundef %i.k) #16 ; 0 uses
  tail call void @exit(i32 noundef 15) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %spec.select = add i16 %.not27, %1              ; 4 uses
  %.not37 = icmp eq i16 %i.g, 0
  br i1 %.not37, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.m = zext i16 %spec.select to i64
  %i.n = zext i16 %spec.select to i32
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %.pr41 = phi i16 [ %i.g, %.lr.ph ], [ %.pr, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.o = getelementptr inbounds nuw [65528 x i8], ptr @tags, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 8, !tbaa !25
  %i.q = zext i16 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr @tagStore, i64 %i.r ; 2 uses
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #17
  %i.u = icmp eq i64 %i.t, %i.m
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i32 @uprv_strnicmp_78(ptr noundef nonnull %i.s, ptr noundef %0, i32 noundef %i.n) #15
  %.not30 = icmp eq i32 %i.v, 0
  br i1 %.not30, label %.loopexit.loopexit, label %._crit_edge40

._crit_edge40:                                    ; preds = %bb.g
  %.pr.pre = load i16, ptr @tagCount, align 2, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge40, %bb.f
  %.pr = phi i16 [ %.pr.pre, %._crit_edge40 ], [ %.pr41, %bb.f ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = zext i16 %.pr to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.f, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.h
  %i.y = icmp ugt i16 %.pr, 62
  br i1 %i.y, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %._crit_edge
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.aa = load ptr, ptr @path, align 8, !tbaa !14
  %i.ab = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.24, ptr noundef %i.aa, i32 noundef %i.ab) #16 ; 0 uses
  tail call void @exit(i32 noundef 15) #18
  unreachable

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %i.ad = zext i16 %spec.select to i32
  %i.ae = tail call fastcc ptr @allocString(ptr noundef nonnull @tagBlock, ptr noundef %0, i32 noundef %i.ad) ; 3 uses
  %.b = load i1, ptr @standardTagsUsed, align 1
  br i1 %.b, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.thread
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ag = load ptr, ptr @path, align 8, !tbaa !14
  %i.ah = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.25, ptr noundef %i.ag, i32 noundef %i.ah, ptr noundef %i.ae) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

bb.k:                                             ; preds = %._crit_edge.thread
  %.not28 = icmp eq i16 %spec.select, 0
  br i1 %.not28, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.19) #17
  %.not29 = icmp eq i32 %i.aj, 0
  br i1 %.not29, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.al = load ptr, ptr @path, align 8, !tbaa !14
  %i.am = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.26, ptr noundef %i.al, i32 noundef %i.am, ptr noundef %i.ae) #16 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %i.ao = ptrtoint ptr %i.ae to i64
  %i.ap = sub i64 %i.ao, ptrtoint (ptr @tagStore to i64)
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = trunc i64 %i.aq to i16
  %i.as = load i16, ptr @tagCount, align 2, !tbaa !18 ; 3 uses
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr inbounds nuw [65528 x i8], ptr @tags, i64 %i.at
  store i16 %i.ar, ptr %i.au, align 8, !tbaa !25
  %i.av = add nuw i16 %i.as, 1
  store i16 %i.av, ptr @tagCount, align 2, !tbaa !18
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.g
  %i.aw = trunc nuw i64 %indvars.iv to i16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n
  %.2 = phi i16 [ %i.as, %bb.n ], [ %i.aw, %.loopexit.loopexit ]
  ret i16 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @allocString(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -1, 65536) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.c = trunc i64 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.b ], [ %2, %bb.a ]    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.f = and i32 %.0, -2
  %i.g = add nsw i32 %i.f, 2
  %i.h = add i32 %i.g, %i.e                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22
  %.not = icmp ult i32 %i.h, %i.j
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.l = load ptr, ptr @path, align 8, !tbaa !14
  %i.m = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.27, ptr noundef %i.l, i32 noundef %i.m) #16 ; 0 uses
  tail call void @exit(i32 noundef 7) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !23
  %i.p = zext i32 %i.e to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p ; 5 uses
  %i.r = sext i32 %.0 to i64                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %1, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r ; 2 uses
  store i8 0, ptr %i.s, align 1, !tbaa !15
  %i.t = and i32 %.0, 1
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.s, i64 1
  store i8 0, ptr %i.v, align 1, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = tail call signext i8 @uprv_isInvariantString_78(ptr noundef nonnull %i.q, i32 noundef %.0) #15
  %.not23 = icmp eq i8 %i.w, 0
  br i1 %.not23, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.y = load ptr, ptr @path, align 8, !tbaa !14
  %i.z = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.28, ptr noundef %i.y, i32 noundef %i.z, ptr noundef nonnull %i.q) #16 ; 0 uses
  tail call void @exit(i32 noundef 13) #18
  unreachable

bb.i:                                             ; preds = %bb.g
  store i32 %i.h, ptr %i.d, align 8, !tbaa !21
  ret ptr %i.q
}

declare ptr @T_FileStream_readLine(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

declare i32 @uprv_strnicmp_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare signext i8 @uprv_isInvariantString_78(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @addAlias(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef signext range(i8 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i16 %1, 62
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.c = load ptr, ptr @path, align 8, !tbaa !14
  %i.d = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.35, ptr noundef %i.c, i32 noundef %i.d) #16 ; 0 uses
  tail call void @exit(i32 noundef 15) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ugt i16 %2, 4094
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.h = load ptr, ptr @path, align 8, !tbaa !14
  %i.i = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.36, ptr noundef %i.h, i32 noundef %i.i) #16 ; 0 uses
  tail call void @exit(i32 noundef 15) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = zext nneg i16 %1 to i64
  %i.l = getelementptr inbounds nuw [65528 x i8], ptr @tags, i64 %i.k ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = zext nneg i16 %2 to i64                  ; 6 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n ; 6 uses
  %i.p = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 125) #17
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.r = load ptr, ptr @path, align 8, !tbaa !14
  %i.s = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.37, ptr noundef %i.r, i32 noundef %i.s) #16 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = load i16, ptr %i.o, align 8, !tbaa !30
  %i.v = icmp ugt i16 %i.u, 29
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.x = load ptr, ptr @path, align 8, !tbaa !14
  %i.y = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @converters, i64 %i.n
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !27
  %i.ab = zext i16 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr @stringStore, i64 %i.ac
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.38, ptr noundef %i.x, i32 noundef %i.y, ptr noundef nonnull %0, ptr noundef nonnull %i.ad) #16 ; 0 uses
  tail call void @exit(i32 noundef 15) #18
  unreachable

bb.i:                                             ; preds = %bb.g
  %cond = icmp eq i16 %1, 1
  br i1 %cond, label %bb.j, label %.preheader78

.preheader78:                                     ; preds = %bb.i
  %i.af = load i16, ptr @converterCount, align 2, !tbaa !18
  %.not84 = icmp eq i16 %i.af, 0
  br i1 %.not84, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader78
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @converters, i64 %i.n ; 2 uses
  %i.ah = zext nneg i16 %2 to i64
  br label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @converters, i64 %i.n
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !27
  %i.ak = zext i16 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr @stringStore, i64 %i.al
  %.not68 = icmp eq ptr %i.am, %0
  br i1 %.not68, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 44) #17
  %.not69 = icmp eq ptr %i.an, null
  br i1 %.not69, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ap = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.39, i32 noundef %i.ap, ptr noundef nonnull %0) #16 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 61) #17
  %.not70 = icmp eq ptr %i.ar, null
  br i1 %.not70, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.at = load i32, ptr @lineNum, align 4, !tbaa !9
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.40, i32 noundef %i.at, ptr noundef nonnull %0) #16 ; 0 uses
end_hunk_1
