Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioReadBench?download=true
inline.NumInlined: 56
inline.NumDeleted: 24
begin_hunk_0_@Io_ReadBench:bb.a
  %i.u = load i32, ptr %i.n, align 4, !tbaa !32
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %Extra_ProgressBarUpdate.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @Extra_ProgressBarUpdate_int(ptr noundef %i.n, i32 noundef %i.t, ptr noundef null) #13
  br label %Extra_ProgressBarUpdate.exit.i

Extra_ProgressBarUpdate.exit.i:                   ; preds = %bb.e, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !33   ; 8 uses
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %Extra_ProgressBarUpdate.exit.i
  %i.z = call ptr @Extra_FileReaderGetFileName(ptr noundef nonnull %i.c) #13
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %i.z) ; 0 uses
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !29  ; 2 uses
  %.not.i231.i = icmp eq ptr %i.ab, null
  br i1 %.not.i231.i, label %Vec_StrFree.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.ab) #13
  br label %Vec_StrFree.exit.i

Vec_StrFree.exit.i:                               ; preds = %bb.g, %bb.f
  call void @free(ptr noundef nonnull %i.h) #13
  br label %Io_ReadBenchNetwork.exit.thread

bb.h:                                             ; preds = %Extra_ProgressBarUpdate.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36 ; 7 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !37 ; 4 uses
  %i.af = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(6) @.str.11, i64 noundef 5) #15
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37
  %i.aj = call ptr @Io_ReadCreatePi(ptr noundef %i.f, ptr noundef %i.ai) #13 ; 0 uses
  br label %bb.cc

bb.j:                                             ; preds = %bb.h
  %i.ak = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(7) @.str.12, i64 noundef 5) #15
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37 ; 38 uses
  br i1 %i.al, label %bb.k, label %sub_0.i

bb.k:                                             ; preds = %bb.j
  %i.ao = call ptr @Io_ReadCreatePo(ptr noundef %i.f, ptr noundef %i.an) #13 ; 0 uses
  br label %bb.cc

sub_0.i:                                          ; preds = %bb.j
  %i.ap = load i8, ptr %i.an, align 1
  %.not313.i = icmp eq i8 %i.ap, 68
  br i1 %.not313.i, label %sub_1.i, label %.tail.thread.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i8, ptr %i.aq, align 1
  %.not314.i = icmp eq i8 %i.ar, 70
  br i1 %.not314.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_1.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.at, 70
  br i1 %i.au, label %bb.l, label %.tail.thread.i

bb.l:                                             ; preds = %.tail.i
  %i.av = icmp eq i32 %i.x, 6
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !37 ; 2 uses
  %i.ay = call ptr @Abc_NtkFindOrCreateNet(ptr noundef %i.f, ptr noundef %i.ax) #13
  %i.az = call ptr @Abc_NtkCreateObj(ptr noundef %i.f, i32 noundef 2) #13
  call void @Abc_ObjAddFanin(ptr noundef %i.ay, ptr noundef %i.az) #13
  %.val308.i = load i32, ptr %i.w, align 4, !tbaa !33
  %i.ba = icmp sgt i32 %.val308.i, 2
  br i1 %i.ba, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 2, %bb.m ] ; 2 uses
  %.val225.i = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.val225.i, i64 %indvars.iv.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37 ; 2 uses
  %i.bd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %i.ax, ptr noundef %i.bc) #13 ; 0 uses
  %i.be = call ptr @Abc_NtkFindOrCreateNet(ptr noundef %i.f, ptr noundef %i.bc) #13
  %i.bf = call ptr @Abc_NtkCreateNodeBuf(ptr noundef %i.f, ptr noundef %i.be) #13
  %i.bg = call ptr @Abc_NtkFindOrCreateNet(ptr noundef %i.f, ptr noundef nonnull %i.b) #13 ; 2 uses
  call void @Abc_ObjAddFanin(ptr noundef %i.bg, ptr noundef %i.bf) #13
  %i.bh = call ptr @Abc_NtkCreateObj(ptr noundef %i.f, i32 noundef 3) #13
  call void @Abc_ObjAddFanin(ptr noundef %i.bh, ptr noundef %i.bg) #13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.w, align 4, !tbaa !33
  %i.bi = sext i32 %.val.i to i64
  %i.bj = icmp slt i64 %indvars.iv.next.i, %i.bi
  br i1 %i.bj, label %.lr.ph.i, label %.critedge.i, !llvm.loop !38

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.m
  %i.bk = load i32, ptr %i.g, align 8, !tbaa !8
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.g, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.cc

bb.n:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !37
  %i.bo = call ptr @Io_ReadCreateLatch(ptr noundef %i.f, ptr noundef %i.bn, ptr noundef nonnull %i.ae) #13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !40
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 64 ; 3 uses
  switch i8 %i.bq, label %bb.q [
    i8 48, label %bb.o
    i8 49, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  store ptr inttoptr (i64 1 to ptr), ptr %i.br, align 8, !tbaa !40
  br label %bb.cc

bb.p:                                             ; preds = %bb.n
  store ptr inttoptr (i64 2 to ptr), ptr %i.br, align 8, !tbaa !40
  br label %bb.cc

bb.q:                                             ; preds = %bb.n
  store ptr inttoptr (i64 3 to ptr), ptr %i.br, align 8, !tbaa !40
  br label %bb.cc

.tail.thread.i:                                   ; preds = %.tail.i, %sub_1.i, %sub_0.i
  %i.bs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(4) @.str.15) #15
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.r, label %bb.be

bb.r:                                             ; preds = %.tail.thread.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  %i.bv = add nsw i32 %i.x, -3                    ; 5 uses
  %i.bw = icmp sgt i32 %i.x, 18
  br i1 %i.bw, label %bb.s, label %sub_0257.i

bb.s:                                             ; preds = %bb.r
  %i.bx = call ptr @Extra_FileReaderGetFileName(ptr noundef nonnull %i.c) #13
  %i.by = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.bx, i32 noundef %i.bv) ; 0 uses
  %i.bz = load ptr, ptr %i.k, align 8, !tbaa !29  ; 2 uses
  %.not.i232.i = icmp eq ptr %i.bz, null
  br i1 %.not.i232.i, label %Vec_StrFree.exit233.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.bz) #13
  br label %Vec_StrFree.exit233.i

Vec_StrFree.exit233.i:                            ; preds = %bb.t, %bb.s
  call void @free(ptr noundef nonnull %i.h) #13
  br label %Io_ReadBenchNetwork.exit.thread

sub_0257.i:                                       ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !37 ; 4 uses
  %i.cc = load i8, ptr %i.cb, align 1
  %.not327.i = icmp eq i8 %i.cc, 48
  br i1 %.not327.i, label %.tail256.i, label %.tail256.thread.i

.tail256.i:                                       ; preds = %sub_0257.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = icmp eq i8 %i.ce, 120
  br i1 %i.cf, label %bb.v, label %.tail256.thread.i

.tail256.thread.i:                                ; preds = %.tail256.i, %sub_0257.i
  %i.cg = call ptr @Extra_FileReaderGetFileName(ptr noundef nonnull %i.c) #13
  %i.ch = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %i.cg, ptr noundef nonnull %i.cb) ; 0 uses
  %.not.i234.i = icmp eq ptr %i.r, null
  br i1 %.not.i234.i, label %Vec_StrFree.exit235.i, label %bb.u

bb.u:                                             ; preds = %.tail256.thread.i
  call void @free(ptr noundef nonnull %i.r) #13
  br label %Vec_StrFree.exit235.i

Vec_StrFree.exit235.i:                            ; preds = %bb.u, %.tail256.thread.i
  call void @free(ptr noundef nonnull %i.h) #13
  br label %Io_ReadBenchNetwork.exit.thread

bb.v:                                             ; preds = %.tail256.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 2 ; 4 uses
  %i.cj = shl nuw nsw i32 1, %i.bv
  %i.ck = lshr i32 %i.cj, 2
  %spec.store.select.i = call i32 @llvm.umax.i32(i32 %i.ck, i32 1) ; 2 uses
  %i.cl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ci) #15 ; 2 uses
  %i.cm = zext nneg i32 %spec.store.select.i to i64
  %i.cn = icmp ult i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.w, label %bb.as

bb.w:                                             ; preds = %bb.v
  %i.co = trunc nuw nsw i64 %i.cl to i32
  %i.cp = sub nsw i32 %spec.store.select.i, %i.co ; 5 uses
  %.not.i.i.i = icmp slt i32 %i.q, %i.cp
  br i1 %.not.i.i.i, label %bb.x, label %Vec_StrGrow.exit.i.i

bb.x:                                             ; preds = %bb.w
  %.not9.i.i.i = icmp eq ptr %i.r, null
  %2 = sext i32 %i.cp to i64                      ; 2 uses
  br i1 %.not9.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = call ptr @realloc(ptr noundef nonnull %i.r, i64 noundef %2) #16
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cr = call noalias ptr @malloc(i64 noundef %2) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cs = phi ptr [ %i.cq, %bb.y ], [ %i.cr, %bb.z ] ; 2 uses
  store ptr %i.cs, ptr %i.k, align 8, !tbaa !29
  store i32 %i.cp, ptr %i.h, align 8, !tbaa !28
  br label %Vec_StrGrow.exit.i.i

Vec_StrGrow.exit.i.i:                             ; preds = %bb.aa, %bb.w
  %i.ct = phi ptr [ %i.cs, %bb.aa ], [ %i.r, %bb.w ]
  store i32 %i.cp, ptr %i.i, align 4, !tbaa !26
  %umax.i = zext i32 %i.cp to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ct, i8 48, i64 %umax.i, i1 false), !tbaa !40
  %i.cu = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ci) #15 ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i236.i, label %Vec_StrPrintStr.exit.i

.lr.ph.i236.i:                                    ; preds = %Vec_StrGrow.exit.i.i
  %wide.trip.count.i.i = and i64 %i.cu, 2147483647
  br label %bb.ab

bb.ab:                                            ; preds = %Vec_StrPush.exit.i.i, %.lr.ph.i236.i
  %indvars.iv.i237.i = phi i64 [ 0, %.lr.ph.i236.i ], [ %indvars.iv.next.i238.i, %Vec_StrPush.exit.i.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ci, i64 %indvars.iv.i237.i
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !40
  %i.cz = load i32, ptr %i.i, align 4, !tbaa !26  ; 7 uses
  %i.da = load i32, ptr %i.h, align 8, !tbaa !28
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.ac, label %.Vec_StrPush.exit_crit_edge.i.i

.Vec_StrPush.exit_crit_edge.i.i:                  ; preds = %bb.ab
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !29
  br label %Vec_StrPush.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dc = icmp slt i32 %i.cz, 16
  br i1 %i.dc, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.k, align 8, !tbaa !29  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not9.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.de = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dd, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.df = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  br label %Vec_StrGrow.exit11.sink.split.i.i.i

bb.ag:                                            ; preds = %bb.ac
  %i.dg = icmp samesign ult i32 %i.cz, 1073741823
  %i.dh = shl nuw nsw i32 %i.cz, 1
  %spec.select.i.i.i = select i1 %i.dg, i32 %i.dh, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %i.cz, %spec.select.i.i.i
  %.pre8.i.i = load ptr, ptr %i.k, align 8, !tbaa !29 ; 3 uses
  br i1 %.not.i9.i.i.i, label %bb.ah, label %Vec_StrPush.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  %.not9.i10.i.i.i = icmp eq ptr %.pre8.i.i, null
  %i.di = zext nneg i32 %spec.select.i.i.i to i64 ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dj = call ptr @realloc(ptr noundef nonnull %.pre8.i.i, i64 noundef %i.di) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dk = call noalias ptr @malloc(i64 noundef %i.di) #14
  br label %Vec_StrGrow.exit11.sink.split.i.i.i

Vec_StrGrow.exit11.sink.split.i.i.i:              ; preds = %bb.aj, %bb.ai, %bb.af, %bb.ae
  %i.dl = phi ptr [ %i.df, %bb.af ], [ %i.de, %bb.ae ], [ %i.dj, %bb.ai ], [ %i.dk, %bb.aj ] ; 2 uses
  %spec.select.sink.i.i.i = phi i32 [ 16, %bb.af ], [ 16, %bb.ae ], [ %spec.select.i.i.i, %bb.ai ], [ %spec.select.i.i.i, %bb.aj ]
  store ptr %i.dl, ptr %i.k, align 8, !tbaa !29
  store i32 %spec.select.sink.i.i.i, ptr %i.h, align 8, !tbaa !28
  br label %Vec_StrPush.exit.i.i

Vec_StrPush.exit.i.i:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i.i, %bb.ag, %.Vec_StrPush.exit_crit_edge.i.i
  %i.dm = phi ptr [ %.pre.i.i, %.Vec_StrPush.exit_crit_edge.i.i ], [ %.pre8.i.i, %bb.ag ], [ %i.dl, %Vec_StrGrow.exit11.sink.split.i.i.i ]
  %i.dn = add nsw i32 %i.cz, 1
  store i32 %i.dn, ptr %i.i, align 4, !tbaa !26
  %i.do = sext i32 %i.cz to i64
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %i.do
  store i8 %i.cy, ptr %i.dp, align 1, !tbaa !40
  %indvars.iv.next.i238.i = add nuw nsw i64 %indvars.iv.i237.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i238.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Vec_StrPrintStr.exit.i, label %bb.ab, !llvm.loop !41

Vec_StrPrintStr.exit.i:                           ; preds = %Vec_StrPush.exit.i.i, %Vec_StrGrow.exit.i.i
  %i.dq = load i32, ptr %i.i, align 4, !tbaa !26  ; 8 uses
  %i.dr = load i32, ptr %i.h, align 8, !tbaa !28  ; 2 uses
  %i.ds = icmp eq i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.ak, label %Vec_StrPrintStr.exit.Vec_StrPush.exit_crit_edge.i

Vec_StrPrintStr.exit.Vec_StrPush.exit_crit_edge.i: ; preds = %Vec_StrPrintStr.exit.i
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !29
  br label %Vec_StrPush.exit.i

bb.ak:                                            ; preds = %Vec_StrPrintStr.exit.i
  %i.dt = icmp slt i32 %i.dq, 16
  br i1 %i.dt, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.du = load ptr, ptr %i.k, align 8, !tbaa !29  ; 2 uses
  %.not9.i.i239.i = icmp eq ptr %i.du, null
  br i1 %.not9.i.i239.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dv = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.du, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.an:                                            ; preds = %bb.al
  %i.dw = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.ao:                                            ; preds = %bb.ak
  %i.dx = icmp samesign ult i32 %i.dq, 1073741823
  %i.dy = shl nuw nsw i32 %i.dq, 1
  %spec.select.i.i = select i1 %i.dx, i32 %i.dy, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.dq, %spec.select.i.i
  %.pre341.i = load ptr, ptr %i.k, align 8, !tbaa !29 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.ap, label %Vec_StrPush.exit.i

bb.ap:                                            ; preds = %bb.ao
  %.not9.i10.i.i = icmp eq ptr %.pre341.i, null
  %i.dz = zext nneg i32 %spec.select.i.i to i64   ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ea = call ptr @realloc(ptr noundef nonnull %.pre341.i, i64 noundef %i.dz) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.eb = call noalias ptr @malloc(i64 noundef %i.dz) #14
  br label %Vec_StrGrow.exit11.sink.split.i.i

Vec_StrGrow.exit11.sink.split.i.i:                ; preds = %bb.ar, %bb.aq, %bb.an, %bb.am
  %storemerge.i = phi ptr [ %i.dw, %bb.an ], [ %i.dv, %bb.am ], [ %i.ea, %bb.aq ], [ %i.eb, %bb.ar ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.an ], [ 16, %bb.am ], [ %spec.select.i.i, %bb.aq ], [ %spec.select.i.i, %bb.ar ] ; 2 uses
  store ptr %storemerge.i, ptr %i.k, align 8, !tbaa !29
  store i32 %spec.select.sink.i.i, ptr %i.h, align 8, !tbaa !28
  br label %Vec_StrPush.exit.i

Vec_StrPush.exit.i:                               ; preds = %Vec_StrGrow.exit11.sink.split.i.i, %bb.ao, %Vec_StrPrintStr.exit.Vec_StrPush.exit_crit_edge.i
  %i.ec = phi ptr [ %.pre.i, %Vec_StrPrintStr.exit.Vec_StrPush.exit_crit_edge.i ], [ %.pre341.i, %bb.ao ], [ %storemerge.i, %Vec_StrGrow.exit11.sink.split.i.i ] ; 3 uses
  %i.ed = phi i32 [ %i.dr, %Vec_StrPrintStr.exit.Vec_StrPush.exit_crit_edge.i ], [ %i.dq, %bb.ao ], [ %spec.select.sink.i.i, %Vec_StrGrow.exit11.sink.split.i.i ]
  %i.ee = add nsw i32 %i.dq, 1
  store i32 %i.ee, ptr %i.i, align 4, !tbaa !26
  %i.ef = sext i32 %i.dq to i64
  %i.eg = getelementptr inbounds i8, ptr %i.ec, i64 %i.ef
  store i8 0, ptr %i.eg, align 1, !tbaa !40
  br label %bb.as

bb.as:                                            ; preds = %Vec_StrPush.exit.i, %bb.v
  %i.eh = phi i32 [ %i.ed, %Vec_StrPush.exit.i ], [ %i.q, %bb.v ] ; 5 uses
  %i.ei = phi ptr [ %i.ec, %Vec_StrPush.exit.i ], [ %i.r, %bb.v ] ; 5 uses
  %.0197.i = phi ptr [ %i.ec, %Vec_StrPush.exit.i ], [ %i.ci, %bb.v ] ; 4 uses
  %i.ej = call i32 @Extra_ReadHexadecimal(ptr noundef nonnull %i.a, ptr noundef nonnull %.0197.i, i32 noundef %i.bv) #13
  %.not221.i = icmp eq i32 %i.ej, 0
  br i1 %.not221.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ek = call ptr @Extra_FileReaderGetFileName(ptr noundef nonnull %i.c) #13
  %i.el = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef %i.ek, ptr noundef nonnull %.0197.i) ; 0 uses
  %i.em = load ptr, ptr %i.k, align 8, !tbaa !29  ; 2 uses
  %.not.i241.i = icmp eq ptr %i.em, null
  br i1 %.not.i241.i, label %Vec_StrFree.exit242.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.em) #13
  br label %Vec_StrFree.exit242.i

Vec_StrFree.exit242.i:                            ; preds = %bb.au, %bb.at
  call void @free(ptr noundef nonnull %i.h) #13
  br label %Io_ReadBenchNetwork.exit.thread

bb.av:                                            ; preds = %bb.as
  %i.en = icmp slt i32 %i.x, 9
  %i.eo = add nsw i32 %i.x, -8
  %i.ep = shl nuw nsw i32 1, %i.eo
  %i.eq = select i1 %i.en, i32 1, i32 %i.ep
  %i.er = zext nneg i32 %i.eq to i64              ; 2 uses
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ax
  %i.es = icmp sgt i64 %indvars.iv.i243.i112, 1
  br i1 %i.es, label %bb.ax, label %Extra_TruthIsConst0.exit.i, !llvm.loop !42

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %indvars.iv.i243.i112 = phi i64 [ %i.er, %bb.av ], [ %indvars.iv.next.i244.i, %bb.aw ] ; 2 uses
  %indvars.iv.next.i244.i = add nsw i64 %indvars.iv.i243.i112, -1 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i244.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !32
  %.not.i245.i = icmp eq i32 %i.eu, 0
  br i1 %.not.i245.i, label %bb.aw, label %.preheader.i.preheader, !llvm.loop !42

Extra_TruthIsConst0.exit.i:                       ; preds = %bb.aw
  %i.ev = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !37
  %i.ex = call ptr @Io_ReadCreateNode(ptr noundef %i.f, ptr noundef %i.ew, ptr noundef nonnull %i.bu, i32 noundef 0) #13
  %i.ey = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.ez = call ptr @Abc_SopRegister(ptr noundef %i.ey, ptr noundef nonnull @.str.20) #13
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 64
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !40
  br label %bb.cc

.preheader.i:                                     ; preds = %.preheader.i.preheader
  %i.fb = icmp sgt i64 %indvars.iv.i246.i113, 1
  br i1 %i.fb, label %.preheader.i.preheader, label %Extra_TruthIsConst1.exit.i, !llvm.loop !44
end_hunk_0
begin_hunk_1_@Io_ReadBenchInit:bb.a
  %.val.val = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.o = zext nneg i32 %i.j to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val.val, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37   ; 2 uses
  %.val22 = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %.val23 = load ptr, ptr %i.r, align 8, !tbaa !53
  %i.s = getelementptr i8, ptr %.val22, i64 32
  %.val22.val = load ptr, ptr %i.s, align 8, !tbaa !51
  %.val23.val = load i32, ptr %.val23, align 4, !tbaa !32
  %i.t = getelementptr i8, ptr %.val22.val, i64 8
  %.val22.val.val = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.u = sext i32 %.val23.val to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.val22.val.val, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37   ; 6 uses
  %i.x = getelementptr i8, ptr %i.w, i64 20
  %.val24 = load i32, ptr %i.x, align 4
  %i.y = and i32 %.val24, 15
  %.not27 = icmp eq i32 %i.y, 8
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %i.h) ; 0 uses
  br label %.backedge

bb.g:                                             ; preds = %bb.e
  %i.aa = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.6) #13 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !40
  switch i8 %i.ab, label %bb.k [
    i8 48, label %bb.h
    i8 49, label %bb.i
    i8 50, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.ac, align 8, !tbaa !40
  br label %.backedge

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr inttoptr (i64 2 to ptr), ptr %i.ad, align 8, !tbaa !40
  br label %.backedge

bb.j:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr inttoptr (i64 3 to ptr), ptr %i.ae, align 8, !tbaa !40
  br label %.backedge

bb.k:                                             ; preds = %bb.g
  %.val25 = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.af = getelementptr i8, ptr %i.w, i64 48
  %.val26 = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.ag = getelementptr i8, ptr %.val25, i64 32
  %.val25.val = load ptr, ptr %i.ag, align 8, !tbaa !51
  %.val26.val = load i32, ptr %.val26, align 4, !tbaa !32
  %i.ah = getelementptr i8, ptr %.val25.val, i64 8
  %.val25.val.val = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.ai = sext i32 %.val26.val to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %.val25.val.val, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.al = call ptr @Abc_ObjName(ptr noundef %i.ak) #13
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %i.al, ptr noundef nonnull %i.aa) ; 0 uses
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %i.an = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #4

declare i32 @Nm_ManFindIdByName(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Abc_ObjName(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @Abc_NtkStartRead(ptr noundef) local_unnamed_addr #2

declare ptr @Extra_FileReaderGetFileName(ptr noundef) local_unnamed_addr #2

declare ptr @Extra_ProgressBarStart(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Extra_FileReaderGetFileSize(ptr noundef) local_unnamed_addr #2

declare ptr @Extra_FileReaderGetTokens(ptr noundef) local_unnamed_addr #2

declare i32 @Extra_FileReaderGetCurPosition(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_StrFree(ptr noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

declare ptr @Io_ReadCreatePi(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Io_ReadCreatePo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Abc_NtkFindOrCreateNet(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Abc_ObjAddFanin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare ptr @Abc_NtkCreateNodeBuf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Io_ReadCreateLatch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @Extra_ReadHexadecimal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Io_ReadCreateNode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Abc_SopRegister(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Abc_SopCreateFromTruth(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Abc_SopCreateBuf(ptr noundef) local_unnamed_addr #2

declare ptr @Abc_SopCreateInv(ptr noundef) local_unnamed_addr #2

declare ptr @Abc_SopCreateAnd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Abc_SopCreateOr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Abc_SopCreateNand(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Abc_SopCreateNor(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Abc_SopCreateXor(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Abc_SopCreateNxor(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Extra_FileReaderGetLineNumber(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Extra_ProgressBarStop(ptr noundef) local_unnamed_addr #2

declare ptr @Abc_NtkFindNet(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Io_ReadCreateConst(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Abc_NtkFinalizeRead(ptr noundef) local_unnamed_addr #2

declare i32 @Abc_NtkToBdd(ptr noundef) local_unnamed_addr #2

declare i32 @Abc_NtkToSop(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare void @Extra_ProgressBarUpdate_int(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare ptr @Abc_NtkCreateObj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 144}
!9 = !{!"Abc_Ntk_t_", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !12, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !6, i64 96, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !14, i64 160, !5, i64 168, !15, i64 176, !14, i64 184, !5, i64 192, !5, i64 196, !5, i64 200, !16, i64 208, !5, i64 216, !17, i64 224, !19, i64 240, !20, i64 248, !11, i64 256, !21, i64 264, !11, i64 272, !22, i64 280, !5, i64 284, !23, i64 288, !13, i64 296, !18, i64 304, !24, i64 312, !13, i64 320, !14, i64 328, !11, i64 336, !11, i64 344, !14, i64 352, !11, i64 360, !11, i64 368, !23, i64 376, !23, i64 384, !10, i64 392, !25, i64 400, !13, i64 408, !23, i64 416, !23, i64 424, !13, i64 432, !23, i64 440, !23, i64 448, !23, i64 456}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS9Nm_Man_t_", !11, i64 0}
!13 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!14 = !{!"p1 _ZTS10Abc_Ntk_t_", !11, i64 0}
!15 = !{!"p1 _ZTS10Abc_Des_t_", !11, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !18, i64 8}
!18 = !{!"p1 int", !11, i64 0}
!19 = !{!"p1 _ZTS12Mem_Fixed_t_", !11, i64 0}
!20 = !{!"p1 _ZTS11Mem_Step_t_", !11, i64 0}
!21 = !{!"p1 _ZTS14Abc_ManTime_t_", !11, i64 0}
!22 = !{!"float", !6, i64 0}
!23 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!24 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!25 = !{!"p1 float", !11, i64 0}
!26 = !{!27, !5, i64 4}
!27 = !{!"Vec_Str_t_", !5, i64 0, !5, i64 4, !10, i64 8}
!28 = !{!27, !5, i64 0}
!29 = !{!27, !10, i64 8}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!32 = !{!5, !5, i64 0}
!33 = !{!34, !5, i64 4}
!34 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !35, i64 8}
!35 = !{!"any p2 pointer", !11, i64 0}
!36 = !{!34, !35, i64 8}
!37 = !{!11, !11, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!6, !6, i64 0}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !39}
!43 = !{!9, !11, i64 256}
!44 = distinct !{!44, !39}
!45 = distinct !{!45, !39}
!46 = !{!47, !5, i64 28}
!47 = !{!"Abc_Obj_t_", !14, i64 0, !48, i64 8, !5, i64 16, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !17, i64 24, !17, i64 40, !11, i64 56, !6, i64 64, !6, i64 72}
!48 = !{!"p1 _ZTS10Abc_Obj_t_", !11, i64 0}
!49 = !{!9, !12, i64 24}
!50 = distinct !{!50, !39}
!51 = !{!9, !13, i64 32}
!52 = !{!47, !14, i64 0}
!53 = !{!47, !18, i64 32}
!54 = !{!47, !18, i64 48}
end_hunk_1
