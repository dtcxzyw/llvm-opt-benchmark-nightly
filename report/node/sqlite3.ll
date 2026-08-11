inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@fts3MatchinfoFunc:bb.a

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.ar, align 8, !tbaa !229
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !229
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.m, label %sqlite3Fts3MIBufferFree.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !229
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.n, label %sqlite3Fts3MIBufferFree.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bb = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.bd(ptr noundef nonnull %i.bc) #59, !inline_history !6212
  br label %sqlite3_mutex_enter.exit.i.i.i.i

sqlite3_mutex_enter.exit.i.i.i.i:                 ; preds = %bb.p, %bb.o
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.bf = tail call i32 %i.be(ptr noundef nonnull %i.ar) #59, !inline_history !6213
  %i.bg = sext i32 %i.bf to i64
  %i.bh = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.bi = sub nsw i64 %i.bh, %i.bg
  store i64 %i.bi, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.bj = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.bk = add nsw i64 %i.bj, -1
  store i64 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.bl(ptr noundef nonnull %i.ar) #59, !inline_history !6214
  %i.bm = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i4.i.i.i.i, label %sqlite3Fts3MIBufferFree.exit.i.i, label %bb.q

bb.q:                                             ; preds = %sqlite3_mutex_enter.exit.i.i.i.i
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.bn(ptr noundef nonnull %i.bm) #59, !inline_history !6215
  br label %sqlite3Fts3MIBufferFree.exit.i.i

bb.r:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.bo(ptr noundef nonnull %i.ar) #59, !inline_history !6214
  br label %sqlite3Fts3MIBufferFree.exit.i.i

sqlite3Fts3MIBufferFree.exit.i.i:                 ; preds = %bb.r, %bb.q, %sqlite3_mutex_enter.exit.i.i.i.i, %bb.m, %bb.l
  store ptr null, ptr %i.aq, align 8, !tbaa !5680
  %.pre.i = load ptr, ptr %i.al, align 8, !tbaa !5544
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %sqlite3Fts3MIBufferFree.exit.i.i, %bb.j
  %i.bp = phi ptr [ %.pre.i, %sqlite3Fts3MIBufferFree.exit.i.i ], [ %i.am, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #59
  store i32 0, ptr %i.p, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #59
  store i32 0, ptr %i.o, align 4, !tbaa !24
  %i.bq = call fastcc i32 @fts3ExprIterate2(ptr noundef %i.bp, ptr noundef %i.o, ptr noundef nonnull @fts3ExprPhraseCountCb, ptr noundef nonnull %i.p), !inline_history !6211 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #59
  %i.br = load i32, ptr %i.p, align 4, !tbaa !24  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #59
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !6216
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !6217
  %i.bu = load i8, ptr %.str.1590..i, align 1, !tbaa !229 ; 2 uses
  %.not60137.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not60137.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ak, i64 462
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ak, i64 460 ; 2 uses
  %i.bx = sext i32 %i.br to i64                   ; 2 uses
  %i.by = load i32, ptr %i.an, align 8            ; 2 uses
  %i.bz = add nsw i32 %i.by, 31
  %i.ca = sdiv i32 %i.bz, 32
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %i.cb, %i.bx
  %i.cd = sext i32 %i.by to i64                   ; 2 uses
  %i.ce = mul nsw i64 %i.cd, %i.bx                ; 2 uses
  %i.cf = mul i64 %i.ce, 3
  br label %bb.s

bb.s:                                             ; preds = %.thread193.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.thread193.i.i ]
  %i.cg = phi i8 [ %i.bu, %.lr.ph.i.i ], [ %i.dg, %.thread193.i.i ] ; 2 uses
  %.051138.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.de, %.thread193.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #59
  store ptr null, ptr %i.q, align 8, !tbaa !253
  switch i8 %i.cg, label %bb.w [
    i8 108, label %bb.v
    i8 97, label %bb.u
    i8 110, label %bb.t
    i8 112, label %.thread193.i.i
    i8 99, label %.thread193.i.i
    i8 98, label %bb.ad
    i8 115, label %.thread192.i.i
    i8 121, label %bb.ac
    i8 120, label %bb.ae
  ]

bb.t:                                             ; preds = %bb.s
  %i.ch = load i8, ptr %i.bw, align 4, !tbaa !5526
  %.not.i68.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i68.i.i, label %bb.w, label %.thread193.i.i

bb.u:                                             ; preds = %bb.s
  %i.ci = load i8, ptr %i.bw, align 4, !tbaa !5526
  %.not29.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not29.i.i.i, label %bb.w, label %.thread192.i.i

bb.v:                                             ; preds = %bb.s
  %i.cj = load i8, ptr %i.bv, align 2, !tbaa !5579
  %.not30.i.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not30.i.i.i, label %bb.w, label %.thread192.i.i

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.ck = sext i8 %i.cg to i32
  call void (ptr, ptr, ...) @sqlite3Fts3ErrMsg(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.1591, i32 noundef %i.ck), !inline_history !6218
  %i.cl = load ptr, ptr %i.q, align 8, !tbaa !253 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.cm, align 4, !tbaa !24
  %i.cn = load ptr, ptr %0, align 8, !tbaa !290
  %i.co = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.cn, ptr noundef %i.cl, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !6211 ; 0 uses
  %i.cp = icmp eq ptr %i.cl, null
  br i1 %i.cp, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i69.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i69.i.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i70.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i70.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  call void %i.cs(ptr noundef nonnull %i.cr) #59, !inline_history !6219
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.z, %bb.y
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.cu = call i32 %i.ct(ptr noundef nonnull %i.cl) #59, !inline_history !6220
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.cx = sub nsw i64 %i.cw, %i.cv
  store i64 %i.cx, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.cy = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.cz = add nsw i64 %i.cy, -1
  store i64 %i.cz, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.da(ptr noundef nonnull %i.cl) #59, !inline_history !6221
  %i.db = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i4.i.i.i, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.dc(ptr noundef nonnull %i.db) #59, !inline_history !6222
  br label %bb.af

bb.ab:                                            ; preds = %bb.x
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.dd(ptr noundef nonnull %i.cl) #59, !inline_history !6221
  br label %bb.af

.thread192.i.i:                                   ; preds = %bb.v, %bb.u, %bb.s
  br label %.thread193.i.i

bb.ac:                                            ; preds = %bb.s
  br label %.thread193.i.i

bb.ad:                                            ; preds = %bb.s
  br label %.thread193.i.i

bb.ae:                                            ; preds = %bb.s
  br label %.thread193.i.i

.thread193.i.i:                                   ; preds = %bb.ae, %bb.ad, %bb.ac, %.thread192.i.i, %bb.t, %bb.s, %bb.s
  %.0.i71.i.i = phi i64 [ %i.cf, %bb.ae ], [ %i.cc, %bb.ad ], [ %i.cd, %.thread192.i.i ], [ %i.ce, %bb.ac ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.t ]
  %i.de = add i64 %.0.i71.i.i, %.051138.i.i       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #59
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.str.1590..i, i64 %indvars.iv.next.i.i
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !229 ; 2 uses
  %.not60.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not60.i.i, label %._crit_edge.i.i, label %bb.s, !llvm.loop !6223

._crit_edge.i.i:                                  ; preds = %.thread193.i.i, %.thread.i.i
  %.051.lcssa.i.i = phi i64 [ 0, %.thread.i.i ], [ %i.de, %.thread193.i.i ] ; 4 uses
  %i.dh = shl i64 %.051.lcssa.i.i, 3
  %i.di = add i64 %i.dh, 36                       ; 2 uses
  %i.dj = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.str.1590..i) #60, !inline_history !6224
  %i.dk = add i64 %i.dj, 1                        ; 2 uses
  %i.dl = add i64 %i.dk, %i.di                    ; 2 uses
  %i.dm = call i32 @sqlite3_initialize(), !inline_history !6225
  %.not.i.i.i72.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i.i72.i.i, label %sqlite3_malloc64.exit.i.i.i.i, label %.thread105.i.i

sqlite3_malloc64.exit.i.i.i.i:                    ; preds = %._crit_edge.i.i
  %i.dn = call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.dl), !inline_history !6225 ; 9 uses
  %.not.i.i73.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i73.i.i, label %.thread105.i.i, label %bb.ag

bb.af:                                            ; preds = %bb.ab, %bb.aa, %sqlite3_mutex_enter.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #59
  br label %fts3GetMatchinfo.exit.i

.thread105.i.i:                                   ; preds = %sqlite3_malloc64.exit.i.i.i.i, %._crit_edge.i.i
  store ptr null, ptr %i.aq, align 8, !tbaa !5680
  %i.do = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  store i32 1, ptr %i.do, align 8, !tbaa !5560
  br label %.thread117.i.i

bb.ag:                                            ; preds = %sqlite3_malloc64.exit.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dn, i8 0, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.dl, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 24 ; 2 uses
  store i32 28, ptr %i.dp, align 8, !tbaa !24
  %i.dq = trunc i64 %.051.lcssa.i.i to i32
  %6 = shl i64 %.051.lcssa.i.i, 32
  %sext.i.i.i = add i64 %6, 4294967296
  %7 = lshr exact i64 %sext.i.i.i, 30
  %8 = trunc i64 %7 to i32
  %i.dr = add i32 %8, 28
  %i.ds = getelementptr [4 x i8], ptr %i.dp, i64 %.051.lcssa.i.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 4
  store i32 %i.dr, ptr %i.dt, align 4, !tbaa !24
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i32 %i.dq, ptr %i.du, align 4, !tbaa !24
  %i.dv = getelementptr inbounds i8, ptr %i.dn, i64 %i.di ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !253
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dv, ptr nonnull readonly align 1 %.str.1590..i, i64 %i.dk, i1 false)
  store i8 1, ptr %i.dn, align 8, !tbaa !229
  store ptr %i.dn, ptr %i.aq, align 8, !tbaa !5680
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  store i32 1, ptr %i.dx, align 8, !tbaa !5560
  br label %.thread99.i.i

.thread99.i.i:                                    ; preds = %bb.ag, %bb.k
  %i.dy = phi ptr [ %i.dn, %bb.ag ], [ %i.ar, %bb.k ] ; 8 uses
  %.not69.i.i.i = phi i1 [ false, %bb.ag ], [ true, %bb.k ] ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !229
  %i.eb = icmp eq i8 %i.ea, 0
  br i1 %i.eb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread99.i.i
  store i8 1, ptr %i.dz, align 1, !tbaa !229
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 28
  br label %bb.an

bb.ai:                                            ; preds = %.thread99.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 2 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !229
  %i.ef = icmp eq i8 %i.ee, 0
  br i1 %i.ef, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i8 1, ptr %i.ed, align 2, !tbaa !229
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !24
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr [4 x i8], ptr %i.dy, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 32
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 4 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !24
  %i.en = call i32 @sqlite3_initialize(), !inline_history !6226
  %.not.i.i74.i.i = icmp eq i32 %i.en, 0
  br i1 %.not.i.i74.i.i, label %sqlite3_malloc64.exit.i.i.i, label %.thread117.i.i

sqlite3_malloc64.exit.i.i.i:                      ; preds = %bb.ak
  %i.eo = sext i32 %i.em to i64
  %i.ep = shl nsw i64 %i.eo, 2
  %i.eq = call fastcc ptr @sqlite3Malloc(i64 noundef %i.ep), !inline_history !6226 ; 4 uses
  %.not.i76.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i76.i.i, label %.thread117.i.i, label %bb.al

bb.al:                                            ; preds = %sqlite3_malloc64.exit.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.es = load i32, ptr %i.er, align 8, !tbaa !24
  %.not18.i.i.i = icmp eq i32 %i.es, 0
  br i1 %.not18.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.et = getelementptr inbounds nuw i8, ptr %i.dy, i64 28
  %i.eu = load i32, ptr %i.el, align 4, !tbaa !24
  %i.ev = sext i32 %i.eu to i64
  %i.ew = shl nsw i64 %i.ev, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eq, ptr nonnull align 4 %i.et, i64 %i.ew, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.aj, %bb.ah
  %.016.i.ph.i.i = phi ptr [ @sqlite3_free, %bb.al ], [ @sqlite3_free, %bb.am ], [ @fts3MIBufferFree, %bb.aj ], [ @fts3MIBufferFree, %bb.ah ] ; 2 uses
  %.0.i75.ph.i.i = phi ptr [ %i.eq, %bb.al ], [ %i.eq, %bb.am ], [ %i.ek, %bb.aj ], [ %i.ec, %bb.ah ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 7 uses
  store ptr %.0.i75.ph.i.i, ptr %i.ex, align 8, !tbaa !6227
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aj, i64 36 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !6216
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 10 uses
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !6217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #59
  store i32 0, ptr %i.k, align 4, !tbaa !24
  %i.fb = load ptr, ptr %i.aj, align 8, !tbaa !5537 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #59
  store ptr null, ptr %i.l, align 8, !tbaa !513
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.ao

bb.ao:                                            ; preds = %fts3MatchinfoSize.exit98.i.i.i, %bb.an
  %i.fi = phi ptr [ %.0.i75.ph.i.i, %bb.an ], [ %i.tr, %fts3MatchinfoSize.exit98.i.i.i ] ; 3 uses
  %indvars.iv170.i.i.i = phi i64 [ 0, %bb.an ], [ %indvars.iv.next171.i.i.i, %fts3MatchinfoSize.exit98.i.i.i ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.str.1590..i, i64 %indvars.iv170.i.i.i ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !229 ; 3 uses
  %.not.i77.i.i = icmp eq i8 %i.fk, 0
  br i1 %.not.i77.i.i, label %fts3MatchinfoValues.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i8 %i.fk, ptr %i.fc, align 8, !tbaa !6228
  switch i8 %i.fk, label %bb.do [
    i8 112, label %bb.aq
    i8 99, label %bb.as
    i8 110, label %bb.au
    i8 97, label %bb.az
    i8 108, label %bb.bh
    i8 115, label %bb.cd
    i8 98, label %bb.dn
    i8 121, label %bb.dm
  ]

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not69.i.i.i, label %fts3MatchinfoSize.exit98.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fl = load i32, ptr %i.fa, align 4, !tbaa !6217
  store i32 %i.fl, ptr %i.fi, align 4, !tbaa !24
  br label %.loopexit.i.i.i

bb.as:                                            ; preds = %bb.ap
  br i1 %.not69.i.i.i, label %fts3MatchinfoSize.exit98.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fm = load i32, ptr %i.an, align 8, !tbaa !6210
  store i32 %i.fm, ptr %i.fi, align 4, !tbaa !24
  br label %.loopexit.i.i.i

bb.au:                                            ; preds = %bb.ap
  br i1 %.not69.i.i.i, label %fts3MatchinfoSize.exit98.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #59
  %i.fn = load ptr, ptr %i.l, align 8, !tbaa !513 ; 2 uses
  %.not.i.i79.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i79.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fo = call fastcc i32 @sqlite3Fts3SelectDoctotal(ptr noundef %i.fb, ptr noundef nonnull %i.l), !inline_history !6229 ; 2 uses
  %.not31.i.i.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not31.i.i.i.i, label %._crit_edge.i.i.i.i, label %fts3MatchinfoSelectDoctotal.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !513
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i, %bb.av
  %i.fp = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.fn, %bb.av ] ; 2 uses
  %i.fq = call i32 @sqlite3_column_bytes(ptr noundef %i.fp, i32 noundef 0), !inline_history !6229 ; 2 uses
  %i.fr = call ptr @sqlite3_column_blob(ptr noundef %i.fp, i32 noundef 0), !inline_history !6229 ; 3 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %fts3MatchinfoSelectDoctotal.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ft = sext i32 %i.fq to i64
  %i.fu = getelementptr inbounds i8, ptr %i.fr, i64 %i.ft
  %i.fv = call fastcc i32 @sqlite3Fts3GetVarintBounded(ptr noundef nonnull %i.fr, ptr noundef nonnull %i.fu, ptr noundef %i.j), !inline_history !6229
  %i.fw = load i64, ptr %i.j, align 8, !tbaa !19  ; 2 uses
  %i.fx = icmp slt i64 %i.fw, 1
  %i.fy = icmp sgt i32 %i.fv, %i.fq
  %or.cond.i.i.i.i = select i1 %i.fx, i1 true, i1 %i.fy ; 2 uses
  %spec.select141.i.i.i = select i1 %or.cond.i.i.i.i, i32 267, i32 0
  %i.fz = trunc i64 %i.fw to i32
  %i.ga = select i1 %or.cond.i.i.i.i, i32 0, i32 %i.fz
  br label %fts3MatchinfoSelectDoctotal.exit.i.i.i

fts3MatchinfoSelectDoctotal.exit.i.i.i:           ; preds = %bb.ay, %bb.ax, %bb.aw
  %.0113.i.i.i = phi i32 [ 0, %bb.ax ], [ %i.ga, %bb.ay ], [ 0, %bb.aw ]
  %.1.i.i.i.i = phi i32 [ 267, %bb.ax ], [ %spec.select141.i.i.i, %bb.ay ], [ %i.fo, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #59
  store i32 %.1.i.i.i.i, ptr %i.k, align 4, !tbaa !24
  %i.gb = load ptr, ptr %i.ex, align 8, !tbaa !6227
  store i32 %.0113.i.i.i, ptr %i.gb, align 4, !tbaa !24
  br label %.loopexit.i.i.i

bb.az:                                            ; preds = %bb.ap
  br i1 %.not69.i.i.i, label %.thread134.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #59
  %i.gc = load ptr, ptr %i.l, align 8, !tbaa !513 ; 2 uses
  %.not.i78.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i78.i.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gd = call fastcc i32 @sqlite3Fts3SelectDoctotal(ptr noundef %i.fb, ptr noundef nonnull %i.l), !inline_history !6229 ; 2 uses
  %.not31.i81.i.i.i = icmp eq i32 %i.gd, 0
  br i1 %.not31.i81.i.i.i, label %._crit_edge.i82.i.i.i, label %fts3MatchinfoSelectDoctotal.exit84.thread.i.i.i

._crit_edge.i82.i.i.i:                            ; preds = %bb.bb
  %.pre.i83.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !513
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.i82.i.i.i, %bb.ba
  %i.ge = phi ptr [ %.pre.i83.i.i.i, %._crit_edge.i82.i.i.i ], [ %i.gc, %bb.ba ] ; 2 uses
  %i.gf = call i32 @sqlite3_column_bytes(ptr noundef %i.ge, i32 noundef 0), !inline_history !6229 ; 2 uses
  %i.gg = call ptr @sqlite3_column_blob(ptr noundef %i.ge, i32 noundef 0), !inline_history !6229 ; 4 uses
  %i.gh = icmp eq ptr %i.gg, null
end_hunk_0
