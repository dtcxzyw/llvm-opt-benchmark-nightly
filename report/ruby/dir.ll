inline.NumInlined: 217
inline.NumDeleted: 89
begin_hunk_0_@fnmatch_helper:bb.a

bb.m:                                             ; preds = %.split242.us
  %i.aw = getelementptr i8, ptr %.us-phi243, i64 1 ; 3 uses
  %.not114.i = icmp ult ptr %i.aw, %i.g
  br i1 %.not114.i, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !20  ; 2 uses
  switch i8 %i.ax, label %bb.p [
    i8 33, label %bb.o
    i8 94, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.ay = getelementptr i8, ptr %.us-phi243, i64 2 ; 2 uses
  %.pre.i = load i8, ptr %i.ay, align 1, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = phi i8 [ %.pre.i, %bb.o ], [ %i.ax, %bb.n ] ; 2 uses
  %.096.i = phi ptr [ %i.ay, %bb.o ], [ %i.aw, %bb.n ] ; 2 uses
  %.092.i = phi i32 [ 1, %bb.o ], [ 0, %bb.n ]
  %.not115158.i = icmp eq i8 %i.az, 93
  br i1 %.not115158.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %i.ba = ptrtoint ptr %.0142.ph to i64
  %i.bb = sub i64 %i.q, %i.ba                     ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %.thread142.i, %.lr.ph.i
  %i.bc = phi i8 [ %i.az, %.lr.ph.i ], [ %i.cj, %.thread142.i ]
  %.093160.i = phi i32 [ 0, %.lr.ph.i ], [ %.295.i, %.thread142.i ] ; 2 uses
  %.197159.i = phi ptr [ %.096.i, %.lr.ph.i ], [ %.4100.i, %.thread142.i ]
  %i.bd = icmp eq i8 %i.bc, 92
  %or.cond.i = and i1 %.not159, %i.bd
  %.089.idx.i = zext i1 %or.cond.i to i64
  %.089.i = getelementptr i8, ptr %.197159.i, i64 %.089.idx.i ; 7 uses
  %i.be = load i8, ptr %.089.i, align 1, !tbaa !20
  %.not116.i = icmp eq i8 %i.be, 0
  br i1 %.not116.i, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.089.i, ptr noundef nonnull %i.g, ptr noundef %3) #20
  %i.bg = sext i32 %i.bf to i64                   ; 5 uses
  %i.bh = getelementptr i8, ptr %.089.i, i64 %i.bg ; 10 uses
  %.not117.i = icmp ult ptr %i.bh, %i.g
  br i1 %.not117.i, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !20
  %i.bj = icmp eq i8 %i.bi, 45
  br i1 %i.bj, label %bb.t, label %bb.af

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr i8, ptr %i.bh, i64 1      ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !20  ; 2 uses
  %.not118.i = icmp eq i8 %i.bl, 93
  br i1 %.not118.i, label %bb.af, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = icmp eq i8 %i.bl, 92
  %or.cond130.i = and i1 %.not159, %i.bm
  %i.bn = getelementptr i8, ptr %i.bh, i64 2
  %.088.i = select i1 %or.cond130.i, ptr %i.bn, ptr %i.bk ; 6 uses
  %i.bo = load i8, ptr %.088.i, align 1, !tbaa !20
  %.not123.i = icmp eq i8 %i.bo, 0
  br i1 %.not123.i, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.088.i, ptr noundef nonnull %i.g, ptr noundef %3) #20
  %i.bq = sext i32 %i.bp to i64                   ; 3 uses
  %i.br = getelementptr i8, ptr %.088.i, i64 %i.bq ; 7 uses
  %.not124.i = icmp eq i32 %.093160.i, 0
  br i1 %.not124.i, label %bb.w, label %.thread142.i, !llvm.loop !162

bb.w:                                             ; preds = %bb.v
  %.not125.i = icmp slt i64 %i.bb, %i.bg
  br i1 %.not125.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %bcmp126.i = tail call i32 @bcmp(ptr nonnull %.089.i, ptr nonnull %.0142.ph, i64 %i.bg)
  %i.bs = icmp eq i32 %bcmp126.i, 0
  br i1 %i.bs, label %.thread142.i, label %bb.y, !llvm.loop !162

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not127.i = icmp slt i64 %i.bb, %i.bq
  br i1 %.not127.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %bcmp128.i = tail call i32 @bcmp(ptr nonnull %.088.i, ptr nonnull %.0142.ph, i64 %i.bq)
  %i.bt = icmp eq i32 %bcmp128.i, 0
  br i1 %i.bt, label %.thread142.i, label %bb.aa, !llvm.loop !162

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bu = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.0142.ph, ptr noundef %i.j, ptr noundef null, ptr noundef %3) #20 ; 3 uses
  br i1 %.not129.i, label %bb.ab, label %.thread134.i

bb.ab:                                            ; preds = %bb.aa
  %i.bv = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.089.i, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef %3) #20
  %i.bw = icmp ult i32 %i.bu, %i.bv
  br i1 %i.bw, label %.thread142.i, label %bb.ac, !llvm.loop !162

.thread134.i:                                     ; preds = %bb.aa
  %i.bx = tail call i32 @rb_enc_toupper(i32 noundef %i.bu, ptr noundef %3) #28 ; 2 uses
  %i.by = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.089.i, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef %3) #20
  %i.bz = tail call i32 @rb_enc_toupper(i32 noundef %i.by, ptr noundef %3) #28
  %i.ca = icmp ult i32 %i.bx, %i.bz
  br i1 %i.ca, label %.thread142.i, label %bb.ad, !llvm.loop !162

bb.ac:                                            ; preds = %bb.ab
  %i.cb = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.088.i, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef %3) #20
  br label %bb.ae

bb.ad:                                            ; preds = %.thread134.i
  %i.cc = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.088.i, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef %3) #20
  %i.cd = tail call i32 @rb_enc_toupper(i32 noundef %i.cc, ptr noundef %3) #28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0103133137141.i = phi i32 [ %i.bx, %bb.ad ], [ %i.bu, %bb.ac ]
  %.1102.i = phi i32 [ %i.cd, %bb.ad ], [ %i.cb, %bb.ac ]
  %.not155.i = icmp ugt i32 %.0103133137141.i, %.1102.i
  br i1 %.not155.i, label %.thread142.i, label %bb.ak

bb.af:                                            ; preds = %bb.t, %bb.s
  %.not119.i = icmp eq i32 %.093160.i, 0
  br i1 %.not119.i, label %bb.ag, label %.thread142.i, !llvm.loop !162

bb.ag:                                            ; preds = %bb.af
  %.not120.i = icmp slt i64 %i.bb, %i.bg
  br i1 %.not120.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.089.i, ptr nonnull %.0142.ph, i64 %i.bg)
  %i.ce = icmp eq i32 %bcmp.i, 0                  ; 2 uses
  %brmerge.i = or i1 %.not129.i, %i.ce
  %.mux.i = zext i1 %i.ce to i32
  br i1 %brmerge.i, label %.thread142.i, label %bb.aj, !llvm.loop !162

bb.ai:                                            ; preds = %bb.ag
  br i1 %.not129.i, label %.thread142.i, label %bb.aj, !llvm.loop !162

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cf = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.0142.ph, ptr noundef %i.j, ptr noundef null, ptr noundef %3) #20
  %i.cg = tail call i32 @rb_enc_toupper(i32 noundef %i.cf, ptr noundef %3) #28
  %i.ch = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef %3) #20
  %i.ci = tail call i32 @rb_enc_toupper(i32 noundef %i.ch, ptr noundef %3) #28
  %.not122.i = icmp eq i32 %i.cg, %i.ci
  br i1 %.not122.i, label %bb.ak, label %.thread142.i, !llvm.loop !162

bb.ak:                                            ; preds = %bb.aj, %bb.ae
  %.399.i = phi ptr [ %i.br, %bb.ae ], [ %i.bh, %bb.aj ]
  br label %.thread142.i

.thread142.i:                                     ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae, %.thread134.i, %bb.ab, %bb.z, %bb.x, %bb.v
  %.4100.i = phi ptr [ %i.bh, %bb.aj ], [ %.399.i, %bb.ak ], [ %i.br, %bb.ae ], [ %i.bh, %bb.ah ], [ %i.bh, %bb.af ], [ %i.bh, %bb.ai ], [ %i.br, %.thread134.i ], [ %i.br, %bb.z ], [ %i.br, %bb.ab ], [ %i.br, %bb.x ], [ %i.br, %bb.v ] ; 3 uses
  %.295.i = phi i32 [ 0, %bb.aj ], [ 1, %bb.ak ], [ 0, %bb.ae ], [ %.mux.i, %bb.ah ], [ 1, %bb.af ], [ 0, %bb.ai ], [ 0, %.thread134.i ], [ 1, %bb.z ], [ 0, %bb.ab ], [ 1, %bb.x ], [ 1, %bb.v ] ; 2 uses
  %i.cj = load i8, ptr %.4100.i, align 1, !tbaa !20 ; 2 uses
  %.not115.i = icmp eq i8 %i.cj, 93
  br i1 %.not115.i, label %._crit_edge.i, label %bb.q

._crit_edge.i:                                    ; preds = %.thread142.i, %bb.p
  %.197.lcssa.i = phi ptr [ %.096.i, %bb.p ], [ %.4100.i, %.thread142.i ]
  %.093.lcssa.i = phi i32 [ 0, %bb.p ], [ %.295.i, %.thread142.i ]
  %i.ck = icmp eq i32 %.093.lcssa.i, %.092.i
  %i.cl = getelementptr i8, ptr %.197.lcssa.i, i64 1 ; 2 uses
  %.not163 = icmp eq ptr %i.cl, null
  %or.cond198 = or i1 %i.ck, %.not163
  br i1 %or.cond198, label %.thread, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i
  %i.cm = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.0142.ph, ptr noundef %i.j, ptr noundef %3) #20
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr i8, ptr %.0142.ph, i64 %i.cn
  br label %.outer.backedge

.split.us:                                        ; preds = %.outer.split.us, %.outer.split.split.us, %.outer.split.split
  %.us-phi = phi ptr [ %.0145, %.outer.split.split ], [ %.0145.us269, %.outer.split.split.us ], [ %.0145.us, %.outer.split.us ]
  %.us-phi233 = phi ptr [ %.0141, %.outer.split.split ], [ %.0141.us270, %.outer.split.split.us ], [ %.0141.us, %.outer.split.us ] ; 6 uses
  %.us-phi234 = phi ptr [ %.0140, %.outer.split.split ], [ %.0140.us271, %.outer.split.split.us ], [ %.0140.us, %.outer.split.us ] ; 6 uses
  %.us-phi235 = phi i8 [ %i.af, %.outer.split.split ], [ %i.aa, %.outer.split.split.us ], [ %i.r, %.outer.split.us ]
  %i.cp = icmp eq i8 %.us-phi235, 92
  %or.cond181 = and i1 %.not159, %i.cp
  %.idx = zext i1 %or.cond181 to i64
  %i.cq = getelementptr i8, ptr %.us-phi, i64 %.idx ; 12 uses
  %i.cr = load i8, ptr %.0142.ph, align 1, !tbaa !20 ; 2 uses
  %.not169 = icmp eq i8 %i.cr, 0
  %i.cs = icmp eq i8 %i.cr, 47
  %or.cond182 = and i1 %.not162, %i.cs
  %or.cond312 = or i1 %.not169, %or.cond182
  br i1 %or.cond312, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.split.us
  store ptr %i.cq, ptr %0, align 8, !tbaa !156
  store ptr %.0142.ph, ptr %1, align 8, !tbaa !156
  %i.ct = load i8, ptr %i.cq, align 1, !tbaa !20  ; 2 uses
  %.not175 = icmp eq i8 %i.ct, 0                  ; 2 uses
  %brmerge = or i1 %.not175, %.not167.not
  %not..not175 = xor i1 %.not175, true
  %.mux = zext i1 %not..not175 to i32
  br i1 %brmerge, label %bb.aw, label %4

4:                                                ; preds = %bb.am
  %5 = icmp ne i8 %i.ct, 47
  %6 = zext i1 %5 to i32
  br label %bb.aw

bb.an:                                            ; preds = %.split.us
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !20  ; 2 uses
  %.not171 = icmp eq i8 %i.cu, 0
  %i.cv = icmp eq i8 %i.cu, 47
  %or.cond184 = and i1 %.not162, %i.cv
  %or.cond199 = or i1 %.not171, %or.cond184
  br i1 %or.cond199, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cw = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.cq, ptr noundef %i.g, ptr noundef %3) #20 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.cy = zext nneg i32 %i.cw to i64              ; 5 uses
  %i.cz = ptrtoint ptr %.0142.ph to i64
  %i.da = sub i64 %i.q, %i.cz
  %.not172 = icmp slt i64 %i.da, %i.cy
  br i1 %.not172, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.cq, ptr nonnull %.0142.ph, i64 %i.cy)
  %i.db = icmp eq i32 %bcmp, 0
  br i1 %i.db, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dc = getelementptr i8, ptr %i.cq, i64 %i.cy
  %i.dd = getelementptr i8, ptr %.0142.ph, i64 %i.cy
  br label %.outer.backedge

bb.as:                                            ; preds = %bb.aq, %bb.ap
  br i1 %.not129.i, label %.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.de = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %i.cq, ptr noundef %i.g, ptr noundef null, ptr noundef %3) #20
  %i.df = tail call i32 @rb_enc_toupper(i32 noundef %i.de, ptr noundef %3) #28
  %i.dg = tail call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.0142.ph, ptr noundef %i.j, ptr noundef null, ptr noundef %3) #20
  %i.dh = tail call i32 @rb_enc_toupper(i32 noundef %i.dg, ptr noundef %3) #28
  %.not174 = icmp eq i32 %i.df, %i.dh
  br i1 %.not174, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.di = getelementptr i8, ptr %i.cq, i64 %i.cy
  %i.dj = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.0142.ph, ptr noundef %i.j, ptr noundef %3) #20
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr i8, ptr %.0142.ph, i64 %i.dk
  br label %.outer.backedge

.thread:                                          ; preds = %bb.u, %bb.r, %bb.q, %._crit_edge.i, %bb.m, %bb.at, %bb.as, %bb.ao, %bb.an
  %.0141218 = phi ptr [ %.us-phi244, %bb.m ], [ %.us-phi233, %bb.at ], [ %.us-phi233, %bb.as ], [ %.us-phi233, %bb.ao ], [ %.us-phi233, %bb.an ], [ %.us-phi244, %._crit_edge.i ], [ %.us-phi244, %bb.q ], [ %.us-phi244, %bb.r ], [ %.us-phi244, %bb.u ] ; 3 uses
  %.0140213 = phi ptr [ %.us-phi245, %bb.m ], [ %.us-phi234, %bb.at ], [ %.us-phi234, %bb.as ], [ %.us-phi234, %bb.ao ], [ %.us-phi234, %bb.an ], [ %.us-phi245, %._crit_edge.i ], [ %.us-phi245, %bb.q ], [ %.us-phi245, %bb.r ], [ %.us-phi245, %bb.u ] ; 3 uses
  %.3148 = phi ptr [ %.us-phi243, %bb.m ], [ %i.cq, %bb.at ], [ %i.cq, %bb.as ], [ %i.cq, %bb.ao ], [ %i.cq, %bb.an ], [ %.us-phi243, %._crit_edge.i ], [ %.us-phi243, %bb.q ], [ %.us-phi243, %bb.r ], [ %.us-phi243, %bb.u ]
  %i.dm = icmp ne ptr %.0140213, null
  %i.dn = icmp ne ptr %.0141218, null
  %or.cond = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %or.cond, label %bb.av, label %.sink.split

bb.av:                                            ; preds = %.thread
  %i.do = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.0141218, ptr noundef %i.j, ptr noundef %3) #20
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr i8, ptr %.0141218, i64 %i.dp ; 2 uses
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.av, %bb.ar, %bb.au, %bb.al, %bb.l
  %.0145.ph.be = phi ptr [ %i.aq, %bb.l ], [ %i.cl, %bb.al ], [ %i.di, %bb.au ], [ %i.dc, %bb.ar ], [ %.0140213, %bb.av ]
  %.0142.ph.be = phi ptr [ %i.at, %bb.l ], [ %i.co, %bb.al ], [ %i.dl, %bb.au ], [ %i.dd, %bb.ar ], [ %i.dq, %bb.av ]
  %.0141.ph.be = phi ptr [ %.us-phi239, %bb.l ], [ %.us-phi244, %bb.al ], [ %.us-phi233, %bb.au ], [ %.us-phi233, %bb.ar ], [ %i.dq, %bb.av ]
  %.0140.ph.be = phi ptr [ %.us-phi240, %bb.l ], [ %.us-phi245, %bb.al ], [ %.us-phi234, %bb.au ], [ %.us-phi234, %bb.ar ], [ %.0140213, %bb.av ]
  br label %.outer

.sink.split:                                      ; preds = %.thread, %.split242.us, %.split237.us, %bb.h, %bb.h, %bb.i, %bb.k, %.split247.us
  %.us-phi243.sink = phi ptr [ %i.ag, %bb.k ], [ %i.s, %bb.h ], [ %i.ab, %bb.i ], [ %spec.select197, %.split247.us ], [ %i.s, %bb.h ], [ %.3148, %.thread ], [ %.us-phi238, %.split237.us ], [ %.us-phi243, %.split242.us ]
  %.3.ph = phi i32 [ 1, %bb.k ], [ 1, %bb.h ], [ 1, %bb.i ], [ 0, %.split247.us ], [ 1, %bb.h ], [ 1, %.split237.us ], [ 1, %.split242.us ], [ 1, %.thread ]
  store ptr %.us-phi243.sink, ptr %0, align 8, !tbaa !156
  store ptr %.0142.ph, ptr %1, align 8, !tbaa !156
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %bb.am, %bb.e, %4
  %.3 = phi i32 [ %6, %4 ], [ 1, %bb.e ], [ %.mux, %bb.am ], [ %.3.ph, %.sink.split ]
  ret i32 %.3
}

declare i32 @rb_enc_precise_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_enc_toupper(i32 noundef, ptr noundef) local_unnamed_addr #15

declare i32 @rb_enc_codepoint_len(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @rb_glob_caller(ptr noundef %0, i64 noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = inttoptr i64 %1 to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !163
  %i.d = call i64 @rb_protect(ptr noundef nonnull @glob_func_caller, i64 noundef %1, ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @rb_glob_error(ptr noundef %0, i64 %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.glob_error_args, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %cond = icmp eq i32 %3, 13
  %spec.store.select = select i1 %cond, ptr @glob_func_warning, ptr @glob_func_error
  store ptr %0, ptr %4, align 8, !tbaa !164
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !166
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %3, ptr %i.c, align 8, !tbaa !167
  %i.d = ptrtoint ptr %4 to i64
  %i.e = call i64 @rb_protect(ptr noundef nonnull %spec.store.select, i64 noundef %i.d, ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @glob_func_caller(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163
  %i.e = getelementptr i8, ptr %i.a, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38
  %i.g = getelementptr i8, ptr %i.a, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  tail call void %i.b(ptr noundef %i.d, i64 noundef %i.f, ptr noundef %i.h) #20
  ret i64 4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal noundef i64 @glob_func_error(i64 noundef %0) #13 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !166
  %i.e = tail call i64 @rb_enc_str_new_cstr(ptr noundef %i.b, ptr noundef %i.d) #20
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !167
  tail call void @rb_syserr_fail_str(i32 noundef %i.g, i64 noundef %i.e) #24
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @glob_func_warning(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !167
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !164
  tail call void (i32, ptr, ptr, ...) @rb_syserr_enc_warning(i32 noundef %i.c, ptr noundef %i.e, ptr noundef nonnull @.str.52, ptr noundef %i.f) #20
  ret i64 4
}

declare i64 @rb_enc_str_new_cstr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_syserr_fail_str(i32 noundef, i64 noundef) local_unnamed_addr #5

declare void @rb_syserr_enc_warning(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable
define internal void @dir_free(ptr noundef readonly captures(none) %0) #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @closedir(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noalias ptr @nogvl_fdopendir(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call noalias ptr @fdopendir(i32 noundef %i.b) #20
  ret ptr %i.c
}

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #2

declare i32 @rb_block_given_p() local_unnamed_addr #2

declare i64 @rb_enumeratorize_with_size(i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #2

declare i64 @rb_frame_this_func() local_unnamed_addr #2

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_funcallv_kw(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @rb_keyword_given_p() local_unnamed_addr #2

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @dir_collect(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_ary_new() #20          ; 2 uses
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not3.i.i.i.i.i = and i1 %i.b, %i.d
  br i1 %.not3.i.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i.i, !prof !58

RB_OBJ_FROZEN.exit.i.i.i.i:                       ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59   ; 3 uses
  %i.g = and i64 %i.f, 2048
  %.not.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i.i, !prof !60

RB_OBJ_FROZEN.exit.thread.i.i.i.i:                ; preds = %RB_OBJ_FROZEN.exit.i.i.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #24
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i:           ; preds = %RB_OBJ_FROZEN.exit.i.i.i.i
  %i.h = and i64 %i.f, 31
  %i.i = icmp ne i64 %i.h, 5
  %i.j = and i64 %i.f, 49152
  %.not8.i.i.i.i = icmp eq i64 %i.j, 0
  %or.cond.i.i.i.i = or i1 %i.i, %.not8.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %dir_get.exit.i.i, label %bb.b, !prof !61

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i
  tail call void @rb_str_modify(i64 noundef %0) #20
  br label %dir_get.exit.i.i

dir_get.exit.i.i:                                 ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i
  %i.k = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @dir_data_type) #20 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53   ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.c, label %dir_check.exit.i

bb.c:                                             ; preds = %dir_get.exit.i.i
  tail call fastcc void @dir_closed() #25
  unreachable

dir_check.exit.i:                                 ; preds = %dir_get.exit.i.i
  tail call void @rewinddir(ptr noundef nonnull %i.l) #20
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.n = tail call ptr @rb_nogvl(ptr noundef nonnull @nogvl_readdir, ptr noundef %i.m, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #20 ; 2 uses
  %.not18.i = icmp eq ptr %i.n, null
  br i1 %.not18.i, label %dir_each_entry.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %dir_check.exit.i
  %i.o = getelementptr i8, ptr %i.k, i64 16
end_hunk_0
