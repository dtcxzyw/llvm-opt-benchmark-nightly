Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/inflate?download=true
begin_hunk_0_@zng_inflate:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !67
  %.not1076 = icmp eq i32 %i.r, 0
  br i1 %.not1076, label %bb.o, label %.loopexit1352

bb.o:                                             ; preds = %bb.n
  br i1 %i.f, label %bb.q, label %bb.p, !prof !14, !nosanitize !13

bb.p:                                             ; preds = %._crit_edge2769, %bb.o
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @136, i64 %i.d) #8, !nosanitize !13
  br label %bb.q, !nosanitize !13

bb.q:                                             ; preds = %._crit_edge2769, %bb.p, %bb.o
  %.pre-phi27712823 = phi i1 [ true, %._crit_edge2769 ], [ false, %bb.p ], [ true, %bb.o ] ; 51 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20   ; 37 uses
  %i.u = icmp ne ptr %i.t, null, !nosanitize !13
  %i.v = ptrtoint ptr %i.t to i64, !nosanitize !13 ; 314 uses
  %i.w = and i64 %i.v, 63, !nosanitize !13
  %i.x = icmp eq i64 %i.w, 0, !nosanitize !13
  %i.y = and i1 %i.u, %i.x, !nosanitize !13       ; 268 uses
  br i1 %i.y, label %bb.s, label %bb.r, !prof !14, !nosanitize !13

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @137, i64 %i.v) #8, !nosanitize !13
  br label %bb.s, !nosanitize !13

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 65 uses
  %i.aa = ptrtoint ptr %i.z to i64, !nosanitize !13 ; 65 uses
  %i.ab = and i64 %i.aa, 7, !nosanitize !13
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !13   ; 64 uses
  br i1 %i.ac, label %bb.u, label %bb.t, !prof !14, !nosanitize !13

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @138, i64 %i.aa) #8, !nosanitize !13
  br label %bb.u, !nosanitize !13

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ad = load i32, ptr %i.z, align 8, !tbaa !32
  %i.ae = icmp eq i32 %i.ad, 16191
  br i1 %i.ae, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  br i1 %i.y, label %bb.x, label %bb.w, !prof !14, !nosanitize !13

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @139, i64 %i.v) #8, !nosanitize !13
  br label %bb.x, !nosanitize !13

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.ac, label %bb.z, label %bb.y, !prof !14, !nosanitize !13

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @140, i64 %i.aa) #8, !nosanitize !13
  br label %bb.z, !nosanitize !13

bb.z:                                             ; preds = %bb.y, %bb.x
  store i32 16192, ptr %i.z, align 8, !tbaa !32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.u, %bb.z
  br i1 %.pre-phi27712823, label %bb.ac, label %bb.ab, !prof !14, !nosanitize !13

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @141, i64 %i.d) #8, !nosanitize !13
  br label %bb.ac, !nosanitize !13

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br i1 %i.k, label %bb.ae, label %bb.ad, !prof !14, !nosanitize !13

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @142, i64 %i.i) #8, !nosanitize !13
  br label %bb.ae, !nosanitize !13

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !107
  br i1 %.pre-phi27712823, label %bb.ag, label %bb.af, !prof !14, !nosanitize !13

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @143, i64 %i.d) #8, !nosanitize !13
  br label %bb.ag, !nosanitize !13

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !108 ; 2 uses
  br i1 %.pre-phi27712823, label %bb.ai, label %bb.ah, !prof !14, !nosanitize !13

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @144, i64 %i.d) #8, !nosanitize !13
  br label %bb.ai, !nosanitize !13

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %i.f, label %bb.ak, label %bb.aj, !prof !14, !nosanitize !13

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @145, i64 %i.d) #8, !nosanitize !13
  br label %bb.ak, !nosanitize !13

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ai = load ptr, ptr %0, align 8, !tbaa !66
  br i1 %.pre-phi27712823, label %bb.am, label %bb.al, !prof !14, !nosanitize !13

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @146, i64 %i.d) #8, !nosanitize !13
  br label %bb.am, !nosanitize !13

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !67 ; 3 uses
  br i1 %i.y, label %bb.ao, label %bb.an, !prof !14, !nosanitize !13

bb.an:                                            ; preds = %bb.am
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @147, i64 %i.v) #8, !nosanitize !13
  br label %bb.ao, !nosanitize !13

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 88 ; 8 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !38
  br i1 %i.y, label %bb.aq, label %bb.ap, !prof !14, !nosanitize !13

bb.ap:                                            ; preds = %bb.ao
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @148, i64 %i.v) #8, !nosanitize !13
  br label %bb.aq, !nosanitize !13

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 7 uses
  %i.ao = ptrtoint ptr %i.an to i64, !nosanitize !13 ; 7 uses
  %i.ap = and i64 %i.ao, 31, !nosanitize !13
  %i.aq = icmp eq i64 %i.ap, 0, !nosanitize !13   ; 6 uses
  br i1 %i.aq, label %bb.as, label %bb.ar, !prof !14, !nosanitize !13

bb.ar:                                            ; preds = %bb.aq
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @149, i64 %i.ao) #8, !nosanitize !13
  br label %bb.as, !nosanitize !13

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ar = load i32, ptr %i.an, align 32, !tbaa !39
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 18 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 23 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 160 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 25 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 19 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 124 ; 36 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 140 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 144 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 136 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 148 ; 21 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 228 ; 12 uses
  %i.bg = ptrtoint ptr %i.bf to i64               ; 20 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 1444 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 152 ; 13 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 104 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.t, i64 100 ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 868 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.t, i64 740
  %.not1093 = icmp ugt ptr %i.bf, inttoptr (i64 -513 to ptr)
  %i.bn = add i64 %i.bg, 512
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 120 ; 4 uses
  %i.bq = icmp eq i32 %1, 6                       ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 16 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 132 ; 16 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 28 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.t, i64 128 ; 7 uses
  %i.bv = ptrtoint ptr %i.bu to i64               ; 6 uses
  %i.bw = and i64 %i.bv, 63
  %i.bx = icmp eq i64 %i.bw, 0                    ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 76 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 4 uses
  %i.cc = ptrtoint ptr %i.cb to i64               ; 4 uses
  %i.cd = and i64 %i.cc, 63
  %i.ce = icmp eq i64 %i.cd, 0                    ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.cg = add i32 %1, -5
  %or.cond3 = icmp ult i32 %i.cg, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 35 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 6 uses
  %.not1127 = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr) ; 5 uses
  %i.ck = ptrtoint ptr %i.a to i64                ; 10 uses
  %i.cl = add i64 %i.ck, 1                        ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.not1132 = icmp ugt ptr %i.a, inttoptr (i64 -3 to ptr)
  %i.cn = add i64 %i.ck, 2
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.not1133 = icmp ugt ptr %i.a, inttoptr (i64 -4 to ptr)
  %i.cp = add i64 %i.ck, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 60 ; 5 uses
  br label %bb.at

bb.at:                                            ; preds = %.backedge, %bb.as
  %.0972 = phi ptr [ %i.ai, %bb.as ], [ %.0972.be, %.backedge ] ; 41 uses
  %.0969 = phi ptr [ %i.af, %bb.as ], [ %.0969.be, %.backedge ] ; 51 uses
  %.0907 = phi i32 [ %i.ak, %bb.as ], [ %.0907.be, %.backedge ] ; 41 uses
  %.0905 = phi i32 [ %i.ah, %bb.as ], [ %.0905.be, %.backedge ] ; 87 uses
  %.0844 = phi i64 [ %i.am, %bb.as ], [ %.0844.be, %.backedge ] ; 40 uses
  %.0833 = phi i32 [ %i.ar, %bb.as ], [ %.0833.be, %.backedge ] ; 47 uses
  %.0827 = phi i32 [ %i.ah, %bb.as ], [ %.0827.be, %.backedge ] ; 74 uses
  %.0818 = phi i32 [ 0, %bb.as ], [ %.0818.be, %.backedge ] ; 49 uses
  br i1 %i.y, label %bb.av, label %bb.au, !prof !14, !nosanitize !13

bb.au:                                            ; preds = %bb.at
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @150, i64 %i.v) #8, !nosanitize !13
  br label %bb.av, !nosanitize !13

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %i.ac, label %bb.ax, label %bb.aw, !prof !14, !nosanitize !13

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @151, i64 %i.aa) #8, !nosanitize !13
  br label %bb.ax, !nosanitize !13

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.cr = load i32, ptr %i.z, align 8, !tbaa !32
  switch i32 %i.cr, label %.loopexit1352 [
    i32 16180, label %bb.ay
    i32 16181, label %.preheader1329
    i32 16182, label %bb.gk
    i32 16183, label %bb.hv
    i32 16184, label %bb.jk
    i32 16185, label %bb.lf
    i32 16186, label %bb.oq
    i32 16187, label %bb.rj
    i32 16188, label %bb.uc
    i32 16189, label %.preheader1333
    i32 16190, label %bb.wy
    i32 16191, label %bb.xz
    i32 16192, label %bb.ya
    i32 16193, label %bb.zq
    i32 16194, label %bb.aam
    i32 16195, label %bb.aar
    i32 16196, label %.preheader1346
    i32 16197, label %.split.preheader
    i32 16198, label %bb.aem
    i32 16199, label %bb.akv
    i32 16200, label %bb.ala
    i32 16201, label %bb.aqd
    i32 16202, label %bb.art
    i32 16203, label %bb.aus
    i32 16204, label %bb.awk
    i32 16205, label %bb.azu
    i32 16206, label %bb.bag
    i32 16207, label %bb.bcl
    i32 16208, label %.loopexit1310.loopexit3719
    i32 16209, label %.loopexit1310
  ]

.preheader1346:                                   ; preds = %bb.ax
  %i.cs = icmp ult i32 %.0833, 14
  br i1 %i.cs, label %.lr.ph1842.preheader, label %._crit_edge1843

.lr.ph1842.preheader:                             ; preds = %.preheader1346
  %i.ct = zext nneg i32 %.0833 to i64
  br label %.lr.ph1842

.preheader1333:                                   ; preds = %bb.ax
  %i.cu = icmp ult i32 %.0833, 32
  br i1 %i.cu, label %.lr.ph2048.preheader, label %._crit_edge2049

.lr.ph2048.preheader:                             ; preds = %.preheader1333
  %i.cv = zext nneg i32 %.0833 to i64
  br label %.lr.ph2048

.preheader1329:                                   ; preds = %bb.ax
  %i.cw = icmp ult i32 %.0833, 16
  br i1 %i.cw, label %.lr.ph2212.preheader, label %._crit_edge2213

.lr.ph2212.preheader:                             ; preds = %.preheader1329
  %i.cx = zext nneg i32 %.0833 to i64
  br label %.lr.ph2212

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.y, label %bb.ba, label %bb.az, !prof !14, !nosanitize !13

bb.az:                                            ; preds = %bb.ay
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @152, i64 %i.v) #8, !nosanitize !13
  br label %bb.ba, !nosanitize !13

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.cy = load i32, ptr %i.as, align 16, !tbaa !30
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.bb, label %.preheader1319

.preheader1319:                                   ; preds = %bb.ba
  %i.da = icmp ult i32 %.0833, 16
  br i1 %i.da, label %.lr.ph2261.preheader, label %._crit_edge2262

.lr.ph2261.preheader:                             ; preds = %.preheader1319
  %i.db = zext nneg i32 %.0833 to i64
  br label %.lr.ph2261

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.y, label %bb.bd, label %bb.bc, !prof !14, !nosanitize !13

bb.bc:                                            ; preds = %bb.bb
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @153, i64 %i.v) #8, !nosanitize !13
  br label %bb.bd, !nosanitize !13

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  br i1 %i.ac, label %bb.bf, label %bb.be, !prof !14, !nosanitize !13

bb.be:                                            ; preds = %bb.bd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @154, i64 %i.aa) #8, !nosanitize !13
  br label %bb.bf, !nosanitize !13

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store i32 16192, ptr %i.z, align 8, !tbaa !32
  br label %.backedge

.lr.ph2261:                                       ; preds = %.lr.ph2261.preheader, %bb.bm
  %indvars.iv2761 = phi i64 [ %i.db, %.lr.ph2261.preheader ], [ %indvars.iv.next2762, %bb.bm ] ; 4 uses
  %.18452259 = phi i64 [ %.0844, %.lr.ph2261.preheader ], [ %i.do, %bb.bm ] ; 3 uses
  %.19082258 = phi i32 [ %.0907, %.lr.ph2261.preheader ], [ %i.dd, %bb.bm ] ; 2 uses
  %.19732257 = phi ptr [ %.0972, %.lr.ph2261.preheader ], [ %i.de, %bb.bm ] ; 5 uses
  %i.dc = icmp eq i32 %.19082258, 0
  br i1 %i.dc, label %.loopexit1310.loopexit2270, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph2261
  %i.dd = add i32 %.19082258, -1                  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.19732257, i64 1 ; 2 uses
  %i.df = ptrtoint ptr %.19732257 to i64, !nosanitize !13 ; 3 uses
  %i.dg = add i64 %i.df, 1, !nosanitize !13       ; 2 uses
  %i.dh = icmp ne ptr %.19732257, null, !nosanitize !13 ; 2 uses
  %i.di = icmp ne i64 %i.dg, 0
  %i.dj = and i1 %i.dh, %i.di, !nosanitize !13
  br i1 %i.dj, label %bb.bi, label %bb.bh, !prof !14, !nosanitize !13

bb.bh:                                            ; preds = %bb.bg
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @155, i64 %i.df, i64 %i.dg) #8, !nosanitize !13
  br label %bb.bi, !nosanitize !13

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  br i1 %i.dh, label %bb.bk, label %bb.bj, !prof !14, !nosanitize !13

bb.bj:                                            ; preds = %bb.bi
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @157, i64 %i.df) #8, !nosanitize !13
  br label %bb.bk, !nosanitize !13

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.dk = load i8, ptr %.19732257, align 1, !tbaa !63
  %i.dl = zext i8 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, %indvars.iv2761  ; 2 uses
  %i.dn = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.18452259, i64 %i.dm), !nosanitize !13 ; 2 uses
  %i.do = extractvalue { i64, i1 } %i.dn, 0, !nosanitize !13 ; 2 uses
  %i.dp = extractvalue { i64, i1 } %i.dn, 1, !nosanitize !13
  br i1 %i.dp, label %bb.bl, label %bb.bm, !prof !54, !nosanitize !13

bb.bl:                                            ; preds = %bb.bk
  call void @__ubsan_handle_add_overflow(ptr nonnull @158, i64 %.18452259, i64 %i.dm) #9, !nosanitize !13
  br label %bb.bm, !nosanitize !13

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %indvars.iv.next2762 = add nuw nsw i64 %indvars.iv2761, 8 ; 2 uses
  %i.dq = icmp samesign ult i64 %indvars.iv2761, 8
  br i1 %i.dq, label %.lr.ph2261, label %._crit_edge2262.loopexit, !llvm.loop !85

._crit_edge2262.loopexit:                         ; preds = %bb.bm
  %i.dr = trunc nuw nsw i64 %indvars.iv.next2762 to i32
  br label %._crit_edge2262

._crit_edge2262:                                  ; preds = %._crit_edge2262.loopexit, %.preheader1319
  %.1973.lcssa = phi ptr [ %.0972, %.preheader1319 ], [ %i.de, %._crit_edge2262.loopexit ] ; 5 uses
  %.1908.lcssa = phi i32 [ %.0907, %.preheader1319 ], [ %i.dd, %._crit_edge2262.loopexit ] ; 5 uses
  %.1845.lcssa = phi i64 [ %.0844, %.preheader1319 ], [ %i.do, %._crit_edge2262.loopexit ] ; 8 uses
  %.1834.lcssa = phi i32 [ %.0833, %.preheader1319 ], [ %i.dr, %._crit_edge2262.loopexit ] ; 3 uses
  br i1 %i.y, label %bb.bo, label %bb.bn, !prof !14, !nosanitize !13

bb.bn:                                            ; preds = %._crit_edge2262
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @159, i64 %i.v) #8, !nosanitize !13
  br label %bb.bo, !nosanitize !13

bb.bo:                                            ; preds = %._crit_edge2262, %bb.bn
  %i.ds = load i32, ptr %i.as, align 16, !tbaa !30
  %i.dt = and i32 %i.ds, 2
  %i.du = icmp ne i32 %i.dt, 0
  %i.dv = icmp eq i64 %.1845.lcssa, 35615
  %or.cond = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond, label %bb.bp, label %bb.cg

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.y, label %bb.br, label %bb.bq, !prof !14, !nosanitize !13

bb.bq:                                            ; preds = %bb.bp
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @160, i64 %i.v) #8, !nosanitize !13
  br label %bb.br, !nosanitize !13

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.dw = load i32, ptr %i.cq, align 4, !tbaa !52
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  br i1 %i.y, label %bb.bu, label %bb.bt, !prof !14, !nosanitize !13

bb.bt:                                            ; preds = %bb.bs
end_hunk_0
begin_hunk_1_@zng_inflate:bb.a
  %i.bnh = add i32 %.609671829, -1                ; 2 uses
  %i.bni = getelementptr inbounds nuw i8, ptr %.6010321828, i64 1 ; 2 uses
  %i.bnj = ptrtoint ptr %.6010321828 to i64, !nosanitize !13 ; 3 uses
  %i.bnk = add i64 %i.bnj, 1, !nosanitize !13     ; 2 uses
  %i.bnl = icmp ne ptr %.6010321828, null, !nosanitize !13 ; 2 uses
  %i.bnm = icmp ne i64 %i.bnk, 0
  %i.bnn = and i1 %i.bnl, %i.bnm, !nosanitize !13
  br i1 %i.bnn, label %bb.bct, label %bb.bcs, !prof !14, !nosanitize !13

bb.bcs:                                           ; preds = %bb.bcr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @807, i64 %i.bnj, i64 %i.bnk) #8, !nosanitize !13
  br label %bb.bct, !nosanitize !13

bb.bct:                                           ; preds = %bb.bcs, %bb.bcr
  br i1 %i.bnl, label %bb.bcv, label %bb.bcu, !prof !14, !nosanitize !13

bb.bcu:                                           ; preds = %bb.bct
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @808, i64 %i.bnj) #8, !nosanitize !13
  br label %bb.bcv, !nosanitize !13

bb.bcv:                                           ; preds = %bb.bct, %bb.bcu
  %i.bno = load i8, ptr %.6010321828, align 1, !tbaa !63
  %i.bnp = zext i8 %i.bno to i64
  %i.bnq = shl nuw nsw i64 %i.bnp, %indvars.iv2698 ; 2 uses
  %i.bnr = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.569001830, i64 %i.bnq), !nosanitize !13 ; 2 uses
  %i.bns = extractvalue { i64, i1 } %i.bnr, 0, !nosanitize !13 ; 2 uses
  %i.bnt = extractvalue { i64, i1 } %i.bnr, 1, !nosanitize !13
  br i1 %i.bnt, label %bb.bcw, label %bb.bcx, !prof !54, !nosanitize !13

bb.bcw:                                           ; preds = %bb.bcv
  call void @__ubsan_handle_add_overflow(ptr nonnull @809, i64 %.569001830, i64 %i.bnq) #9, !nosanitize !13
  br label %bb.bcx, !nosanitize !13

bb.bcx:                                           ; preds = %bb.bcv, %bb.bcw
  %indvars.iv.next2699 = add nuw nsw i64 %indvars.iv2698, 8 ; 2 uses
  %i.bnu = icmp samesign ult i64 %indvars.iv2698, 24
  br i1 %i.bnu, label %.lr.ph1832, label %._crit_edge1833.loopexit, !llvm.loop !106

._crit_edge1833.loopexit:                         ; preds = %bb.bcx
  %i.bnv = trunc nuw nsw i64 %indvars.iv.next2699 to i32
  br label %._crit_edge1833

._crit_edge1833:                                  ; preds = %._crit_edge1833.loopexit, %.preheader1348
  %.601032.lcssa = phi ptr [ %.591031, %.preheader1348 ], [ %i.bni, %._crit_edge1833.loopexit ] ; 3 uses
  %.60967.lcssa = phi i32 [ %.59966, %.preheader1348 ], [ %i.bnh, %._crit_edge1833.loopexit ] ; 3 uses
  %.56900.lcssa = phi i64 [ %.55899, %.preheader1348 ], [ %i.bns, %._crit_edge1833.loopexit ] ; 2 uses
  %.56.lcssa = phi i32 [ %.55, %.preheader1348 ], [ %i.bnv, %._crit_edge1833.loopexit ]
  br i1 %i.y, label %bb.bcz, label %bb.bcy, !prof !14, !nosanitize !13

bb.bcy:                                           ; preds = %._crit_edge1833
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @810, i64 %i.v) #8, !nosanitize !13
  br label %bb.bcz, !nosanitize !13

bb.bcz:                                           ; preds = %._crit_edge1833, %bb.bcy
  %i.bnw = load i32, ptr %i.as, align 16, !tbaa !30
  %i.bnx = and i32 %i.bnw, 4
  %.not1086 = icmp eq i32 %i.bnx, 0
  br i1 %.not1086, label %bb.bdk, label %bb.bda

bb.bda:                                           ; preds = %bb.bcz
  br i1 %i.y, label %bb.bdc, label %bb.bdb, !prof !14, !nosanitize !13

bb.bdb:                                           ; preds = %bb.bda
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @811, i64 %i.v) #8, !nosanitize !13
  br label %bb.bdc, !nosanitize !13

bb.bdc:                                           ; preds = %bb.bda, %bb.bdb
  %i.bny = load i64, ptr %i.au, align 8, !tbaa !26
  %i.bnz = and i64 %i.bny, 4294967295
  %.not1087 = icmp eq i64 %.56900.lcssa, %i.bnz
  br i1 %.not1087, label %bb.bdk, label %bb.bdd

bb.bdd:                                           ; preds = %bb.bdc
  br i1 %i.y, label %bb.bdf, label %bb.bde, !prof !14, !nosanitize !13

bb.bde:                                           ; preds = %bb.bdd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @812, i64 %i.v) #8, !nosanitize !13
  br label %bb.bdf, !nosanitize !13

bb.bdf:                                           ; preds = %bb.bde, %bb.bdd
  br i1 %i.ac, label %bb.bdh, label %bb.bdg, !prof !14, !nosanitize !13

bb.bdg:                                           ; preds = %bb.bdf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @813, i64 %i.aa) #8, !nosanitize !13
  br label %bb.bdh, !nosanitize !13

bb.bdh:                                           ; preds = %bb.bdg, %bb.bdf
  store i32 16209, ptr %i.z, align 8, !tbaa !32
  br i1 %.pre-phi27712823, label %bb.bdj, label %bb.bdi, !prof !14, !nosanitize !13

bb.bdi:                                           ; preds = %bb.bdh
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @814, i64 %i.d) #8, !nosanitize !13
  br label %bb.bdj, !nosanitize !13

bb.bdj:                                           ; preds = %bb.bdh, %bb.bdi
  store ptr @.str.19, ptr %i.az, align 8, !tbaa !29
  br label %.backedge

bb.bdk:                                           ; preds = %bb.bdc, %bb.bcz, %bb.bcq, %bb.bcn
  %.611033 = phi ptr [ %.591031, %bb.bcn ], [ %.591031, %bb.bcq ], [ %.601032.lcssa, %bb.bcz ], [ %.601032.lcssa, %bb.bdc ]
  %.61 = phi i32 [ %.59966, %bb.bcn ], [ %.59966, %bb.bcq ], [ %.60967.lcssa, %bb.bcz ], [ %.60967.lcssa, %bb.bdc ]
  %.57901 = phi i64 [ %.55899, %bb.bcn ], [ %.55899, %bb.bcq ], [ 0, %bb.bcz ], [ 0, %bb.bdc ]
  %.57 = phi i32 [ %.55, %bb.bcn ], [ %.55, %bb.bcq ], [ 0, %bb.bcz ], [ 0, %bb.bdc ]
  br i1 %i.y, label %bb.bdm, label %bb.bdl, !prof !14, !nosanitize !13

bb.bdl:                                           ; preds = %bb.bdk
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @815, i64 %i.v) #8, !nosanitize !13
  br label %bb.bdm, !nosanitize !13

bb.bdm:                                           ; preds = %bb.bdl, %bb.bdk
  br i1 %i.ac, label %bb.bdo, label %bb.bdn, !prof !14, !nosanitize !13

bb.bdn:                                           ; preds = %bb.bdm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @816, i64 %i.aa) #8, !nosanitize !13
  br label %bb.bdo, !nosanitize !13

bb.bdo:                                           ; preds = %bb.bdn, %bb.bdm
  store i32 16208, ptr %i.z, align 8, !tbaa !32
  br label %.loopexit1310

.loopexit1310.loopexit:                           ; preds = %.lr.ph2024
  %i.boa = trunc nuw i64 %indvars.iv2718 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2267:                       ; preds = %.lr.ph2014
  %i.bob = trunc nuw i64 %indvars.iv2713 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2268:                       ; preds = %.lr.ph2004
  %i.boc = trunc nuw i64 %indvars.iv2708 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2269:                       ; preds = %bb.afg
  %i.bod = trunc nuw nsw i64 %indvars.iv2704 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2270:                       ; preds = %.lr.ph2261
  %i.boe = trunc nuw nsw i64 %indvars.iv2761 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2271:                       ; preds = %.lr.ph2251
  %i.bof = trunc nuw nsw i64 %indvars.iv2758 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2272:                       ; preds = %.lr.ph2242
  %i.bog = trunc nuw nsw i64 %indvars.iv2749 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2273:                       ; preds = %.lr.ph2233
  %i.boh = trunc nuw nsw i64 %indvars.iv2746 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2274:                       ; preds = %.lr.ph2223
  %i.boi = trunc nuw nsw i64 %indvars.iv2743 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2275:                       ; preds = %.lr.ph2212
  %i.boj = trunc nuw nsw i64 %indvars.iv2740 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2276:                       ; preds = %.lr.ph2048
  %i.bok = trunc nuw nsw i64 %indvars.iv2737 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2277:                       ; preds = %.lr.ph2038
  %i.bol = trunc nuw nsw i64 %indvars.iv2735 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2279:                       ; preds = %bb.atc
  %i.bom = trunc nuw nsw i64 %indvars.iv2732 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2280:                       ; preds = %bb.asf
  %i.bon = trunc nuw nsw i64 %indvars.iv2728 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2282:                       ; preds = %bb.aod
  %i.boo = trunc nuw nsw i64 %indvars.iv2725 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2283:                       ; preds = %bb.ang
  %i.bop = trunc nuw nsw i64 %indvars.iv2721 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2285:                       ; preds = %.lr.ph1842
  %i.boq = trunc nuw nsw i64 %indvars.iv2701 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2286:                       ; preds = %.lr.ph1832
  %i.bor = trunc nuw nsw i64 %indvars.iv2698 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2287:                       ; preds = %.lr.ph
  %i.bos = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit1310

.loopexit1310.loopexit3719:                       ; preds = %bb.ax
  br label %.loopexit1310

.loopexit1310:                                    ; preds = %bb.ok, %bb.ot, %bb.qt, %bb.rm, %bb.tm, %bb.xz, %bb.aal, %bb.aau, %bb.aku, %bb.awk, %bb.azu, %.lr.ph2057, %.lr.ph1852, %bb.aqi, %bb.aux, %bb.ax, %.loopexit1310.loopexit3719, %.loopexit1310.loopexit2287, %.loopexit1310.loopexit2286, %.loopexit1310.loopexit2285, %.loopexit1310.loopexit2283, %.loopexit1310.loopexit2282, %.loopexit1310.loopexit2280, %.loopexit1310.loopexit2279, %.loopexit1310.loopexit2277, %.loopexit1310.loopexit2276, %.loopexit1310.loopexit2275, %.loopexit1310.loopexit2274, %.loopexit1310.loopexit2273, %.loopexit1310.loopexit2272, %.loopexit1310.loopexit2271, %.loopexit1310.loopexit2270, %.loopexit1310.loopexit2269, %.loopexit1310.loopexit2268, %.loopexit1310.loopexit2267, %.loopexit1310.loopexit, %bb.bdo, %bb.zc
  %.09052611 = phi i32 [ %.0905, %.loopexit1310.loopexit2268 ], [ %.0905, %.loopexit1310.loopexit2272 ], [ %.0905, %.loopexit1310.loopexit2271 ], [ %.0905, %.loopexit1310.loopexit2270 ], [ %.0905, %.loopexit1310.loopexit2269 ], [ %.0905, %.loopexit1310.loopexit2277 ], [ %.0905, %.loopexit1310.loopexit2279 ], [ %.0905, %.loopexit1310.loopexit2280 ], [ %.0905, %bb.aux ], [ %.0905, %bb.bdo ], [ %.0905, %.loopexit1310.loopexit2283 ], [ %.0905, %.loopexit1310.loopexit2274 ], [ %.0905, %.loopexit1310.loopexit ], [ %.0905, %.loopexit1310.loopexit2273 ], [ %.0905, %bb.zc ], [ %.0905, %.loopexit1310.loopexit2276 ], [ %.0905, %.loopexit1310.loopexit2285 ], [ %.0905, %bb.ax ], [ %.0905, %.lr.ph1852 ], [ %.0905, %.loopexit1310.loopexit2267 ], [ %.0905, %.loopexit1310.loopexit2287 ], [ %.0905, %.loopexit1310.loopexit2282 ], [ %.0905, %bb.aqi ], [ %.0905, %.loopexit1310.loopexit2275 ], [ %.0905, %.loopexit1310.loopexit2286 ], [ %.0905, %bb.ok ], [ %.0905, %bb.ot ], [ %.0905, %bb.qt ], [ %.0905, %bb.rm ], [ %.0905, %bb.tm ], [ %.0905, %bb.xz ], [ %.0905, %bb.aal ], [ %.0905, %bb.aau ], [ %.0905, %bb.aku ], [ 0, %bb.awk ], [ 0, %bb.azu ], [ %.0905, %.lr.ph2057 ], [ %.0905, %.loopexit1310.loopexit3719 ] ; 2 uses
  %.641036 = phi ptr [ %.3610082000, %.loopexit1310.loopexit2268 ], [ %.89802238, %.loopexit1310.loopexit2272 ], [ %.189902247, %.loopexit1310.loopexit2271 ], [ %.19732257, %.loopexit1310.loopexit2270 ], [ %.341006, %.loopexit1310.loopexit2269 ], [ %.259972033, %.loopexit1310.loopexit2277 ], [ %.511023, %.loopexit1310.loopexit2279 ], [ %.501022, %.loopexit1310.loopexit2280 ], [ %.541026, %bb.aux ], [ %.611033, %bb.bdo ], [ %.431015, %.loopexit1310.loopexit2283 ], [ %.49762218, %.loopexit1310.loopexit2274 ], [ %.3710092020, %.loopexit1310.loopexit ], [ %.69782228, %.loopexit1310.loopexit2273 ], [ %.24996.lcssa, %bb.zc ], [ %.209922044, %.loopexit1310.loopexit2276 ], [ %.2810001838, %.loopexit1310.loopexit2285 ], [ %.0972, %bb.ax ], [ %.301002, %.lr.ph1852 ], [ %.3510072010, %.loopexit1310.loopexit2267 ], [ %.5710291821, %.loopexit1310.loopexit2287 ], [ %.441016, %.loopexit1310.loopexit2282 ], [ %.471019, %bb.aqi ], [ %.29742208, %.loopexit1310.loopexit2275 ], [ %.6010321828, %.loopexit1310.loopexit2286 ], [ %.11983, %bb.ok ], [ %.13985, %bb.ot ], [ %i.um, %bb.qt ], [ %.15987, %bb.rm ], [ %i.yc, %bb.tm ], [ %.22994, %bb.xz ], [ %.25997.lcssa, %bb.aal ], [ %.27999, %bb.aau ], [ %.401012, %bb.aku ], [ %.561028, %bb.awk ], [ %.0972, %bb.azu ], [ %.23995, %.lr.ph2057 ], [ %.0972, %.loopexit1310.loopexit3719 ]
  %.64 = phi i32 [ 0, %.loopexit1310.loopexit2268 ], [ 0, %.loopexit1310.loopexit2272 ], [ 0, %.loopexit1310.loopexit2271 ], [ 0, %.loopexit1310.loopexit2270 ], [ 0, %.loopexit1310.loopexit2269 ], [ 0, %.loopexit1310.loopexit2277 ], [ 0, %.loopexit1310.loopexit2279 ], [ 0, %.loopexit1310.loopexit2280 ], [ 0, %bb.aux ], [ %.61, %bb.bdo ], [ 0, %.loopexit1310.loopexit2283 ], [ 0, %.loopexit1310.loopexit2274 ], [ 0, %.loopexit1310.loopexit ], [ 0, %.loopexit1310.loopexit2273 ], [ %.24931.lcssa, %bb.zc ], [ 0, %.loopexit1310.loopexit2276 ], [ 0, %.loopexit1310.loopexit2285 ], [ %.0907, %bb.ax ], [ 0, %.lr.ph1852 ], [ 0, %.loopexit1310.loopexit2267 ], [ 0, %.loopexit1310.loopexit2287 ], [ 0, %.loopexit1310.loopexit2282 ], [ 0, %bb.aqi ], [ 0, %.loopexit1310.loopexit2275 ], [ 0, %.loopexit1310.loopexit2286 ], [ %.11918, %bb.ok ], [ 0, %bb.ot ], [ %i.ul, %bb.qt ], [ 0, %bb.rm ], [ %i.yb, %bb.tm ], [ %.22929, %bb.xz ], [ %.25932.lcssa, %bb.aal ], [ %.27934, %bb.aau ], [ %.40947, %bb.aku ], [ %.56963, %bb.awk ], [ %.0907, %bb.azu ], [ 0, %.lr.ph2057 ], [ %.0907, %.loopexit1310.loopexit3719 ]
  %.60904 = phi i64 [ %.328762002, %.loopexit1310.loopexit2268 ], [ %.88522240, %.loopexit1310.loopexit2272 ], [ %.148582249, %.loopexit1310.loopexit2271 ], [ %.18452259, %.loopexit1310.loopexit2270 ], [ %.30874, %.loopexit1310.loopexit2269 ], [ %.218652035, %.loopexit1310.loopexit2277 ], [ %.47891, %.loopexit1310.loopexit2279 ], [ %.46890, %.loopexit1310.loopexit2280 ], [ %.50894, %bb.aux ], [ %.57901, %bb.bdo ], [ %.39883, %.loopexit1310.loopexit2283 ], [ %.48482220, %.loopexit1310.loopexit2274 ], [ %.338772022, %.loopexit1310.loopexit ], [ %.68502230, %.loopexit1310.loopexit2273 ], [ %i.adc, %bb.zc ], [ %.168602046, %.loopexit1310.loopexit2276 ], [ %.248681840, %.loopexit1310.loopexit2285 ], [ %.0844, %bb.ax ], [ %.26870, %.lr.ph1852 ], [ %.318752012, %.loopexit1310.loopexit2267 ], [ %.538971823, %.loopexit1310.loopexit2287 ], [ %.40884, %.loopexit1310.loopexit2282 ], [ %.43887, %bb.aqi ], [ %.28462210, %.loopexit1310.loopexit2275 ], [ %.569001830, %.loopexit1310.loopexit2286 ], [ %.10854, %bb.ok ], [ %.11855, %bb.ot ], [ %.11855, %bb.qt ], [ %.12856, %bb.rm ], [ %.12856, %bb.tm ], [ %.18862, %bb.xz ], [ 0, %bb.aal ], [ %.23867, %bb.aau ], [ %.36880, %bb.aku ], [ %.52896, %bb.awk ], [ %.0844, %bb.azu ], [ %.19863, %.lr.ph2057 ], [ %.0844, %.loopexit1310.loopexit3719 ] ; 2 uses
  %.60 = phi i32 [ %i.boc, %.loopexit1310.loopexit2268 ], [ %i.bog, %.loopexit1310.loopexit2272 ], [ %i.bof, %.loopexit1310.loopexit2271 ], [ %i.boe, %.loopexit1310.loopexit2270 ], [ %i.bod, %.loopexit1310.loopexit2269 ], [ %i.bol, %.loopexit1310.loopexit2277 ], [ %i.bom, %.loopexit1310.loopexit2279 ], [ %i.bon, %.loopexit1310.loopexit2280 ], [ %.50, %bb.aux ], [ %.57, %bb.bdo ], [ %i.bop, %.loopexit1310.loopexit2283 ], [ %i.boi, %.loopexit1310.loopexit2274 ], [ %i.boa, %.loopexit1310.loopexit ], [ %i.boh, %.loopexit1310.loopexit2273 ], [ %i.adb, %bb.zc ], [ %i.bok, %.loopexit1310.loopexit2276 ], [ %i.boq, %.loopexit1310.loopexit2285 ], [ %.0833, %bb.ax ], [ %.26, %.lr.ph1852 ], [ %i.bob, %.loopexit1310.loopexit2267 ], [ %i.bos, %.loopexit1310.loopexit2287 ], [ %i.boo, %.loopexit1310.loopexit2282 ], [ %.43, %bb.aqi ], [ %i.boj, %.loopexit1310.loopexit2275 ], [ %i.bor, %.loopexit1310.loopexit2286 ], [ %.10843, %bb.ok ], [ %.11, %bb.ot ], [ %.11, %bb.qt ], [ %.12, %bb.rm ], [ %.12, %bb.tm ], [ %.18, %bb.xz ], [ 0, %bb.aal ], [ %.23, %bb.aau ], [ %.36, %bb.aku ], [ %.52, %bb.awk ], [ %.0833, %bb.azu ], [ %.19, %.lr.ph2057 ], [ %.0833, %.loopexit1310.loopexit3719 ]
  %.5832 = phi i32 [ %.0827, %.loopexit1310.loopexit2268 ], [ %.0827, %.loopexit1310.loopexit2272 ], [ %.0827, %.loopexit1310.loopexit2271 ], [ %.0827, %.loopexit1310.loopexit2270 ], [ %.0827, %.loopexit1310.loopexit2269 ], [ %.0827, %.loopexit1310.loopexit2277 ], [ %.0827, %.loopexit1310.loopexit2279 ], [ %.0827, %.loopexit1310.loopexit2280 ], [ %.0827, %bb.aux ], [ %.2829, %bb.bdo ], [ %.0827, %.loopexit1310.loopexit2283 ], [ %.0827, %.loopexit1310.loopexit2274 ], [ %.0827, %.loopexit1310.loopexit ], [ %.0827, %.loopexit1310.loopexit2273 ], [ %.0827, %bb.zc ], [ %.0827, %.loopexit1310.loopexit2276 ], [ %.0827, %.loopexit1310.loopexit2285 ], [ %.0827, %bb.ax ], [ %.0827, %.lr.ph1852 ], [ %.0827, %.loopexit1310.loopexit2267 ], [ %.0827, %.loopexit1310.loopexit2287 ], [ %.0827, %.loopexit1310.loopexit2282 ], [ %.0827, %bb.aqi ], [ %.0827, %.loopexit1310.loopexit2275 ], [ %.2829, %.loopexit1310.loopexit2286 ], [ %.0827, %.lr.ph2057 ], [ %.0827, %bb.azu ], [ %.0827, %bb.awk ], [ %.0827, %bb.aku ], [ %.0827, %bb.aau ], [ %.0827, %bb.aal ], [ %.0827, %bb.xz ], [ %.0827, %bb.tm ], [ %.0827, %bb.rm ], [ %.0827, %bb.qt ], [ %.0827, %bb.ot ], [ %.0827, %bb.ok ], [ %.0827, %.loopexit1310.loopexit3719 ] ; 5 uses
  %.9 = phi i32 [ %.1, %.loopexit1310.loopexit2268 ], [ %.0818, %.loopexit1310.loopexit2272 ], [ %.0818, %.loopexit1310.loopexit2271 ], [ %.0818, %.loopexit1310.loopexit2270 ], [ %.1, %.loopexit1310.loopexit2269 ], [ %.0818, %.loopexit1310.loopexit2277 ], [ %.5, %.loopexit1310.loopexit2279 ], [ %.5, %.loopexit1310.loopexit2280 ], [ %.6, %bb.aux ], [ 1, %bb.bdo ], [ %.3, %.loopexit1310.loopexit2283 ], [ %.0818, %.loopexit1310.loopexit2274 ], [ %.1, %.loopexit1310.loopexit ], [ %.0818, %.loopexit1310.loopexit2273 ], [ %.0818, %bb.zc ], [ %.0818, %.loopexit1310.loopexit2276 ], [ %.0818, %.loopexit1310.loopexit2285 ], [ -3, %bb.ax ], [ %.0818, %.lr.ph1852 ], [ %.1, %.loopexit1310.loopexit2267 ], [ %.0818, %.loopexit1310.loopexit2287 ], [ %.3, %.loopexit1310.loopexit2282 ], [ %.4, %bb.aqi ], [ %.0818, %.loopexit1310.loopexit2275 ], [ %.0818, %.loopexit1310.loopexit2286 ], [ %.0818, %bb.ok ], [ %.0818, %bb.ot ], [ %.0818, %bb.qt ], [ %.0818, %bb.rm ], [ %.0818, %bb.tm ], [ %.0818, %bb.xz ], [ %.0818, %bb.aal ], [ %.0818, %bb.aau ], [ 0, %bb.aku ], [ %.7, %bb.awk ], [ %.0818, %bb.azu ], [ %.0818, %.lr.ph2057 ], [ 1, %.loopexit1310.loopexit3719 ] ; 2 uses
  br i1 %.pre-phi27712823, label %bb.bdq, label %bb.bdp, !prof !14, !nosanitize !13

bb.bdp:                                           ; preds = %.loopexit1310
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @817, i64 %i.d) #8, !nosanitize !13
  br label %bb.bdq, !nosanitize !13

bb.bdq:                                           ; preds = %bb.bdp, %.loopexit1310
  br i1 %i.k, label %bb.bds, label %bb.bdr, !prof !14, !nosanitize !13

bb.bdr:                                           ; preds = %bb.bdq
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @818, i64 %i.i) #8, !nosanitize !13
  br label %bb.bds, !nosanitize !13

bb.bds:                                           ; preds = %bb.bdr, %bb.bdq
  store ptr %.0969, ptr %i.h, align 8, !tbaa !107
  br i1 %.pre-phi27712823, label %.critedge3713, label %bb.bdt, !prof !14, !nosanitize !13

bb.bdt:                                           ; preds = %bb.bds
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @819, i64 %i.d) #8, !nosanitize !13
  store i32 %.09052611, ptr %i.ag, align 8, !tbaa !108
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @820, i64 %i.d) #8, !nosanitize !13
  br label %bb.bdu, !nosanitize !13

.critedge3713:                                    ; preds = %bb.bds
  store i32 %.09052611, ptr %i.ag, align 8, !tbaa !108
  br label %bb.bdu

bb.bdu:                                           ; preds = %.critedge3713, %bb.bdt
  br i1 %i.f, label %bb.bdw, label %bb.bdv, !prof !14, !nosanitize !13

bb.bdv:                                           ; preds = %bb.bdu
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @821, i64 %i.d) #8, !nosanitize !13
  br label %bb.bdw, !nosanitize !13

bb.bdw:                                           ; preds = %bb.bdv, %bb.bdu
  store ptr %.641036, ptr %0, align 8, !tbaa !66
  br i1 %.pre-phi27712823, label %bb.bdy, label %bb.bdx, !prof !14, !nosanitize !13

bb.bdx:                                           ; preds = %bb.bdw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @822, i64 %i.d) #8, !nosanitize !13
  br label %bb.bdy, !nosanitize !13

bb.bdy:                                           ; preds = %bb.bdw, %bb.bdx
  store i32 %.64, ptr %i.aj, align 8, !tbaa !67
  br i1 %i.y, label %.critedge3715, label %bb.bdz, !prof !14, !nosanitize !13

bb.bdz:                                           ; preds = %bb.bdy
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @823, i64 %i.v) #8, !nosanitize !13
  store i64 %.60904, ptr %i.al, align 8, !tbaa !38
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @824, i64 %i.v) #8, !nosanitize !13
  br label %bb.bea, !nosanitize !13

.critedge3715:                                    ; preds = %bb.bdy
  store i64 %.60904, ptr %i.al, align 8, !tbaa !38
  br label %bb.bea

bb.bea:                                           ; preds = %.critedge3715, %bb.bdz
  br i1 %i.aq, label %bb.bec, label %bb.beb, !prof !14, !nosanitize !13

bb.beb:                                           ; preds = %bb.bea
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @825, i64 %i.ao) #8, !nosanitize !13
  br label %bb.bec, !nosanitize !13

bb.bec:                                           ; preds = %bb.beb, %bb.bea
  store i32 %.60, ptr %i.an, align 32, !tbaa !39
  br i1 %.pre-phi27712823, label %bb.bee, label %bb.bed, !prof !14, !nosanitize !13

bb.bed:                                           ; preds = %bb.bec
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @826, i64 %i.d) #8, !nosanitize !13
  br label %bb.bee, !nosanitize !13

bb.bee:                                           ; preds = %bb.bec, %bb.bed
  %i.bot = load i32, ptr %i.ag, align 8, !tbaa !108 ; 2 uses
  %i.bou = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.5832, i32 %i.bot), !nosanitize !13 ; 2 uses
  %i.bov = extractvalue { i32, i1 } %i.bou, 0, !nosanitize !13 ; 3 uses
  %i.bow = extractvalue { i32, i1 } %i.bou, 1, !nosanitize !13
  br i1 %i.bow, label %bb.bef, label %bb.beg, !prof !54, !nosanitize !13

bb.bef:                                           ; preds = %bb.bee
  %i.box = zext i32 %.5832 to i64, !nosanitize !13
  %i.boy = zext i32 %i.bot to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @827, i64 %i.box, i64 %i.boy) #9, !nosanitize !13
  br label %bb.beg, !nosanitize !13

bb.beg:                                           ; preds = %bb.bef, %bb.bee
  br i1 %i.y, label %bb.bei, label %bb.beh, !prof !14, !nosanitize !13

bb.beh:                                           ; preds = %bb.beg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @828, i64 %i.v) #8, !nosanitize !13
  br label %bb.bei, !nosanitize !13

bb.bei:                                           ; preds = %bb.beh, %bb.beg
  br i1 %i.ce, label %bb.bek, label %bb.bej, !prof !14, !nosanitize !13

bb.bej:                                           ; preds = %bb.bei
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @829, i64 %i.cc) #8, !nosanitize !13
  br label %bb.bek, !nosanitize !13

bb.bek:                                           ; preds = %bb.bej, %bb.bei
  %i.boz = load i32, ptr %i.cb, align 64, !tbaa !48
  %.not1177 = icmp eq i32 %i.boz, 0
  br i1 %.not1177, label %bb.bel, label %bb.bey

bb.bel:                                           ; preds = %bb.bek
  br i1 %.pre-phi27712823, label %bb.ben, label %bb.bem, !prof !14, !nosanitize !13

bb.bem:                                           ; preds = %bb.bel
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @830, i64 %i.d) #8, !nosanitize !13
  br label %bb.ben, !nosanitize !13

bb.ben:                                           ; preds = %bb.bel, %bb.bem
  %i.bpa = load i32, ptr %i.ag, align 8, !tbaa !108
  %.not1178 = icmp eq i32 %.5832, %i.bpa
  br i1 %.not1178, label %bb.bff, label %bb.beo

bb.beo:                                           ; preds = %bb.ben
  br i1 %i.y, label %bb.beq, label %bb.bep, !prof !14, !nosanitize !13

bb.bep:                                           ; preds = %bb.beo
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @831, i64 %i.v) #8, !nosanitize !13
  br label %bb.beq, !nosanitize !13

bb.beq:                                           ; preds = %bb.bep, %bb.beo
  br i1 %i.ac, label %bb.bes, label %bb.ber, !prof !14, !nosanitize !13

bb.ber:                                           ; preds = %bb.beq
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @832, i64 %i.aa) #8, !nosanitize !13
  br label %bb.bes, !nosanitize !13

bb.bes:                                           ; preds = %bb.ber, %bb.beq
  %i.bpb = load i32, ptr %i.z, align 8, !tbaa !32
  %i.bpc = icmp ult i32 %i.bpb, 16209
  br i1 %i.bpc, label %bb.bet, label %bb.bff

bb.bet:                                           ; preds = %bb.bes
  br i1 %i.y, label %bb.bev, label %bb.beu, !prof !14, !nosanitize !13

bb.beu:                                           ; preds = %bb.bet
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @833, i64 %i.v) #8, !nosanitize !13
  br label %bb.bev, !nosanitize !13

bb.bev:                                           ; preds = %bb.beu, %bb.bet
  br i1 %i.ac, label %bb.bex, label %bb.bew, !prof !14, !nosanitize !13

bb.bew:                                           ; preds = %bb.bev
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @834, i64 %i.aa) #8, !nosanitize !13
  br label %bb.bex, !nosanitize !13

bb.bex:                                           ; preds = %bb.bew, %bb.bev
  %i.bpd = load i32, ptr %i.z, align 8, !tbaa !32
  %i.bpe = icmp ult i32 %i.bpd, 16206
  %i.bpf = icmp ne i32 %1, 4
  %or.cond7 = or i1 %i.bpf, %i.bpe
  br i1 %or.cond7, label %bb.bey, label %bb.bff

bb.bey:                                           ; preds = %bb.bex, %bb.bek
  br i1 %.pre-phi27712823, label %bb.bfa, label %bb.bez, !prof !14, !nosanitize !13

bb.bez:                                           ; preds = %bb.bey
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @835, i64 %i.d) #8, !nosanitize !13
  br label %bb.bfa, !nosanitize !13

bb.bfa:                                           ; preds = %bb.bez, %bb.bey
  br i1 %i.k, label %bb.bfc, label %bb.bfb, !prof !14, !nosanitize !13

bb.bfb:                                           ; preds = %bb.bfa
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @836, i64 %i.i) #8, !nosanitize !13
  br label %bb.bfc, !nosanitize !13

bb.bfc:                                           ; preds = %bb.bfb, %bb.bfa
  %i.bpg = load ptr, ptr %i.h, align 8, !tbaa !107
  br i1 %i.y, label %bb.bfe, label %bb.bfd, !prof !14, !nosanitize !13

bb.bfd:                                           ; preds = %bb.bfc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @837, i64 %i.v) #8, !nosanitize !13
  br label %bb.bfe, !nosanitize !13

bb.bfe:                                           ; preds = %bb.bfc, %bb.bfd
  %i.bph = load i32, ptr %i.as, align 16, !tbaa !30
  %i.bpi = and i32 %i.bph, 4
  call fastcc void @updatewindow(ptr noundef nonnull %0, ptr noundef %i.bpg, i32 noundef %i.bov, i32 noundef %i.bpi)
  br label %bb.bff

bb.bff:                                           ; preds = %bb.bex, %bb.bfe, %bb.bes, %bb.ben
  br i1 %.pre-phi27712823, label %bb.bfh, label %bb.bfg, !prof !14, !nosanitize !13

bb.bfg:                                           ; preds = %bb.bff
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @838, i64 %i.d) #8, !nosanitize !13
  br label %bb.bfh, !nosanitize !13

bb.bfh:                                           ; preds = %bb.bff, %bb.bfg
  %i.bpj = load i32, ptr %i.aj, align 8, !tbaa !67 ; 2 uses
  %i.bpk = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.ak, i32 %i.bpj), !nosanitize !13 ; 2 uses
  %i.bpl = extractvalue { i32, i1 } %i.bpk, 0, !nosanitize !13 ; 2 uses
  %i.bpm = extractvalue { i32, i1 } %i.bpk, 1, !nosanitize !13
  br i1 %i.bpm, label %bb.bfi, label %bb.bfj, !prof !54, !nosanitize !13

bb.bfi:                                           ; preds = %bb.bfh
  %i.bpn = zext i32 %i.ak to i64, !nosanitize !13
  %i.bpo = zext i32 %i.bpj to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @839, i64 %i.bpn, i64 %i.bpo) #9, !nosanitize !13
  br label %bb.bfj, !nosanitize !13

bb.bfj:                                           ; preds = %bb.bfi, %bb.bfh
  br i1 %.pre-phi27712823, label %bb.bfl, label %bb.bfk, !prof !14, !nosanitize !13

bb.bfk:                                           ; preds = %bb.bfj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @840, i64 %i.d) #8, !nosanitize !13
  br label %bb.bfl, !nosanitize !13

bb.bfl:                                           ; preds = %bb.bfj, %bb.bfk
  %i.bpp = load i32, ptr %i.ag, align 8, !tbaa !108 ; 2 uses
  %i.bpq = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.5832, i32 %i.bpp), !nosanitize !13 ; 2 uses
  %i.bpr = extractvalue { i32, i1 } %i.bpq, 0, !nosanitize !13 ; 2 uses
  %i.bps = extractvalue { i32, i1 } %i.bpq, 1, !nosanitize !13
  br i1 %i.bps, label %bb.bfm, label %bb.bfn, !prof !54, !nosanitize !13

bb.bfm:                                           ; preds = %bb.bfl
  %i.bpt = zext i32 %.5832 to i64, !nosanitize !13
  %i.bpu = zext i32 %i.bpp to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @841, i64 %i.bpt, i64 %i.bpu) #9, !nosanitize !13
  br label %bb.bfn, !nosanitize !13

bb.bfn:                                           ; preds = %bb.bfm, %bb.bfl
  %i.bpv = zext i32 %i.bpl to i64                 ; 2 uses
end_hunk_1
