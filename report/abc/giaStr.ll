Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaStr?download=true
inline.NumInlined: 638
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Str_MuxStructDump_rec:bb.a
  br label %Vec_StrGrow.exit11.sink.split.i26

Vec_StrGrow.exit11.sink.split.i26:                ; preds = %bb.r, %bb.s, %bb.n, %bb.o
  %storemerge = phi ptr [ %i.ah, %bb.o ], [ %i.ag, %bb.n ], [ %i.al, %bb.r ], [ %i.am, %bb.s ] ; 2 uses
  %spec.select.sink.i27 = phi i32 [ 16, %bb.o ], [ 16, %bb.n ], [ %spec.select.i23, %bb.r ], [ %spec.select.i23, %bb.s ]
  store ptr %storemerge, ptr %i.w, align 8, !tbaa !62
  store i32 %spec.select.sink.i27, ptr %2, align 8, !tbaa !61
  %.pre73 = load i32, ptr %i.d, align 4, !tbaa !60
  br label %Vec_StrPush.exit30

Vec_StrPush.exit30:                               ; preds = %Vec_StrPush.exit.Vec_StrPush.exit30_crit_edge, %bb.p, %Vec_StrGrow.exit11.sink.split.i26
  %i.an = phi i32 [ %i.ab, %Vec_StrPush.exit.Vec_StrPush.exit30_crit_edge ], [ %i.ab, %bb.p ], [ %.pre73, %Vec_StrGrow.exit11.sink.split.i26 ] ; 2 uses
  %i.ao = phi ptr [ %.pre71, %Vec_StrPush.exit.Vec_StrPush.exit30_crit_edge ], [ %.pre72, %bb.p ], [ %storemerge, %Vec_StrGrow.exit11.sink.split.i26 ]
  %i.ap = add nsw i32 %i.an, 1
  store i32 %i.ap, ptr %i.d, align 4, !tbaa !60
  %i.aq = sext i32 %i.an to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %i.aq
  store i8 40, ptr %i.ar, align 1, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !55 ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.thread, label %bb.t

bb.t:                                             ; preds = %Vec_StrPush.exit30
  %i.au = getelementptr i8, ptr %0, i64 32
  %.val8.i = load ptr, ptr %i.au, align 8, !tbaa !49
  %i.av = ptrtoint ptr %1 to i64
  %i.aw = ptrtoint ptr %.val8.i to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 12
  %i.az = shl i64 %i.ay, 32
  %i.ba = ashr exact i64 %i.az, 30
  %i.bb = getelementptr inbounds i8, ptr %i.at, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !44 ; 2 uses
  %.not7.i = icmp eq i32 %i.bc, 0
  %i.bd = ashr i32 %i.bc, 1                       ; 4 uses
  br i1 %.not7.i, label %.thread, label %Gia_ObjFaninId2p.exit

.thread:                                          ; preds = %bb.t, %Vec_StrPush.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  br label %bb.ae

Gia_ObjFaninId2p.exit:                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %Gia_ObjFaninId2p.exit
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !60  ; 7 uses
  %i.bg = load i32, ptr %2, align 8, !tbaa !61
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.v, label %.Vec_StrPush.exit.i_crit_edge

.Vec_StrPush.exit.i_crit_edge:                    ; preds = %bb.u
  %.pre74 = load ptr, ptr %i.w, align 8, !tbaa !62
  br label %Vec_StrPush.exit.i

bb.v:                                             ; preds = %bb.u
  %i.bi = icmp slt i32 %i.bf, 16
  br i1 %i.bi, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bj = load ptr, ptr %i.w, align 8, !tbaa !62  ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not9.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bj, i64 noundef 16) #32
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.y:                                             ; preds = %bb.w
  %i.bl = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.z:                                             ; preds = %bb.v
  %i.bm = icmp samesign ult i32 %i.bf, 1073741823
  %i.bn = shl nuw nsw i32 %i.bf, 1
  %spec.select.i.i = select i1 %i.bm, i32 %i.bn, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.bf, %spec.select.i.i
  %.pre75 = load ptr, ptr %i.w, align 8, !tbaa !62 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.aa, label %Vec_StrPush.exit.i

bb.aa:                                            ; preds = %bb.z
  %.not9.i10.i.i = icmp eq ptr %.pre75, null
  %i.bo = zext nneg i32 %spec.select.i.i to i64   ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = tail call ptr @realloc(ptr noundef nonnull %.pre75, i64 noundef %i.bo) #32
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bo) #31
  br label %Vec_StrGrow.exit11.sink.split.i.i

Vec_StrGrow.exit11.sink.split.i.i:                ; preds = %bb.ab, %bb.ac, %bb.x, %bb.y
  %storemerge63 = phi ptr [ %i.bl, %bb.y ], [ %i.bk, %bb.x ], [ %i.bp, %bb.ab ], [ %i.bq, %bb.ac ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.y ], [ 16, %bb.x ], [ %spec.select.i.i, %bb.ab ], [ %spec.select.i.i, %bb.ac ]
  store ptr %storemerge63, ptr %i.w, align 8, !tbaa !62
  store i32 %spec.select.sink.i.i, ptr %2, align 8, !tbaa !61
  %.pre45.i = load i32, ptr %i.d, align 4, !tbaa !60
  br label %Vec_StrPush.exit.i

Vec_StrPush.exit.i:                               ; preds = %.Vec_StrPush.exit.i_crit_edge, %Vec_StrGrow.exit11.sink.split.i.i, %bb.z
  %i.br = phi ptr [ %.pre74, %.Vec_StrPush.exit.i_crit_edge ], [ %.pre75, %bb.z ], [ %storemerge63, %Vec_StrGrow.exit11.sink.split.i.i ]
  %i.bs = phi i32 [ %i.bf, %.Vec_StrPush.exit.i_crit_edge ], [ %i.bf, %bb.z ], [ %.pre45.i, %Vec_StrGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.d, align 4, !tbaa !60
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  store i8 48, ptr %i.bv, align 1, !tbaa !63
  br label %Vec_StrPrintNum.exit

bb.ad:                                            ; preds = %Gia_ObjFaninId2p.exit
  %i.bw = icmp slt i32 %i.bd, 0
  br i1 %i.bw, label %bb.ae, label %.preheader

bb.ae:                                            ; preds = %.thread, %bb.ad
  %i.bx = phi i32 [ -1, %.thread ], [ %i.bd, %bb.ad ]
  %i.by = load i32, ptr %i.d, align 4, !tbaa !60  ; 7 uses
  %i.bz = load i32, ptr %2, align 8, !tbaa !61
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.af, label %.Vec_StrPush.exit24.i_crit_edge

.Vec_StrPush.exit24.i_crit_edge:                  ; preds = %bb.ae
  %.pre76 = load ptr, ptr %i.w, align 8, !tbaa !62
  br label %Vec_StrPush.exit24.i

bb.af:                                            ; preds = %bb.ae
  %i.cb = icmp slt i32 %i.by, 16
  br i1 %i.cb, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.cc = load ptr, ptr %i.w, align 8, !tbaa !62  ; 2 uses
  %.not9.i.i22.i = icmp eq ptr %i.cc, null
  br i1 %.not9.i.i22.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cd = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.cc, i64 noundef 16) #32
  br label %Vec_StrGrow.exit11.sink.split.i20.i

bb.ai:                                            ; preds = %bb.ag
  %i.ce = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %Vec_StrGrow.exit11.sink.split.i20.i

bb.aj:                                            ; preds = %bb.af
  %i.cf = icmp samesign ult i32 %i.by, 1073741823
  %i.cg = shl nuw nsw i32 %i.by, 1
  %spec.select.i17.i = select i1 %i.cf, i32 %i.cg, i32 2147483647 ; 4 uses
  %.not.i9.i18.i = icmp samesign ult i32 %i.by, %spec.select.i17.i
  %.pre77 = load ptr, ptr %i.w, align 8, !tbaa !62 ; 3 uses
  br i1 %.not.i9.i18.i, label %bb.ak, label %Vec_StrPush.exit24.i

bb.ak:                                            ; preds = %bb.aj
  %.not9.i10.i19.i = icmp eq ptr %.pre77, null
  %i.ch = zext nneg i32 %spec.select.i17.i to i64 ; 2 uses
  br i1 %.not9.i10.i19.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ci = tail call ptr @realloc(ptr noundef nonnull %.pre77, i64 noundef %i.ch) #32
  br label %Vec_StrGrow.exit11.sink.split.i20.i

bb.am:                                            ; preds = %bb.ak
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ch) #31
  br label %Vec_StrGrow.exit11.sink.split.i20.i

Vec_StrGrow.exit11.sink.split.i20.i:              ; preds = %bb.al, %bb.am, %bb.ah, %bb.ai
  %storemerge64 = phi ptr [ %i.ce, %bb.ai ], [ %i.cd, %bb.ah ], [ %i.ci, %bb.al ], [ %i.cj, %bb.am ] ; 2 uses
  %spec.select.sink.i21.i = phi i32 [ 16, %bb.ai ], [ 16, %bb.ah ], [ %spec.select.i17.i, %bb.al ], [ %spec.select.i17.i, %bb.am ]
  store ptr %storemerge64, ptr %i.w, align 8, !tbaa !62
  store i32 %spec.select.sink.i21.i, ptr %2, align 8, !tbaa !61
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !60
  br label %Vec_StrPush.exit24.i

Vec_StrPush.exit24.i:                             ; preds = %.Vec_StrPush.exit24.i_crit_edge, %Vec_StrGrow.exit11.sink.split.i20.i, %bb.aj
  %i.ck = phi ptr [ %.pre76, %.Vec_StrPush.exit24.i_crit_edge ], [ %.pre77, %bb.aj ], [ %storemerge64, %Vec_StrGrow.exit11.sink.split.i20.i ]
  %i.cl = phi i32 [ %i.by, %.Vec_StrPush.exit24.i_crit_edge ], [ %i.by, %bb.aj ], [ %.pre.i, %Vec_StrGrow.exit11.sink.split.i20.i ] ; 2 uses
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.d, align 4, !tbaa !60
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 %i.cn
  store i8 45, ptr %i.co, align 1, !tbaa !63
  %i.cp = sub nsw i32 0, %i.bx
  br label %.preheader

.preheader:                                       ; preds = %Vec_StrPush.exit24.i, %bb.ad
  %.11533.i.ph = phi i32 [ %i.bd, %bb.ad ], [ %i.cp, %Vec_StrPush.exit24.i ]
  br label %bb.an

bb.an:                                            ; preds = %.preheader, %bb.an
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %bb.an ], [ 1, %.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.an ], [ 0, %.preheader ] ; 2 uses
  %.11533.i = phi i32 [ %i.ct, %bb.an ], [ %.11533.i.ph, %.preheader ] ; 3 uses
  %i.cq = urem i32 %.11533.i, 10
  %i.cr = trunc nuw nsw i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !63
  %i.ct = udiv i32 %.11533.i, 10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.not.i32 = icmp ult i32 %.11533.i, 10
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1
  br i1 %.not.i32, label %.preheader.i, label %bb.an, !llvm.loop !101

.preheader.i:                                     ; preds = %bb.an, %Vec_StrPush.exit32.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %Vec_StrPush.exit32.i ], [ %indvars.iv37.i, %bb.an ] ; 2 uses
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, -1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next40.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !63
  %i.cw = add i8 %i.cv, 48
  %i.cx = load i32, ptr %i.d, align 4, !tbaa !60  ; 7 uses
  %i.cy = load i32, ptr %2, align 8, !tbaa !61
  %i.cz = icmp eq i32 %i.cx, %i.cy
  br i1 %i.cz, label %bb.ao, label %.Vec_StrPush.exit32_crit_edge.i

.Vec_StrPush.exit32_crit_edge.i:                  ; preds = %.preheader.i
  %.pre42.i = load ptr, ptr %i.w, align 8, !tbaa !62
  br label %Vec_StrPush.exit32.i

bb.ao:                                            ; preds = %.preheader.i
  %i.da = icmp slt i32 %i.cx, 16
  br i1 %i.da, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.db = load ptr, ptr %i.w, align 8, !tbaa !62  ; 2 uses
  %.not9.i.i30.i = icmp eq ptr %i.db, null
  br i1 %.not9.i.i30.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dc = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.db, i64 noundef 16) #32
  br label %Vec_StrGrow.exit11.sink.split.i28.i

bb.ar:                                            ; preds = %bb.ap
  %i.dd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %Vec_StrGrow.exit11.sink.split.i28.i

bb.as:                                            ; preds = %bb.ao
  %i.de = icmp samesign ult i32 %i.cx, 1073741823
  %i.df = shl nuw nsw i32 %i.cx, 1
  %spec.select.i25.i = select i1 %i.de, i32 %i.df, i32 2147483647 ; 4 uses
  %.not.i9.i26.i = icmp samesign ult i32 %i.cx, %spec.select.i25.i
  %.pre43.i = load ptr, ptr %i.w, align 8, !tbaa !62 ; 3 uses
  br i1 %.not.i9.i26.i, label %bb.at, label %Vec_StrPush.exit32.i

bb.at:                                            ; preds = %bb.as
  %.not9.i10.i27.i = icmp eq ptr %.pre43.i, null
  %i.dg = zext nneg i32 %spec.select.i25.i to i64 ; 2 uses
  br i1 %.not9.i10.i27.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dh = tail call ptr @realloc(ptr noundef nonnull %.pre43.i, i64 noundef %i.dg) #32
  br label %Vec_StrGrow.exit11.sink.split.i28.i

bb.av:                                            ; preds = %bb.at
  %i.di = tail call noalias ptr @malloc(i64 noundef %i.dg) #31
  br label %Vec_StrGrow.exit11.sink.split.i28.i

Vec_StrGrow.exit11.sink.split.i28.i:              ; preds = %bb.av, %bb.au, %bb.ar, %bb.aq
  %i.dj = phi ptr [ %i.dd, %bb.ar ], [ %i.dc, %bb.aq ], [ %i.dh, %bb.au ], [ %i.di, %bb.av ] ; 2 uses
  %spec.select.sink.i29.i = phi i32 [ 16, %bb.ar ], [ 16, %bb.aq ], [ %spec.select.i25.i, %bb.au ], [ %spec.select.i25.i, %bb.av ]
  store ptr %i.dj, ptr %i.w, align 8, !tbaa !62
  store i32 %spec.select.sink.i29.i, ptr %2, align 8, !tbaa !61
  %.pre44.i = load i32, ptr %i.d, align 4, !tbaa !60
  br label %Vec_StrPush.exit32.i

Vec_StrPush.exit32.i:                             ; preds = %Vec_StrGrow.exit11.sink.split.i28.i, %bb.as, %.Vec_StrPush.exit32_crit_edge.i
  %i.dk = phi i32 [ %i.cx, %.Vec_StrPush.exit32_crit_edge.i ], [ %i.cx, %bb.as ], [ %.pre44.i, %Vec_StrGrow.exit11.sink.split.i28.i ] ; 2 uses
  %i.dl = phi ptr [ %.pre42.i, %.Vec_StrPush.exit32_crit_edge.i ], [ %.pre43.i, %bb.as ], [ %i.dj, %Vec_StrGrow.exit11.sink.split.i28.i ]
  %i.dm = add nsw i32 %i.dk, 1
  store i32 %i.dm, ptr %i.d, align 4, !tbaa !60
  %i.dn = sext i32 %i.dk to i64
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %i.dn
  store i8 %i.cw, ptr %i.do, align 1, !tbaa !63
  %i.dp = icmp sgt i64 %indvars.iv39.i, 1
  br i1 %i.dp, label %.preheader.i, label %Vec_StrPrintNum.exit, !llvm.loop !102

Vec_StrPrintNum.exit:                             ; preds = %Vec_StrPush.exit32.i, %Vec_StrPush.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.dq = load i32, ptr %i.d, align 4, !tbaa !60  ; 7 uses
  %i.dr = load i32, ptr %2, align 8, !tbaa !61
  %i.ds = icmp eq i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.aw, label %Vec_StrPrintNum.exit.Vec_StrPush.exit40_crit_edge

Vec_StrPrintNum.exit.Vec_StrPush.exit40_crit_edge: ; preds = %Vec_StrPrintNum.exit
  %.pre78 = load ptr, ptr %i.w, align 8, !tbaa !62
  br label %Vec_StrPush.exit40

bb.aw:                                            ; preds = %Vec_StrPrintNum.exit
  %i.dt = icmp slt i32 %i.dq, 16
  br i1 %i.dt, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.du = load ptr, ptr %i.w, align 8, !tbaa !62  ; 2 uses
  %.not9.i.i38 = icmp eq ptr %i.du, null
  br i1 %.not9.i.i38, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dv = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.du, i64 noundef 16) #32
  br label %Vec_StrGrow.exit11.sink.split.i36

bb.az:                                            ; preds = %bb.ax
  %i.dw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %Vec_StrGrow.exit11.sink.split.i36

bb.ba:                                            ; preds = %bb.aw
  %i.dx = icmp samesign ult i32 %i.dq, 1073741823
  %i.dy = shl nuw nsw i32 %i.dq, 1
  %spec.select.i33 = select i1 %i.dx, i32 %i.dy, i32 2147483647 ; 4 uses
  %.not.i9.i34 = icmp samesign ult i32 %i.dq, %spec.select.i33
  %.pre79 = load ptr, ptr %i.w, align 8, !tbaa !62 ; 3 uses
  br i1 %.not.i9.i34, label %bb.bb, label %Vec_StrPush.exit40

bb.bb:                                            ; preds = %bb.ba
  %.not9.i10.i35 = icmp eq ptr %.pre79, null
  %i.dz = zext nneg i32 %spec.select.i33 to i64   ; 2 uses
  br i1 %.not9.i10.i35, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ea = tail call ptr @realloc(ptr noundef nonnull %.pre79, i64 noundef %i.dz) #32
  br label %Vec_StrGrow.exit11.sink.split.i36

bb.bd:                                            ; preds = %bb.bb
  %i.eb = tail call noalias ptr @malloc(i64 noundef %i.dz) #31
  br label %Vec_StrGrow.exit11.sink.split.i36

Vec_StrGrow.exit11.sink.split.i36:                ; preds = %bb.bc, %bb.bd, %bb.ay, %bb.az
  %storemerge65 = phi ptr [ %i.dw, %bb.az ], [ %i.dv, %bb.ay ], [ %i.ea, %bb.bc ], [ %i.eb, %bb.bd ] ; 2 uses
  %spec.select.sink.i37 = phi i32 [ 16, %bb.az ], [ 16, %bb.ay ], [ %spec.select.i33, %bb.bc ], [ %spec.select.i33, %bb.bd ]
  store ptr %storemerge65, ptr %i.w, align 8, !tbaa !62
  store i32 %spec.select.sink.i37, ptr %2, align 8, !tbaa !61
  %.pre80 = load i32, ptr %i.d, align 4, !tbaa !60
  br label %Vec_StrPush.exit40

Vec_StrPush.exit40:                               ; preds = %Vec_StrPrintNum.exit.Vec_StrPush.exit40_crit_edge, %bb.ba, %Vec_StrGrow.exit11.sink.split.i36
  %i.ec = phi i32 [ %i.dq, %Vec_StrPrintNum.exit.Vec_StrPush.exit40_crit_edge ], [ %i.dq, %bb.ba ], [ %.pre80, %Vec_StrGrow.exit11.sink.split.i36 ] ; 2 uses
  %i.ed = phi ptr [ %.pre78, %Vec_StrPrintNum.exit.Vec_StrPush.exit40_crit_edge ], [ %.pre79, %bb.ba ], [ %storemerge65, %Vec_StrGrow.exit11.sink.split.i36 ]
  %i.ee = add nsw i32 %i.ec, 1
  store i32 %i.ee, ptr %i.d, align 4, !tbaa !60
  %i.ef = sext i32 %i.ec to i64
  %i.eg = getelementptr inbounds i8, ptr %i.ed, i64 %i.ef
  store i8 41, ptr %i.eg, align 1, !tbaa !63
  %i.eh = load ptr, ptr %i.as, align 8, !tbaa !55 ; 2 uses
  %.not.i41 = icmp eq ptr %i.eh, null
  br i1 %.not.i41, label %Gia_ObjFaninC2.exit.thread, label %Gia_ObjFaninC2.exit

Gia_ObjFaninC2.exit:                              ; preds = %Vec_StrPush.exit40
  %i.ei = getelementptr i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.ei, align 8, !tbaa !49
  %i.ej = ptrtoint ptr %1 to i64
  %i.ek = ptrtoint ptr %.val.i to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = sdiv exact i64 %i.el, 12
  %i.en = shl i64 %i.em, 32
  %i.eo = ashr exact i64 %i.en, 30
  %i.ep = getelementptr inbounds i8, ptr %i.eh, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !44
  %i.er = and i32 %i.eq, 1
  %.not21 = icmp eq i32 %i.er, 0
  br i1 %.not21, label %Gia_ObjFaninC2.exit.thread, label %bb.be

bb.be:                                            ; preds = %Gia_ObjFaninC2.exit
  %i.es = load i64, ptr %1, align 4
  br label %bb.bf

Gia_ObjFaninC2.exit.thread:                       ; preds = %Vec_StrPush.exit40, %Gia_ObjFaninC2.exit
  %i.et = load i64, ptr %1, align 4
  %i.eu = lshr i64 %i.et, 32
  br label %bb.bf

bb.bf:                                            ; preds = %Gia_ObjFaninC2.exit.thread, %bb.be
  %.pn66.in = phi i64 [ %i.es, %bb.be ], [ %i.eu, %Gia_ObjFaninC2.exit.thread ]
  %.pn66 = and i64 %.pn66.in, 536870911
  %.pn = sub nsw i64 0, %.pn66
  %i.ev = getelementptr inbounds [12 x i8], ptr %1, i64 %.pn
  tail call void @Str_MuxStructDump_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.ev, ptr noundef nonnull %2)
  %i.ew = load i32, ptr %i.d, align 4, !tbaa !60  ; 7 uses
  %i.ex = load i32, ptr %2, align 8, !tbaa !61
  %i.ey = icmp eq i32 %i.ew, %i.ex
  br i1 %i.ey, label %bb.bg, label %.Vec_StrPush.exit49_crit_edge

.Vec_StrPush.exit49_crit_edge:                    ; preds = %bb.bf
  %.pre81 = load ptr, ptr %i.w, align 8, !tbaa !62
  br label %Vec_StrPush.exit49

bb.bg:                                            ; preds = %bb.bf
  %i.ez = icmp slt i32 %i.ew, 16
  br i1 %i.ez, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.fa = load ptr, ptr %i.w, align 8, !tbaa !62  ; 2 uses
  %.not9.i.i47 = icmp eq ptr %i.fa, null
  br i1 %.not9.i.i47, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fb = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fa, i64 noundef 16) #32
  br label %Vec_StrGrow.exit11.sink.split.i45

bb.bj:                                            ; preds = %bb.bh
  %i.fc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %Vec_StrGrow.exit11.sink.split.i45

bb.bk:                                            ; preds = %bb.bg
  %i.fd = icmp samesign ult i32 %i.ew, 1073741823
  %i.fe = shl nuw nsw i32 %i.ew, 1
  %spec.select.i42 = select i1 %i.fd, i32 %i.fe, i32 2147483647 ; 4 uses
  %.not.i9.i43 = icmp samesign ult i32 %i.ew, %spec.select.i42
  %.pre82 = load ptr, ptr %i.w, align 8, !tbaa !62 ; 3 uses
  br i1 %.not.i9.i43, label %bb.bl, label %Vec_StrPush.exit49

bb.bl:                                            ; preds = %bb.bk
  %.not9.i10.i44 = icmp eq ptr %.pre82, null
  %i.ff = zext nneg i32 %spec.select.i42 to i64   ; 2 uses
  br i1 %.not9.i10.i44, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fg = tail call ptr @realloc(ptr noundef nonnull %.pre82, i64 noundef %i.ff) #32
  br label %Vec_StrGrow.exit11.sink.split.i45

bb.bn:                                            ; preds = %bb.bl
  %i.fh = tail call noalias ptr @malloc(i64 noundef %i.ff) #31
  br label %Vec_StrGrow.exit11.sink.split.i45

Vec_StrGrow.exit11.sink.split.i45:                ; preds = %bb.bm, %bb.bn, %bb.bi, %bb.bj
  %storemerge67 = phi ptr [ %i.fc, %bb.bj ], [ %i.fb, %bb.bi ], [ %i.fg, %bb.bm ], [ %i.fh, %bb.bn ] ; 2 uses
  %spec.select.sink.i46 = phi i32 [ 16, %bb.bj ], [ 16, %bb.bi ], [ %spec.select.i42, %bb.bm ], [ %spec.select.i42, %bb.bn ]
  store ptr %storemerge67, ptr %i.w, align 8, !tbaa !62
  store i32 %spec.select.sink.i46, ptr %2, align 8, !tbaa !61
  %.pre83 = load i32, ptr %i.d, align 4, !tbaa !60
  br label %Vec_StrPush.exit49

Vec_StrPush.exit49:                               ; preds = %.Vec_StrPush.exit49_crit_edge, %bb.bk, %Vec_StrGrow.exit11.sink.split.i45
  %i.fi = phi i32 [ %i.ew, %.Vec_StrPush.exit49_crit_edge ], [ %i.ew, %bb.bk ], [ %.pre83, %Vec_StrGrow.exit11.sink.split.i45 ] ; 2 uses
  %i.fj = phi ptr [ %.pre81, %.Vec_StrPush.exit49_crit_edge ], [ %.pre82, %bb.bk ], [ %storemerge67, %Vec_StrGrow.exit11.sink.split.i45 ]
  %i.fk = add nsw i32 %i.fi, 1
  store i32 %i.fk, ptr %i.d, align 4, !tbaa !60
  %i.fl = sext i32 %i.fi to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fj, i64 %i.fl
  store i8 124, ptr %i.fm, align 1, !tbaa !63
  %i.fn = load ptr, ptr %i.as, align 8, !tbaa !55 ; 2 uses
  %.not.i50 = icmp eq ptr %i.fn, null
  br i1 %.not.i50, label %Gia_ObjFaninC2.exit52.thread, label %Gia_ObjFaninC2.exit52

Gia_ObjFaninC2.exit52:                            ; preds = %Vec_StrPush.exit49
  %i.fo = getelementptr i8, ptr %0, i64 32
  %.val.i51 = load ptr, ptr %i.fo, align 8, !tbaa !49
  %i.fp = ptrtoint ptr %1 to i64
  %i.fq = ptrtoint ptr %.val.i51 to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = sdiv exact i64 %i.fr, 12
  %i.ft = shl i64 %i.fs, 32
  %i.fu = ashr exact i64 %i.ft, 30
  %i.fv = getelementptr inbounds i8, ptr %i.fn, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !44
  %i.fx = and i32 %i.fw, 1
  %.not22 = icmp eq i32 %i.fx, 0
  br i1 %.not22, label %Gia_ObjFaninC2.exit52.thread, label %bb.bo

bb.bo:                                            ; preds = %Gia_ObjFaninC2.exit52
  %i.fy = load i64, ptr %1, align 4
  %i.fz = lshr i64 %i.fy, 32
  br label %bb.bp

Gia_ObjFaninC2.exit52.thread:                     ; preds = %Vec_StrPush.exit49, %Gia_ObjFaninC2.exit52
  %i.ga = load i64, ptr %1, align 4
  br label %bb.bp

bb.bp:                                            ; preds = %Gia_ObjFaninC2.exit52.thread, %bb.bo
  %.pn69.in = phi i64 [ %i.fz, %bb.bo ], [ %i.ga, %Gia_ObjFaninC2.exit52.thread ]
  %.pn69 = and i64 %.pn69.in, 536870911
  %.pn68 = sub nsw i64 0, %.pn69
  %i.gb = getelementptr inbounds [12 x i8], ptr %1, i64 %.pn68
  tail call void @Str_MuxStructDump_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.gb, ptr noundef nonnull %2)
  %i.gc = load i32, ptr %i.d, align 4, !tbaa !60  ; 7 uses
  %i.gd = load i32, ptr %2, align 8, !tbaa !61
end_hunk_0
