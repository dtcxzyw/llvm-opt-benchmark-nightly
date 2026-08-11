inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@mca_fcoll_vulcan_file_write_all:bb.a
  %i.ly = call i32 %i.lo(ptr noundef %i.lq, i32 noundef %i.ls, ptr noundef %i.lt, ptr noundef %i.lv, ptr noundef nonnull %i.is, ptr noundef nonnull %i.jt, ptr noundef %i.lt, ptr noundef %i.lk, ptr noundef %i.lx) #12
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv705
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !9
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv705
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !8
  %i.md = load ptr, ptr %i.ic, align 8, !tbaa !123 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ik, i64 128
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !121
  %i.mg = load ptr, ptr %i.id, align 8, !tbaa !57
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv705
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !8
  %i.mj = load ptr, ptr %i.al, align 8, !tbaa !49
  %i.mk = load ptr, ptr %i.co, align 8, !tbaa !56
  %i.ml = call i32 @ompi_fcoll_base_coll_allgatherv_array(ptr noundef %i.ma, i32 noundef %i.mc, ptr noundef %i.md, ptr noundef %i.mf, ptr noundef nonnull %i.is, ptr noundef nonnull %i.jt, ptr noundef %i.md, i32 noundef %i.mi, ptr noundef %i.mj, i32 noundef %i.ip, ptr noundef %i.mk) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1473 = phi i32 [ %i.ly, %bb.ae ], [ %i.ml, %bb.af ]
  %.not525 = icmp eq i32 %.1473, 0
  br i1 %.not525, label %bb.ah, label %.preheader546

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not524, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mm = zext i32 %.0484.lcssa to i64
  %i.mn = shl nuw nsw i64 %i.mm, 2
  %i.mo = call noalias ptr @malloc(i64 noundef %i.mn) #13 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %i.mo, ptr %i.mp, align 8, !tbaa !125
  %i.mq = icmp eq ptr %i.mo, null
  br i1 %i.mq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #12
  br label %.preheader546

bb.ak:                                            ; preds = %bb.ai
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ik, i64 128
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !121
  %i.mt = call i32 @ompi_fcoll_base_sort_iovec(ptr noundef %i.ms, i32 noundef %.0484.lcssa, ptr noundef nonnull %i.mo) #12 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %i.mu = load ptr, ptr %i.g, align 8, !tbaa !9   ; 2 uses
  %.not526 = icmp eq ptr %i.mu, null
  br i1 %.not526, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.mu) #12
  store ptr null, ptr %i.g, align 8, !tbaa !9
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  call void @free(ptr noundef nonnull %i.jt) #12
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ik, i64 64
  store i64 %i.ie, ptr %i.mv, align 8, !tbaa !126
  %i.mw = load ptr, ptr %i.id, align 8, !tbaa !57
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv705
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !8
  %i.mz = load i32, ptr %i.if, align 8, !tbaa !58
  %i.na = icmp eq i32 %i.my, %i.mz
  br i1 %i.na, label %bb.ao, label %.loopexit554

bb.ao:                                            ; preds = %bb.an
  %i.nb = load i32, ptr %i.ak, align 8, !tbaa !48 ; 4 uses
  %i.nc = sext i32 %i.nb to i64                   ; 5 uses
  %i.nd = shl nsw i64 %i.nc, 2
  %i.ne = call noalias ptr @malloc(i64 noundef %i.nd) #13 ; 2 uses
  store ptr %i.ne, ptr %i.ik, align 8, !tbaa !127
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #12
  br label %.preheader546

bb.aq:                                            ; preds = %bb.ao
  %i.ng = call noalias ptr @calloc(i64 noundef %i.nc, i64 noundef 4) #14 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  store ptr %i.ng, ptr %i.nh, align 8, !tbaa !128
  %i.ni = icmp eq ptr %i.ng, null
  br i1 %i.ni, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #12
  br label %.preheader546

bb.as:                                            ; preds = %bb.aq
  %i.nj = call noalias ptr @calloc(i64 noundef %i.nc, i64 noundef 8) #14 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  store ptr %i.nj, ptr %i.nk, align 8, !tbaa !129
  %i.nl = icmp eq ptr %i.nj, null
  br i1 %i.nl, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #12
  br label %.preheader546

bb.au:                                            ; preds = %bb.as
  %i.nm = call noalias ptr @calloc(i64 noundef %i.nc, i64 noundef 8) #14 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  store ptr %i.nm, ptr %i.nn, align 8, !tbaa !130
  %i.no = icmp eq ptr %i.nm, null
  br i1 %i.no, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #12
  br label %.preheader546

bb.aw:                                            ; preds = %bb.au
  %i.np = call noalias ptr @malloc(i64 noundef %i.ie) #13 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ik, i64 96
  store ptr %i.np, ptr %i.nq, align 8, !tbaa !131
  %i.nr = call noalias ptr @malloc(i64 noundef %i.ie) #13 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ik, i64 104
  store ptr %i.nr, ptr %i.ns, align 8, !tbaa !132
  %i.nt = icmp eq ptr %i.np, null
  %i.nu = icmp eq ptr %i.nr, null
  %or.cond543 = or i1 %i.nt, %i.nu
  br i1 %or.cond543, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.3) #12
  br label %.preheader546

bb.ay:                                            ; preds = %bb.aw
  %i.nv = shl nsw i64 %i.nc, 3                    ; 2 uses
  %i.nw = call noalias ptr @malloc(i64 noundef %i.nv) #13 ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ik, i64 112
  store ptr %i.nw, ptr %i.nx, align 8, !tbaa !133
  %i.ny = call noalias ptr @malloc(i64 noundef %i.nv) #13 ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ik, i64 120
  store ptr %i.ny, ptr %i.nz, align 8, !tbaa !134
  %i.oa = icmp eq ptr %i.nw, null
  %i.ob = icmp eq ptr %i.ny, null
  %or.cond544 = or i1 %i.oa, %i.ob
  br i1 %or.cond544, label %bb.az, label %.preheader553

.preheader553:                                    ; preds = %bb.ay
  %i.oc = icmp sgt i32 %i.nb, 0
  br i1 %i.oc, label %.lr.ph611.preheader, label %.loopexit554

.lr.ph611.preheader:                              ; preds = %.preheader553
  %wide.trip.count703 = zext nneg i32 %i.nb to i64 ; 3 uses
  %min.iters.check837 = icmp ult i32 %i.nb, 4
  br i1 %min.iters.check837, label %.lr.ph611.preheader873, label %vector.ph838

vector.ph838:                                     ; preds = %.lr.ph611.preheader
  %n.vec839 = and i64 %wide.trip.count703, 2147483644 ; 3 uses
  br label %vector.body840

vector.body840:                                   ; preds = %vector.body840, %vector.ph838
  %index841 = phi i64 [ 0, %vector.ph838 ], [ %index.next842, %vector.body840 ] ; 3 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %index841 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  store <2 x ptr> <ptr @ompi_mpi_datatype_null, ptr @ompi_mpi_datatype_null>, ptr %i.od, align 8, !tbaa !135
  store <2 x ptr> <ptr @ompi_mpi_datatype_null, ptr @ompi_mpi_datatype_null>, ptr %i.oe, align 8, !tbaa !135
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %index841 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store <2 x ptr> <ptr @ompi_mpi_datatype_null, ptr @ompi_mpi_datatype_null>, ptr %i.of, align 8, !tbaa !135
  store <2 x ptr> <ptr @ompi_mpi_datatype_null, ptr @ompi_mpi_datatype_null>, ptr %i.og, align 8, !tbaa !135
  %index.next842 = add nuw i64 %index841, 4       ; 2 uses
  %i.oh = icmp eq i64 %index.next842, %n.vec839
  br i1 %i.oh, label %middle.block843, label %vector.body840, !llvm.loop !136

middle.block843:                                  ; preds = %vector.body840
  %cmp.n844 = icmp eq i64 %n.vec839, %wide.trip.count703
  br i1 %cmp.n844, label %.loopexit554, label %.lr.ph611.preheader873

.lr.ph611.preheader873:                           ; preds = %.lr.ph611.preheader, %middle.block843
  %indvars.iv700.ph = phi i64 [ 0, %.lr.ph611.preheader ], [ %n.vec839, %middle.block843 ]
  br label %.lr.ph611

bb.az:                                            ; preds = %bb.ay
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #12
  br label %.preheader546

.lr.ph611:                                        ; preds = %.lr.ph611.preheader873, %.lr.ph611
  %indvars.iv700 = phi i64 [ %indvars.iv.next701, %.lr.ph611 ], [ %indvars.iv700.ph, %.lr.ph611.preheader873 ] ; 3 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv700
  store ptr @ompi_mpi_datatype_null, ptr %i.oi, align 8, !tbaa !135
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %indvars.iv700
  store ptr @ompi_mpi_datatype_null, ptr %i.oj, align 8, !tbaa !135
  %indvars.iv.next701 = add nuw nsw i64 %indvars.iv700, 1 ; 2 uses
  %exitcond704.not = icmp eq i64 %indvars.iv.next701, %wide.trip.count703
  br i1 %exitcond704.not, label %.loopexit554, label %.lr.ph611, !llvm.loop !137

.loopexit554:                                     ; preds = %.lr.ph611, %middle.block843, %.preheader553, %bb.an
  %indvars.iv.next706 = add nuw nsw i64 %indvars.iv705, 1 ; 2 uses
  %i.ok = load i32, ptr %i.ay, align 8, !tbaa !55 ; 3 uses
  %i.ol = sext i32 %i.ok to i64
  %i.om = icmp slt i64 %indvars.iv.next706, %i.ol
  br i1 %i.om, label %bb.x, label %._crit_edge614, !llvm.loop !138

._crit_edge614:                                   ; preds = %.loopexit554, %.preheader556
  %i.on = phi i32 [ %i.hy, %.preheader556 ], [ %i.ok, %.loopexit554 ] ; 6 uses
  %i.oo = load i32, ptr %i.ak, align 8, !tbaa !48 ; 2 uses
  %i.op = add i32 %i.oo, 1                        ; 4 uses
  %i.oq = mul nsw i32 %i.op, %i.on
  %i.or = sext i32 %i.oq to i64
  %i.os = shl nsw i64 %i.or, 3
  %i.ot = call noalias ptr @malloc(i64 noundef %i.os) #13 ; 14 uses
  %i.ou = icmp eq ptr %i.ot, null
  br i1 %i.ou, label %.loopexit549.sink.split, label %.preheader552

.preheader552:                                    ; preds = %._crit_edge614
  %i.ov = icmp slt i32 %i.on, 1
  %.not523616 = icmp slt i32 %i.oo, 0
  %or.cond654 = or i1 %i.ov, %.not523616
  br i1 %or.cond654, label %._crit_edge624.split, label %.preheader551.preheader

.preheader551.preheader:                          ; preds = %.preheader552
  %i.ow = zext i32 %i.op to i64                   ; 2 uses
  %min.iters.check861 = icmp ult i32 %i.op, 4
  %n.vec863 = and i64 %i.ow, 4294967292           ; 3 uses
  %cmp.n868 = icmp eq i64 %n.vec863, %i.ow
  br label %.preheader551

.preheader551:                                    ; preds = %.preheader551.preheader, %._crit_edge620
  %.1478623 = phi i32 [ %5, %._crit_edge620 ], [ 0, %.preheader551.preheader ] ; 2 uses
  %.4493622 = phi i32 [ %i.pc, %._crit_edge620 ], [ 0, %.preheader551.preheader ]
  %i.ox = sext i32 %.1478623 to i64               ; 3 uses
  %5 = add i32 %i.op, %.1478623                   ; 2 uses
  br i1 %min.iters.check861, label %scalar.ph860.preheader, label %vector.ph862

vector.ph862:                                     ; preds = %.preheader551
  %i.oy = add nsw i64 %n.vec863, %i.ox
  %invariant.gep926 = getelementptr [8 x i8], ptr %i.ot, i64 %i.ox
  br label %vector.body864

vector.body864:                                   ; preds = %vector.body864, %vector.ph862
  %index865 = phi i64 [ 0, %vector.ph862 ], [ %index.next866, %vector.body864 ] ; 2 uses
  %gep927 = getelementptr [8 x i8], ptr %invariant.gep926, i64 %index865 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %gep927, i64 16
  store <2 x ptr> <ptr @ompi_request_null, ptr @ompi_request_null>, ptr %gep927, align 8, !tbaa !12
  store <2 x ptr> <ptr @ompi_request_null, ptr @ompi_request_null>, ptr %i.oz, align 8, !tbaa !12
  %index.next866 = add nuw i64 %index865, 4       ; 2 uses
  %i.pa = icmp eq i64 %index.next866, %n.vec863
  br i1 %i.pa, label %middle.block867, label %vector.body864, !llvm.loop !139

middle.block867:                                  ; preds = %vector.body864
  br i1 %cmp.n868, label %._crit_edge620, label %scalar.ph860.preheader

scalar.ph860.preheader:                           ; preds = %.preheader551, %middle.block867
  %indvars.iv708.ph = phi i64 [ %i.ox, %.preheader551 ], [ %i.oy, %middle.block867 ]
  br label %scalar.ph860

scalar.ph860:                                     ; preds = %scalar.ph860.preheader, %scalar.ph860
  %indvars.iv708 = phi i64 [ %indvars.iv.next709.a, %scalar.ph860 ], [ %indvars.iv708.ph, %scalar.ph860.preheader ] ; 2 uses
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.ot, i64 %indvars.iv708
  store ptr @ompi_request_null, ptr %i.pb, align 8, !tbaa !12
  %indvars.iv.next709.a = add nsw i64 %indvars.iv708, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next709.a to i32
  %exitcond711.not = icmp eq i32 %5, %lftr.wideiv
  br i1 %exitcond711.not, label %._crit_edge620, label %scalar.ph860, !llvm.loop !140

._crit_edge620:                                   ; preds = %scalar.ph860, %middle.block867
  %i.pc = add nuw nsw i32 %.4493622, 1            ; 2 uses
  %exitcond712.not = icmp eq i32 %i.pc, %i.on
  br i1 %exitcond712.not, label %._crit_edge624.split, label %.preheader551, !llvm.loop !141

._crit_edge624.split:                             ; preds = %._crit_edge620, %.preheader552
  %i.pd = load i32, ptr @mca_fcoll_vulcan_async_io, align 4, !tbaa !8
  switch i32 %i.pd, label %bb.bc [
    i32 1, label %bb.bb
    i32 0, label %bb.ba
  ]

bb.ba:                                            ; preds = %._crit_edge624.split
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !41
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 40
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !42
  %i.pi = icmp ne ptr %i.ph, null
  %i.pj = icmp sgt i32 %.0469.lcssa, 2
  %or.cond = select i1 %i.pi, i1 %i.pj, i1 false
  br i1 %or.cond, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %._crit_edge624.split, %bb.ba
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge624.split, %bb.bb, %bb.ba
  %.0474 = phi i32 [ 1, %bb.bb ], [ 2, %bb.ba ], [ 2, %._crit_edge624.split ] ; 2 uses
  %i.pk = icmp sgt i32 %.0469.lcssa, 0            ; 2 uses
  br i1 %i.pk, label %.preheader550, label %bb.bf

.preheader550:                                    ; preds = %bb.bc
  %i.pl = icmp sgt i32 %i.on, 0
  br i1 %i.pl, label %.lr.ph626, label %._crit_edge627

.lr.ph626:                                        ; preds = %.preheader550
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph626, %bb.bd
  %indvars.iv713 = phi i64 [ 0, %.lr.ph626 ], [ %indvars.iv.next714, %bb.bd ] ; 4 uses
  %i.po = load ptr, ptr %i.pm, align 8, !tbaa !57
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv713
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !8
  %i.pr = load i32, ptr %i.pn, align 8, !tbaa !58
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv713
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !59
  %i.pu = load i32, ptr %i.ak, align 8, !tbaa !48
  %i.pv = add nsw i32 %i.pu, 1
  %i.pw = trunc nuw nsw i64 %indvars.iv713 to i32
  %i.px = mul nsw i32 %i.pv, %i.pw
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [8 x i8], ptr %i.ot, i64 %i.py
  call fastcc void @shuffle_init(i32 noundef 0, i32 noundef %i.pq, i32 noundef %i.pr, ptr noundef %i.pt, ptr noundef %i.pz)
  %indvars.iv.next714 = add nuw nsw i64 %indvars.iv713, 1 ; 2 uses
  %i.qa = load i32, ptr %i.ay, align 8, !tbaa !55 ; 2 uses
  %i.qb = sext i32 %i.qa to i64
  %i.qc = icmp slt i64 %indvars.iv.next714, %i.qb
  br i1 %i.qc, label %bb.bd, label %._crit_edge627, !llvm.loop !142

._crit_edge627:                                   ; preds = %bb.bd, %.preheader550
  %i.qd = phi i32 [ %i.on, %.preheader550 ], [ %i.qa, %bb.bd ]
  %.not517 = icmp eq i32 %.0475.lcssa, -1
  br i1 %.not517, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %._crit_edge627
  call void @mca_common_ompio_register_progress() #12
  %.pre744 = load i32, ptr %i.ay, align 8, !tbaa !55
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge627, %bb.be, %bb.bc
  %i.qe = phi i32 [ %i.qd, %._crit_edge627 ], [ %.pre744, %bb.be ], [ %i.on, %bb.bc ]
  %i.qf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !143
  %i.qg = load i32, ptr %i.ak, align 8, !tbaa !48
  %i.qh = add nsw i32 %i.qg, 1
  %i.qi = mul nsw i32 %i.qh, %i.qe
  %i.qj = sext i32 %i.qi to i64
  %i.qk = call i32 %i.qf(i64 noundef %i.qj, ptr noundef nonnull %i.ot, ptr noundef null) #12 ; 0 uses
  %i.ql = icmp sgt i32 %.0469.lcssa, 1
  br i1 %i.ql, label %.preheader548.lr.ph, label %._crit_edge637

.preheader548.lr.ph:                              ; preds = %bb.bf
  %.not519 = icmp eq i32 %.0475.lcssa, -1         ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.qn = sext i32 %.0475.lcssa to i64
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.preheader548

.preheader548:                                    ; preds = %.preheader548.lr.ph, %bb.bk
  %.0636 = phi i32 [ 1, %.preheader548.lr.ph ], [ %i.sn, %bb.bk ] ; 2 uses
  %i.qq = load i32, ptr %i.ay, align 8, !tbaa !55 ; 3 uses
  %i.qr = icmp sgt i32 %i.qq, 0
  br i1 %i.qr, label %.lr.ph629.preheader, label %._crit_edge630

.lr.ph629.preheader:                              ; preds = %.preheader548
  %wide.trip.count719 = zext nneg i32 %i.qq to i64
  br label %.lr.ph629

.lr.ph629:                                        ; preds = %.lr.ph629.preheader, %.lr.ph629
  %indvars.iv716 = phi i64 [ 0, %.lr.ph629.preheader ], [ %indvars.iv.next717, %.lr.ph629 ] ; 2 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv716
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !59 ; 10 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 200
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !145
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 208
  store ptr %i.qv, ptr %i.qw, align 8, !tbaa !146
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qt, i64 216
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !147
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qt, i64 220
  store i32 %i.qy, ptr %i.qz, align 4, !tbaa !148
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qt, i64 172
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !149
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qt, i64 176
  store i32 %i.rb, ptr %i.rc, align 8, !tbaa !150
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qt, i64 192
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !151
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qt, i64 196
  store i32 %i.re, ptr %i.rf, align 4, !tbaa !152
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qt, i64 96 ; 2 uses
  %i.rh = load <2 x ptr>, ptr %i.rg, align 8, !tbaa !153
  %i.ri = shufflevector <2 x ptr> %i.rh, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ri, ptr %i.rg, align 8, !tbaa !153
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qt, i64 112 ; 2 uses
  %i.rk = load <2 x ptr>, ptr %i.rj, align 8, !tbaa !154
  %i.rl = shufflevector <2 x ptr> %i.rk, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.rl, ptr %i.rj, align 8, !tbaa !154
  %indvars.iv.next717 = add nuw nsw i64 %indvars.iv716, 1 ; 2 uses
  %exitcond720.not = icmp eq i64 %indvars.iv.next717, %wide.trip.count719
  br i1 %exitcond720.not, label %._crit_edge630, label %.lr.ph629, !llvm.loop !155

._crit_edge630:                                   ; preds = %.lr.ph629, %.preheader548
  br i1 %.not519, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge630
  %i.rm = load ptr, ptr %i.qo, align 8, !tbaa !59
  %i.rn = call fastcc i32 @write_init(ptr noundef nonnull %0, ptr noundef %i.rm, i32 noundef %i.ac, i32 noundef %.0474, ptr noundef %i.i)
  %.not520 = icmp eq i32 %i.rn, 0
  br i1 %.not520, label %._crit_edge745, label %.preheader546

._crit_edge745:                                   ; preds = %bb.bg
  %.pre746 = load i32, ptr %i.ay, align 8, !tbaa !55
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge745, %._crit_edge630
  %i.ro = phi i32 [ %.pre746, %._crit_edge745 ], [ %i.qq, %._crit_edge630 ] ; 2 uses
  %i.rp = icmp sgt i32 %i.ro, 0
  br i1 %i.rp, label %.lr.ph633, label %._crit_edge634

.lr.ph633:                                        ; preds = %bb.bh, %.lr.ph633
  %indvars.iv721 = phi i64 [ %indvars.iv.next722, %.lr.ph633 ], [ 0, %bb.bh ] ; 4 uses
  %i.rq = load ptr, ptr %i.qm, align 8, !tbaa !57
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %indvars.iv721
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !8
  %i.rt = load i32, ptr %i.qp, align 8, !tbaa !58
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv721
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !59
  %i.rw = load i32, ptr %i.ak, align 8, !tbaa !48
  %i.rx = add nsw i32 %i.rw, 1
  %i.ry = trunc nuw nsw i64 %indvars.iv721 to i32
  %i.rz = mul nsw i32 %i.rx, %i.ry
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.ot, i64 %i.sa
  call fastcc void @shuffle_init(i32 noundef %.0636, i32 noundef %i.rs, i32 noundef %i.rt, ptr noundef %i.rv, ptr noundef %i.sb)
  %indvars.iv.next722 = add nuw nsw i64 %indvars.iv721, 1 ; 2 uses
  %i.sc = load i32, ptr %i.ay, align 8, !tbaa !55 ; 2 uses
  %i.sd = sext i32 %i.sc to i64
  %i.se = icmp slt i64 %indvars.iv.next722, %i.sd
  br i1 %i.se, label %.lr.ph633, label %._crit_edge634, !llvm.loop !156

._crit_edge634:                                   ; preds = %.lr.ph633, %bb.bh
  %.lcssa559 = phi i32 [ %i.ro, %bb.bh ], [ %i.sc, %.lr.ph633 ]
  %i.sf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !143
  %i.sg = load i32, ptr %i.ak, align 8, !tbaa !48
  %i.sh = add nsw i32 %i.sg, 1
  %i.si = mul nsw i32 %i.sh, %.lcssa559
  %i.sj = sext i32 %i.si to i64
  %i.sk = call i32 %i.sf(i64 noundef %i.sj, ptr noundef nonnull %i.ot, ptr noundef null) #12
  %.not521 = icmp eq i32 %i.sk, 0
  br i1 %.not521, label %bb.bi, label %.loopexit549

bb.bi:                                            ; preds = %._crit_edge634
  br i1 %.not519, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.sl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !157
  %i.sm = call i32 %i.sl(ptr noundef nonnull %i.i, ptr noundef null) #12
  %.not522 = icmp eq i32 %i.sm, 0
  br i1 %.not522, label %bb.bk, label %.loopexit549

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.sn = add nuw nsw i32 %.0636, 1               ; 2 uses
  %exitcond724.not = icmp eq i32 %i.sn, %.0469.lcssa
  br i1 %exitcond724.not, label %._crit_edge637, label %.preheader548, !llvm.loop !158

._crit_edge637:                                   ; preds = %bb.bk, %bb.bf
  br i1 %i.pk, label %.preheader547, label %.loopexit549

.preheader547:                                    ; preds = %._crit_edge637
  %i.so = load i32, ptr %i.ay, align 8, !tbaa !55 ; 2 uses
  %i.sp = icmp sgt i32 %i.so, 0
  br i1 %i.sp, label %.lr.ph639.preheader, label %._crit_edge640
end_hunk_0
