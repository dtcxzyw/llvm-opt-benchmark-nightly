inline.NumInlined: 35
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 25
begin_hunk_0_@php_strip_tags_ex:bb.a
bb.ay:                                            ; preds = %bb.ax
  %i.bz = icmp eq i8 %.2258534, %i.bo
  %.not324 = icmp eq i8 %.2258534, 92
  %spec.select = select i1 %.not324, i8 92, i8 %i.bo
  %.3259 = select i1 %i.bz, i8 0, i8 %spec.select ; 2 uses
  %.not326 = icmp eq i32 %.4538, 0
  %i.ca = zext nneg i8 %i.bo to i32               ; 2 uses
  br i1 %.not326, label %.critedge348, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cb = icmp eq i32 %.4538, %i.ca
  %spec.select355 = select i1 %i.cb, i32 0, i32 %.4538
  br label %.critedge348

bb.ba:                                            ; preds = %.lr.ph541, %.lr.ph541
  %i.cc = icmp ugt i64 %.2245.idx.in535, 3
  br i1 %i.cc, label %bb.bb, label %.critedge348

bb.bb:                                            ; preds = %bb.ba
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.2245.idx.in535
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !16
  switch i8 %i.ce, label %.critedge348 [
    i8 109, label %bb.bc
    i8 77, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb, %bb.bb
  %i.cf = getelementptr inbounds i8, ptr %.2245.ptr540, i64 -2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16
  switch i8 %i.cg, label %.critedge348 [
    i8 120, label %bb.bd
    i8 88, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc, %bb.bc
  %i.ch = getelementptr inbounds i8, ptr %.2245.ptr540, i64 -3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !16
  %i.cj = icmp eq i8 %i.ci, 63
  br i1 %i.cj, label %bb.be, label %.critedge348

bb.be:                                            ; preds = %bb.bd
  %i.ck = getelementptr inbounds i8, ptr %.2245.ptr540, i64 -4
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = icmp eq i8 %i.cl, 60
  br i1 %i.cm, label %.outer364, label %.critedge348

.outer364:                                        ; preds = %bb.be
  %.2245.add = add nuw nsw i64 %.2245.idx.in535, 2 ; 2 uses
  %.not295520 = icmp samesign ult i64 %.2245.add, %1
  br i1 %.not295520, label %.lr.ph526, label %.loopexit

.lr.ph526:                                        ; preds = %.lr.ph526.lr.ph, %.outer364
  %.1.ph369552 = phi i8 [ %.1.ph570, %.lr.ph526.lr.ph ], [ 1, %.outer364 ] ; 5 uses
  %.1231.ph368551 = phi i32 [ %.1231.ph569, %.lr.ph526.lr.ph ], [ %.4538, %.outer364 ]
  %.2234.ph367550 = phi i32 [ %.2234.ph568, %.lr.ph526.lr.ph ], [ %.4236537, %.outer364 ]
  %.1244.idx.ph366549 = phi i64 [ %.1244.idx.ph567, %.lr.ph526.lr.ph ], [ %.2245.add, %.outer364 ]
  %.0256.ph365548 = phi i8 [ %.0256.ph563, %.lr.ph526.lr.ph ], [ %.2258534, %.outer364 ]
  br label %bb.q

.critedge348:                                     ; preds = %bb.ay, %bb.az, %bb.bc, %bb.bb, %bb.ap, %bb.ap, %bb.an, %bb.an, %.lr.ph541, %bb.ba, %bb.bd, %bb.be, %bb.ax, %bb.au, %bb.av, %bb.at, %bb.aq, %bb.ao, %bb.as
  %.4260 = phi i8 [ %.2258534, %.lr.ph541 ], [ 40, %bb.ao ], [ %.2258534, %bb.an ], [ 41, %bb.aq ], [ %.2258534, %bb.ap ], [ %.2258534, %bb.as ], [ %.2258534, %bb.at ], [ %.2258534, %bb.av ], [ 34, %bb.au ], [ %.2258534, %bb.ap ], [ %.2258534, %bb.an ], [ %.3259, %bb.az ], [ %.2258534, %bb.bb ], [ %.2258534, %bb.ax ], [ %.2258534, %bb.ba ], [ %.2258534, %bb.be ], [ %.2258534, %bb.bd ], [ %.2258534, %bb.bc ], [ %.3259, %bb.ay ]
  %.1241 = phi i32 [ %.0240536, %.lr.ph541 ], [ %i.bp, %bb.ao ], [ %.0240536, %bb.an ], [ %i.bq, %bb.aq ], [ %.0240536, %bb.ap ], [ %.0240536, %bb.as ], [ %.0240536, %bb.at ], [ 0, %bb.av ], [ 0, %bb.au ], [ %.0240536, %bb.ap ], [ %.0240536, %bb.an ], [ %.0240536, %bb.az ], [ %.0240536, %bb.bb ], [ %.0240536, %bb.ax ], [ %.0240536, %bb.ba ], [ %.0240536, %bb.be ], [ %.0240536, %bb.bd ], [ %.0240536, %bb.bc ], [ %.0240536, %bb.ay ]
  %.5237 = phi i32 [ %.4236537, %.lr.ph541 ], [ %.4236537, %bb.ao ], [ %.4236537, %bb.an ], [ %.4236537, %bb.aq ], [ %.4236537, %bb.ap ], [ %i.br, %bb.as ], [ 0, %bb.at ], [ 0, %bb.av ], [ 0, %bb.au ], [ %.4236537, %bb.ap ], [ %.4236537, %bb.an ], [ %.4236537, %bb.az ], [ %.4236537, %bb.bb ], [ %.4236537, %bb.ax ], [ %.4236537, %bb.ba ], [ %.4236537, %bb.be ], [ %.4236537, %bb.bd ], [ %.4236537, %bb.bc ], [ %.4236537, %bb.ay ]
  %.5 = phi i32 [ %.4538, %.lr.ph541 ], [ %.4538, %bb.ao ], [ %.4538, %bb.an ], [ %.4538, %bb.aq ], [ %.4538, %bb.ap ], [ %.4538, %bb.as ], [ %.4538, %bb.at ], [ 0, %bb.av ], [ 0, %bb.au ], [ %.4538, %bb.ap ], [ %.4538, %bb.an ], [ %spec.select355, %bb.az ], [ %.4538, %bb.bb ], [ %.4538, %bb.ax ], [ %.4538, %bb.ba ], [ %.4538, %bb.be ], [ %.4538, %bb.bd ], [ %.4538, %bb.bc ], [ %i.ca, %bb.ay ]
  %.2245.idx = add i64 %.2245.idx539, 1           ; 2 uses
  %exitcond762.not = icmp eq i64 %.2245.idx, %1
  br i1 %exitcond762.not, label %.loopexit, label %.lr.ph541

.lr.ph514:                                        ; preds = %.preheader, %.critedge350
  %.3246.idx512 = phi i64 [ %.3246.idx, %.critedge350 ], [ %.3246.idx506, %.preheader ] ; 3 uses
  %.6511 = phi i32 [ %.7, %.critedge350 ], [ %.1231524, %.preheader ] ; 19 uses
  %.6238510 = phi i32 [ %.7239, %.critedge350 ], [ %.2234523, %.preheader ] ; 17 uses
  %.3246.idx.in509 = phi i64 [ %.3246.idx512, %.critedge350 ], [ %.1244.idx522, %.preheader ] ; 7 uses
  %.3246.ptr513 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.3246.idx512 ; 7 uses
  %i.cn = load i8, ptr %.3246.ptr513, align 1, !tbaa !16 ; 2 uses
  switch i8 %i.cn, label %.critedge350 [
    i8 62, label %bb.bf
    i8 34, label %bb.bj
    i8 39, label %bb.bj
    i8 45, label %bb.bm
    i8 69, label %bb.bp
    i8 101, label %bb.bp
  ]

bb.bf:                                            ; preds = %.lr.ph514
  %.not336 = icmp eq i32 %.6238510, 0
  br i1 %.not336, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.co = add nsw i32 %.6238510, -1
  br label %.critedge350

bb.bh:                                            ; preds = %bb.bf
  %.not337 = icmp eq i32 %.6511, 0
  br i1 %.not337, label %bb.bi, label %.critedge350

bb.bi:                                            ; preds = %bb.bh
  %.3246.add298 = add nuw nsw i64 %.3246.idx.in509, 2
  br label %.outer372.backedge

bb.bj:                                            ; preds = %.lr.ph514, %.lr.ph514
  %i.cp = getelementptr inbounds i8, ptr %i.a, i64 %.3246.idx.in509
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !16
  %.not334 = icmp eq i8 %i.cq, 92
  br i1 %.not334, label %.critedge350, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not335 = icmp eq i32 %.6511, 0
  %i.cr = zext nneg i8 %i.cn to i32               ; 2 uses
  br i1 %.not335, label %.critedge350, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not356 = icmp eq i32 %.6511, %i.cr
  %.6.mux = select i1 %.not356, i32 0, i32 %.6511
  br label %.critedge350

bb.bm:                                            ; preds = %.lr.ph514
  %i.cs = getelementptr inbounds i8, ptr %i.a, i64 %.3246.idx.in509
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !16
  %i.cu = icmp eq i8 %i.ct, 45
  br i1 %i.cu, label %bb.bn, label %.critedge350

bb.bn:                                            ; preds = %bb.bm
  %i.cv = getelementptr inbounds i8, ptr %.3246.ptr513, i64 -2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !16
  %i.cx = icmp eq i8 %i.cw, 33
  br i1 %i.cx, label %bb.bo, label %.critedge350

bb.bo:                                            ; preds = %bb.bn
  %.3246.add306 = add nuw nsw i64 %.3246.idx.in509, 2 ; 2 uses
  %i.cy = icmp samesign ult i64 %.3246.add306, %1
  %.not611 = icmp eq i32 %.6511, 0
  %or.cond913 = select i1 %i.cy, i1 %.not611, i1 false
  br i1 %or.cond913, label %.lr.ph579.split, label %.loopexit

bb.bp:                                            ; preds = %.lr.ph514, %.lr.ph514
  %i.cz = icmp ugt i64 %.3246.idx.in509, 5
  br i1 %i.cz, label %bb.bq, label %.critedge350

bb.bq:                                            ; preds = %bb.bp
  %i.da = getelementptr inbounds i8, ptr %i.a, i64 %.3246.idx.in509
  %i.db = load i8, ptr %i.da, align 1, !tbaa !16
  switch i8 %i.db, label %.critedge350 [
    i8 112, label %bb.br
    i8 80, label %bb.br
  ]

bb.br:                                            ; preds = %bb.bq, %bb.bq
  %i.dc = getelementptr inbounds i8, ptr %.3246.ptr513, i64 -2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !16
  switch i8 %i.dd, label %.critedge350 [
    i8 121, label %bb.bs
    i8 89, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br
  %i.de = getelementptr inbounds i8, ptr %.3246.ptr513, i64 -3
  %i.df = load i8, ptr %i.de, align 1, !tbaa !16
  switch i8 %i.df, label %.critedge350 [
    i8 116, label %bb.bt
    i8 84, label %bb.bt
  ]

bb.bt:                                            ; preds = %bb.bs, %bb.bs
  %i.dg = getelementptr inbounds i8, ptr %.3246.ptr513, i64 -4
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !16
  switch i8 %i.dh, label %.critedge350 [
    i8 99, label %bb.bu
    i8 67, label %bb.bu
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt
  %i.di = getelementptr inbounds i8, ptr %.3246.ptr513, i64 -5
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !16
  switch i8 %i.dj, label %.critedge350 [
    i8 111, label %bb.bv
    i8 79, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu, %bb.bu
  %i.dk = getelementptr inbounds i8, ptr %.3246.ptr513, i64 -6
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !16
  switch i8 %i.dl, label %.critedge350 [
    i8 100, label %bb.bw
    i8 68, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv, %bb.bv
  %.3246.add = add nuw nsw i64 %.3246.idx.in509, 2 ; 2 uses
  %.not295 = icmp samesign ult i64 %.3246.add, %1
  br i1 %.not295, label %bb.q, label %.loopexit

.critedge350:                                     ; preds = %bb.bk, %bb.bl, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %.lr.ph514, %bb.bp, %bb.bm, %bb.bn, %bb.bj, %bb.bh, %bb.bg
  %.7239 = phi i32 [ %.6238510, %.lr.ph514 ], [ %i.co, %bb.bg ], [ 0, %bb.bh ], [ %.6238510, %bb.br ], [ %.6238510, %bb.bs ], [ %.6238510, %bb.bl ], [ %.6238510, %bb.bj ], [ %.6238510, %bb.bq ], [ %.6238510, %bb.bn ], [ %.6238510, %bb.bm ], [ %.6238510, %bb.bp ], [ %.6238510, %bb.bv ], [ %.6238510, %bb.bu ], [ %.6238510, %bb.bt ], [ %.6238510, %bb.bk ]
  %.7 = phi i32 [ %.6511, %.lr.ph514 ], [ %.6511, %bb.bg ], [ %.6511, %bb.bh ], [ %.6511, %bb.br ], [ %.6511, %bb.bs ], [ %.6.mux, %bb.bl ], [ %.6511, %bb.bj ], [ %.6511, %bb.bq ], [ %.6511, %bb.bn ], [ %.6511, %bb.bm ], [ %.6511, %bb.bp ], [ %.6511, %bb.bv ], [ %.6511, %bb.bu ], [ %.6511, %bb.bt ], [ %i.cr, %bb.bk ]
  %.3246.idx = add i64 %.3246.idx512, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %.3246.idx, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph514

.lr.ph579.split:                                  ; preds = %bb.bo, %bb.ca
  %.4247.idx577 = phi i64 [ %.4247.add305, %bb.ca ], [ %.3246.add306, %bb.bo ] ; 4 uses
  %.4247.ptr578 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4247.idx577 ; 3 uses
  %i.dm = load i8, ptr %.4247.ptr578, align 1, !tbaa !16
  %5 = icmp ne i8 %i.dm, 62
  %.not332 = icmp samesign ult i64 %.4247.idx577, 2
  %or.cond351 = select i1 %5, i1 true, i1 %.not332
  br i1 %or.cond351, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph579.split
  %i.dn = getelementptr inbounds i8, ptr %.4247.ptr578, i64 -1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !16
  %i.dp = icmp eq i8 %i.do, 45
  br i1 %i.dp, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.dq = getelementptr inbounds i8, ptr %.4247.ptr578, i64 -2
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !16
  %i.ds = icmp eq i8 %i.dr, 45
  br i1 %i.ds, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %.4247.add = add nuw nsw i64 %.4247.idx577, 1
  br label %.outer372.backedge

bb.ca:                                            ; preds = %bb.bx, %bb.by, %.lr.ph579.split
  %.4247.add305 = add i64 %.4247.idx577, 1        ; 2 uses
  %exitcond763.not = icmp eq i64 %.4247.add305, %1
  br i1 %exitcond763.not, label %.loopexit, label %.lr.ph579.split, !llvm.loop !250

.loopexit:                                        ; preds = %.outer372.backedge, %bb.k, %bb.bo, %bb.p, %.outer, %bb.ca, %.outer364, %.preheader358, %bb.bw, %.preheader, %.critedge348, %.critedge350, %bb.c
  %.0261375 = phi ptr [ %.0261500, %bb.bw ], [ %.0261500, %.critedge350 ], [ %0, %bb.c ], [ %.0261500, %.critedge348 ], [ %.0261500, %bb.ca ], [ %.0261500, %.outer ], [ %.1262, %bb.p ], [ %.0261500, %.outer364 ], [ %.0261500, %.preheader ], [ %.0261500, %.preheader358 ], [ %.0261.ph.be, %.outer372.backedge ], [ %.0261500, %bb.k ], [ %.0261500, %bb.bo ] ; 3 uses
  %.9 = phi ptr [ %.4252.ph564, %bb.bw ], [ %.4252.ph564, %.critedge350 ], [ %.0248, %bb.c ], [ %.4252.ph564, %.critedge348 ], [ %.4252.ph564, %bb.ca ], [ %.8, %.outer ], [ %.1249.ph605, %bb.p ], [ %.4252.ph564, %.outer364 ], [ %.4252.ph564, %.preheader ], [ %.4252.ph564, %.preheader358 ], [ %.1249.ph.be, %.outer372.backedge ], [ %.3251, %bb.k ], [ %.4252.ph564, %bb.bo ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.du = icmp ult ptr %.0261375, %i.dt
  br i1 %i.du, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.loopexit
  store i8 0, ptr %.0261375, align 1, !tbaa !16
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.loopexit
  tail call void @_efree(ptr noundef %i.a) #26
  %.not345 = icmp eq ptr %.9, null
  br i1 %.not345, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void @_efree(ptr noundef nonnull %.9) #26
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.not346 = icmp eq ptr %.0229, null
  br i1 %.not346, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @_efree(ptr noundef nonnull %.0229) #26
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.dv = ptrtoint ptr %.0261375 to i64
  %i.dw = ptrtoint ptr %0 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  ret i64 %i.dx
}

; Function Attrs: nounwind uwtable
define hidden void @zif_setlocale(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !16   ; 3 uses
  %i.d = icmp ult i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 2, i32 noundef -1) #26
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i8, ptr %i.f, align 8, !tbaa !16
  %i.h = icmp eq i8 %i.g, 4
  br i1 %i.h, label %zend_parse_arg_long_ex.exit.thread, label %zend_parse_arg_long_ex.exit, !prof !18

zend_parse_arg_long_ex.exit.thread:               ; preds = %bb.c
  %i.i = load i64, ptr %i.e, align 8, !tbaa !16
  store i64 %i.i, ptr %i.a, align 8, !tbaa !32
  br label %bb.d

zend_parse_arg_long_ex.exit:                      ; preds = %bb.c
  %i.j = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef 1) #26
  br i1 %i.j, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %zend_parse_arg_long_ex.exit.thread, %zend_parse_arg_long_ex.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !16
  %i.n = and i32 %i.m, 134217728
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.critedge, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.b, %bb.d, %zend_parse_arg_long_ex.exit
  %.1143.ph = phi i32 [ 9, %zend_parse_arg_long_ex.exit ], [ 11, %bb.d ], [ 1, %bb.b ]
  %.0139.ph = phi ptr [ %i.e, %zend_parse_arg_long_ex.exit ], [ %i.e, %bb.d ], [ null, %bb.b ]
  %.1137.ph = phi i32 [ 1, %zend_parse_arg_long_ex.exit ], [ %i.c, %bb.d ], [ 0, %bb.b ]
  call void @zend_wrong_parameter_error(i32 noundef %.1143.ph, i32 noundef %.1137.ph, ptr noundef null, i32 noundef 0, ptr noundef %.0139.ph) #26
  br label %bb.w

.critedge:                                        ; preds = %bb.d
  %i.o = add i32 %i.c, -1                         ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 2 uses
  %i.r = icmp ugt i32 %i.o, 4096                  ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.g, !prof !30

bb.f:                                             ; preds = %.critedge
  %i.s = call noalias ptr @_emalloc(i64 noundef %i.q) #27
  br label %.lr.ph.preheader

bb.g:                                             ; preds = %.critedge
  %i.t = alloca i8, i64 %i.q, align 16
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ %i.t, %bb.g ], [ %i.s, %bb.f ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge163
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge163 ] ; 4 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !16    ; 2 uses
  %.not154 = icmp eq i8 %i.x, 7
  br i1 %.not154, label %.critedge163, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  switch i8 %i.x, label %zend_parse_arg_str_ex.exit [
    i8 6, label %bb.i
    i8 1, label %zend_parse_arg_str_ex.exit.thread
  ], !prof !34

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !16
  br label %zend_parse_arg_str_ex.exit.thread

zend_parse_arg_str_ex.exit.thread:                ; preds = %bb.h, %bb.i
  %storemerge.i = phi ptr [ %i.z, %bb.i ], [ null, %bb.h ]
  store ptr %storemerge.i, ptr %i.y, align 8, !tbaa !19
  br label %.critedge163

zend_parse_arg_str_ex.exit:                       ; preds = %bb.h
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 2                        ; 2 uses
  %i.ac = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.v, ptr noundef %i.y, i32 noundef range(i32 1, 0) %i.ab) #26
  br i1 %i.ac, label %.critedge163, label %.thread178, !prof !21

.thread178:                                       ; preds = %zend_parse_arg_str_ex.exit
  call void @zend_wrong_parameter_type_error(i32 noundef %i.ab, i32 noundef 27, ptr noundef nonnull %i.v) #26
  br label %.loopexit191

.critedge163:                                     ; preds = %zend_parse_arg_str_ex.exit.thread, %.lr.ph, %zend_parse_arg_str_ex.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %exitcond.not, label %.lr.ph202, label %.lr.ph, !llvm.loop !251

.lr.ph202:                                        ; preds = %.critedge163, %.loopexit
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %.loopexit ], [ 0, %.critedge163 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv210 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !16
  switch i8 %i.af, label %bb.r [
    i8 7, label %bb.j
    i8 1, label %bb.q
  ]

bb.j:                                             ; preds = %.lr.ph202
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !58 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !16
  %i.al = shl i32 %i.ak, 2
  %i.am = and i32 %i.al, 16
  %narrow = sub nuw nsw i32 32, %i.am
  %i.an = zext nneg i32 %narrow to i64
  %.not158196 = icmp eq i32 %i.ai, 0
  br i1 %.not158196, label %.loopexit, label %.lr.ph200.preheader

.lr.ph200.preheader:                              ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !16
  br label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %.thread183
  %.0138198 = phi ptr [ %i.bo, %.thread183 ], [ %i.ap, %.lr.ph200.preheader ] ; 4 uses
  %.0140197 = phi i32 [ %i.bp, %.thread183 ], [ %i.ai, %.lr.ph200.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0138198, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !16  ; 2 uses
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %.thread183, label %bb.k, !prof !30

bb.k:                                             ; preds = %.lr.ph200
  %i.at = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.au = icmp eq i8 %i.ar, 6
  br i1 %i.au, label %.thread.i, label %zval_try_get_tmp_string.exit.i, !prof !18
end_hunk_0
