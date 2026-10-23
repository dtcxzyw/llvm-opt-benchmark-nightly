Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/fcoll_dynamic_file_write_all?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mca_fcoll_dynamic_file_write_all:bb.a
  %.pre1201 = sext i32 %.2675 to i64
  %.pre1203 = trunc i64 %.1691927 to i32
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.kb = trunc i64 %.1691927 to i32              ; 2 uses
  %i.kc = sext i32 %.2675 to i64                  ; 4 uses
  %i.kd = getelementptr inbounds [8 x i8], ptr %.0608, i64 %i.kc
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !87
  %i.kf = getelementptr inbounds [4 x i8], ptr %.0628, i64 %i.kc
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !8
  %i.kh = sext i32 %i.kg to i64                   ; 2 uses
  %i.ki = getelementptr [4 x i8], ptr %i.ke, i64 %i.kh
  %i.kj = getelementptr i8, ptr %i.ki, i64 -4
  store i32 %i.kb, ptr %i.kj, align 4, !tbaa !8
  %i.kk = load i32, ptr %i.jr, align 4, !tbaa !8
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [16 x i8], ptr %.0638, i64 %i.kl ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !90
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %.0606, i64 %i.kc
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !88
  %i.kr = getelementptr [8 x i8], ptr %i.kq, i64 %i.kh
  %i.ks = getelementptr i8, ptr %i.kr, i64 -8
  store i64 %i.ko, ptr %i.ks, align 8, !tbaa !42
  %.pre1187 = load i32, ptr %i.dz, align 8, !tbaa !83
  %.phi.trans.insert1188 = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %.pre1189 = load i64, ptr %.phi.trans.insert1188, align 8, !tbaa !91
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge1200, %bb.az
  %.pre-phi1204 = phi i32 [ %.pre1203, %._crit_edge1200 ], [ %i.kb, %bb.az ]
  %.pre-phi1202 = phi i64 [ %.pre1201, %._crit_edge1200 ], [ %i.kc, %bb.az ]
  %i.kt = phi i64 [ %i.jw, %._crit_edge1200 ], [ %.pre1189, %bb.az ]
  %i.ku = phi i32 [ %i.jz, %._crit_edge1200 ], [ %.pre1187, %bb.az ] ; 2 uses
  %i.kv = load ptr, ptr %i.ae, align 8, !tbaa !76
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %.pre-phi1202
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !8
  %i.ky = icmp eq i32 %i.kx, %i.ku
  %i.kz = select i1 %i.ky, i32 %.pre-phi1204, i32 0
  %.3667 = add i32 %i.kz, %.0664930
  %i.la = sub i64 %i.kt, %.1691927
  br label %.loopexit819

bb.bb:                                            ; preds = %bb.ax
  %i.lb = load i32, ptr %i.dz, align 8, !tbaa !83 ; 2 uses
  %i.lc = icmp eq i32 %i.ag, %i.lb
  br i1 %i.lc, label %bb.bc, label %._crit_edge1199

._crit_edge1199:                                  ; preds = %bb.bb
  %.pre1205 = sext i32 %.2675 to i64
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ld = trunc i64 %i.jw to i32
  %i.le = sext i32 %.2675 to i64                  ; 4 uses
  %i.lf = getelementptr inbounds [8 x i8], ptr %.0608, i64 %i.le ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !87 ; 2 uses
  %i.lh = getelementptr inbounds [4 x i8], ptr %.0628, i64 %i.le ; 4 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !8  ; 2 uses
  %i.lj = sext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr [4 x i8], ptr %i.lg, i64 %i.lj
  %i.ll = getelementptr i8, ptr %i.lk, i64 -4
  store i32 %i.ld, ptr %i.ll, align 4, !tbaa !8
  %i.lm = load i32, ptr %i.jr, align 4, !tbaa !8
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [16 x i8], ptr %.0638, i64 %i.ln
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !90
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = getelementptr inbounds [8 x i8], ptr %.0606, i64 %i.le ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !88 ; 2 uses
  %i.lt = getelementptr [8 x i8], ptr %i.ls, i64 %i.lj
  %i.lu = getelementptr i8, ptr %i.lt, i64 -8
  store i64 %i.lq, ptr %i.lu, align 8, !tbaa !42
  %i.lv = add nsw i32 %i.li, 1
  %i.lw = sext i32 %i.lv to i64
  %i.lx = shl nsw i64 %i.lw, 2
  %i.ly = call ptr @realloc(ptr noundef %i.lg, i64 noundef %i.lx) #13 ; 2 uses
  store ptr %i.ly, ptr %i.lf, align 8, !tbaa !87
  %i.lz = load i32, ptr %i.lh, align 4, !tbaa !8
  %i.ma = add nsw i32 %i.lz, 1
  %i.mb = sext i32 %i.ma to i64
  %i.mc = shl nsw i64 %i.mb, 3
  %i.md = call ptr @realloc(ptr noundef %i.ls, i64 noundef %i.mc) #13 ; 2 uses
  store ptr %i.md, ptr %i.lr, align 8, !tbaa !88
  %i.me = load i32, ptr %i.lh, align 4, !tbaa !8  ; 2 uses
  %i.mf = sext i32 %i.me to i64                   ; 2 uses
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %i.mf
  store i32 0, ptr %i.mg, align 4, !tbaa !8
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.mf
  store i64 0, ptr %i.mh, align 8, !tbaa !42
  %i.mi = add nsw i32 %i.me, 1
  store i32 %i.mi, ptr %i.lh, align 4, !tbaa !8
  %.pre1181.a = load i32, ptr %i.dz, align 8, !tbaa !83
  %.pre1182.pre = load i32, ptr %i.jr, align 4, !tbaa !8
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge1199, %bb.bc
  %.pre-phi1206 = phi i64 [ %.pre1205, %._crit_edge1199 ], [ %i.le, %bb.bc ]
  %.pre1182 = phi i32 [ %i.js, %._crit_edge1199 ], [ %.pre1182.pre, %bb.bc ]
  %i.mj = phi i32 [ %i.lb, %._crit_edge1199 ], [ %.pre1181.a, %bb.bc ] ; 3 uses
  %i.mk = load ptr, ptr %i.ae, align 8, !tbaa !76
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.mk, i64 %.pre-phi1206
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !8
  %i.mn = icmp eq i32 %i.mm, %i.mj
  %i.mo = sext i32 %.pre1182 to i64
  %i.mp = getelementptr inbounds [16 x i8], ptr %.0638, i64 %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !91 ; 3 uses
  br i1 %i.mn, label %bb.be, label %.backedge

bb.be:                                            ; preds = %bb.bd
  %i.ms = trunc i64 %i.mr to i32
  %i.mt = add i32 %.0664930, %i.ms
  br label %.backedge

.loopexit819.loopexit:                            ; preds = %.backedge
  %i.mu = trunc nsw i64 %indvars.iv.next1120 to i32
  br label %.loopexit819

.loopexit819:                                     ; preds = %..loopexit819_crit_edge, %.loopexit819.loopexit, %bb.ba, %bb.aw
  %i.mv = phi i32 [ %i.jk, %bb.aw ], [ %i.ku, %bb.ba ], [ %.pre1190.a, %..loopexit819_crit_edge ], [ %i.ij, %.loopexit819.loopexit ]
  %.1627830 = phi i32 [ %i.ik, %bb.aw ], [ %i.jy, %bb.ba ], [ %.0626985, %..loopexit819_crit_edge ], [ %i.mu, %.loopexit819.loopexit ]
  %.3676 = phi i32 [ %.2675, %bb.aw ], [ %.2675, %bb.ba ], [ %.0673977, %..loopexit819_crit_edge ], [ %.2675, %.loopexit819.loopexit ]
  %.2672 = phi i64 [ %i.jq, %bb.aw ], [ %i.la, %bb.ba ], [ %.0670978, %..loopexit819_crit_edge ], [ 0, %.loopexit819.loopexit ]
  %.5669 = phi i32 [ %.2666, %bb.aw ], [ %.3667, %bb.ba ], [ 0, %..loopexit819_crit_edge ], [ %.0664.be, %.loopexit819.loopexit ] ; 4 uses
  %i.mw = icmp eq i32 %i.ag, %i.mv
  br i1 %i.mw, label %.preheader818, label %.loopexit

.preheader818:                                    ; preds = %.loopexit819
  %i.mx = load i32, ptr %i.ah, align 8, !tbaa !77 ; 3 uses
  %i.my = icmp sgt i32 %i.mx, 0
  br i1 %i.my, label %.preheader813.preheader, label %._crit_edge946.thread

.preheader813.preheader:                          ; preds = %.preheader818
  %wide.trip.count1130 = zext nneg i32 %i.mx to i64
  br label %.preheader813

.preheader813:                                    ; preds = %.preheader813.preheader, %._crit_edge942
  %indvars.iv1127 = phi i64 [ 0, %.preheader813.preheader ], [ %indvars.iv.next1128, %._crit_edge942 ] ; 3 uses
  %.1658945 = phi i32 [ 0, %.preheader813.preheader ], [ %.2659.lcssa, %._crit_edge942 ] ; 3 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.0628, i64 %indvars.iv1127
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !8  ; 3 uses
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %.lr.ph941, label %._crit_edge942

.lr.ph941:                                        ; preds = %.preheader813
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %.0608, i64 %indvars.iv1127
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !87 ; 2 uses
  %wide.trip.count1125 = zext nneg i32 %i.na to i64 ; 3 uses
  %min.iters.check1426 = icmp ult i32 %i.na, 8
  br i1 %min.iters.check1426, label %scalar.ph1425.preheader, label %vector.ph1427

vector.ph1427:                                    ; preds = %.lr.ph941
  %n.vec1428 = and i64 %wide.trip.count1125, 2147483640 ; 3 uses
  %i.ne = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1658945, i64 0
  br label %vector.body1429

vector.body1429:                                  ; preds = %vector.body1429, %vector.ph1427
  %index1430 = phi i64 [ 0, %vector.ph1427 ], [ %index.next1435, %vector.body1429 ] ; 2 uses
  %vec.phi1431.a = phi <4 x i32> [ %i.ne, %vector.ph1427 ], [ %i.nl, %vector.body1429 ]
  %vec.phi1432 = phi <4 x i32> [ zeroinitializer, %vector.ph1427 ], [ %i.nm, %vector.body1429 ]
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %index1430 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %wide.load1433.a = load <4 x i32>, ptr %i.nf, align 4, !tbaa !8
  %wide.load1434 = load <4 x i32>, ptr %i.ng, align 4, !tbaa !8
  %i.nh = icmp sgt <4 x i32> %wide.load1433.a, zeroinitializer
  %i.ni = icmp sgt <4 x i32> %wide.load1434, zeroinitializer
  %i.nj = zext <4 x i1> %i.nh to <4 x i32>
  %i.nk = zext <4 x i1> %i.ni to <4 x i32>
  %i.nl = add <4 x i32> %vec.phi1431.a, %i.nj     ; 2 uses
  %i.nm = add <4 x i32> %vec.phi1432, %i.nk       ; 2 uses
  %index.next1435 = add nuw i64 %index1430, 8     ; 2 uses
  %i.nn = icmp eq i64 %index.next1435, %n.vec1428
  br i1 %i.nn, label %middle.block1436, label %vector.body1429, !llvm.loop !26

middle.block1436:                                 ; preds = %vector.body1429
  %bin.rdx1437 = add <4 x i32> %i.nm, %i.nl
  %i.no = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1437) ; 2 uses
  %cmp.n1438 = icmp eq i64 %n.vec1428, %wide.trip.count1125
  br i1 %cmp.n1438, label %._crit_edge942, label %scalar.ph1425.preheader

scalar.ph1425.preheader:                          ; preds = %.lr.ph941, %middle.block1436
  %indvars.iv1122.ph = phi i64 [ 0, %.lr.ph941 ], [ %n.vec1428, %middle.block1436 ]
  %.2659940.ph = phi i32 [ %.1658945, %.lr.ph941 ], [ %i.no, %middle.block1436 ]
  br label %scalar.ph1425

scalar.ph1425:                                    ; preds = %scalar.ph1425.preheader, %scalar.ph1425
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %scalar.ph1425 ], [ %indvars.iv1122.ph, %scalar.ph1425.preheader ] ; 2 uses
  %.2659940 = phi i32 [ %spec.select788, %scalar.ph1425 ], [ %.2659940.ph, %scalar.ph1425.preheader ]
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv1122
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !8
  %i.nr = icmp sgt i32 %i.nq, 0
  %i.ns = zext i1 %i.nr to i32
  %spec.select788 = add nsw i32 %.2659940, %i.ns  ; 2 uses
  %indvars.iv.next1123 = add nuw nsw i64 %indvars.iv1122, 1 ; 2 uses
  %exitcond1126.not = icmp eq i64 %indvars.iv.next1123, %wide.trip.count1125
  br i1 %exitcond1126.not, label %._crit_edge942, label %scalar.ph1425, !llvm.loop !27

._crit_edge942:                                   ; preds = %scalar.ph1425, %middle.block1436, %.preheader813
  %.2659.lcssa = phi i32 [ %.1658945, %.preheader813 ], [ %i.no, %middle.block1436 ], [ %spec.select788, %scalar.ph1425 ] ; 10 uses
  %indvars.iv.next1128 = add nuw nsw i64 %indvars.iv1127, 1 ; 2 uses
  %exitcond1131.not = icmp eq i64 %indvars.iv.next1128, %wide.trip.count1130
  br i1 %exitcond1131.not, label %._crit_edge946, label %.preheader813, !llvm.loop !28

._crit_edge946:                                   ; preds = %._crit_edge942
  %i.nt = icmp sgt i32 %.2659.lcssa, 0
  br i1 %i.nt, label %bb.bf, label %._crit_edge946.thread

bb.bf:                                            ; preds = %._crit_edge946
  %i.nu = zext nneg i32 %.2659.lcssa to i64       ; 4 uses
  %i.nv = mul nuw nsw i64 %i.nu, 24
  %i.nw = call noalias ptr @malloc(i64 noundef %i.nv) #11 ; 12 uses
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %.loopexit815.sink.split, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ny = shl nuw nsw i64 %i.nu, 2
  %i.nz = call noalias ptr @malloc(i64 noundef %i.ny) #11 ; 11 uses
  %i.oa = icmp eq ptr %i.nz, null
  br i1 %i.oa, label %.loopexit815.sink.split, label %.preheader812.preheader

.preheader812.preheader:                          ; preds = %bb.bg
  %wide.trip.count1140 = zext nneg i32 %i.mx to i64
  br label %.preheader812

.preheader812:                                    ; preds = %.preheader812.preheader, %._crit_edge952
  %indvars.iv1137 = phi i64 [ 0, %.preheader812.preheader ], [ %indvars.iv.next1138, %._crit_edge952 ] ; 5 uses
  %.0623955 = phi i32 [ 0, %.preheader812.preheader ], [ %.1624.lcssa, %._crit_edge952 ] ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.0628, i64 %indvars.iv1137
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !8  ; 2 uses
  %i.od = icmp sgt i32 %i.oc, 0
  br i1 %i.od, label %.lr.ph951, label %._crit_edge952

.lr.ph951:                                        ; preds = %.preheader812
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %.0608, i64 %indvars.iv1137
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !87
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %.0606, i64 %indvars.iv1137
  %wide.trip.count1135 = zext nneg i32 %i.oc to i64
  %i.oh = trunc nuw nsw i64 %indvars.iv1137 to i32
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph951, %bb.bj
  %indvars.iv1132 = phi i64 [ 0, %.lr.ph951 ], [ %indvars.iv.next1133, %bb.bj ] ; 3 uses
  %.1624950 = phi i32 [ %.0623955, %.lr.ph951 ], [ %.2625, %bb.bj ] ; 3 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %indvars.iv1132
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !8  ; 2 uses
  %i.ok = icmp sgt i32 %i.oj, 0
  br i1 %i.ok, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ol = zext nneg i32 %i.oj to i64
  %i.om = sext i32 %.1624950 to i64
  %i.on = getelementptr inbounds [24 x i8], ptr %i.nw, i64 %i.om ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  store i64 %i.ol, ptr %i.oo, align 8, !tbaa !92
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  store i32 %i.oh, ptr %i.op, align 8, !tbaa !93
  %i.oq = load ptr, ptr %i.og, align 8, !tbaa !88
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %indvars.iv1132
  %i.os = load i64, ptr %i.or, align 8, !tbaa !42
  store i64 %i.os, ptr %i.on, align 8, !tbaa !15
  %i.ot = add nsw i32 %.1624950, 1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %.2625 = phi i32 [ %i.ot, %bb.bi ], [ %.1624950, %bb.bh ] ; 2 uses
  %indvars.iv.next1133 = add nuw nsw i64 %indvars.iv1132, 1 ; 2 uses
  %exitcond1136.not = icmp eq i64 %indvars.iv.next1133, %wide.trip.count1135
  br i1 %exitcond1136.not, label %._crit_edge952, label %bb.bh, !llvm.loop !29

._crit_edge952:                                   ; preds = %bb.bj, %.preheader812
  %.1624.lcssa = phi i32 [ %.0623955, %.preheader812 ], [ %.2625, %bb.bj ]
  %indvars.iv.next1138 = add nuw nsw i64 %indvars.iv1137, 1 ; 2 uses
  %exitcond1141.not = icmp eq i64 %indvars.iv.next1138, %wide.trip.count1140
  br i1 %exitcond1141.not, label %._crit_edge956, label %.preheader812, !llvm.loop !30

._crit_edge956:                                   ; preds = %._crit_edge952
  call fastcc void @local_heap_sort(ptr noundef %i.nw, i32 noundef %.2659.lcssa, ptr noundef %i.nz)
  %i.ou = shl nuw nsw i64 %i.nu, 3
  %i.ov = call noalias ptr @malloc(i64 noundef %i.ou) #11 ; 12 uses
  %i.ow = load i32, ptr %i.nz, align 4, !tbaa !8
  %i.ox = sext i32 %i.ow to i64
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.ov, i64 %i.ox
  store i64 0, ptr %i.oy, align 8, !tbaa !42
  %.not1017 = icmp eq i32 %.2659.lcssa, 1
  br i1 %.not1017, label %._crit_edge960, label %.lr.ph959.preheader

.lr.ph959.preheader:                              ; preds = %._crit_edge956
  %smax = call i32 @llvm.smax.i32(i32 %.2659.lcssa, i32 2)
  %wide.trip.count1145 = zext nneg i32 %smax to i64
  %i.oz = add nsw i64 %wide.trip.count1145, -1    ; 3 uses
  %xtraiter1501 = and i64 %i.oz, 1
  %i.pa = icmp slt i32 %.2659.lcssa, 3
  br i1 %i.pa, label %.lr.ph959.epil.preheader, label %.lr.ph959.preheader.new

.lr.ph959.preheader.new:                          ; preds = %.lr.ph959.preheader
  %unroll_iter1505 = and i64 %i.oz, -2
  br label %.lr.ph959

.lr.ph959:                                        ; preds = %.lr.ph959, %.lr.ph959.preheader.new
  %indvars.iv1142 = phi i64 [ 1, %.lr.ph959.preheader.new ], [ %indvars.iv.next1143.1, %.lr.ph959 ] ; 3 uses
  %niter1506 = phi i64 [ 0, %.lr.ph959.preheader.new ], [ %niter1506.next.1, %.lr.ph959 ]
  %i.pb = getelementptr [4 x i8], ptr %i.nz, i64 %indvars.iv1142 ; 2 uses
  %i.pc = getelementptr i8, ptr %i.pb, i64 -4
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !8
  %i.pe = sext i32 %i.pd to i64                   ; 2 uses
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.ov, i64 %i.pe
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !42
  %i.ph = getelementptr inbounds [24 x i8], ptr %i.nw, i64 %i.pe
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !92
  %i.pk = add nsw i64 %i.pj, %i.pg
  %i.pl = load i32, ptr %i.pb, align 4, !tbaa !8  ; 2 uses
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.ov, i64 %i.pm
  store i64 %i.pk, ptr %i.pn, align 8, !tbaa !42
  %i.po = getelementptr [4 x i8], ptr %i.nz, i64 %indvars.iv1142
  %i.pp = getelementptr i8, ptr %i.po, i64 4
  %i.pq = sext i32 %i.pl to i64                   ; 2 uses
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.ov, i64 %i.pq
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !42
  %i.pt = getelementptr inbounds [24 x i8], ptr %i.nw, i64 %i.pq
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !92
  %i.pw = add nsw i64 %i.pv, %i.ps
  %i.px = load i32, ptr %i.pp, align 4, !tbaa !8
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [8 x i8], ptr %i.ov, i64 %i.py
  store i64 %i.pw, ptr %i.pz, align 8, !tbaa !42
  %indvars.iv.next1143.1 = add nuw nsw i64 %indvars.iv1142, 2 ; 2 uses
  %niter1506.next.1 = add nuw i64 %niter1506, 2   ; 2 uses
  %niter1506.ncmp.1 = icmp eq i64 %niter1506.next.1, %unroll_iter1505
  br i1 %niter1506.ncmp.1, label %._crit_edge960.loopexit.unr-lcssa, label %.lr.ph959, !llvm.loop !31

._crit_edge960.loopexit.unr-lcssa:                ; preds = %.lr.ph959
  %lcmp.mod1503.not = icmp eq i64 %xtraiter1501, 0
  br i1 %lcmp.mod1503.not, label %._crit_edge960, label %.lr.ph959.epil.preheader

.lr.ph959.epil.preheader:                         ; preds = %._crit_edge960.loopexit.unr-lcssa, %.lr.ph959.preheader
  %indvars.iv1142.epil.init = phi i64 [ 1, %.lr.ph959.preheader ], [ %indvars.iv.next1143.1, %._crit_edge960.loopexit.unr-lcssa ]
  %lcmp.mod1504 = trunc i64 %i.oz to i1
  call void @llvm.assume(i1 %lcmp.mod1504)
  %i.qa = getelementptr [4 x i8], ptr %i.nz, i64 %indvars.iv1142.epil.init ; 2 uses
  %i.qb = getelementptr i8, ptr %i.qa, i64 -4
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !8
  %i.qd = sext i32 %i.qc to i64                   ; 2 uses
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.ov, i64 %i.qd
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !42
  %i.qg = getelementptr inbounds [24 x i8], ptr %i.nw, i64 %i.qd
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !92
  %i.qj = add nsw i64 %i.qi, %i.qf
  %i.qk = load i32, ptr %i.qa, align 4, !tbaa !8
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.ov, i64 %i.ql
  store i64 %i.qj, ptr %i.qm, align 8, !tbaa !42
  br label %._crit_edge960

._crit_edge960:                                   ; preds = %.lr.ph959.epil.preheader, %._crit_edge960.loopexit.unr-lcssa, %._crit_edge956
  %i.qn = load i32, ptr %i.ah, align 8, !tbaa !77
  %i.qo = sext i32 %i.qn to i64
  %i.qp = shl nsw i64 %i.qo, 2
  %i.qq = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.qp) #12 ; 3 uses
  %i.qr = icmp eq ptr %i.qq, null
  br i1 %i.qr, label %.loopexit815.sink.split, label %.lr.ph962

.lr.ph962:                                        ; preds = %._crit_edge960, %bb.bm
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %bb.bm ], [ 0, %._crit_edge960 ] ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv1147
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !8
  %i.qu = sext i32 %i.qt to i64                   ; 2 uses
  %i.qv = getelementptr inbounds [24 x i8], ptr %i.nw, i64 %i.qu
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !93 ; 3 uses
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.ov, i64 %i.qu
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !42
  %i.ra = sext i32 %i.qx to i64                   ; 3 uses
  %i.rb = getelementptr inbounds [8 x i8], ptr %.0606, i64 %i.ra
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !88
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.qq, i64 %i.ra ; 2 uses
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !8  ; 4 uses
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.rc, i64 %i.rf
  store i64 %i.qz, ptr %i.rg, align 8, !tbaa !42
  %i.rh = getelementptr inbounds [4 x i8], ptr %.0628, i64 %i.ra
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !8  ; 2 uses
  %i.rj = icmp slt i32 %i.re, %i.ri
  br i1 %i.rj, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph962
  %i.rk = add nsw i32 %i.re, 1
  store i32 %i.rk, ptr %i.rd, align 4, !tbaa !8
  br label %bb.bm

bb.bl:                                            ; preds = %.lr.ph962
  %i.rl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.qx, i32 noundef %i.re, i32 noundef %i.qx, i32 noundef %i.ri) ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %indvars.iv.next1148 = add nuw nsw i64 %indvars.iv1147, 1 ; 2 uses
  %exitcond1152.not = icmp eq i64 %indvars.iv.next1148, %i.nu
  br i1 %exitcond1152.not, label %._crit_edge963, label %.lr.ph962, !llvm.loop !32

._crit_edge963:                                   ; preds = %bb.bm
  %.pre1191.a = load i32, ptr %i.ah, align 8, !tbaa !77
  call void @free(ptr noundef nonnull %i.qq) #10
  %i.rm = icmp sgt i32 %.pre1191.a, 0
  br i1 %i.rm, label %.lr.ph966, label %.loopexit

.lr.ph966:                                        ; preds = %._crit_edge963, %bb.bp
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %bb.bp ], [ 0, %._crit_edge963 ] ; 7 uses
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %.0599, i64 %indvars.iv1153 ; 2 uses
  store ptr @ompi_request_null, ptr %i.rn, align 8, !tbaa !44
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %.0628, i64 %indvars.iv1153
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !8  ; 2 uses
  %i.rq = icmp sgt i32 %i.rp, 0
  br i1 %i.rq, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %.lr.ph966
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %.0608, i64 %indvars.iv1153
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !87
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %.0606, i64 %indvars.iv1153
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !88
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %.0601, i64 %indvars.iv1153 ; 3 uses
  %i.rw = call i32 @ompi_datatype_create_hindexed(i32 noundef %i.rp, ptr noundef %i.rs, ptr noundef %i.ru, ptr noundef nonnull @ompi_mpi_byte, ptr noundef %i.rv) #10 ; 0 uses
  %.val791 = load ptr, ptr %i.rv, align 8, !tbaa !84
  %i.rx = call i32 @opal_datatype_commit(ptr noundef %.val791) #10 ; 0 uses
  %i.ry = load ptr, ptr %i.rv, align 8, !tbaa !84 ; 2 uses
  %i.rz = getelementptr i8, ptr %i.ry, i64 24
  %.val = load i64, ptr %i.rz, align 8, !tbaa !52
  %.not767 = icmp eq i64 %.val, 0
  br i1 %.not767, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.sa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !95
  %i.sb = load ptr, ptr %i.ae, align 8, !tbaa !76
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %indvars.iv1153
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !8
  %i.se = load ptr, ptr %i.an, align 8, !tbaa !78
  %i.sf = call i32 %i.sa(ptr noundef %.0619, i64 noundef 1, ptr noundef nonnull %i.ry, i32 noundef %i.sd, i32 noundef 123, ptr noundef %i.se, ptr noundef nonnull %i.rn) #10
  %.not768 = icmp eq i32 %i.sf, 0
  br i1 %.not768, label %bb.bp, label %.loopexit815

bb.bp:                                            ; preds = %.lr.ph966, %bb.bo, %bb.bn
  %indvars.iv.next1154 = add nuw nsw i64 %indvars.iv1153, 1 ; 2 uses
  %i.sg = load i32, ptr %i.ah, align 8, !tbaa !77
  %i.sh = sext i32 %i.sg to i64
  %i.si = icmp slt i64 %indvars.iv.next1154, %i.sh
  br i1 %i.si, label %.lr.ph966, label %.loopexit, !llvm.loop !33

.loopexit:                                        ; preds = %bb.bp, %._crit_edge963, %.loopexit819
  %.4661 = phi i32 [ %.0657979, %.loopexit819 ], [ %.2659.lcssa, %._crit_edge963 ], [ %.2659.lcssa, %bb.bp ] ; 6 uses
  %.3635 = phi ptr [ %.2634, %.loopexit819 ], [ %i.nw, %._crit_edge963 ], [ %i.nw, %bb.bp ] ; 12 uses
  %.3615 = phi ptr [ %.2614, %.loopexit819 ], [ %i.nz, %._crit_edge963 ], [ %i.nz, %bb.bp ] ; 11 uses
  %.2605 = phi ptr [ %.1604, %.loopexit819 ], [ %i.ov, %._crit_edge963 ], [ %i.ov, %bb.bp ] ; 11 uses
  br i1 %.0597796, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.loopexit
  %i.sj = getelementptr inbounds i8, ptr %1, i64 %.0693975
  %.pre1194 = sext i32 %.5669 to i64
  br label %.thread799

bb.br:                                            ; preds = %.loopexit
  %.not759 = icmp eq i32 %.5669, 0
  br i1 %.not759, label %.thread803, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sk = sext i32 %.5669 to i64                  ; 7 uses
  %i.sl = call noalias ptr @malloc(i64 noundef %i.sk) #11 ; 7 uses
  %i.sm = icmp eq ptr %i.sl, null
  br i1 %i.sm, label %.loopexit815.sink.split, label %.preheader814

.preheader814:                                    ; preds = %bb.bs
  %i.sn = load ptr, ptr %i.b, align 8, !tbaa !41  ; 2 uses
  %i.so = sext i32 %.0651980 to i64
  %i.sp = getelementptr inbounds [16 x i8], ptr %i.sn, i64 %i.so ; 2 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !90
  %i.sr = ptrtoint ptr %i.sq to i64
  %i.ss = add i64 %.0640983, %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 8 ; 2 uses
  %i.su = load i64, ptr %i.st, align 8, !tbaa !91
  %i.sv = sub i64 %i.su, %.0640983                ; 2 uses
  %.not761.peel = icmp ugt i64 %i.sv, %i.sk
  %i.sw = inttoptr i64 %i.ss to ptr               ; 2 uses
  br i1 %.not761.peel, label %.thread1263, label %bb.bt

bb.bt:                                            ; preds = %.preheader814
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sl, ptr align 1 %i.sw, i64 %i.sv, i1 false)
  %i.sx = load i64, ptr %i.st, align 8, !tbaa !91
  %i.sy = sub i64 %i.sx, %.0640983                ; 2 uses
  %i.sz = sub i64 %i.sk, %i.sy                    ; 2 uses
  %i.ta = add nsw i32 %.0651980, 1                ; 2 uses
  %.not760.peel = icmp eq i64 %i.sz, 0
  br i1 %.not760.peel, label %.thread799, label %.preheader814.peel.newph

.preheader814.peel.newph:                         ; preds = %bb.bt, %bb.bu
  %.0594970 = phi i64 [ %i.tk, %bb.bu ], [ %i.sy, %bb.bt ] ; 2 uses
  %.0595969 = phi i64 [ %i.tj, %bb.bu ], [ %i.sz, %bb.bt ] ; 3 uses
  %.1652967 = phi i32 [ %i.tl, %bb.bu ], [ %i.ta, %bb.bt ] ; 3 uses
  %i.tb = sext i32 %.1652967 to i64
  %i.tc = getelementptr inbounds [16 x i8], ptr %i.sn, i64 %i.tb ; 2 uses
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !90 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 8 ; 2 uses
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !91 ; 2 uses
  %.not761 = icmp ult i64 %.0595969, %i.tf
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sl, i64 %.0594970 ; 2 uses
  br i1 %.not761, label %.thread1263, label %bb.bu

.thread1263:                                      ; preds = %.preheader814.peel.newph, %.preheader814
  %.0595969.lcssa = phi i64 [ %i.sk, %.preheader814 ], [ %.0595969, %.preheader814.peel.newph ] ; 2 uses
  %.1641968.lcssa = phi i64 [ %.0640983, %.preheader814 ], [ 0, %.preheader814.peel.newph ]
  %.1652967.lcssa = phi i32 [ %.0651980, %.preheader814 ], [ %.1652967, %.preheader814.peel.newph ]
  %.lcssa1469 = phi ptr [ %i.sl, %.preheader814 ], [ %i.tg, %.preheader814.peel.newph ]
  %.lcssa1467 = phi ptr [ %i.sw, %.preheader814 ], [ %i.td, %.preheader814.peel.newph ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.lcssa1469, ptr align 1 %.lcssa1467, i64 %.0595969.lcssa, i1 false)
  %i.th = add i64 %.0595969.lcssa, %.1641968.lcssa
  br label %.thread799

bb.bu:                                            ; preds = %.preheader814.peel.newph
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tg, ptr align 1 %i.td, i64 %i.tf, i1 false)
  %i.ti = load i64, ptr %i.te, align 8, !tbaa !91 ; 2 uses
  %i.tj = sub i64 %.0595969, %i.ti                ; 2 uses
  %i.tk = add i64 %i.ti, %.0594970
  %i.tl = add nsw i32 %.1652967, 1                ; 2 uses
  %.not760 = icmp eq i64 %i.tj, 0
  br i1 %.not760, label %.thread799, label %.preheader814.peel.newph, !llvm.loop !34

.thread799:                                       ; preds = %bb.bt, %bb.bu, %.thread1263, %bb.bq
  %.pre-phi = phi i64 [ %.pre1194, %bb.bq ], [ %i.sk, %.thread1263 ], [ %i.sk, %bb.bu ], [ %i.sk, %bb.bt ] ; 2 uses
  %.4655 = phi i32 [ %.0651980, %bb.bq ], [ %.1652967.lcssa, %.thread1263 ], [ %i.ta, %bb.bt ], [ %i.tl, %bb.bu ] ; 2 uses
  %.1647 = phi ptr [ %i.sj, %bb.bq ], [ %i.sl, %.thread1263 ], [ %i.sl, %bb.bu ], [ %i.sl, %bb.bt ] ; 5 uses
  %.4644 = phi i64 [ %.0640983, %bb.bq ], [ %i.th, %.thread1263 ], [ 0, %bb.bu ], [ 0, %bb.bt ] ; 2 uses
  %i.tm = add nsw i64 %.0693975, %.pre-phi        ; 2 uses
  %.not762 = icmp eq i32 %.5669, 0
  br i1 %.not762, label %.thread803, label %bb.bv

bb.bv:                                            ; preds = %.thread799
  %i.tn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !97
  %i.to = load ptr, ptr %i.an, align 8, !tbaa !78
  %i.tp = call i32 %i.tn(ptr noundef %.1647, i64 noundef %.pre-phi, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.ag, i32 noundef 123, i32 noundef 4, ptr noundef %i.to, ptr noundef nonnull %i.f) #10
  %.not763 = icmp eq i32 %i.tp, 0
  br i1 %.not763, label %bb.bw, label %.loopexit815

bb.bw:                                            ; preds = %bb.bv
  %i.tq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !99
  %i.tr = call i32 %i.tq(ptr noundef nonnull %i.f, ptr noundef null) #10
  %.not764 = icmp eq i32 %i.tr, 0
  br i1 %.not764, label %.thread803, label %.loopexit815

.thread803:                                       ; preds = %bb.br, %bb.bw, %.thread799
  %i.ts = phi i64 [ %i.tm, %.thread799 ], [ %i.tm, %bb.bw ], [ %.0693975, %bb.br ] ; 3 uses
  %.4644810 = phi i64 [ %.4644, %.thread799 ], [ %.4644, %bb.bw ], [ %.0640983, %bb.br ] ; 3 uses
  %.1647809 = phi ptr [ %.1647, %.thread799 ], [ %.1647, %bb.bw ], [ %.0646981, %bb.br ] ; 4 uses
  %.4655808 = phi i32 [ %.4655, %.thread799 ], [ %.4655, %bb.bw ], [ %.0651980, %bb.br ] ; 3 uses
  %i.tt = load i32, ptr %i.dz, align 8, !tbaa !83
  %i.tu = icmp eq i32 %i.ag, %i.tt
  br i1 %i.tu, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.thread803
  %i.tv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !100
  %i.tw = load i32, ptr %i.ah, align 8, !tbaa !77
  %i.tx = sext i32 %i.tw to i64
  %i.ty = call i32 %i.tv(i64 noundef %i.tx, ptr noundef %.0599, ptr noundef null) #10
  %.not765 = icmp eq i32 %i.ty, 0
  br i1 %.not765, label %bb.by, label %.loopexit815

bb.by:                                            ; preds = %bb.bx, %.thread803
  %i.tz = icmp eq ptr %.1647809, null
  %or.cond3.not = select i1 %.0597796, i1 true, i1 %i.tz
  br i1 %or.cond3.not, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @free(ptr noundef nonnull %.1647809) #10
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.2648 = phi ptr [ null, %bb.bz ], [ %.1647809, %bb.by ] ; 5 uses
  %i.ua = load i32, ptr %i.dz, align 8, !tbaa !83
  %i.ub = icmp eq i32 %i.ag, %i.ua
  br i1 %i.ub, label %bb.cb, label %._crit_edge946.thread

bb.cb:                                            ; preds = %bb.ca
  %i.uc = sext i32 %.4661 to i64
  %i.ud = mul nsw i64 %i.uc, 24
  %i.ue = call noalias ptr @malloc(i64 noundef %i.ud) #11 ; 7 uses
  store ptr %i.ue, ptr %i.ey, align 8, !tbaa !85
  %i.uf = icmp eq ptr %i.ue, null
  br i1 %i.uf, label %.loopexit815.sink.split, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.ez, align 8, !tbaa !86
  %i.ug = load i32, ptr %.3615, align 4, !tbaa !8
  %i.uh = sext i32 %i.ug to i64                   ; 2 uses
  %i.ui = getelementptr inbounds [24 x i8], ptr %.3635, i64 %i.uh ; 2 uses
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !15
  %i.uk = inttoptr i64 %i.uj to ptr
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  store ptr %i.uk, ptr %i.ul, align 8, !tbaa !102
  %i.um = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.un = load i64, ptr %i.um, align 8, !tbaa !92
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
end_hunk_0
