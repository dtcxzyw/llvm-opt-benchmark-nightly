Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlnWlc?download=true
inline.NumInlined: 121
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Wln_NtkFromWlc:bb.a
  %i.kq = icmp ugt i32 %.val299402, 2
  br i1 %i.kq, label %Wlc_ObjHasArray.exit.thread.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kr = load i16, ptr %i.jy, align 8
  %i.ks = and i16 %i.kr, 63
  switch i16 %i.ks, label %Wlc_ObjFaninId.exit [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i
  ]

Wlc_ObjHasArray.exit.thread.i.i:                  ; preds = %bb.ai, %bb.ai, %bb.ah
  %i.kt = load ptr, ptr %i.kp, align 8, !tbaa !9
  br label %Wlc_ObjFaninId.exit

Wlc_ObjFaninId.exit:                              ; preds = %bb.ai, %Wlc_ObjHasArray.exit.thread.i.i
  %i.ku = phi ptr [ %i.kt, %Wlc_ObjHasArray.exit.thread.i.i ], [ %i.kp, %bb.ai ]
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv445
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !8
  %.val302 = load ptr, ptr %i.ik, align 8, !tbaa !31
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [4 x i8], ptr %.val302, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !8
  %i.la = load i32, ptr %i.c, align 4, !tbaa !29  ; 7 uses
  %i.lb = load i32, ptr %i.b, align 8, !tbaa !30
  %i.lc = icmp eq i32 %i.la, %i.lb
  br i1 %i.lc, label %bb.aj, label %Wlc_ObjFaninId.exit.Vec_IntPush.exit324_crit_edge

Wlc_ObjFaninId.exit.Vec_IntPush.exit324_crit_edge: ; preds = %Wlc_ObjFaninId.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !31
  br label %Vec_IntPush.exit324

bb.aj:                                            ; preds = %Wlc_ObjFaninId.exit
  %i.ld = icmp slt i32 %i.la, 16
  br i1 %i.ld, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.le = load ptr, ptr %i.e, align 8, !tbaa !31  ; 2 uses
  %.not9.i.i322 = icmp eq ptr %i.le, null
  br i1 %.not9.i.i322, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lf = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.le, i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i320

bb.am:                                            ; preds = %bb.ak
  %i.lg = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #14
  br label %Vec_IntGrow.exit11.sink.split.i320

bb.an:                                            ; preds = %bb.aj
  %i.lh = icmp samesign ult i32 %i.la, 1073741823
  %i.li = shl nuw nsw i32 %i.la, 1
  %spec.select.i317 = select i1 %i.lh, i32 %i.li, i32 2147483647 ; 4 uses
  %.not.i9.i318 = icmp samesign ult i32 %i.la, %spec.select.i317
  %.pre468 = load ptr, ptr %i.e, align 8, !tbaa !31 ; 3 uses
  br i1 %.not.i9.i318, label %bb.ao, label %Vec_IntPush.exit324

bb.ao:                                            ; preds = %bb.an
  %.not9.i10.i319 = icmp eq ptr %.pre468, null
  %i.lj = zext nneg i32 %spec.select.i317 to i64
  %i.lk = shl nuw nsw i64 %i.lj, 2                ; 2 uses
  br i1 %.not9.i10.i319, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ll = call ptr @realloc(ptr noundef nonnull %.pre468, i64 noundef %i.lk) #17
  br label %Vec_IntGrow.exit11.sink.split.i320

bb.aq:                                            ; preds = %bb.ao
  %i.lm = call noalias ptr @malloc(i64 noundef %i.lk) #14
  br label %Vec_IntGrow.exit11.sink.split.i320

Vec_IntGrow.exit11.sink.split.i320:               ; preds = %bb.ap, %bb.aq, %bb.al, %bb.am
  %storemerge363 = phi ptr [ %i.lg, %bb.am ], [ %i.lf, %bb.al ], [ %i.ll, %bb.ap ], [ %i.lm, %bb.aq ] ; 2 uses
  %spec.select.sink.i321 = phi i32 [ 16, %bb.am ], [ 16, %bb.al ], [ %spec.select.i317, %bb.ap ], [ %spec.select.i317, %bb.aq ]
  store ptr %storemerge363, ptr %i.e, align 8, !tbaa !31
  store i32 %spec.select.sink.i321, ptr %i.b, align 8, !tbaa !30
  %.pre469 = load i32, ptr %i.c, align 4, !tbaa !29
  br label %Vec_IntPush.exit324

Vec_IntPush.exit324:                              ; preds = %Wlc_ObjFaninId.exit.Vec_IntPush.exit324_crit_edge, %bb.an, %Vec_IntGrow.exit11.sink.split.i320
  %i.ln = phi i32 [ %i.la, %Wlc_ObjFaninId.exit.Vec_IntPush.exit324_crit_edge ], [ %i.la, %bb.an ], [ %.pre469, %Vec_IntGrow.exit11.sink.split.i320 ] ; 2 uses
  %i.lo = phi ptr [ %.pre, %Wlc_ObjFaninId.exit.Vec_IntPush.exit324_crit_edge ], [ %.pre468, %bb.an ], [ %storemerge363, %Vec_IntGrow.exit11.sink.split.i320 ]
  %i.lp = add nsw i32 %i.ln, 1
  store i32 %i.lp, ptr %i.c, align 4, !tbaa !29
  %i.lq = sext i32 %i.ln to i64
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.lo, i64 %i.lq
  store i32 %i.kz, ptr %i.lr, align 4, !tbaa !8
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1 ; 2 uses
  %.val299 = load i32, ptr %i.kn, align 4, !tbaa !55 ; 2 uses
  %i.ls = sext i32 %.val299 to i64
  %i.lt = icmp slt i64 %indvars.iv.next446, %i.ls
  br i1 %i.lt, label %bb.ah, label %.critedge8, !llvm.loop !56

.critedge8:                                       ; preds = %Vec_IntPush.exit324, %bb.ag
  %i.lu = call i32 @Wln_ObjAddFanins(ptr noundef %i.v, i32 noundef %i.km, ptr noundef nonnull %i.b) #15 ; 0 uses
  %i.lv = load i16, ptr %i.jy, align 8
  %i.lw = and i16 %i.lv, 63
  switch i16 %i.lw, label %bb.cn [
    i16 22, label %bb.ar
    i16 6, label %Wlc_ObjConstValue.exit
  ]

bb.ar:                                            ; preds = %.critedge8
  %i.lx = load ptr, ptr %i.il, align 8, !tbaa !57 ; 3 uses
  %i.ly = load i32, ptr %i.ki, align 8, !tbaa !40 ; 3 uses
  %i.lz = load i32, ptr %i.kk, align 4, !tbaa !42 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 8 ; 5 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !58 ; 4 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 4
  %.val35.i = load i32, ptr %i.mc, align 4, !tbaa !29 ; 2 uses
  %i.md = sdiv i32 %.val35.i, 4                   ; 4 uses
  %i.me = load ptr, ptr %i.lx, align 8, !tbaa !60 ; 7 uses
  %i.mf = getelementptr i8, ptr %i.me, i64 4      ; 2 uses
  %.val34.i = load i32, ptr %i.mf, align 4, !tbaa !29 ; 2 uses
  %i.mg = icmp sgt i32 %i.md, %.val34.i
  br i1 %i.mg, label %bb.as, label %.loopexit.i

bb.as:                                            ; preds = %bb.ar
  %i.mh = shl nsw i32 %.val34.i, 1
  %i.mi = add i32 %i.mh, -1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.as
  %.012.i.i = phi i32 [ %i.mi, %bb.as ], [ %i.mj, %.critedge.i.i.backedge ] ; 2 uses
  %i.mj = add i32 %.012.i.i, 1                    ; 9 uses
  %i.mk = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.mk, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i325, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.mj, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i325

bb.at:                                            ; preds = %.lr.ph.i.i325
  %i.ml = add nuw nsw i32 %.01116.i.i, 2          ; 3 uses
  %i.mm = mul nuw nsw i32 %i.ml, %i.ml
  %.not.i.i = icmp ugt i32 %i.mm, %i.mj
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i325, !llvm.loop !61

.lr.ph.i.i325:                                    ; preds = %.preheader.i.i, %bb.at
  %.01116.i.i = phi i32 [ %i.ml, %bb.at ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.mn = urem i32 %i.mj, %.01116.i.i
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %.critedge.i.i.backedge, label %bb.at

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.at
  %i.mp = load i32, ptr %i.me, align 8, !tbaa !30
  %.not.i.i.i326 = icmp slt i32 %i.mp, %i.mj
  %i.mq = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !31 ; 3 uses
  br i1 %.not.i.i.i326, label %bb.au, label %Abc_PrimeCudd.exit..lr.ph.i36_crit_edge.i

Abc_PrimeCudd.exit..lr.ph.i36_crit_edge.i:        ; preds = %Abc_PrimeCudd.exit.i
  %.pre103.i = zext nneg i32 %i.mj to i64
  %.pre104.i = shl nuw nsw i64 %.pre103.i, 2
  br label %.lr.ph.i36.i

bb.au:                                            ; preds = %Abc_PrimeCudd.exit.i
  %.not9.i.i.i327 = icmp eq ptr %i.mr, null
  %i.ms = zext nneg i32 %i.mj to i64
  %i.mt = shl nuw nsw i64 %i.ms, 2                ; 3 uses
  br i1 %.not9.i.i.i327, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mu = call ptr @realloc(ptr noundef nonnull %i.mr, i64 noundef %i.mt) #17
  %.pre89.pre.pre.i = load ptr, ptr %i.lx, align 8, !tbaa !60
  %.pre90.pre.pre.pre.i = load ptr, ptr %i.ma, align 8, !tbaa !58
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.mv = call noalias ptr @malloc(i64 noundef %i.mt) #14
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pre90.pre.pre.i = phi ptr [ %.pre90.pre.pre.pre.i, %bb.av ], [ %i.mb, %bb.aw ]
  %.pre89.pre.i = phi ptr [ %.pre89.pre.pre.i, %bb.av ], [ %i.me, %bb.aw ]
  %i.mw = phi ptr [ %i.mu, %bb.av ], [ %i.mv, %bb.aw ] ; 2 uses
  store ptr %i.mw, ptr %i.mq, align 8, !tbaa !31
  store i32 %i.mj, ptr %i.me, align 8, !tbaa !30
  br label %.lr.ph.i36.i

.lr.ph.i36.i:                                     ; preds = %bb.ax, %Abc_PrimeCudd.exit..lr.ph.i36_crit_edge.i
  %.pre-phi105.i = phi i64 [ %.pre104.i, %Abc_PrimeCudd.exit..lr.ph.i36_crit_edge.i ], [ %i.mt, %bb.ax ]
  %.pre90.pre.i = phi ptr [ %i.mb, %Abc_PrimeCudd.exit..lr.ph.i36_crit_edge.i ], [ %.pre90.pre.pre.i, %bb.ax ] ; 3 uses
  %.pre89.i = phi ptr [ %i.me, %Abc_PrimeCudd.exit..lr.ph.i36_crit_edge.i ], [ %.pre89.pre.i, %bb.ax ] ; 4 uses
  %i.mx = phi ptr [ %i.mr, %Abc_PrimeCudd.exit..lr.ph.i36_crit_edge.i ], [ %i.mw, %bb.ax ]
  call void @llvm.memset.p0.i64(ptr align 4 %i.mx, i8 0, i64 %.pre-phi105.i, i1 false), !tbaa !8
  store i32 %i.mj, ptr %i.mf, align 4, !tbaa !29
  %i.my = icmp sgt i32 %.val35.i, 7
  br i1 %i.my, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.lr.ph.i36.i
  %i.mz = getelementptr i8, ptr %.pre90.pre.i, i64 8
  %.val.i.i = load ptr, ptr %i.mz, align 8, !tbaa !31 ; 2 uses
  %i.na = getelementptr i8, ptr %.pre89.i, i64 4
  %i.nb = getelementptr i8, ptr %.pre89.i, i64 8
  %.val15.i.i = load ptr, ptr %i.nb, align 8, !tbaa !31
  %wide.trip.count.i = zext nneg i32 %i.md to i64
  br label %bb.ay

bb.ay:                                            ; preds = %Hash_Int2ManLookup.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %Hash_Int2ManLookup.exit.i ] ; 3 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.nc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  store i32 0, ptr %i.nd, align 4, !tbaa !62
  %i.ne = load i32, ptr %i.nc, align 4, !tbaa !64 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !65 ; 2 uses
  %.val.i38.i = load i32, ptr %i.na, align 4, !tbaa !29
  %i.nh = mul i32 %i.ne, 4177
  %i.ni = mul i32 %i.ng, 7873
  %i.nj = add i32 %i.ni, %i.nh
  %i.nk = urem i32 %i.nj, %.val.i38.i
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [4 x i8], ptr %.val15.i.i, i64 %i.nl ; 3 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !8  ; 2 uses
  %.not.i17.i.i = icmp eq i32 %i.nn, 0
  br i1 %.not.i17.i.i, label %Hash_Int2ManLookup.exit.i, label %Hash_IntObj.exit.i.i

Hash_IntObj.exit.i.i:                             ; preds = %bb.ay, %bb.ba
  %i.no = phi i32 [ %i.ny, %bb.ba ], [ %i.nn, %bb.ay ]
  %.018.i.i = phi ptr [ %i.nx, %bb.ba ], [ %i.nm, %bb.ay ]
  %i.np = shl nsw i32 %i.no, 2
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.nq ; 3 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !64
  %i.nt = icmp eq i32 %i.ns, %i.ne
  br i1 %i.nt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %Hash_IntObj.exit.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !65
  %i.nw = icmp eq i32 %i.nv, %i.ng
  br i1 %i.nw, label %Hash_Int2ManLookup.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %Hash_IntObj.exit.i.i
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nr, i64 12 ; 3 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !8  ; 2 uses
  %.not.i.i39.i = icmp eq i32 %i.ny, 0
  br i1 %.not.i.i39.i, label %Hash_Int2ManLookup.exit.i, label %Hash_IntObj.exit.i.i, !llvm.loop !66

Hash_Int2ManLookup.exit.i:                        ; preds = %bb.ba, %bb.az, %bb.ay
  %.0.lcssa.i.i = phi ptr [ %i.nm, %bb.ay ], [ %i.nx, %bb.ba ], [ %.018.i.i, %bb.az ]
  %i.nz = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.nz, ptr %.0.lcssa.i.i, align 4, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.ay, !llvm.loop !67

.loopexit.i:                                      ; preds = %Hash_Int2ManLookup.exit.i, %.lr.ph.i36.i, %bb.ar
  %.pre90.i = phi ptr [ %i.mb, %bb.ar ], [ %.pre90.pre.i, %.lr.ph.i36.i ], [ %.pre90.pre.i, %Hash_Int2ManLookup.exit.i ] ; 9 uses
  %i.oa = phi ptr [ %i.me, %bb.ar ], [ %.pre89.i, %.lr.ph.i36.i ], [ %.pre89.i, %Hash_Int2ManLookup.exit.i ] ; 2 uses
  %i.ob = getelementptr i8, ptr %i.oa, i64 4
  %.val.i40.i = load i32, ptr %i.ob, align 4, !tbaa !29
  %i.oc = mul i32 %i.ly, 4177
  %i.od = mul i32 %i.lz, 7873
  %i.oe = add i32 %i.od, %i.oc
  %i.of = urem i32 %i.oe, %.val.i40.i
  %i.og = getelementptr i8, ptr %i.oa, i64 8
  %.val15.i41.i = load ptr, ptr %i.og, align 8, !tbaa !31
  %i.oh = sext i32 %i.of to i64
  %i.oi = getelementptr inbounds [4 x i8], ptr %.val15.i41.i, i64 %i.oh ; 2 uses
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !8  ; 2 uses
  %.not.i17.i42.i = icmp eq i32 %i.oj, 0
  br i1 %.not.i17.i42.i, label %Hash_Int2ManLookup.exit49.thread.i, label %Hash_IntObj.exit.lr.ph.i43.i

Hash_IntObj.exit.lr.ph.i43.i:                     ; preds = %.loopexit.i
  %i.ok = getelementptr i8, ptr %.pre90.i, i64 8
  %.val.i.i44.i = load ptr, ptr %i.ok, align 8, !tbaa !31
  br label %Hash_IntObj.exit.i45.i

Hash_IntObj.exit.i45.i:                           ; preds = %bb.bc, %Hash_IntObj.exit.lr.ph.i43.i
  %.pr.i = phi i32 [ %i.oj, %Hash_IntObj.exit.lr.ph.i43.i ], [ %i.ou, %bb.bc ] ; 2 uses
  %i.ol = shl nsw i32 %.pr.i, 2
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [4 x i8], ptr %.val.i.i44.i, i64 %i.om ; 4 uses
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !64
  %i.op = icmp eq i32 %i.oo, %i.ly
  br i1 %i.op, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %Hash_IntObj.exit.i45.i
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !65
  %i.os = icmp eq i32 %i.or, %i.lz
  br i1 %i.os, label %Hash_Int2ManInsert.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %Hash_IntObj.exit.i45.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !8  ; 2 uses
  %.not.i.i47.i = icmp eq i32 %i.ou, 0
  br i1 %.not.i.i47.i, label %Hash_Int2ManLookup.exit49.thread.i.loopexit, label %Hash_IntObj.exit.i45.i, !llvm.loop !66

Hash_Int2ManLookup.exit49.thread.i.loopexit:      ; preds = %bb.bc
  %i.ov = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  br label %Hash_Int2ManLookup.exit49.thread.i

Hash_Int2ManLookup.exit49.thread.i:               ; preds = %Hash_Int2ManLookup.exit49.thread.i.loopexit, %.loopexit.i
  %.0.lcssa.i4878.i = phi ptr [ %i.oi, %.loopexit.i ], [ %i.ov, %Hash_Int2ManLookup.exit49.thread.i.loopexit ]
  store i32 %i.md, ptr %.0.lcssa.i4878.i, align 4, !tbaa !8
  %i.ow = getelementptr inbounds nuw i8, ptr %.pre90.i, i64 4 ; 3 uses
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !29 ; 7 uses
  %i.oy = load i32, ptr %.pre90.i, align 8, !tbaa !30
  %i.oz = icmp eq i32 %i.ox, %i.oy
  br i1 %i.oz, label %bb.bd, label %Vec_IntPush.exit.i

bb.bd:                                            ; preds = %Hash_Int2ManLookup.exit49.thread.i
  %i.pa = icmp slt i32 %i.ox, 16
  br i1 %i.pa, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.pb = getelementptr inbounds nuw i8, ptr %.pre90.i, i64 8 ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i50.i = icmp eq ptr %i.pc, null
  br i1 %.not9.i.i50.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.pd = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.pc, i64 noundef 64) #17
  br label %Vec_IntGrow.exit.i51.i

bb.bg:                                            ; preds = %bb.be
  %i.pe = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #14
  br label %Vec_IntGrow.exit.i51.i

Vec_IntGrow.exit.i51.i:                           ; preds = %bb.bg, %bb.bf
  %i.pf = phi ptr [ %i.pd, %bb.bf ], [ %i.pe, %bb.bg ]
  store ptr %i.pf, ptr %i.pb, align 8, !tbaa !31
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.bh:                                            ; preds = %bb.bd
  %i.pg = icmp samesign ult i32 %i.ox, 1073741823
  %i.ph = shl nuw nsw i32 %i.ox, 1
  %spec.select.i.i = select i1 %i.pg, i32 %i.ph, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.ox, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.bi, label %Vec_IntPush.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.pi = getelementptr inbounds nuw i8, ptr %.pre90.i, i64 8 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !31 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.pj, null
  %i.pk = zext nneg i32 %spec.select.i.i to i64
  %i.pl = shl nuw nsw i64 %i.pk, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.pm = call ptr @realloc(ptr noundef nonnull %i.pj, i64 noundef %i.pl) #17
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.pn = call noalias ptr @malloc(i64 noundef %i.pl) #14
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.po = phi ptr [ %i.pm, %bb.bj ], [ %i.pn, %bb.bk ]
  store ptr %i.po, ptr %i.pi, align 8, !tbaa !31
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.bl, %Vec_IntGrow.exit.i51.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.bl ], [ 16, %Vec_IntGrow.exit.i51.i ]
  store i32 %spec.select.sink.i.i, ptr %.pre90.i, align 8, !tbaa !30
  %.pre91.i = load i32, ptr %i.ow, align 4, !tbaa !29
  %.pre92.i = load ptr, ptr %i.ma, align 8, !tbaa !58
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.bh, %Hash_Int2ManLookup.exit49.thread.i
  %i.pp = phi ptr [ %.pre90.i, %Hash_Int2ManLookup.exit49.thread.i ], [ %.pre90.i, %bb.bh ], [ %.pre92.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 8 uses
  %i.pq = phi i32 [ %i.ox, %Hash_Int2ManLookup.exit49.thread.i ], [ %i.ox, %bb.bh ], [ %.pre91.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.pre90.i, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !31
  %i.pt = add nsw i32 %i.pq, 1
  store i32 %i.pt, ptr %i.ow, align 4, !tbaa !29
  %i.pu = sext i32 %i.pq to i64
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.ps, i64 %i.pu
  store i32 %i.ly, ptr %i.pv, align 4, !tbaa !8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pp, i64 4 ; 3 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !29 ; 7 uses
  %i.py = load i32, ptr %i.pp, align 8, !tbaa !30
  %i.pz = icmp eq i32 %i.px, %i.py
  br i1 %i.pz, label %bb.bm, label %Vec_IntPush.exit59.i

bb.bm:                                            ; preds = %Vec_IntPush.exit.i
  %i.qa = icmp slt i32 %i.px, 16
  br i1 %i.qa, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pp, i64 8 ; 2 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i57.i = icmp eq ptr %i.qc, null
  br i1 %.not9.i.i57.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.qd = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.qc, i64 noundef 64) #17
  br label %Vec_IntGrow.exit.i58.i

bb.bp:                                            ; preds = %bb.bn
  %i.qe = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #14
  br label %Vec_IntGrow.exit.i58.i

end_hunk_0
begin_hunk_1_@Wln_NtkFromWlc:bb.a
  br label %Vec_IntGrow.exit11.sink.split.i346.4

Vec_IntGrow.exit11.sink.split.i346.4:             ; preds = %bb.dh, %bb.dj
  %.sink569 = phi i64 [ %i.zu, %bb.dj ], [ 64, %bb.dh ]
  %spec.select.sink.i347.4 = phi i32 [ %spec.select.i343.4, %bb.dj ], [ 16, %bb.dh ]
  %i.zv = call ptr @realloc(ptr noundef nonnull %i.zj, i64 noundef %.sink569) #17 ; 2 uses
  store ptr %i.zv, ptr %i.e, align 8, !tbaa !31
  store i32 %spec.select.sink.i347.4, ptr %i.b, align 8, !tbaa !30
  %.pre478 = load i32, ptr %i.c, align 4, !tbaa !29
  br label %Vec_IntPush.exit350.4

Vec_IntPush.exit350.4:                            ; preds = %Vec_IntGrow.exit11.sink.split.i346.4, %bb.di, %Vec_IntPush.exit350.3
  %i.zw = phi i32 [ %.pre478, %Vec_IntGrow.exit11.sink.split.i346.4 ], [ %i.zn, %bb.di ], [ %i.zn, %Vec_IntPush.exit350.3 ] ; 2 uses
  %i.zx = phi ptr [ %i.zv, %Vec_IntGrow.exit11.sink.split.i346.4 ], [ %i.zj, %bb.di ], [ %i.zj, %Vec_IntPush.exit350.3 ] ; 4 uses
  %i.zy = add nsw i32 %i.zw, 1
  store i32 %i.zy, ptr %i.c, align 4, !tbaa !29
  %i.zz = sext i32 %i.zw to i64
  %i.aaa = getelementptr inbounds [4 x i8], ptr %i.zx, i64 %i.zz
  store i32 0, ptr %i.aaa, align 4, !tbaa !8
  %i.aab = load i32, ptr %i.c, align 4, !tbaa !29 ; 7 uses
  %i.aac = load i32, ptr %i.b, align 8, !tbaa !30
  %i.aad = icmp eq i32 %i.aab, %i.aac
  br i1 %i.aad, label %bb.dk, label %Vec_IntPush.exit350.5

bb.dk:                                            ; preds = %Vec_IntPush.exit350.4
  %i.aae = icmp slt i32 %i.aab, 16
  br i1 %i.aae, label %Vec_IntGrow.exit11.sink.split.i346.5, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aaf = icmp samesign ult i32 %i.aab, 1073741823
  %i.aag = shl nuw nsw i32 %i.aab, 1
  %spec.select.i343.5 = select i1 %i.aaf, i32 %i.aag, i32 2147483647 ; 3 uses
  %.not.i9.i344.5 = icmp samesign ult i32 %i.aab, %spec.select.i343.5
  br i1 %.not.i9.i344.5, label %bb.dm, label %Vec_IntPush.exit350.5

bb.dm:                                            ; preds = %bb.dl
  %i.aah = zext nneg i32 %spec.select.i343.5 to i64
  %i.aai = shl nuw nsw i64 %i.aah, 2
  br label %Vec_IntGrow.exit11.sink.split.i346.5

Vec_IntGrow.exit11.sink.split.i346.5:             ; preds = %bb.dk, %bb.dm
  %.sink570 = phi i64 [ %i.aai, %bb.dm ], [ 64, %bb.dk ]
  %spec.select.sink.i347.5 = phi i32 [ %spec.select.i343.5, %bb.dm ], [ 16, %bb.dk ]
  %i.aaj = call ptr @realloc(ptr noundef nonnull %i.zx, i64 noundef %.sink570) #17 ; 2 uses
  store ptr %i.aaj, ptr %i.e, align 8, !tbaa !31
  store i32 %spec.select.sink.i347.5, ptr %i.b, align 8, !tbaa !30
  %.pre479 = load i32, ptr %i.c, align 4, !tbaa !29
  br label %Vec_IntPush.exit350.5

Vec_IntPush.exit350.5:                            ; preds = %Vec_IntGrow.exit11.sink.split.i346.5, %bb.dl, %Vec_IntPush.exit350.4
  %i.aak = phi i32 [ %.pre479, %Vec_IntGrow.exit11.sink.split.i346.5 ], [ %i.aab, %bb.dl ], [ %i.aab, %Vec_IntPush.exit350.4 ] ; 2 uses
  %i.aal = phi ptr [ %i.aaj, %Vec_IntGrow.exit11.sink.split.i346.5 ], [ %i.zx, %bb.dl ], [ %i.zx, %Vec_IntPush.exit350.4 ] ; 4 uses
  %i.aam = add nsw i32 %i.aak, 1
  store i32 %i.aam, ptr %i.c, align 4, !tbaa !29
  %i.aan = sext i32 %i.aak to i64
  %i.aao = getelementptr inbounds [4 x i8], ptr %i.aal, i64 %i.aan
  store i32 0, ptr %i.aao, align 4, !tbaa !8
  %.val304 = load i32, ptr %i.jt, align 4, !tbaa !29
  %i.aap = trunc nuw nsw i64 %indvars.iv455 to i32 ; 2 uses
  %i.aaq = sub nsw i32 %i.aap, %.val304
  %.val252 = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.aar = sext i32 %i.aaq to i64
  %i.aas = getelementptr inbounds [4 x i8], ptr %.val252, i64 %i.aar
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !8
  %i.aau = load i32, ptr %i.c, align 4, !tbaa !29 ; 7 uses
  %i.aav = load i32, ptr %i.b, align 8, !tbaa !30
  %i.aaw = icmp eq i32 %i.aau, %i.aav
  br i1 %i.aaw, label %bb.dn, label %Vec_IntPush.exit358

bb.dn:                                            ; preds = %Vec_IntPush.exit350.5
  %i.aax = icmp slt i32 %i.aau, 16
  br i1 %i.aax, label %Vec_IntGrow.exit11.sink.split.i354, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aay = icmp samesign ult i32 %i.aau, 1073741823
  %i.aaz = shl nuw nsw i32 %i.aau, 1
  %spec.select.i351 = select i1 %i.aay, i32 %i.aaz, i32 2147483647 ; 3 uses
  %.not.i9.i352 = icmp samesign ult i32 %i.aau, %spec.select.i351
  br i1 %.not.i9.i352, label %bb.dp, label %Vec_IntPush.exit358

bb.dp:                                            ; preds = %bb.do
  %i.aba = zext nneg i32 %spec.select.i351 to i64
  %i.abb = shl nuw nsw i64 %i.aba, 2
  br label %Vec_IntGrow.exit11.sink.split.i354

Vec_IntGrow.exit11.sink.split.i354:               ; preds = %bb.dn, %bb.dp
  %.sink571 = phi i64 [ %i.abb, %bb.dp ], [ 64, %bb.dn ]
  %spec.select.sink.i355 = phi i32 [ %spec.select.i351, %bb.dp ], [ 16, %bb.dn ]
  %i.abc = call ptr @realloc(ptr noundef nonnull %i.aal, i64 noundef %.sink571) #17 ; 2 uses
  store ptr %i.abc, ptr %i.e, align 8, !tbaa !31
  store i32 %spec.select.sink.i355, ptr %i.b, align 8, !tbaa !30
  %.pre480 = load i32, ptr %i.c, align 4, !tbaa !29
  br label %Vec_IntPush.exit358

Vec_IntPush.exit358:                              ; preds = %Vec_IntPush.exit350.5, %bb.do, %Vec_IntGrow.exit11.sink.split.i354
  %i.abd = phi i32 [ %i.aau, %Vec_IntPush.exit350.5 ], [ %i.aau, %bb.do ], [ %.pre480, %Vec_IntGrow.exit11.sink.split.i354 ] ; 2 uses
  %i.abe = phi ptr [ %i.aal, %Vec_IntPush.exit350.5 ], [ %i.aal, %bb.do ], [ %i.abc, %Vec_IntGrow.exit11.sink.split.i354 ]
  %i.abf = add nsw i32 %i.abd, 1
  store i32 %i.abf, ptr %i.c, align 4, !tbaa !29
  %i.abg = sext i32 %i.abd to i64
  %i.abh = getelementptr inbounds [4 x i8], ptr %i.abe, i64 %i.abg
  store i32 %i.aat, ptr %i.abh, align 4, !tbaa !8
  %.val303 = load i32, ptr %i.jt, align 4, !tbaa !29
  %i.abi = sub nsw i32 %i.aap, %.val303
  %.val251 = load ptr, ptr %i.vj, align 8, !tbaa !31
  %i.abj = sext i32 %i.abi to i64
  %i.abk = getelementptr inbounds [4 x i8], ptr %.val251, i64 %i.abj
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !8
  %i.abm = call i32 @Wln_ObjAddFanins(ptr noundef %i.v, i32 noundef %i.abl, ptr noundef nonnull %i.b) #15 ; 0 uses
  %.val247.pre = load i32, ptr %i.s, align 4, !tbaa !29
  br label %.critedge10

.critedge10:                                      ; preds = %bb.co, %Vec_IntPush.exit358
  %.val247 = phi i32 [ %.val247481, %bb.co ], [ %.val247.pre, %Vec_IntPush.exit358 ] ; 2 uses
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 1 ; 2 uses
  %i.abn = sext i32 %.val247 to i64
  %i.abo = icmp slt i64 %indvars.iv.next456, %i.abn
  br i1 %i.abo, label %bb.co, label %.critedge12, !llvm.loop !70

.critedge12:                                      ; preds = %.critedge10, %.critedge10.preheader
  %i.abp = load ptr, ptr %i.e, align 8, !tbaa !31 ; 2 uses
  %.not.i359 = icmp eq ptr %i.abp, null
  br i1 %.not.i359, label %Vec_IntFree.exit, label %bb.dq

bb.dq:                                            ; preds = %.critedge12
  call void @free(ptr noundef nonnull %i.abp) #15
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge12, %bb.dq
  call void @free(ptr noundef nonnull %i.b) #15
  %i.abq = load ptr, ptr %i.p, align 8, !tbaa !31 ; 2 uses
  %.not.i360 = icmp eq ptr %i.abq, null
  br i1 %.not.i360, label %Vec_IntFree.exit361, label %bb.dr

bb.dr:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.abq) #15
  br label %Vec_IntFree.exit361

Vec_IntFree.exit361:                              ; preds = %Vec_IntFree.exit, %bb.dr
  call void @free(ptr noundef nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %i.v
}

declare ptr @Wln_NtkAlloc(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @Abc_NamStart(i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @Abc_NamObjNumMax(ptr noundef) local_unnamed_addr #6

declare i32 @Wln_ObjAlloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare void @Wln_ObjSetConst(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare i32 @Ndr_TypeWlc2Ndr(i32 noundef) local_unnamed_addr #6

declare i32 @Wln_ObjAddFanins(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @Wln_ObjSetSlice(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @Wln_ObjAddFanin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @Wln_NtkFromWlcTest(ptr noundef initializes((756, 760)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @Wln_NtkFromWlc(ptr noundef %0) ; 2 uses
  tail call void @Wln_WriteVer(ptr noundef %i.a, ptr noundef nonnull @.str.8) #15
  tail call void @Wln_NtkFree(ptr noundef %i.a) #15
  ret void
}

declare void @Wln_WriteVer(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @Wln_NtkFree(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(1) }

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
!8 = !{!5, !5, i64 0}
!9 = !{!6, !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !20, i64 152}
!13 = !{!"Wln_Ntk_t_", !14, i64 0, !14, i64 8, !5, i64 16, !16, i64 24, !16, i64 40, !16, i64 56, !16, i64 72, !18, i64 88, !16, i64 96, !19, i64 112, !16, i64 120, !16, i64 136, !20, i64 152, !21, i64 160, !5, i64 176, !16, i64 184, !16, i64 200, !16, i64 216, !16, i64 232, !16, i64 248, !16, i64 264, !16, i64 280, !16, i64 296, !22, i64 312, !6, i64 320, !6, i64 716}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !17, i64 8}
!17 = !{!"p1 int", !15, i64 0}
!18 = !{!"p1 _ZTS10Wln_Vec_t_", !15, i64 0}
!19 = !{!"p1 _ZTS14Hash_IntMan_t_", !15, i64 0}
!20 = !{!"p1 _ZTS10Abc_Nam_t_", !15, i64 0}
!21 = !{!"Vec_Str_t_", !5, i64 0, !5, i64 4, !14, i64 8}
!22 = !{!"p1 _ZTS10Vec_Ptr_t_", !15, i64 0}
!23 = !{!24, !26, i64 640}
!24 = !{!"Wlc_Ntk_t_", !14, i64 0, !14, i64 8, !16, i64 16, !16, i64 32, !16, i64 48, !16, i64 64, !16, i64 80, !16, i64 96, !25, i64 112, !25, i64 120, !14, i64 128, !6, i64 136, !6, i64 376, !5, i64 616, !5, i64 620, !5, i64 624, !5, i64 628, !5, i64 632, !26, i64 640, !5, i64 648, !5, i64 652, !27, i64 656, !27, i64 664, !22, i64 672, !28, i64 680, !20, i64 688, !16, i64 696, !16, i64 712, !5, i64 728, !16, i64 736, !16, i64 752, !16, i64 768, !16, i64 784, !16, i64 800, !16, i64 816}
!25 = !{!"p1 _ZTS10Vec_Int_t_", !15, i64 0}
!26 = !{!"p1 _ZTS10Wlc_Obj_t_", !15, i64 0}
!27 = !{!"p1 _ZTS11Mem_Flex_t_", !15, i64 0}
!28 = !{!"p1 _ZTS10Vec_Wrd_t_", !15, i64 0}
!29 = !{!16, !5, i64 4}
!30 = !{!16, !5, i64 0}
!31 = !{!16, !17, i64 8}
!32 = !{!24, !14, i64 0}
!33 = !{!24, !5, i64 648}
!34 = !{!24, !20, i64 688}
!35 = !{!24, !14, i64 8}
!36 = !{!13, !14, i64 8}
!37 = !{!24, !5, i64 616}
!38 = !{!13, !5, i64 16}
!39 = !{!24, !5, i64 652}
!40 = !{!41, !5, i64 8}
!41 = !{!"Wlc_Obj_t_", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 4, !5, i64 8, !5, i64 12, !6, i64 16}
!42 = !{!41, !5, i64 12}
!43 = distinct !{!43, !11}
!44 = !{!24, !14, i64 128}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11, !47, !48}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = distinct !{!49, !11, !47, !48}
!50 = distinct !{!50, !11, !48, !47}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11, !48, !47}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = !{!41, !5, i64 4}
!56 = distinct !{!56, !11}
!57 = !{!13, !19, i64 112}
!58 = !{!59, !25, i64 8}
!59 = !{!"Hash_IntMan_t_", !25, i64 0, !25, i64 8, !5, i64 16}
!60 = !{!59, !25, i64 0}
!61 = distinct !{!61, !11}
!62 = !{!63, !5, i64 12}
!63 = !{!"Hash_IntObj_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!64 = !{!63, !5, i64 0}
!65 = !{!63, !5, i64 4}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
end_hunk_1
