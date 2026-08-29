Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mioParse?download=true
inline.NumInlined: 120
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Mio_ParseFormulaOper:bb.a
  br i1 %i.bu, label %Vec_IntGrow.exit11.sink.split.i68.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = icmp samesign ult i32 %i.br, 1073741823
  %i.bw = shl nuw nsw i32 %i.br, 1
  %spec.select.i65.i = select i1 %i.bv, i32 %i.bw, i32 2147483647 ; 3 uses
  %.not.i9.i66.i = icmp samesign ult i32 %i.br, %spec.select.i65.i
  br i1 %.not.i9.i66.i, label %bb.n, label %Vec_IntPush.exit72.i

bb.n:                                             ; preds = %bb.m
  %i.bx = zext nneg i32 %spec.select.i65.i to i64
  %i.by = shl nuw nsw i64 %i.bx, 2
  br label %Vec_IntGrow.exit11.sink.split.i68.i

Vec_IntGrow.exit11.sink.split.i68.i:              ; preds = %bb.n, %bb.l
  %.sink51.i = phi i64 [ %i.by, %bb.n ], [ 64, %bb.l ]
  %spec.select.sink.i69.i = phi i32 [ %spec.select.i65.i, %bb.n ], [ 16, %bb.l ]
  %i.bz = tail call ptr @realloc(ptr noundef nonnull %i.bf, i64 noundef %.sink51.i) #17 ; 2 uses
  store ptr %i.bz, ptr %i.ac, align 8, !tbaa !14
  store i32 %spec.select.sink.i69.i, ptr %i.v, align 8, !tbaa !19
  %.pre.i = load i32, ptr %i.x, align 4, !tbaa !18
  br label %Vec_IntPush.exit72.i

Vec_IntPush.exit72.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i68.i, %bb.m, %Vec_IntPush.exit64.i
  %i.ca = phi i32 [ %i.br, %Vec_IntPush.exit64.i ], [ %i.br, %bb.m ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i68.i ] ; 2 uses
  %i.cb = phi ptr [ %i.bf, %Vec_IntPush.exit64.i ], [ %i.bf, %bb.m ], [ %i.bz, %Vec_IntGrow.exit11.sink.split.i68.i ] ; 4 uses
  %i.cc = add nsw i32 %i.ca, 1
  store i32 %i.cc, ptr %i.x, align 4, !tbaa !18
  %i.cd = sext i32 %i.ca to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cd
  store i32 %.0.i.i, ptr %i.ce, align 4, !tbaa !17
  %i.cf = getelementptr i8, ptr %i.h, i64 8       ; 3 uses
  %.val47.i = load ptr, ptr %i.cf, align 8, !tbaa !14
  %i.cg = load i32, ptr %.val47.i, align 4, !tbaa !17
  %i.ch = load i32, ptr %i.x, align 4, !tbaa !18  ; 7 uses
  %i.ci = load i32, ptr %i.v, align 8, !tbaa !19
  %i.cj = icmp eq i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.o, label %Vec_IntPush.exit80.i

bb.o:                                             ; preds = %Vec_IntPush.exit72.i
  %i.ck = icmp slt i32 %i.ch, 16
  br i1 %i.ck, label %Vec_IntGrow.exit11.sink.split.i76.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = icmp samesign ult i32 %i.ch, 1073741823
  %i.cm = shl nuw nsw i32 %i.ch, 1
  %spec.select.i73.i = select i1 %i.cl, i32 %i.cm, i32 2147483647 ; 3 uses
  %.not.i9.i74.i = icmp samesign ult i32 %i.ch, %spec.select.i73.i
  br i1 %.not.i9.i74.i, label %bb.q, label %Vec_IntPush.exit80.i

bb.q:                                             ; preds = %bb.p
  %i.cn = zext nneg i32 %spec.select.i73.i to i64
  %i.co = shl nuw nsw i64 %i.cn, 2
  br label %Vec_IntGrow.exit11.sink.split.i76.i

Vec_IntGrow.exit11.sink.split.i76.i:              ; preds = %bb.q, %bb.o
  %.sink52.i = phi i64 [ %i.co, %bb.q ], [ 64, %bb.o ]
  %spec.select.sink.i77.i = phi i32 [ %spec.select.i73.i, %bb.q ], [ 16, %bb.o ]
  %i.cp = tail call ptr @realloc(ptr noundef nonnull %i.cb, i64 noundef %.sink52.i) #17 ; 2 uses
  store ptr %i.cp, ptr %i.ac, align 8, !tbaa !14
  store i32 %spec.select.sink.i77.i, ptr %i.v, align 8, !tbaa !19
  %.pre39.i = load i32, ptr %i.x, align 4, !tbaa !18
  br label %Vec_IntPush.exit80.i

Vec_IntPush.exit80.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i76.i, %bb.p, %Vec_IntPush.exit72.i
  %i.cq = phi i32 [ %i.ch, %Vec_IntPush.exit72.i ], [ %i.ch, %bb.p ], [ %.pre39.i, %Vec_IntGrow.exit11.sink.split.i76.i ] ; 8 uses
  %i.cr = phi ptr [ %i.cb, %Vec_IntPush.exit72.i ], [ %i.cb, %bb.p ], [ %i.cp, %Vec_IntGrow.exit11.sink.split.i76.i ] ; 4 uses
  %i.cs = add nsw i32 %i.cq, 1                    ; 5 uses
  store i32 %i.cs, ptr %i.x, align 4, !tbaa !18
  %i.ct = sext i32 %i.cq to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ct
  store i32 %i.cg, ptr %i.cu, align 4, !tbaa !17
  %.val46.i = load ptr, ptr %i.bk, align 8, !tbaa !14
  %i.cv = load i32, ptr %.val46.i, align 4, !tbaa !17 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.bn
  %i.cx = select i1 %i.cw, i32 0, i32 %i.bp
  %.0.i81.i = add nsw i32 %i.cx, %i.cv
  %i.cy = load i32, ptr %i.v, align 8, !tbaa !19
  %i.cz = icmp eq i32 %i.cs, %i.cy
  br i1 %i.cz, label %bb.r, label %Vec_IntPush.exit89.i

bb.r:                                             ; preds = %Vec_IntPush.exit80.i
  %i.da = icmp slt i32 %i.cq, 15
  br i1 %i.da, label %Vec_IntGrow.exit11.sink.split.i85.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = icmp samesign ult i32 %i.cq, 1073741822
  %i.dc = shl nuw nsw i32 %i.cs, 1
  %spec.select.i82.i = select i1 %i.db, i32 %i.dc, i32 2147483647 ; 3 uses
  %.not.i9.i83.i = icmp samesign ult i32 %i.cs, %spec.select.i82.i
  br i1 %.not.i9.i83.i, label %bb.t, label %Vec_IntPush.exit89.i

bb.t:                                             ; preds = %bb.s
  %i.dd = zext nneg i32 %spec.select.i82.i to i64
  %i.de = shl nuw nsw i64 %i.dd, 2
  br label %Vec_IntGrow.exit11.sink.split.i85.i

Vec_IntGrow.exit11.sink.split.i85.i:              ; preds = %bb.t, %bb.r
  %.sink53.i = phi i64 [ %i.de, %bb.t ], [ 64, %bb.r ]
  %spec.select.sink.i86.i = phi i32 [ %spec.select.i82.i, %bb.t ], [ 16, %bb.r ]
  %i.df = tail call ptr @realloc(ptr noundef nonnull %i.cr, i64 noundef %.sink53.i) #17 ; 2 uses
  store ptr %i.df, ptr %i.ac, align 8, !tbaa !14
  store i32 %spec.select.sink.i86.i, ptr %i.v, align 8, !tbaa !19
  br label %Vec_IntPush.exit89.i

Vec_IntPush.exit89.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i85.i, %bb.s, %Vec_IntPush.exit80.i
  %i.dg = phi ptr [ %i.cr, %Vec_IntPush.exit80.i ], [ %i.cr, %bb.s ], [ %i.df, %Vec_IntGrow.exit11.sink.split.i85.i ] ; 4 uses
  %i.dh = add nsw i32 %i.cq, 2                    ; 5 uses
  store i32 %i.dh, ptr %i.x, align 4, !tbaa !18
  %i.di = sext i32 %i.cs to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.di
  store i32 %.0.i81.i, ptr %i.dj, align 4, !tbaa !17
  %.val45.i = load ptr, ptr %i.cf, align 8, !tbaa !14
  %i.dk = load i32, ptr %.val45.i, align 4, !tbaa !17
  %i.dl = xor i32 %i.dk, 1
  %i.dm = load i32, ptr %i.v, align 8, !tbaa !19
  %i.dn = icmp eq i32 %i.dh, %i.dm
  br i1 %i.dn, label %bb.u, label %Vec_IntPush.exit97.i

bb.u:                                             ; preds = %Vec_IntPush.exit89.i
  %i.do = icmp slt i32 %i.cq, 14
  br i1 %i.do, label %Vec_IntGrow.exit11.sink.split.i93.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = icmp samesign ult i32 %i.cq, 1073741821
  %i.dq = shl nuw nsw i32 %i.dh, 1
  %spec.select.i90.i = select i1 %i.dp, i32 %i.dq, i32 2147483647 ; 3 uses
  %.not.i9.i91.i = icmp samesign ult i32 %i.dh, %spec.select.i90.i
  br i1 %.not.i9.i91.i, label %bb.w, label %Vec_IntPush.exit97.i

bb.w:                                             ; preds = %bb.v
  %i.dr = zext nneg i32 %spec.select.i90.i to i64
  %i.ds = shl nuw nsw i64 %i.dr, 2
  br label %Vec_IntGrow.exit11.sink.split.i93.i

Vec_IntGrow.exit11.sink.split.i93.i:              ; preds = %bb.w, %bb.u
  %.sink54.i = phi i64 [ %i.ds, %bb.w ], [ 64, %bb.u ]
  %spec.select.sink.i94.i = phi i32 [ %spec.select.i90.i, %bb.w ], [ 16, %bb.u ]
  %i.dt = tail call ptr @realloc(ptr noundef nonnull %i.dg, i64 noundef %.sink54.i) #17 ; 2 uses
  store ptr %i.dt, ptr %i.ac, align 8, !tbaa !14
  store i32 %spec.select.sink.i94.i, ptr %i.v, align 8, !tbaa !19
  br label %Vec_IntPush.exit97.i

Vec_IntPush.exit97.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i93.i, %bb.v, %Vec_IntPush.exit89.i
  %.promoted11.i = phi ptr [ %i.dg, %Vec_IntPush.exit89.i ], [ %i.dg, %bb.v ], [ %i.dt, %Vec_IntGrow.exit11.sink.split.i93.i ] ; 3 uses
  %i.du = add nsw i32 %i.cq, 3
  store i32 %i.du, ptr %i.x, align 4, !tbaa !18
  %i.dv = sext i32 %i.dh to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %.promoted11.i, i64 %i.dv
  store i32 %i.dl, ptr %i.dw, align 4, !tbaa !17
  %i.dx = icmp sgt i32 %.val42.i, 1
  br i1 %i.dx, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %Vec_IntPush.exit97.i
  %.promoted.i = load i32, ptr %i.x, align 4, !tbaa !18
  %.promoted8.i = load i32, ptr %i.v, align 8, !tbaa !19
  %i.dy = sext i32 %.promoted.i to i64
  %wide.trip.count.i = zext nneg i32 %.val42.i to i64
  br label %bb.x

..preheader_crit_edge.i:                          ; preds = %Vec_IntPush.exit106.i
  %i.dz = trunc nsw i64 %indvars.iv.next.i to i32
  store i32 %i.dz, ptr %i.x, align 4, !tbaa !18
  store i32 %spec.select.sink.i1039.i, ptr %i.v, align 8
  store ptr %storemerge613.i, ptr %i.ac, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %..preheader_crit_edge.i, %Vec_IntPush.exit97.i
  %.promoted21.i = phi ptr [ %storemerge613.i, %..preheader_crit_edge.i ], [ %.promoted11.i, %Vec_IntPush.exit97.i ] ; 2 uses
  %i.ea = icmp sgt i32 %.val.i, 1
  br i1 %i.ea, label %.lr.ph15.i, label %Exp_Xor.exit

.lr.ph15.i:                                       ; preds = %.preheader.i
  %.promoted16.i = load i32, ptr %i.x, align 4, !tbaa !18
  %.promoted18.i = load i32, ptr %i.v, align 8, !tbaa !19
  %i.eb = sext i32 %.promoted16.i to i64
  %wide.trip.count37.i = zext nneg i32 %.val.i to i64
  br label %bb.ab

bb.x:                                             ; preds = %Vec_IntPush.exit106.i, %.lr.ph.i
  %indvars.iv25.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next26.i, %Vec_IntPush.exit106.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.dy, %.lr.ph.i ], [ %indvars.iv.next.i, %Vec_IntPush.exit106.i ] ; 6 uses
  %storemerge612.i = phi ptr [ %.promoted11.i, %.lr.ph.i ], [ %storemerge613.i, %Vec_IntPush.exit106.i ] ; 3 uses
  %spec.select.sink.i10310.i = phi i32 [ %.promoted8.i, %.lr.ph.i ], [ %spec.select.sink.i1039.i, %Vec_IntPush.exit106.i ] ; 4 uses
  %.val44.i = load ptr, ptr %i.bk, align 8, !tbaa !14
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.val44.i, i64 %indvars.iv25.i
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !17 ; 2 uses
  %i.ee = icmp slt i32 %i.ed, %i.bn
  %i.ef = select i1 %i.ee, i32 0, i32 %i.bp
  %.0.i98.i = add nsw i32 %i.ef, %i.ed
  %i.eg = trunc nsw i64 %indvars.iv.i to i32
  %i.eh = icmp eq i32 %spec.select.sink.i10310.i, %i.eg
  br i1 %i.eh, label %bb.y, label %Vec_IntPush.exit106.i

bb.y:                                             ; preds = %bb.x
  %i.ei = icmp slt i64 %indvars.iv.i, 16
  br i1 %i.ei, label %Vec_IntPush.exit106.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = icmp samesign ult i64 %indvars.iv.i, 1073741823
  %i.ek = shl i32 %spec.select.sink.i10310.i, 1
  %spec.select.i99.i = select i1 %i.ej, i32 %i.ek, i32 2147483647 ; 3 uses
  %i.el = sext i32 %spec.select.i99.i to i64
  %.not.i9.i100.i = icmp samesign ult i64 %indvars.iv.i, %i.el
  br i1 %.not.i9.i100.i, label %bb.aa, label %Vec_IntPush.exit106.i

bb.aa:                                            ; preds = %bb.z
  %i.em = zext nneg i32 %spec.select.i99.i to i64
  %i.en = shl nuw nsw i64 %i.em, 2
  br label %Vec_IntPush.exit106.sink.split.i

Vec_IntPush.exit106.sink.split.i:                 ; preds = %bb.aa, %bb.y
  %.sink55.i = phi i64 [ %i.en, %bb.aa ], [ 64, %bb.y ]
  %spec.select.sink.i1039.ph.i = phi i32 [ %spec.select.i99.i, %bb.aa ], [ 16, %bb.y ]
  %i.eo = tail call ptr @realloc(ptr noundef nonnull %storemerge612.i, i64 noundef %.sink55.i) #17
  br label %Vec_IntPush.exit106.i

Vec_IntPush.exit106.i:                            ; preds = %Vec_IntPush.exit106.sink.split.i, %bb.z, %bb.x
  %storemerge613.i = phi ptr [ %storemerge612.i, %bb.x ], [ %storemerge612.i, %bb.z ], [ %i.eo, %Vec_IntPush.exit106.sink.split.i ] ; 4 uses
  %spec.select.sink.i1039.i = phi i32 [ %spec.select.sink.i10310.i, %bb.x ], [ %spec.select.sink.i10310.i, %bb.z ], [ %spec.select.sink.i1039.ph.i, %Vec_IntPush.exit106.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %storemerge613.i, i64 %indvars.iv.i
  store i32 %.0.i98.i, ptr %i.ep, align 4, !tbaa !17
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %..preheader_crit_edge.i, label %bb.x, !llvm.loop !20

bb.ab:                                            ; preds = %Vec_IntPush.exit114.i, %.lr.ph15.i
  %indvars.iv32.i = phi i64 [ 1, %.lr.ph15.i ], [ %indvars.iv.next33.i, %Vec_IntPush.exit114.i ] ; 2 uses
  %indvars.iv30.i = phi i64 [ %i.eb, %.lr.ph15.i ], [ %indvars.iv.next31.i, %Vec_IntPush.exit114.i ] ; 6 uses
  %storemerge522.i = phi ptr [ %.promoted21.i, %.lr.ph15.i ], [ %storemerge523.i, %Vec_IntPush.exit114.i ] ; 3 uses
  %spec.select.sink.i11120.i = phi i32 [ %.promoted18.i, %.lr.ph15.i ], [ %spec.select.sink.i11119.i, %Vec_IntPush.exit114.i ] ; 4 uses
  %.val43.i = load ptr, ptr %i.cf, align 8, !tbaa !14
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.val43.i, i64 %indvars.iv32.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !17
  %i.es = trunc nsw i64 %indvars.iv30.i to i32
  %i.et = icmp eq i32 %spec.select.sink.i11120.i, %i.es
  br i1 %i.et, label %bb.ac, label %Vec_IntPush.exit114.i

bb.ac:                                            ; preds = %bb.ab
  %i.eu = icmp slt i64 %indvars.iv30.i, 16
  br i1 %i.eu, label %Vec_IntPush.exit114.sink.split.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = icmp samesign ult i64 %indvars.iv30.i, 1073741823
  %i.ew = shl i32 %spec.select.sink.i11120.i, 1
  %spec.select.i107.i = select i1 %i.ev, i32 %i.ew, i32 2147483647 ; 3 uses
  %i.ex = sext i32 %spec.select.i107.i to i64
  %.not.i9.i108.i = icmp samesign ult i64 %indvars.iv30.i, %i.ex
  br i1 %.not.i9.i108.i, label %bb.ae, label %Vec_IntPush.exit114.i

bb.ae:                                            ; preds = %bb.ad
  %i.ey = zext nneg i32 %spec.select.i107.i to i64
  %i.ez = shl nuw nsw i64 %i.ey, 2
  br label %Vec_IntPush.exit114.sink.split.i

Vec_IntPush.exit114.sink.split.i:                 ; preds = %bb.ae, %bb.ac
  %.sink56.i = phi i64 [ %i.ez, %bb.ae ], [ 64, %bb.ac ]
  %spec.select.sink.i11119.ph.i = phi i32 [ %spec.select.i107.i, %bb.ae ], [ 16, %bb.ac ]
  %i.fa = tail call ptr @realloc(ptr noundef nonnull %storemerge522.i, i64 noundef %.sink56.i) #17
  br label %Vec_IntPush.exit114.i

Vec_IntPush.exit114.i:                            ; preds = %Vec_IntPush.exit114.sink.split.i, %bb.ad, %bb.ab
  %storemerge523.i = phi ptr [ %storemerge522.i, %bb.ab ], [ %storemerge522.i, %bb.ad ], [ %i.fa, %Vec_IntPush.exit114.sink.split.i ] ; 4 uses
  %spec.select.sink.i11119.i = phi i32 [ %spec.select.sink.i11120.i, %bb.ab ], [ %spec.select.sink.i11120.i, %bb.ad ], [ %spec.select.sink.i11119.ph.i, %Vec_IntPush.exit114.sink.split.i ] ; 2 uses
  %indvars.iv.next31.i = add nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %storemerge523.i, i64 %indvars.iv30.i
  store i32 %i.er, ptr %i.fb, align 4, !tbaa !17
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count37.i
  br i1 %exitcond38.not.i, label %._crit_edge.i, label %bb.ab, !llvm.loop !22

._crit_edge.i:                                    ; preds = %Vec_IntPush.exit114.i
  %i.fc = trunc nsw i64 %indvars.iv.next31.i to i32
  store i32 %i.fc, ptr %i.x, align 4, !tbaa !18
  store i32 %spec.select.sink.i11119.i, ptr %i.v, align 8
  store ptr %storemerge523.i, ptr %i.ac, align 8
  br label %Exp_Xor.exit

Exp_Xor.exit:                                     ; preds = %.preheader.i, %._crit_edge.i
  %.val.i.i24 = phi ptr [ %storemerge523.i, %._crit_edge.i ], [ %.promoted21.i, %.preheader.i ] ; 2 uses
  %i.fd = load i32, ptr %.val.i.i24, align 4, !tbaa !17
  %i.fe = xor i32 %i.fd, 1
  store i32 %i.fe, ptr %.val.i.i24, align 4, !tbaa !17
  br label %bb.af

bb.af:                                            ; preds = %bb.c, %Exp_Xor.exit, %bb.b
  %.0 = phi ptr [ %i.m, %bb.b ], [ %i.n, %bb.c ], [ %i.v, %Exp_Xor.exit ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp eq ptr %i.fg, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @free(ptr noundef nonnull %i.fg) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.af, %bb.ag
  tail call void @free(ptr noundef nonnull %i.l) #18
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !14 ; 2 uses
  %.not.i25 = icmp eq ptr %i.fi, null
  br i1 %.not.i25, label %Vec_IntFree.exit26, label %bb.ah

bb.ah:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.fi) #18
  br label %Vec_IntFree.exit26

Vec_IntFree.exit26:                               ; preds = %Vec_IntFree.exit, %bb.ah
  tail call void @free(ptr noundef nonnull %i.h) #18
  %i.fj = load i32, ptr %i.c, align 4, !tbaa !12  ; 7 uses
  %i.fk = load i32, ptr %2, align 8, !tbaa !23
  %i.fl = icmp eq i32 %i.fj, %i.fk
  br i1 %i.fl, label %bb.ai, label %Vec_IntFree.exit26.Vec_PtrPush.exit_crit_edge

Vec_IntFree.exit26.Vec_PtrPush.exit_crit_edge:    ; preds = %Vec_IntFree.exit26
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %Vec_PtrPush.exit

bb.ai:                                            ; preds = %Vec_IntFree.exit26
  %i.fm = icmp slt i32 %i.fj, 16
  br i1 %i.fm, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.fn, null
  br i1 %.not9.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fo = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.fn, i64 noundef 128) #17
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.al:                                            ; preds = %bb.aj
  %i.fp = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #16
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.am:                                            ; preds = %bb.ai
  %i.fq = icmp samesign ult i32 %i.fj, 1073741823
  %i.fr = shl nuw nsw i32 %i.fj, 1
  %spec.select.i = select i1 %i.fq, i32 %i.fr, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.fj, %spec.select.i
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !8 ; 3 uses
  br i1 %.not.i10.i, label %bb.an, label %Vec_PtrPush.exit

bb.an:                                            ; preds = %bb.am
  %.not9.i11.i = icmp eq ptr %.pre27, null
  %i.fs = zext nneg i32 %spec.select.i to i64
  %i.ft = shl nuw nsw i64 %i.fs, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fu = tail call ptr @realloc(ptr noundef nonnull %.pre27, i64 noundef %i.ft) #17
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ap:                                            ; preds = %bb.an
  %i.fv = tail call noalias ptr @malloc(i64 noundef %i.ft) #16
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.ao, %bb.ap, %bb.ak, %bb.al
  %storemerge = phi ptr [ %i.fp, %bb.al ], [ %i.fo, %bb.ak ], [ %i.fu, %bb.ao ], [ %i.fv, %bb.ap ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.al ], [ 16, %bb.ak ], [ %spec.select.i, %bb.ao ], [ %spec.select.i, %bb.ap ]
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !8
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !23
  %.pre28 = load i32, ptr %i.c, align 4, !tbaa !12
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %Vec_IntFree.exit26.Vec_PtrPush.exit_crit_edge, %bb.am, %Vec_PtrGrow.exit12.sink.split.i
  %i.fw = phi i32 [ %i.fj, %Vec_IntFree.exit26.Vec_PtrPush.exit_crit_edge ], [ %i.fj, %bb.am ], [ %.pre28, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.fx = phi ptr [ %.pre, %Vec_IntFree.exit26.Vec_PtrPush.exit_crit_edge ], [ %.pre27, %bb.am ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.fy = add nsw i32 %i.fw, 1
  store i32 %i.fy, ptr %i.c, align 4, !tbaa !12
  %i.fz = sext i32 %i.fw to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.fz
  store ptr %.0, ptr %i.ga, align 8, !tbaa !13
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %Vec_PtrPush.exit
  %.022 = phi ptr [ %.0, %Vec_PtrPush.exit ], [ null, %bb.a ]
  ret ptr %.022
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @Exp_And(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %.val30 = load i32, ptr %i.a, align 4, !tbaa !18 ; 5 uses
  %i.b = getelementptr i8, ptr %2, i64 4
  %.val = load i32, ptr %i.b, align 4, !tbaa !18  ; 5 uses
  %i.c = add nsw i32 %.val, %.val30
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 10 uses
  %i.e = tail call i32 @llvm.umax.i32(i32 %i.c, i32 15)
  %spec.store.select.i = add nsw i32 %i.e, 1      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 5 uses
  store i32 %spec.store.select.i, ptr %i.d, align 8, !tbaa !19
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntGrow.exit11.sink.split.i, label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !14
  %i.k = sdiv i32 %.val30, 2
  %i.l = add nsw i32 %i.k, %0
  %i.m = sdiv i32 %.val, 2                        ; 2 uses
  %i.n = add nsw i32 %i.l, %i.m
  br label %Vec_IntPush.exit50

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.p = sdiv i32 %.val30, 2
  %i.q = add nsw i32 %i.p, %0
  %i.r = sdiv i32 %.val, 2                        ; 2 uses
  %i.s = add nsw i32 %i.q, %i.r
  %i.t = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16 ; 2 uses
  store ptr %i.t, ptr %i.o, align 8, !tbaa !14
  store i32 16, ptr %i.d, align 8, !tbaa !19
  br label %Vec_IntPush.exit50

Vec_IntPush.exit50:                               ; preds = %Vec_IntAlloc.exit, %Vec_IntGrow.exit11.sink.split.i
  %i.u = phi ptr [ %i.i, %Vec_IntAlloc.exit ], [ %i.t, %Vec_IntGrow.exit11.sink.split.i ] ; 5 uses
  %.in = phi i32 [ %i.n, %Vec_IntAlloc.exit ], [ %i.s, %Vec_IntGrow.exit11.sink.split.i ]
  %i.v = phi i32 [ %i.m, %Vec_IntAlloc.exit ], [ %i.r, %Vec_IntGrow.exit11.sink.split.i ]
  %i.w = phi ptr [ %i.j, %Vec_IntAlloc.exit ], [ %i.o, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.x = shl nsw i32 %.in, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !17
  %i.y = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.z = shl nsw i32 %0, 1                        ; 2 uses
  %i.aa = shl nsw i32 %i.v, 1                     ; 2 uses
  %.val34 = load ptr, ptr %i.y, align 8, !tbaa !14
  %i.ab = load i32, ptr %.val34, align 4, !tbaa !17
  %i.ac = xor i32 %i.ab, %3                       ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.z
  %i.ae = select i1 %i.ad, i32 0, i32 %i.aa
  %.0.i = add nsw i32 %i.ae, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %.0.i, ptr %i.af, align 4, !tbaa !17
  %i.ag = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %.val33 = load ptr, ptr %i.ag, align 8, !tbaa !14
  %i.ah = load i32, ptr %.val33, align 4, !tbaa !17
  %i.ai = xor i32 %i.ah, %4
  store i32 3, ptr %i.f, align 4, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !17
  %i.ak = icmp sgt i32 %.val30, 1
  br i1 %i.ak, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %Vec_IntPush.exit50
  %.promoted = load i32, ptr %i.f, align 4, !tbaa !18
  %.promoted3 = load i32, ptr %i.d, align 8, !tbaa !19
  %i.al = sext i32 %.promoted to i64
  %wide.trip.count = zext nneg i32 %.val30 to i64
  br label %bb.b

..preheader_crit_edge:                            ; preds = %Vec_IntPush.exit59
  %i.am = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.am, ptr %i.f, align 4, !tbaa !18
  store i32 %spec.select.sink.i564, ptr %i.d, align 8
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %Vec_IntPush.exit50
  %.promoted16 = phi ptr [ %storemerge17, %..preheader_crit_edge ], [ %i.u, %Vec_IntPush.exit50 ]
  %i.an = icmp sgt i32 %.val, 1
  br i1 %i.an, label %.lr.ph10, label %bb.j

.lr.ph10:                                         ; preds = %.preheader
  %.promoted11 = load i32, ptr %i.f, align 4, !tbaa !18
  %.promoted13 = load i32, ptr %i.d, align 8, !tbaa !19
  %i.ao = sext i32 %.promoted11 to i64
  %wide.trip.count34 = zext nneg i32 %.val to i64
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %Vec_IntPush.exit59
  %indvars.iv22 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next23, %Vec_IntPush.exit59 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit59 ] ; 7 uses
  %storemerge18 = phi ptr [ %i.u, %.lr.ph ], [ %storemerge17, %Vec_IntPush.exit59 ] ; 3 uses
  %spec.select.sink.i565 = phi i32 [ %.promoted3, %.lr.ph ], [ %spec.select.sink.i564, %Vec_IntPush.exit59 ] ; 3 uses
  %.val32 = load ptr, ptr %i.y, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val32, i64 %indvars.iv22
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !17 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %i.z
  %i.as = select i1 %i.ar, i32 0, i32 %i.aa
  %.0.i51 = add nsw i32 %i.as, %i.aq
  %i.at = trunc nsw i64 %indvars.iv to i32
  %i.au = icmp eq i32 %spec.select.sink.i565, %i.at
  br i1 %i.au, label %bb.c, label %Vec_IntPush.exit59

bb.c:                                             ; preds = %bb.b
  %i.av = icmp slt i64 %indvars.iv, 16
  br i1 %i.av, label %Vec_IntGrow.exit11.sink.split.i55, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ax = shl i32 %indvars.iv.tr, 1
  %spec.select.i52 = select i1 %i.aw, i32 %i.ax, i32 2147483647 ; 3 uses
  %i.ay = sext i32 %spec.select.i52 to i64
  %.not.i9.i53 = icmp samesign ult i64 %indvars.iv, %i.ay
  br i1 %.not.i9.i53, label %bb.e, label %Vec_IntPush.exit59

bb.e:                                             ; preds = %bb.d
  %i.az = zext nneg i32 %spec.select.i52 to i64
  %i.ba = shl nuw nsw i64 %i.az, 2
  br label %Vec_IntGrow.exit11.sink.split.i55

Vec_IntGrow.exit11.sink.split.i55:                ; preds = %bb.c, %bb.e
  %.sink = phi i64 [ %i.ba, %bb.e ], [ 64, %bb.c ]
  %spec.select.sink.i56 = phi i32 [ %spec.select.i52, %bb.e ], [ 16, %bb.c ]
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %storemerge18, i64 noundef %.sink) #17 ; 2 uses
  store ptr %i.bb, ptr %i.w, align 8, !tbaa !14
  br label %Vec_IntPush.exit59

Vec_IntPush.exit59:                               ; preds = %bb.b, %bb.d, %Vec_IntGrow.exit11.sink.split.i55
  %storemerge17 = phi ptr [ %storemerge18, %bb.b ], [ %storemerge18, %bb.d ], [ %i.bb, %Vec_IntGrow.exit11.sink.split.i55 ] ; 3 uses
  %spec.select.sink.i564 = phi i32 [ %spec.select.sink.i565, %bb.b ], [ %spec.select.sink.i565, %bb.d ], [ %spec.select.sink.i56, %Vec_IntGrow.exit11.sink.split.i55 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %storemerge17, i64 %indvars.iv
  store i32 %.0.i51, ptr %i.bc, align 4, !tbaa !17
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count
  br i1 %exitcond.not, label %..preheader_crit_edge, label %bb.b, !llvm.loop !24

bb.f:                                             ; preds = %.lr.ph10, %Vec_IntPush.exit67
  %indvars.iv29 = phi i64 [ 1, %.lr.ph10 ], [ %indvars.iv.next30, %Vec_IntPush.exit67 ] ; 2 uses
  %indvars.iv27 = phi i64 [ %i.ao, %.lr.ph10 ], [ %indvars.iv.next28, %Vec_IntPush.exit67 ] ; 7 uses
  %storemerge20 = phi ptr [ %.promoted16, %.lr.ph10 ], [ %storemerge19, %Vec_IntPush.exit67 ] ; 3 uses
  %spec.select.sink.i6415 = phi i32 [ %.promoted13, %.lr.ph10 ], [ %spec.select.sink.i6414, %Vec_IntPush.exit67 ] ; 3 uses
  %.val31 = load ptr, ptr %i.ag, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.val31, i64 %indvars.iv29
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !17
  %i.bf = trunc nsw i64 %indvars.iv27 to i32
  %i.bg = icmp eq i32 %spec.select.sink.i6415, %i.bf
  br i1 %i.bg, label %bb.g, label %Vec_IntPush.exit67

bb.g:                                             ; preds = %bb.f
  %i.bh = icmp slt i64 %indvars.iv27, 16
  br i1 %i.bh, label %Vec_IntGrow.exit11.sink.split.i63, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp samesign ult i64 %indvars.iv27, 1073741823
  %indvars.iv27.tr = trunc i64 %indvars.iv27 to i32
  %i.bj = shl i32 %indvars.iv27.tr, 1
  %spec.select.i60 = select i1 %i.bi, i32 %i.bj, i32 2147483647 ; 3 uses
  %i.bk = sext i32 %spec.select.i60 to i64
  %.not.i9.i61 = icmp samesign ult i64 %indvars.iv27, %i.bk
  br i1 %.not.i9.i61, label %bb.i, label %Vec_IntPush.exit67

bb.i:                                             ; preds = %bb.h
  %i.bl = zext nneg i32 %spec.select.i60 to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2
  br label %Vec_IntGrow.exit11.sink.split.i63

Vec_IntGrow.exit11.sink.split.i63:                ; preds = %bb.g, %bb.i
  %.sink37 = phi i64 [ %i.bm, %bb.i ], [ 64, %bb.g ]
  %spec.select.sink.i64 = phi i32 [ %spec.select.i60, %bb.i ], [ 16, %bb.g ]
  %i.bn = tail call ptr @realloc(ptr noundef nonnull %storemerge20, i64 noundef %.sink37) #17 ; 2 uses
  store ptr %i.bn, ptr %i.w, align 8, !tbaa !14
  br label %Vec_IntPush.exit67

Vec_IntPush.exit67:                               ; preds = %bb.f, %bb.h, %Vec_IntGrow.exit11.sink.split.i63
  %storemerge19 = phi ptr [ %storemerge20, %bb.f ], [ %storemerge20, %bb.h ], [ %i.bn, %Vec_IntGrow.exit11.sink.split.i63 ] ; 2 uses
  %spec.select.sink.i6414 = phi i32 [ %spec.select.sink.i6415, %bb.f ], [ %spec.select.sink.i6415, %bb.h ], [ %spec.select.sink.i64, %Vec_IntGrow.exit11.sink.split.i63 ] ; 2 uses
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, 1 ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %storemerge19, i64 %indvars.iv27
  store i32 %i.be, ptr %i.bo, align 4, !tbaa !17
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count34
  br i1 %exitcond35.not, label %._crit_edge, label %bb.f, !llvm.loop !25

._crit_edge:                                      ; preds = %Vec_IntPush.exit67
  %i.bp = trunc nsw i64 %indvars.iv.next28 to i32
  store i32 %i.bp, ptr %i.f, align 4, !tbaa !18
  store i32 %spec.select.sink.i6414, ptr %i.d, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %.preheader
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @Mio_ParseFormula(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.0105 = phi ptr [ %0, %bb.a ], [ %i.f, %bb.e ] ; 2 uses
  %.0103 = phi i32 [ 0, %bb.a ], [ %.1104, %bb.e ] ; 4 uses
  %i.c = load i8, ptr %.0105, align 1, !tbaa !26
  switch i8 %i.c, label %bb.e [
    i8 0, label %bb.f
    i8 40, label %bb.c
    i8 41, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %.0103, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = add nsw i32 %.0103, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.1104 = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %.0103, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0105, i64 1
  br label %bb.b, !llvm.loop !27

bb.f:                                             ; preds = %bb.b
  %.not126 = icmp eq i32 %.0103, 0
  br i1 %.not126, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !28
  %i.h = tail call i64 @fwrite(ptr nonnull @.str, i64 76, i64 1, ptr %i.g) ; 0 uses
  br label %Vec_IntFreeP.exit301

bb.h:                                             ; preds = %bb.f
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %i.j = add i64 %i.i, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #16 ; 6 uses
  %i.l = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %0) #18 ; 0 uses
  %i.m = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 0, ptr %i.n, align 4, !tbaa !12
  store i32 100, ptr %i.m, align 8, !tbaa !23
  %i.o = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !8
  store ptr %i.m, ptr %i.a, align 8, !tbaa !30
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 0, ptr %i.r, align 4, !tbaa !18
  store i32 100, ptr %i.q, align 8, !tbaa !19
  %i.s = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #16
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !14
  store ptr %i.q, ptr %i.b, align 8, !tbaa !32
  %.not145395 = icmp sgt i32 %2, 0
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.h
  %i.u = phi ptr [ %i.q, %bb.h ], [ %i.td, %.loopexit ] ; 11 uses
  %i.v = phi ptr [ %i.q, %bb.h ], [ %i.te, %.loopexit ] ; 11 uses
  %i.w = phi ptr [ %i.q, %bb.h ], [ %i.tf, %.loopexit ] ; 11 uses
  %i.x = phi ptr [ %i.q, %bb.h ], [ %i.tg, %.loopexit ] ; 5 uses
  %i.y = phi ptr [ %i.q, %bb.h ], [ %i.th, %.loopexit ] ; 13 uses
  %.1106 = phi ptr [ %i.k, %bb.h ], [ %i.ti, %.loopexit ] ; 17 uses
  %.0101 = phi i32 [ 1, %bb.h ], [ %.5, %.loopexit ] ; 12 uses
  %i.z = load i8, ptr %.1106, align 1, !tbaa !26  ; 3 uses
  switch i8 %i.z, label %.preheader324 [
    i8 0, label %bb.ft
    i8 32, label %.loopexit
    i8 9, label %.loopexit
    i8 13, label %.loopexit
    i8 10, label %.loopexit
    i8 48, label %bb.j
    i8 49, label %bb.u
    i8 33, label %bb.af
    i8 39, label %bb.ba
    i8 42, label %bb.bg
    i8 38, label %bb.bg
    i8 43, label %bb.bg
    i8 124, label %bb.bg
    i8 94, label %bb.bg
    i8 40, label %bb.cn
    i8 41, label %bb.di
  ]

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !30  ; 6 uses
  %i.ab = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 16, ptr %i.ab, align 8, !tbaa !19
  %i.ad = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !14
  store i32 1, ptr %i.ac, align 4, !tbaa !18
  store i32 -1, ptr %i.ad, align 4, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !12 ; 7 uses
  %i.ah = load i32, ptr %i.aa, align 8, !tbaa !23
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %Vec_PtrPush.exit

bb.k:                                             ; preds = %bb.j
  %i.aj = icmp slt i32 %i.ag, 16
  br i1 %i.aj, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.al, null
  br i1 %.not9.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.al, i64 noundef 128) #17
  br label %Vec_PtrGrow.exit.i

bb.n:                                             ; preds = %bb.l
  %i.an = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #16
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.n, %bb.m
  %i.ao = phi ptr [ %i.am, %bb.m ], [ %i.an, %bb.n ]
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !8
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.o:                                             ; preds = %bb.k
  %i.ap = icmp samesign ult i32 %i.ag, 1073741823
  %i.aq = shl nuw nsw i32 %i.ag, 1
  %spec.select.i = select i1 %i.ap, i32 %i.aq, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.ag, %spec.select.i
  br i1 %.not.i10.i, label %bb.p, label %Vec_PtrPush.exit

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !8  ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.as, null
  %i.at = zext nneg i32 %spec.select.i to i64
  %i.au = shl nuw nsw i64 %i.at, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = tail call ptr @realloc(ptr noundef nonnull %i.as, i64 noundef %i.au) #17
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.au) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ax = phi ptr [ %i.av, %bb.q ], [ %i.aw, %bb.r ]
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !8
  br label %Vec_PtrGrow.exit12.sink.split.i
end_hunk_0
