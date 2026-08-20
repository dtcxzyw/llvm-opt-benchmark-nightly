inline.NumInlined: 42
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 51
begin_hunk_0_@decode_frame:bb.a
.lr.ph552.i.preheader:                            ; preds = %._crit_edge.i855
  br i1 %i.bzb, label %.lr.ph552.i.epil.preheader, label %.lr.ph552.i

.lr.ph552.i:                                      ; preds = %.lr.ph552.i.preheader, %.lr.ph552.i
  %indvars.iv641.i = phi i64 [ %indvars.iv.next642.i.3, %.lr.ph552.i ], [ 0, %.lr.ph552.i.preheader ] ; 5 uses
  %niter3732 = phi i64 [ %niter3732.next.3, %.lr.ph552.i ], [ 0, %.lr.ph552.i.preheader ]
  %i.cuu = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv641.i ; 2 uses
  %i.cuv = load i8, ptr %i.cuu, align 1, !tbaa !80
  %i.cuw = zext i8 %i.cuv to i64
  %i.cux = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cuw
  %i.cuy = load i8, ptr %i.cux, align 1, !tbaa !80
  store i8 %i.cuy, ptr %i.cuu, align 1, !tbaa !80
  %i.cuz = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv641.i
  %i.cva = getelementptr inbounds nuw i8, ptr %i.cuz, i64 1 ; 2 uses
  %i.cvb = load i8, ptr %i.cva, align 1, !tbaa !80
  %i.cvc = zext i8 %i.cvb to i64
  %i.cvd = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cvc
  %i.cve = load i8, ptr %i.cvd, align 1, !tbaa !80
  store i8 %i.cve, ptr %i.cva, align 1, !tbaa !80
  %i.cvf = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv641.i
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cvf, i64 2 ; 2 uses
  %i.cvh = load i8, ptr %i.cvg, align 1, !tbaa !80
  %i.cvi = zext i8 %i.cvh to i64
  %i.cvj = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cvi
  %i.cvk = load i8, ptr %i.cvj, align 1, !tbaa !80
  store i8 %i.cvk, ptr %i.cvg, align 1, !tbaa !80
  %i.cvl = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv641.i
  %i.cvm = getelementptr inbounds nuw i8, ptr %i.cvl, i64 3 ; 2 uses
  %i.cvn = load i8, ptr %i.cvm, align 1, !tbaa !80
  %i.cvo = zext i8 %i.cvn to i64
  %i.cvp = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cvo
  %i.cvq = load i8, ptr %i.cvp, align 1, !tbaa !80
  store i8 %i.cvq, ptr %i.cvm, align 1, !tbaa !80
  %indvars.iv.next642.i.3 = add nuw nsw i64 %indvars.iv641.i, 4 ; 2 uses
  %niter3732.next.3 = add i64 %niter3732, 4       ; 2 uses
  %niter3732.ncmp.3 = icmp eq i64 %niter3732.next.3, %unroll_iter3731
  br i1 %niter3732.ncmp.3, label %.loopexit504.i.loopexit.unr-lcssa, label %.lr.ph552.i, !llvm.loop !207

.loopexit504.i.loopexit.unr-lcssa:                ; preds = %.lr.ph552.i
  br i1 %lcmp.mod3729.not, label %.loopexit504.i, label %.lr.ph552.i.epil.preheader

.lr.ph552.i.epil.preheader:                       ; preds = %.loopexit504.i.loopexit.unr-lcssa, %.lr.ph552.i.preheader
  %indvars.iv641.i.epil.init = phi i64 [ 0, %.lr.ph552.i.preheader ], [ %indvars.iv.next642.i.3, %.loopexit504.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3730)
  br label %.lr.ph552.i.epil

.lr.ph552.i.epil:                                 ; preds = %.lr.ph552.i.epil, %.lr.ph552.i.epil.preheader
  %indvars.iv641.i.epil = phi i64 [ %indvars.iv.next642.i.epil, %.lr.ph552.i.epil ], [ %indvars.iv641.i.epil.init, %.lr.ph552.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph552.i.epil ], [ 0, %.lr.ph552.i.epil.preheader ]
  %i.cvr = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv641.i.epil ; 2 uses
  %i.cvs = load i8, ptr %i.cvr, align 1, !tbaa !80
  %i.cvt = zext i8 %i.cvs to i64
  %i.cvu = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cvt
  %i.cvv = load i8, ptr %i.cvu, align 1, !tbaa !80
  store i8 %i.cvv, ptr %i.cvr, align 1, !tbaa !80
  %indvars.iv.next642.i.epil = add nuw nsw i64 %indvars.iv641.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3728
  br i1 %epil.iter.cmp.not, label %.loopexit504.i, label %.lr.ph552.i.epil, !llvm.loop !208

.loopexit504.i:                                   ; preds = %.loopexit504.i.loopexit.unr-lcssa, %.lr.ph552.i.epil, %._crit_edge.i855, %bb.pr, %.preheader505.i, %bytestream2_seek_p.exit.i
  %.5.i = phi ptr [ %.1305576.i, %bytestream2_seek_p.exit.i ], [ %i.cjv, %bb.pr ], [ %.4308.i, %._crit_edge.i855 ], [ %.1305576.i, %.preheader505.i ], [ %.4308.i, %.lr.ph552.i.epil ], [ %.4308.i, %.loopexit504.i.loopexit.unr-lcssa ]
  br i1 %i.bac, label %bb.qj, label %bb.qk

bb.qj:                                            ; preds = %.loopexit504.i
  %i.cvw = add nsw i32 %.2294582.i, %.121602
  call fastcc void @unpack_yuv(ptr noundef nonnull %i.o, ptr noundef readonly %1, ptr noundef %.4578.i, i32 noundef %i.cvw)
  %i.cvx = load i32, ptr %i.axa, align 8, !tbaa !40
  %i.cvy = add i32 %.2294582.i, -1
  %i.cvz = add i32 %i.cvy, %i.cvx
  br label %bb.qm

bb.qk:                                            ; preds = %.loopexit504.i
  %i.cwa = load i32, ptr %i.awz, align 4, !tbaa !139
  %i.cwb = icmp eq i32 %i.cwa, 166
  br i1 %i.cwb, label %bb.ql, label %bb.qm

bb.ql:                                            ; preds = %bb.qk
  %i.cwc = add nsw i32 %.2294582.i, %.121602
  %i.cwd = load i32, ptr %i.as, align 8, !tbaa !58
  %.val.i = load ptr, ptr %1, align 8, !tbaa !101
  %.val371.i = load i32, ptr %i.awy, align 8, !tbaa !40
  call fastcc void @unpack_gray(ptr noundef nonnull %i.o, ptr %.val.i, i32 %.val371.i, ptr noundef %.4578.i, i32 noundef %i.cwc, i32 noundef %.2.i, i32 noundef %i.cwd)
  br label %bb.qm

bb.qm:                                            ; preds = %bb.ql, %bb.qk, %bb.qj
  %.3.i = phi i32 [ %i.cvz, %bb.qj ], [ %.2294582.i, %bb.ql ], [ %.2294582.i, %bb.qk ]
  %i.cwe = getelementptr i8, ptr %.4578.i, i64 %i.byw
  %i.cwf = add nsw i32 %.3.i, 1                   ; 2 uses
  %i.cwg = icmp slt i32 %i.cwf, %.829
  %indvar.next3319 = add i64 %indvar3318, 1
  br i1 %i.cwg, label %bb.pe, label %tiff_unpack_strip.exit.thread892, !llvm.loop !209

tiff_unpack_strip.exit:                           ; preds = %horizontal_fill.exit.i421.i, %bb.oo, %bb.op, %bb.pc
  %.1296.i = phi i32 [ %i.byk, %bb.pc ], [ %i.bsh, %bb.op ], [ %i.bsh, %bb.oo ], [ %i.bsh, %horizontal_fill.exit.i421.i ] ; 2 uses
  %i.cwh = icmp slt i32 %.1296.i, 0
  br i1 %i.cwh, label %tiff_unpack_strip.exit.thread, label %tiff_unpack_strip.exit.thread892

tiff_unpack_strip.exit.thread:                    ; preds = %bb.nu, %bb.pd, %bb.on, %bb.ol, %bb.ok, %bb.pb, %bb.ni, %bb.md, %bb.mu, %tiff_unpack_strip.exit, %bb.ph, %bb.nn, %.loopexit948, %bb.nl, %bb.na, %.loopexit949, %bb.mx, %bb.qe, %split.i, %bb.ps, %bb.pf, %bb.pa, %bb.oc, %bb.oa, %bb.mq, %.thread.i
  %.1296.i890 = phi i32 [ %i.blh, %bb.oa ], [ -12, %.thread.i ], [ -1094995529, %bb.nn ], [ -1313558101, %.loopexit948 ], [ -12, %bb.nl ], [ -1094995529, %bb.na ], [ -1313558101, %.loopexit949 ], [ -12, %bb.mx ], [ -12, %bb.mq ], [ -1094995529, %bb.qe ], [ -1094995529, %split.i ], [ -1094995529, %bb.ps ], [ -1163346256, %bb.pa ], [ -1094995529, %bb.ph ], [ -1094995529, %bb.pf ], [ -1094995529, %bb.oc ], [ -12, %bb.mu ], [ -1094995529, %bb.md ], [ -12, %bb.ni ], [ -1163346256, %bb.pb ], [ -1094995529, %bb.ok ], [ -1094995529, %bb.ol ], [ -12, %bb.on ], [ -1094995529, %bb.pd ], [ -12, %bb.nu ], [ %.1296.i, %tiff_unpack_strip.exit ]
  %i.cwi = load i32, ptr %i.axv, align 8, !tbaa !125
  %i.cwj = and i32 %i.cwi, 8
  %.not812 = icmp eq i32 %i.cwj, 0
  br i1 %.not812, label %tiff_unpack_strip.exit.thread..loopexit946_crit_edge, label %bb.qn

tiff_unpack_strip.exit.thread..loopexit946_crit_edge: ; preds = %tiff_unpack_strip.exit.thread
  %.pre2034 = load i32, ptr %i.dm, align 4, !tbaa !39
  br label %.loopexit946

bb.qn:                                            ; preds = %tiff_unpack_strip.exit.thread
  call void @av_freep(ptr noundef nonnull %i.l) #16
  br label %.thread901

tiff_unpack_strip.exit.thread892.sink.split:      ; preds = %bb.ns, %bb.nf, %.preheader92.i.i, %.preheader91.i.i
  %.sink2842 = phi ptr [ %i.bcd, %.preheader91.i.i ], [ %i.bgj, %.preheader92.i.i ], [ %i.bcd, %bb.nf ], [ %i.bgj, %bb.ns ]
  call void @av_free(ptr noundef nonnull %.sink2842) #16
  br label %tiff_unpack_strip.exit.thread892

tiff_unpack_strip.exit.thread892:                 ; preds = %unpack_gray.exit.i, %bb.qm, %bb.pg, %tiff_unpack_strip.exit.thread892.sink.split, %.preheader516.i, %.preheader506.i, %tiff_unpack_strip.exit
  %i.cwk = load i32, ptr %i.dn, align 4, !tbaa !84
  %i.cwl = add nsw i32 %i.cwk, %.121602           ; 3 uses
  %i.cwm = load i32, ptr %i.dm, align 4, !tbaa !39 ; 2 uses
  %i.cwn = icmp slt i32 %i.cwl, %i.cwm
  br i1 %i.cwn, label %.lr.ph1606, label %.loopexit946, !llvm.loop !210

.loopexit946:                                     ; preds = %tiff_unpack_strip.exit.thread892, %tiff_unpack_strip.exit.thread..loopexit946_crit_edge, %bb.lp
  %i.cwo = phi i32 [ %.pre2034, %tiff_unpack_strip.exit.thread..loopexit946_crit_edge ], [ %i.ayn, %bb.lp ], [ %i.cwm, %tiff_unpack_strip.exit.thread892 ]
  %.121095 = phi i32 [ %.121602, %tiff_unpack_strip.exit.thread..loopexit946_crit_edge ], [ 0, %bb.lp ], [ %i.cwl, %tiff_unpack_strip.exit.thread892 ]
  %..12 = call i32 @llvm.smin.i32(i32 %.121095, i32 %i.cwo) ; 11 uses
  %i.cwp = load i32, ptr %i.cz, align 8, !tbaa !82 ; 2 uses
  %i.cwq = icmp eq i32 %i.cwp, 2
  br i1 %i.cwq, label %bb.qo, label %bb.qx

bb.qo:                                            ; preds = %.loopexit946
  %i.cwr = load i32, ptr %i.au, align 4, !tbaa !60
  %i.cws = icmp eq i32 %i.cwr, 6
  br i1 %i.cws, label %bb.qp, label %bb.qq

bb.qp:                                            ; preds = %bb.qo
  %i.cwt = load ptr, ptr %i.bo, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cwt, i32 noundef 16, ptr noundef nonnull @.str.28) #16
  br label %.thread901

bb.qq:                                            ; preds = %bb.qo
  %i.cwu = load ptr, ptr %i.l, align 8, !tbaa !101 ; 2 uses
  %.not813 = icmp eq ptr %i.cwu, null
  br i1 %.not813, label %bb.qr, label %bb.qs

bb.qr:                                            ; preds = %bb.qq
  %i.cwv = load ptr, ptr %i.axx, align 8, !tbaa !101
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qq, %bb.qr
  %i.cww = phi ptr [ %i.cwv, %bb.qr ], [ %i.cwu, %bb.qq ] ; 15 uses
  %i.cwx = load i32, ptr %i.as, align 8, !tbaa !58
  %i.cwy = lshr i32 %i.cwx, 3                     ; 2 uses
  %i.cwz = load i32, ptr %i.cn, align 8, !tbaa !104
  %.not814 = icmp eq i32 %i.cwz, 0
  br i1 %.not814, label %bb.qu, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.cxa = load i32, ptr %i.at, align 4, !tbaa !59
  %i.cxb = udiv i32 %i.cwy, %i.cxa
  %spec.select830 = call i32 @llvm.umax.i32(i32 %i.cxb, i32 1)
  br label %bb.qu

bb.qu:                                            ; preds = %bb.qt, %bb.qs
  %.1723 = phi i32 [ %spec.select830, %bb.qt ], [ %i.cwy, %bb.qs ] ; 8 uses
  %i.cxc = load i32, ptr %i.dp, align 8, !tbaa !29
  %i.cxd = mul i32 %i.cxc, %.1723                 ; 6 uses
  %i.cxe = load ptr, ptr %i.bo, align 8, !tbaa !41
  %i.cxf = getelementptr inbounds nuw i8, ptr %i.cxe, i64 136
  %i.cxg = load i32, ptr %i.cxf, align 8, !tbaa !138
  %i.cxh = icmp sgt i32 %..12, 0                  ; 3 uses
  switch i32 %i.cxg, label %.preheader943 [
    i32 35, label %bb.qv
    i32 105, label %bb.qv
    i32 30, label %bb.qv
    i32 110, label %bb.qv
    i32 77, label %bb.qv
    i32 113, label %bb.qv
    i32 34, label %bb.qw
    i32 104, label %bb.qw
    i32 29, label %bb.qw
    i32 109, label %bb.qw
    i32 76, label %bb.qw
    i32 112, label %bb.qw
  ]

.preheader943:                                    ; preds = %bb.qu
  br i1 %i.cxh, label %.preheader936.lr.ph, label %thread-pre-split

.preheader936.lr.ph:                              ; preds = %.preheader943
  %i.cxi = icmp ult i32 %.1723, %i.cxd
  %i.cxj = sext i32 %.1726 to i64                 ; 2 uses
  br i1 %i.cxi, label %.preheader936.preheader, label %thread-pre-split

.preheader936.preheader:                          ; preds = %.preheader936.lr.ph
  %i.cxk = zext i32 %.1723 to i64                 ; 8 uses
  %i.cxl = zext nneg i32 %.1723 to i64            ; 5 uses
  %wide.trip.count = zext i32 %i.cxd to i64       ; 6 uses
  %scevgep = getelementptr i8, ptr %i.cww, i64 %i.cxk
  %i.cxm = add nsw i32 %..12, -1
  %i.cxn = zext i32 %i.cxm to i64
  %i.cxo = mul nsw i64 %i.cxj, %i.cxn             ; 2 uses
  %9 = getelementptr i8, ptr %i.cww, i64 %i.cxo
  %scevgep3218 = getelementptr i8, ptr %9, i64 %wide.trip.count
  %10 = add i64 %i.cxo, %wide.trip.count
  %i.cxp = sub i64 %10, %i.cxk
  %scevgep3219 = getelementptr i8, ptr %i.cww, i64 %i.cxp
  %i.cxq = sub nsw i64 %wide.trip.count, %i.cxk   ; 7 uses
  %min.iters.check3222 = icmp ult i64 %i.cxq, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep3219
  %bound1 = icmp ult ptr %i.cww, %scevgep3218
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %.1726, 0
  %i.cxr = or i1 %found.conflict, %stride.check
  %min.iters.check3224 = icmp ult i64 %i.cxq, 32
  %i.cxs = and i64 %i.cxq, 24
  %n.vec3226 = and i64 %i.cxq, -32                ; 4 uses
  %i.cxt = add nsw i64 %n.vec3226, %i.cxk
  %cmp.n3235 = icmp eq i64 %i.cxq, %n.vec3226
  %min.epilog.iters.check3241 = icmp eq i64 %i.cxs, 0
  %n.vec3243 = and i64 %i.cxq, -8                 ; 3 uses
  %i.cxu = add nsw i64 %n.vec3243, %i.cxk
  %cmp.n3250 = icmp eq i64 %i.cxq, %n.vec3243
  %i.cxv = add nsw i64 %wide.trip.count, -1
  br label %iter.check3238

bb.qv:                                            ; preds = %bb.qu, %bb.qu, %bb.qu, %bb.qu, %bb.qu, %bb.qu
  br i1 %i.cxh, label %.preheader937.lr.ph, label %thread-pre-split

.preheader937.lr.ph:                              ; preds = %bb.qv
  %i.cxw = icmp ult i32 %.1723, %i.cxd
  %i.cxx = zext i32 %.1723 to i64                 ; 10 uses
  %i.cxy = sub nsw i64 0, %i.cxx
  %i.cxz = sext i32 %.1726 to i64                 ; 2 uses
  br i1 %i.cxw, label %.preheader937.preheader, label %thread-pre-split

.preheader937.preheader:                          ; preds = %.preheader937.lr.ph
  %i.cya = zext i32 %i.cxd to i64                 ; 3 uses
  %scevgep3253 = getelementptr i8, ptr %i.cww, i64 %i.cxx
  %scevgep3254 = getelementptr i8, ptr %i.cww, i64 2
  %i.cyb = add nsw i32 %..12, -1
  %i.cyc = zext i32 %i.cyb to i64
  %i.cyd = mul nsw i64 %i.cxz, %i.cyc
  %i.cye = xor i64 %i.cxx, -1
  %i.cyf = add nsw i64 %i.cye, %i.cya
  %i.cyg = and i64 %i.cyf, -2
  %i.cyh = add i64 %i.cyd, %i.cyg                 ; 2 uses
  %i.cyi = getelementptr i8, ptr %scevgep3254, i64 %i.cyh
  %scevgep3255 = getelementptr i8, ptr %i.cyi, i64 %i.cxx
  %scevgep3256 = getelementptr i8, ptr %i.cww, i64 2
  %scevgep3257 = getelementptr i8, ptr %scevgep3256, i64 %i.cyh
  %i.cyj = xor i64 %i.cxx, -1
  %i.cyk = add nsw i64 %i.cyj, %i.cya             ; 3 uses
  %i.cyl = lshr i64 %i.cyk, 1
  %i.cym = add nuw i64 %i.cyl, 1                  ; 5 uses
  %min.iters.check3264 = icmp ult i64 %i.cyk, 6
  %bound03258 = icmp ult ptr %scevgep3253, %scevgep3257
  %bound13259 = icmp ult ptr %i.cww, %scevgep3255
  %found.conflict3260 = and i1 %bound03258, %bound13259
  %stride.check3261 = icmp slt i32 %.1726, 0
  %i.cyn = or i1 %found.conflict3260, %stride.check3261
  %min.iters.check3266 = icmp ult i64 %i.cyk, 30
  %i.cyo = and i64 %i.cym, 12
  %n.vec3268 = and i64 %i.cym, -16                ; 4 uses
  %i.cyp = shl i64 %n.vec3268, 1
  %i.cyq = add i64 %i.cyp, %i.cxx
  %cmp.n3277 = icmp eq i64 %i.cym, %n.vec3268
  %min.epilog.iters.check3283 = icmp eq i64 %i.cyo, 0
  %n.vec3285 = and i64 %i.cym, -4                 ; 3 uses
  %i.cyr = shl i64 %n.vec3285, 1
  %i.cys = add i64 %i.cyr, %i.cxx
  %cmp.n3292 = icmp eq i64 %i.cym, %n.vec3285
  br label %iter.check3280

iter.check3280:                                   ; preds = %.preheader937.preheader, %._crit_edge1615
  %.131617 = phi i32 [ %i.czn, %._crit_edge1615 ], [ 0, %.preheader937.preheader ]
  %.37031616 = phi ptr [ %i.czm, %._crit_edge1615 ], [ %i.cww, %.preheader937.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check3264, i1 true, i1 %i.cyn
  br i1 %brmerge, label %vec.epilog.scalar.ph3281.preheader, label %vector.main.loop.iter.check3265

vector.main.loop.iter.check3265:                  ; preds = %iter.check3280
  br i1 %min.iters.check3266, label %vec.epilog.ph3284, label %vector.body3269

vector.body3269:                                  ; preds = %vector.main.loop.iter.check3265, %vector.body3269
  %index3270 = phi i64 [ %index.next3275, %vector.body3269 ], [ 0, %vector.main.loop.iter.check3265 ] ; 2 uses
  %i.cyt = shl nuw i64 %index3270, 1
  %i.cyu = getelementptr inbounds nuw i8, ptr %.37031616, i64 %i.cyt ; 3 uses
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cyu, i64 %i.cxx ; 3 uses
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.cyv, i64 16 ; 2 uses
  %wide.load3271 = load <8 x i16>, ptr %i.cyv, align 1, !tbaa !80, !alias.scope !211, !noalias !214
  %wide.load3272 = load <8 x i16>, ptr %i.cyw, align 1, !tbaa !80, !alias.scope !211, !noalias !214
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.cyu, i64 16
  %wide.load3273 = load <8 x i16>, ptr %i.cyu, align 1, !tbaa !80, !alias.scope !214
  %wide.load3274 = load <8 x i16>, ptr %i.cyx, align 1, !tbaa !80, !alias.scope !214
  %i.cyy = add <8 x i16> %wide.load3273, %wide.load3271
  %i.cyz = add <8 x i16> %wide.load3274, %wide.load3272
  store <8 x i16> %i.cyy, ptr %i.cyv, align 1, !tbaa !80, !alias.scope !211, !noalias !214
  store <8 x i16> %i.cyz, ptr %i.cyw, align 1, !tbaa !80, !alias.scope !211, !noalias !214
  %index.next3275 = add nuw i64 %index3270, 16    ; 2 uses
  %i.cza = icmp eq i64 %index.next3275, %n.vec3268
  br i1 %i.cza, label %middle.block3276, label %vector.body3269, !llvm.loop !216

middle.block3276:                                 ; preds = %vector.body3269
  br i1 %cmp.n3277, label %._crit_edge1615, label %vec.epilog.iter.check3282

vec.epilog.iter.check3282:                        ; preds = %middle.block3276
  br i1 %min.epilog.iters.check3283, label %vec.epilog.scalar.ph3281.preheader, label %vec.epilog.ph3284, !prof !203

vec.epilog.ph3284:                                ; preds = %vector.main.loop.iter.check3265, %vec.epilog.iter.check3282
  %vec.epilog.resume.val3278 = phi i64 [ %n.vec3268, %vec.epilog.iter.check3282 ], [ 0, %vector.main.loop.iter.check3265 ]
  br label %vec.epilog.vector.body3286

vec.epilog.vector.body3286:                       ; preds = %vec.epilog.vector.body3286, %vec.epilog.ph3284
  %index3287 = phi i64 [ %vec.epilog.resume.val3278, %vec.epilog.ph3284 ], [ %index.next3290, %vec.epilog.vector.body3286 ] ; 2 uses
  %i.czb = shl nuw i64 %index3287, 1
  %i.czc = getelementptr inbounds nuw i8, ptr %.37031616, i64 %i.czb ; 2 uses
  %i.czd = getelementptr inbounds nuw i8, ptr %i.czc, i64 %i.cxx ; 2 uses
  %wide.load3288 = load <4 x i16>, ptr %i.czd, align 1, !tbaa !80, !alias.scope !211, !noalias !214
  %wide.load3289 = load <4 x i16>, ptr %i.czc, align 1, !tbaa !80, !alias.scope !214
  %i.cze = add <4 x i16> %wide.load3289, %wide.load3288
  store <4 x i16> %i.cze, ptr %i.czd, align 1, !tbaa !80, !alias.scope !211, !noalias !214
  %index.next3290 = add nuw i64 %index3287, 4     ; 2 uses
  %i.czf = icmp eq i64 %index.next3290, %n.vec3285
  br i1 %i.czf, label %vec.epilog.middle.block3291, label %vec.epilog.vector.body3286, !llvm.loop !217

vec.epilog.middle.block3291:                      ; preds = %vec.epilog.vector.body3286
  br i1 %cmp.n3292, label %._crit_edge1615, label %vec.epilog.scalar.ph3281.preheader

vec.epilog.scalar.ph3281.preheader:               ; preds = %iter.check3280, %vec.epilog.iter.check3282, %vec.epilog.middle.block3291
  %indvars.iv1967.ph = phi i64 [ %i.cxx, %iter.check3280 ], [ %i.cys, %vec.epilog.middle.block3291 ], [ %i.cyq, %vec.epilog.iter.check3282 ]
  br label %vec.epilog.scalar.ph3281

vec.epilog.scalar.ph3281:                         ; preds = %vec.epilog.scalar.ph3281.preheader, %vec.epilog.scalar.ph3281
  %indvars.iv1967 = phi i64 [ %indvars.iv.next1968, %vec.epilog.scalar.ph3281 ], [ %indvars.iv1967.ph, %vec.epilog.scalar.ph3281.preheader ] ; 2 uses
  %i.czg = getelementptr inbounds nuw i8, ptr %.37031616, i64 %indvars.iv1967 ; 3 uses
  %i.czh = load i16, ptr %i.czg, align 1, !tbaa !80
  %i.czi = getelementptr inbounds i8, ptr %i.czg, i64 %i.cxy
  %i.czj = load i16, ptr %i.czi, align 1, !tbaa !80
  %i.czk = add i16 %i.czj, %i.czh
  store i16 %i.czk, ptr %i.czg, align 1, !tbaa !80
  %indvars.iv.next1968 = add nuw nsw i64 %indvars.iv1967, 2 ; 2 uses
  %i.czl = icmp samesign ult i64 %indvars.iv.next1968, %i.cya
  br i1 %i.czl, label %vec.epilog.scalar.ph3281, label %._crit_edge1615, !llvm.loop !218

._crit_edge1615:                                  ; preds = %vec.epilog.scalar.ph3281, %vec.epilog.middle.block3291, %middle.block3276
  %i.czm = getelementptr inbounds i8, ptr %.37031616, i64 %i.cxz
  %i.czn = add nuw nsw i32 %.131617, 1            ; 2 uses
  %exitcond1970.not = icmp eq i32 %i.czn, %..12
  br i1 %exitcond1970.not, label %thread-pre-split, label %iter.check3280, !llvm.loop !219

bb.qw:                                            ; preds = %bb.qu, %bb.qu, %bb.qu, %bb.qu, %bb.qu, %bb.qu
  br i1 %i.cxh, label %.preheader938.lr.ph, label %thread-pre-split

.preheader938.lr.ph:                              ; preds = %bb.qw
  %i.czo = icmp ult i32 %.1723, %i.cxd
  %i.czp = zext i32 %.1723 to i64                 ; 8 uses
  %i.czq = sub nsw i64 0, %i.czp
  %i.czr = sext i32 %.1726 to i64                 ; 2 uses
  br i1 %i.czo, label %.preheader938.preheader, label %thread-pre-split

.preheader938.preheader:                          ; preds = %.preheader938.lr.ph
  %i.czs = zext i32 %i.cxd to i64                 ; 3 uses
  %scevgep3295 = getelementptr i8, ptr %i.cww, i64 %i.czp
  %scevgep3296 = getelementptr i8, ptr %i.cww, i64 2
  %i.czt = add nsw i32 %..12, -1
  %i.czu = zext i32 %i.czt to i64
  %i.czv = mul nsw i64 %i.czr, %i.czu
  %i.czw = xor i64 %i.czp, -1
  %i.czx = add nsw i64 %i.czw, %i.czs
  %i.czy = and i64 %i.czx, -2
  %i.czz = add i64 %i.czv, %i.czy                 ; 2 uses
  %i.daa = getelementptr i8, ptr %scevgep3296, i64 %i.czz
  %scevgep3297 = getelementptr i8, ptr %i.daa, i64 %i.czp
  %scevgep3298 = getelementptr i8, ptr %i.cww, i64 2
  %scevgep3299 = getelementptr i8, ptr %scevgep3298, i64 %i.czz
  %i.dab = xor i64 %i.czp, -1
  %i.dac = add nsw i64 %i.dab, %i.czs             ; 2 uses
  %i.dad = lshr i64 %i.dac, 1
  %i.dae = add nuw i64 %i.dad, 1                  ; 2 uses
  %min.iters.check3306 = icmp ult i64 %i.dac, 14
  %bound03300 = icmp ult ptr %scevgep3295, %scevgep3299
  %bound13301 = icmp ult ptr %i.cww, %scevgep3297
  %found.conflict3302 = and i1 %bound03300, %bound13301
  %stride.check3303 = icmp slt i32 %.1726, 0
  %i.daf = or i1 %found.conflict3302, %stride.check3303
  %n.vec3308 = and i64 %i.dae, -8                 ; 3 uses
  %i.dag = shl i64 %n.vec3308, 1
  %i.dah = add i64 %i.dag, %i.czp
  %cmp.n3315 = icmp eq i64 %i.dae, %n.vec3308
  br label %.preheader938

.preheader938:                                    ; preds = %.preheader938.preheader, %._crit_edge1610
  %.141612 = phi i32 [ %i.dba, %._crit_edge1610 ], [ 0, %.preheader938.preheader ]
  %.47041611 = phi ptr [ %i.daz, %._crit_edge1610 ], [ %i.cww, %.preheader938.preheader ] ; 3 uses
  %brmerge3972 = select i1 %min.iters.check3306, i1 true, i1 %i.daf
  br i1 %brmerge3972, label %scalar.ph3305.preheader, label %vector.body3309

vector.body3309:                                  ; preds = %.preheader938, %vector.body3309
  %index3310 = phi i64 [ %index.next3313, %vector.body3309 ], [ 0, %.preheader938 ] ; 2 uses
  %i.dai = shl nuw i64 %index3310, 1
  %i.daj = getelementptr inbounds nuw i8, ptr %.47041611, i64 %i.dai ; 2 uses
  %i.dak = getelementptr inbounds nuw i8, ptr %i.daj, i64 %i.czp ; 2 uses
  %wide.load3311 = load <8 x i16>, ptr %i.dak, align 1, !tbaa !80, !alias.scope !220, !noalias !223
  %i.dal = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load3311)
  %wide.load3312 = load <8 x i16>, ptr %i.daj, align 1, !tbaa !80, !alias.scope !223
  %i.dam = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load3312)
end_hunk_0
