Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/common_ompio_file_read_all?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mca_common_ompio_base_file_read_all:bb.a
  %.pre1593 = sext i32 %.2691 to i64
  %.pre1595 = trunc i64 %.17171231 to i32
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.js = trunc i64 %.17171231 to i32             ; 2 uses
  %i.jt = sext i32 %.2691 to i64                  ; 4 uses
  %i.ju = getelementptr inbounds [8 x i8], ptr %.0640, i64 %i.jt
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !74
  %i.jw = getelementptr inbounds [4 x i8], ptr %.0647, i64 %i.jt
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !8
  %i.jy = sext i32 %i.jx to i64                   ; 2 uses
  %i.jz = getelementptr [4 x i8], ptr %i.jv, i64 %i.jy
  %i.ka = getelementptr i8, ptr %i.jz, i64 -4
  store i32 %i.js, ptr %i.ka, align 4, !tbaa !8
  %i.kb = load i32, ptr %i.ji, align 4, !tbaa !8
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [16 x i8], ptr %.0656, i64 %i.kc ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !81
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %.0638, i64 %i.jt
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !76
  %i.ki = getelementptr [8 x i8], ptr %i.kh, i64 %i.jy
  %i.kj = getelementptr i8, ptr %i.ki, i64 -8
  store i64 %i.kf, ptr %i.kj, align 8, !tbaa !43
  %.pre1568 = load i32, ptr %i.dn, align 8, !tbaa !73
  %.phi.trans.insert1569 = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %.pre1570 = load i64, ptr %.phi.trans.insert1569, align 8, !tbaa !82
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge1592, %bb.bn
  %.pre-phi1596 = phi i32 [ %.pre1595, %._crit_edge1592 ], [ %i.js, %bb.bn ]
  %.pre-phi1594 = phi i64 [ %.pre1593, %._crit_edge1592 ], [ %i.jt, %bb.bn ]
  %i.kk = phi i64 [ %i.jn, %._crit_edge1592 ], [ %.pre1570, %bb.bn ]
  %i.kl = phi i32 [ %i.jq, %._crit_edge1592 ], [ %.pre1568, %bb.bn ] ; 2 uses
  %i.km = load ptr, ptr %i.s, align 8, !tbaa !66
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.km, i64 %.pre-phi1594
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !8
  %i.kp = icmp eq i32 %i.ko, %i.kl
  %i.kq = select i1 %i.kp, i32 %.pre-phi1596, i32 0
  %.3674 = add i32 %i.kq, %.06711234
  %i.kr = sub i64 %i.kk, %.17171231
  br label %.loopexit1070

bb.bp:                                            ; preds = %bb.bl
  %i.ks = load i32, ptr %i.dn, align 8, !tbaa !73 ; 2 uses
  %i.kt = icmp eq i32 %i.u, %i.ks
  br i1 %i.kt, label %bb.bq, label %._crit_edge1591

._crit_edge1591:                                  ; preds = %bb.bp
  %.pre1597 = sext i32 %.2691 to i64
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ku = trunc i64 %i.jn to i32
  %i.kv = sext i32 %.2691 to i64                  ; 4 uses
  %i.kw = getelementptr inbounds [8 x i8], ptr %.0640, i64 %i.kv ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !74 ; 2 uses
  %i.ky = getelementptr inbounds [4 x i8], ptr %.0647, i64 %i.kv ; 4 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !8  ; 2 uses
  %i.la = sext i32 %i.kz to i64                   ; 2 uses
  %i.lb = getelementptr [4 x i8], ptr %i.kx, i64 %i.la
  %i.lc = getelementptr i8, ptr %i.lb, i64 -4
  store i32 %i.ku, ptr %i.lc, align 4, !tbaa !8
  %i.ld = load i32, ptr %i.ji, align 4, !tbaa !8
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [16 x i8], ptr %.0656, i64 %i.le
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !81
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %.0638, i64 %i.kv ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !76 ; 2 uses
  %i.lk = getelementptr [8 x i8], ptr %i.lj, i64 %i.la
  %i.ll = getelementptr i8, ptr %i.lk, i64 -8
  store i64 %i.lh, ptr %i.ll, align 8, !tbaa !43
  %i.lm = add nsw i32 %i.kz, 1
  %i.ln = sext i32 %i.lm to i64
  %i.lo = shl nsw i64 %i.ln, 2
  %i.lp = call ptr @realloc(ptr noundef %i.kx, i64 noundef %i.lo) #14 ; 2 uses
  store ptr %i.lp, ptr %i.kw, align 8, !tbaa !74
  %i.lq = load i32, ptr %i.ky, align 4, !tbaa !8
  %i.lr = add nsw i32 %i.lq, 1
  %i.ls = sext i32 %i.lr to i64
  %i.lt = shl nsw i64 %i.ls, 3
  %i.lu = call ptr @realloc(ptr noundef %i.lj, i64 noundef %i.lt) #14 ; 2 uses
  store ptr %i.lu, ptr %i.li, align 8, !tbaa !76
  %i.lv = load i32, ptr %i.ky, align 4, !tbaa !8  ; 2 uses
  %i.lw = sext i32 %i.lv to i64                   ; 2 uses
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.lw
  store i32 0, ptr %i.lx, align 4, !tbaa !8
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %i.lw
  store i64 0, ptr %i.ly, align 8, !tbaa !43
  %i.lz = add nsw i32 %i.lv, 1
  store i32 %i.lz, ptr %i.ky, align 4, !tbaa !8
  %.pre1562.a = load i32, ptr %i.dn, align 8, !tbaa !73
  %.pre1563.pre = load i32, ptr %i.ji, align 4, !tbaa !8
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge1591, %bb.bq
  %.pre-phi1598 = phi i64 [ %.pre1597, %._crit_edge1591 ], [ %i.kv, %bb.bq ]
  %.pre1563 = phi i32 [ %i.jj, %._crit_edge1591 ], [ %.pre1563.pre, %bb.bq ]
  %i.ma = phi i32 [ %i.ks, %._crit_edge1591 ], [ %.pre1562.a, %bb.bq ] ; 3 uses
  %i.mb = load ptr, ptr %i.s, align 8, !tbaa !66
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %.pre-phi1598
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !8
  %i.me = icmp eq i32 %i.md, %i.ma
  %i.mf = sext i32 %.pre1563 to i64
  %i.mg = getelementptr inbounds [16 x i8], ptr %.0656, i64 %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !82 ; 3 uses
  br i1 %i.me, label %bb.bs, label %.backedge

bb.bs:                                            ; preds = %bb.br
  %i.mj = trunc i64 %i.mi to i32
  %i.mk = add i32 %.06711234, %i.mj
  br label %.backedge

.loopexit1070.loopexit:                           ; preds = %.backedge
  %i.ml = trunc nsw i64 %indvars.iv.next1497 to i32
  br label %.loopexit1070

.loopexit1070:                                    ; preds = %..loopexit1070_crit_edge, %.loopexit1070.loopexit, %bb.bo, %bb.bk
  %i.mm = phi i32 [ %i.jb, %bb.bk ], [ %i.kl, %bb.bo ], [ %.pre1571.a, %..loopexit1070_crit_edge ], [ %i.ia, %.loopexit1070.loopexit ]
  %.16461082 = phi i32 [ %i.ib, %bb.bk ], [ %i.jp, %bb.bo ], [ %.06451295, %..loopexit1070_crit_edge ], [ %i.ml, %.loopexit1070.loopexit ]
  %.3692 = phi i32 [ %.2691, %bb.bk ], [ %.2691, %bb.bo ], [ %.06891289, %..loopexit1070_crit_edge ], [ %.2691, %.loopexit1070.loopexit ]
  %.2688 = phi i64 [ %i.jh, %bb.bk ], [ %i.kr, %bb.bo ], [ %.06861290, %..loopexit1070_crit_edge ], [ 0, %.loopexit1070.loopexit ]
  %.5676 = phi i32 [ %.2673, %bb.bk ], [ %.3674, %bb.bo ], [ 0, %..loopexit1070_crit_edge ], [ %.0671.be, %.loopexit1070.loopexit ] ; 3 uses
  %i.mn = icmp eq i32 %i.u, %i.mm
  br i1 %i.mn, label %.preheader1069, label %.loopexit

.preheader1069:                                   ; preds = %.loopexit1070
  %i.mo = load i32, ptr %i.v, align 8, !tbaa !67  ; 6 uses
  %i.mp = icmp sgt i32 %i.mo, 0
  br i1 %i.mp, label %.preheader1064.preheader, label %._crit_edge1250.thread

.preheader1064.preheader:                         ; preds = %.preheader1069
  %wide.trip.count1507 = zext nneg i32 %i.mo to i64
  br label %.preheader1064

.preheader1064:                                   ; preds = %.preheader1064.preheader, %._crit_edge1246
  %indvars.iv1504 = phi i64 [ 0, %.preheader1064.preheader ], [ %indvars.iv.next1505, %._crit_edge1246 ] ; 3 uses
  %.06771249 = phi i32 [ 0, %.preheader1064.preheader ], [ %.1678.lcssa, %._crit_edge1246 ] ; 3 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.0647, i64 %indvars.iv1504
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !8  ; 3 uses
  %i.ms = icmp sgt i32 %i.mr, 0
  br i1 %i.ms, label %.lr.ph1245, label %._crit_edge1246

.lr.ph1245:                                       ; preds = %.preheader1064
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %.0640, i64 %indvars.iv1504
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !74 ; 2 uses
  %wide.trip.count1502 = zext nneg i32 %i.mr to i64 ; 3 uses
  %min.iters.check1982 = icmp ult i32 %i.mr, 8
  br i1 %min.iters.check1982, label %scalar.ph1981.preheader, label %vector.ph1983

vector.ph1983:                                    ; preds = %.lr.ph1245
  %n.vec1984 = and i64 %wide.trip.count1502, 2147483640 ; 3 uses
  %i.mv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.06771249, i64 0
  br label %vector.body1985

vector.body1985:                                  ; preds = %vector.body1985, %vector.ph1983
  %index1986 = phi i64 [ 0, %vector.ph1983 ], [ %index.next1991, %vector.body1985 ] ; 2 uses
  %vec.phi1987.a = phi <4 x i32> [ %i.mv, %vector.ph1983 ], [ %i.nc, %vector.body1985 ]
  %vec.phi1988 = phi <4 x i32> [ zeroinitializer, %vector.ph1983 ], [ %i.nd, %vector.body1985 ]
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %index1986 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %wide.load1989.a = load <4 x i32>, ptr %i.mw, align 4, !tbaa !8
  %wide.load1990 = load <4 x i32>, ptr %i.mx, align 4, !tbaa !8
  %i.my = icmp sgt <4 x i32> %wide.load1989.a, zeroinitializer
  %i.mz = icmp sgt <4 x i32> %wide.load1990, zeroinitializer
  %i.na = zext <4 x i1> %i.my to <4 x i32>
  %i.nb = zext <4 x i1> %i.mz to <4 x i32>
  %i.nc = add <4 x i32> %vec.phi1987.a, %i.na     ; 2 uses
  %i.nd = add <4 x i32> %vec.phi1988, %i.nb       ; 2 uses
  %index.next1991 = add nuw i64 %index1986, 8     ; 2 uses
  %i.ne = icmp eq i64 %index.next1991, %n.vec1984
  br i1 %i.ne, label %middle.block1992, label %vector.body1985, !llvm.loop !26

middle.block1992:                                 ; preds = %vector.body1985
  %bin.rdx1993 = add <4 x i32> %i.nd, %i.nc
  %i.nf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1993) ; 2 uses
  %cmp.n1994 = icmp eq i64 %n.vec1984, %wide.trip.count1502
  br i1 %cmp.n1994, label %._crit_edge1246, label %scalar.ph1981.preheader

scalar.ph1981.preheader:                          ; preds = %.lr.ph1245, %middle.block1992
  %indvars.iv1499.ph = phi i64 [ 0, %.lr.ph1245 ], [ %n.vec1984, %middle.block1992 ]
  %.16781244.ph = phi i32 [ %.06771249, %.lr.ph1245 ], [ %i.nf, %middle.block1992 ]
  br label %scalar.ph1981

scalar.ph1981:                                    ; preds = %scalar.ph1981.preheader, %scalar.ph1981
  %indvars.iv1499 = phi i64 [ %indvars.iv.next1500, %scalar.ph1981 ], [ %indvars.iv1499.ph, %scalar.ph1981.preheader ] ; 2 uses
  %.16781244 = phi i32 [ %spec.select, %scalar.ph1981 ], [ %.16781244.ph, %scalar.ph1981.preheader ]
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv1499
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !8
  %i.ni = icmp sgt i32 %i.nh, 0
  %i.nj = zext i1 %i.ni to i32
  %spec.select = add nsw i32 %.16781244, %i.nj    ; 2 uses
  %indvars.iv.next1500 = add nuw nsw i64 %indvars.iv1499, 1 ; 2 uses
  %exitcond1503.not = icmp eq i64 %indvars.iv.next1500, %wide.trip.count1502
  br i1 %exitcond1503.not, label %._crit_edge1246, label %scalar.ph1981, !llvm.loop !27

._crit_edge1246:                                  ; preds = %scalar.ph1981, %middle.block1992, %.preheader1064
  %.1678.lcssa = phi i32 [ %.06771249, %.preheader1064 ], [ %i.nf, %middle.block1992 ], [ %spec.select, %scalar.ph1981 ] ; 8 uses
  %indvars.iv.next1505 = add nuw nsw i64 %indvars.iv1504, 1 ; 2 uses
  %exitcond1508.not = icmp eq i64 %indvars.iv.next1505, %wide.trip.count1507
  br i1 %exitcond1508.not, label %._crit_edge1250, label %.preheader1064, !llvm.loop !28

._crit_edge1250:                                  ; preds = %._crit_edge1246
  %i.nk = icmp sgt i32 %.1678.lcssa, 0
  br i1 %i.nk, label %bb.bt, label %._crit_edge1250.thread

bb.bt:                                            ; preds = %._crit_edge1250
  %i.nl = zext nneg i32 %.1678.lcssa to i64       ; 4 uses
  %i.nm = mul nuw nsw i64 %i.nl, 24               ; 2 uses
  %i.nn = call noalias ptr @malloc(i64 noundef %i.nm) #12 ; 17 uses
  %i.no = icmp eq ptr %i.nn, null
  br i1 %i.no, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #11
  br label %.loopexit1066

bb.bv:                                            ; preds = %bb.bt
  %i.np = shl nuw nsw i64 %i.nl, 2
  %i.nq = call noalias ptr @malloc(i64 noundef %i.np) #12 ; 14 uses
  %i.nr = icmp eq ptr %i.nq, null
  br i1 %i.nr, label %bb.bw, label %.preheader1063.preheader

.preheader1063.preheader:                         ; preds = %bb.bv
  %wide.trip.count1517 = zext nneg i32 %i.mo to i64
  br label %.preheader1063

bb.bw:                                            ; preds = %bb.bv
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #11
  br label %.loopexit1066

.preheader1063:                                   ; preds = %.preheader1063.preheader, %._crit_edge1257
  %indvars.iv1514 = phi i64 [ 0, %.preheader1063.preheader ], [ %indvars.iv.next1515, %._crit_edge1257 ] ; 5 uses
  %.06421260 = phi i32 [ 0, %.preheader1063.preheader ], [ %.1643.lcssa, %._crit_edge1257 ] ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %.0647, i64 %indvars.iv1514
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !8  ; 2 uses
  %i.nu = icmp sgt i32 %i.nt, 0
  br i1 %i.nu, label %.lr.ph1256, label %._crit_edge1257

.lr.ph1256:                                       ; preds = %.preheader1063
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %.0640, i64 %indvars.iv1514
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !74
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %.0638, i64 %indvars.iv1514
  %wide.trip.count1512 = zext nneg i32 %i.nt to i64
  %i.ny = trunc nuw nsw i64 %indvars.iv1514 to i32
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph1256, %bb.bz
  %indvars.iv1509 = phi i64 [ 0, %.lr.ph1256 ], [ %indvars.iv.next1510, %bb.bz ] ; 3 uses
  %.16431255 = phi i32 [ %.06421260, %.lr.ph1256 ], [ %.2644, %bb.bz ] ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %indvars.iv1509
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !8  ; 2 uses
  %i.ob = icmp sgt i32 %i.oa, 0
  br i1 %i.ob, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.oc = zext nneg i32 %i.oa to i64
  %i.od = sext i32 %.16431255 to i64
  %i.oe = getelementptr inbounds [24 x i8], ptr %i.nn, i64 %i.od ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  store i64 %i.oc, ptr %i.of, align 8, !tbaa !83
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  store i32 %i.ny, ptr %i.og, align 8, !tbaa !84
  %i.oh = load ptr, ptr %i.nx, align 8, !tbaa !76
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %indvars.iv1509
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !43
  store i64 %i.oj, ptr %i.oe, align 8, !tbaa !15
  %i.ok = add nsw i32 %.16431255, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %.2644 = phi i32 [ %i.ok, %bb.by ], [ %.16431255, %bb.bx ] ; 2 uses
  %indvars.iv.next1510 = add nuw nsw i64 %indvars.iv1509, 1 ; 2 uses
  %exitcond1513.not = icmp eq i64 %indvars.iv.next1510, %wide.trip.count1512
  br i1 %exitcond1513.not, label %._crit_edge1257, label %bb.bx, !llvm.loop !29

._crit_edge1257:                                  ; preds = %bb.bz, %.preheader1063
  %.1643.lcssa = phi i32 [ %.06421260, %.preheader1063 ], [ %.2644, %bb.bz ]
  %indvars.iv.next1515 = add nuw nsw i64 %indvars.iv1514, 1 ; 2 uses
  %exitcond1518.not = icmp eq i64 %indvars.iv.next1515, %wide.trip.count1517
  br i1 %exitcond1518.not, label %._crit_edge1261, label %.preheader1063, !llvm.loop !30

._crit_edge1261:                                  ; preds = %._crit_edge1257
  call fastcc void @read_heap_sort(ptr noundef %i.nn, i32 noundef %.1678.lcssa, ptr noundef %i.nq)
  %i.ol = shl nuw nsw i64 %i.nl, 3
  %i.om = call noalias ptr @malloc(i64 noundef %i.ol) #12 ; 15 uses
  %i.on = load i32, ptr %i.nq, align 4, !tbaa !8
  %i.oo = sext i32 %i.on to i64                   ; 2 uses
  %i.op = getelementptr inbounds [8 x i8], ptr %i.om, i64 %i.oo ; 2 uses
  store i64 0, ptr %i.op, align 8, !tbaa !43
  %.not1336 = icmp eq i32 %.1678.lcssa, 1         ; 2 uses
  br i1 %.not1336, label %._crit_edge1265, label %.lr.ph1264.preheader

.lr.ph1264.preheader:                             ; preds = %._crit_edge1261
  %smax = call i32 @llvm.smax.i32(i32 %.1678.lcssa, i32 2) ; 3 uses
  %wide.trip.count1522 = zext nneg i32 %smax to i64
  %i.oq = add nsw i64 %wide.trip.count1522, -1    ; 3 uses
  %xtraiter2144 = and i64 %i.oq, 1
  %i.or = icmp slt i32 %.1678.lcssa, 3
  br i1 %i.or, label %.lr.ph1264.epil.preheader, label %.lr.ph1264.preheader.new

.lr.ph1264.preheader.new:                         ; preds = %.lr.ph1264.preheader
  %unroll_iter2148 = and i64 %i.oq, -2
  br label %.lr.ph1264

.lr.ph1264:                                       ; preds = %.lr.ph1264, %.lr.ph1264.preheader.new
  %indvars.iv1519 = phi i64 [ 1, %.lr.ph1264.preheader.new ], [ %indvars.iv.next1520.1, %.lr.ph1264 ] ; 3 uses
  %niter2149 = phi i64 [ 0, %.lr.ph1264.preheader.new ], [ %niter2149.next.1, %.lr.ph1264 ]
  %i.os = getelementptr [4 x i8], ptr %i.nq, i64 %indvars.iv1519 ; 2 uses
  %i.ot = getelementptr i8, ptr %i.os, i64 -4
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !8
  %i.ov = sext i32 %i.ou to i64                   ; 2 uses
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.om, i64 %i.ov
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !43
  %i.oy = getelementptr inbounds [24 x i8], ptr %i.nn, i64 %i.ov
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !83
  %i.pb = add nsw i64 %i.pa, %i.ox
  %i.pc = load i32, ptr %i.os, align 4, !tbaa !8  ; 2 uses
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.om, i64 %i.pd
  store i64 %i.pb, ptr %i.pe, align 8, !tbaa !43
  %i.pf = getelementptr [4 x i8], ptr %i.nq, i64 %indvars.iv1519
  %i.pg = getelementptr i8, ptr %i.pf, i64 4
  %i.ph = sext i32 %i.pc to i64                   ; 2 uses
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.om, i64 %i.ph
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !43
  %i.pk = getelementptr inbounds [24 x i8], ptr %i.nn, i64 %i.ph
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !83
  %i.pn = add nsw i64 %i.pm, %i.pj
  %i.po = load i32, ptr %i.pg, align 4, !tbaa !8
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.om, i64 %i.pp
  store i64 %i.pn, ptr %i.pq, align 8, !tbaa !43
  %indvars.iv.next1520.1 = add nuw nsw i64 %indvars.iv1519, 2 ; 2 uses
  %niter2149.next.1 = add nuw i64 %niter2149, 2   ; 2 uses
  %niter2149.ncmp.1 = icmp eq i64 %niter2149.next.1, %unroll_iter2148
  br i1 %niter2149.ncmp.1, label %._crit_edge1265.loopexit.unr-lcssa, label %.lr.ph1264, !llvm.loop !31

._crit_edge1265.loopexit.unr-lcssa:               ; preds = %.lr.ph1264
  %lcmp.mod2146.not = icmp eq i64 %xtraiter2144, 0
  br i1 %lcmp.mod2146.not, label %._crit_edge1265, label %.lr.ph1264.epil.preheader

.lr.ph1264.epil.preheader:                        ; preds = %._crit_edge1265.loopexit.unr-lcssa, %.lr.ph1264.preheader
  %indvars.iv1519.epil.init = phi i64 [ 1, %.lr.ph1264.preheader ], [ %indvars.iv.next1520.1, %._crit_edge1265.loopexit.unr-lcssa ]
  %lcmp.mod2147 = trunc i64 %i.oq to i1
  call void @llvm.assume(i1 %lcmp.mod2147)
  %i.pr = getelementptr [4 x i8], ptr %i.nq, i64 %indvars.iv1519.epil.init ; 2 uses
  %i.ps = getelementptr i8, ptr %i.pr, i64 -4
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !8
  %i.pu = sext i32 %i.pt to i64                   ; 2 uses
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.om, i64 %i.pu
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !43
  %i.px = getelementptr inbounds [24 x i8], ptr %i.nn, i64 %i.pu
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !83
  %i.qa = add nsw i64 %i.pz, %i.pw
  %i.qb = load i32, ptr %i.pr, align 4, !tbaa !8
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.om, i64 %i.qc
  store i64 %i.qa, ptr %i.qd, align 8, !tbaa !43
  br label %._crit_edge1265

._crit_edge1265:                                  ; preds = %.lr.ph1264.epil.preheader, %._crit_edge1265.loopexit.unr-lcssa, %._crit_edge1261
  %.10.lcssa = phi i32 [ 1, %._crit_edge1261 ], [ %smax, %._crit_edge1265.loopexit.unr-lcssa ], [ %smax, %.lr.ph1264.epil.preheader ]
  %i.qe = call noalias ptr @malloc(i64 noundef %i.nm) #12 ; 7 uses
  store ptr %i.qe, ptr %i.eo, align 8, !tbaa !78
  %i.qf = icmp eq ptr %i.qe, null
  br i1 %i.qf, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %._crit_edge1265
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #11
  br label %.loopexit1066

bb.cb:                                            ; preds = %._crit_edge1265
  %i.qg = getelementptr inbounds [24 x i8], ptr %i.nn, i64 %i.oo ; 2 uses
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !15
  %i.qi = inttoptr i64 %i.qh to ptr
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  store ptr %i.qi, ptr %i.qj, align 8, !tbaa !86
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !83
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  store i64 %i.ql, ptr %i.qm, align 8, !tbaa !87
  %i.qn = load i64, ptr %i.op, align 8, !tbaa !43
  %i.qo = getelementptr inbounds i8, ptr %.0636, i64 %i.qn
  store ptr %i.qo, ptr %i.qe, align 8, !tbaa !88
  store i32 1, ptr %i.ep, align 8, !tbaa !79
  br i1 %.not1336, label %._crit_edge1270.thread, label %.lr.ph1269.preheader

.lr.ph1269.preheader:                             ; preds = %bb.cb
  %smax1527 = call i32 @llvm.smax.i32(i32 %.1678.lcssa, i32 2) ; 3 uses
  %wide.trip.count1528 = zext nneg i32 %smax1527 to i64
  br label %.lr.ph1269

.lr.ph1269:                                       ; preds = %.lr.ph1269.preheader, %bb.ce
  %i.qp = phi i32 [ 1, %.lr.ph1269.preheader ], [ %i.rw, %bb.ce ] ; 4 uses
  %indvars.iv1524 = phi i64 [ 1, %.lr.ph1269.preheader ], [ %indvars.iv.next1525, %bb.ce ] ; 2 uses
  %i.qq = getelementptr [4 x i8], ptr %i.nq, i64 %indvars.iv1524 ; 2 uses
  %i.qr = getelementptr i8, ptr %i.qq, i64 -4
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !8
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds [24 x i8], ptr %i.nn, i64 %i.qt ; 2 uses
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !15
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !83
  %i.qy = add nsw i64 %i.qx, %i.qv
  %i.qz = load i32, ptr %i.qq, align 4, !tbaa !8
  %i.ra = sext i32 %i.qz to i64                   ; 2 uses
  %i.rb = getelementptr inbounds [24 x i8], ptr %i.nn, i64 %i.ra ; 3 uses
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !15 ; 2 uses
  %i.rd = icmp eq i64 %i.qy, %i.rc
  br i1 %i.rd, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.lr.ph1269
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !83
  %i.rg = sext i32 %i.qp to i64
  %i.rh = getelementptr [24 x i8], ptr %i.qe, i64 %i.rg
  %i.ri = getelementptr i8, ptr %i.rh, i64 -8     ; 2 uses
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !87
  %i.rk = add i64 %i.rj, %i.rf
  store i64 %i.rk, ptr %i.ri, align 8, !tbaa !87
  br label %bb.ce

bb.cd:                                            ; preds = %.lr.ph1269
  %i.rl = inttoptr i64 %i.rc to ptr
  %i.rm = sext i32 %i.qp to i64
  %i.rn = getelementptr inbounds [24 x i8], ptr %i.qe, i64 %i.rm ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store ptr %i.rl, ptr %i.ro, align 8, !tbaa !86
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !83
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  store i64 %i.rq, ptr %i.rr, align 8, !tbaa !87
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.om, i64 %i.ra
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !43
  %i.ru = getelementptr inbounds i8, ptr %.0636, i64 %i.rt
  store ptr %i.ru, ptr %i.rn, align 8, !tbaa !88
  %i.rv = add nsw i32 %i.qp, 1                    ; 2 uses
  store i32 %i.rv, ptr %i.ep, align 8, !tbaa !79
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %i.rw = phi i32 [ %i.qp, %bb.cc ], [ %i.rv, %bb.cd ] ; 2 uses
  %indvars.iv.next1525 = add nuw nsw i64 %indvars.iv1524, 1 ; 2 uses
  %exitcond1529.not = icmp eq i64 %indvars.iv.next1525, %wide.trip.count1528
  br i1 %exitcond1529.not, label %._crit_edge1270, label %.lr.ph1269, !llvm.loop !32

._crit_edge1270:                                  ; preds = %bb.ce
  %i.rx = icmp eq i32 %i.rw, 0
  br i1 %i.rx, label %bb.cg, label %._crit_edge1270.thread

._crit_edge1270.thread:                           ; preds = %bb.cb, %._crit_edge1270
  %.11.lcssa1678.a = phi i32 [ %smax1527, %._crit_edge1270 ], [ 1, %bb.cb ] ; 2 uses
  %i.ry = load ptr, ptr %i.er, align 8, !tbaa !89
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !91
  %i.sb = call i64 %i.sa(ptr noundef nonnull %0) #11
  %i.sc = icmp slt i64 %i.sb, 0
  br i1 %i.sc, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %._crit_edge1270.thread
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.4) #11
  br label %.loopexit1066

bb.cg:                                            ; preds = %._crit_edge1270.thread, %._crit_edge1270
  %.11.lcssa1679 = phi i32 [ %.11.lcssa1678.a, %._crit_edge1270.thread ], [ %smax1527, %._crit_edge1270 ]
  %i.sd = load i32, ptr %i.v, align 8, !tbaa !67
  %i.se = sext i32 %i.sd to i64
  %i.sf = shl nsw i64 %i.se, 2
  %i.sg = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.sf) #13 ; 3 uses
  %i.sh = icmp eq ptr %i.sg, null
  br i1 %i.sh, label %bb.ch, label %.lr.ph1273

bb.ch:                                            ; preds = %bb.cg
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #11
  br label %.loopexit1066

.lr.ph1273:                                       ; preds = %bb.cg, %bb.ck
  %indvars.iv1530 = phi i64 [ %indvars.iv.next1531, %bb.ck ], [ 0, %bb.cg ] ; 2 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv1530
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !8
  %i.sk = sext i32 %i.sj to i64                   ; 2 uses
  %i.sl = getelementptr inbounds [24 x i8], ptr %i.nn, i64 %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !84 ; 3 uses
  %i.so = getelementptr inbounds [8 x i8], ptr %i.om, i64 %i.sk
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !43
  %i.sq = sext i32 %i.sn to i64                   ; 3 uses
  %i.sr = getelementptr inbounds [8 x i8], ptr %.0638, i64 %i.sq
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !76
  %i.st = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.sq ; 2 uses
  %i.su = load i32, ptr %i.st, align 4, !tbaa !8  ; 4 uses
  %i.sv = sext i32 %i.su to i64
  %i.sw = getelementptr inbounds [8 x i8], ptr %i.ss, i64 %i.sv
  store i64 %i.sp, ptr %i.sw, align 8, !tbaa !43
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
  %exitcond1535.not = icmp eq i64 %indvars.iv.next1531, %i.nl
  br i1 %exitcond1535.not, label %._crit_edge1274, label %.lr.ph1273, !llvm.loop !33

._crit_edge1274:                                  ; preds = %bb.ck
  %.pre1572 = load i32, ptr %i.v, align 8, !tbaa !67
  call void @free(ptr noundef nonnull %i.sg) #11
  %i.tc = icmp sgt i32 %.pre1572, 0
  br i1 %i.tc, label %.lr.ph1277, label %.loopexit

.lr.ph1277:                                       ; preds = %._crit_edge1274, %select.unfold
  %indvars.iv1536 = phi i64 [ %indvars.iv.next1537, %select.unfold ], [ 0, %._crit_edge1274 ] ; 8 uses
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %.0623, i64 %indvars.iv1536 ; 2 uses
  store ptr @ompi_request_null, ptr %i.td, align 8, !tbaa !45
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %.0647, i64 %indvars.iv1536
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !8  ; 2 uses
  %i.tg = icmp sgt i32 %i.tf, 0
  br i1 %i.tg, label %bb.cl, label %select.unfold

bb.cl:                                            ; preds = %.lr.ph1277
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %.0640, i64 %indvars.iv1536
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !74
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %.0638, i64 %indvars.iv1536
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !76
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %.0625, i64 %indvars.iv1536 ; 3 uses
  %i.tm = call i32 @ompi_datatype_create_hindexed(i32 noundef %i.tf, ptr noundef %i.ti, ptr noundef %i.tk, ptr noundef nonnull @ompi_mpi_byte, ptr noundef %i.tl) #11 ; 0 uses
  %.val840 = load ptr, ptr %i.tl, align 8, !tbaa !77
  %i.tn = call i32 @opal_datatype_commit(ptr noundef %.val840) #11 ; 0 uses
  %i.to = load ptr, ptr %i.tl, align 8, !tbaa !77 ; 2 uses
  %i.tp = getelementptr i8, ptr %i.to, i64 24
  %.val841 = load i64, ptr %i.tp, align 8, !tbaa !98
  %.not811 = icmp eq i64 %.val841, 0
  br i1 %.not811, label %select.unfold, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.tq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !100
  %i.tr = load ptr, ptr %i.s, align 8, !tbaa !66
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %indvars.iv1536
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !8
  %i.tu = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.tv = call i32 %i.tq(ptr noundef %.0636, i64 noundef 1, ptr noundef nonnull %i.to, i32 noundef %i.tt, i32 noundef 123, i32 noundef 4, ptr noundef %i.tu, ptr noundef nonnull %i.td) #11 ; 2 uses
  %.not812 = icmp eq i32 %i.tv, 0
  br i1 %.not812, label %select.unfold, label %.loopexit1066.loopexit

select.unfold:                                    ; preds = %bb.cm, %bb.cl, %.lr.ph1277
  %indvars.iv.next1537 = add nuw nsw i64 %indvars.iv1536, 1 ; 3 uses
  %i.tw = load i32, ptr %i.v, align 8, !tbaa !67
  %i.tx = sext i32 %i.tw to i64
  %i.ty = icmp slt i64 %indvars.iv.next1537, %i.tx
  br i1 %i.ty, label %.lr.ph1277, label %.loopexit.loopexit, !llvm.loop !34

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
  store ptr @ompi_mpi_datatype_null, ptr %i.g, align 8, !tbaa !77
  %i.ub = call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 10, i64 noundef 4) #13 ; 7 uses
  %i.uc = call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 10, i64 noundef 8) #13 ; 5 uses
  %i.ud = icmp eq ptr %i.ub, null
  %i.ue = icmp eq ptr %i.uc, null
  %or.cond = or i1 %i.ud, %i.ue
  br i1 %or.cond, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.uf = load ptr, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.ug = sext i32 %.06641292 to i64
  %i.uh = getelementptr inbounds [16 x i8], ptr %i.uf, i64 %i.ug ; 2 uses
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !81
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = add i64 %.06581293, %i.uj               ; 2 uses
  %.phi.trans.insert1575 = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %.pre1576.a = load i64, ptr %.phi.trans.insert1575, align 8, !tbaa !82
  %i.ul = sub i64 %.pre1576.a, %.06581293         ; 3 uses
  %.not808.peel = icmp ugt i64 %i.ul, %i.ua
  br i1 %.not808.peel, label %.thread, label %bb.cp

.thread:                                          ; preds = %bb.co
  %i.um = add i64 %.06581293, %i.ua
  store i32 %.5676, ptr %i.ub, align 4, !tbaa !8
  br label %bb.cu

bb.cp:                                            ; preds = %bb.co
  %i.un = trunc i64 %i.ul to i32
  %sext.peel = shl i64 %i.ul, 32
  %i.uo = ashr exact i64 %sext.peel, 32
  %i.up = sub nsw i64 %i.ua, %i.uo                ; 2 uses
  %i.uq = add nsw i32 %.06641292, 1               ; 2 uses
  store i32 %i.un, ptr %i.ub, align 4, !tbaa !8
  %.not805.peel = icmp eq i64 %i.up, 0
  br i1 %.not805.peel, label %bb.cu, label %.preheader1065.peel.next

bb.cq:                                            ; preds = %bb.cn
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1) #11
  br label %.thread847

.preheader1065.peel.next:                         ; preds = %bb.cp, %bb.ct
  %i.ur = phi ptr [ %i.va, %bb.ct ], [ %i.uf, %bb.cp ]
  %indvars.iv1539 = phi i64 [ %indvars.iv.next1540, %bb.ct ], [ 0, %bb.cp ] ; 2 uses
  %.06041285 = phi i32 [ %.1605, %bb.ct ], [ 10, %bb.cp ] ; 2 uses
  %.06071283 = phi i64 [ %i.vj, %bb.ct ], [ %i.up, %bb.cp ] ; 4 uses
  %.16121282 = phi ptr [ %.2613, %bb.ct ], [ %i.uc, %bb.cp ] ; 2 uses
  %.16151281 = phi ptr [ %.2616, %bb.ct ], [ %i.ub, %bb.cp ] ; 2 uses
  %.16651279 = phi i32 [ %i.vk, %bb.ct ], [ %i.uq, %bb.cp ] ; 3 uses
  %indvars.iv.next1540 = add nuw nsw i64 %indvars.iv1539, 1 ; 5 uses
  %i.us = trunc nuw nsw i64 %indvars.iv.next1540 to i32
  %.urem = urem i32 %i.us, 10
  %i.ut = icmp eq i32 %.urem, 0
  br i1 %i.ut, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %.preheader1065.peel.next
  %i.uu = add nsw i32 %.06041285, 10              ; 2 uses
  %i.uv = sext i32 %i.uu to i64                   ; 2 uses
  %i.uw = shl nsw i64 %i.uv, 2
  %i.ux = call ptr @realloc(ptr noundef nonnull %.16151281, i64 noundef %i.uw) #14
  %i.uy = shl nsw i64 %i.uv, 3
  %i.uz = call ptr @realloc(ptr noundef %.16121282, i64 noundef %i.uy) #14
  %.pre1577 = load ptr, ptr %i.b, align 8, !tbaa !42
  br label %bb.cs

bb.cs:                                            ; preds = %.preheader1065.peel.next, %bb.cr
  %i.va = phi ptr [ %.pre1577, %bb.cr ], [ %i.ur, %.preheader1065.peel.next ] ; 3 uses
  %.2616 = phi ptr [ %i.ux, %bb.cr ], [ %.16151281, %.preheader1065.peel.next ] ; 4 uses
  %.2613 = phi ptr [ %i.uz, %bb.cr ], [ %.16121282, %.preheader1065.peel.next ] ; 3 uses
  %.1605 = phi i32 [ %i.uu, %bb.cr ], [ %.06041285, %.preheader1065.peel.next ]
  %i.vb = sext i32 %.16651279 to i64              ; 2 uses
  %i.vc = getelementptr inbounds [16 x i8], ptr %i.va, i64 %i.vb
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !81
  %i.ve = ptrtoint ptr %i.vd to i64
  %i.vf = sub i64 %i.ve, %i.uk
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %.2613, i64 %indvars.iv.next1540
  store i64 %i.vf, ptr %i.vg, align 8, !tbaa !43
  %.phi.trans.insert1579.a = getelementptr inbounds [16 x i8], ptr %i.va, i64 %i.vb
  %.phi.trans.insert1580 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert1579.a, i64 8
  %.pre1581.a = load i64, ptr %.phi.trans.insert1580, align 8, !tbaa !82 ; 3 uses
  %.not808 = icmp ult i64 %.06071283, %.pre1581.a
  br i1 %.not808, label %.thread1685, label %bb.ct

.thread1685:                                      ; preds = %bb.cs
  %.sink15581690 = trunc i64 %.06071283 to i32
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %.2616, i64 %indvars.iv.next1540
  store i32 %.sink15581690, ptr %i.vh, align 4, !tbaa !8
  br label %.loopexit1543

bb.ct:                                            ; preds = %bb.cs
  %sext = shl i64 %.pre1581.a, 32
  %i.vi = ashr exact i64 %sext, 32
  %i.vj = sub i64 %.06071283, %i.vi               ; 2 uses
  %i.vk = add nsw i32 %.16651279, 1               ; 2 uses
  %.sink1558 = trunc i64 %.pre1581.a to i32
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %.2616, i64 %indvars.iv.next1540
  store i32 %.sink1558, ptr %i.vl, align 4, !tbaa !8
  %.not805 = icmp eq i64 %i.vj, 0
  br i1 %.not805, label %.loopexit1543, label %.preheader1065.peel.next, !llvm.loop !35

.loopexit1543:                                    ; preds = %bb.ct, %.thread1685
  %.26601693 = phi i64 [ %.06071283, %.thread1685 ], [ 0, %bb.ct ]
  %.26661692 = phi i32 [ %.16651279, %.thread1685 ], [ %i.vk, %bb.ct ]
  %i.vm = trunc nsw i64 %indvars.iv1539 to i32
  %i.vn = add nsw i32 %i.vm, 2
  br label %bb.cu

bb.cu:                                            ; preds = %.thread, %.loopexit1543, %bb.cp
  %.2666.lcssa = phi i32 [ %i.uq, %bb.cp ], [ %.26661692, %.loopexit1543 ], [ %.06641292, %.thread ]
  %.2660.lcssa = phi i64 [ 0, %bb.cp ], [ %.26601693, %.loopexit1543 ], [ %i.um, %.thread ]
  %.3617.lcssa = phi ptr [ %i.ub, %bb.cp ], [ %.2616, %.loopexit1543 ], [ %i.ub, %.thread ] ; 3 uses
  %.3.lcssa = phi ptr [ %i.uc, %bb.cp ], [ %.2613, %.loopexit1543 ], [ %i.uc, %.thread ] ; 3 uses
  %.06061284.lcssa.wide = phi i32 [ 1, %bb.cp ], [ %i.vn, %.loopexit1543 ], [ 1, %.thread ]
  %i.vo = call i32 @ompi_datatype_create_hindexed(i32 noundef %.06061284.lcssa.wide, ptr noundef nonnull %.3617.lcssa, ptr noundef %.3.lcssa, ptr noundef nonnull @ompi_mpi_byte, ptr noundef nonnull %i.g) #11 ; 0 uses
  %.val = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.vp = call i32 @opal_datatype_commit(ptr noundef %.val) #11 ; 0 uses
  %i.vq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !102
  %i.vr = inttoptr i64 %i.uk to ptr
  %i.vs = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.vt = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.vu = call i32 %i.vq(ptr noundef %i.vr, i64 noundef 1, ptr noundef %i.vs, i32 noundef %i.u, i32 noundef 123, ptr noundef %i.vt, ptr noundef nonnull %i.f) #11 ; 2 uses
  %i.vv = load ptr, ptr %i.g, align 8, !tbaa !77
  %.not806 = icmp eq ptr %i.vv, @ompi_mpi_datatype_null
  br i1 %.not806, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.vw = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.g) #11 ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.not807 = icmp eq i32 %i.vu, 0
  br i1 %.not807, label %bb.cx, label %.thread847

.thread847:                                       ; preds = %bb.cw, %bb.cq
  %.4712.ph = phi i32 [ -2, %bb.cq ], [ %i.vu, %bb.cw ]
  %.4618.ph = phi ptr [ %i.ub, %bb.cq ], [ %.3617.lcssa, %bb.cw ]
  %.4.ph = phi ptr [ %i.uc, %bb.cq ], [ %.3.lcssa, %bb.cw ]
end_hunk_0
