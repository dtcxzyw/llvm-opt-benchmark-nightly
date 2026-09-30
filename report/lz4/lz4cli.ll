Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4cli?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
begin_hunk_0_@main:bb.a
  %i.hx = add i32 %i.hv, %i.hw                    ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 1 ; 4 uses
  store ptr %i.hy, ptr %i.d, align 8, !tbaa !17
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !10  ; 3 uses
  %i.ia = add i8 %i.hz, -48
  %or.cond.i508 = icmp ult i8 %i.ia, 10
  br i1 %or.cond.i508, label %.lr.ph.i505, label %.critedge.i497, !llvm.loop !0

.critedge.i497:                                   ; preds = %.lr.ph.i505, %bb.cr
  %.lcssa11841187.lcssa1198 = phi ptr [ %i.hq, %bb.cr ], [ %i.hy, %.lr.ph.i505 ] ; 4 uses
  %.0.lcssa.i498 = phi i32 [ 0, %bb.cr ], [ %i.hx, %.lr.ph.i505 ] ; 2 uses
  %.lcssa.i500 = phi i8 [ %i.hr, %bb.cr ], [ %i.hz, %.lr.ph.i505 ] ; 2 uses
  switch i8 %.lcssa.i500, label %readU32FromChar.exit509 [
    i8 75, label %bb.cs
    i8 77, label %bb.cs
  ]

bb.cs:                                            ; preds = %.critedge.i497, %.critedge.i497
  %i.ib = icmp eq i8 %.lcssa.i500, 77
  %spec.select.v.i501 = select i1 %i.ib, i32 20, i32 10
  %spec.select.i502 = shl i32 %.0.lcssa.i498, %spec.select.v.i501 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.lcssa11841187.lcssa1198, i64 1 ; 3 uses
  store ptr %i.ic, ptr %i.d, align 8, !tbaa !17
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !10  ; 2 uses
  %i.ie = icmp eq i8 %i.id, 105
  br i1 %i.ie, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.if = getelementptr inbounds nuw i8, ptr %.lcssa11841187.lcssa1198, i64 2 ; 3 uses
  store ptr %i.if, ptr %i.d, align 8, !tbaa !17
  %.pre.i504 = load i8, ptr %i.if, align 1, !tbaa !10
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.lcssa11841187.lcssa1197 = phi ptr [ %i.if, %bb.ct ], [ %i.ic, %bb.cs ]
  %i.ig = phi i8 [ %.pre.i504, %bb.ct ], [ %i.id, %bb.cs ]
  %i.ih = phi i64 [ 2, %bb.ct ], [ 1, %bb.cs ]
  %i.ii = icmp eq i8 %i.ig, 66
  br i1 %i.ii, label %bb.cv, label %readU32FromChar.exit509

bb.cv:                                            ; preds = %bb.cu
  %i.ij = getelementptr inbounds nuw i8, ptr %.lcssa11841187.lcssa1198, i64 %i.ih
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  br label %readU32FromChar.exit509

readU32FromChar.exit509:                          ; preds = %.critedge.i497, %bb.cu, %bb.cv
  %.lcssa11841187.lcssa1199 = phi ptr [ %i.ik, %bb.cv ], [ %.lcssa11841187.lcssa1197, %bb.cu ], [ %.lcssa11841187.lcssa1198, %.critedge.i497 ]
  %.2.i503 = phi i32 [ %spec.select.i502, %bb.cv ], [ %spec.select.i502, %bb.cu ], [ %.0.lcssa.i498, %.critedge.i497 ]
  %i.il = getelementptr inbounds i8, ptr %.lcssa11841187.lcssa1199, i64 -1 ; 2 uses
  store ptr %i.il, ptr %i.d, align 8, !tbaa !17
  br label %.thread563

bb.cw:                                            ; preds = %.tail734.thread.thread
  %i.im = getelementptr inbounds nuw i8, ptr %i.eq, i64 2 ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !10
  %i.io = icmp eq i8 %i.in, 0
  br i1 %i.io, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.ip = add nsw i32 %.3.ph1221, 1               ; 3 uses
  %i.iq = icmp eq i32 %i.ip, %0
  br i1 %i.iq, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  tail call fastcc void @badusage(ptr noundef nonnull %.1.i472)
  unreachable

bb.cz:                                            ; preds = %bb.cx
  %i.ir = sext i32 %i.ip to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ir
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !17
  br label %bb.da

bb.da:                                            ; preds = %bb.cw, %bb.cz
  %.2281 = phi ptr [ %i.it, %bb.cz ], [ %i.im, %bb.cw ]
  %.4 = phi i32 [ %i.ip, %bb.cz ], [ %.3.ph1221, %bb.cw ]
  %i.iu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ep) #25
  %i.iv = getelementptr i8, ptr %i.ep, i64 %i.iu
  %i.iw = getelementptr i8, ptr %i.iv, i64 -1     ; 2 uses
  store ptr %i.iw, ptr %i.d, align 8, !tbaa !17
  br label %.thread563

bb.db:                                            ; preds = %.tail734.thread.thread
  br label %.thread563

bb.dc:                                            ; preds = %.tail734.thread.thread
  %.not438 = icmp eq i32 %.3298.ph1214, 4
  %spec.store.select2 = select i1 %.not438, i32 4, i32 2
  tail call void @BMK_setDecodeOnlyMode(i32 noundef 1) #22
  br label %.thread563

bb.dd:                                            ; preds = %.tail734.thread.thread.thread1549, %.tail734.thread.thread
  %i.ix = tail call i32 @LZ4IO_setPassThrough(ptr noundef %i.an, i32 noundef 1) #22 ; 0 uses
  br label %.thread563

bb.de:                                            ; preds = %.tail734.thread.thread
  br label %.thread563

bb.df:                                            ; preds = %.tail734.thread.thread
  %i.iy = tail call i32 @LZ4IO_setOverwrite(ptr noundef %i.an, i32 noundef 1) #22 ; 0 uses
  br label %.thread563

bb.dg:                                            ; preds = %.tail734.thread.thread
  %i.iz = load i32, ptr @displayLevel, align 4, !tbaa !12
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr @displayLevel, align 4, !tbaa !12
  br label %.thread563

bb.dh:                                            ; preds = %.tail734.thread.thread
  %i.jb = load i32, ptr @displayLevel, align 4, !tbaa !12 ; 2 uses
  %.not437 = icmp eq i32 %i.jb, 0
  br i1 %.not437, label %.thread563, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.jc = add i32 %i.jb, -1
  store i32 %i.jc, ptr @displayLevel, align 4, !tbaa !12
  br label %.thread563

bb.dj:                                            ; preds = %.tail734.thread.thread
  tail call void @LZ4IO_setRemoveSrcFile(ptr noundef %i.an, i32 noundef 0) #22
  br label %.thread563

.preheader739:                                    ; preds = %.tail734.thread.thread, %.preheader739.backedge
  %.lcssa11841187 = phi ptr [ %.lcssa11841187.be, %.preheader739.backedge ], [ %i.ep, %.tail734.thread.thread ] ; 3 uses
  %.2263 = phi i64 [ %.2263.be, %.preheader739.backedge ], [ %.1262.ph1217, %.tail734.thread.thread ] ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.lcssa11841187, i64 1 ; 5 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !10  ; 3 uses
  switch i8 %i.je, label %bb.dn [
    i8 0, label %.thread563.loopexit
    i8 68, label %bb.dk
    i8 73, label %bb.dl
    i8 88, label %bb.dm
  ]

bb.dk:                                            ; preds = %.preheader739
  %i.jf = tail call i32 @LZ4IO_setBlockMode(ptr noundef %i.an, i32 noundef 0) #22 ; 0 uses
  br label %.preheader739.backedge

bb.dl:                                            ; preds = %.preheader739
  %i.jg = tail call i32 @LZ4IO_setBlockMode(ptr noundef %i.an, i32 noundef 1) #22 ; 0 uses
  br label %.preheader739.backedge

bb.dm:                                            ; preds = %.preheader739
  %i.jh = tail call i32 @LZ4IO_setBlockChecksumMode(ptr noundef %i.an, i32 noundef 1) #22 ; 0 uses
  br label %.preheader739.backedge

bb.dn:                                            ; preds = %.preheader739
  %i.ji = add i8 %i.je, -58
  %or.cond458 = icmp ult i8 %i.ji, -10
  br i1 %or.cond458, label %.thread563.loopexit, label %.lr.ph.i520

.lr.ph.i520:                                      ; preds = %bb.dn, %.lr.ph.i520
  %i.jj = phi i8 [ %i.jp, %.lr.ph.i520 ], [ %i.je, %bb.dn ]
  %.020.i521 = phi i32 [ %i.jn, %.lr.ph.i520 ], [ 0, %bb.dn ]
  %i.jk = phi ptr [ %i.jo, %.lr.ph.i520 ], [ %i.jd, %bb.dn ] ; 3 uses
  %i.jl = mul i32 %.020.i521, 10
  %narrow.i522 = add nsw i8 %i.jj, -48
  %i.jm = zext nneg i8 %narrow.i522 to i32
  %i.jn = add i32 %i.jl, %i.jm                    ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 1 ; 4 uses
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !10  ; 4 uses
  %i.jq = add i8 %i.jp, -48
  %or.cond.i523 = icmp ult i8 %i.jq, 10
  br i1 %or.cond.i523, label %.lr.ph.i520, label %.critedge.i512, !llvm.loop !0

.critedge.i512:                                   ; preds = %.lr.ph.i520
  switch i8 %i.jp, label %readU32FromChar.exit524 [
    i8 75, label %bb.do
    i8 77, label %bb.do
  ]

bb.do:                                            ; preds = %.critedge.i512, %.critedge.i512
  %i.jr = icmp eq i8 %i.jp, 77
  %spec.select.v.i516 = select i1 %i.jr, i32 20, i32 10
  %spec.select.i517 = shl i32 %i.jn, %spec.select.v.i516 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 2 ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !10  ; 2 uses
  %i.ju = icmp eq i8 %i.jt, 105
  br i1 %i.ju, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jk, i64 3 ; 2 uses
  %.pre.i519 = load i8, ptr %i.jv, align 1, !tbaa !10
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.lcssa11841185 = phi ptr [ %i.jv, %bb.dp ], [ %i.js, %bb.do ]
  %i.jw = phi i8 [ %.pre.i519, %bb.dp ], [ %i.jt, %bb.do ]
  %i.jx = phi i64 [ 2, %bb.dp ], [ 1, %bb.do ]
  %i.jy = icmp eq i8 %i.jw, 66
  br i1 %i.jy, label %bb.dr, label %readU32FromChar.exit524

bb.dr:                                            ; preds = %bb.dq
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jx
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 1
  br label %readU32FromChar.exit524

readU32FromChar.exit524:                          ; preds = %.critedge.i512, %bb.dq, %bb.dr
  %.lcssa11841186 = phi ptr [ %i.ka, %bb.dr ], [ %.lcssa11841185, %bb.dq ], [ %i.jo, %.critedge.i512 ]
  %.2.i518 = phi i32 [ %spec.select.i517, %bb.dr ], [ %spec.select.i517, %bb.dq ], [ %i.jn, %.critedge.i512 ] ; 5 uses
  %i.kb = getelementptr inbounds i8, ptr %.lcssa11841186, i64 -1 ; 6 uses
  %i.kc = icmp ult i32 %.2.i518, 4
  br i1 %i.kc, label %.thread, label %bb.ds

.thread:                                          ; preds = %readU32FromChar.exit524
  tail call fastcc void @badusage(ptr noundef nonnull %.1.i472)
  unreachable

bb.ds:                                            ; preds = %readU32FromChar.exit524
  %i.kd = icmp ult i32 %.2.i518, 8
  br i1 %i.kd, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.ke = tail call i64 @LZ4IO_setBlockSizeID(ptr noundef %i.an, i32 noundef %.2.i518) #22 ; 4 uses
  tail call void @BMK_setBlockSize(i64 noundef %i.ke) #22
  %i.kf = load i32, ptr @displayLevel, align 4, !tbaa !12
  %i.kg = icmp ugt i32 %i.kf, 1
  br i1 %i.kg, label %bb.du, label %.preheader739.backedge

bb.du:                                            ; preds = %bb.dt
  %i.kh = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ki = lshr i64 %i.ke, 10
  %i.kj = trunc i64 %i.ki to i32
  %i.kk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kh, ptr noundef nonnull @.str.46, i32 noundef %i.kj) #23 ; 0 uses
  br label %.preheader739.backedge

.preheader739.backedge:                           ; preds = %bb.du, %bb.dt, %5, %bb.ea, %bb.dy, %bb.dz, %bb.dm, %bb.dl, %bb.dk
  %.lcssa11841187.be = phi ptr [ %i.kb, %bb.ea ], [ %i.jd, %bb.dm ], [ %i.kb, %5 ], [ %i.jd, %bb.dk ], [ %i.jd, %bb.dl ], [ %i.kb, %bb.du ], [ %i.kb, %bb.dt ], [ %i.kb, %bb.dz ], [ %i.kb, %bb.dy ]
  %.2263.be = phi i64 [ %i.kn, %bb.ea ], [ %.2263, %bb.dm ], [ %i.kn, %5 ], [ %.2263, %bb.dk ], [ %.2263, %bb.dl ], [ %i.ke, %bb.du ], [ %i.ke, %bb.dt ], [ %i.kn, %bb.dz ], [ %i.kn, %bb.dy ]
  br label %.preheader739

bb.dv:                                            ; preds = %bb.ds
  %i.kl = icmp ult i32 %.2.i518, 32
  br i1 %i.kl, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  tail call fastcc void @badusage(ptr noundef nonnull %.1.i472)
  unreachable

bb.dx:                                            ; preds = %bb.dv
  %i.km = zext i32 %.2.i518 to i64
  %i.kn = tail call i64 @LZ4IO_setBlockSize(ptr noundef %i.an, i64 noundef %i.km) #22 ; 8 uses
  tail call void @BMK_setBlockSize(i64 noundef %i.kn) #22
  %3 = icmp ugt i64 %i.kn, 1023
  %i.ko = load i32, ptr @displayLevel, align 4, !tbaa !12
  %i.kp = icmp ugt i32 %i.ko, 1                   ; 2 uses
  br i1 %3, label %bb.dy, label %5

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.kp, label %bb.dz, label %.preheader739.backedge

bb.dz:                                            ; preds = %bb.dy
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.kq = lshr i64 %i.kn, 10
  %i.kr = trunc i64 %i.kq to i32
  %i.ks = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.46, i32 noundef %i.kr) #23 ; 0 uses
  br label %.preheader739.backedge

5:                                                ; preds = %bb.dx
  br i1 %i.kp, label %bb.ea, label %.preheader739.backedge

bb.ea:                                            ; preds = %5
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.kt = trunc nuw nsw i64 %i.kn to i32
  %i.ku = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.47, i32 noundef %i.kt) #23 ; 0 uses
  br label %.preheader739.backedge

bb.eb:                                            ; preds = %.tail734.thread.thread
  br label %.thread563

bb.ec:                                            ; preds = %.tail734.thread.thread
  tail call void @BMK_setBenchSeparately(i32 noundef 1) #22
  br label %.thread563

bb.ed:                                            ; preds = %.tail734.thread.thread
  br label %.thread563

bb.ee:                                            ; preds = %.tail734.thread.thread
  br label %.thread563

bb.ef:                                            ; preds = %.tail734.thread.thread
  %i.kv = getelementptr inbounds nuw i8, ptr %i.eq, i64 2 ; 4 uses
  store ptr %i.kv, ptr %i.d, align 8, !tbaa !17
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !10  ; 3 uses
  %i.kx = add i8 %i.kw, -48
  %or.cond19.i526 = icmp ult i8 %i.kx, 10
  br i1 %or.cond19.i526, label %.lr.ph.i535, label %.critedge.i527

.lr.ph.i535:                                      ; preds = %bb.ef, %.lr.ph.i535
  %i.ky = phi i8 [ %i.le, %.lr.ph.i535 ], [ %i.kw, %bb.ef ]
  %.020.i536 = phi i32 [ %i.lc, %.lr.ph.i535 ], [ 0, %bb.ef ]
  %i.kz = phi ptr [ %i.ld, %.lr.ph.i535 ], [ %i.kv, %bb.ef ]
  %i.la = mul i32 %.020.i536, 10
  %narrow.i537 = add nsw i8 %i.ky, -48
  %i.lb = zext nneg i8 %narrow.i537 to i32
  %i.lc = add i32 %i.la, %i.lb                    ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 1 ; 4 uses
  store ptr %i.ld, ptr %i.d, align 8, !tbaa !17
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !10  ; 3 uses
  %i.lf = add i8 %i.le, -48
  %or.cond.i538 = icmp ult i8 %i.lf, 10
  br i1 %or.cond.i538, label %.lr.ph.i535, label %.critedge.i527, !llvm.loop !0

.critedge.i527:                                   ; preds = %.lr.ph.i535, %bb.ef
  %.lcssa11841187.lcssa1195 = phi ptr [ %i.kv, %bb.ef ], [ %i.ld, %.lr.ph.i535 ] ; 4 uses
  %.0.lcssa.i528 = phi i32 [ 0, %bb.ef ], [ %i.lc, %.lr.ph.i535 ] ; 2 uses
  %.lcssa.i530 = phi i8 [ %i.kw, %bb.ef ], [ %i.le, %.lr.ph.i535 ] ; 2 uses
  switch i8 %.lcssa.i530, label %readU32FromChar.exit539 [
    i8 75, label %bb.eg
    i8 77, label %bb.eg
  ]

bb.eg:                                            ; preds = %.critedge.i527, %.critedge.i527
  %i.lg = icmp eq i8 %.lcssa.i530, 77
  %spec.select.v.i531 = select i1 %i.lg, i32 20, i32 10
  %spec.select.i532 = shl i32 %.0.lcssa.i528, %spec.select.v.i531 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.lcssa11841187.lcssa1195, i64 1 ; 3 uses
  store ptr %i.lh, ptr %i.d, align 8, !tbaa !17
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !10  ; 2 uses
  %i.lj = icmp eq i8 %i.li, 105
  br i1 %i.lj, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.lk = getelementptr inbounds nuw i8, ptr %.lcssa11841187.lcssa1195, i64 2 ; 3 uses
  store ptr %i.lk, ptr %i.d, align 8, !tbaa !17
  %.pre.i534 = load i8, ptr %i.lk, align 1, !tbaa !10
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.lcssa11841187.lcssa1194 = phi ptr [ %i.lk, %bb.eh ], [ %i.lh, %bb.eg ]
  %i.ll = phi i8 [ %.pre.i534, %bb.eh ], [ %i.li, %bb.eg ]
  %i.lm = phi i64 [ 2, %bb.eh ], [ 1, %bb.eg ]
  %i.ln = icmp eq i8 %i.ll, 66
  br i1 %i.ln, label %bb.ej, label %readU32FromChar.exit539

bb.ej:                                            ; preds = %bb.ei
  %i.lo = getelementptr inbounds nuw i8, ptr %.lcssa11841187.lcssa1195, i64 %i.lm
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  br label %readU32FromChar.exit539

readU32FromChar.exit539:                          ; preds = %.critedge.i527, %bb.ei, %bb.ej
  %.lcssa11841187.lcssa1196 = phi ptr [ %i.lp, %bb.ej ], [ %.lcssa11841187.lcssa1194, %bb.ei ], [ %.lcssa11841187.lcssa1195, %.critedge.i527 ]
  %.2.i533 = phi i32 [ %spec.select.i532, %bb.ej ], [ %spec.select.i532, %bb.ei ], [ %.0.lcssa.i528, %.critedge.i527 ]
  %i.lq = getelementptr inbounds i8, ptr %.lcssa11841187.lcssa1196, i64 -1 ; 2 uses
  store ptr %i.lq, ptr %i.d, align 8, !tbaa !17
  %i.lr = load i32, ptr @displayLevel, align 4, !tbaa !12
  tail call void @BMK_setNotificationLevel(i32 noundef %i.lr) #22
  tail call void @BMK_setNbSeconds(i32 noundef %.2.i533) #22
  br label %.thread563

bb.ek:                                            ; preds = %.tail734.thread.thread
  br label %.thread563

.thread1544:                                      ; preds = %.tail734.thread.thread, %.tail734
  tail call fastcc void @badusage(ptr noundef nonnull %.1.i472)
  unreachable

.thread563.loopexit:                              ; preds = %.preheader739, %bb.dn
  store ptr %.lcssa11841187, ptr %i.d, align 8
  br label %.thread563

.thread563:                                       ; preds = %.thread563.loopexit, %bb.ed, %.tail734.thread.thread, %bb.dh, %bb.di, %bb.ek, %readU32FromChar.exit539, %bb.ee, %bb.ec, %bb.eb, %bb.dj, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %readU32FromChar.exit509, %readU32FromChar.exit494
  %.lcssa11841187.lcssa1193 = phi ptr [ %i.lq, %readU32FromChar.exit539 ], [ %i.hp, %readU32FromChar.exit494 ], [ %i.ep, %bb.ek ], [ %i.il, %readU32FromChar.exit509 ], [ %i.iw, %bb.da ], [ %i.ep, %bb.db ], [ %i.ep, %bb.dc ], [ %i.ep, %bb.dd ], [ %i.ep, %bb.de ], [ %i.ep, %bb.df ], [ %i.ep, %bb.dg ], [ %i.ep, %bb.di ], [ %i.ep, %bb.dh ], [ %i.ep, %bb.dj ], [ %i.ep, %bb.ee ], [ %i.ep, %bb.ed ], [ %i.ep, %bb.eb ], [ %i.ep, %bb.ec ], [ %i.ep, %.tail734.thread.thread ], [ %.lcssa11841187, %.thread563.loopexit ] ; 2 uses
  %.2340 = phi i32 [ %.1339.ph1208, %readU32FromChar.exit539 ], [ %.1339.ph1208, %readU32FromChar.exit494 ], [ %.1339.ph1208, %bb.ek ], [ %.1339.ph1208, %readU32FromChar.exit509 ], [ %.1339.ph1208, %bb.da ], [ 1, %bb.db ], [ %.1339.ph1208, %bb.dc ], [ %.1339.ph1208, %bb.dd ], [ %.1339.ph1208, %bb.de ], [ %.1339.ph1208, %bb.df ], [ %.1339.ph1208, %bb.dg ], [ %.1339.ph1208, %bb.di ], [ %.1339.ph1208, %bb.dh ], [ %.1339.ph1208, %bb.dj ], [ %.1339.ph1208, %bb.ee ], [ %.1339.ph1208, %bb.ed ], [ %.1339.ph1208, %bb.eb ], [ %.1339.ph1208, %bb.ec ], [ %.1339.ph1208, %.tail734.thread.thread ], [ %.1339.ph1208, %.thread563.loopexit ] ; 2 uses
  %.3336 = phi i32 [ %.2335.ph1209, %readU32FromChar.exit539 ], [ %.2335.ph1209, %readU32FromChar.exit494 ], [ %.2335.ph1209, %bb.ek ], [ %.2335.ph1209, %readU32FromChar.exit509 ], [ %.2335.ph1209, %bb.da ], [ %.2335.ph1209, %bb.db ], [ %.2335.ph1209, %bb.dc ], [ 1, %bb.dd ], [ %.2335.ph1209, %bb.de ], [ %.2335.ph1209, %bb.df ], [ %.2335.ph1209, %bb.dg ], [ %.2335.ph1209, %bb.di ], [ %.2335.ph1209, %bb.dh ], [ %.2335.ph1209, %bb.dj ], [ %.2335.ph1209, %bb.ee ], [ %.2335.ph1209, %bb.ed ], [ %.2335.ph1209, %bb.eb ], [ %.2335.ph1209, %bb.ec ], [ %.2335.ph1209, %.tail734.thread.thread ], [ %.2335.ph1209, %.thread563.loopexit ] ; 2 uses
  %.2331 = phi i32 [ %.1330.ph1210, %readU32FromChar.exit539 ], [ %.1330.ph1210, %readU32FromChar.exit494 ], [ %.1330.ph1210, %bb.ek ], [ %.1330.ph1210, %readU32FromChar.exit509 ], [ %.1330.ph1210, %bb.da ], [ %.1330.ph1210, %bb.db ], [ %.1330.ph1210, %bb.dc ], [ %.1330.ph1210, %bb.dd ], [ %.1330.ph1210, %bb.de ], [ 1, %bb.df ], [ %.1330.ph1210, %bb.dg ], [ %.1330.ph1210, %bb.di ], [ %.1330.ph1210, %bb.dh ], [ %.1330.ph1210, %bb.dj ], [ %.1330.ph1210, %bb.ee ], [ %.1330.ph1210, %bb.ed ], [ %.1330.ph1210, %bb.eb ], [ %.1330.ph1210, %bb.ec ], [ %.1330.ph1210, %.tail734.thread.thread ], [ %.1330.ph1210, %.thread563.loopexit ] ; 2 uses
  %.2326 = phi i32 [ %.1325.ph1211, %readU32FromChar.exit539 ], [ %.1325.ph1211, %readU32FromChar.exit494 ], [ 1, %bb.ek ], [ %.1325.ph1211, %readU32FromChar.exit509 ], [ %.1325.ph1211, %bb.da ], [ %.1325.ph1211, %bb.db ], [ %.1325.ph1211, %bb.dc ], [ %.1325.ph1211, %bb.dd ], [ %.1325.ph1211, %bb.de ], [ %.1325.ph1211, %bb.df ], [ %.1325.ph1211, %bb.dg ], [ %.1325.ph1211, %bb.di ], [ %.1325.ph1211, %bb.dh ], [ %.1325.ph1211, %bb.dj ], [ %.1325.ph1211, %bb.ee ], [ %.1325.ph1211, %bb.ed ], [ %.1325.ph1211, %bb.eb ], [ %.1325.ph1211, %bb.ec ], [ %.1325.ph1211, %.tail734.thread.thread ], [ %.1325.ph1211, %.thread563.loopexit ] ; 2 uses
  %.3321 = phi i32 [ %.2320.ph1212, %readU32FromChar.exit539 ], [ %.2320.ph1212, %readU32FromChar.exit494 ], [ %.2320.ph1212, %bb.ek ], [ %.2320.ph1212, %readU32FromChar.exit509 ], [ %.2320.ph1212, %bb.da ], [ %.2320.ph1212, %bb.db ], [ %.2320.ph1212, %bb.dc ], [ %.2320.ph1212, %bb.dd ], [ %.2320.ph1212, %bb.de ], [ %.2320.ph1212, %bb.df ], [ %.2320.ph1212, %bb.dg ], [ %.2320.ph1212, %bb.di ], [ %.2320.ph1212, %bb.dh ], [ %.2320.ph1212, %bb.dj ], [ 1, %bb.ee ], [ 1, %bb.ed ], [ 1, %bb.eb ], [ %.2320.ph1212, %bb.ec ], [ %.2320.ph1212, %.tail734.thread.thread ], [ %.2320.ph1212, %.thread563.loopexit ] ; 2 uses
  %.3308 = phi i32 [ %.2307.ph1213, %readU32FromChar.exit539 ], [ %.2307.ph1213, %readU32FromChar.exit494 ], [ %.2307.ph1213, %bb.ek ], [ %.2.i503, %readU32FromChar.exit509 ], [ %.2307.ph1213, %bb.da ], [ %.2307.ph1213, %bb.db ], [ %.2307.ph1213, %bb.dc ], [ %.2307.ph1213, %bb.dd ], [ %.2307.ph1213, %bb.de ], [ %.2307.ph1213, %bb.df ], [ %.2307.ph1213, %bb.dg ], [ %.2307.ph1213, %bb.di ], [ %.2307.ph1213, %bb.dh ], [ %.2307.ph1213, %bb.dj ], [ %.2307.ph1213, %bb.ee ], [ %.2307.ph1213, %bb.ed ], [ %.2307.ph1213, %bb.eb ], [ %.2307.ph1213, %bb.ec ], [ %.2307.ph1213, %.tail734.thread.thread ], [ %.2307.ph1213, %.thread563.loopexit ] ; 2 uses
  %.4299 = phi i32 [ %.3298.ph1214, %readU32FromChar.exit539 ], [ %.3298.ph1214, %readU32FromChar.exit494 ], [ %.3298.ph1214, %bb.ek ], [ %.3298.ph1214, %readU32FromChar.exit509 ], [ %.3298.ph1214, %bb.da ], [ %.3298.ph1214, %bb.db ], [ %spec.store.select2, %bb.dc ], [ %.3298.ph1214, %bb.dd ], [ 3, %bb.de ], [ %.3298.ph1214, %bb.df ], [ %.3298.ph1214, %bb.dg ], [ %.3298.ph1214, %bb.di ], [ %.3298.ph1214, %bb.dh ], [ %.3298.ph1214, %bb.dj ], [ %.3298.ph1214, %bb.ee ], [ %.3298.ph1214, %bb.ed ], [ 4, %bb.eb ], [ %.3298.ph1214, %bb.ec ], [ 1, %.tail734.thread.thread ], [ %.3298.ph1214, %.thread563.loopexit ] ; 2 uses
  %.4288 = phi ptr [ %.3287.ph1215, %readU32FromChar.exit539 ], [ %.3287.ph1215, %readU32FromChar.exit494 ], [ %.3287.ph1215, %bb.ek ], [ %.3287.ph1215, %readU32FromChar.exit509 ], [ %.3287.ph1215, %bb.da ], [ %.3287.ph1215, %bb.db ], [ %.3287.ph1215, %bb.dc ], [ @.str.3, %bb.dd ], [ %.3287.ph1215, %bb.de ], [ %.3287.ph1215, %bb.df ], [ %.3287.ph1215, %bb.dg ], [ %.3287.ph1215, %bb.di ], [ %.3287.ph1215, %bb.dh ], [ %.3287.ph1215, %bb.dj ], [ %.3287.ph1215, %bb.ee ], [ %.3287.ph1215, %bb.ed ], [ %.3287.ph1215, %bb.eb ], [ %.3287.ph1215, %bb.ec ], [ %.3287.ph1215, %.tail734.thread.thread ], [ %.3287.ph1215, %.thread563.loopexit ] ; 2 uses
  %.3282 = phi ptr [ %.1280.ph1216, %readU32FromChar.exit539 ], [ %.1280.ph1216, %readU32FromChar.exit494 ], [ %.1280.ph1216, %bb.ek ], [ %.1280.ph1216, %readU32FromChar.exit509 ], [ %.2281, %bb.da ], [ %.1280.ph1216, %bb.db ], [ %.1280.ph1216, %bb.dc ], [ %.1280.ph1216, %bb.dd ], [ %.1280.ph1216, %bb.de ], [ %.1280.ph1216, %bb.df ], [ %.1280.ph1216, %bb.dg ], [ %.1280.ph1216, %bb.di ], [ %.1280.ph1216, %bb.dh ], [ %.1280.ph1216, %bb.dj ], [ %.1280.ph1216, %bb.ee ], [ %.1280.ph1216, %bb.ed ], [ %.1280.ph1216, %bb.eb ], [ %.1280.ph1216, %bb.ec ], [ %.1280.ph1216, %.tail734.thread.thread ], [ %.1280.ph1216, %.thread563.loopexit ] ; 2 uses
  %.5266 = phi i64 [ %.1262.ph1217, %readU32FromChar.exit539 ], [ %.1262.ph1217, %readU32FromChar.exit494 ], [ %.1262.ph1217, %bb.ek ], [ %.1262.ph1217, %readU32FromChar.exit509 ], [ %.1262.ph1217, %bb.da ], [ 8388608, %bb.db ], [ %.1262.ph1217, %bb.dc ], [ %.1262.ph1217, %bb.dd ], [ %.1262.ph1217, %bb.de ], [ %.1262.ph1217, %bb.df ], [ %.1262.ph1217, %bb.dg ], [ %.1262.ph1217, %bb.di ], [ %.1262.ph1217, %bb.dh ], [ %.1262.ph1217, %bb.dj ], [ %.1262.ph1217, %bb.ee ], [ %.1262.ph1217, %bb.ed ], [ %.1262.ph1217, %bb.eb ], [ %.1262.ph1217, %bb.ec ], [ %.1262.ph1217, %.tail734.thread.thread ], [ %.2263, %.thread563.loopexit ] ; 2 uses
  %.3259 = phi i32 [ %.1257.ph1218, %readU32FromChar.exit539 ], [ %.1257.ph1218, %readU32FromChar.exit494 ], [ %.1257.ph1218, %bb.ek ], [ %.1257.ph1218, %readU32FromChar.exit509 ], [ %.1257.ph1218, %bb.da ], [ %.1257.ph1218, %bb.db ], [ %.1257.ph1218, %bb.dc ], [ %.1257.ph1218, %bb.dd ], [ %.1257.ph1218, %bb.de ], [ %.1257.ph1218, %bb.df ], [ %.1257.ph1218, %bb.dg ], [ %.1257.ph1218, %bb.di ], [ %.1257.ph1218, %bb.dh ], [ %.1257.ph1218, %bb.dj ], [ %.1257.ph1218, %bb.ee ], [ 1, %bb.ed ], [ %.1257.ph1218, %bb.eb ], [ %.1257.ph1218, %bb.ec ], [ %.1257.ph1218, %.tail734.thread.thread ], [ %.1257.ph1218, %.thread563.loopexit ] ; 2 uses
  %.2250 = phi i32 [ %.1249.ph1219, %readU32FromChar.exit539 ], [ %.2.i488, %readU32FromChar.exit494 ], [ %.1249.ph1219, %bb.ek ], [ %.1249.ph1219, %readU32FromChar.exit509 ], [ %.1249.ph1219, %bb.da ], [ %.1249.ph1219, %bb.db ], [ %.1249.ph1219, %bb.dc ], [ %.1249.ph1219, %bb.dd ], [ %.1249.ph1219, %bb.de ], [ %.1249.ph1219, %bb.df ], [ %.1249.ph1219, %bb.dg ], [ %.1249.ph1219, %bb.di ], [ %.1249.ph1219, %bb.dh ], [ %.1249.ph1219, %bb.dj ], [ %.1249.ph1219, %bb.ee ], [ %.1249.ph1219, %bb.ed ], [ %.1249.ph1219, %bb.eb ], [ %.1249.ph1219, %bb.ec ], [ %.1249.ph1219, %.tail734.thread.thread ], [ %.1249.ph1219, %.thread563.loopexit ] ; 2 uses
  %.5 = phi i32 [ %.3.ph1221, %readU32FromChar.exit539 ], [ %.3.ph1221, %readU32FromChar.exit494 ], [ %.3.ph1221, %bb.ek ], [ %.3.ph1221, %readU32FromChar.exit509 ], [ %.4, %bb.da ], [ %.3.ph1221, %bb.db ], [ %.3.ph1221, %bb.dc ], [ %.3.ph1221, %bb.dd ], [ %.3.ph1221, %bb.de ], [ %.3.ph1221, %bb.df ], [ %.3.ph1221, %bb.dg ], [ %.3.ph1221, %bb.di ], [ %.3.ph1221, %bb.dh ], [ %.3.ph1221, %bb.dj ], [ %.3.ph1221, %bb.ee ], [ %.3.ph1221, %bb.ed ], [ %.3.ph1221, %bb.eb ], [ %.3.ph1221, %bb.ec ], [ %.3.ph1221, %.tail734.thread.thread ], [ %.3.ph1221, %.thread563.loopexit ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.lcssa11841187.lcssa1193, i64 1 ; 2 uses
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !10  ; 2 uses
  %.not42911121149 = icmp eq i8 %i.lt, 0
  br i1 %.not42911121149, label %.thread566, label %.lr.ph.lr.ph, !llvm.loop !20

bb.el:                                            ; preds = %bb.o, %bb.n
  %.not448 = icmp eq i32 %.13191242, 0
  br i1 %.not448, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.lu = add i32 %.02681250, 1
  %i.lv = zext i32 %.02681250 to i64
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.lv
  store ptr %i.bm, ptr %i.lw, align 8, !tbaa !17
  br label %.thread566

bb.en:                                            ; preds = %bb.el
  %.not449 = icmp eq ptr %.02911247, null
  br i1 %.not449, label %.thread566, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %.not450 = icmp eq ptr %.12851248, null
  br i1 %.not450, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.lx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(5) @.str.124) #25
  %.not451 = icmp eq i32 %i.lx, 0
  %spec.store.select3 = select i1 %.not451, ptr @.str.48, ptr %i.bm
  br label %.thread566

bb.eq:                                            ; preds = %bb.eo
  %i.ly = load i32, ptr @displayLevel, align 4, !tbaa !12
  %.not452 = icmp eq i32 %i.ly, 0
  br i1 %.not452, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.lz = load ptr, ptr @stderr, align 8, !tbaa !15
  %.not453 = icmp eq i32 %.03291240, 0
  %i.ma = select i1 %.not453, ptr @.str.51, ptr @.str.50
  %i.mb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lz, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.ma, ptr noundef nonnull %i.bm) #23 ; 0 uses
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.not454 = icmp eq i32 %.03291240, 0
  br i1 %.not454, label %bb.et, label %.thread566

bb.et:                                            ; preds = %bb.es
  tail call void @exit(i32 noundef 1) #27
  unreachable

.thread621:                                       ; preds = %bb.ba, %bb.ck, %.tail734.thread.thread.thread, %bb.cl, %bb.bc
  %.3327.ph610 = phi i32 [ %.03241241, %bb.bc ], [ %.1325.ph1211, %bb.cl ], [ %.1325.ph1211, %.tail734.thread.thread.thread ], [ %.1325.ph1211, %bb.ck ], [ %.03241241, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.hr

.thread643:                                       ; preds = %bb.bo, %bb.bl, %bb.bm, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.hr

bb.eu:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %.thread566

.thread566:                                       ; preds = %.thread563, %.outer740.backedge, %bb.cf, %bb.en, %bb.bv, %bb.bt, %bb.ay, %bb.ac, %.lr.ph1256, %.tail, %bb.u, %bb.r, %bb.v, %bb.y, %bb.aa, %bb.w, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.am, %bb.ab, %bb.ap, %bb.ar, %bb.at, %bb.av, %bb.an, %bb.be, %bb.bg, %bb.by, %bb.ax, %bb.q, %bb.es, %bb.ep, %bb.em, %bb.bz, %bb.eu
  %.6605 = phi i32 [ %.1, %bb.eu ], [ %.02391255, %bb.en ], [ %.02391255, %bb.em ], [ %.02391255, %bb.bv ], [ %.02391255, %bb.bt ], [ %.02391255, %bb.ay ], [ %.02391255, %bb.ac ], [ %.02391255, %.lr.ph1256 ], [ %.02391255, %.tail ], [ %.02391255, %bb.u ], [ %.02391255, %bb.r ], [ %.02391255, %bb.v ], [ %.02391255, %bb.y ], [ %.02391255, %bb.aa ], [ %.02391255, %bb.w ], [ %.02391255, %bb.ae ], [ %.02391255, %bb.ag ], [ %.02391255, %bb.ai ], [ %.02391255, %bb.ak ], [ %.02391255, %bb.am ], [ %.02391255, %bb.ab ], [ %.02391255, %bb.ap ], [ %.02391255, %bb.ar ], [ %.02391255, %bb.at ], [ %.02391255, %bb.av ], [ %.02391255, %bb.an ], [ %.02391255, %bb.be ], [ %.02391255, %bb.bg ], [ %.02391255, %bb.ep ], [ %.02391255, %bb.by ], [ %.02391255, %bb.ax ], [ %.02391255, %bb.q ], [ %.02391255, %bb.es ], [ %.3.ph1221, %bb.cf ], [ %.3.ph1221, %.outer740.backedge ], [ %.02391255, %bb.bz ], [ %.5, %.thread563 ]
  %.4244604 = phi i32 [ %.02401254, %bb.eu ], [ %.02401254, %bb.en ], [ %.02401254, %bb.em ], [ %i.eg, %bb.bv ], [ -1, %bb.bt ], [ %.02401254, %bb.ay ], [ %.02401254, %bb.ac ], [ %.02401254, %.lr.ph1256 ], [ %.02401254, %.tail ], [ %.02401254, %bb.u ], [ %.02401254, %bb.r ], [ %.02401254, %bb.v ], [ %.02401254, %bb.y ], [ %.02401254, %bb.aa ], [ %.02401254, %bb.w ], [ %.02401254, %bb.ae ], [ %.02401254, %bb.ag ], [ %.02401254, %bb.ai ], [ %.02401254, %bb.ak ], [ %.02401254, %bb.am ], [ %.02401254, %bb.ab ], [ %.02401254, %bb.ap ], [ %.02401254, %bb.ar ], [ %.02401254, %bb.at ], [ %.02401254, %bb.av ], [ %.02401254, %bb.an ], [ %.02401254, %bb.be ], [ %.02401254, %bb.bg ], [ %.02401254, %bb.ep ], [ 12, %bb.by ], [ %.02401254, %bb.ax ], [ %.02401254, %bb.q ], [ %.02401254, %bb.es ], [ %.3243.ph7411151, %bb.cf ], [ %.3243.ph741.be, %.outer740.backedge ], [ %.02401254, %bb.bz ], [ %.3243.ph7411151, %.thread563 ] ; 2 uses
  %.3251603 = phi i32 [ %.02481253, %bb.eu ], [ %.02481253, %bb.en ], [ %.02481253, %bb.em ], [ %.02481253, %bb.bv ], [ %.02481253, %bb.bt ], [ %.02481253, %bb.ay ], [ %.02481253, %bb.ac ], [ %.02481253, %.lr.ph1256 ], [ %.02481253, %.tail ], [ %.02481253, %bb.u ], [ %.02481253, %bb.r ], [ %.02481253, %bb.v ], [ %.02481253, %bb.y ], [ %.02481253, %bb.aa ], [ %.02481253, %bb.w ], [ %.02481253, %bb.ae ], [ %.02481253, %bb.ag ], [ %.02481253, %bb.ai ], [ %.02481253, %bb.ak ], [ %.02481253, %bb.am ], [ %.02481253, %bb.ab ], [ %.02481253, %bb.ap ], [ %.02481253, %bb.ar ], [ %.02481253, %bb.at ], [ %.02481253, %bb.av ], [ %.02481253, %bb.an ], [ %.02481253, %bb.be ], [ %.02481253, %bb.bg ], [ %.02481253, %bb.ep ], [ %.02481253, %bb.by ], [ %.02481253, %bb.ax ], [ %.02481253, %bb.q ], [ %.02481253, %bb.es ], [ %.1249.ph1219, %bb.cf ], [ %.1249.ph1219, %.outer740.backedge ], [ %.02481253, %bb.bz ], [ %.2250, %.thread563 ] ; 2 uses
  %.4260602 = phi i32 [ %.02561252, %bb.eu ], [ %.02561252, %bb.en ], [ %.02561252, %bb.em ], [ %.02561252, %bb.bv ], [ %.02561252, %bb.bt ], [ %.02561252, %bb.ay ], [ %.02561252, %bb.ac ], [ %.02561252, %.lr.ph1256 ], [ %.02561252, %.tail ], [ %.02561252, %bb.u ], [ %.02561252, %bb.r ], [ %.02561252, %bb.v ], [ %.02561252, %bb.y ], [ %.02561252, %bb.aa ], [ %.02561252, %bb.w ], [ %.02561252, %bb.ae ], [ %.02561252, %bb.ag ], [ %.02561252, %bb.ai ], [ %.02561252, %bb.ak ], [ %.02561252, %bb.am ], [ %.02561252, %bb.ab ], [ %.02561252, %bb.ap ], [ %.02561252, %bb.ar ], [ %.02561252, %bb.at ], [ %.02561252, %bb.av ], [ %.02561252, %bb.an ], [ %.02561252, %bb.be ], [ %.02561252, %bb.bg ], [ %.02561252, %bb.ep ], [ %.02561252, %bb.by ], [ %.02561252, %bb.ax ], [ %.02561252, %bb.q ], [ %.02561252, %bb.es ], [ %.1257.ph1218, %bb.cf ], [ %.1257.ph1218, %.outer740.backedge ], [ %.02561252, %bb.bz ], [ %.3259, %.thread563 ] ; 2 uses
  %.6267601 = phi i64 [ %.02611251, %bb.eu ], [ %.02611251, %bb.en ], [ %.02611251, %bb.em ], [ %.02611251, %bb.bv ], [ %.02611251, %bb.bt ], [ %.02611251, %bb.ay ], [ %.02611251, %bb.ac ], [ %.02611251, %.lr.ph1256 ], [ %.02611251, %.tail ], [ %.02611251, %bb.u ], [ %.02611251, %bb.r ], [ %.02611251, %bb.v ], [ %.02611251, %bb.y ], [ %.02611251, %bb.aa ], [ %.02611251, %bb.w ], [ %.02611251, %bb.ae ], [ %.02611251, %bb.ag ], [ %.02611251, %bb.ai ], [ %.02611251, %bb.ak ], [ %.02611251, %bb.am ], [ %.02611251, %bb.ab ], [ %.02611251, %bb.ap ], [ %.02611251, %bb.ar ], [ %.02611251, %bb.at ], [ %.02611251, %bb.av ], [ %.02611251, %bb.an ], [ %.02611251, %bb.be ], [ %.02611251, %bb.bg ], [ %.02611251, %bb.ep ], [ %.02611251, %bb.by ], [ %.02611251, %bb.ax ], [ %.02611251, %bb.q ], [ %.02611251, %bb.es ], [ %.1262.ph1217, %bb.cf ], [ %.1262.ph1217, %.outer740.backedge ], [ %.02611251, %bb.bz ], [ %.5266, %.thread563 ] ; 2 uses
  %.1269600 = phi i32 [ %.02681250, %bb.eu ], [ %.02681250, %bb.en ], [ %i.lu, %bb.em ], [ %.02681250, %bb.bv ], [ %.02681250, %bb.bt ], [ %.02681250, %bb.ay ], [ %.02681250, %bb.ac ], [ %.02681250, %.lr.ph1256 ], [ %.02681250, %.tail ], [ %.02681250, %bb.u ], [ %.02681250, %bb.r ], [ %.02681250, %bb.v ], [ %.02681250, %bb.y ], [ %.02681250, %bb.aa ], [ %.02681250, %bb.w ], [ %.02681250, %bb.ae ], [ %.02681250, %bb.ag ], [ %.02681250, %bb.ai ], [ %.02681250, %bb.ak ], [ %.02681250, %bb.am ], [ %.02681250, %bb.ab ], [ %.02681250, %bb.ap ], [ %.02681250, %bb.ar ], [ %.02681250, %bb.at ], [ %.02681250, %bb.av ], [ %.02681250, %bb.an ], [ %.02681250, %bb.be ], [ %.02681250, %bb.bg ], [ %.02681250, %bb.ep ], [ %.02681250, %bb.by ], [ %.02681250, %bb.ax ], [ %.02681250, %bb.q ], [ %.02681250, %bb.es ], [ %.02681250, %bb.cf ], [ %.02681250, %.outer740.backedge ], [ %.02681250, %bb.bz ], [ %.02681250, %.thread563 ] ; 2 uses
  %.4283599 = phi ptr [ %.02791249, %bb.eu ], [ %.02791249, %bb.en ], [ %.02791249, %bb.em ], [ %.02791249, %bb.bv ], [ %.02791249, %bb.bt ], [ %.02791249, %bb.ay ], [ %.02791249, %bb.ac ], [ %.02791249, %.lr.ph1256 ], [ %.02791249, %.tail ], [ %.02791249, %bb.u ], [ %.02791249, %bb.r ], [ %.02791249, %bb.v ], [ %.02791249, %bb.y ], [ %.02791249, %bb.aa ], [ %.02791249, %bb.w ], [ %.02791249, %bb.ae ], [ %.02791249, %bb.ag ], [ %.02791249, %bb.ai ], [ %.02791249, %bb.ak ], [ %.02791249, %bb.am ], [ %.02791249, %bb.ab ], [ %.02791249, %bb.ap ], [ %.02791249, %bb.ar ], [ %.02791249, %bb.at ], [ %.02791249, %bb.av ], [ %.02791249, %bb.an ], [ %.02791249, %bb.be ], [ %.02791249, %bb.bg ], [ %.02791249, %bb.ep ], [ %.02791249, %bb.by ], [ %.02791249, %bb.ax ], [ %.02791249, %bb.q ], [ %.02791249, %bb.es ], [ %.1280.ph1216, %bb.cf ], [ %.1280.ph1216, %.outer740.backedge ], [ %.02791249, %bb.bz ], [ %.3282, %.thread563 ] ; 2 uses
  %.5289598 = phi ptr [ %.12851248, %bb.eu ], [ %.12851248, %bb.en ], [ %.12851248, %bb.em ], [ %.12851248, %bb.bv ], [ %.12851248, %bb.bt ], [ %.12851248, %bb.ay ], [ @.str.3, %bb.ac ], [ %.12851248, %.lr.ph1256 ], [ %.12851248, %.tail ], [ %.12851248, %bb.u ], [ %.12851248, %bb.r ], [ %.12851248, %bb.v ], [ %.12851248, %bb.y ], [ %.12851248, %bb.aa ], [ %.12851248, %bb.w ], [ %.12851248, %bb.ae ], [ %.12851248, %bb.ag ], [ %.12851248, %bb.ai ], [ %.12851248, %bb.ak ], [ %.12851248, %bb.am ], [ @.str.3, %bb.ab ], [ %.12851248, %bb.ap ], [ %.12851248, %bb.ar ], [ %.12851248, %bb.at ], [ %.12851248, %bb.av ], [ %.12851248, %bb.an ], [ %.12851248, %bb.be ], [ %.12851248, %bb.bg ], [ %spec.store.select3, %bb.ep ], [ %.12851248, %bb.by ], [ %.12851248, %bb.ax ], [ %.1285..str.3, %bb.q ], [ %.12851248, %bb.es ], [ %.3287.ph1215, %bb.cf ], [ %.3287.ph1215, %.outer740.backedge ], [ %.12851248, %bb.bz ], [ %.4288, %.thread563 ] ; 2 uses
  %.2293597 = phi ptr [ %.02911247, %bb.eu ], [ %i.bm, %bb.en ], [ %.02911247, %bb.em ], [ %.02911247, %bb.bv ], [ %.02911247, %bb.bt ], [ %.02911247, %bb.ay ], [ %.02911247, %bb.ac ], [ %.02911247, %.lr.ph1256 ], [ %.02911247, %.tail ], [ %.02911247, %bb.u ], [ %.02911247, %bb.r ], [ %.02911247, %bb.v ], [ %.02911247, %bb.y ], [ %.02911247, %bb.aa ], [ %.02911247, %bb.w ], [ %.02911247, %bb.ae ], [ %.02911247, %bb.ag ], [ %.02911247, %bb.ai ], [ %.02911247, %bb.ak ], [ %.02911247, %bb.am ], [ %.02911247, %bb.ab ], [ %.02911247, %bb.ap ], [ %.02911247, %bb.ar ], [ %.02911247, %bb.at ], [ %.02911247, %bb.av ], [ %.02911247, %bb.an ], [ %.02911247, %bb.be ], [ %.02911247, %bb.bg ], [ %.02911247, %bb.ep ], [ %.02911247, %bb.by ], [ %.02911247, %bb.ax ], [ %.str.1..0291, %bb.q ], [ %.02911247, %bb.es ], [ %.02911247, %bb.cf ], [ %.02911247, %.outer740.backedge ], [ %.02911247, %bb.bz ], [ %.02911247, %.thread563 ] ; 2 uses
  %.5300596 = phi i32 [ %.22971246, %bb.eu ], [ %.22971246, %bb.en ], [ %.22971246, %bb.em ], [ %.22971246, %bb.bv ], [ %.22971246, %bb.bt ], [ %.22971246, %bb.ay ], [ %.22971246, %bb.ac ], [ %.22971246, %.lr.ph1256 ], [ %.22971246, %.tail ], [ %spec.store.select, %bb.u ], [ 1, %bb.r ], [ %.22971246, %bb.v ], [ %.22971246, %bb.y ], [ %.22971246, %bb.aa ], [ 3, %bb.w ], [ %.22971246, %bb.ae ], [ %.22971246, %bb.ag ], [ %.22971246, %bb.ai ], [ %.22971246, %bb.ak ], [ %.22971246, %bb.am ], [ %.22971246, %bb.ab ], [ %.22971246, %bb.ap ], [ %.22971246, %bb.ar ], [ %.22971246, %bb.at ], [ %.22971246, %bb.av ], [ 5, %bb.an ], [ %.22971246, %bb.be ], [ %.22971246, %bb.bg ], [ %.22971246, %bb.ep ], [ %.22971246, %bb.by ], [ %.22971246, %bb.ax ], [ %.22971246, %bb.q ], [ %.22971246, %bb.es ], [ %.3298.ph1214, %bb.cf ], [ %.3298.ph1214, %.outer740.backedge ], [ %.22971246, %bb.bz ], [ %.4299, %.thread563 ] ; 2 uses
  %.4309595 = phi i32 [ %i.dy, %bb.eu ], [ %.03051245, %bb.en ], [ %.03051245, %bb.em ], [ %.03051245, %bb.bv ], [ %.03051245, %bb.bt ], [ %.03051245, %bb.ay ], [ %.03051245, %bb.ac ], [ %.03051245, %.lr.ph1256 ], [ %.03051245, %.tail ], [ %.03051245, %bb.u ], [ %.03051245, %bb.r ], [ %.03051245, %bb.v ], [ %.03051245, %bb.y ], [ %.03051245, %bb.aa ], [ %.03051245, %bb.w ], [ %.03051245, %bb.ae ], [ %.03051245, %bb.ag ], [ %.03051245, %bb.ai ], [ %.03051245, %bb.ak ], [ %.03051245, %bb.am ], [ %.03051245, %bb.ab ], [ %.03051245, %bb.ap ], [ %.03051245, %bb.ar ], [ %.03051245, %bb.at ], [ %.03051245, %bb.av ], [ %.03051245, %bb.an ], [ %.03051245, %bb.be ], [ %.03051245, %bb.bg ], [ %.03051245, %bb.ep ], [ %.03051245, %bb.by ], [ %.03051245, %bb.ax ], [ %.03051245, %bb.q ], [ %.03051245, %bb.es ], [ %.2307.ph1213, %bb.cf ], [ %.2307.ph1213, %.outer740.backedge ], [ %.03051245, %bb.bz ], [ %.3308, %.thread563 ] ; 2 uses
  %.1311594 = phi i32 [ %.03101244, %bb.eu ], [ %.03101244, %bb.en ], [ %.03101244, %bb.em ], [ %.03101244, %bb.bv ], [ %.03101244, %bb.bt ], [ %.03101244, %bb.ay ], [ %.03101244, %bb.ac ], [ %.03101244, %.lr.ph1256 ], [ %.03101244, %.tail ], [ %.03101244, %bb.u ], [ %.03101244, %bb.r ], [ %.03101244, %bb.v ], [ %.03101244, %bb.y ], [ %.03101244, %bb.aa ], [ %.03101244, %bb.w ], [ %.03101244, %bb.ae ], [ %.03101244, %bb.ag ], [ %.03101244, %bb.ai ], [ 1, %bb.ak ], [ %.03101244, %bb.am ], [ %.03101244, %bb.ab ], [ %.03101244, %bb.ap ], [ %.03101244, %bb.ar ], [ %.03101244, %bb.at ], [ %.03101244, %bb.av ], [ %.03101244, %bb.an ], [ %.03101244, %bb.be ], [ %.03101244, %bb.bg ], [ %.03101244, %bb.ep ], [ %.03101244, %bb.by ], [ %.03101244, %bb.ax ], [ %.03101244, %bb.q ], [ %.03101244, %bb.es ], [ %.03101244, %bb.cf ], [ %.03101244, %.outer740.backedge ], [ %.03101244, %bb.bz ], [ %.03101244, %.thread563 ] ; 2 uses
  %.1317592 = phi i32 [ 0, %bb.eu ], [ %.03161243, %bb.en ], [ %.03161243, %bb.em ], [ 0, %bb.bv ], [ 0, %bb.bt ], [ 0, %bb.ay ], [ 0, %bb.ac ], [ %.03161243, %.lr.ph1256 ], [ 1, %.tail ], [ 0, %bb.u ], [ 0, %bb.r ], [ 0, %bb.v ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.w ], [ 0, %bb.ae ], [ 0, %bb.ag ], [ 0, %bb.ai ], [ 0, %bb.ak ], [ 0, %bb.am ], [ 0, %bb.ab ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 0, %bb.at ], [ 0, %bb.av ], [ 0, %bb.an ], [ 0, %bb.be ], [ 0, %bb.bg ], [ %.03161243, %bb.ep ], [ 0, %bb.by ], [ 0, %bb.ax ], [ 0, %bb.q ], [ %.03161243, %bb.es ], [ 0, %bb.cf ], [ 0, %.outer740.backedge ], [ 0, %bb.bz ], [ 0, %.thread563 ]
  %.4322591 = phi i32 [ %.13191242, %bb.eu ], [ 0, %bb.en ], [ 1, %bb.em ], [ %.13191242, %bb.bv ], [ %.13191242, %bb.bt ], [ %.13191242, %bb.ay ], [ %.13191242, %bb.ac ], [ %.13191242, %.lr.ph1256 ], [ %.13191242, %.tail ], [ %.13191242, %bb.u ], [ %.13191242, %bb.r ], [ 1, %bb.v ], [ %.13191242, %bb.y ], [ %.13191242, %bb.aa ], [ %.13191242, %bb.w ], [ %.13191242, %bb.ae ], [ %.13191242, %bb.ag ], [ %.13191242, %bb.ai ], [ %.13191242, %bb.ak ], [ %.13191242, %bb.am ], [ %.13191242, %bb.ab ], [ %.13191242, %bb.ap ], [ %.13191242, %bb.ar ], [ %.13191242, %bb.at ], [ %.13191242, %bb.av ], [ 1, %bb.an ], [ %.13191242, %bb.be ], [ %.13191242, %bb.bg ], [ 0, %bb.ep ], [ %.13191242, %bb.by ], [ %.13191242, %bb.ax ], [ %.13191242, %bb.q ], [ 0, %bb.es ], [ %.2320.ph1212, %bb.cf ], [ %.2320.ph1212, %.outer740.backedge ], [ %.13191242, %bb.bz ], [ %.3321, %.thread563 ] ; 2 uses
  %.3327590 = phi i32 [ %.03241241, %bb.eu ], [ %.03241241, %bb.en ], [ %.03241241, %bb.em ], [ %.03241241, %bb.bv ], [ %.03241241, %bb.bt ], [ %.03241241, %bb.ay ], [ %.03241241, %bb.ac ], [ %.03241241, %.lr.ph1256 ], [ %.03241241, %.tail ], [ %.03241241, %bb.u ], [ %.03241241, %bb.r ], [ %.03241241, %bb.v ], [ %.03241241, %bb.y ], [ %.03241241, %bb.aa ], [ %.03241241, %bb.w ], [ %.03241241, %bb.ae ], [ %.03241241, %bb.ag ], [ %.03241241, %bb.ai ], [ %.03241241, %bb.ak ], [ %.03241241, %bb.am ], [ %.03241241, %bb.ab ], [ %.03241241, %bb.ap ], [ %.03241241, %bb.ar ], [ %.03241241, %bb.at ], [ %.03241241, %bb.av ], [ %.03241241, %bb.an ], [ %.03241241, %bb.be ], [ %.03241241, %bb.bg ], [ %.03241241, %bb.ep ], [ %.03241241, %bb.by ], [ %.03241241, %bb.ax ], [ %.03241241, %bb.q ], [ %.03241241, %bb.es ], [ %.1325.ph1211, %bb.cf ], [ %.1325.ph1211, %.outer740.backedge ], [ %.03241241, %bb.bz ], [ %.2326, %.thread563 ] ; 2 uses
  %.3332589 = phi i32 [ %.03291240, %bb.eu ], [ %.03291240, %bb.en ], [ %.03291240, %bb.em ], [ %.03291240, %bb.bv ], [ %.03291240, %bb.bt ], [ %.03291240, %bb.ay ], [ %.03291240, %bb.ac ], [ %.03291240, %.lr.ph1256 ], [ %.03291240, %.tail ], [ %.03291240, %bb.u ], [ %.03291240, %bb.r ], [ %.03291240, %bb.v ], [ %.03291240, %bb.y ], [ %.03291240, %bb.aa ], [ %.03291240, %bb.w ], [ %.03291240, %bb.ae ], [ %.03291240, %bb.ag ], [ %.03291240, %bb.ai ], [ %.03291240, %bb.ak ], [ %.03291240, %bb.am ], [ %.03291240, %bb.ab ], [ %.03291240, %bb.ap ], [ %.03291240, %bb.ar ], [ %.03291240, %bb.at ], [ %.03291240, %bb.av ], [ %.03291240, %bb.an ], [ %.03291240, %bb.be ], [ %.03291240, %bb.bg ], [ %.03291240, %bb.ep ], [ %.03291240, %bb.by ], [ %.03291240, %bb.ax ], [ %.03291240, %bb.q ], [ 1, %bb.es ], [ %.1330.ph1210, %bb.cf ], [ %.1330.ph1210, %.outer740.backedge ], [ %.03291240, %bb.bz ], [ %.2331, %.thread563 ]
  %.4337588 = phi i32 [ %.13341239, %bb.eu ], [ %.13341239, %bb.en ], [ %.13341239, %bb.em ], [ %.13341239, %bb.bv ], [ %.13341239, %bb.bt ], [ %.13341239, %bb.ay ], [ 1, %bb.ac ], [ %.13341239, %.lr.ph1256 ], [ %.13341239, %.tail ], [ %.13341239, %bb.u ], [ %.13341239, %bb.r ], [ %.13341239, %bb.v ], [ %.13341239, %bb.y ], [ %.13341239, %bb.aa ], [ %.13341239, %bb.w ], [ %.13341239, %bb.ae ], [ %.13341239, %bb.ag ], [ %.13341239, %bb.ai ], [ %.13341239, %bb.ak ], [ %.13341239, %bb.am ], [ 1, %bb.ab ], [ %.13341239, %bb.ap ], [ %.13341239, %bb.ar ], [ %.13341239, %bb.at ], [ %.13341239, %bb.av ], [ %.13341239, %bb.an ], [ %.13341239, %bb.be ], [ %.13341239, %bb.bg ], [ %.13341239, %bb.ep ], [ %.13341239, %bb.by ], [ %.13341239, %bb.ax ], [ %.13341239, %bb.q ], [ %.13341239, %bb.es ], [ %.2335.ph1209, %bb.cf ], [ %.2335.ph1209, %.outer740.backedge ], [ %.13341239, %bb.bz ], [ %.3336, %.thread563 ] ; 2 uses
  %.3341587 = phi i32 [ %.03381238, %bb.eu ], [ %.03381238, %bb.en ], [ %.03381238, %bb.em ], [ %.03381238, %bb.bv ], [ %.03381238, %bb.bt ], [ %.03381238, %bb.ay ], [ %.03381238, %bb.ac ], [ %.03381238, %.lr.ph1256 ], [ %.03381238, %.tail ], [ %.03381238, %bb.u ], [ %.03381238, %bb.r ], [ %.03381238, %bb.v ], [ %.03381238, %bb.y ], [ %.03381238, %bb.aa ], [ %.03381238, %bb.w ], [ %.03381238, %bb.ae ], [ %.03381238, %bb.ag ], [ %.03381238, %bb.ai ], [ %.03381238, %bb.ak ], [ %.03381238, %bb.am ], [ %.03381238, %bb.ab ], [ %.03381238, %bb.ap ], [ %.03381238, %bb.ar ], [ %.03381238, %bb.at ], [ %.03381238, %bb.av ], [ %.03381238, %bb.an ], [ %.03381238, %bb.be ], [ %.03381238, %bb.bg ], [ %.03381238, %bb.ep ], [ %.03381238, %bb.by ], [ %.03381238, %bb.ax ], [ %.03381238, %bb.q ], [ %.03381238, %bb.es ], [ %.1339.ph1208, %bb.cf ], [ %.1339.ph1208, %.outer740.backedge ], [ %.03381238, %bb.bz ], [ %.2340, %.thread563 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.mc = add nsw i32 %.6605, 1                   ; 2 uses
  %i.md = icmp slt i32 %i.mc, %0
  br i1 %i.md, label %.lr.ph1256, label %._crit_edge.loopexit, !llvm.loop !21

._crit_edge.loopexit:                             ; preds = %.thread566
end_hunk_0
