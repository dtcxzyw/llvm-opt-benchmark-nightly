Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioReadAiger?download=true
inline.NumInlined: 99
inline.NumDeleted: 34
begin_hunk_0_@Io_ReadAiger:bb.a
  br i1 %.not7.i, label %Io_ReadAigerDecode.exit, label %.lr.ph.i440

.lr.ph.i440:                                      ; preds = %Extra_ProgressBarUpdate.exit, %.lr.ph.i440
  %i.iy = phi i32 [ %i.jh, %.lr.ph.i440 ], [ %i.ix, %Extra_ProgressBarUpdate.exit ]
  %i.iz = phi ptr [ %i.jf, %.lr.ph.i440 ], [ %i.iv, %Extra_ProgressBarUpdate.exit ] ; 2 uses
  %.09.i441 = phi i32 [ %i.jb, %.lr.ph.i440 ], [ 0, %Extra_ProgressBarUpdate.exit ] ; 2 uses
  %.068.i = phi i32 [ %i.je, %.lr.ph.i440 ], [ 0, %Extra_ProgressBarUpdate.exit ]
  %i.ja = and i32 %i.iy, 127
  %i.jb = add i32 %.09.i441, 1                    ; 2 uses
  %i.jc = mul i32 %.09.i441, 7
  %i.jd = shl i32 %i.ja, %i.jc
  %i.je = or i32 %i.jd, %.068.i                   ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 1 ; 2 uses
  %i.jg = load i8, ptr %i.iz, align 1, !tbaa !15  ; 2 uses
  %i.jh = zext i8 %i.jg to i32                    ; 2 uses
  %.not.i442 = icmp sgt i8 %i.jg, -1
  br i1 %.not.i442, label %._crit_edge.loopexit.i443, label %.lr.ph.i440, !llvm.loop !0

._crit_edge.loopexit.i443:                        ; preds = %.lr.ph.i440
  %i.ji = mul i32 %i.jb, 7
  br label %Io_ReadAigerDecode.exit

Io_ReadAigerDecode.exit:                          ; preds = %Extra_ProgressBarUpdate.exit, %._crit_edge.loopexit.i443
  %.lcssa545547 = phi ptr [ %i.iv, %Extra_ProgressBarUpdate.exit ], [ %i.jf, %._crit_edge.loopexit.i443 ] ; 2 uses
  %.06.lcssa.i = phi i32 [ 0, %Extra_ProgressBarUpdate.exit ], [ %i.je, %._crit_edge.loopexit.i443 ]
  %.0.lcssa.i444 = phi i32 [ 0, %Extra_ProgressBarUpdate.exit ], [ %i.ji, %._crit_edge.loopexit.i443 ]
  %.lcssa.i445 = phi i32 [ %i.ix, %Extra_ProgressBarUpdate.exit ], [ %i.jh, %._crit_edge.loopexit.i443 ]
  %i.jj = shl i32 %.lcssa.i445, %.0.lcssa.i444
  %i.jk = or i32 %i.jj, %.06.lcssa.i
  %i.jl = sub i32 %i.iu, %i.jk                    ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.lcssa545547, i64 1 ; 2 uses
  %i.jn = load i8, ptr %.lcssa545547, align 1, !tbaa !15 ; 2 uses
  %i.jo = zext i8 %i.jn to i32                    ; 2 uses
  %.not7.i447 = icmp sgt i8 %i.jn, -1
  br i1 %.not7.i447, label %Io_ReadAigerDecode.exit456, label %.lr.ph.i448

.lr.ph.i448:                                      ; preds = %Io_ReadAigerDecode.exit, %.lr.ph.i448
  %i.jp = phi i32 [ %i.jy, %.lr.ph.i448 ], [ %i.jo, %Io_ReadAigerDecode.exit ]
  %i.jq = phi ptr [ %i.jw, %.lr.ph.i448 ], [ %i.jm, %Io_ReadAigerDecode.exit ] ; 2 uses
  %.09.i449 = phi i32 [ %i.js, %.lr.ph.i448 ], [ 0, %Io_ReadAigerDecode.exit ] ; 2 uses
  %.068.i450 = phi i32 [ %i.jv, %.lr.ph.i448 ], [ 0, %Io_ReadAigerDecode.exit ]
  %i.jr = and i32 %i.jp, 127
  %i.js = add i32 %.09.i449, 1                    ; 2 uses
  %i.jt = mul i32 %.09.i449, 7
  %i.ju = shl i32 %i.jr, %i.jt
  %i.jv = or i32 %i.ju, %.068.i450                ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 1 ; 2 uses
  %i.jx = load i8, ptr %i.jq, align 1, !tbaa !15  ; 2 uses
  %i.jy = zext i8 %i.jx to i32                    ; 2 uses
  %.not.i451 = icmp sgt i8 %i.jx, -1
  br i1 %.not.i451, label %._crit_edge.loopexit.i452, label %.lr.ph.i448, !llvm.loop !0

._crit_edge.loopexit.i452:                        ; preds = %.lr.ph.i448
  %i.jz = mul i32 %i.js, 7
  br label %Io_ReadAigerDecode.exit456

Io_ReadAigerDecode.exit456:                       ; preds = %Io_ReadAigerDecode.exit, %._crit_edge.loopexit.i452
  %.lcssa545549 = phi ptr [ %i.jm, %Io_ReadAigerDecode.exit ], [ %i.jw, %._crit_edge.loopexit.i452 ] ; 2 uses
  %.06.lcssa.i453 = phi i32 [ 0, %Io_ReadAigerDecode.exit ], [ %i.jv, %._crit_edge.loopexit.i452 ]
  %.0.lcssa.i454 = phi i32 [ 0, %Io_ReadAigerDecode.exit ], [ %i.jz, %._crit_edge.loopexit.i452 ]
  %.lcssa.i455 = phi i32 [ %i.jo, %Io_ReadAigerDecode.exit ], [ %i.jy, %._crit_edge.loopexit.i452 ]
  %i.ka = shl i32 %.lcssa.i455, %.0.lcssa.i454
  %i.kb = or i32 %i.ka, %.06.lcssa.i453
  %i.kc = sub i32 %i.jl, %i.kb                    ; 2 uses
  %i.kd = lshr i32 %i.kc, 1
  %.val372 = load ptr, ptr %i.ft, align 8, !tbaa !78 ; 3 uses
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.val372, i64 %i.ke
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !80
  %i.kh = and i32 %i.kc, 1
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = zext nneg i32 %i.kh to i64
  %i.kk = xor i64 %i.kj, %i.ki
  %i.kl = inttoptr i64 %i.kk to ptr
  %i.km = lshr i32 %i.jl, 1
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.val372, i64 %i.kn
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !80
  %i.kq = and i32 %i.jl, 1
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = zext nneg i32 %i.kq to i64
  %i.kt = xor i64 %i.kr, %i.ks
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = load ptr, ptr %i.in, align 8, !tbaa !81
  %i.kw = call ptr @Abc_AigAnd(ptr noundef %i.kv, ptr noundef %i.kl, ptr noundef %i.ku) #14
  %i.kx = icmp eq i32 %i.ip, %i.io
  br i1 %i.kx, label %bb.ca, label %Vec_PtrPush.exit464

bb.ca:                                            ; preds = %Io_ReadAigerDecode.exit456
  %i.ky = icmp slt i32 %i.io, 16
  br i1 %i.ky, label %Vec_PtrGrow.exit12.sink.split.i460, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kz = icmp samesign ult i32 %i.io, 1073741823
  %i.la = shl nuw nsw i32 %i.io, 1
  %spec.select.i457 = select i1 %i.kz, i32 %i.la, i32 2147483647 ; 3 uses
  %.not.i10.i458 = icmp samesign ult i32 %i.io, %spec.select.i457
  br i1 %.not.i10.i458, label %bb.cc, label %Vec_PtrPush.exit464

bb.cc:                                            ; preds = %bb.cb
  %i.lb = zext nneg i32 %spec.select.i457 to i64
  %i.lc = shl nuw nsw i64 %i.lb, 3
  br label %Vec_PtrGrow.exit12.sink.split.i460

Vec_PtrGrow.exit12.sink.split.i460:               ; preds = %bb.ca, %bb.cc
  %.sink = phi i64 [ %i.lc, %bb.cc ], [ 128, %bb.ca ]
  %spec.select.sink.i461 = phi i32 [ %spec.select.i457, %bb.cc ], [ 16, %bb.ca ] ; 2 uses
  %i.ld = call ptr @realloc(ptr noundef nonnull %.val372, i64 noundef %.sink) #13
  store ptr %i.ld, ptr %i.ft, align 8, !tbaa !78
  store i32 %spec.select.sink.i461, ptr %i.fg, align 8, !tbaa !77
  br label %Vec_PtrPush.exit464

Vec_PtrPush.exit464:                              ; preds = %Io_ReadAigerDecode.exit456, %bb.cb, %Vec_PtrGrow.exit12.sink.split.i460
  %i.le = phi i32 [ %i.io, %Io_ReadAigerDecode.exit456 ], [ %i.io, %bb.cb ], [ %spec.select.sink.i461, %Vec_PtrGrow.exit12.sink.split.i460 ]
  %i.lf = load ptr, ptr %i.ft, align 8, !tbaa !78
  %i.lg = add nsw i32 %i.ip, 1                    ; 2 uses
  store i32 %i.lg, ptr %i.fi, align 4, !tbaa !79
  %i.lh = sext i32 %i.ip to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.lh
  store ptr %i.kw, ptr %i.li, align 8, !tbaa !80
  %exitcond681.not = icmp eq i32 %i.is, %i.cv
  br i1 %exitcond681.not, label %._crit_edge554, label %bb.bx, !llvm.loop !38

._crit_edge554:                                   ; preds = %Vec_PtrPush.exit464, %bb.bw
  %.promoted593608 = phi ptr [ %.promoted546, %bb.bw ], [ %.lcssa545549, %Vec_PtrPush.exit464 ] ; 8 uses
  call void @Extra_ProgressBarStop(ptr noundef %i.il) #14
  store ptr %.promoted569, ptr %i.b, align 8, !tbaa !14
  %i.lj = load i8, ptr %i.bv, align 1, !tbaa !15
  %i.lk = icmp eq i8 %i.lj, 32
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ew, i64 80 ; 4 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !82 ; 3 uses
  %i.ln = getelementptr i8, ptr %i.lm, i64 4
  %.val376573 = load i32, ptr %i.ln, align 4, !tbaa !79
  %i.lo = icmp sgt i32 %.val376573, 0             ; 2 uses
  br i1 %i.lk, label %.preheader485, label %.preheader487

.preheader487:                                    ; preds = %._crit_edge554
  br i1 %i.lo, label %.lr.ph558, label %.preheader486

.lr.ph558:                                        ; preds = %.preheader487
  %i.lp = getelementptr i8, ptr %.0294, i64 8
  br label %bb.cn

.preheader485:                                    ; preds = %._crit_edge554
  br i1 %i.lo, label %.lr.ph576, label %.preheader483

.preheader483:                                    ; preds = %bb.ck, %.preheader485
  %.lcssa568571.lcssa = phi ptr [ %.promoted569, %.preheader485 ], [ %.lcssa568570, %bb.ck ] ; 2 uses
  store ptr %.lcssa568571.lcssa, ptr %i.b, align 8
  %i.lq = getelementptr i8, ptr %i.ew, i64 48     ; 2 uses
  %.val406582 = load ptr, ptr %i.lq, align 8, !tbaa !83 ; 2 uses
  %i.lr = getelementptr i8, ptr %.val406582, i64 4
  %.val406.val583 = load i32, ptr %i.lr, align 4, !tbaa !79
  %i.ls = icmp sgt i32 %.val406.val583, 0
  br i1 %i.ls, label %.lr.ph587, label %.critedge15

.lr.ph576:                                        ; preds = %.preheader485, %bb.ck
  %i.lt = phi ptr [ %i.nf, %bb.ck ], [ %i.lm, %.preheader485 ] ; 2 uses
  %indvars.iv686 = phi i64 [ %indvars.iv.next687, %bb.ck ], [ 0, %.preheader485 ] ; 4 uses
  %.lcssa568571574 = phi ptr [ %.lcssa568570, %bb.ck ], [ %.promoted569, %.preheader485 ] ; 3 uses
  %i.lu = getelementptr i8, ptr %i.lt, i64 8
  %.val385.val = load ptr, ptr %i.lu, align 8, !tbaa !78
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.val385.val, i64 %indvars.iv686
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !80 ; 3 uses
  %i.lx = getelementptr i8, ptr %i.lw, i64 20
  %.val388 = load i32, ptr %i.lx, align 4
  %i.ly = and i32 %.val388, 15
  %.not473 = icmp eq i32 %i.ly, 8
  br i1 %.not473, label %bb.cd, label %bb.ck

bb.cd:                                            ; preds = %.lr.ph576
  %.val402 = load ptr, ptr %i.lw, align 8, !tbaa !86
  %i.lz = getelementptr i8, ptr %i.lw, i64 32
  %.val403 = load ptr, ptr %i.lz, align 8, !tbaa !87
  %i.ma = getelementptr i8, ptr %.val402, i64 32
  %.val402.val = load ptr, ptr %i.ma, align 8, !tbaa !88
  %.val403.val = load i32, ptr %.val403, align 4, !tbaa !17
  %i.mb = getelementptr i8, ptr %.val402.val, i64 8
  %.val402.val.val = load ptr, ptr %i.mb, align 8, !tbaa !78
  %i.mc = sext i32 %.val403.val to i64
  %i.md = getelementptr inbounds [8 x i8], ptr %.val402.val.val, i64 %i.mc
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !80
  %i.mf = call i64 @strtol(ptr noundef nonnull captures(none) %.lcssa568571574, ptr noundef null, i32 noundef 10) #14, !inline_history !24 ; 2 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cf, %bb.cd
  %i.mg = phi ptr [ %i.mi, %bb.cf ], [ %.lcssa568571574, %bb.cd ] ; 4 uses
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !15
  switch i8 %i.mh, label %bb.cf [
    i8 32, label %bb.cg
    i8 10, label %.critedge13.thread
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 1
  br label %bb.ce, !llvm.loop !39

bb.cg:                                            ; preds = %bb.ce
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 1 ; 2 uses
  %i.mk = call i64 @strtol(ptr noundef nonnull captures(none) %i.mj, ptr noundef null, i32 noundef 10) #14, !inline_history !24
  %i.ml = trunc i64 %i.mk to i32
  %.val381 = load ptr, ptr %i.ll, align 8, !tbaa !82
  %i.mm = getelementptr i8, ptr %.val381, i64 8
  %.val381.val = load ptr, ptr %i.mm, align 8, !tbaa !78
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %.val381.val, i64 %indvars.iv686
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !80
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 64
  switch i32 %i.ml, label %3 [
    i32 0, label %4
    i32 1, label %2
  ]

2:                                                ; preds = %bb.cg
  br label %4

3:                                                ; preds = %bb.cg
  br label %4

4:                                                ; preds = %bb.cg, %2, %3
  %.sink811 = phi ptr [ inttoptr (i64 2 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %3 ], [ inttoptr (i64 1 to ptr), %bb.cg ]
  store ptr %.sink811, ptr %i.mp, align 8, !tbaa !15
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %4
  %i.mq = phi ptr [ %i.ms, %bb.ci ], [ %i.mj, %4 ] ; 3 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !15
  switch i8 %i.mr, label %bb.ci [
    i8 10, label %.critedge13.thread
    i8 32, label %bb.cj
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 1
  br label %bb.ch, !llvm.loop !40

bb.cj:                                            ; preds = %bb.ch
  %i.mt = trunc nuw nsw i64 %indvars.iv686 to i32
  %i.mu = load ptr, ptr @stdout, align 8, !tbaa !58
  %i.mv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mu, ptr noundef nonnull @.str.10, i32 noundef %i.mt) #14 ; 0 uses
  br label %.critedge367

.critedge13.thread:                               ; preds = %bb.ce, %bb.ch
  %.lcssa568572762 = phi ptr [ %i.mq, %bb.ch ], [ %i.mg, %bb.ce ]
  %i.mw = getelementptr inbounds nuw i8, ptr %.lcssa568572762, i64 1
  %i.mx = lshr i64 %i.mf, 1
  %.val370 = load ptr, ptr %i.ft, align 8, !tbaa !78
  %i.my = and i64 %i.mx, 2147483647
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %.val370, i64 %i.my
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !80
  %i.nb = and i64 %i.mf, 1
  %i.nc = ptrtoint ptr %i.na to i64
  %i.nd = xor i64 %i.nb, %i.nc
  %i.ne = inttoptr i64 %i.nd to ptr
  call void @Abc_ObjAddFanin(ptr noundef %i.me, ptr noundef %i.ne) #14
  %.pre709 = load ptr, ptr %i.ll, align 8, !tbaa !82
  br label %bb.ck

bb.ck:                                            ; preds = %.critedge13.thread, %.lr.ph576
  %i.nf = phi ptr [ %.pre709, %.critedge13.thread ], [ %i.lt, %.lr.ph576 ] ; 2 uses
  %.lcssa568570 = phi ptr [ %i.mw, %.critedge13.thread ], [ %.lcssa568571574, %.lr.ph576 ] ; 2 uses
  %indvars.iv.next687 = add nuw nsw i64 %indvars.iv686, 1 ; 2 uses
  %i.ng = getelementptr i8, ptr %i.nf, i64 4
  %.val376 = load i32, ptr %i.ng, align 4, !tbaa !79
  %i.nh = sext i32 %.val376 to i64
  %i.ni = icmp slt i64 %indvars.iv.next687, %i.nh
  br i1 %i.ni, label %.lr.ph576, label %.preheader483, !llvm.loop !41

.lr.ph587:                                        ; preds = %.preheader483, %bb.cm
  %indvars.iv689 = phi i64 [ %indvars.iv.next690, %bb.cm ], [ 0, %.preheader483 ] ; 2 uses
  %.val406586 = phi ptr [ %.val406, %bb.cm ], [ %.val406582, %.preheader483 ]
  %.lcssa579581584 = phi ptr [ %i.no, %bb.cm ], [ %.lcssa568571.lcssa, %.preheader483 ] ; 2 uses
  %i.nj = getelementptr i8, ptr %.val406586, i64 8
  %.val409.val = load ptr, ptr %i.nj, align 8, !tbaa !78
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %.val409.val, i64 %indvars.iv689
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !80
  %i.nm = call i64 @strtol(ptr noundef nonnull captures(none) %.lcssa579581584, ptr noundef null, i32 noundef 10) #14, !inline_history !24 ; 2 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.lr.ph587
  %i.nn = phi ptr [ %i.no, %bb.cl ], [ %.lcssa579581584, %.lr.ph587 ] ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 1 ; 2 uses
  %i.np = load i8, ptr %i.nn, align 1, !tbaa !15
  %.not355 = icmp eq i8 %i.np, 10
  br i1 %.not355, label %bb.cm, label %bb.cl, !llvm.loop !42

bb.cm:                                            ; preds = %bb.cl
  %i.nq = lshr i64 %i.nm, 1
  %.val369 = load ptr, ptr %i.ft, align 8, !tbaa !78
  %i.nr = and i64 %i.nq, 2147483647
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %.val369, i64 %i.nr
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !80
  %i.nu = and i64 %i.nm, 1
  %i.nv = ptrtoint ptr %i.nt to i64
  %i.nw = xor i64 %i.nu, %i.nv
  %i.nx = inttoptr i64 %i.nw to ptr
  call void @Abc_ObjAddFanin(ptr noundef %i.nl, ptr noundef %i.nx) #14
  %indvars.iv.next690 = add nuw nsw i64 %indvars.iv689, 1 ; 2 uses
  %.val406 = load ptr, ptr %i.lq, align 8, !tbaa !83 ; 2 uses
  %i.ny = getelementptr i8, ptr %.val406, i64 4
  %.val406.val = load i32, ptr %i.ny, align 4, !tbaa !79
  %i.nz = sext i32 %.val406.val to i64
  %i.oa = icmp slt i64 %indvars.iv.next690, %i.nz
  br i1 %i.oa, label %.lr.ph587, label %.critedge15, !llvm.loop !43

.preheader486:                                    ; preds = %bb.cp, %.preheader487
  %i.ob = getelementptr i8, ptr %i.ew, i64 48     ; 2 uses
  %.val405559 = load ptr, ptr %i.ob, align 8, !tbaa !83 ; 2 uses
  %i.oc = getelementptr i8, ptr %.val405559, i64 4
  %.val405.val560 = load i32, ptr %i.oc, align 4, !tbaa !79
  %i.od = icmp sgt i32 %.val405.val560, 0
  br i1 %i.od, label %.lr.ph563, label %.critedge17

.lr.ph563:                                        ; preds = %.preheader486
  %i.oe = getelementptr i8, ptr %i.ew, i64 128
  %i.of = getelementptr i8, ptr %.0294, i64 8
  br label %bb.cq

bb.cn:                                            ; preds = %.lr.ph558, %bb.cp
  %i.og = phi ptr [ %i.lm, %.lr.ph558 ], [ %i.pd, %bb.cp ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph558 ], [ %indvars.iv.next, %bb.cp ] ; 3 uses
  %i.oh = getelementptr i8, ptr %i.og, i64 8
  %.val380.val = load ptr, ptr %i.oh, align 8, !tbaa !78
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %.val380.val, i64 %indvars.iv
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !80 ; 3 uses
  %i.ok = getelementptr i8, ptr %i.oj, i64 20
  %.val387 = load i32, ptr %i.ok, align 4
  %i.ol = and i32 %.val387, 15
  %.not471 = icmp eq i32 %i.ol, 8
  br i1 %.not471, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %.val400 = load ptr, ptr %i.oj, align 8, !tbaa !86
  %i.om = getelementptr i8, ptr %i.oj, i64 32
  %.val401 = load ptr, ptr %i.om, align 8, !tbaa !87
  %i.on = getelementptr i8, ptr %.val400, i64 32
  %.val400.val = load ptr, ptr %i.on, align 8, !tbaa !88
  %.val401.val = load i32, ptr %.val401, align 4, !tbaa !17
  %i.oo = getelementptr i8, ptr %.val400.val, i64 8
  %.val400.val.val = load ptr, ptr %i.oo, align 8, !tbaa !78
  %i.op = sext i32 %.val401.val to i64
  %i.oq = getelementptr inbounds [8 x i8], ptr %.val400.val.val, i64 %i.op
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !80
  %.0294.val410 = load ptr, ptr %i.lp, align 8, !tbaa !12
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %.0294.val410, i64 %indvars.iv
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !17 ; 2 uses
  %i.ou = lshr i32 %i.ot, 1
  %.val368 = load ptr, ptr %i.ft, align 8, !tbaa !78
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %.val368, i64 %i.ov
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !80
  %i.oy = and i32 %i.ot, 1
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = zext nneg i32 %i.oy to i64
  %i.pb = xor i64 %i.oz, %i.pa
  %i.pc = inttoptr i64 %i.pb to ptr
  call void @Abc_ObjAddFanin(ptr noundef %i.or, ptr noundef %i.pc) #14
  %.pre708 = load ptr, ptr %i.ll, align 8, !tbaa !82
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.pd = phi ptr [ %.pre708, %bb.co ], [ %i.og, %bb.cn ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pe = getelementptr i8, ptr %i.pd, i64 4
  %.val375 = load i32, ptr %i.pe, align 4, !tbaa !79
  %i.pf = sext i32 %.val375 to i64
  %i.pg = icmp slt i64 %indvars.iv.next, %i.pf
  br i1 %i.pg, label %bb.cn, label %.preheader486, !llvm.loop !44

bb.cq:                                            ; preds = %.lr.ph563, %bb.cq
  %indvars.iv683 = phi i64 [ 0, %.lr.ph563 ], [ %indvars.iv.next684, %bb.cq ] ; 3 uses
  %.val405562 = phi ptr [ %.val405559, %.lr.ph563 ], [ %.val405, %bb.cq ]
  %i.ph = getelementptr i8, ptr %.val405562, i64 8
  %.val408.val = load ptr, ptr %i.ph, align 8, !tbaa !78
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %.val408.val, i64 %indvars.iv683
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !80
  %.val411 = load i32, ptr %i.oe, align 8, !tbaa !17
  %i.pk = trunc nuw nsw i64 %indvars.iv683 to i32
  %i.pl = add nsw i32 %.val411, %i.pk
  %.0294.val = load ptr, ptr %i.of, align 8, !tbaa !12
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [4 x i8], ptr %.0294.val, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !17 ; 2 uses
  %i.pp = lshr i32 %i.po, 1
  %.val = load ptr, ptr %i.ft, align 8, !tbaa !78
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.pq
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !80
  %i.pt = and i32 %i.po, 1
  %i.pu = ptrtoint ptr %i.ps to i64
  %i.pv = zext nneg i32 %i.pt to i64
  %i.pw = xor i64 %i.pu, %i.pv
  %i.px = inttoptr i64 %i.pw to ptr
  call void @Abc_ObjAddFanin(ptr noundef %i.pj, ptr noundef %i.px) #14
  %indvars.iv.next684 = add nuw nsw i64 %indvars.iv683, 1 ; 2 uses
  %.val405 = load ptr, ptr %i.ob, align 8, !tbaa !83 ; 2 uses
  %i.py = getelementptr i8, ptr %.val405, i64 4
  %.val405.val = load i32, ptr %i.py, align 4, !tbaa !79
  %i.pz = sext i32 %.val405.val to i64
  %i.qa = icmp slt i64 %indvars.iv.next684, %i.pz
  br i1 %i.qa, label %bb.cq, label %.critedge17, !llvm.loop !45

.critedge17:                                      ; preds = %bb.cq, %.preheader486
  call fastcc void @Vec_IntFree(ptr noundef %.0294)
  br label %.critedge15

.critedge15:                                      ; preds = %bb.cm, %.preheader483, %.critedge17
  store ptr %.promoted593608, ptr %i.b, align 8, !tbaa !14
  %i.qb = sext i32 %.0469 to i64
  %i.qc = getelementptr inbounds i8, ptr %.0278, i64 %i.qb ; 4 uses
  %i.qd = icmp ult ptr %.promoted593608, %i.qc
  br i1 %i.qd, label %bb.cr, label %bb.dp

bb.cr:                                            ; preds = %.critedge15
  %i.qe = load i8, ptr %.promoted593608, align 1, !tbaa !15
  %.not339 = icmp eq i8 %i.qe, 99
  br i1 %.not339, label %bb.dp, label %.lr.ph598.lr.ph

.lr.ph598.lr.ph:                                  ; preds = %bb.cr
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  br label %.lr.ph598

.lr.ph598:                                        ; preds = %.lr.ph598.lr.ph, %.outer
  %.promoted593610 = phi ptr [ %.promoted593608, %.lr.ph598.lr.ph ], [ %i.qk, %.outer ]
end_hunk_0
