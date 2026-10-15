Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/wrtjava?download=true
inline.NumInlined: 41
inline.NumDeleted: 19
begin_hunk_0_@_Z14res_write_javaP9SResourceP10UErrorCode:bb.a
  ]

bb.p:                                             ; preds = %bb.o
  %i.ap = add nsw i32 %.097123.i.i.i, 2           ; 3 uses
  %i.aq = icmp slt i32 %i.ap, %i.z
  br i1 %i.aq, label %bb.q, label %bb.ar

bb.q:                                             ; preds = %bb.p
  %strlen113.i.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %calloc.i.i)
  %endptr114.i.i.i = getelementptr inbounds i8, ptr %calloc.i.i, i64 %strlen113.i.i.i
  store i16 92, ptr %endptr114.i.i.i, align 1
  %i.ar = sext i32 %.097123.i.i.i to i64
  %i.as = getelementptr i8, ptr %calloc.i.i, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 1
  store i8 34, ptr %i.at, align 1, !tbaa !16
  br label %bb.ar

bb.r:                                             ; preds = %bb.o
  %i.au = add nsw i32 %.097123.i.i.i, 2           ; 3 uses
  %i.av = icmp slt i32 %i.au, %i.z
  br i1 %i.av, label %bb.s, label %bb.ar

bb.s:                                             ; preds = %bb.r
  %strlen111.i.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %calloc.i.i)
  %endptr112.i.i.i = getelementptr inbounds i8, ptr %calloc.i.i, i64 %strlen111.i.i.i
  store i16 92, ptr %endptr112.i.i.i, align 1
  %i.aw = sext i32 %.097123.i.i.i to i64
  %i.ax = getelementptr i8, ptr %calloc.i.i, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 1
  store i8 34, ptr %i.ay, align 1, !tbaa !16
  br label %bb.ar

bb.t:                                             ; preds = %bb.o
  %i.az = add nsw i32 %.097123.i.i.i, 1
  %i.ba = sext i32 %.097123.i.i.i to i64
  %i.bb = getelementptr inbounds i8, ptr %calloc.i.i, i64 %i.ba
  store i8 34, ptr %i.bb, align 1, !tbaa !16
  br label %bb.ar

bb.u:                                             ; preds = %bb.j
  %i.bc = add nuw nsw i64 %indvars.iv.i.i.i, 1    ; 2 uses
  %i.bd = icmp samesign ult i64 %i.bc, %i.ag
  br i1 %i.bd, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i.i, i64 %i.bc
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !44
  switch i16 %i.bf, label %bb.aa [
    i16 44, label %bb.w
    i16 33, label %bb.w
    i16 63, label %bb.w
    i16 35, label %bb.w
    i16 46, label %bb.w
    i16 37, label %bb.w
    i16 38, label %bb.w
    i16 58, label %bb.w
    i16 59, label %bb.w
    i16 34, label %bb.y
    i16 39, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v
  %i.bg = add nsw i32 %.097123.i.i.i, 2           ; 3 uses
  %i.bh = icmp slt i32 %i.bg, %i.z
  br i1 %i.bh, label %bb.x, label %bb.ar

bb.x:                                             ; preds = %bb.w
  %strlen108.i.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %calloc.i.i)
  %endptr109.i.i.i = getelementptr inbounds i8, ptr %calloc.i.i, i64 %strlen108.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr109.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false)
  br label %bb.ar

bb.y:                                             ; preds = %bb.v, %bb.v
  %i.bi = add nsw i32 %.097123.i.i.i, 3           ; 3 uses
  %i.bj = icmp slt i32 %i.bi, %i.z
  br i1 %i.bj, label %bb.z, label %bb.ar

bb.z:                                             ; preds = %bb.y
  %strlen106.i.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %calloc.i.i)
  %endptr107.i.i.i = getelementptr inbounds i8, ptr %calloc.i.i, i64 %strlen106.i.i.i
  store i32 6052956, ptr %endptr107.i.i.i, align 1
  br label %bb.ar

bb.aa:                                            ; preds = %bb.v
  %i.bk = icmp slt i32 %.097123.i.i.i, %i.z
  br i1 %i.bk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bl = sext i32 %.097123.i.i.i to i64
  %i.bm = getelementptr inbounds i8, ptr %calloc.i.i, i64 %i.bl
  store i8 92, ptr %i.bm, align 1, !tbaa !16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bn = add nsw i32 %.097123.i.i.i, 1
  br label %bb.ar

bb.ad:                                            ; preds = %bb.u
  %i.bo = icmp slt i32 %.097123.i.i.i, %i.z
  br i1 %i.bo, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %strlen.i.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %calloc.i.i)
  %endptr.i.i.i = getelementptr inbounds i8, ptr %calloc.i.i, i64 %strlen.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bp = add nsw i32 %.097123.i.i.i, 2
  br label %bb.ar

bb.ag:                                            ; preds = %bb.j
  %i.bq = add i16 %i.ai, -32
  %or.cond.i.i.i = icmp ult i16 %i.bq, 95
  br i1 %or.cond.i.i.i, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.br = icmp slt i32 %.097123.i.i.i, %i.z
  br i1 %i.br, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bs = trunc nuw nsw i16 %i.ai to i8
  %i.bt = sext i32 %.097123.i.i.i to i64
  %i.bu = getelementptr inbounds i8, ptr %calloc.i.i, i64 %i.bt
  store i8 %i.bs, ptr %i.bu, align 1, !tbaa !16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bv = add nsw i32 %.097123.i.i.i, 1
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ag
  %i.bw = load ptr, ptr @_ZL3enc, align 8, !tbaa !18
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !16
  %i.by = icmp eq i8 %i.bx, 0
  %i.bz = icmp eq i16 %i.ai, 0
  %or.cond120.i.i.i = or i1 %i.bz, %i.by
  br i1 %or.cond120.i.i.i, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.d, ptr noundef nonnull align 1 dereferenceable(3) @.str.18, i64 3, i1 false) #9
  %i.ca = zext i16 %i.ai to i32
  %i.cb = call i32 @itostr(ptr noundef nonnull %i.af, i32 noundef %i.ca, i32 noundef 16, i32 noundef 4) ; 0 uses
  %i.cc = add nsw i32 %.097123.i.i.i, 6           ; 3 uses
  %i.cd = icmp slt i32 %i.cc, %i.z
  br i1 %i.cd, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.ce = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %calloc.i.i, ptr noundef nonnull dereferenceable(1) %i.d) #9 ; 0 uses
  br label %bb.ar

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %i.e, i8 0, i64 30, i1 false)
  %i.cf = load ptr, ptr @_ZL4conv, align 8, !tbaa !20
  %i.cg = call i32 @ucnv_fromUChars_78(ptr noundef %i.cf, ptr noundef nonnull %i.e, i32 noundef 30, ptr noundef nonnull %i.ah, i32 noundef 1, ptr noundef nonnull %1)
  %i.ch = load i32, ptr %1, align 4, !tbaa !11
  %i.ci = icmp slt i32 %i.ch, 1
  br i1 %i.ci, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.cj = add nsw i32 %i.cg, %.097123.i.i.i       ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.z
  br i1 %i.ck, label %bb.ap, label %.thread.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.cl = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %calloc.i.i, ptr noundef nonnull dereferenceable(1) %i.e) #9 ; 0 uses
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %_ZL13uCharsToCharsPciPKDsiP10UErrorCode.exit.i.i

bb.ar:                                            ; preds = %.thread.i.i.i, %bb.am, %bb.al, %bb.aj, %bb.af, %bb.ac, %bb.z, %bb.y, %bb.x, %bb.w, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.k
  %.2.i.i.i = phi i32 [ %i.cj, %.thread.i.i.i ], [ %i.aj, %bb.k ], [ %i.al, %bb.m ], [ %i.ap, %bb.p ], [ %i.az, %bb.t ], [ %i.bn, %bb.ac ], [ %i.au, %bb.r ], [ %i.bg, %bb.w ], [ %i.bp, %bb.af ], [ %i.bv, %bb.aj ], [ %i.bi, %bb.y ], [ %i.aj, %bb.l ], [ %i.al, %bb.n ], [ %i.ap, %bb.q ], [ %i.au, %bb.s ], [ %i.bg, %bb.x ], [ %i.bi, %bb.z ], [ %i.cc, %bb.am ], [ %i.cc, %bb.al ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ag
  br i1 %exitcond.not.i.i.i, label %_ZL13uCharsToCharsPciPKDsiP10UErrorCode.exit.i.i, label %bb.j, !llvm.loop !25

_ZL13uCharsToCharsPciPKDsiP10UErrorCode.exit.i.i: ; preds = %bb.ar, %bb.aq, %bb.i
  %.3.i.i.i = phi i32 [ 0, %bb.aq ], [ 0, %bb.i ], [ %.2.i.i.i, %bb.ar ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.cm = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.cn = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24 ; 2 uses
  %.not2.i.i5.i = icmp slt i32 %i.cn, 0
  br i1 %.not2.i.i5.i, label %_ZL10write_tabsP11_FileStream.exit.i.i, label %.lr.ph.i86.i.i

.lr.ph.i86.i.i:                                   ; preds = %_ZL13uCharsToCharsPciPKDsiP10UErrorCode.exit.i.i, %.lr.ph.i86.i.i
  %.03.i.i.i = phi i32 [ %i.cp, %.lr.ph.i86.i.i ], [ 0, %_ZL13uCharsToCharsPciPKDsiP10UErrorCode.exit.i.i ] ; 2 uses
  %i.co = call i32 @T_FileStream_write(ptr noundef %i.cm, ptr noundef nonnull @.str.19, i32 noundef 4) ; 0 uses
  %i.cp = add nuw nsw i32 %.03.i.i.i, 1
  %i.cq = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24 ; 2 uses
  %.not.not.i.i.i = icmp slt i32 %.03.i.i.i, %i.cq
  br i1 %.not.not.i.i.i, label %.lr.ph.i86.i.i, label %_ZL10write_tabsP11_FileStream.exit.i.i, !llvm.loop !0

_ZL10write_tabsP11_FileStream.exit.i.i:           ; preds = %.lr.ph.i86.i.i, %_ZL13uCharsToCharsPciPKDsiP10UErrorCode.exit.i.i
  %i.cr = phi i32 [ %i.cn, %_ZL13uCharsToCharsPciPKDsiP10UErrorCode.exit.i.i ], [ %i.cq, %.lr.ph.i86.i.i ] ; 2 uses
  %i.cs = load i32, ptr %1, align 4, !tbaa !11
  %i.ct = icmp slt i32 %i.cs, 1
  br i1 %i.ct, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZL10write_tabsP11_FileStream.exit.i.i
  call void @uprv_free_78(ptr noundef nonnull %calloc.i.i)
  br label %_ZL17string_write_javaPK14StringResourceP10UErrorCode.exit

bb.at:                                            ; preds = %_ZL10write_tabsP11_FileStream.exit.i.i
  %i.cu = shl nsw i32 %i.cr, 2
  %i.cv = add i32 %i.cu, %.3.i.i.i
  %i.cw = icmp ugt i32 %i.cv, %.0.i.i4.i
  br i1 %i.cw, label %.preheader94.i.i, label %bb.bb

.preheader94.i.i:                                 ; preds = %bb.at
  %.not.i.i = icmp eq i32 %.3.i.i.i, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %.preheader94.i.i, %_ZL10write_tabsP11_FileStream.exit92.i.i
  %.07897.i.i.a = phi i32 [ %2, %_ZL10write_tabsP11_FileStream.exit92.i.i ], [ %i.cr, %.preheader94.i.i ]
  %.07897.i.i = phi i32 [ %.pre-phi.i.i, %_ZL10write_tabsP11_FileStream.exit92.i.i ], [ 0, %.preheader94.i.i ] ; 4 uses
  %i.cx = shl nsw i32 %.07897.i.i.a, 2
  %i.cy = sub i32 %.0.i.i4.i, %i.cx               ; 2 uses
  %i.cz = add i32 %i.cy, -5                       ; 6 uses
  %i.da = zext i32 %.07897.i.i to i64
  %i.db = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 %i.da ; 8 uses
  %i.dc = sub nuw i32 %.3.i.i.i, %.07897.i.i      ; 2 uses
  %i.dd = icmp ult i32 %i.cz, %i.dc
  br i1 %i.dd, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %.lr.ph98.i.i
  %i.de = add i32 %i.cy, -6
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.df
  br label %.lr.ph.i87.i.i

.lr.ph.i87.i.i:                                   ; preds = %bb.av, %bb.au
  %.015.i.i.i = phi ptr [ %i.dj, %bb.av ], [ %i.dg, %bb.au ] ; 3 uses
  %i.dh = load i8, ptr %.015.i.i.i, align 1, !tbaa !16
  %i.di = icmp eq i8 %i.dh, 92
  br i1 %i.di, label %_ZL6strrchPKcjc.exit.i.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i87.i.i
  %i.dj = getelementptr inbounds i8, ptr %.015.i.i.i, i64 -1 ; 3 uses
  %.not.i.i6.i = icmp ult ptr %i.dj, %i.db
  br i1 %.not.i.i6.i, label %_ZL6strrchPKcjc.exit.i.i, label %.lr.ph.i87.i.i, !llvm.loop !26

_ZL6strrchPKcjc.exit.i.i:                         ; preds = %bb.av, %.lr.ph.i87.i.i
  %.lcssa.sink.i.i.i = phi ptr [ %.015.i.i.i, %.lr.ph.i87.i.i ], [ %i.dj, %bb.av ]
  %i.dk = ptrtoint ptr %.lcssa.sink.i.i.i to i64
  %i.dl = ptrtoint ptr %i.db to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 2 uses
  %.011.i.i.i = trunc i64 %i.dm to i32            ; 4 uses
  %i.dn = icmp ult i32 %i.cz, %.011.i.i.i
  br i1 %i.dn, label %bb.aw, label %.preheader93.i.i.preheader

.preheader93.i.i.preheader:                       ; preds = %_ZL6strrchPKcjc.exit.i.i
  %indvars.iv.next.i.i110 = add i64 %i.dm, -1     ; 2 uses
  %indvars.i.i111 = trunc i64 %indvars.iv.next.i.i110 to i32 ; 3 uses
  %i.do = icmp sgt i32 %indvars.i.i111, 0
  br i1 %i.do, label %.lr.ph114, label %.preheader93.i.i._crit_edge

.preheader93.i.i:                                 ; preds = %.lr.ph114
  %indvars.iv.next.i.i = add i64 %indvars.iv.next.i.i112, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32 ; 3 uses
  %i.dp = icmp sgt i32 %indvars.i.i, 0
  br i1 %i.dp, label %.lr.ph114, label %.preheader93.i.i._crit_edge, !llvm.loop !27

.lr.ph114:                                        ; preds = %.preheader93.i.i.preheader, %.preheader93.i.i
  %indvars.i.i113 = phi i32 [ %indvars.i.i, %.preheader93.i.i ], [ %indvars.i.i111, %.preheader93.i.i.preheader ]
  %indvars.iv.next.i.i112 = phi i64 [ %indvars.iv.next.i.i, %.preheader93.i.i ], [ %indvars.iv.next.i.i110, %.preheader93.i.i.preheader ] ; 2 uses
  %i.dq = and i64 %indvars.iv.next.i.i112, 2147483647
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !16
  %i.dt = icmp eq i8 %i.ds, 92
  br i1 %i.dt, label %.preheader93.i.i, label %._crit_edge115, !llvm.loop !27

._crit_edge115:                                   ; preds = %.lr.ph114
  br label %.preheader93.i.i._crit_edge, !llvm.loop !27

.preheader93.i.i._crit_edge:                      ; preds = %.preheader93.i.i, %._crit_edge115, %.preheader93.i.i.preheader
  %indvars.i.i.lcssa = phi i32 [ %indvars.i.i113, %._crit_edge115 ], [ %indvars.i.i111, %.preheader93.i.i.preheader ], [ %indvars.i.i, %.preheader93.i.i ]
  %i.du = sub i32 %.011.i.i.i, %indvars.i.i.lcssa
  %i.dv = and i32 %i.du, 1                        ; 2 uses
  %sext.i.i = add i32 %.011.i.i.i, -1
  %spec.select.i.i = add i32 %sext.i.i, %i.dv     ; 2 uses
  %i.dw = add i32 %i.dv, %.011.i.i.i
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !16
  %i.ea = icmp eq i8 %i.dz, 117
  %i.eb = select i1 %i.ea, i32 6, i32 2           ; 2 uses
  %i.ec = sub i32 %i.cz, %spec.select.i.i
  %i.ed = icmp ult i32 %i.ec, %i.eb
  %i.ee = add i32 %i.eb, %spec.select.i.i
  %.077.i.i = select i1 %i.ed, i32 %i.ee, i32 %i.cz
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader93.i.i._crit_edge, %_ZL6strrchPKcjc.exit.i.i, %.lr.ph98.i.i
  %.2.i.i = phi i32 [ %i.cz, %.lr.ph98.i.i ], [ %.077.i.i, %.preheader93.i.i._crit_edge ], [ %i.cz, %_ZL6strrchPKcjc.exit.i.i ] ; 3 uses
  %i.ef = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.eg = call i32 @T_FileStream_write(ptr noundef %i.ef, ptr noundef nonnull @.str.10, i32 noundef 1) ; 0 uses
  %i.eh = add i32 %.2.i.i, %.07897.i.i            ; 2 uses
  %i.ei = icmp ult i32 %i.eh, %.3.i.i.i
  br i1 %i.ei, label %.preheader.i.i, label %bb.ba

.preheader.i.i:                                   ; preds = %bb.aw
  %.not99.i.i = icmp eq i32 %.2.i.i, 0
  br i1 %.not99.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.ay
  %indvars.iv101.i.i = phi i64 [ %indvars.iv.next102.i.i, %bb.ay ], [ 0, %.preheader.i.i ] ; 2 uses
  %.395.i.i = phi i32 [ %.4.i.i, %bb.ay ], [ %.2.i.i, %.preheader.i.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.db, i64 %indvars.iv101.i.i
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !16  ; 3 uses
  %i.el = add i8 %i.ek, 62
  %i.em = icmp ult i8 %i.el, 51
  br i1 %i.em, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i.i
  %i.en = icmp samesign ugt i8 %i.ek, -33
  %i.eo = zext i1 %i.en to i32
  %i.ep = icmp samesign ugt i8 %i.ek, -17
  %i.eq = zext i1 %i.ep to i32
  %i.er = add i32 %.395.i.i, 1
  %i.es = add i32 %i.er, %i.eq
  %i.et = add i32 %i.es, %i.eo
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.i.i
  %.4.i.i = phi i32 [ %i.et, %bb.ax ], [ %.395.i.i, %.lr.ph.i.i ] ; 3 uses
  %indvars.iv.next102.i.i = add nuw nsw i64 %indvars.iv101.i.i, 1 ; 2 uses
  %i.eu = zext i32 %.4.i.i to i64
  %i.ev = icmp samesign ult i64 %indvars.iv.next102.i.i, %i.eu
  br i1 %i.ev, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !28

._crit_edge.i.i:                                  ; preds = %bb.ay, %.preheader.i.i
  %.3.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ %.4.i.i, %bb.ay ] ; 2 uses
  %i.ew = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.ex = call i32 @T_FileStream_write(ptr noundef %i.ew, ptr noundef nonnull %i.db, i32 noundef %.3.lcssa.i.i) ; 0 uses
  %i.ey = add i32 %.3.lcssa.i.i, %.07897.i.i      ; 3 uses
  %i.ez = icmp ult i32 %i.ey, %.3.i.i.i
  br i1 %i.ez, label %bb.az, label %.loopexit.i.i

bb.az:                                            ; preds = %._crit_edge.i.i
  %i.fa = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.fb = call i32 @T_FileStream_write(ptr noundef %i.fa, ptr noundef nonnull @.str.11, i32 noundef 4) ; 0 uses
  %i.fc = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.fd = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24 ; 2 uses
  %.not2.i88.i.i = icmp slt i32 %i.fd, 0
  br i1 %.not2.i88.i.i, label %_ZL10write_tabsP11_FileStream.exit92.i.i, label %.lr.ph.i89.i.i

.lr.ph.i89.i.i:                                   ; preds = %bb.az, %.lr.ph.i89.i.i
  %.03.i90.i.i = phi i32 [ %i.ff, %.lr.ph.i89.i.i ], [ 0, %bb.az ] ; 2 uses
  %i.fe = call i32 @T_FileStream_write(ptr noundef %i.fc, ptr noundef nonnull @.str.19, i32 noundef 4) ; 0 uses
  %i.ff = add nuw nsw i32 %.03.i90.i.i, 1
  %i.fg = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24 ; 2 uses
  %.not.not.i91.i.i = icmp slt i32 %.03.i90.i.i, %i.fg
  br i1 %.not.not.i91.i.i, label %.lr.ph.i89.i.i, label %_ZL10write_tabsP11_FileStream.exit92.i.i, !llvm.loop !0

bb.ba:                                            ; preds = %bb.aw
  %i.fh = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.fi = call i32 @T_FileStream_write(ptr noundef %i.fh, ptr noundef nonnull %i.db, i32 noundef %i.dc) ; 0 uses
  %.pre.i = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24
  br label %_ZL10write_tabsP11_FileStream.exit92.i.i

_ZL10write_tabsP11_FileStream.exit92.i.i:         ; preds = %.lr.ph.i89.i.i, %bb.ba, %bb.az
  %2 = phi i32 [ %.pre.i, %bb.ba ], [ %i.fd, %bb.az ], [ %i.fg, %.lr.ph.i89.i.i ]
  %.pre-phi.i.i = phi i32 [ %i.eh, %bb.ba ], [ %i.ey, %bb.az ], [ %i.ey, %.lr.ph.i89.i.i ] ; 2 uses
  %i.fj = icmp ult i32 %.pre-phi.i.i, %.3.i.i.i
  br i1 %i.fj, label %.lr.ph98.i.i, label %.loopexit.i.i, !llvm.loop !29

bb.bb:                                            ; preds = %bb.at
  %i.fk = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.fl = call i32 @T_FileStream_write(ptr noundef %i.fk, ptr noundef nonnull @.str.10, i32 noundef 1) ; 0 uses
  %i.fm = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.fn = call i32 @T_FileStream_write(ptr noundef %i.fm, ptr noundef nonnull %calloc.i.i, i32 noundef %.3.i.i.i) ; 0 uses
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_ZL10write_tabsP11_FileStream.exit92.i.i, %._crit_edge.i.i, %bb.bb, %.preheader94.i.i
  %i.fo = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.fp = call i32 @T_FileStream_write(ptr noundef %i.fo, ptr noundef nonnull @.str.12, i32 noundef 3) ; 0 uses
  call void @uprv_free_78(ptr noundef nonnull %calloc.i.i)
  br label %_ZL17string_write_javaPK14StringResourceP10UErrorCode.exit

bb.bc:                                            ; preds = %bb.c
  %i.fq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 3) ; 0 uses
  store i32 16, ptr %1, align 4, !tbaa !11
  br label %_ZL17string_write_javaPK14StringResourceP10UErrorCode.exit

bb.bd:                                            ; preds = %bb.c
  %i.fr = load ptr, ptr @_ZL8srBundle, align 8, !tbaa !15
  %i.fs = tail call noundef ptr @_ZNK9SResource12getKeyStringEPK7SRBRoot(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.fr) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i8 0, ptr %i.c, align 16, !tbaa !16
  %i.ft = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.fu = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24
  %.not2.i.i = icmp slt i32 %i.fu, 0
  br i1 %.not2.i.i, label %_ZL10write_tabsP11_FileStream.exit.i, label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %bb.bd, %.lr.ph.i.i20
  %.03.i.i = phi i32 [ %i.fw, %.lr.ph.i.i20 ], [ 0, %bb.bd ] ; 2 uses
  %i.fv = tail call i32 @T_FileStream_write(ptr noundef %i.ft, ptr noundef nonnull @.str.19, i32 noundef 4) ; 0 uses
  %i.fw = add nuw nsw i32 %.03.i.i, 1
  %i.fx = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24
  %.not.not.i.i = icmp slt i32 %.03.i.i, %i.fx
  br i1 %.not.not.i.i, label %.lr.ph.i.i20, label %_ZL10write_tabsP11_FileStream.exit.i, !llvm.loop !0

_ZL10write_tabsP11_FileStream.exit.i:             ; preds = %.lr.ph.i.i20, %bb.bd
  %.not.i = icmp eq ptr %i.fs, null
  br i1 %.not.i, label %_ZL10write_tabsP11_FileStream.exit._crit_edge.i, label %bb.be

_ZL10write_tabsP11_FileStream.exit._crit_edge.i:  ; preds = %_ZL10write_tabsP11_FileStream.exit.i
  %.pre.i.a = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  br label %bb.bh

bb.be:                                            ; preds = %_ZL10write_tabsP11_FileStream.exit.i
  %i.fy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fs, ptr noundef nonnull dereferenceable(17) @.str.22) #10
  %i.fz = icmp eq i32 %i.fy, 0
  %.pre8.i = load ptr, ptr @_ZL3out, align 8, !tbaa !23 ; 2 uses
  br i1 %i.fz, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.ga = tail call i32 @T_FileStream_write(ptr noundef %.pre8.i, ptr noundef nonnull @.str.21, i32 noundef 14) ; 0 uses
  %i.gb = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24
  %i.gc = add nsw i32 %i.gb, 1                    ; 2 uses
  store i32 %i.gc, ptr @_ZL8tabCount, align 4, !tbaa !24
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !48
  %.not5.i = icmp eq i64 %i.ge, 0
  br i1 %.not5.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bf
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.bg

bb.bg:                                            ; preds = %_ZL10write_tabsP11_FileStream.exit25.i, %.lr.ph.i
  %i.gg = phi i64 [ 0, %.lr.ph.i ], [ %i.gz, %_ZL10write_tabsP11_FileStream.exit25.i ]
  %.02.i = phi i32 [ 0, %.lr.ph.i ], [ %i.gy, %_ZL10write_tabsP11_FileStream.exit25.i ]
  %i.gh = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.gi = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24
  %.not2.i21.i = icmp slt i32 %i.gi, 0
  br i1 %.not2.i21.i, label %_ZL10write_tabsP11_FileStream.exit25.i, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %bb.bg, %.lr.ph.i22.i
  %.03.i23.i = phi i32 [ %i.gk, %.lr.ph.i22.i ], [ 0, %bb.bg ] ; 2 uses
  %i.gj = call i32 @T_FileStream_write(ptr noundef %i.gh, ptr noundef nonnull @.str.19, i32 noundef 4) ; 0 uses
  %i.gk = add nuw nsw i32 %.03.i23.i, 1
  %i.gl = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24
  %.not.not.i24.i = icmp slt i32 %.03.i23.i, %i.gl
  br i1 %.not.not.i24.i, label %.lr.ph.i22.i, label %_ZL10write_tabsP11_FileStream.exit25.i, !llvm.loop !0

_ZL10write_tabsP11_FileStream.exit25.i:           ; preds = %.lr.ph.i22.i, %bb.bg
  %i.gm = load ptr, ptr %i.gf, align 8, !tbaa !49
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gg
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !24
  %i.gp = call i32 @itostr(ptr noundef nonnull %i.c, i32 noundef %i.go, i32 noundef 10, i32 noundef 0)
  %i.gq = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.gr = call i32 @T_FileStream_write(ptr noundef %i.gq, ptr noundef nonnull @.str.10, i32 noundef 1) ; 0 uses
  %i.gs = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.gt = call i32 @T_FileStream_write(ptr noundef %i.gs, ptr noundef nonnull %i.c, i32 noundef %i.gp) ; 0 uses
  %i.gu = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.gv = call i32 @T_FileStream_write(ptr noundef %i.gu, ptr noundef nonnull @.str.23, i32 noundef 2) ; 0 uses
  %i.gw = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.gx = call i32 @T_FileStream_write(ptr noundef %i.gw, ptr noundef nonnull @.str.24, i32 noundef 1) ; 0 uses
  %i.gy = add i32 %.02.i, 1                       ; 2 uses
  %i.gz = zext i32 %i.gy to i64                   ; 2 uses
  %i.ha = load i64, ptr %i.gd, align 8, !tbaa !48
  %i.hb = icmp ugt i64 %i.ha, %i.gz
  br i1 %i.hb, label %bb.bg, label %.loopexitthread-pre-split.i, !llvm.loop !30

bb.bh:                                            ; preds = %bb.be, %_ZL10write_tabsP11_FileStream.exit._crit_edge.i
  %i.hc = phi ptr [ %.pre.i.a, %_ZL10write_tabsP11_FileStream.exit._crit_edge.i ], [ %.pre8.i, %bb.be ]
  %i.hd = tail call i32 @T_FileStream_write(ptr noundef %i.hc, ptr noundef nonnull @.str.20, i32 noundef 12) ; 0 uses
  %i.he = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24
  %i.hf = add nsw i32 %i.he, 1                    ; 2 uses
  store i32 %i.hf, ptr @_ZL8tabCount, align 4, !tbaa !24
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !48
  %.not6.i = icmp eq i64 %i.hh, 0
  br i1 %.not6.i, label %.loopexit.i, label %.lr.ph4.i

.lr.ph4.i:                                        ; preds = %bb.bh
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.bi

bb.bi:                                            ; preds = %_ZL10write_tabsP11_FileStream.exit30.i, %.lr.ph4.i
  %i.hj = phi i64 [ 0, %.lr.ph4.i ], [ %i.hy, %_ZL10write_tabsP11_FileStream.exit30.i ]
  %.13.i = phi i32 [ 0, %.lr.ph4.i ], [ %i.hx, %_ZL10write_tabsP11_FileStream.exit30.i ]
  %i.hk = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.hl = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24
  %.not2.i26.i = icmp slt i32 %i.hl, 0
  br i1 %.not2.i26.i, label %_ZL10write_tabsP11_FileStream.exit30.i, label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %bb.bi, %.lr.ph.i27.i
  %.03.i28.i = phi i32 [ %i.hn, %.lr.ph.i27.i ], [ 0, %bb.bi ] ; 2 uses
  %i.hm = call i32 @T_FileStream_write(ptr noundef %i.hk, ptr noundef nonnull @.str.19, i32 noundef 4) ; 0 uses
  %i.hn = add nuw nsw i32 %.03.i28.i, 1
  %i.ho = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24
  %.not.not.i29.i = icmp slt i32 %.03.i28.i, %i.ho
  br i1 %.not.not.i29.i, label %.lr.ph.i27.i, label %_ZL10write_tabsP11_FileStream.exit30.i, !llvm.loop !0

_ZL10write_tabsP11_FileStream.exit30.i:           ; preds = %.lr.ph.i27.i, %bb.bi
  %i.hp = load ptr, ptr %i.hi, align 8, !tbaa !49
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hj
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !24
  %i.hs = call i32 @itostr(ptr noundef nonnull %i.c, i32 noundef %i.hr, i32 noundef 10, i32 noundef 0)
  %i.ht = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.hu = call i32 @T_FileStream_write(ptr noundef %i.ht, ptr noundef nonnull %i.c, i32 noundef %i.hs) ; 0 uses
  %i.hv = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.hw = call i32 @T_FileStream_write(ptr noundef %i.hv, ptr noundef nonnull @.str.25, i32 noundef 2) ; 0 uses
  %i.hx = add i32 %.13.i, 1                       ; 2 uses
  %i.hy = zext i32 %i.hx to i64                   ; 2 uses
  %i.hz = load i64, ptr %i.hg, align 8, !tbaa !48
  %i.ia = icmp ugt i64 %i.hz, %i.hy
  br i1 %i.ia, label %bb.bi, label %.loopexitthread-pre-split.i, !llvm.loop !31

.loopexitthread-pre-split.i:                      ; preds = %_ZL10write_tabsP11_FileStream.exit25.i, %_ZL10write_tabsP11_FileStream.exit30.i
  %.pr.i = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexitthread-pre-split.i, %bb.bh, %bb.bf
  %i.ib = phi i32 [ %.pr.i, %.loopexitthread-pre-split.i ], [ %i.gc, %bb.bf ], [ %i.hf, %bb.bh ] ; 2 uses
  %i.ic = add nsw i32 %i.ib, -1
  store i32 %i.ic, ptr @_ZL8tabCount, align 4, !tbaa !24
  %i.id = load ptr, ptr @_ZL3out, align 8, !tbaa !23 ; 2 uses
  %.not2.i31.i = icmp slt i32 %i.ib, 1
  br i1 %.not2.i31.i, label %_ZL20intvector_write_javaPK17IntVectorResourceP10UErrorCode.exit, label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.loopexit.i, %.lr.ph.i32.i
  %.03.i33.i = phi i32 [ %i.if, %.lr.ph.i32.i ], [ 0, %.loopexit.i ] ; 2 uses
  %i.ie = call i32 @T_FileStream_write(ptr noundef %i.id, ptr noundef nonnull @.str.19, i32 noundef 4) ; 0 uses
  %i.if = add nuw nsw i32 %.03.i33.i, 1
  %i.ig = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24
  %.not.not.i34.i = icmp slt i32 %.03.i33.i, %i.ig
  br i1 %.not.not.i34.i, label %.lr.ph.i32.i, label %_ZL10write_tabsP11_FileStream.exit35.loopexit.i, !llvm.loop !0

_ZL10write_tabsP11_FileStream.exit35.loopexit.i:  ; preds = %.lr.ph.i32.i
  %.pre9.i = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  br label %_ZL20intvector_write_javaPK17IntVectorResourceP10UErrorCode.exit

_ZL20intvector_write_javaPK17IntVectorResourceP10UErrorCode.exit: ; preds = %.loopexit.i, %_ZL10write_tabsP11_FileStream.exit35.loopexit.i
  %i.ih = phi ptr [ %.pre9.i, %_ZL10write_tabsP11_FileStream.exit35.loopexit.i ], [ %i.id, %.loopexit.i ]
  %i.ii = call i32 @T_FileStream_write(ptr noundef %i.ih, ptr noundef nonnull @.str.26, i32 noundef 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %_ZL17string_write_javaPK14StringResourceP10UErrorCode.exit

bb.bj:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.b, i8 0, i64 100, i1 false)
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !51 ; 2 uses
  %i.il = icmp sgt i32 %i.ik, 0
  br i1 %i.il, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !52
  %i.io = load ptr, ptr @_ZL3out, align 8, !tbaa !23 ; 2 uses
  %i.ip = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24
  %.not2.i.i22 = icmp slt i32 %i.ip, 0
  br i1 %.not2.i.i22, label %.lr.ph.preheader.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %bb.bk, %.lr.ph.i.i23
  %.03.i.i24 = phi i32 [ %i.ir, %.lr.ph.i.i23 ], [ 0, %bb.bk ] ; 2 uses
  %i.iq = tail call i32 @T_FileStream_write(ptr noundef %i.io, ptr noundef nonnull @.str.19, i32 noundef 4) ; 0 uses
  %i.ir = add nuw nsw i32 %.03.i.i24, 1
  %i.is = load i32, ptr @_ZL8tabCount, align 4, !tbaa !24
  %.not.not.i.i25 = icmp slt i32 %.03.i.i24, %i.is
  br i1 %.not.not.i.i25, label %.lr.ph.i.i23, label %_ZL10write_tabsP11_FileStream.exit.loopexit.i, !llvm.loop !0

_ZL10write_tabsP11_FileStream.exit.loopexit.i:    ; preds = %.lr.ph.i.i23
  %.pre3.i = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZL10write_tabsP11_FileStream.exit.loopexit.i, %bb.bk
  %i.it = phi ptr [ %.pre3.i, %_ZL10write_tabsP11_FileStream.exit.loopexit.i ], [ %i.io, %bb.bk ]
  %i.iu = tail call i32 @T_FileStream_write(ptr noundef %i.it, ptr noundef nonnull @.str.27, i32 noundef 12) ; 0 uses
  %i.iv = load ptr, ptr @_ZL3out, align 8, !tbaa !23
  %i.iw = tail call i32 @T_FileStream_write(ptr noundef %i.iv, ptr noundef nonnull @.str.24, i32 noundef 1) ; 0 uses
end_hunk_0
