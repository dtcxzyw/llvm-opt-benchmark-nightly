Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/common_ompio_file_read_all?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mca_common_ompio_base_file_read_all:bb.a
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !70
  %i.qy = add nsw i64 %i.qx, %i.qv
  %i.qz = load i32, ptr %i.qq, align 4, !tbaa !8
  %i.ra = sext i32 %i.qz to i64                   ; 2 uses
  %i.rb = getelementptr inbounds [24 x i8], ptr %i.nn, i64 %i.ra ; 3 uses
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !73 ; 2 uses
  %i.rd = icmp eq i64 %i.qy, %i.rc
  br i1 %i.rd, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.lr.ph1269
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !70
  %i.rg = sext i32 %i.qp to i64
  %i.rh = getelementptr [24 x i8], ptr %i.qe, i64 %i.rg
  %i.ri = getelementptr i8, ptr %i.rh, i64 -8     ; 2 uses
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !79
  %i.rk = add i64 %i.rj, %i.rf
  store i64 %i.rk, ptr %i.ri, align 8, !tbaa !79
  br label %bb.ce

bb.cd:                                            ; preds = %.lr.ph1269
  %i.rl = inttoptr i64 %i.rc to ptr
  %i.rm = sext i32 %i.qp to i64
  %i.rn = getelementptr inbounds [24 x i8], ptr %i.qe, i64 %i.rm ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store ptr %i.rl, ptr %i.ro, align 8, !tbaa !77
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !70
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  store i64 %i.rq, ptr %i.rr, align 8, !tbaa !79
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.om, i64 %i.ra
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !12
  %i.ru = getelementptr inbounds i8, ptr %.0636, i64 %i.rt
  store ptr %i.ru, ptr %i.rn, align 8, !tbaa !80
  %i.rv = add nsw i32 %i.qp, 1                    ; 2 uses
  store i32 %i.rv, ptr %i.ep, align 8, !tbaa !59
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %i.rw = phi i32 [ %i.qp, %bb.cc ], [ %i.rv, %bb.cd ] ; 2 uses
  %indvars.iv.next1525 = add nuw nsw i64 %indvars.iv1524, 1 ; 2 uses
  %exitcond1529.not = icmp eq i64 %indvars.iv.next1525, %wide.trip.count1528
  br i1 %exitcond1529.not, label %._crit_edge1270, label %.lr.ph1269, !llvm.loop !81

._crit_edge1270:                                  ; preds = %bb.ce
  %i.rx = icmp eq i32 %i.rw, 0
  br i1 %i.rx, label %bb.cg, label %._crit_edge1270.thread

._crit_edge1270.thread:                           ; preds = %bb.cb, %._crit_edge1270
  %.11.lcssa1678 = phi i32 [ %smax1527, %._crit_edge1270 ], [ 1, %bb.cb ] ; 2 uses
  %i.ry = load ptr, ptr %i.er, align 8, !tbaa !82
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !83
  %i.sb = call i64 %i.sa(ptr noundef nonnull %0) #11
  %i.sc = icmp slt i64 %i.sb, 0
  br i1 %i.sc, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %._crit_edge1270.thread
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.4) #11
  br label %.loopexit1066

bb.cg:                                            ; preds = %._crit_edge1270.thread, %._crit_edge1270
  %.11.lcssa1679 = phi i32 [ %.11.lcssa1678, %._crit_edge1270.thread ], [ %smax1527, %._crit_edge1270 ]
  %i.sd = load i32, ptr %i.v, align 8, !tbaa !38
  %i.se = sext i32 %i.sd to i64
  %i.sf = shl nsw i64 %i.se, 2
  %i.sg = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.sf) #13 ; 3 uses
  %i.sh = icmp eq ptr %i.sg, null
  br i1 %i.sh, label %bb.ch, label %.lr.ph1273.preheader

.lr.ph1273.preheader:                             ; preds = %bb.cg
  %wide.trip.count1534 = zext nneg i32 %.1678.lcssa to i64
  br label %.lr.ph1273

bb.ch:                                            ; preds = %bb.cg
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #11
  br label %.loopexit1066

.lr.ph1273:                                       ; preds = %.lr.ph1273.preheader, %bb.ck
  %indvars.iv1530 = phi i64 [ 0, %.lr.ph1273.preheader ], [ %indvars.iv.next1531, %bb.ck ] ; 2 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv1530
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !8
  %i.sk = sext i32 %i.sj to i64                   ; 2 uses
  %i.sl = getelementptr inbounds [24 x i8], ptr %i.nn, i64 %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !72 ; 3 uses
  %i.so = getelementptr inbounds [8 x i8], ptr %i.om, i64 %i.sk
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !12
  %i.sq = sext i32 %i.sn to i64                   ; 3 uses
  %i.sr = getelementptr inbounds [8 x i8], ptr %.0638, i64 %i.sq
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !53
  %i.st = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.sq ; 2 uses
  %i.su = load i32, ptr %i.st, align 4, !tbaa !8  ; 4 uses
  %i.sv = sext i32 %i.su to i64
  %i.sw = getelementptr inbounds [8 x i8], ptr %i.ss, i64 %i.sv
  store i64 %i.sp, ptr %i.sw, align 8, !tbaa !12
  %i.sx = getelementptr inbounds [4 x i8], ptr %.0647, i64 %i.sq
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !8  ; 2 uses
  %i.sz = icmp slt i32 %i.su, %i.sy
  br i1 %i.sz, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph1273
  %i.ta = add nsw i32 %i.su, 1
  store i32 %i.ta, ptr %i.st, align 4, !tbaa !8
  br label %bb.ck

bb.cj:                                            ; preds = %.lr.ph1273
  %i.tb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.sn, i32 noundef %i.su, i32 noundef %i.sn, i32 noundef %i.sy) ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj
  %indvars.iv.next1531 = add nuw nsw i64 %indvars.iv1530, 1 ; 2 uses
  %exitcond1535.not = icmp eq i64 %indvars.iv.next1531, %wide.trip.count1534
  br i1 %exitcond1535.not, label %._crit_edge1274, label %.lr.ph1273, !llvm.loop !85

._crit_edge1274:                                  ; preds = %bb.ck
  %.pre1572.a = load i32, ptr %i.v, align 8, !tbaa !38
  call void @free(ptr noundef nonnull %i.sg) #11
  %i.tc = icmp sgt i32 %.pre1572.a, 0
  br i1 %i.tc, label %.lr.ph1277, label %.loopexit

.lr.ph1277:                                       ; preds = %._crit_edge1274, %select.unfold
  %indvars.iv1536 = phi i64 [ %indvars.iv.next1537, %select.unfold ], [ 0, %._crit_edge1274 ] ; 8 uses
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %.0623, i64 %indvars.iv1536 ; 2 uses
  store ptr @ompi_request_null, ptr %i.td, align 8, !tbaa !14
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %.0647, i64 %indvars.iv1536
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !8  ; 2 uses
  %i.tg = icmp sgt i32 %i.tf, 0
  br i1 %i.tg, label %bb.cl, label %select.unfold

bb.cl:                                            ; preds = %.lr.ph1277
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %.0640, i64 %indvars.iv1536
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !52
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %.0638, i64 %indvars.iv1536
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !53
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %.0625, i64 %indvars.iv1536 ; 3 uses
  %i.tm = call i32 @ompi_datatype_create_hindexed(i32 noundef %i.tf, ptr noundef %i.ti, ptr noundef %i.tk, ptr noundef nonnull @ompi_mpi_byte, ptr noundef %i.tl) #11 ; 0 uses
  %.val840 = load ptr, ptr %i.tl, align 8, !tbaa !55
  %i.tn = call i32 @opal_datatype_commit(ptr noundef %.val840) #11 ; 0 uses
  %i.to = load ptr, ptr %i.tl, align 8, !tbaa !55 ; 2 uses
  %i.tp = getelementptr i8, ptr %i.to, i64 24
  %.val841 = load i64, ptr %i.tp, align 8, !tbaa !86
  %.not811 = icmp eq i64 %.val841, 0
  br i1 %.not811, label %select.unfold, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.tq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !93
  %i.tr = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %indvars.iv1536
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !8
  %i.tu = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.tv = call i32 %i.tq(ptr noundef %.0636, i64 noundef 1, ptr noundef nonnull %i.to, i32 noundef %i.tt, i32 noundef 123, i32 noundef 4, ptr noundef %i.tu, ptr noundef nonnull %i.td) #11 ; 2 uses
  %.not812 = icmp eq i32 %i.tv, 0
  br i1 %.not812, label %select.unfold, label %.loopexit1066.loopexit

select.unfold:                                    ; preds = %bb.cm, %bb.cl, %.lr.ph1277
  %indvars.iv.next1537 = add nuw nsw i64 %indvars.iv1536, 1 ; 3 uses
  %i.tw = load i32, ptr %i.v, align 8, !tbaa !38
  %i.tx = sext i32 %i.tw to i64
  %i.ty = icmp slt i64 %indvars.iv.next1537, %i.tx
  br i1 %i.ty, label %.lr.ph1277, label %.loopexit.loopexit, !llvm.loop !95

.loopexit.loopexit:                               ; preds = %select.unfold
  %i.tz = trunc nuw nsw i64 %indvars.iv.next1537 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge1274, %.loopexit1070
  %.14 = phi i32 [ %.7707, %.loopexit1070 ], [ 0, %._crit_edge1274 ], [ %i.tz, %.loopexit.loopexit ] ; 4 uses
  %.3683 = phi ptr [ %.2682, %.loopexit1070 ], [ %i.nq, %._crit_edge1274 ], [ %i.nq, %.loopexit.loopexit ] ; 4 uses
  %.2653 = phi ptr [ %.1652, %.loopexit1070 ], [ %i.om, %._crit_edge1274 ], [ %i.om, %.loopexit.loopexit ] ; 4 uses
  %.3633 = phi ptr [ %.2632, %.loopexit1070 ], [ %i.nn, %._crit_edge1274 ], [ %i.nn, %.loopexit.loopexit ] ; 4 uses
  %.not804 = icmp eq i32 %.5676, 0
  br i1 %.not804, label %bb.cy, label %bb.cn

bb.cn:                                            ; preds = %.loopexit
  %i.ua = sext i32 %.5676 to i64                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  store ptr @ompi_mpi_datatype_null, ptr %i.g, align 8, !tbaa !55
  %i.ub = call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 10, i64 noundef 4) #13 ; 7 uses
  %i.uc = call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 10, i64 noundef 8) #13 ; 5 uses
  %i.ud = icmp eq ptr %i.ub, null
  %i.ue = icmp eq ptr %i.uc, null
  %or.cond = or i1 %i.ud, %i.ue
  br i1 %or.cond, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.uf = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.ug = sext i32 %.06641292 to i64
  %i.uh = getelementptr inbounds [16 x i8], ptr %i.uf, i64 %i.ug ; 2 uses
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !63
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = add i64 %.06581293, %i.uj               ; 2 uses
  %.phi.trans.insert1575.a = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %.pre1576 = load i64, ptr %.phi.trans.insert1575.a, align 8, !tbaa !65
  %i.ul = sub i64 %.pre1576, %.06581293           ; 3 uses
  %.not808.peel = icmp ugt i64 %i.ul, %i.ua
  br i1 %.not808.peel, label %.thread, label %bb.cp

.thread:                                          ; preds = %bb.co
  %5 = add i64 %.06581293, %i.ua
  store i32 %.5676, ptr %i.ub, align 4, !tbaa !8
  br label %bb.cu

bb.cp:                                            ; preds = %bb.co
  %i.um = trunc i64 %i.ul to i32
  %sext.peel = shl i64 %i.ul, 32
  %i.un = ashr exact i64 %sext.peel, 32
  %i.uo = sub nsw i64 %i.ua, %i.un                ; 2 uses
  %i.up = add nsw i32 %.06641292, 1               ; 2 uses
  store i32 %i.um, ptr %i.ub, align 4, !tbaa !8
  %.not805.peel = icmp eq i64 %i.uo, 0
  br i1 %.not805.peel, label %bb.cu, label %.preheader1065.peel.next

bb.cq:                                            ; preds = %bb.cn
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #11
  br label %.thread847

.preheader1065.peel.next:                         ; preds = %bb.cp, %bb.ct
  %i.uq = phi ptr [ %i.uy, %bb.ct ], [ %i.uf, %bb.cp ]
  %indvars.iv1539 = phi i64 [ %indvars.iv.next1540, %bb.ct ], [ 0, %bb.cp ] ; 2 uses
  %.06041285.a = phi i32 [ %.1605, %bb.ct ], [ 10, %bb.cp ] ; 2 uses
  %.06071283 = phi i64 [ %i.vg, %bb.ct ], [ %i.uo, %bb.cp ] ; 4 uses
  %.16121282 = phi ptr [ %.2613, %bb.ct ], [ %i.uc, %bb.cp ] ; 2 uses
  %.16151281 = phi ptr [ %.2616, %bb.ct ], [ %i.ub, %bb.cp ] ; 2 uses
  %.16651279 = phi i32 [ %i.vh, %bb.ct ], [ %i.up, %bb.cp ] ; 3 uses
  %indvars.iv.next1540 = add nuw nsw i64 %indvars.iv1539, 1 ; 5 uses
  %6 = trunc nuw nsw i64 %indvars.iv.next1540 to i32
  %.urem = urem i32 %6, 10
  %i.ur = icmp eq i32 %.urem, 0
  br i1 %i.ur, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %.preheader1065.peel.next
  %i.us = add nsw i32 %.06041285.a, 10            ; 2 uses
  %i.ut = sext i32 %i.us to i64                   ; 2 uses
  %i.uu = shl nsw i64 %i.ut, 2
  %i.uv = call ptr @realloc(ptr noundef nonnull %.16151281, i64 noundef %i.uu) #14
  %i.uw = shl nsw i64 %i.ut, 3
  %i.ux = call ptr @realloc(ptr noundef %.16121282, i64 noundef %i.uw) #14
  %.pre1577.a = load ptr, ptr %i.b, align 8, !tbaa !9
  br label %bb.cs

bb.cs:                                            ; preds = %.preheader1065.peel.next, %bb.cr
  %i.uy = phi ptr [ %.pre1577.a, %bb.cr ], [ %i.uq, %.preheader1065.peel.next ] ; 3 uses
  %.2616 = phi ptr [ %i.uv, %bb.cr ], [ %.16151281, %.preheader1065.peel.next ] ; 4 uses
  %.2613 = phi ptr [ %i.ux, %bb.cr ], [ %.16121282, %.preheader1065.peel.next ] ; 3 uses
  %.1605 = phi i32 [ %i.us, %bb.cr ], [ %.06041285.a, %.preheader1065.peel.next ]
  %i.uz = sext i32 %.16651279 to i64              ; 2 uses
  %i.va = getelementptr inbounds [16 x i8], ptr %i.uy, i64 %i.uz
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !63
  %i.vc = ptrtoint ptr %i.vb to i64
  %i.vd = sub i64 %i.vc, %i.uk
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %.2613, i64 %indvars.iv.next1540
  store i64 %i.vd, ptr %i.ve, align 8, !tbaa !12
  %.phi.trans.insert1579 = getelementptr inbounds [16 x i8], ptr %i.uy, i64 %i.uz
  %.phi.trans.insert1580 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert1579, i64 8
  %.pre1581 = load i64, ptr %.phi.trans.insert1580, align 8, !tbaa !65 ; 3 uses
  %.not808 = icmp ult i64 %.06071283, %.pre1581
  br i1 %.not808, label %.thread1685, label %bb.ct

.thread1685:                                      ; preds = %bb.cs
  %.sink15581690 = trunc i64 %.06071283 to i32
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.2616, i64 %indvars.iv.next1540
  store i32 %.sink15581690, ptr %7, align 4, !tbaa !8
  br label %.loopexit1543

bb.ct:                                            ; preds = %bb.cs
  %sext = shl i64 %.pre1581, 32
  %i.vf = ashr exact i64 %sext, 32
  %i.vg = sub i64 %.06071283, %i.vf               ; 2 uses
  %i.vh = add nsw i32 %.16651279, 1               ; 2 uses
  %.sink1558 = trunc i64 %.pre1581 to i32
  %8 = getelementptr inbounds nuw [4 x i8], ptr %.2616, i64 %indvars.iv.next1540
  store i32 %.sink1558, ptr %8, align 4, !tbaa !8
  %.not805 = icmp eq i64 %i.vg, 0
  br i1 %.not805, label %.loopexit1543, label %.preheader1065.peel.next, !llvm.loop !96

.loopexit1543:                                    ; preds = %bb.ct, %.thread1685
  %.26601693 = phi i64 [ %.06071283, %.thread1685 ], [ 0, %bb.ct ]
  %.26661692 = phi i32 [ %.16651279, %.thread1685 ], [ %i.vh, %bb.ct ]
  %9 = trunc nsw i64 %indvars.iv1539 to i32
  %i.vi = add nsw i32 %9, 2
  br label %bb.cu

bb.cu:                                            ; preds = %.thread, %.loopexit1543, %bb.cp
  %.2666.lcssa = phi i32 [ %i.up, %bb.cp ], [ %.26661692, %.loopexit1543 ], [ %.06641292, %.thread ]
  %.2660.lcssa = phi i64 [ 0, %bb.cp ], [ %.26601693, %.loopexit1543 ], [ %5, %.thread ]
  %.3617.lcssa = phi ptr [ %i.ub, %bb.cp ], [ %.2616, %.loopexit1543 ], [ %i.ub, %.thread ] ; 3 uses
  %.3.lcssa = phi ptr [ %i.uc, %bb.cp ], [ %.2613, %.loopexit1543 ], [ %i.uc, %.thread ] ; 3 uses
  %.06061284.lcssa.wide = phi i32 [ 1, %bb.cp ], [ %i.vi, %.loopexit1543 ], [ 1, %.thread ]
  %i.vj = call i32 @ompi_datatype_create_hindexed(i32 noundef %.06061284.lcssa.wide, ptr noundef nonnull %.3617.lcssa, ptr noundef %.3.lcssa, ptr noundef nonnull @ompi_mpi_byte, ptr noundef nonnull %i.g) #11 ; 0 uses
  %.val = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.vk = call i32 @opal_datatype_commit(ptr noundef %.val) #11 ; 0 uses
  %i.vl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !98
  %i.vm = inttoptr i64 %i.uk to ptr
  %i.vn = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.vo = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.vp = call i32 %i.vl(ptr noundef %i.vm, i64 noundef 1, ptr noundef %i.vn, i32 noundef %i.u, i32 noundef 123, ptr noundef %i.vo, ptr noundef nonnull %i.f) #11 ; 2 uses
  %i.vq = load ptr, ptr %i.g, align 8, !tbaa !55
  %.not806 = icmp eq ptr %i.vq, @ompi_mpi_datatype_null
  br i1 %.not806, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.vr = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.g) #11 ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.not807 = icmp eq i32 %i.vp, 0
  br i1 %.not807, label %bb.cx, label %.thread847

.thread847:                                       ; preds = %bb.cw, %bb.cq
  %.4712.ph = phi i32 [ -2, %bb.cq ], [ %i.vp, %bb.cw ]
  %.4618.ph = phi ptr [ %i.ub, %bb.cq ], [ %.3617.lcssa, %bb.cw ]
  %.4.ph = phi ptr [ %i.uc, %bb.cq ], [ %.3.lcssa, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  br label %.loopexit1066

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.loopexit
  %.4668 = phi i32 [ %.2666.lcssa, %bb.cx ], [ %.06641292, %.loopexit ]
  %.4662 = phi i64 [ %.2660.lcssa, %bb.cx ], [ %.06581293, %.loopexit ]
  %.5619 = phi ptr [ %.3617.lcssa, %bb.cx ], [ %.06141297, %.loopexit ] ; 3 uses
  %.5 = phi ptr [ %.3.lcssa, %bb.cx ], [ %.06111299, %.loopexit ] ; 3 uses
  %i.vs = load i32, ptr %i.dn, align 8, !tbaa !51
  %i.vt = icmp eq i32 %i.u, %i.vs
  br i1 %i.vt, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.vu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !99
  %i.vv = load i32, ptr %i.v, align 8, !tbaa !38
  %i.vw = sext i32 %i.vv to i64
  %i.vx = call i32 %i.vu(i64 noundef %i.vw, ptr noundef %.0623, ptr noundef null) #11 ; 2 uses
  %.not809 = icmp eq i32 %i.vx, 0
  br i1 %.not809, label %bb.da, label %.loopexit1066

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.vy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !101
  %i.vz = call i32 %i.vy(ptr noundef nonnull %i.f, ptr noundef null) #11 ; 2 uses
  %.not810 = icmp eq i32 %i.vz, 0
  br i1 %.not810, label %._crit_edge1250.thread, label %.loopexit1066

._crit_edge1250.thread:                           ; preds = %.preheader1069, %bb.da, %._crit_edge1250
  %.15 = phi i32 [ %.14, %bb.da ], [ %i.mo, %._crit_edge1250 ], [ 0, %.preheader1069 ] ; 2 uses
  %.4684 = phi ptr [ %.3683, %bb.da ], [ %.2682, %._crit_edge1250 ], [ %.2682, %.preheader1069 ] ; 2 uses
  %.5669 = phi i32 [ %.4668, %bb.da ], [ %.06641292, %._crit_edge1250 ], [ %.06641292, %.preheader1069 ]
  %.5663 = phi i64 [ %.4662, %bb.da ], [ %.06581293, %._crit_edge1250 ], [ %.06581293, %.preheader1069 ]
  %.3654 = phi ptr [ %.2653, %bb.da ], [ %.1652, %._crit_edge1250 ], [ %.1652, %.preheader1069 ] ; 2 uses
  %.4634 = phi ptr [ %.3633, %bb.da ], [ %.2632, %._crit_edge1250 ], [ %.2632, %.preheader1069 ] ; 2 uses
  %.6620 = phi ptr [ %.5619, %bb.da ], [ %.06141297, %._crit_edge1250 ], [ %.06141297, %.preheader1069 ] ; 2 uses
  %.6 = phi ptr [ %.5, %bb.da ], [ %.06111299, %._crit_edge1250 ], [ %.06111299, %.preheader1069 ] ; 2 uses
  %indvars.iv.next1545 = add nuw nsw i64 %indvars.iv1544, 1 ; 2 uses
  %exitcond1548.not = icmp eq i64 %indvars.iv.next1545, %wide.trip.count1547
  br i1 %exitcond1548.not, label %.loopexit1066, label %bb.ai, !llvm.loop !102

.loopexit1066.loopexit:                           ; preds = %bb.cm
  %i.wa = trunc nuw nsw i64 %indvars.iv1536 to i32
  br label %.loopexit1066

.loopexit1066:                                    ; preds = %bb.cz, %bb.da, %._crit_edge1250.thread, %.loopexit1066.loopexit, %.loopexit1075, %.thread847, %bb.ch, %bb.cf, %bb.ca, %bb.bw, %bb.bu, %bb.av, %bb.at
  %.6714 = phi i32 [ -1, %bb.cf ], [ -2, %bb.bw ], [ -2, %bb.ca ], [ 0, %.loopexit1075 ], [ %.4712.ph, %.thread847 ], [ -2, %bb.ch ], [ -2, %bb.at ], [ -2, %bb.av ], [ -2, %bb.bu ], [ %i.tv, %.loopexit1066.loopexit ], [ 0, %._crit_edge1250.thread ], [ %i.vx, %bb.cz ], [ %i.vz, %bb.da ] ; 2 uses
  %.16 = phi i32 [ %.11.lcssa1678, %bb.cf ], [ %i.mo, %bb.bw ], [ %.10.lcssa, %bb.ca ], [ %.3703, %.loopexit1075 ], [ %.14, %.thread847 ], [ %.11.lcssa1679, %bb.ch ], [ %.6706, %bb.at ], [ %.6706, %bb.av ], [ %i.mo, %bb.bu ], [ %i.wa, %.loopexit1066.loopexit ], [ %.15, %._crit_edge1250.thread ], [ %.14, %bb.cz ], [ %.14, %bb.da ] ; 2 uses
  %.5685 = phi ptr [ %i.nq, %bb.cf ], [ null, %bb.bw ], [ %i.nq, %bb.ca ], [ null, %.loopexit1075 ], [ %.3683, %.thread847 ], [ %i.nq, %bb.ch ], [ %.06801291, %bb.at ], [ %.06801291, %bb.av ], [ %.2682, %bb.bu ], [ %i.nq, %.loopexit1066.loopexit ], [ %.4684, %._crit_edge1250.thread ], [ %.3683, %bb.cz ], [ %.3683, %bb.da ] ; 2 uses
  %.4655 = phi ptr [ %i.om, %bb.cf ], [ %.1652, %bb.bw ], [ %i.om, %bb.ca ], [ null, %.loopexit1075 ], [ %.2653, %.thread847 ], [ %i.om, %bb.ch ], [ %.06511294, %bb.at ], [ %.06511294, %bb.av ], [ %.1652, %bb.bu ], [ %i.om, %.loopexit1066.loopexit ], [ %.3654, %._crit_edge1250.thread ], [ %.2653, %bb.cz ], [ %.2653, %bb.da ] ; 2 uses
  %.5635 = phi ptr [ %i.nn, %bb.cf ], [ %i.nn, %bb.bw ], [ %i.nn, %bb.ca ], [ null, %.loopexit1075 ], [ %.3633, %.thread847 ], [ %i.nn, %bb.ch ], [ %.06301296, %bb.at ], [ %.06301296, %bb.av ], [ null, %bb.bu ], [ %i.nn, %.loopexit1066.loopexit ], [ %.4634, %._crit_edge1250.thread ], [ %.3633, %bb.cz ], [ %.3633, %bb.da ] ; 2 uses
  %.7621 = phi ptr [ %.06141297, %bb.cf ], [ %.06141297, %bb.bw ], [ %.06141297, %bb.ca ], [ null, %.loopexit1075 ], [ %.4618.ph, %.thread847 ], [ %.06141297, %bb.ch ], [ %.06141297, %bb.at ], [ %.06141297, %bb.av ], [ %.06141297, %bb.bu ], [ %.06141297, %.loopexit1066.loopexit ], [ %.6620, %._crit_edge1250.thread ], [ %.5619, %bb.cz ], [ %.5619, %bb.da ] ; 2 uses
  %.7 = phi ptr [ %.06111299, %bb.cf ], [ %.06111299, %bb.bw ], [ %.06111299, %bb.ca ], [ null, %.loopexit1075 ], [ %.4.ph, %.thread847 ], [ %.06111299, %bb.ch ], [ %.06111299, %bb.at ], [ %.06111299, %bb.av ], [ %.06111299, %bb.bu ], [ %.06111299, %.loopexit1066.loopexit ], [ %.6, %._crit_edge1250.thread ], [ %.5, %bb.cz ], [ %.5, %bb.da ] ; 2 uses
  %.not816 = icmp eq ptr %.0636, null
  br i1 %.not816, label %.thread855, label %bb.db

bb.db:                                            ; preds = %.thread892, %.loopexit1066
  %.7929 = phi ptr [ null, %.thread892 ], [ %.7, %.loopexit1066 ]
  %.7621928 = phi ptr [ null, %.thread892 ], [ %.7621, %.loopexit1066 ]
  %.1624926 = phi ptr [ %i.ed, %.thread892 ], [ %.0623, %.loopexit1066 ]
  %.1626925 = phi ptr [ null, %.thread892 ], [ %.0625, %.loopexit1066 ]
  %.5635922 = phi ptr [ null, %.thread892 ], [ %.5635, %.loopexit1066 ]
  %.1637921 = phi ptr [ %i.ef, %.thread892 ], [ %.0636, %.loopexit1066 ]
  %.1639920 = phi ptr [ %i.dy, %.thread892 ], [ %.0638, %.loopexit1066 ]
  %.1641919 = phi ptr [ %i.dw, %.thread892 ], [ %.0640, %.loopexit1066 ]
  %.1648918 = phi ptr [ %i.dt, %.thread892 ], [ %.0647, %.loopexit1066 ]
  %.4655916 = phi ptr [ null, %.thread892 ], [ %.4655, %.loopexit1066 ]
  %.5685914 = phi ptr [ null, %.thread892 ], [ %.5685, %.loopexit1066 ]
  %.16913 = phi i32 [ %.2702.lcssa, %.thread892 ], [ %.16, %.loopexit1066 ]
  %.6714912 = phi i32 [ -2, %.thread892 ], [ %.6714, %.loopexit1066 ]
  call void @free(ptr noundef nonnull %.1637921) #11
  br label %.thread855

.thread855:                                       ; preds = %bb.ag, %bb.ae, %bb.ad, %bb.ab, %bb.z, %bb.db, %.loopexit1066
  %.7891 = phi ptr [ %.7, %.loopexit1066 ], [ %.7929, %bb.db ], [ null, %bb.ag ], [ null, %bb.z ], [ null, %bb.ab ], [ null, %bb.ad ], [ null, %bb.ae ] ; 2 uses
  %.7621890 = phi ptr [ %.7621, %.loopexit1066 ], [ %.7621928, %bb.db ], [ null, %bb.ag ], [ null, %bb.z ], [ null, %bb.ab ], [ null, %bb.ad ], [ null, %bb.ae ] ; 2 uses
  %.1624888 = phi ptr [ %.0623, %.loopexit1066 ], [ %.1624926, %bb.db ], [ %i.ed, %bb.ag ], [ null, %bb.z ], [ null, %bb.ab ], [ null, %bb.ad ], [ null, %bb.ae ] ; 2 uses
  %.1626887 = phi ptr [ %.0625, %.loopexit1066 ], [ %.1626925, %bb.db ], [ null, %bb.ag ], [ null, %bb.z ], [ null, %bb.ab ], [ null, %bb.ad ], [ null, %bb.ae ] ; 2 uses
  %.5635884 = phi ptr [ %.5635, %.loopexit1066 ], [ %.5635922, %bb.db ], [ null, %bb.ag ], [ null, %bb.z ], [ null, %bb.ab ], [ null, %bb.ad ], [ null, %bb.ae ] ; 2 uses
  %.1639883 = phi ptr [ %.0638, %.loopexit1066 ], [ %.1639920, %bb.db ], [ %i.dy, %bb.ag ], [ null, %bb.z ], [ null, %bb.ab ], [ null, %bb.ad ], [ %i.dy, %bb.ae ] ; 2 uses
  %.1641882 = phi ptr [ %.0640, %.loopexit1066 ], [ %.1641919, %bb.db ], [ %i.dw, %bb.ag ], [ null, %bb.z ], [ null, %bb.ab ], [ %i.dw, %bb.ad ], [ %i.dw, %bb.ae ] ; 2 uses
  %.1648881 = phi ptr [ %.0647, %.loopexit1066 ], [ %.1648918, %bb.db ], [ %i.dt, %bb.ag ], [ null, %bb.z ], [ %i.dt, %bb.ab ], [ %i.dt, %bb.ad ], [ %i.dt, %bb.ae ] ; 2 uses
  %.4655879 = phi ptr [ %.4655, %.loopexit1066 ], [ %.4655916, %bb.db ], [ null, %bb.ag ], [ null, %bb.z ], [ null, %bb.ab ], [ null, %bb.ad ], [ null, %bb.ae ] ; 2 uses
  %.5685877 = phi ptr [ %.5685, %.loopexit1066 ], [ %.5685914, %bb.db ], [ null, %bb.ag ], [ null, %bb.z ], [ null, %bb.ab ], [ null, %bb.ad ], [ null, %bb.ae ] ; 2 uses
  %.16876 = phi i32 [ %.16, %.loopexit1066 ], [ %.16913, %bb.db ], [ %.2702.lcssa, %bb.ag ], [ %.1701.lcssa, %bb.z ], [ %.1701.lcssa, %bb.ab ], [ %.1701.lcssa, %bb.ad ], [ %.2702.lcssa, %bb.ae ] ; 2 uses
  %.6714875 = phi i32 [ %.6714, %.loopexit1066 ], [ %.6714912, %bb.db ], [ -2, %bb.ag ], [ -2, %bb.z ], [ -2, %bb.ab ], [ -2, %bb.ad ], [ -2, %bb.ae ] ; 2 uses
  %.not817 = icmp eq ptr %.0628, null
  br i1 %.not817, label %.thread855.thread, label %bb.dc

bb.dc:                                            ; preds = %.thread855
  call void @free(ptr noundef nonnull %.0628) #11
  br label %.thread855.thread

.thread855.thread:                                ; preds = %bb.q, %bb.t, %bb.dc, %.thread855
  %.6714875963 = phi i32 [ %.6714875, %.thread855 ], [ %.6714875, %bb.dc ], [ -2, %bb.t ], [ %i.cy, %bb.q ] ; 2 uses
  %.16876962 = phi i32 [ %.16876, %.thread855 ], [ %.16876, %bb.dc ], [ %.1701.lcssa, %bb.t ], [ %.1701.lcssa, %bb.q ] ; 2 uses
  %.5685877961 = phi ptr [ %.5685877, %.thread855 ], [ %.5685877, %bb.dc ], [ null, %bb.t ], [ null, %bb.q ] ; 2 uses
  %.4655879959 = phi ptr [ %.4655879, %.thread855 ], [ %.4655879, %bb.dc ], [ null, %bb.t ], [ null, %bb.q ] ; 2 uses
  %.1648881957 = phi ptr [ %.1648881, %.thread855 ], [ %.1648881, %bb.dc ], [ null, %bb.t ], [ null, %bb.q ] ; 2 uses
  %.1641882956 = phi ptr [ %.1641882, %.thread855 ], [ %.1641882, %bb.dc ], [ null, %bb.t ], [ null, %bb.q ] ; 2 uses
  %.1639883955 = phi ptr [ %.1639883, %.thread855 ], [ %.1639883, %bb.dc ], [ null, %bb.t ], [ null, %bb.q ] ; 2 uses
  %.5635884954 = phi ptr [ %.5635884, %.thread855 ], [ %.5635884, %bb.dc ], [ null, %bb.t ], [ null, %bb.q ] ; 2 uses
  %.1626887952 = phi ptr [ %.1626887, %.thread855 ], [ %.1626887, %bb.dc ], [ null, %bb.t ], [ null, %bb.q ] ; 2 uses
  %.1624888951 = phi ptr [ %.1624888, %.thread855 ], [ %.1624888, %bb.dc ], [ null, %bb.t ], [ null, %bb.q ] ; 2 uses
  %.7621890949 = phi ptr [ %.7621890, %.thread855 ], [ %.7621890, %bb.dc ], [ null, %bb.t ], [ null, %bb.q ] ; 2 uses
  %.7891948 = phi ptr [ %.7891, %.thread855 ], [ %.7891, %bb.dc ], [ null, %bb.t ], [ null, %bb.q ] ; 2 uses
  %.not818 = icmp eq ptr %.0656, null
  br i1 %.not818, label %.thread855.thread.thread.thread1029, label %bb.dd

bb.dd:                                            ; preds = %.thread855.thread
  call void @free(ptr noundef nonnull %.0656) #11
  br label %.thread855.thread.thread.thread1029

.thread855.thread.thread.thread1029:              ; preds = %.thread855.thread, %bb.dd, %bb.m, %bb.p, %bb.k
  %.67148759639811060 = phi i32 [ %i.ba, %bb.k ], [ -2, %bb.m ], [ -2, %bb.p ], [ %.6714875963, %bb.dd ], [ %.6714875963, %.thread855.thread ]
  %.168769629821059 = phi i32 [ %.0700.lcssa, %bb.k ], [ %.0700.lcssa, %bb.m ], [ %.1701.lcssa, %bb.p ], [ %.16876962, %bb.dd ], [ %.16876962, %.thread855.thread ]
  %.56858779619831058 = phi ptr [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.p ], [ %.5685877961, %bb.dd ], [ %.5685877961, %.thread855.thread ]
  %.46558799599841057 = phi ptr [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.p ], [ %.4655879959, %bb.dd ], [ %.4655879959, %.thread855.thread ]
  %.16488819579861055 = phi ptr [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.p ], [ %.1648881957, %bb.dd ], [ %.1648881957, %.thread855.thread ]
  %.16418829569871054 = phi ptr [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.p ], [ %.1641882956, %bb.dd ], [ %.1641882956, %.thread855.thread ]
  %.16398839559881053 = phi ptr [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.p ], [ %.1639883955, %bb.dd ], [ %.1639883955, %.thread855.thread ]
  %.56358849549891052 = phi ptr [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.p ], [ %.5635884954, %bb.dd ], [ %.5635884954, %.thread855.thread ]
  %.06278869539901051 = phi ptr [ null, %bb.k ], [ null, %bb.m ], [ %i.be, %bb.p ], [ %i.be, %bb.dd ], [ %i.be, %.thread855.thread ]
  %.16268879529911050 = phi ptr [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.p ], [ %.1626887952, %bb.dd ], [ %.1626887952, %.thread855.thread ]
  %.16248889519921049 = phi ptr [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.p ], [ %.1624888951, %bb.dd ], [ %.1624888951, %.thread855.thread ]
  %.76218909499941047 = phi ptr [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.p ], [ %.7621890949, %bb.dd ], [ %.7621890949, %.thread855.thread ]
  %.78919489951046 = phi ptr [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.p ], [ %.7891948, %bb.dd ], [ %.7891948, %.thread855.thread ]
  call void @free(ptr noundef nonnull %i.aw) #11
  br label %.thread855.thread.thread.thread

.thread855.thread.thread.thread:                  ; preds = %bb.a, %bb.e, %bb.g, %bb.h, %._crit_edge, %bb.j, %bb.d, %.thread855.thread.thread.thread1029
  %.67148759639811025 = phi i32 [ -1, %bb.d ], [ %.67148759639811060, %.thread855.thread.thread.thread1029 ], [ %i.j, %bb.a ], [ %i.r, %bb.e ], [ -2, %bb.g ], [ %i.ad, %bb.h ], [ %i.as, %._crit_edge ], [ -2, %bb.j ]
  %.168769629821024 = phi i32 [ 0, %bb.d ], [ %.168769629821059, %.thread855.thread.thread.thread1029 ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.0700.lcssa, %._crit_edge ], [ %.0700.lcssa, %bb.j ]
  %.56858779619831023 = phi ptr [ null, %bb.d ], [ %.56858779619831058, %.thread855.thread.thread.thread1029 ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %._crit_edge ], [ null, %bb.j ] ; 2 uses
  %.46558799599841022 = phi ptr [ null, %bb.d ], [ %.46558799599841057, %.thread855.thread.thread.thread1029 ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %._crit_edge ], [ null, %bb.j ] ; 2 uses
  %.16488819579861021 = phi ptr [ null, %bb.d ], [ %.16488819579861055, %.thread855.thread.thread.thread1029 ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %._crit_edge ], [ null, %bb.j ] ; 2 uses
  %.16418829569871020 = phi ptr [ null, %bb.d ], [ %.16418829569871054, %.thread855.thread.thread.thread1029 ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %._crit_edge ], [ null, %bb.j ] ; 3 uses
  %.16398839559881019 = phi ptr [ null, %bb.d ], [ %.16398839559881053, %.thread855.thread.thread.thread1029 ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %._crit_edge ], [ null, %bb.j ] ; 3 uses
  %.56358849549891018 = phi ptr [ null, %bb.d ], [ %.56358849549891052, %.thread855.thread.thread.thread1029 ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %._crit_edge ], [ null, %bb.j ] ; 2 uses
  %.06278869539901017 = phi ptr [ null, %bb.d ], [ %.06278869539901051, %.thread855.thread.thread.thread1029 ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %._crit_edge ], [ null, %bb.j ] ; 2 uses
  %.16268879529911016 = phi ptr [ null, %bb.d ], [ %.16268879529911050, %.thread855.thread.thread.thread1029 ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %._crit_edge ], [ null, %bb.j ] ; 3 uses
  %.16248889519921015 = phi ptr [ null, %bb.d ], [ %.16248889519921049, %.thread855.thread.thread.thread1029 ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %._crit_edge ], [ null, %bb.j ] ; 2 uses
  %.06228899509931014 = phi i32 [ -1, %bb.d ], [ %i.u, %.thread855.thread.thread.thread1029 ], [ -1, %bb.a ], [ -1, %bb.e ], [ %i.u, %bb.g ], [ %i.u, %bb.h ], [ %i.u, %._crit_edge ], [ %i.u, %bb.j ]
  %.76218909499941013 = phi ptr [ null, %bb.d ], [ %.76218909499941047, %.thread855.thread.thread.thread1029 ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %._crit_edge ], [ null, %bb.j ] ; 2 uses
  %.78919489951012 = phi ptr [ null, %bb.d ], [ %.78919489951046, %.thread855.thread.thread.thread1029 ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %._crit_edge ], [ null, %bb.j ] ; 2 uses
  %i.wb = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %.not820 = icmp eq ptr %i.wb, null
  br i1 %.not820, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.thread855.thread.thread.thread
  call void @free(ptr noundef nonnull %i.wb) #11
  store ptr null, ptr %i.b, align 8, !tbaa !9
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.thread855.thread.thread.thread
  %i.wc = load ptr, ptr %i.c, align 8, !tbaa !9   ; 2 uses
  %.not821 = icmp eq ptr %i.wc, null
  br i1 %.not821, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @free(ptr noundef nonnull %i.wc) #11
  store ptr null, ptr %i.c, align 8, !tbaa !9
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.not822 = icmp eq ptr %.06278869539901017, null
end_hunk_0
