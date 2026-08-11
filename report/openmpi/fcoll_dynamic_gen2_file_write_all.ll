inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@mca_fcoll_dynamic_gen2_file_write_all:bb.a
  %.0446.lcssa = phi i32 [ %i.hp, %bb.x ], [ %i.in, %._crit_edge605.loopexit.unr-lcssa ], [ %i.iu, %.lr.ph604.epil ] ; 4 uses
  %.not484 = icmp eq i32 %.0446.lcssa, 0          ; 2 uses
  br i1 %.not484, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge605
  %i.ix = zext i32 %.0446.lcssa to i64
  %i.iy = shl nuw nsw i64 %i.ix, 4
  %i.iz = call noalias ptr @malloc(i64 noundef %i.iy) #14 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gl, i64 128
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !106
  %i.jb = icmp eq ptr %i.iz, null
  br i1 %i.jb, label %.preheader552.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge605
  %i.jc = load i32, ptr @mca_fcoll_dynamic_gen2_num_groups, align 4, !tbaa !8
  %i.jd = icmp eq i32 %i.jc, 1
  br i1 %i.jd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.je = load ptr, ptr %i.ge, align 8, !tbaa !54 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 344
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !66 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !107
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv714
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !9
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv714
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !8
  %i.jn = load ptr, ptr %i.gd, align 8, !tbaa !108 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gl, i64 128
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !106
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !109
  %i.js = call i32 %i.ji(ptr noundef %i.jk, i32 noundef %i.jm, ptr noundef %i.jn, ptr noundef %i.jp, ptr noundef nonnull %i.gt, ptr noundef nonnull %i.hn, ptr noundef %i.jn, ptr noundef %i.je, ptr noundef %i.jr) #13
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv714
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !9
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv714
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !8
  %i.jx = load ptr, ptr %i.gd, align 8, !tbaa !108 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gl, i64 128
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !106
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv714
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !8
  %i.kc = load ptr, ptr %i.ak, align 8, !tbaa !47
  %i.kd = load ptr, ptr %i.ge, align 8, !tbaa !54
  %i.ke = call i32 @ompi_fcoll_base_coll_allgatherv_array(ptr noundef %i.ju, i32 noundef %i.jw, ptr noundef %i.jx, ptr noundef %i.jz, ptr noundef nonnull %i.gt, ptr noundef nonnull %i.hn, ptr noundef %i.jx, i32 noundef %i.kb, ptr noundef %i.kc, i32 noundef %i.gq, ptr noundef %i.kd) #13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1433 = phi i32 [ %i.js, %bb.aa ], [ %i.ke, %bb.ab ]
  %.not485 = icmp eq i32 %.1433, 0
  br i1 %.not485, label %bb.ad, label %.preheader552

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not484, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kf = zext i32 %.0446.lcssa to i64
  %i.kg = shl nuw nsw i64 %i.kf, 2
  %i.kh = call noalias ptr @malloc(i64 noundef %i.kg) #14 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !110
  %i.kj = icmp eq ptr %i.kh, null
  br i1 %i.kj, label %.preheader552.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gl, i64 128
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !106
  %i.km = call i32 @ompi_fcoll_base_sort_iovec(ptr noundef %i.kl, i32 noundef %.0446.lcssa, ptr noundef nonnull %i.kh) #13 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.kn = load ptr, ptr %i.c, align 8, !tbaa !9   ; 2 uses
  %.not486 = icmp eq ptr %i.kn, null
  br i1 %.not486, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef nonnull %i.kn) #13
  store ptr null, ptr %i.c, align 8, !tbaa !9
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @free(ptr noundef nonnull %i.hn) #13
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  store i64 %i.gf, ptr %i.ko, align 8, !tbaa !111
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv714
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !8
  %i.kr = load i32, ptr %i.gg, align 8, !tbaa !112
  %i.ks = icmp eq i32 %i.kq, %i.kr
  br i1 %i.ks, label %bb.aj, label %.loopexit565

bb.aj:                                            ; preds = %bb.ai
  %i.kt = load i32, ptr %i.ag, align 8, !tbaa !46 ; 4 uses
  %i.ku = sext i32 %i.kt to i64                   ; 5 uses
  %i.kv = shl nsw i64 %i.ku, 2
  %i.kw = call noalias ptr @malloc(i64 noundef %i.kv) #14 ; 2 uses
  store ptr %i.kw, ptr %i.gl, align 8, !tbaa !113
  %i.kx = icmp eq ptr %i.kw, null
  br i1 %i.kx, label %.preheader552.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ky = call noalias ptr @calloc(i64 noundef %i.ku, i64 noundef 4) #15 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !114
  %i.la = icmp eq ptr %i.ky, null
  br i1 %i.la, label %.preheader552.sink.split, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lb = call noalias ptr @calloc(i64 noundef %i.ku, i64 noundef 8) #15 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !115
  %i.ld = icmp eq ptr %i.lb, null
  br i1 %i.ld, label %.preheader552.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.le = call noalias ptr @calloc(i64 noundef %i.ku, i64 noundef 8) #15 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !116
  %i.lg = icmp eq ptr %i.le, null
  br i1 %i.lg, label %.preheader552.sink.split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lh = call noalias ptr @malloc(i64 noundef %i.gf) #14 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.gl, i64 96
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !117
  %i.lj = call noalias ptr @malloc(i64 noundef %i.gf) #14 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.gl, i64 104
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !118
  %i.ll = icmp eq ptr %i.lh, null
  %i.lm = icmp eq ptr %i.lj, null
  %or.cond549 = or i1 %i.ll, %i.lm
  br i1 %or.cond549, label %.preheader552.sink.split, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ln = shl nsw i64 %i.ku, 3                    ; 2 uses
  %i.lo = call noalias ptr @malloc(i64 noundef %i.ln) #14 ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gl, i64 112
  store ptr %i.lo, ptr %i.lp, align 8, !tbaa !119
  %i.lq = call noalias ptr @malloc(i64 noundef %i.ln) #14 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.gl, i64 120
  store ptr %i.lq, ptr %i.lr, align 8, !tbaa !120
  %i.ls = icmp eq ptr %i.lo, null
  %i.lt = icmp eq ptr %i.lq, null
  %or.cond550 = or i1 %i.ls, %i.lt
  br i1 %or.cond550, label %.preheader552.sink.split, label %.preheader564

.preheader564:                                    ; preds = %bb.ao
  %i.lu = icmp sgt i32 %i.kt, 0
  br i1 %i.lu, label %.lr.ph608.preheader, label %.loopexit565

.lr.ph608.preheader:                              ; preds = %.preheader564
  %wide.trip.count712 = zext nneg i32 %i.kt to i64 ; 3 uses
  %min.iters.check842 = icmp ult i32 %i.kt, 4
  br i1 %min.iters.check842, label %.lr.ph608.preheader864, label %vector.ph843

vector.ph843:                                     ; preds = %.lr.ph608.preheader
  %n.vec844 = and i64 %wide.trip.count712, 2147483644 ; 3 uses
  br label %vector.body845

vector.body845:                                   ; preds = %vector.body845, %vector.ph843
  %index846 = phi i64 [ 0, %vector.ph843 ], [ %index.next847, %vector.body845 ] ; 3 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %index846 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store <2 x ptr> <ptr @ompi_mpi_datatype_null, ptr @ompi_mpi_datatype_null>, ptr %i.lv, align 8, !tbaa !121
  store <2 x ptr> <ptr @ompi_mpi_datatype_null, ptr @ompi_mpi_datatype_null>, ptr %i.lw, align 8, !tbaa !121
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %index846 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store <2 x ptr> <ptr @ompi_mpi_datatype_null, ptr @ompi_mpi_datatype_null>, ptr %i.lx, align 8, !tbaa !121
  store <2 x ptr> <ptr @ompi_mpi_datatype_null, ptr @ompi_mpi_datatype_null>, ptr %i.ly, align 8, !tbaa !121
  %index.next847 = add nuw i64 %index846, 4       ; 2 uses
  %i.lz = icmp eq i64 %index.next847, %n.vec844
  br i1 %i.lz, label %middle.block848, label %vector.body845, !llvm.loop !122

middle.block848:                                  ; preds = %vector.body845
  %cmp.n849 = icmp eq i64 %n.vec844, %wide.trip.count712
  br i1 %cmp.n849, label %.loopexit565, label %.lr.ph608.preheader864

.lr.ph608.preheader864:                           ; preds = %.lr.ph608.preheader, %middle.block848
  %indvars.iv709.ph = phi i64 [ 0, %.lr.ph608.preheader ], [ %n.vec844, %middle.block848 ]
  br label %.lr.ph608

.lr.ph608:                                        ; preds = %.lr.ph608.preheader864, %.lr.ph608
  %indvars.iv709 = phi i64 [ %indvars.iv.next710, %.lr.ph608 ], [ %indvars.iv709.ph, %.lr.ph608.preheader864 ] ; 3 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %indvars.iv709
  store ptr @ompi_mpi_datatype_null, ptr %i.ma, align 8, !tbaa !121
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv709
  store ptr @ompi_mpi_datatype_null, ptr %i.mb, align 8, !tbaa !121
  %indvars.iv.next710 = add nuw nsw i64 %indvars.iv709, 1 ; 2 uses
  %exitcond713.not = icmp eq i64 %indvars.iv.next710, %wide.trip.count712
  br i1 %exitcond713.not, label %.loopexit565, label %.lr.ph608, !llvm.loop !123

.loopexit565:                                     ; preds = %.lr.ph608, %middle.block848, %.preheader564, %bb.ai
  %indvars.iv.next715 = add nuw nsw i64 %indvars.iv714, 1 ; 2 uses
  %exitcond719.not = icmp eq i64 %indvars.iv.next715, %wide.trip.count718
  br i1 %exitcond719.not, label %._crit_edge611, label %bb.w, !llvm.loop !124

._crit_edge611:                                   ; preds = %.loopexit565, %.preheader567
  %i.mc = load i32, ptr %i.ag, align 8, !tbaa !46 ; 3 uses
  %i.md = add i32 %i.mc, 1                        ; 4 uses
  %i.me = mul nsw i32 %i.md, %spec.select.i
  %i.mf = sext i32 %i.me to i64
  %i.mg = shl nsw i64 %i.mf, 3                    ; 2 uses
  %i.mh = call noalias ptr @malloc(i64 noundef %i.mg) #14 ; 12 uses
  %i.mi = call noalias ptr @malloc(i64 noundef %i.mg) #14 ; 10 uses
  %i.mj = icmp eq ptr %i.mh, null
  %i.mk = icmp eq ptr %i.mi, null
  %or.cond = or i1 %i.mj, %i.mk
  br i1 %or.cond, label %mca_fcoll_dynamic_gen2_get_configuration.exit.sink.split, label %.preheader563

.preheader563:                                    ; preds = %._crit_edge611
  %i.ml = icmp slt i32 %i.af, 1
  %.not483612 = icmp slt i32 %i.mc, 0
  %or.cond655 = or i1 %i.ml, %.not483612
  br i1 %or.cond655, label %._crit_edge620.split, label %.preheader562.preheader

.preheader562.preheader:                          ; preds = %.preheader563
  %smax724 = call i32 @llvm.smax.i32(i32 %spec.select.i, i32 1)
  %i.mm = zext i32 %i.md to i64                   ; 2 uses
  %min.iters.check852 = icmp ult i32 %i.md, 4
  %n.vec854 = and i64 %i.mm, 4294967292           ; 4 uses
  %5 = trunc nuw i64 %n.vec854 to i32
  %cmp.n859 = icmp eq i64 %n.vec854, %i.mm
  br label %.preheader562

.preheader562:                                    ; preds = %.preheader562.preheader, %._crit_edge616
  %.1436619 = phi i32 [ 0, %.preheader562.preheader ], [ %indvars.iv.next721, %._crit_edge616 ] ; 2 uses
  %.4455618 = phi i32 [ 0, %.preheader562.preheader ], [ %i.mx, %._crit_edge616 ]
  %i.mn = sext i32 %.1436619 to i64               ; 3 uses
  br i1 %min.iters.check852, label %scalar.ph851.preheader, label %vector.ph853

vector.ph853:                                     ; preds = %.preheader562
  %i.mo = add nsw i64 %n.vec854, %i.mn
  br label %vector.body855

vector.body855:                                   ; preds = %vector.body855, %vector.ph853
  %index856 = phi i64 [ 0, %vector.ph853 ], [ %index.next857, %vector.body855 ] ; 2 uses
  %i.mp = add i64 %index856, %i.mn                ; 2 uses
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.mp ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store <2 x ptr> <ptr @ompi_request_null, ptr @ompi_request_null>, ptr %i.mq, align 8, !tbaa !125
  store <2 x ptr> <ptr @ompi_request_null, ptr @ompi_request_null>, ptr %i.mr, align 8, !tbaa !125
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %i.mp ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  store <2 x ptr> <ptr @ompi_request_null, ptr @ompi_request_null>, ptr %i.ms, align 8, !tbaa !125
  store <2 x ptr> <ptr @ompi_request_null, ptr @ompi_request_null>, ptr %i.mt, align 8, !tbaa !125
  %index.next857 = add nuw i64 %index856, 4       ; 2 uses
  %i.mu = icmp eq i64 %index.next857, %n.vec854
  br i1 %i.mu, label %middle.block858, label %vector.body855, !llvm.loop !126

middle.block858:                                  ; preds = %vector.body855
  br i1 %cmp.n859, label %._crit_edge616, label %scalar.ph851.preheader

scalar.ph851.preheader:                           ; preds = %.preheader562, %middle.block858
  %indvars.iv720.ph = phi i64 [ %i.mn, %.preheader562 ], [ %i.mo, %middle.block858 ]
  %.3450613.ph = phi i32 [ 0, %.preheader562 ], [ %5, %middle.block858 ]
  br label %scalar.ph851

scalar.ph851:                                     ; preds = %scalar.ph851.preheader, %scalar.ph851
  %indvars.iv720 = phi i64 [ %indvars.iv.next721.a, %scalar.ph851 ], [ %indvars.iv720.ph, %scalar.ph851.preheader ] ; 3 uses
  %.3450613 = phi i32 [ %6, %scalar.ph851 ], [ %.3450613.ph, %scalar.ph851.preheader ] ; 2 uses
  %i.mv = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %indvars.iv720
  store ptr @ompi_request_null, ptr %i.mv, align 8, !tbaa !125
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %indvars.iv720
  store ptr @ompi_request_null, ptr %i.mw, align 8, !tbaa !125
  %indvars.iv.next721.a = add nsw i64 %indvars.iv720, 1
  %6 = add nuw i32 %.3450613, 1
  %exitcond723.not = icmp eq i32 %.3450613, %i.mc
  br i1 %exitcond723.not, label %._crit_edge616, label %scalar.ph851, !llvm.loop !127

._crit_edge616:                                   ; preds = %scalar.ph851, %middle.block858
  %i.mx = add nuw nsw i32 %.4455618, 1            ; 2 uses
  %indvars.iv.next721 = add i32 %.1436619, %i.md
  %exitcond725.not = icmp eq i32 %i.mx, %smax724
  br i1 %exitcond725.not, label %._crit_edge620.split, label %.preheader562, !llvm.loop !128

._crit_edge620.split:                             ; preds = %._crit_edge616, %.preheader563
  %i.my = icmp sgt i32 %.0431.lcssa, 0            ; 2 uses
  %or.cond656 = and i1 %i.my, %i.am
  br i1 %or.cond656, label %.lr.ph622, label %.loopexit561

.lr.ph622:                                        ; preds = %._crit_edge620.split
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count730 = zext nneg i32 %spec.select.i to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph622, %bb.ap
  %indvars.iv726 = phi i64 [ 0, %.lr.ph622 ], [ %indvars.iv.next727, %bb.ap ] ; 4 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv726
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !8
  %i.nc = load i32, ptr %i.mz, align 8, !tbaa !112
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv726
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !55
  %i.nf = load i32, ptr %i.ag, align 8, !tbaa !46
  %i.ng = add nsw i32 %i.nf, 1
  %i.nh = trunc nuw nsw i64 %indvars.iv726 to i32
  %i.ni = mul nsw i32 %i.ng, %i.nh
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.nj
  call fastcc void @shuffle_init(i32 noundef 0, i32 noundef %i.nb, i32 noundef %i.nc, ptr noundef %i.ne, ptr noundef %i.nk)
  %indvars.iv.next727 = add nuw nsw i64 %indvars.iv726, 1 ; 2 uses
  %exitcond731.not = icmp eq i64 %indvars.iv.next727, %wide.trip.count730
  br i1 %exitcond731.not, label %.loopexit561, label %bb.ap, !llvm.loop !129

.loopexit561:                                     ; preds = %bb.ap, %._crit_edge620.split
  %i.nl = icmp sgt i32 %.0431.lcssa, 1
  br i1 %i.nl, label %.preheader558.lr.ph, label %._crit_edge634

.preheader558.lr.ph:                              ; preds = %.loopexit561
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %smax735 = call i32 @llvm.smax.i32(i32 %spec.select.i, i32 1) ; 3 uses
  %wide.trip.count736 = zext nneg i32 %smax735 to i64
  %wide.trip.count742 = zext nneg i32 %smax735 to i64
  %wide.trip.count748 = zext nneg i32 %smax735 to i64
  br label %.preheader558

.preheader558:                                    ; preds = %.preheader558.lr.ph, %._crit_edge630
  %.0633 = phi i32 [ 1, %.preheader558.lr.ph ], [ %i.pd, %._crit_edge630 ] ; 2 uses
  %.0442632 = phi ptr [ %i.mi, %.preheader558.lr.ph ], [ %.0443631, %._crit_edge630 ] ; 3 uses
  %.0443631 = phi ptr [ %i.mh, %.preheader558.lr.ph ], [ %.0442632, %._crit_edge630 ] ; 2 uses
  br i1 %i.am, label %.lr.ph624, label %._crit_edge627

.lr.ph624:                                        ; preds = %.preheader558, %.lr.ph624
  %indvars.iv732 = phi i64 [ %indvars.iv.next733, %.lr.ph624 ], [ 0, %.preheader558 ] ; 2 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv732
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !55 ; 10 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 200
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !130
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 208
  store ptr %i.nq, ptr %i.nr, align 8, !tbaa !131
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 216
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !132
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 220
  store i32 %i.nt, ptr %i.nu, align 4, !tbaa !133
  %i.nv = getelementptr inbounds nuw i8, ptr %i.no, i64 172
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !134
  %i.nx = getelementptr inbounds nuw i8, ptr %i.no, i64 176
  store i32 %i.nw, ptr %i.nx, align 8, !tbaa !135
  %i.ny = getelementptr inbounds nuw i8, ptr %i.no, i64 192
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !136
  %i.oa = getelementptr inbounds nuw i8, ptr %i.no, i64 196
  store i32 %i.nz, ptr %i.oa, align 4, !tbaa !137
  %i.ob = getelementptr inbounds nuw i8, ptr %i.no, i64 96 ; 2 uses
  %i.oc = load <2 x ptr>, ptr %i.ob, align 8, !tbaa !138
  %i.od = shufflevector <2 x ptr> %i.oc, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.od, ptr %i.ob, align 8, !tbaa !138
  %i.oe = getelementptr inbounds nuw i8, ptr %i.no, i64 112 ; 2 uses
  %i.of = load <2 x ptr>, ptr %i.oe, align 8, !tbaa !139
  %i.og = shufflevector <2 x ptr> %i.of, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.og, ptr %i.oe, align 8, !tbaa !139
  %indvars.iv.next733 = add nuw nsw i64 %indvars.iv732, 1 ; 2 uses
  %exitcond737.not = icmp eq i64 %indvars.iv.next733, %wide.trip.count736
  br i1 %exitcond737.not, label %.lr.ph626, label %.lr.ph624, !llvm.loop !140

.lr.ph626:                                        ; preds = %.lr.ph624, %.lr.ph626
  %indvars.iv738 = phi i64 [ %indvars.iv.next739, %.lr.ph626 ], [ 0, %.lr.ph624 ] ; 4 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv738
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !8
  %i.oj = load i32, ptr %i.nm, align 8, !tbaa !112
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv738
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !55
  %i.om = load i32, ptr %i.ag, align 8, !tbaa !46
  %i.on = add nsw i32 %i.om, 1
  %i.oo = trunc nuw nsw i64 %indvars.iv738 to i32
  %i.op = mul nsw i32 %i.on, %i.oo
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [8 x i8], ptr %.0442632, i64 %i.oq
  call fastcc void @shuffle_init(i32 noundef %.0633, i32 noundef %i.oi, i32 noundef %i.oj, ptr noundef %i.ol, ptr noundef %i.or)
  %indvars.iv.next739 = add nuw nsw i64 %indvars.iv738, 1 ; 2 uses
  %exitcond743.not = icmp eq i64 %indvars.iv.next739, %wide.trip.count742
  br i1 %exitcond743.not, label %._crit_edge627, label %.lr.ph626, !llvm.loop !141

._crit_edge627:                                   ; preds = %.lr.ph626, %.preheader558
  %i.os = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !142
  %i.ot = load i32, ptr %i.ag, align 8, !tbaa !46
  %i.ou = add nsw i32 %i.ot, 1
  %i.ov = mul nsw i32 %i.ou, %spec.select.i
  %i.ow = sext i32 %i.ov to i64
  %i.ox = call i32 %i.os(i64 noundef %i.ow, ptr noundef %.0443631, ptr noundef null) #13
  %.not481 = icmp eq i32 %i.ox, 0
  br i1 %.not481, label %.preheader555, label %mca_fcoll_dynamic_gen2_get_configuration.exit

.preheader555:                                    ; preds = %._crit_edge627
  br i1 %i.am, label %.lr.ph629, label %._crit_edge630

bb.aq:                                            ; preds = %.lr.ph629
  %indvars.iv.next745 = add nuw nsw i64 %indvars.iv744, 1 ; 2 uses
  %exitcond749.not = icmp eq i64 %indvars.iv.next745, %wide.trip.count748
  br i1 %exitcond749.not, label %._crit_edge630, label %.lr.ph629, !llvm.loop !144

.lr.ph629:                                        ; preds = %.preheader555, %bb.aq
  %indvars.iv744 = phi i64 [ %indvars.iv.next745, %bb.aq ], [ 0, %.preheader555 ] ; 3 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv744
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !8
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv744
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !55
  %i.pc = call fastcc i32 @write_init(ptr noundef %0, i32 noundef %i.oz, ptr noundef %i.pb)
  %.not482 = icmp eq i32 %i.pc, 0
  br i1 %.not482, label %bb.aq, label %.preheader552

._crit_edge630:                                   ; preds = %bb.aq, %.preheader555
  %i.pd = add nuw nsw i32 %.0633, 1               ; 2 uses
  %exitcond750.not = icmp eq i32 %i.pd, %.0431.lcssa
  br i1 %exitcond750.not, label %._crit_edge634, label %.preheader558, !llvm.loop !145

._crit_edge634:                                   ; preds = %._crit_edge630, %.loopexit561
  %.0443.lcssa = phi ptr [ %i.mh, %.loopexit561 ], [ %.0442632, %._crit_edge630 ]
  br i1 %i.my, label %.preheader554, label %mca_fcoll_dynamic_gen2_get_configuration.exit

.preheader554:                                    ; preds = %._crit_edge634
  br i1 %i.am, label %.lr.ph637.preheader, label %._crit_edge638

.lr.ph637.preheader:                              ; preds = %.preheader554
  %wide.trip.count755 = zext nneg i32 %spec.select.i to i64
  br label %.lr.ph637

.lr.ph637:                                        ; preds = %.lr.ph637.preheader, %.lr.ph637
  %indvars.iv751 = phi i64 [ 0, %.lr.ph637.preheader ], [ %indvars.iv.next752, %.lr.ph637 ] ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv751
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !55 ; 10 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 200
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !130
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 208
  store ptr %i.ph, ptr %i.pi, align 8, !tbaa !131
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 216
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !132
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pf, i64 220
  store i32 %i.pk, ptr %i.pl, align 4, !tbaa !133
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pf, i64 172
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !134
  %i.po = getelementptr inbounds nuw i8, ptr %i.pf, i64 176
  store i32 %i.pn, ptr %i.po, align 8, !tbaa !135
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pf, i64 192
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !136
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pf, i64 196
  store i32 %i.pq, ptr %i.pr, align 4, !tbaa !137
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pf, i64 96 ; 2 uses
  %i.pt = load <2 x ptr>, ptr %i.ps, align 8, !tbaa !138
  %i.pu = shufflevector <2 x ptr> %i.pt, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.pu, ptr %i.ps, align 8, !tbaa !138
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pf, i64 112 ; 2 uses
  %i.pw = load <2 x ptr>, ptr %i.pv, align 8, !tbaa !139
  %i.px = shufflevector <2 x ptr> %i.pw, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.px, ptr %i.pv, align 8, !tbaa !139
  %indvars.iv.next752 = add nuw nsw i64 %indvars.iv751, 1 ; 2 uses
  %exitcond756.not = icmp eq i64 %indvars.iv.next752, %wide.trip.count755
  br i1 %exitcond756.not, label %._crit_edge638, label %.lr.ph637, !llvm.loop !146

._crit_edge638:                                   ; preds = %.lr.ph637, %.preheader554
  %i.py = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !142
  %i.pz = load i32, ptr %i.ag, align 8, !tbaa !46
  %i.qa = add nsw i32 %i.pz, 1
  %i.qb = mul nsw i32 %i.qa, %spec.select.i
  %i.qc = sext i32 %i.qb to i64
  %i.qd = call i32 %i.py(i64 noundef %i.qc, ptr noundef %.0443.lcssa, ptr noundef null) #13
  %.not479 = icmp eq i32 %i.qd, 0
  %or.cond657 = and i1 %.not479, %i.am
  br i1 %or.cond657, label %.lr.ph640.preheader, label %mca_fcoll_dynamic_gen2_get_configuration.exit

.lr.ph640.preheader:                              ; preds = %._crit_edge638
  %wide.trip.count761 = zext nneg i32 %spec.select.i to i64
  br label %.lr.ph640

.lr.ph640:                                        ; preds = %.lr.ph640, %.lr.ph640.preheader
  %indvars.iv757 = phi i64 [ 0, %.lr.ph640.preheader ], [ %indvars.iv.next758, %.lr.ph640 ] ; 3 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv757
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !8
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv757
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !55
  %i.qi = call fastcc i32 @write_init(ptr noundef %0, i32 noundef %i.qf, ptr noundef %i.qh)
  %.not480 = icmp ne i32 %i.qi, 0
  %indvars.iv.next758 = add nuw nsw i64 %indvars.iv757, 1 ; 2 uses
  %exitcond762.not = icmp eq i64 %indvars.iv.next758, %wide.trip.count761
end_hunk_0
