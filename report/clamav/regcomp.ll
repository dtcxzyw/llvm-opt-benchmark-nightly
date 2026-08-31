Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/regcomp?download=true
inline.NumInlined: 150
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cli_regcomp_real:bb.a
  %i.j = ptrtoint ptr %1 to i64
  %i.k = sub i64 %i.i, %i.j
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.k, %bb.d ], [ %i.l, %bb.e ]  ; 4 uses
  %i.m = tail call ptr @cli_max_malloc(i64 noundef 367) #10 ; 24 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.ba, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ugt i64 %.0, 768614336404564649
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.m) #10
  br label %bb.ba

bb.i:                                             ; preds = %bb.g
  %i.p = lshr i64 %.0, 1
  %i.q = mul nuw nsw i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 1                  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !14
  %i.t = icmp samesign ult i64 %i.r, %.0
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.m) #10
  br label %bb.ba

bb.k:                                             ; preds = %bb.i
  %i.u = tail call ptr @cli_max_calloc(i64 noundef %i.r, i64 noundef 8) #10 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 6 uses
  %i.x = icmp eq ptr %i.u, null
  br i1 %i.x, label %bb.l, label %doemit.exit

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.m) #10
  br label %bb.ba

doemit.exit:                                      ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.m, ptr %i.y, align 8, !tbaa !18
  store ptr %1, ptr %3, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.ac, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ad, i8 0, i64 160, i1 false)
  store i32 256, ptr %i.ae, align 4, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i32 0, ptr %i.ag, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store i32 %i.a, ptr %i.ah, align 4, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 6 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 68
  store i32 0, ptr %i.aj, align 4, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 0, ptr %i.ak, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.w, align 8, !tbaa !30
  store i64 134217728, ptr %i.u, align 8, !tbaa !31
  %.pre = load i64, ptr %i.w, align 8, !tbaa !30
  %i.ao = add nsw i64 %.pre, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !32
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %doemit.exit
  call fastcc void @p_ere(ptr noundef %3, i32 noundef 128)
  br label %bb.q

bb.n:                                             ; preds = %doemit.exit
  br i1 %.not86, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call fastcc void @p_str(ptr noundef %3)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call fastcc void @p_bre(ptr noundef %3, i32 noundef 128, i32 noundef 128)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %i.aq = load i32, ptr %i.ab, align 8, !tbaa !21
  %.not.i92 = icmp eq i32 %i.aq, 0
  br i1 %.not.i92, label %bb.r, label %doemit.exit98

bb.r:                                             ; preds = %bb.q
  %i.ar = load i64, ptr %i.w, align 8, !tbaa !30  ; 3 uses
  %i.as = load i64, ptr %i.s, align 8, !tbaa !14  ; 3 uses
  %.not8.i93 = icmp slt i64 %i.ar, %i.as
  br i1 %.not8.i93, label %.enlarge.exit.thread.i95_crit_edge, label %bb.s

.enlarge.exit.thread.i95_crit_edge:               ; preds = %bb.r
  %.pre121 = load ptr, ptr %i.v, align 8, !tbaa !17
  br label %enlarge.exit.thread.i95

bb.s:                                             ; preds = %bb.r
  %i.at = add nsw i64 %i.as, 1
  %i.au = sdiv i64 %i.at, 2                       ; 2 uses
  %i.av = mul nsw i64 %i.au, 3                    ; 2 uses
  %.not.i.i94 = icmp slt i64 %i.as, %i.av
  %.pre122 = load ptr, ptr %i.v, align 8, !tbaa !17 ; 2 uses
  br i1 %.not.i.i94, label %bb.t, label %enlarge.exit.thread.i95

bb.t:                                             ; preds = %bb.s
  %i.aw = mul i64 %i.au, 24
  %i.ax = call ptr @cli_max_realloc(ptr noundef %.pre122, i64 noundef %i.aw) #10 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.az = load i32, ptr %i.ab, align 8, !tbaa !21
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.v, label %enlarge.exit.i97

bb.v:                                             ; preds = %bb.u
  store i32 12, ptr %i.ab, align 8, !tbaa !21
  br label %enlarge.exit.i97

bb.w:                                             ; preds = %bb.t
  store ptr %i.ax, ptr %i.v, align 8, !tbaa !17
  store i64 %i.av, ptr %i.s, align 8, !tbaa !14
  %.pre.i96 = load i64, ptr %i.w, align 8, !tbaa !30
  br label %enlarge.exit.thread.i95

enlarge.exit.i97:                                 ; preds = %bb.v, %bb.u
  store ptr @nuls, ptr %3, align 8, !tbaa !19
  store ptr @nuls, ptr %i.aa, align 8, !tbaa !20
  br label %doemit.exit98

enlarge.exit.thread.i95:                          ; preds = %.enlarge.exit.thread.i95_crit_edge, %bb.w, %bb.s
  %i.bb = phi ptr [ %.pre122, %bb.s ], [ %i.ax, %bb.w ], [ %.pre121, %.enlarge.exit.thread.i95_crit_edge ]
  %i.bc = phi i64 [ %i.ar, %bb.s ], [ %.pre.i96, %bb.w ], [ %i.ar, %.enlarge.exit.thread.i95_crit_edge ] ; 2 uses
  %i.bd = add nsw i64 %i.bc, 1
  store i64 %i.bd, ptr %i.w, align 8, !tbaa !30
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  store i64 134217728, ptr %i.be, align 8, !tbaa !31
  br label %doemit.exit98

doemit.exit98:                                    ; preds = %bb.q, %enlarge.exit.i97, %enlarge.exit.thread.i95
  %i.bf = load i64, ptr %i.w, align 8, !tbaa !30  ; 3 uses
  %i.bg = add nsw i64 %i.bf, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 %i.bf, ptr %i.bi, align 8, !tbaa !34
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !17
  %i.bk = shl i64 %i.bf, 3
  %i.bl = call ptr @cli_max_realloc(ptr noundef %i.bj, i64 noundef %i.bk) #10 ; 3 uses
  store ptr %i.bl, ptr %i.m, align 8, !tbaa !35
  %i.bm = icmp eq ptr %i.bl, null
  %.val.pre = load i32, ptr %i.ab, align 8, !tbaa !21 ; 3 uses
  %i.bn = icmp eq i32 %.val.pre, 0                ; 2 uses
  br i1 %i.bm, label %bb.x, label %stripsnug.exit

bb.x:                                             ; preds = %doemit.exit98
  br i1 %i.bn, label %bb.y, label %stripsnug.exit.thread

bb.y:                                             ; preds = %bb.x
  store i32 12, ptr %i.ab, align 8, !tbaa !21
  br label %stripsnug.exit.thread

stripsnug.exit.thread:                            ; preds = %bb.x, %bb.y
  %.val124 = phi i32 [ 12, %bb.y ], [ %.val.pre, %bb.x ]
  store ptr @nuls, ptr %3, align 8, !tbaa !19
  store ptr @nuls, ptr %i.aa, align 8, !tbaa !20
  %i.bo = load ptr, ptr %i.v, align 8, !tbaa !17
  store ptr %i.bo, ptr %i.m, align 8, !tbaa !35
  br label %pluscount.exit

stripsnug.exit:                                   ; preds = %doemit.exit98
  br i1 %i.bn, label %bb.z, label %pluscount.exit

bb.z:                                             ; preds = %stripsnug.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.af, %bb.z
  %.048.i = phi ptr [ %i.bp, %bb.z ], [ %.3.i, %bb.af ] ; 4 uses
  %.045.i = phi ptr [ null, %bb.z ], [ %.247.i, %bb.af ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.z ], [ %.sroa.0.2.i, %bb.af ] ; 7 uses
  %.040.i = phi i64 [ 0, %bb.z ], [ %.141.i, %bb.af ] ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.048.i, i64 8 ; 5 uses
  %i.br = load i64, ptr %.048.i, align 8, !tbaa !31 ; 7 uses
  %i.bs = lshr i64 %i.br, 27
  %i.bt = and i64 %i.bs, 31
  switch i64 %i.bt, label %.loopexit.i [
    i64 2, label %bb.ab
    i64 9, label %bb.af
    i64 13, label %bb.af
    i64 14, label %bb.af
    i64 11, label %.preheader
    i64 15, label %.preheader
  ]

.preheader:                                       ; preds = %bb.aa, %bb.aa
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bu = icmp eq i64 %.040.i, 0
  %4 = ptrtoint ptr %.048.i to i64
  %spec.select.i = select i1 %i.bu, i64 %4, i64 %.sroa.0.0.i
  %i.bv = add nsw i64 %.040.i, 1
  br label %bb.af

bb.ac:                                            ; preds = %.preheader, %bb.ac
  %.149.i = phi ptr [ %i.bx, %bb.ac ], [ %.048.i, %.preheader ]
  %.039.i = phi i64 [ %i.by, %bb.ac ], [ %i.br, %.preheader ]
  %i.bw = and i64 %.039.i, 134217727
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.149.i, i64 %i.bw ; 4 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !31 ; 4 uses
  %i.bz = trunc i64 %i.by to i32
  %trunc.i = and i32 %i.bz, -134217728
  switch i32 %trunc.i, label %bb.ad [
    i32 -1879048192, label %.loopexit.i
    i32 1610612736, label %.loopexit.i
    i32 -2013265920, label %bb.ac
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ca = load i32, ptr %i.ai, align 8, !tbaa !27
  %i.cb = or i32 %i.ca, 4
  store i32 %i.cb, ptr %i.ai, align 8, !tbaa !27
  br label %findmust.exit

.loopexit.i:                                      ; preds = %bb.ac, %bb.ac, %bb.aa
  %.250.i = phi ptr [ %i.bq, %bb.aa ], [ %i.bx, %bb.ac ], [ %i.bx, %bb.ac ] ; 2 uses
  %.1.i = phi i64 [ %i.br, %bb.aa ], [ %i.by, %bb.ac ], [ %i.by, %bb.ac ] ; 2 uses
  %i.cc = load i32, ptr %i.am, align 8, !tbaa !36
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp sgt i64 %.040.i, %i.cd
  br i1 %i.ce, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.loopexit.i
  %5 = inttoptr i64 %.sroa.0.0.i to ptr
  %i.cf = trunc i64 %.040.i to i32
  store i32 %i.cf, ptr %i.am, align 8, !tbaa !36
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.loopexit.i, %bb.ab, %bb.aa, %bb.aa, %bb.aa
  %.3.i = phi ptr [ %i.bq, %bb.aa ], [ %i.bq, %bb.ab ], [ %i.bq, %bb.aa ], [ %i.bq, %bb.aa ], [ %.250.i, %bb.ae ], [ %.250.i, %.loopexit.i ]
  %.247.i = phi ptr [ %.045.i, %bb.aa ], [ %.045.i, %bb.ab ], [ %.045.i, %bb.aa ], [ %.045.i, %bb.aa ], [ %5, %bb.ae ], [ %.045.i, %.loopexit.i ] ; 4 uses
  %.sroa.0.2.i = phi i64 [ %.sroa.0.0.i, %bb.aa ], [ %spec.select.i, %bb.ab ], [ %.sroa.0.0.i, %bb.aa ], [ %.sroa.0.0.i, %bb.aa ], [ %.sroa.0.0.i, %bb.ae ], [ %.sroa.0.0.i, %.loopexit.i ]
  %.141.i = phi i64 [ %.040.i, %bb.aa ], [ %i.bv, %bb.ab ], [ %.040.i, %bb.aa ], [ %.040.i, %bb.aa ], [ 0, %bb.ae ], [ 0, %.loopexit.i ]
  %.2.i = phi i64 [ %i.br, %bb.aa ], [ %i.br, %bb.ab ], [ %i.br, %bb.aa ], [ %i.br, %bb.aa ], [ %.1.i, %bb.ae ], [ %.1.i, %.loopexit.i ]
  %i.cg = and i64 %.2.i, 4160749568
  %.not56.i = icmp eq i64 %i.cg, 134217728
  br i1 %.not56.i, label %bb.ag, label %bb.aa

bb.ag:                                            ; preds = %bb.af
  %i.ch = load i32, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %findmust.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cj = icmp eq ptr %.247.i, null
  br i1 %i.cj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.am, align 8, !tbaa !36
  br label %findmust.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ck = sext i32 %i.ch to i64
  %i.cl = add nsw i64 %i.ck, 1
  %i.cm = call ptr @cli_max_malloc(i64 noundef %i.cl) #10 ; 6 uses
  store ptr %i.cm, ptr %i.al, align 8, !tbaa !37
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.am, align 8, !tbaa !36
  br label %findmust.exit

bb.al:                                            ; preds = %bb.aj
  %i.co = load i32, ptr %i.am, align 8, !tbaa !36 ; 3 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.preheader.preheader.i, label %._crit_edge.i

.preheader.preheader.i:                           ; preds = %bb.al
  %i.cq = zext nneg i32 %i.co to i64              ; 3 uses
  %xtraiter = and i64 %i.cq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.preheader.i, %.preheader.i.prol
  %.5.i.prol = phi ptr [ %i.cr, %.preheader.i.prol ], [ %.247.i, %.preheader.preheader.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.5.i.prol, i64 8 ; 2 uses
  %i.cs = load i64, ptr %.5.i.prol, align 8, !tbaa !31 ; 2 uses
  %i.ct = and i64 %i.cs, 4160749568
  %.not57.i.prol = icmp eq i64 %i.ct, 268435456
  br i1 %.not57.i.prol, label %.preheader.i.prol.loopexit.unr-lcssa, label %.preheader.i.prol

.preheader.i.prol.loopexit.unr-lcssa:             ; preds = %.preheader.i.prol
  %i.cu = trunc i64 %i.cs to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 2 uses
  store i8 %i.cu, ptr %i.cm, align 1, !tbaa !38
  %i.cw = add nsw i64 %i.cq, -1
  br label %.preheader.i.prol.loopexit

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol.loopexit.unr-lcssa, %.preheader.preheader.i
  %.08.i.unr = phi i64 [ %i.cq, %.preheader.preheader.i ], [ %i.cw, %.preheader.i.prol.loopexit.unr-lcssa ]
  %.0387.i.unr = phi ptr [ %i.cm, %.preheader.preheader.i ], [ %i.cv, %.preheader.i.prol.loopexit.unr-lcssa ]
  %.46.i.unr = phi ptr [ %.247.i, %.preheader.preheader.i ], [ %i.cr, %.preheader.i.prol.loopexit.unr-lcssa ]
  %.lcssa156.unr = phi ptr [ poison, %.preheader.preheader.i ], [ %i.cv, %.preheader.i.prol.loopexit.unr-lcssa ]
  %i.cx = icmp eq i32 %i.co, 1
  br i1 %i.cx, label %._crit_edge.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %bb.ao
  %.08.i = phi i64 [ %i.di, %bb.ao ], [ %.08.i.unr, %.preheader.i.prol.loopexit ] ; 2 uses
  %.0387.i = phi ptr [ %i.dh, %bb.ao ], [ %.0387.i.unr, %.preheader.i.prol.loopexit ] ; 3 uses
  %.46.i = phi ptr [ %i.dd, %bb.ao ], [ %.46.i.unr, %.preheader.i.prol.loopexit ]
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.preheader.i
  %.5.i = phi ptr [ %i.cy, %bb.am ], [ %.46.i, %.preheader.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.5.i, i64 8 ; 2 uses
  %i.cz = load i64, ptr %.5.i, align 8, !tbaa !31 ; 2 uses
  %i.da = and i64 %i.cz, 4160749568
  %.not57.i = icmp eq i64 %i.da, 268435456
  br i1 %.not57.i, label %.preheader.i.1, label %bb.am

.preheader.i.1:                                   ; preds = %bb.am
  %i.db = trunc i64 %i.cz to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %.0387.i, i64 1
  store i8 %i.db, ptr %.0387.i, align 1, !tbaa !38
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.preheader.i.1
  %.5.i.1 = phi ptr [ %i.dd, %bb.an ], [ %i.cy, %.preheader.i.1 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.5.i.1, i64 8 ; 2 uses
  %i.de = load i64, ptr %.5.i.1, align 8, !tbaa !31 ; 2 uses
  %i.df = and i64 %i.de, 4160749568
  %.not57.i.1 = icmp eq i64 %i.df, 268435456
  br i1 %.not57.i.1, label %bb.ao, label %bb.an

bb.ao:                                            ; preds = %bb.an
  %i.dg = trunc i64 %i.de to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %.0387.i, i64 2 ; 2 uses
  store i8 %i.dg, ptr %i.dc, align 1, !tbaa !38
  %i.di = add nsw i64 %.08.i, -2
  %i.dj = icmp sgt i64 %.08.i, 2
  br i1 %i.dj, label %.preheader.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.preheader.i.prol.loopexit, %bb.ao, %bb.al
  %.038.lcssa.i = phi ptr [ %i.cm, %bb.al ], [ %.lcssa156.unr, %.preheader.i.prol.loopexit ], [ %i.dh, %bb.ao ]
  store i8 0, ptr %.038.lcssa.i, align 1, !tbaa !38
  br label %findmust.exit

findmust.exit:                                    ; preds = %bb.ad, %bb.ag, %bb.ai, %bb.ak, %._crit_edge.i
  %.val91.pr = load i32, ptr %i.ab, align 8, !tbaa !21 ; 2 uses
  %.not.i100 = icmp eq i32 %.val91.pr, 0
  br i1 %.not.i100, label %bb.ap, label %pluscount.exit

bb.ap:                                            ; preds = %findmust.exit
  %i.dk = load ptr, ptr %i.m, align 8, !tbaa !35
  br label %bb.aq

bb.aq:                                            ; preds = %bb.at, %bb.ap
  %.pn.i = phi ptr [ %i.dk, %bb.ap ], [ %.015.i, %bb.at ]
  %.013.i = phi i64 [ 0, %bb.ap ], [ %.114.i, %bb.at ] ; 4 uses
  %.0.i = phi i64 [ 0, %bb.ap ], [ %.2.i103, %bb.at ] ; 3 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 2 uses
  %i.dl = load i64, ptr %.015.i, align 8, !tbaa !31
  %i.dm = and i64 %i.dl, 4160749568               ; 2 uses
  %trunc.i101 = trunc nuw i64 %i.dm to i32
  switch i32 %trunc.i101, label %bb.at [
    i32 1207959552, label %bb.ar
    i32 1342177280, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.dn = add nsw i64 %.013.i, 1
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %spec.select.i102 = call i64 @llvm.smax.i64(i64 %.013.i, i64 %.0.i)
  %i.do = add nsw i64 %.013.i, -1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.114.i = phi i64 [ %.013.i, %bb.aq ], [ %i.dn, %bb.ar ], [ %i.do, %bb.as ] ; 2 uses
  %.2.i103 = phi i64 [ %.0.i, %bb.aq ], [ %.0.i, %bb.ar ], [ %spec.select.i102, %bb.as ] ; 3 uses
  %.not17.i = icmp eq i64 %i.dm, 134217728
  br i1 %.not17.i, label %bb.au, label %bb.aq

bb.au:                                            ; preds = %bb.at
  %.not18.i = icmp eq i64 %.114.i, 0
  br i1 %.not18.i, label %pluscount.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dp = load i32, ptr %i.ai, align 8, !tbaa !27
  %i.dq = or i32 %i.dp, 4
  store i32 %i.dq, ptr %i.ai, align 8, !tbaa !27
  br label %pluscount.exit

pluscount.exit:                                   ; preds = %stripsnug.exit.thread, %stripsnug.exit, %findmust.exit, %bb.au, %bb.av
  %i.dr = phi i32 [ %.val91.pr, %findmust.exit ], [ 0, %bb.av ], [ 0, %bb.au ], [ %.val.pre, %stripsnug.exit ], [ %.val124, %stripsnug.exit.thread ] ; 2 uses
  %.not.i100106 = phi i1 [ false, %findmust.exit ], [ true, %bb.av ], [ true, %bb.au ], [ false, %stripsnug.exit ], [ false, %stripsnug.exit.thread ]
  %.016.i = phi i64 [ 0, %findmust.exit ], [ %.2.i103, %bb.av ], [ %.2.i103, %bb.au ], [ 0, %stripsnug.exit ], [ 0, %stripsnug.exit.thread ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  store i64 %.016.i, ptr %i.ds, align 8, !tbaa !39
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 53829, ptr %i.dt, align 8, !tbaa !40
  %i.du = load i64, ptr %i.an, align 8, !tbaa !41
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !42
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.dw, align 8, !tbaa !43
  store i32 62053, ptr %0, align 8, !tbaa !44
  %i.dx = load i32, ptr %i.ai, align 8, !tbaa !27
  %i.dy = and i32 %i.dx, 4
  %.not89 = icmp eq i32 %i.dy, 0
  br i1 %.not89, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %pluscount.exit
  br i1 %.not.i100106, label %bb.ax, label %seterr.exit

bb.ax:                                            ; preds = %bb.aw
  store i32 15, ptr %i.ab, align 8, !tbaa !21
  br label %seterr.exit

seterr.exit:                                      ; preds = %bb.aw, %bb.ax
  %i.dz = phi i32 [ %i.dr, %bb.aw ], [ 15, %bb.ax ]
  store ptr @nuls, ptr %3, align 8, !tbaa !19
  store ptr @nuls, ptr %i.aa, align 8, !tbaa !20
  br label %bb.ay

bb.ay:                                            ; preds = %seterr.exit, %pluscount.exit
  %i.ea = phi i32 [ %i.dz, %seterr.exit ], [ %i.dr, %pluscount.exit ]
  %.not90 = icmp eq i32 %i.ea, 0
  br i1 %.not90, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @cli_regfree(ptr noundef nonnull %0) #10
  %.pre125 = load i32, ptr %i.ab, align 8, !tbaa !21
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az, %bb.f, %bb.c, %bb.a, %bb.l, %bb.j, %bb.h
  %.081 = phi i32 [ 12, %bb.f ], [ 16, %bb.a ], [ 16, %bb.c ], [ 12, %bb.h ], [ 12, %bb.j ], [ 12, %bb.l ], [ %.pre125, %bb.az ], [ 0, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.081
}
end_hunk_0
