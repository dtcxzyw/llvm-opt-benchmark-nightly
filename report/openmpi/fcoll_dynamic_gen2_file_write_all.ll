Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/fcoll_dynamic_gen2_file_write_all?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@mca_fcoll_dynamic_gen2_file_write_all:bb.a
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !154
  %i.jn = call i32 %i.jd(ptr noundef %i.jf, i32 noundef %i.jh, ptr noundef %i.ji, ptr noundef %i.jk, ptr noundef nonnull %i.go, ptr noundef nonnull %i.hi, ptr noundef %i.ji, ptr noundef %i.iz, ptr noundef %i.jm) #13
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv713
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !11
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv713
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !8
  %i.js = load ptr, ptr %i.fy, align 8, !tbaa !153 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gg, i64 128
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !58
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv713
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !8
  %i.jx = load ptr, ptr %i.ak, align 8, !tbaa !42
  %i.jy = load ptr, ptr %i.fz, align 8, !tbaa !121
  %i.jz = call i32 @ompi_fcoll_base_coll_allgatherv_array(ptr noundef %i.jp, i32 noundef %i.jr, ptr noundef %i.js, ptr noundef %i.ju, ptr noundef nonnull %i.go, ptr noundef nonnull %i.hi, ptr noundef %i.js, i32 noundef %i.jw, ptr noundef %i.jx, i32 noundef %i.gl, ptr noundef %i.jy) #13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1455 = phi i32 [ %i.jn, %bb.aa ], [ %i.jz, %bb.ab ]
  %.not485 = icmp eq i32 %.1455, 0
  br i1 %.not485, label %bb.ad, label %.preheader551

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not484, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ka = zext i32 %.0441.lcssa to i64
  %i.kb = shl nuw nsw i64 %i.ka, 2
  %i.kc = call noalias ptr @malloc(i64 noundef %i.kb) #14 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr %i.kc, ptr %i.kd, align 8, !tbaa !59
  %i.ke = icmp eq ptr %i.kc, null
  br i1 %i.ke, label %.preheader551.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gg, i64 128
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !58
  %i.kh = call i32 @ompi_fcoll_base_sort_iovec(ptr noundef %i.kg, i32 noundef %.0441.lcssa, ptr noundef nonnull %i.kc) #13 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.ki = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %.not486 = icmp eq ptr %i.ki, null
  br i1 %.not486, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef nonnull %i.ki) #13
  store ptr null, ptr %i.c, align 8, !tbaa !11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @free(ptr noundef nonnull %i.hi) #13
  %i.kj = getelementptr inbounds nuw i8, ptr %i.gg, i64 64
  store i64 %i.ga, ptr %i.kj, align 8, !tbaa !60
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv713
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !8
  %i.km = load i32, ptr %i.gb, align 8, !tbaa !61
  %i.kn = icmp eq i32 %i.kl, %i.km
  br i1 %i.kn, label %bb.aj, label %.loopexit564

bb.aj:                                            ; preds = %bb.ai
  %i.ko = load i32, ptr %i.ag, align 8, !tbaa !41 ; 4 uses
  %i.kp = sext i32 %i.ko to i64                   ; 5 uses
  %i.kq = shl nsw i64 %i.kp, 2
  %i.kr = call noalias ptr @malloc(i64 noundef %i.kq) #14 ; 2 uses
  store ptr %i.kr, ptr %i.gg, align 8, !tbaa !62
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %.preheader551.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kt = call noalias ptr @calloc(i64 noundef %i.kp, i64 noundef 4) #15 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  store ptr %i.kt, ptr %i.ku, align 8, !tbaa !63
  %i.kv = icmp eq ptr %i.kt, null
  br i1 %i.kv, label %.preheader551.sink.split, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kw = call noalias ptr @calloc(i64 noundef %i.kp, i64 noundef 8) #15 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  store ptr %i.kw, ptr %i.kx, align 8, !tbaa !64
  %i.ky = icmp eq ptr %i.kw, null
  br i1 %i.ky, label %.preheader551.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kz = call noalias ptr @calloc(i64 noundef %i.kp, i64 noundef 8) #15 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  store ptr %i.kz, ptr %i.la, align 8, !tbaa !65
  %i.lb = icmp eq ptr %i.kz, null
  br i1 %i.lb, label %.preheader551.sink.split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lc = call noalias ptr @malloc(i64 noundef %i.ga) #14 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.gg, i64 96
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !66
  %i.le = call noalias ptr @malloc(i64 noundef %i.ga) #14 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.gg, i64 104
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !155
  %i.lg = icmp eq ptr %i.lc, null
  %i.lh = icmp eq ptr %i.le, null
  %or.cond548 = or i1 %i.lg, %i.lh
  br i1 %or.cond548, label %.preheader551.sink.split, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.li = shl nsw i64 %i.kp, 3                    ; 2 uses
  %i.lj = call noalias ptr @malloc(i64 noundef %i.li) #14 ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.gg, i64 112
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !67
  %i.ll = call noalias ptr @malloc(i64 noundef %i.li) #14 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.gg, i64 120
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !156
  %i.ln = icmp eq ptr %i.lj, null
  %i.lo = icmp eq ptr %i.ll, null
  %or.cond549 = or i1 %i.ln, %i.lo
  br i1 %or.cond549, label %.preheader551.sink.split, label %.preheader563

.preheader563:                                    ; preds = %bb.ao
  %i.lp = icmp sgt i32 %i.ko, 0
  br i1 %i.lp, label %.lr.ph607.preheader, label %.loopexit564

.lr.ph607.preheader:                              ; preds = %.preheader563
  %wide.trip.count711 = zext nneg i32 %i.ko to i64 ; 3 uses
  %min.iters.check855 = icmp ult i32 %i.ko, 4
  br i1 %min.iters.check855, label %.lr.ph607.preheader877, label %vector.ph856

vector.ph856:                                     ; preds = %.lr.ph607.preheader
  %n.vec857 = and i64 %wide.trip.count711, 2147483644 ; 3 uses
  br label %vector.body858

vector.body858:                                   ; preds = %vector.body858, %vector.ph856
  %index859 = phi i64 [ 0, %vector.ph856 ], [ %index.next860, %vector.body858 ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %index859 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store <2 x ptr> <ptr @ompi_mpi_datatype_null, ptr @ompi_mpi_datatype_null>, ptr %i.lq, align 8, !tbaa !68
  store <2 x ptr> <ptr @ompi_mpi_datatype_null, ptr @ompi_mpi_datatype_null>, ptr %i.lr, align 8, !tbaa !68
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %index859 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store <2 x ptr> <ptr @ompi_mpi_datatype_null, ptr @ompi_mpi_datatype_null>, ptr %i.ls, align 8, !tbaa !68
  store <2 x ptr> <ptr @ompi_mpi_datatype_null, ptr @ompi_mpi_datatype_null>, ptr %i.lt, align 8, !tbaa !68
  %index.next860 = add nuw i64 %index859, 4       ; 2 uses
  %i.lu = icmp eq i64 %index.next860, %n.vec857
  br i1 %i.lu, label %middle.block861, label %vector.body858, !llvm.loop !99

middle.block861:                                  ; preds = %vector.body858
  %cmp.n862 = icmp eq i64 %n.vec857, %wide.trip.count711
  br i1 %cmp.n862, label %.loopexit564, label %.lr.ph607.preheader877

.lr.ph607.preheader877:                           ; preds = %.lr.ph607.preheader, %middle.block861
  %indvars.iv708.ph = phi i64 [ 0, %.lr.ph607.preheader ], [ %n.vec857, %middle.block861 ]
  br label %.lr.ph607

.lr.ph607:                                        ; preds = %.lr.ph607.preheader877, %.lr.ph607
  %indvars.iv708 = phi i64 [ %indvars.iv.next709, %.lr.ph607 ], [ %indvars.iv708.ph, %.lr.ph607.preheader877 ] ; 3 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv708
  store ptr @ompi_mpi_datatype_null, ptr %i.lv, align 8, !tbaa !68
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv708
  store ptr @ompi_mpi_datatype_null, ptr %i.lw, align 8, !tbaa !68
  %indvars.iv.next709 = add nuw nsw i64 %indvars.iv708, 1 ; 2 uses
  %exitcond712.not = icmp eq i64 %indvars.iv.next709, %wide.trip.count711
  br i1 %exitcond712.not, label %.loopexit564, label %.lr.ph607, !llvm.loop !100

.loopexit564:                                     ; preds = %.lr.ph607, %middle.block861, %.preheader563, %bb.ai
  %indvars.iv.next714 = add nuw nsw i64 %indvars.iv713, 1 ; 2 uses
  %exitcond718.not = icmp eq i64 %indvars.iv.next714, %wide.trip.count717
  br i1 %exitcond718.not, label %._crit_edge610, label %bb.w, !llvm.loop !101

._crit_edge610:                                   ; preds = %.loopexit564, %.preheader566
  %i.lx = load i32, ptr %i.ag, align 8, !tbaa !41 ; 2 uses
  %i.ly = add i32 %i.lx, 1                        ; 4 uses
  %i.lz = mul nsw i32 %i.ly, %spec.select.i
  %i.ma = sext i32 %i.lz to i64
  %i.mb = shl nsw i64 %i.ma, 3                    ; 2 uses
  %i.mc = call noalias ptr @malloc(i64 noundef %i.mb) #14 ; 12 uses
  %i.md = call noalias ptr @malloc(i64 noundef %i.mb) #14 ; 10 uses
  %i.me = icmp eq ptr %i.mc, null
  %i.mf = icmp eq ptr %i.md, null
  %or.cond = or i1 %i.me, %i.mf
  br i1 %or.cond, label %mca_fcoll_dynamic_gen2_get_configuration.exit.sink.split, label %.preheader562

.preheader562:                                    ; preds = %._crit_edge610
  %i.mg = icmp slt i32 %i.af, 1
  %.not483611 = icmp slt i32 %i.lx, 0
  %or.cond654 = or i1 %i.mg, %.not483611
  br i1 %or.cond654, label %._crit_edge619.split, label %.preheader561.preheader

.preheader561.preheader:                          ; preds = %.preheader562
  %smax723 = call i32 @llvm.smax.i32(i32 %spec.select.i, i32 1)
  %i.mh = zext i32 %i.ly to i64                   ; 2 uses
  %min.iters.check865 = icmp ult i32 %i.ly, 4
  %n.vec867 = and i64 %i.mh, 4294967292           ; 3 uses
  %cmp.n872 = icmp eq i64 %n.vec867, %i.mh
  br label %.preheader561

.preheader561:                                    ; preds = %.preheader561.preheader, %._crit_edge615
  %.4449618 = phi i32 [ %i.ms, %._crit_edge615 ], [ 0, %.preheader561.preheader ]
  %.1451617 = phi i32 [ %i.mj, %._crit_edge615 ], [ 0, %.preheader561.preheader ] ; 2 uses
  %i.mi = sext i32 %.1451617 to i64               ; 3 uses
  %i.mj = add i32 %i.ly, %.1451617                ; 2 uses
  br i1 %min.iters.check865, label %scalar.ph864.preheader, label %vector.ph866

vector.ph866:                                     ; preds = %.preheader561
  %5 = add nsw i64 %n.vec867, %i.mi
  br label %vector.body868

vector.body868:                                   ; preds = %vector.body868, %vector.ph866
  %index869 = phi i64 [ 0, %vector.ph866 ], [ %index.next870, %vector.body868 ] ; 2 uses
  %i.mk = add i64 %index869, %i.mi                ; 2 uses
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.mk ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  store <2 x ptr> <ptr @ompi_request_null, ptr @ompi_request_null>, ptr %i.ml, align 8, !tbaa !69
  store <2 x ptr> <ptr @ompi_request_null, ptr @ompi_request_null>, ptr %i.mm, align 8, !tbaa !69
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.mk ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store <2 x ptr> <ptr @ompi_request_null, ptr @ompi_request_null>, ptr %i.mn, align 8, !tbaa !69
  store <2 x ptr> <ptr @ompi_request_null, ptr @ompi_request_null>, ptr %i.mo, align 8, !tbaa !69
  %index.next870 = add nuw i64 %index869, 4       ; 2 uses
  %i.mp = icmp eq i64 %index.next870, %n.vec867
  br i1 %i.mp, label %middle.block871, label %vector.body868, !llvm.loop !102

middle.block871:                                  ; preds = %vector.body868
  br i1 %cmp.n872, label %._crit_edge615, label %scalar.ph864.preheader

scalar.ph864.preheader:                           ; preds = %.preheader561, %middle.block871
  %indvars.iv719.ph = phi i64 [ %i.mi, %.preheader561 ], [ %5, %middle.block871 ]
  br label %scalar.ph864

scalar.ph864:                                     ; preds = %scalar.ph864.preheader, %scalar.ph864
  %indvars.iv719 = phi i64 [ %indvars.iv.next720, %scalar.ph864 ], [ %indvars.iv719.ph, %scalar.ph864.preheader ] ; 3 uses
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %indvars.iv719
  store ptr @ompi_request_null, ptr %i.mq, align 8, !tbaa !69
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.md, i64 %indvars.iv719
  store ptr @ompi_request_null, ptr %i.mr, align 8, !tbaa !69
  %indvars.iv.next720 = add nsw i64 %indvars.iv719, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next720 to i32
  %exitcond722.not = icmp eq i32 %i.mj, %lftr.wideiv
  br i1 %exitcond722.not, label %._crit_edge615, label %scalar.ph864, !llvm.loop !103

._crit_edge615:                                   ; preds = %scalar.ph864, %middle.block871
  %i.ms = add nuw nsw i32 %.4449618, 1            ; 2 uses
  %exitcond724.not = icmp eq i32 %i.ms, %smax723
  br i1 %exitcond724.not, label %._crit_edge619.split, label %.preheader561, !llvm.loop !104

._crit_edge619.split:                             ; preds = %._crit_edge615, %.preheader562
  %i.mt = icmp sgt i32 %.0432.lcssa, 0            ; 2 uses
  %or.cond655 = and i1 %i.mt, %i.am
  br i1 %or.cond655, label %.lr.ph621, label %.loopexit560

.lr.ph621:                                        ; preds = %._crit_edge619.split
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count729 = zext nneg i32 %spec.select.i to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph621, %bb.ap
  %indvars.iv725 = phi i64 [ 0, %.lr.ph621 ], [ %indvars.iv.next726, %bb.ap ] ; 4 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv725
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !8
  %i.mx = load i32, ptr %i.mu, align 8, !tbaa !61
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv725
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !123
  %i.na = load i32, ptr %i.ag, align 8, !tbaa !41
  %i.nb = add nsw i32 %i.na, 1
  %i.nc = trunc nuw nsw i64 %indvars.iv725 to i32
  %i.nd = mul nsw i32 %i.nb, %i.nc
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.ne
  call fastcc void @shuffle_init(i32 noundef 0, i32 noundef %i.mw, i32 noundef %i.mx, ptr noundef %i.mz, ptr noundef %i.nf)
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1 ; 2 uses
  %exitcond730.not = icmp eq i64 %indvars.iv.next726, %wide.trip.count729
  br i1 %exitcond730.not, label %.loopexit560, label %bb.ap, !llvm.loop !105

.loopexit560:                                     ; preds = %bb.ap, %._crit_edge619.split
  %i.ng = icmp sgt i32 %.0432.lcssa, 1
  br i1 %i.ng, label %.preheader557.lr.ph, label %._crit_edge633

.preheader557.lr.ph:                              ; preds = %.loopexit560
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %smax734 = call i32 @llvm.smax.i32(i32 %spec.select.i, i32 1) ; 3 uses
  %wide.trip.count735 = zext nneg i32 %smax734 to i64
  %wide.trip.count741 = zext nneg i32 %smax734 to i64
  %wide.trip.count747 = zext nneg i32 %smax734 to i64
  br label %.preheader557

.preheader557:                                    ; preds = %.preheader557.lr.ph, %._crit_edge629
  %.0430632 = phi i32 [ 1, %.preheader557.lr.ph ], [ %i.oy, %._crit_edge629 ] ; 2 uses
  %.0437631 = phi ptr [ %i.md, %.preheader557.lr.ph ], [ %.0438630, %._crit_edge629 ] ; 3 uses
  %.0438630 = phi ptr [ %i.mc, %.preheader557.lr.ph ], [ %.0437631, %._crit_edge629 ] ; 2 uses
  br i1 %i.am, label %.lr.ph623, label %._crit_edge626

.lr.ph623:                                        ; preds = %.preheader557, %.lr.ph623
  %indvars.iv731 = phi i64 [ %indvars.iv.next732, %.lr.ph623 ], [ 0, %.preheader557 ] ; 2 uses
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv731
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !123 ; 10 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 200
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !70
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 208
  store ptr %i.nl, ptr %i.nm, align 8, !tbaa !71
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 216
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !72
  %i.np = getelementptr inbounds nuw i8, ptr %i.nj, i64 220
  store i32 %i.no, ptr %i.np, align 4, !tbaa !73
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nj, i64 172
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !74
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nj, i64 176
  store i32 %i.nr, ptr %i.ns, align 8, !tbaa !157
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nj, i64 192
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !75
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nj, i64 196
  store i32 %i.nu, ptr %i.nv, align 4, !tbaa !76
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nj, i64 96 ; 2 uses
  %i.nx = load <2 x ptr>, ptr %i.nw, align 8, !tbaa !158
  %i.ny = shufflevector <2 x ptr> %i.nx, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ny, ptr %i.nw, align 8, !tbaa !158
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nj, i64 112 ; 2 uses
  %i.oa = load <2 x ptr>, ptr %i.nz, align 8, !tbaa !159
  %i.ob = shufflevector <2 x ptr> %i.oa, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ob, ptr %i.nz, align 8, !tbaa !159
  %indvars.iv.next732 = add nuw nsw i64 %indvars.iv731, 1 ; 2 uses
  %exitcond736.not = icmp eq i64 %indvars.iv.next732, %wide.trip.count735
  br i1 %exitcond736.not, label %.lr.ph625, label %.lr.ph623, !llvm.loop !106

.lr.ph625:                                        ; preds = %.lr.ph623, %.lr.ph625
  %indvars.iv737 = phi i64 [ %indvars.iv.next738, %.lr.ph625 ], [ 0, %.lr.ph623 ] ; 4 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv737
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !8
  %i.oe = load i32, ptr %i.nh, align 8, !tbaa !61
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv737
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !123
  %i.oh = load i32, ptr %i.ag, align 8, !tbaa !41
  %i.oi = add nsw i32 %i.oh, 1
  %i.oj = trunc nuw nsw i64 %indvars.iv737 to i32
  %i.ok = mul nsw i32 %i.oi, %i.oj
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [8 x i8], ptr %.0437631, i64 %i.ol
  call fastcc void @shuffle_init(i32 noundef %.0430632, i32 noundef %i.od, i32 noundef %i.oe, ptr noundef %i.og, ptr noundef %i.om)
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1 ; 2 uses
  %exitcond742.not = icmp eq i64 %indvars.iv.next738, %wide.trip.count741
  br i1 %exitcond742.not, label %._crit_edge626, label %.lr.ph625, !llvm.loop !107

._crit_edge626:                                   ; preds = %.lr.ph625, %.preheader557
  %i.on = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !161
  %i.oo = load i32, ptr %i.ag, align 8, !tbaa !41
  %i.op = add nsw i32 %i.oo, 1
  %i.oq = mul nsw i32 %i.op, %spec.select.i
  %i.or = sext i32 %i.oq to i64
  %i.os = call i32 %i.on(i64 noundef %i.or, ptr noundef %.0438630, ptr noundef null) #13
  %.not481 = icmp eq i32 %i.os, 0
  br i1 %.not481, label %.preheader554, label %mca_fcoll_dynamic_gen2_get_configuration.exit

.preheader554:                                    ; preds = %._crit_edge626
  br i1 %i.am, label %.lr.ph628, label %._crit_edge629

bb.aq:                                            ; preds = %.lr.ph628
  %indvars.iv.next744 = add nuw nsw i64 %indvars.iv743, 1 ; 2 uses
  %exitcond748.not = icmp eq i64 %indvars.iv.next744, %wide.trip.count747
  br i1 %exitcond748.not, label %._crit_edge629, label %.lr.ph628, !llvm.loop !108

.lr.ph628:                                        ; preds = %.preheader554, %bb.aq
  %indvars.iv743 = phi i64 [ %indvars.iv.next744, %bb.aq ], [ 0, %.preheader554 ] ; 3 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv743
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !8
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv743
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !123
  %i.ox = call fastcc i32 @write_init(ptr noundef %0, i32 noundef %i.ou, ptr noundef %i.ow)
  %.not482 = icmp eq i32 %i.ox, 0
  br i1 %.not482, label %bb.aq, label %.preheader551

._crit_edge629:                                   ; preds = %bb.aq, %.preheader554
  %i.oy = add nuw nsw i32 %.0430632, 1            ; 2 uses
  %exitcond749.not = icmp eq i32 %i.oy, %.0432.lcssa
  br i1 %exitcond749.not, label %._crit_edge633, label %.preheader557, !llvm.loop !109

._crit_edge633:                                   ; preds = %._crit_edge629, %.loopexit560
  %.0438.lcssa = phi ptr [ %i.mc, %.loopexit560 ], [ %.0437631, %._crit_edge629 ]
  br i1 %i.mt, label %.preheader553, label %mca_fcoll_dynamic_gen2_get_configuration.exit

.preheader553:                                    ; preds = %._crit_edge633
  br i1 %i.am, label %.lr.ph636.preheader, label %._crit_edge637

.lr.ph636.preheader:                              ; preds = %.preheader553
  %wide.trip.count754 = zext nneg i32 %spec.select.i to i64
  br label %.lr.ph636

.lr.ph636:                                        ; preds = %.lr.ph636.preheader, %.lr.ph636
  %indvars.iv750 = phi i64 [ 0, %.lr.ph636.preheader ], [ %indvars.iv.next751, %.lr.ph636 ] ; 2 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv750
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !123 ; 10 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 200
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !70
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 208
  store ptr %i.pc, ptr %i.pd, align 8, !tbaa !71
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 216
  %i.pf = load i32, ptr %i.pe, align 8, !tbaa !72
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pa, i64 220
  store i32 %i.pf, ptr %i.pg, align 4, !tbaa !73
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pa, i64 172
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !74
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pa, i64 176
  store i32 %i.pi, ptr %i.pj, align 8, !tbaa !157
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pa, i64 192
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !75
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pa, i64 196
  store i32 %i.pl, ptr %i.pm, align 4, !tbaa !76
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pa, i64 96 ; 2 uses
  %i.po = load <2 x ptr>, ptr %i.pn, align 8, !tbaa !158
  %i.pp = shufflevector <2 x ptr> %i.po, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.pp, ptr %i.pn, align 8, !tbaa !158
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pa, i64 112 ; 2 uses
  %i.pr = load <2 x ptr>, ptr %i.pq, align 8, !tbaa !159
  %i.ps = shufflevector <2 x ptr> %i.pr, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ps, ptr %i.pq, align 8, !tbaa !159
  %indvars.iv.next751 = add nuw nsw i64 %indvars.iv750, 1 ; 2 uses
  %exitcond755.not = icmp eq i64 %indvars.iv.next751, %wide.trip.count754
  br i1 %exitcond755.not, label %._crit_edge637, label %.lr.ph636, !llvm.loop !110

._crit_edge637:                                   ; preds = %.lr.ph636, %.preheader553
  %i.pt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !161
  %i.pu = load i32, ptr %i.ag, align 8, !tbaa !41
  %i.pv = add nsw i32 %i.pu, 1
  %i.pw = mul nsw i32 %i.pv, %spec.select.i
  %i.px = sext i32 %i.pw to i64
end_hunk_0
begin_hunk_1_@shuffle_init:bb.a
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge723, %bb.w
  %.pr = phi i32 [ %i.gr, %bb.w ], [ %i.od, %._crit_edge723 ] ; 2 uses
  %.pn = phi i32 [ %i.gn, %bb.w ], [ %i.ob, %._crit_edge723 ]
  %.5 = add i32 %.0488606, %.pn                   ; 2 uses
  %.not551 = icmp eq i32 %.pr, 0
  br i1 %.not551, label %.loopexit583, label %bb.n, !llvm.loop !187

.loopexit583:                                     ; preds = %bb.ai, %.thread, %bb.m, %bb.ad, %bb.z
  %.6 = phi i32 [ %spec.select842, %bb.z ], [ %spec.select843, %bb.ad ], [ 0, %bb.m ], [ 0, %.thread ], [ %.5, %bb.ai ] ; 5 uses
  br i1 %i.e, label %.preheader581, label %.loopexit575

.preheader581:                                    ; preds = %.loopexit583
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 4 uses
  %i.og = load i32, ptr %i.of, align 8, !tbaa !50 ; 3 uses
  %i.oh = icmp sgt i32 %i.og, 0
  br i1 %i.oh, label %.preheader580.lr.ph, label %.loopexit575

.preheader580.lr.ph:                              ; preds = %.preheader581
  %i.oi = load ptr, ptr %3, align 8, !tbaa !62
  %i.oj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %wide.trip.count667 = zext nneg i32 %i.og to i64
  br label %.preheader580

.preheader580:                                    ; preds = %.preheader580.lr.ph, %._crit_edge
  %indvars.iv664 = phi i64 [ 0, %.preheader580.lr.ph ], [ %indvars.iv.next665, %._crit_edge ] ; 3 uses
  %.0512613 = phi i32 [ 0, %.preheader580.lr.ph ], [ %.1513.lcssa, %._crit_edge ] ; 3 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv664
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !8  ; 3 uses
  %i.om = icmp sgt i32 %i.ol, 0
  br i1 %i.om, label %.lr.ph610, label %._crit_edge

.lr.ph610:                                        ; preds = %.preheader580
  %i.on = load ptr, ptr %i.oj, align 8, !tbaa !64
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %indvars.iv664
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !18 ; 2 uses
  %wide.trip.count662 = zext nneg i32 %i.ol to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ol, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph610
  %n.vec = and i64 %wide.trip.count662, 2147483640 ; 3 uses
  %i.oq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0512613, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.oq, %vector.ph ], [ %i.ox, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.oy, %vector.body ]
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %index ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %wide.load = load <4 x i32>, ptr %i.or, align 4, !tbaa !8
  %wide.load19 = load <4 x i32>, ptr %i.os, align 4, !tbaa !8
  %i.ot = icmp sgt <4 x i32> %wide.load, zeroinitializer
  %i.ou = icmp sgt <4 x i32> %wide.load19, zeroinitializer
  %i.ov = zext <4 x i1> %i.ot to <4 x i32>
  %i.ow = zext <4 x i1> %i.ou to <4 x i32>
  %i.ox = add <4 x i32> %vec.phi, %i.ov           ; 2 uses
  %i.oy = add <4 x i32> %vec.phi18, %i.ow         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.oz = icmp eq i64 %index.next, %n.vec
  br i1 %i.oz, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.oy, %i.ox
  %i.pa = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count662
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph610, %middle.block
  %indvars.iv659.ph = phi i64 [ 0, %.lr.ph610 ], [ %n.vec, %middle.block ]
  %.1513609.ph = phi i32 [ %.0512613, %.lr.ph610 ], [ %i.pa, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv659 = phi i64 [ %indvars.iv.next660, %scalar.ph ], [ %indvars.iv659.ph, %scalar.ph.preheader ] ; 2 uses
  %.1513609 = phi i32 [ %spec.select, %scalar.ph ], [ %.1513609.ph, %scalar.ph.preheader ]
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv659
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !8
  %i.pd = icmp sgt i32 %i.pc, 0
  %i.pe = zext i1 %i.pd to i32
  %spec.select = add nsw i32 %.1513609, %i.pe     ; 2 uses
  %indvars.iv.next660 = add nuw nsw i64 %indvars.iv659, 1 ; 2 uses
  %exitcond663.not = icmp eq i64 %indvars.iv.next660, %wide.trip.count662
  br i1 %exitcond663.not, label %._crit_edge, label %scalar.ph, !llvm.loop !189

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader580
  %.1513.lcssa = phi i32 [ %.0512613, %.preheader580 ], [ %i.pa, %middle.block ], [ %spec.select, %scalar.ph ] ; 15 uses
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1 ; 2 uses
  %exitcond668.not = icmp eq i64 %indvars.iv.next665, %wide.trip.count667
  br i1 %exitcond668.not, label %._crit_edge614, label %.preheader580, !llvm.loop !190

._crit_edge614:                                   ; preds = %._crit_edge
  %i.pf = icmp sgt i32 %.1513.lcssa, 0
  br i1 %i.pf, label %bb.aj, label %.loopexit575

bb.aj:                                            ; preds = %._crit_edge614
  %i.pg = zext nneg i32 %.1513.lcssa to i64       ; 5 uses
  %i.ph = mul nuw nsw i64 %i.pg, 24
  %i.pi = tail call noalias ptr @malloc(i64 noundef %i.ph) #14 ; 19 uses
  %i.pj = icmp eq ptr %i.pi, null
  br i1 %i.pj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #13
  br label %.loopexit

bb.al:                                            ; preds = %bb.aj
  %i.pk = shl nuw nsw i64 %i.pg, 2                ; 2 uses
  %i.pl = tail call noalias ptr @malloc(i64 noundef %i.pk) #14 ; 11 uses
  %i.pm = icmp eq ptr %i.pl, null
  br i1 %i.pm, label %bb.am, label %.preheader578.lr.ph

.preheader578.lr.ph:                              ; preds = %bb.al
  %i.pn = load ptr, ptr %3, align 8, !tbaa !62
  %i.po = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.pp = getelementptr inbounds nuw i8, ptr %3, i64 48
  %wide.trip.count677 = zext nneg i32 %i.og to i64
  br label %.preheader578

bb.am:                                            ; preds = %bb.al
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #13
  br label %.loopexit

.preheader578:                                    ; preds = %.preheader578.lr.ph, %._crit_edge620
  %indvars.iv674 = phi i64 [ 0, %.preheader578.lr.ph ], [ %indvars.iv.next675, %._crit_edge620 ] ; 5 uses
  %.0505623 = phi i32 [ 0, %.preheader578.lr.ph ], [ %.1506.lcssa, %._crit_edge620 ] ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv674
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !8  ; 2 uses
  %i.ps = icmp sgt i32 %i.pr, 0
  br i1 %i.ps, label %.lr.ph619, label %._crit_edge620

.lr.ph619:                                        ; preds = %.preheader578
  %i.pt = load ptr, ptr %i.po, align 8, !tbaa !64
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %indvars.iv674
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !18
  %wide.trip.count672 = zext nneg i32 %i.pr to i64
  %i.pw = trunc nuw nsw i64 %indvars.iv674 to i32
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph619, %bb.ap
  %indvars.iv669 = phi i64 [ 0, %.lr.ph619 ], [ %indvars.iv.next670, %bb.ap ] ; 3 uses
  %.1506618 = phi i32 [ %.0505623, %.lr.ph619 ], [ %.2507, %bb.ap ] ; 3 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv669
  %i.py = load i32, ptr %i.px, align 4, !tbaa !8  ; 2 uses
  %i.pz = icmp sgt i32 %i.py, 0
  br i1 %i.pz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.qa = zext nneg i32 %i.py to i64
  %i.qb = sext i32 %.1506618 to i64
  %i.qc = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.qb ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i64 %i.qa, ptr %i.qd, align 8, !tbaa !207
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  store i32 %i.pw, ptr %i.qe, align 8, !tbaa !208
  %i.qf = load ptr, ptr %i.pp, align 8, !tbaa !65
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %indvars.iv674
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !20
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %indvars.iv669
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !13
  store i64 %i.qj, ptr %i.qc, align 8, !tbaa !209
  %i.qk = add nsw i32 %.1506618, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.2507 = phi i32 [ %i.qk, %bb.ao ], [ %.1506618, %bb.an ] ; 2 uses
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1 ; 2 uses
  %exitcond673.not = icmp eq i64 %indvars.iv.next670, %wide.trip.count672
  br i1 %exitcond673.not, label %._crit_edge620, label %bb.an, !llvm.loop !191

._crit_edge620:                                   ; preds = %bb.ap, %.preheader578
  %.1506.lcssa = phi i32 [ %.0505623, %.preheader578 ], [ %.2507, %bb.ap ]
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1 ; 2 uses
  %exitcond678.not = icmp eq i64 %indvars.iv.next675, %wide.trip.count677
  br i1 %exitcond678.not, label %._crit_edge624, label %.preheader578, !llvm.loop !192

._crit_edge624:                                   ; preds = %._crit_edge620
  %i.ql = add nsw i32 %.1513.lcssa, -1            ; 2 uses
  %i.qm = tail call noalias ptr @malloc(i64 noundef %i.pk) #14 ; 21 uses
  %i.qn = icmp eq ptr %i.qm, null
  br i1 %i.qn, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge624
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #13
  br label %local_heap_sort.exit

bb.ar:                                            ; preds = %._crit_edge624
  store i32 0, ptr %i.qm, align 4, !tbaa !8
  %.not571 = icmp eq i32 %.1513.lcssa, 1
  br i1 %.not571, label %._crit_edge139.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ar
  %i.qo = add nsw i64 %i.pg, -1                   ; 2 uses
  %min.iters.check21 = icmp ult i32 %.1513.lcssa, 9
  br i1 %min.iters.check21, label %.lr.ph.i.preheader39, label %vector.ph22

vector.ph22:                                      ; preds = %.lr.ph.i.preheader
  %n.vec23 = and i64 %i.qo, -8                    ; 3 uses
  %5 = or disjoint i64 %n.vec23, 1
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph22
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next26, %vector.body24 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph22 ], [ %vec.ind.next, %vector.body24 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %index25 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 20
  store <4 x i32> %vec.ind, ptr %i.qq, align 4, !tbaa !8
  store <4 x i32> %step.add, ptr %i.qr, align 4, !tbaa !8
  %index.next26 = add nuw i64 %index25, 8         ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.qs = icmp eq i64 %index.next26, %n.vec23
  br i1 %i.qs, label %middle.block27, label %vector.body24, !llvm.loop !193

middle.block27:                                   ; preds = %vector.body24
  %cmp.n28 = icmp eq i64 %i.qo, %n.vec23
  br i1 %cmp.n28, label %._crit_edge.i, label %.lr.ph.i.preheader39

.lr.ph.i.preheader39:                             ; preds = %.lr.ph.i.preheader, %middle.block27
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %5, %middle.block27 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader39, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader39 ] ; 3 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %indvars.iv.i
  %i.qu = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.qu, ptr %i.qt, align 4, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.pg
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !194

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block27
  %i.qv = lshr i32 %.1513.lcssa, 1
  br label %.preheader130.i

.loopexit.i:                                      ; preds = %bb.ax
  %i.qw = icmp sgt i32 %.1113134.in.i, 1
  br i1 %i.qw, label %.preheader130.i, label %.preheader.i, !llvm.loop !195

.preheader130.i:                                  ; preds = %.loopexit.i, %._crit_edge.i
  %.1113134.in.i = phi i32 [ %.1113134.i, %.loopexit.i ], [ %i.qv, %._crit_edge.i ] ; 2 uses
  %.1113134.i = add nsw i32 %.1113134.in.i, -1    ; 2 uses
  br label %bb.as

.preheader.i:                                     ; preds = %.loopexit.i
  %i.qx = zext nneg i32 %i.ql to i64
  br label %.lr.ph138.i

bb.as:                                            ; preds = %bb.ay, %.preheader130.i
  %.0108132.i = phi i32 [ %.1113134.i, %.preheader130.i ], [ %.1105.i, %bb.ay ] ; 5 uses
  %i.qy = shl nuw nsw i32 %.0108132.i, 1          ; 3 uses
  %i.qz = add nuw nsw i32 %i.qy, 2                ; 3 uses
  %.not126.not.i = icmp slt i32 %i.qy, %i.ql
  br i1 %.not126.not.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ra = or disjoint i32 %i.qy, 1                ; 2 uses
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.rb
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !8
  %i.re = sext i32 %i.rd to i64
  %i.rf = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.re
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !209
  %i.rh = zext nneg i32 %.0108132.i to i64
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.rh
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !8
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.rk
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !209
  %i.rn = icmp sgt i64 %i.rg, %i.rm
  br i1 %i.rn, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0104.i = phi i32 [ %.0108132.i, %bb.au ], [ %i.ra, %bb.at ] ; 3 uses
  %.not127.not.i = icmp samesign ult i32 %i.qz, %.1513.lcssa
  br i1 %.not127.not.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ro = zext nneg i32 %i.qz to i64
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !8
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.rr
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !209
  %i.ru = zext nneg i32 %.0104.i to i64
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !8
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.rx
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !209
  %i.sa = icmp sgt i64 %i.rt, %i.rz
  %spec.select.i = select i1 %i.sa, i32 %i.qz, i32 %.0104.i
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.1105.i = phi i32 [ %.0104.i, %bb.av ], [ %spec.select.i, %bb.aw ] ; 3 uses
  %.not128.not.i = icmp eq i32 %.1105.i, %.0108132.i
  br i1 %.not128.not.i, label %.loopexit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.sb = zext nneg i32 %.1105.i to i64
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.sb ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !8
  %i.se = zext nneg i32 %.0108132.i to i64
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.se ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !8
  store i32 %i.sg, ptr %i.sc, align 4, !tbaa !8
  store i32 %i.sd, ptr %i.sf, align 4, !tbaa !8
  br label %bb.as

.lr.ph138.i:                                      ; preds = %bb.bg, %.preheader.i
  %indvars.iv142.i = phi i64 [ %i.qx, %.preheader.i ], [ %indvars.iv.next143.i, %bb.bg ] ; 5 uses
  %indvars144.i = trunc i64 %indvars.iv142.i to i32
  %i.sh = load i32, ptr %i.qm, align 4, !tbaa !8
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %indvars.iv142.i ; 3 uses
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !8
  store i32 %i.sj, ptr %i.qm, align 4, !tbaa !8
  store i32 %i.sh, ptr %i.si, align 4, !tbaa !8
  %indvars.iv.next143.i = add nsw i64 %indvars.iv142.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next143.i to i32
  br label %bb.az

bb.az:                                            ; preds = %bb.bf, %.lr.ph138.i
  %.2110135.i = phi i32 [ 0, %.lr.ph138.i ], [ %.3107.i, %bb.bf ] ; 5 uses
  %i.sk = shl nsw i32 %.2110135.i, 1              ; 3 uses
  %i.sl = add nsw i32 %i.sk, 2                    ; 3 uses
  %.not122.not.i = icmp slt i32 %i.sk, %indvars.i
  br i1 %.not122.not.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.sm = or disjoint i32 %i.sk, 1                ; 2 uses
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.sn
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !8
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.sq
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !209
  %i.st = sext i32 %.2110135.i to i64
  %i.su = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.st
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !8
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.sw
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !209
  %i.sz = icmp sgt i64 %i.ss, %i.sy
  br i1 %i.sz, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.2106.i = phi i32 [ %.2110135.i, %bb.bb ], [ %i.sm, %bb.ba ] ; 3 uses
  %.not123.not.i = icmp slt i32 %i.sl, %indvars144.i
  br i1 %.not123.not.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ta = sext i32 %i.sl to i64
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.ta
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !8
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.td
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !209
  %i.tg = sext i32 %.2106.i to i64
  %i.th = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.tg
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !8
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [24 x i8], ptr %i.pi, i64 %i.tj
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !209
  %i.tm = icmp sgt i64 %i.tf, %i.tl
  %spec.select129.i = select i1 %i.tm, i32 %i.sl, i32 %.2106.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.3107.i = phi i32 [ %.2106.i, %bb.bc ], [ %spec.select129.i, %bb.bd ] ; 3 uses
  %.not124.not.i = icmp eq i32 %.3107.i, %.2110135.i
  br i1 %.not124.not.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.tn = sext i32 %.3107.i to i64
  %i.to = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.tn ; 2 uses
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !8
  %i.tq = sext i32 %.2110135.i to i64
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.tq ; 2 uses
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !8
  store i32 %i.ts, ptr %i.to, align 4, !tbaa !8
  store i32 %i.tp, ptr %i.tr, align 4, !tbaa !8
  br label %bb.az

bb.bg:                                            ; preds = %bb.be
  %i.tt = load i32, ptr %i.si, align 4, !tbaa !8
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %indvars.iv142.i
  store i32 %i.tt, ptr %i.tu, align 4, !tbaa !8
  %i.tv = icmp sgt i64 %indvars.iv142.i, 1
  br i1 %i.tv, label %.lr.ph138.i, label %._crit_edge139.i.loopexit, !llvm.loop !196

._crit_edge139.i.loopexit:                        ; preds = %bb.bg
  %.pre735 = load i32, ptr %i.qm, align 4, !tbaa !8
  br label %._crit_edge139.i

._crit_edge139.i:                                 ; preds = %._crit_edge139.i.loopexit, %bb.ar
  %i.tw = phi i32 [ %.pre735, %._crit_edge139.i.loopexit ], [ 0, %bb.ar ] ; 2 uses
  store i32 %i.tw, ptr %i.pl, align 4, !tbaa !8
  tail call void @free(ptr noundef nonnull %i.qm) #13
  %i.tx = sext i32 %i.tw to i64
  br label %local_heap_sort.exit

local_heap_sort.exit:                             ; preds = %bb.aq, %._crit_edge139.i
  %i.ty = phi i64 [ 0, %bb.aq ], [ %i.tx, %._crit_edge139.i ]
  %i.tz = shl nuw nsw i64 %i.pg, 3
  %i.ua = tail call noalias ptr @malloc(i64 noundef %i.tz) #14 ; 12 uses
  %i.ub = getelementptr inbounds [8 x i8], ptr %i.ua, i64 %i.ty
  store i64 0, ptr %i.ub, align 8, !tbaa !13
  %.not643 = icmp eq i32 %.1513.lcssa, 1
end_hunk_1
