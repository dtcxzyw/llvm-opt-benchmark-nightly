Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@dotCmdMode:bb.a
  %i.mc = phi i8 [ %.pre, %bb.du ], [ %i.lu, %.preheader1008 ] ; 2 uses
  %i.md = phi i64 [ %i.mb, %bb.du ], [ 0, %.preheader1008 ]
  %i.me = zext i8 %i.mc to i64
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %i.ln, i64 %i.me
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !98
  %i.mh = and i16 %i.mg, 2048
  %.not6831149 = icmp eq i16 %i.mh, 0
  br i1 %.not6831149, label %._crit_edge.thread, label %.lr.ph1153

.lr.ph1153:                                       ; preds = %.preheader1008._crit_edge, %bb.dw
  %indvars.iv1265 = phi i64 [ %indvars.iv.next1266, %bb.dw ], [ %i.md, %.preheader1008._crit_edge ]
  %i.mi = phi i8 [ %i.mq, %bb.dw ], [ %i.mc, %.preheader1008._crit_edge ]
  %.05301151 = phi i32 [ %i.mo, %bb.dw ], [ 0, %.preheader1008._crit_edge ]
  %i.mj = mul nsw i32 %.05301151, 10
  %i.mk = sext i8 %i.mi to i32
  %i.ml = add nsw i32 %i.mj, %i.mk                ; 3 uses
  %i.mm = icmp sgt i32 %i.ml, 10048
  br i1 %i.mm, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %.lr.ph1153
  %i.mn = add nsw i32 %.05721164, 2
  call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %i.mn, ptr noundef nonnull @.str.1800, ptr noundef nonnull @.str.1801, i32 noundef 10000)
  call void @free(ptr noundef %i.ll) #45
  br label %.critedge709

bb.dw:                                            ; preds = %.lr.ph1153
  %i.mo = add nsw i32 %i.ml, -48                  ; 2 uses
  %indvars.iv.next1266 = add nuw nsw i64 %indvars.iv1265, 1 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.1533, i64 %indvars.iv.next1266
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !52  ; 2 uses
  %i.mr = zext i8 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.ln, i64 %i.mr
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !98
  %i.mu = and i16 %i.mt, 2048
  %.not683 = icmp eq i16 %i.mu, 0
  br i1 %.not683, label %._crit_edge, label %.lr.ph1153, !llvm.loop !1266

._crit_edge.thread:                               ; preds = %.preheader1008._crit_edge
  %i.mv = add nsw i32 %.05721164, 2
  call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %i.mv, ptr noundef nonnull @.str.1802, ptr noundef nonnull @.str.1803)
  call void @free(ptr noundef %i.ll) #45
  br label %.critedge709

._crit_edge:                                      ; preds = %bb.dw
  %i.mw = getelementptr inbounds nuw i8, ptr %.1533, i64 %indvars.iv.next1266 ; 2 uses
  %i.mx = icmp eq i8 %i.lu, 45
  %i.my = sub nsw i32 48, %i.ml
  %spec.select707 = select i1 %i.mx, i32 %i.my, i32 %i.mo
  %i.mz = trunc i32 %spec.select707 to i16
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %i.ll, i64 %indvars.iv1267
  store i16 %i.mz, ptr %i.na, align 2, !tbaa !98
  %i.nb = load i8, ptr %i.mw, align 1, !tbaa !52
  %i.nc = icmp eq i8 %i.nb, 44
  %.2534.idx = zext i1 %i.nc to i64
  %.2534 = getelementptr inbounds nuw i8, ptr %i.mw, i64 %.2534.idx
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dx, %._crit_edge
  %.3535 = phi ptr [ %.2534, %._crit_edge ], [ %i.ni, %bb.dx ] ; 3 uses
  %i.nd = load i8, ptr %.3535, align 1, !tbaa !52 ; 2 uses
  %i.ne = zext i8 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.ln, i64 %i.ne
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !98
  %i.nh = and i16 %i.ng, 8192
  %.not684 = icmp eq i16 %i.nh, 0
  %i.ni = getelementptr inbounds nuw i8, ptr %.3535, i64 1
  br i1 %.not684, label %.loopexit, label %bb.dx, !llvm.loop !1267

bb.dy:                                            ; preds = %.preheader1008
  %i.nj = trunc nuw nsw i64 %indvars.iv1267 to i32
  %i.nk = load ptr, ptr %i.p, align 8, !tbaa !445
  call void @free(ptr noundef %i.nk) #45
  store ptr %i.ll, ptr %i.p, align 8, !tbaa !445
  store i32 %i.nj, ptr %i.q, align 8, !tbaa !444
  br label %modeSetStr.exit

optionMatch.exit793:                              ; preds = %optionMatch.exit789
  %i.nl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i730, ptr noundef nonnull dereferenceable(5) @.str.1804) #46
  %.not993 = icmp eq i32 %i.nl, 0
  br i1 %.not993, label %bb.dz, label %optionMatch.exit797

bb.dz:                                            ; preds = %optionMatch.exit793
  %i.nm = add nsw i32 %.05721164, 1               ; 3 uses
  %.not679 = icmp slt i32 %i.nm, %i.h
  br i1 %.not679, label %.thread918, label %bb.ea

.thread918:                                       ; preds = %bb.dz
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.nn
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !88
  %i.nq = call fastcc i64 @integerValue(ptr noundef %i.np)
  %i.nr = trunc i64 %i.nq to i32
  %spec.store.select20 = call i32 @llvm.smax.i32(i32 %i.nr, i32 -10000)
  %spec.store.select24 = call i32 @llvm.smin.i32(i32 %spec.store.select20, i32 10000)
  %i.ns = trunc nsw i32 %spec.store.select24 to i16
  store i16 %i.ns, ptr %i.o, align 2, !tbaa !440
  br label %modeSetStr.exit

bb.ea:                                            ; preds = %bb.dz
  call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.05721164, ptr noundef nonnull @.str.1097, ptr noundef null)
  br label %.critedge709

optionMatch.exit797:                              ; preds = %optionMatch.exit793
  %.not1185 = icmp eq i8 %i.iu, 119
  br i1 %.not1185, label %sub_1999, label %optionMatch.exit801

sub_1999:                                         ; preds = %optionMatch.exit797
  %i.nt = getelementptr inbounds nuw i8, ptr %spec.select.i730, i64 1
  %i.nu = load i8, ptr %i.nt, align 1
  %.not1186 = icmp eq i8 %i.nu, 119
  br i1 %.not1186, label %optionMatch.exit797.tail, label %optionMatch.exit801.thread1395

optionMatch.exit797.tail:                         ; preds = %sub_1999
  %i.nv = getelementptr inbounds nuw i8, ptr %spec.select.i730, i64 2
  %i.nw = load i8, ptr %i.nv, align 1
  %i.nx = icmp eq i8 %i.nw, 0
  br i1 %i.nx, label %bb.eb, label %optionMatch.exit801.thread

bb.eb:                                            ; preds = %optionMatch.exit797.tail
  store i8 2, ptr %i.n, align 1, !tbaa !441
  br label %modeSetStr.exit

optionMatch.exit801:                              ; preds = %optionMatch.exit797
  %i.ny = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i730, ptr noundef nonnull dereferenceable(9) @.str.1806) #46
  %.not995 = icmp eq i32 %i.ny, 0
  br i1 %.not995, label %bb.ec, label %optionMatch.exit805

optionMatch.exit801.thread1395:                   ; preds = %sub_1999
  %i.nz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i730, ptr noundef nonnull dereferenceable(9) @.str.1806) #46
  %.not9951396 = icmp eq i32 %i.nz, 0
  br i1 %.not9951396, label %bb.ec, label %optionMatch.exit809

optionMatch.exit801.thread:                       ; preds = %optionMatch.exit797.tail
  %i.oa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i730, ptr noundef nonnull dereferenceable(9) @.str.1806) #46
  %.not9951384 = icmp eq i32 %i.oa, 0
  br i1 %.not9951384, label %bb.ec, label %optionMatch.exit809

bb.ec:                                            ; preds = %optionMatch.exit801.thread1395, %optionMatch.exit801.thread, %optionMatch.exit801
  %i.ob = add nsw i32 %.05721164, 1               ; 3 uses
  %.not677 = icmp slt i32 %i.ob, %i.h
  br i1 %.not677, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.05721164, ptr noundef nonnull @.str.1097, ptr noundef null)
  br label %.critedge709

bb.ee:                                            ; preds = %bb.ec
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.oc
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !88
  %i.of = call fastcc i32 @booleanValue(ptr noundef %i.oe)
  %i.og = and i32 %i.of, 255
  %.not678 = icmp eq i32 %i.og, 0
  %i.oh = select i1 %.not678, i8 1, i8 2
  store i8 %i.oh, ptr %i.n, align 1, !tbaa !441
  br label %modeSetStr.exit

optionMatch.exit805:                              ; preds = %optionMatch.exit801
  %.not1187 = icmp eq i8 %i.iu, 118
  br i1 %.not1187, label %optionMatch.exit805.tail, label %optionMatch.exit809

optionMatch.exit805.tail:                         ; preds = %optionMatch.exit805
  %i.oi = getelementptr inbounds nuw i8, ptr %spec.select.i730, i64 1
  %i.oj = load i8, ptr %i.oi, align 1
  %i.ok = icmp eq i8 %i.oj, 0
  br i1 %i.ok, label %modeSetStr.exit, label %optionMatch.exit809

optionMatch.exit809:                              ; preds = %optionMatch.exit801.thread1395, %optionMatch.exit801.thread, %optionMatch.exit805, %optionMatch.exit805.tail
  %i.ol = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i730, ptr noundef nonnull dereferenceable(8) @.str.1808) #46
  %.not997 = icmp eq i32 %i.ol, 0
  br i1 %.not997, label %modeSetStr.exit, label %bb.ef

bb.ef:                                            ; preds = %optionMatch.exit809
  call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.05721164, ptr noundef nonnull @.str.1809, ptr noundef nonnull @.str.1810)
  br label %.critedge709

bb.eg:                                            ; preds = %bb.bg
  %i.om = icmp sgt i32 %.05831162, 0
  %i.on = select i1 %i.om, ptr @.str.1779, ptr @.str.1811
  call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.05721164, ptr noundef nonnull %i.on, ptr noundef nonnull @.str.1810)
  br label %.critedge709

modeSetStr.exit:                                  ; preds = %shell_check_oom.exit._crit_edge.thread, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %.thread918, %bb.dy, %bb.dp, %bb.de, %.thread849, %bb.bl, %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.as, %bb.ar, %shell_check_oom.exit._crit_edge, %bb.h, %bb.g, %optionMatch.exit805.tail, %optionMatch.exit809, %bb.cs, %bb.cu, %bb.ct, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.bp, %bb.bq, %bb.ap, %bb.ad, %bb.ae, %bb.y, %bb.z, %bb.e, %bb.f, %bb.bv, %bb.dh, %bb.eb, %bb.ee, %bb.co, %bb.bw, %._crit_edge1161
  %.1584 = phi i32 [ %.05831162, %bb.cs ], [ %.05721164, %bb.h ], [ %.05721164, %bb.e ], [ %.05831162, %bb.y ], [ %.05831162, %bb.bf ], [ %.05831162, %bb.ad ], [ %.05831162, %bb.bl ], [ %.05831162, %bb.ap ], [ %.05831162, %._crit_edge1161 ], [ %.05831162, %bb.bv ], [ %.05831162, %bb.bw ], [ %.05831162, %bb.bp ], [ %.05831162, %bb.co ], [ %.05831162, %bb.ch ], [ %.05831162, %bb.de ], [ %.05831162, %bb.dh ], [ %.05831162, %bb.dp ], [ %.05831162, %bb.dy ], [ %.05831162, %.thread918 ], [ %.05831162, %bb.eb ], [ %.05831162, %bb.ee ], [ %.05831162, %optionMatch.exit805.tail ], [ %.05721164, %bb.f ], [ %.05831162, %bb.z ], [ %.05831162, %bb.ae ], [ %.05831162, %bb.bb ], [ %.05831162, %bb.ax ], [ %.05831162, %bb.at ], [ %.05831162, %shell_check_oom.exit._crit_edge ], [ %.05831162, %bb.bq ], [ %.05831162, %.thread849 ], [ %.05831162, %bb.cn ], [ %.05831162, %bb.cm ], [ %.05831162, %bb.cl ], [ %.05831162, %bb.ck ], [ %.05831162, %bb.cj ], [ %.05831162, %bb.ci ], [ %.05831162, %bb.ct ], [ %.05831162, %bb.cu ], [ %.05831162, %optionMatch.exit809 ], [ %.05721164, %bb.g ], [ %.05831162, %bb.ar ], [ %.05831162, %bb.as ], [ %.05831162, %bb.av ], [ %.05831162, %bb.aw ], [ %.05831162, %bb.az ], [ %.05831162, %bb.ba ], [ %.05831162, %bb.bd ], [ %.05831162, %bb.be ], [ %.05831162, %bb.ah ], [ %.05831162, %bb.ai ], [ %.05831162, %bb.aj ], [ %.05831162, %bb.ak ], [ %.05831162, %shell_check_oom.exit._crit_edge.thread ]
  %.9581 = phi i32 [ %i.ja, %bb.cs ], [ %i.ay, %bb.h ], [ %.05721164, %bb.e ], [ %i.cu, %bb.y ], [ %i.eb, %bb.bf ], [ %i.dh, %bb.ad ], [ %i.fo, %bb.bl ], [ %i.eb, %bb.ap ], [ %.05721164, %._crit_edge1161 ], [ %.05721164, %bb.bv ], [ %.05721164, %bb.bw ], [ %i.fy, %bb.bp ], [ %.05721164, %bb.co ], [ %.4576866, %bb.ch ], [ %i.jj, %bb.de ], [ %i.kd, %bb.dh ], [ %i.kl, %bb.dp ], [ %i.lg, %bb.dy ], [ %i.nm, %.thread918 ], [ %.05721164, %bb.eb ], [ %i.ob, %bb.ee ], [ %.05721164, %optionMatch.exit805.tail ], [ %.05721164, %bb.f ], [ %i.cu, %bb.z ], [ %i.dh, %bb.ae ], [ %i.eb, %bb.bb ], [ %i.eb, %bb.ax ], [ %i.eb, %bb.at ], [ %i.bq, %shell_check_oom.exit._crit_edge ], [ %i.fy, %bb.bq ], [ %i.fy, %.thread849 ], [ %i.hz, %bb.cn ], [ %i.hz, %bb.cm ], [ %i.hz, %bb.cl ], [ %i.hz, %bb.ck ], [ %i.hz, %bb.cj ], [ %i.hz, %bb.ci ], [ %i.ja, %bb.ct ], [ %i.ja, %bb.cu ], [ %.05721164, %optionMatch.exit809 ], [ %i.ay, %bb.g ], [ %i.eb, %bb.ar ], [ %i.eb, %bb.as ], [ %i.eb, %bb.av ], [ %i.eb, %bb.aw ], [ %i.eb, %bb.az ], [ %i.eb, %bb.ba ], [ %i.eb, %bb.bd ], [ %i.eb, %bb.be ], [ %i.dr, %bb.ah ], [ %i.dr, %bb.ai ], [ %i.dr, %bb.aj ], [ %i.dr, %bb.ak ], [ %i.bq, %shell_check_oom.exit._crit_edge.thread ]
  %.8567 = phi i32 [ 1, %bb.cs ], [ 1, %bb.h ], [ 1, %bb.e ], [ 1, %bb.y ], [ 1, %bb.bf ], [ 1, %bb.ad ], [ 1, %bb.bl ], [ 1, %bb.ap ], [ 1, %._crit_edge1161 ], [ %.05591165, %bb.bv ], [ 1, %bb.bw ], [ 1, %bb.bp ], [ %.05591165, %bb.co ], [ 1, %bb.ch ], [ 1, %bb.de ], [ 1, %bb.dh ], [ 1, %bb.dp ], [ 1, %bb.dy ], [ 1, %.thread918 ], [ 1, %bb.eb ], [ 1, %bb.ee ], [ %.05591165, %optionMatch.exit805.tail ], [ 1, %bb.f ], [ 1, %bb.z ], [ 1, %bb.ae ], [ 1, %bb.bb ], [ 1, %bb.ax ], [ 1, %bb.at ], [ 1, %shell_check_oom.exit._crit_edge ], [ 1, %bb.bq ], [ 1, %.thread849 ], [ 1, %bb.cn ], [ 1, %bb.cm ], [ 1, %bb.cl ], [ 1, %bb.ck ], [ 1, %bb.cj ], [ 1, %bb.ci ], [ 1, %bb.ct ], [ 1, %bb.cu ], [ %.05591165, %optionMatch.exit809 ], [ 1, %bb.g ], [ 1, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.av ], [ 1, %bb.aw ], [ 1, %bb.az ], [ 1, %bb.ba ], [ 1, %bb.bd ], [ 1, %bb.be ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %shell_check_oom.exit._crit_edge.thread ] ; 2 uses
  %.1557 = phi i32 [ %.05561166, %bb.cs ], [ %.05561166, %bb.h ], [ %.05561166, %bb.e ], [ %.05561166, %bb.y ], [ %.05561166, %bb.bf ], [ %.05561166, %bb.ad ], [ %.05561166, %bb.bl ], [ %.05561166, %bb.ap ], [ %.05561166, %._crit_edge1161 ], [ %.05561166, %bb.bv ], [ %.05561166, %bb.bw ], [ %.05561166, %bb.bp ], [ %.05561166, %bb.co ], [ %.05561166, %bb.ch ], [ %.05561166, %bb.de ], [ %.05561166, %bb.dh ], [ %.05561166, %bb.dp ], [ %.05561166, %bb.dy ], [ %.05561166, %.thread918 ], [ %.05561166, %bb.eb ], [ %.05561166, %bb.ee ], [ 1, %optionMatch.exit805.tail ], [ %.05561166, %bb.f ], [ %.05561166, %bb.z ], [ %.05561166, %bb.ae ], [ %.05561166, %bb.bb ], [ %.05561166, %bb.ax ], [ %.05561166, %bb.at ], [ %.05561166, %shell_check_oom.exit._crit_edge ], [ %.05561166, %bb.bq ], [ %.05561166, %.thread849 ], [ %.05561166, %bb.cn ], [ %.05561166, %bb.cm ], [ %.05561166, %bb.cl ], [ %.05561166, %bb.ck ], [ %.05561166, %bb.cj ], [ %.05561166, %bb.ci ], [ %.05561166, %bb.ct ], [ %.05561166, %bb.cu ], [ 1, %optionMatch.exit809 ], [ %.05561166, %bb.g ], [ %.05561166, %bb.ar ], [ %.05561166, %bb.as ], [ %.05561166, %bb.av ], [ %.05561166, %bb.aw ], [ %.05561166, %bb.az ], [ %.05561166, %bb.ba ], [ %.05561166, %bb.bd ], [ %.05561166, %bb.be ], [ %.05561166, %bb.ah ], [ %.05561166, %bb.ai ], [ %.05561166, %bb.aj ], [ %.05561166, %bb.ak ], [ %.05561166, %shell_check_oom.exit._crit_edge.thread ] ; 2 uses
  %i.oo = add nsw i32 %.9581, 1                   ; 2 uses
  %i.op = icmp slt i32 %i.oo, %i.h
  br i1 %i.op, label %bb.b, label %._crit_edge1170, !llvm.loop !1268

._crit_edge1170:                                  ; preds = %modeSetStr.exit
  %i.oq = icmp eq i32 %.8567, 0
  %i.or = icmp ne i32 %.1557, 0                   ; 2 uses
  %i.os = select i1 %i.oq, i1 true, i1 %i.or
  br i1 %i.os, label %._crit_edge1170.thread, label %.critedge709

._crit_edge1170.thread:                           ; preds = %bb.a, %._crit_edge1170
  %.0556.lcssa1389.a = phi i1 [ %i.or, %._crit_edge1170 ], [ false, %bb.a ] ; 8 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 4318 ; 4 uses
  %i.ou = load i8, ptr %i.ot, align 2, !tbaa !426 ; 3 uses
  %i.ov = zext i8 %i.ou to i64                    ; 7 uses
  %i.ow = getelementptr inbounds nuw [19 x i8], ptr @aModeInfo, i64 %i.ov ; 6 uses
  %i.ox = load ptr, ptr %0, align 8, !tbaa !389
  %i.oy = call ptr @sqlite3_str_new(ptr noundef %i.ox) #45 ; 47 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !376
  %.not = icmp eq i8 %i.pa, 0
  br i1 %.not, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %._crit_edge1170.thread
  call void @sqlite3_str_appendall(ptr noundef %i.oy, ptr noundef nonnull @.str.1812) #45
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %._crit_edge1170.thread
  call void @sqlite3_str_appendall(ptr noundef %i.oy, ptr noundef nonnull %i.ow) #45
  br i1 %.0556.lcssa1389.a, label %bb.el, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 4356
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !1272
  %.not631 = icmp eq i32 %i.pc, 0
  br i1 %.not631, label %.thread935, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.pd = shl nuw i64 1, %i.ov
  %i.pe = and i64 %i.pd, 892938
  %.not632 = icmp eq i64 %i.pe, 0
  br i1 %.not632, label %.thread935, label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ei
  call void @sqlite3_str_appendall(ptr noundef %i.oy, ptr noundef nonnull @.str.1813) #45
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 4356 ; 2 uses
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !1272
  %i.ph = icmp sgt i32 %i.pg, 0
  br i1 %i.ph, label %.lr.ph1175, label %._crit_edge1176

.lr.ph1175:                                       ; preds = %bb.el
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 4368
  br label %bb.em

bb.em:                                            ; preds = %.lr.ph1175, %bb.em
  %indvars.iv1277 = phi i64 [ 0, %.lr.ph1175 ], [ %indvars.iv.next1278, %bb.em ] ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !1271
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %indvars.iv1277
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !52
  %i.pm = and i8 %i.pl, 3
  %i.pn = zext nneg i8 %i.pm to i64
  %i.po = getelementptr inbounds nuw i8, ptr @.str.1814, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !52
  call void @sqlite3_str_appendchar(ptr noundef %i.oy, i32 noundef 1, i8 noundef signext %i.pp) #45
  %indvars.iv.next1278 = add nuw nsw i64 %indvars.iv1277, 1 ; 2 uses
  %i.pq = load i32, ptr %i.pf, align 4, !tbaa !1272
  %i.pr = sext i32 %i.pq to i64
  %i.ps = icmp slt i64 %indvars.iv.next1278, %i.pr
  br i1 %i.ps, label %bb.em, label %._crit_edge1176, !llvm.loop !1269

._crit_edge1176:                                  ; preds = %bb.em, %bb.el
  call void @sqlite3_str_append(ptr noundef %i.oy, ptr noundef nonnull @.str.196, i32 noundef 1) #45
  br i1 %.0556.lcssa1389.a, label %.thread941, label %.thread935

.thread935:                                       ; preds = %bb.ej, %bb.ek, %._crit_edge1176
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 4332
  %1 = load i8, ptr %i.pt, align 4, !tbaa !1273
  %2 = getelementptr inbounds nuw i8, ptr %i.ow, i64 18
  %i.pu = load i8, ptr %2, align 1, !tbaa !1275
  %3 = trunc i8 %i.pu to i1
  %i.pv = icmp ne i8 %1, 1                        ; 2 uses
  %.not633 = xor i1 %i.pv, %3
  br i1 %.not633, label %.thread936, label %bb.en

bb.en:                                            ; preds = %.thread935
  %i.pw = select i1 %i.pv, ptr @.str.926, ptr @.str.850
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1815, ptr noundef nonnull %i.pw) #45
  br label %.thread936

.thread936:                                       ; preds = %bb.en, %.thread935
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 4325
  %i.py = load i8, ptr %i.px, align 1, !tbaa !688 ; 2 uses
  %.not634 = icmp eq i8 %i.py, 0
  br i1 %.not634, label %.thread937, label %bb.eo

bb.eo:                                            ; preds = %.thread936
  %i.pz = zext i8 %i.py to i64
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr @__const.dotCmdMode.azBQuote, i64 %i.pz
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !88
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1816, ptr noundef %i.qb) #45
  br label %.thread937

.thread937:                                       ; preds = %bb.eo, %.thread936
  %i.qc = shl nuw i64 1, %i.ov                    ; 3 uses
  %i.qd = and i64 %i.qc, 5105370
  %.not635.not = icmp eq i64 %i.qd, 0
  br i1 %.not635.not, label %bb.ep, label %.thread939

bb.ep:                                            ; preds = %.thread937
  %.pn.in.in = getelementptr inbounds nuw i8, ptr %i.ow, i64 9
  %.pn.in = load i8, ptr %.pn.in.in, align 1, !tbaa !406
  %.pn = zext i8 %.pn.in to i64
  %.in = getelementptr inbounds nuw [8 x i8], ptr @aModeStr, i64 %.pn
  %i.qe = load ptr, ptr %.in, align 8, !tbaa !88
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 4376 ; 2 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !443 ; 2 uses
  %i.qh = icmp eq ptr %i.qg, null
  %spec.store.select1.i = select i1 %i.qh, ptr @.str.48, ptr %i.qg
  %i.qi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.qe, ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %.not636 = icmp eq i32 %i.qi, 0
  br i1 %.not636, label %.thread939, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1817) #45
  %i.qj = load ptr, ptr %i.qf, align 8, !tbaa !443
  call fastcc void @append_c_string(ptr noundef %i.oy, ptr noundef %i.qj)
  br label %.thread939

.thread941:                                       ; preds = %._crit_edge1176
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 4332
  %i.ql = load i8, ptr %i.qk, align 4, !tbaa !1273
  %i.qm = icmp eq i8 %i.ql, 1
  %i.qn = select i1 %i.qm, ptr @.str.850, ptr @.str.926
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1815, ptr noundef nonnull %i.qn) #45
  %.phi.trans.insert1310 = getelementptr inbounds nuw i8, ptr %0, i64 4325
  %.pre1311 = load i8, ptr %.phi.trans.insert1310, align 1, !tbaa !688
  %i.qo = zext i8 %.pre1311 to i64
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr @__const.dotCmdMode.azBQuote, i64 %i.qo
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !88
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1816, ptr noundef %i.qq) #45
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1817) #45
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !443
  call fastcc void @append_c_string(ptr noundef %i.oy, ptr noundef %i.qs)
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 4322
  %i.qu = load i8, ptr %i.qt, align 2, !tbaa !366
  %i.qv = zext i8 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr @qrfEscNames, i64 %i.qv
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !88
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1818, ptr noundef %i.qx) #45
  %.phi.trans.insert1312 = getelementptr inbounds nuw i8, ptr %0, i64 4338
  %.pre1313 = load i16, ptr %.phi.trans.insert1312, align 2, !tbaa !415
  br label %bb.eu

.thread939:                                       ; preds = %bb.eq, %.thread937, %bb.ep
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 4322
  %i.qz = load i8, ptr %i.qy, align 2, !tbaa !366 ; 2 uses
  %.not637 = icmp eq i8 %i.qz, 0
  br i1 %.not637, label %.thread940, label %bb.er

bb.er:                                            ; preds = %.thread939
  %i.ra = zext i8 %i.qz to i64
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr @qrfEscNames, i64 %i.ra
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !88
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1818, ptr noundef %i.rc) #45
  br label %.thread940

.thread940:                                       ; preds = %.thread939, %bb.er
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 4338
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !415 ; 4 uses
  %i.rf = icmp sgt i16 %i.re, 0
  %i.rg = and i64 %i.qc, 7493621
  %.not638.not = icmp eq i64 %i.rg, 0
  %or.cond = and i1 %i.rf, %.not638.not
  br i1 %or.cond, label %bb.eu, label %bb.es

bb.es:                                            ; preds = %.thread940
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 4348
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !414
  %i.rj = icmp sgt i32 %i.ri, 0
  br i1 %i.rj, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 4340
  %i.rl = load i16, ptr %i.rk, align 4, !tbaa !417
  %i.rm = icmp sgt i16 %i.rl, 0
  %i.rn = and i64 %i.qc, 7493621
  %.not639.not = icmp eq i64 %i.rn, 0
  %or.cond1476 = and i1 %i.rm, %.not639.not
  br i1 %or.cond1476, label %bb.eu, label %.thread945

bb.eu:                                            ; preds = %bb.et, %.thread940, %.thread941, %bb.es
  %i.ro = phi i16 [ %.pre1313, %.thread941 ], [ %i.re, %bb.et ], [ %i.re, %bb.es ], [ %i.re, %.thread940 ] ; 2 uses
  %.phi.trans.insert1314 = getelementptr inbounds nuw i8, ptr %0, i64 4348
  %.pre1315 = load i32, ptr %.phi.trans.insert1314, align 4, !tbaa !414 ; 5 uses
  switch i16 %i.ro, label %.thread943 [
    i16 0, label %bb.ev
    i16 5, label %bb.ey
  ]

bb.ev:                                            ; preds = %bb.eu
  %i.rp = icmp eq i32 %.pre1315, 0
  br i1 %i.rp, label %bb.ew, label %.thread943

bb.ew:                                            ; preds = %bb.ev
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 4340
  %i.rr = load i16, ptr %i.rq, align 4, !tbaa !417
  %i.rs = icmp eq i16 %i.rr, 0
  br i1 %i.rs, label %bb.ex, label %.thread943

bb.ex:                                            ; preds = %bb.ew
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1819) #45
  br label %bb.fb

bb.ey:                                            ; preds = %bb.eu
  %i.rt = icmp eq i32 %.pre1315, 300
  br i1 %i.rt, label %bb.ez, label %.thread943

bb.ez:                                            ; preds = %bb.ey
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 4340
  %i.rv = load i16, ptr %i.ru, align 4, !tbaa !417
  %i.rw = icmp eq i16 %i.rv, 20
  br i1 %i.rw, label %bb.fa, label %.thread943

bb.fa:                                            ; preds = %bb.ez
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1820) #45
  br label %bb.fb

.thread943:                                       ; preds = %bb.eu, %bb.ev, %bb.ew, %bb.ez, %bb.ey
  %i.rx = phi i32 [ %.pre1315, %bb.ey ], [ %.pre1315, %bb.ev ], [ 0, %bb.ew ], [ 300, %bb.ez ], [ %.pre1315, %bb.eu ]
  %i.ry = sext i16 %i.ro to i32
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 4340
  %i.sa = load i16, ptr %i.rz, align 4, !tbaa !417
  %i.sb = sext i16 %i.sa to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1821, i32 noundef %i.ry, i32 noundef %i.rx, i32 noundef %i.sb) #45
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ex, %.thread943, %bb.fa
  br i1 %.0556.lcssa1389.a, label %.critedge968, label %.thread945

.thread945:                                       ; preds = %bb.et, %bb.fb
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 4344
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !418 ; 2 uses
  %.not640 = icmp eq i32 %i.sd, 0
  br i1 %.not640, label %.thread947, label %bb.fc

bb.fc:                                            ; preds = %.thread945
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 4321
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !439
  %i.sg = icmp eq i8 %i.sf, 8
  br i1 %i.sg, label %bb.fd, label %.thread947

bb.fd:                                            ; preds = %bb.fc
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1822, i32 noundef %i.sd) #45
  br label %.thread947

.thread947:                                       ; preds = %bb.fd, %.thread945, %bb.fc
  switch i8 %i.ou, label %bb.fe [
    i8 14, label %.thread949
    i8 4, label %.thread949
  ]

bb.fe:                                            ; preds = %.thread947
  %.pn972.in.in = getelementptr inbounds nuw i8, ptr %i.ow, i64 11
  %.pn972.in = load i8, ptr %.pn972.in.in, align 1, !tbaa !408
  %.pn972 = zext i8 %.pn972.in to i64
  %.in971 = getelementptr inbounds nuw [8 x i8], ptr @aModeStr, i64 %.pn972
  %i.sh = load ptr, ptr %.in971, align 8, !tbaa !88
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !442 ; 2 uses
  %i.sk = icmp eq i8 %i.ou, 14
  %spec.store.select.i810 = select i1 %i.sk, ptr @.str.48, ptr %i.sh
  %i.sl = icmp eq ptr %i.sj, null
  %spec.store.select1.i811 = select i1 %i.sl, ptr @.str.48, ptr %i.sj
  %i.sm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i810, ptr noundef nonnull dereferenceable(1) %spec.store.select1.i811) #46
  %.not642 = icmp eq i32 %i.sm, 0
  br i1 %.not642, label %.thread949, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1823) #45
  %i.sn = load ptr, ptr %i.si, align 8, !tbaa !442
  call fastcc void @append_c_string(ptr noundef %i.oy, ptr noundef %i.sn)
  br label %.thread949

.thread949:                                       ; preds = %bb.ff, %bb.fe, %.thread947, %.thread947
  %i.so = getelementptr inbounds nuw i8, ptr %i.ow, i64 12
end_hunk_0
begin_hunk_1_@dotCmdMode:bb.a
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1832, ptr noundef %i.wi) #45
  br label %modeTitleDsply.exit.thread

default.unreachable:                              ; preds = %modeTitleDsply.exit
  unreachable

modeTitleDsply.exit.thread:                       ; preds = %.split587, %modeTitleDsply.exit, %bb.fu, %bb.fv, %bb.ft
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 4352 ; 3 uses
  %i.wk = load i32, ptr %i.wj, align 8, !tbaa !444
  %i.wl = icmp sgt i32 %i.wk, 0
  br i1 %i.wl, label %bb.fw, label %bb.fx

modeTitleDsply.exit.thread.thread:                ; preds = %.split
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 4352 ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !444
  %i.wo = icmp sgt i32 %i.wn, 0
  br i1 %i.wo, label %.thread960, label %.critedge712

bb.fw:                                            ; preds = %modeTitleDsply.exit.thread
  br i1 %.0556.lcssa1389.a, label %.lr.ph1180, label %.thread960

.thread960:                                       ; preds = %modeTitleDsply.exit.thread.thread, %bb.fw
  %i.wp = phi ptr [ %i.wj, %bb.fw ], [ %i.wm, %modeTitleDsply.exit.thread.thread ]
  %i.wq = shl nuw i64 1, %i.ov
  %i.wr = and i64 %i.wq, 892938
  %.not651 = icmp eq i64 %i.wr, 0
  br i1 %.not651, label %.critedge712, label %.lr.ph1180

.lr.ph1180:                                       ; preds = %bb.fw, %.thread960
  %i.ws = phi ptr [ %i.wp, %.thread960 ], [ %i.wj, %bb.fw ] ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 4360 ; 2 uses
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !445
  %i.wv = load i16, ptr %i.wu, align 2, !tbaa !98
  %i.ww = sext i16 %i.wv to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.433, ptr noundef nonnull @.str.1833, i32 noundef %i.ww) #45
  %i.wx = load i32, ptr %i.ws, align 8, !tbaa !444
  %i.wy = icmp sgt i32 %i.wx, 1
  br i1 %i.wy, label %.peel.next, label %._crit_edge1181

.peel.next:                                       ; preds = %.lr.ph1180, %.peel.next
  %indvars.iv1280 = phi i64 [ %indvars.iv.next1281, %.peel.next ], [ 1, %.lr.ph1180 ] ; 2 uses
  %i.wz = load ptr, ptr %i.wt, align 8, !tbaa !445
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.wz, i64 %indvars.iv1280
  %i.xb = load i16, ptr %i.xa, align 2, !tbaa !98
  %i.xc = sext i16 %i.xb to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.433, ptr noundef nonnull @.str.163, i32 noundef %i.xc) #45
  %indvars.iv.next1281 = add nuw nsw i64 %indvars.iv1280, 1 ; 2 uses
  %i.xd = load i32, ptr %i.ws, align 8, !tbaa !444
  %i.xe = sext i32 %i.xd to i64
  %i.xf = icmp slt i64 %indvars.iv.next1281, %i.xe
  br i1 %i.xf, label %.peel.next, label %._crit_edge1181, !llvm.loop !1270

bb.fx:                                            ; preds = %modeTitleDsply.exit.thread
  br i1 %.0556.lcssa1389.a, label %.thread959, label %.critedge712

.thread959:                                       ; preds = %bb.fx
  call void @sqlite3_str_appendall(ptr noundef %i.oy, ptr noundef nonnull @.str.1834) #45
  br label %.critedge714

._crit_edge1181:                                  ; preds = %.peel.next, %.lr.ph1180
  br i1 %.0556.lcssa1389.a, label %.critedge714, label %.critedge712

.critedge712:                                     ; preds = %modeTitleDsply.exit.thread.thread, %.thread960, %bb.fx, %._crit_edge1181
  %i.xg = shl nuw i64 1, %i.ov
  %i.xh = and i64 %i.xg, 7493621
  %.not652.not = icmp eq i64 %i.xh, 0
  br i1 %.not652.not, label %bb.fy, label %bb.gd

bb.fy:                                            ; preds = %.critedge712
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 4327
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !441
  %.not653 = icmp eq i8 %i.xj, 0
  br i1 %.not653, label %bb.gd, label %bb.fz

.critedge714:                                     ; preds = %.thread959, %._crit_edge1181
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 4327
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !441
  %i.xm = icmp eq i8 %i.xl, 2
  %i.xn = select i1 %i.xm, ptr @.str.926, ptr @.str.850
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1835, ptr noundef nonnull %i.xn) #45
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %.critedge714
  %.0556.lcssa1390 = phi i1 [ false, %bb.fy ], [ true, %.critedge714 ]
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 4334
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !440 ; 2 uses
  %.not654 = icmp eq i16 %i.xp, 0
  br i1 %.not654, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.xq = sext i16 %i.xp to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oy, ptr noundef nonnull @.str.1836, i32 noundef %i.xq) #45
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  br i1 %.0556.lcssa1390, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @sqlite3_str_append(ptr noundef %i.oy, ptr noundef nonnull @.str.1837, i32 noundef 5) #45
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gb, %bb.gc, %bb.fy, %.critedge712
  %i.xr = call ptr @sqlite3_str_finish(ptr noundef %i.oy) #45 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !351
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.xt, ptr noundef nonnull @.str.1838, ptr noundef %i.xr)
  %i.xu = load ptr, ptr %i.xs, align 8, !tbaa !351
  %i.xv = call i32 @fflush(ptr noundef %i.xu)     ; 0 uses
  call void @sqlite3_free(ptr noundef %i.xr) #45
  br label %.critedge709

.critedge709:                                     ; preds = %._crit_edge.thread, %bb.dv, %bb.dr, %bb.da, %bb.cy, %bb.cw, %bb.v, %bb.j, %bb.ea, %.thread895, %bb.bu, %.thread842, %bb.al, %bb.cf, %bb.x, %bb.ac, %bb.ao, %bb.bn, %bb.cq, %bb.dg, %bb.ed, %bb.ef, %bb.eg, %bb.gd, %._crit_edge1170
  %.16 = phi i32 [ 0, %bb.gd ], [ 0, %._crit_edge1170 ], [ 1, %bb.eg ], [ 1, %bb.ef ], [ 1, %bb.ed ], [ 1, %bb.ea ], [ 1, %bb.da ], [ 1, %.thread895 ], [ 1, %bb.dg ], [ 1, %bb.v ], [ 1, %bb.cq ], [ 1, %bb.cf ], [ 1, %bb.bu ], [ 1, %bb.bn ], [ 1, %.thread842 ], [ 1, %bb.ao ], [ 1, %bb.al ], [ 1, %bb.ac ], [ 1, %bb.x ], [ 1, %bb.j ], [ 1, %bb.cw ], [ 1, %bb.cy ], [ 1, %bb.dr ], [ 1, %bb.dv ], [ 1, %._crit_edge.thread ]
  ret i32 %.16
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @shellFilenameFromUri(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.b = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef nonnull %i.a) #45 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %shell_check_oom.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %bb.a, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.a ] ; 3 uses
  %.030 = phi i32 [ %i.z, %bb.j ], [ 0, %bb.a ]   ; 3 uses
  %i.d = sext i32 %.030 to i64
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !52    ; 2 uses
  switch i8 %i.f, label %bb.j [
    i8 0, label %.critedge
    i8 63, label %.critedge
    i8 37, label %bb.c
  ]

bb.c:                                             ; preds = %shell_check_oom.exit
  %i.g = getelementptr i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !52    ; 5 uses
  %i.i = add i8 %i.h, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.i, 10
  br i1 %or.cond.i, label %hexDigitValue.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i8 %i.h, -97
  %or.cond5.i = icmp ult i8 %i.j, 6
  br i1 %or.cond5.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i8 %i.h, -87
  br label %hexDigitValue.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.l = add nsw i8 %i.h, -55
  %i.m = add i8 %i.h, -71
  %or.cond = icmp ult i8 %i.m, -6
  br i1 %or.cond, label %.critedge, label %hexDigitValue.exit.thread

hexDigitValue.exit.thread:                        ; preds = %bb.c, %bb.f, %bb.e
  %.0.i44 = phi i8 [ %i.l, %bb.f ], [ %i.k, %bb.e ], [ %i.i, %bb.c ]
  %i.n = add nsw i32 %.030, 2                     ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !52    ; 5 uses
  %i.r = add i8 %i.q, -48                         ; 2 uses
  %or.cond.i37 = icmp ult i8 %i.r, 10
  br i1 %or.cond.i37, label %hexDigitValue.exit42.thread, label %bb.g

bb.g:                                             ; preds = %hexDigitValue.exit.thread
  %i.s = add i8 %i.q, -97
  %or.cond5.i38 = icmp ult i8 %i.s, 6
  br i1 %or.cond5.i38, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i8 %i.q, -87
  br label %hexDigitValue.exit42.thread

bb.i:                                             ; preds = %bb.g
  %i.u = add nsw i8 %i.q, -55
  %i.v = add i8 %i.q, -71
  %or.cond52 = icmp ult i8 %i.v, -6
  br i1 %or.cond52, label %.critedge, label %hexDigitValue.exit42.thread

hexDigitValue.exit42.thread:                      ; preds = %hexDigitValue.exit.thread, %bb.i, %bb.h
  %.0.i4149 = phi i8 [ %i.u, %bb.i ], [ %i.t, %bb.h ], [ %i.r, %hexDigitValue.exit.thread ]
  %i.w = shl i8 %.0.i44, 4
  %i.x = add i8 %.0.i4149, %i.w
  br label %bb.j

bb.j:                                             ; preds = %shell_check_oom.exit, %hexDigitValue.exit42.thread
  %.sink = phi i8 [ %i.x, %hexDigitValue.exit42.thread ], [ %i.f, %shell_check_oom.exit ]
  %.131 = phi i32 [ %i.n, %hexDigitValue.exit42.thread ], [ %.030, %shell_check_oom.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %.sink, ptr %i.y, align 1, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.z = add nsw i32 %.131, 1
  br label %shell_check_oom.exit, !llvm.loop !1276

.critedge:                                        ; preds = %shell_check_oom.exit, %shell_check_oom.exit, %bb.i, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 0, ptr %i.aa, align 1, !tbaa !52
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @dotCmdOutput(ptr noundef nonnull %0) unnamed_addr #4 {
strlen30.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4772
  %i.b = load i32, ptr %i.a, align 4, !tbaa !422  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4776
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !400  ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !52    ; 2 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.e) #46 ; 2 uses
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 1073741823)
  tail call void (ptr, ptr, ...) @failIfSafeMode(ptr noundef nonnull %0, ptr noundef nonnull @.str.862, ptr noundef nonnull %i.e)
  switch i8 %i.f, label %bb.b [
    i8 101, label %bb.d
    i8 119, label %bb.a
  ]

bb.a:                                             ; preds = %strlen30.exit
  br label %bb.d

bb.b:                                             ; preds = %strlen30.exit
  %i.i = icmp ugt i64 %i.g, 1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  %spec.store.select.i = select i1 %i.k, ptr @.str.48, ptr %i.j
  %i.l = tail call i32 @strncmp(ptr noundef nonnull %spec.store.select.i, ptr noundef nonnull @.str.1074, i64 noundef range(i64 -2147483648, 2147483648) %i.h) #46
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  %i.n = select i1 %i.m, i8 2, i8 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %strlen30.exit, %bb.a, %bb.b
  %.0152 = phi i32 [ 0, %bb.b ], [ 119, %bb.a ], [ 120, %strlen30.exit ], [ 0, %bb.c ] ; 2 uses
  %i.o = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %strlen30.exit ], [ %i.m, %bb.c ]
  %.not182 = phi i8 [ 0, %bb.b ], [ 2, %bb.a ], [ 2, %strlen30.exit ], [ %i.n, %bb.c ]
  %i.p = icmp sgt i32 %i.b, 1
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.q = icmp eq i8 %i.f, 111
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.ah
  %.0140316 = phi ptr [ null, %.lr.ph ], [ %.2142.ph, %bb.ah ] ; 10 uses
  %.0143315 = phi i32 [ 0, %.lr.ph ], [ %.2145.ph, %bb.ah ] ; 7 uses
  %.0147314 = phi i32 [ 0, %.lr.ph ], [ %.2149.ph, %bb.ah ] ; 10 uses
  %.1153313 = phi i32 [ %.0152, %.lr.ph ], [ %.3155.ph, %bb.ah ] ; 8 uses
  %.0156312 = phi i32 [ 1, %.lr.ph ], [ %i.bx, %bb.ah ] ; 16 uses
  %.0160311 = phi ptr [ null, %.lr.ph ], [ %.4164.ph, %bb.ah ] ; 11 uses
  %i.s = sext i32 %.0156312 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !88   ; 6 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52
  %i.w = icmp eq i8 %i.v, 45
  br i1 %i.w, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !52
  %i.z = icmp eq i8 %i.y, 45
  %spec.select189 = select i1 %i.z, ptr %i.x, ptr %i.u ; 9 uses
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select189, ptr noundef nonnull dereferenceable(5) @.str.1843) #46
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.ah, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select189, ptr noundef nonnull dereferenceable(7) @.str.1844) #46
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.ah, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.q, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call i32 @sqlite3_strglob(ptr noundef nonnull @.str.1845, ptr noundef nonnull %spec.select189) #45
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp ne i32 %.0143315, 0
  %i.ah = icmp ne i32 %.1153313, 0
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.0156312, ptr noundef nonnull @.str.1388, ptr noundef null)
  br label %.thread248

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %spec.select189, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !52
  %i.ak = sext i8 %i.aj to i32
  br label %bb.ah

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select189, ptr noundef nonnull dereferenceable(6) @.str.1384) #46
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not181 = icmp eq ptr %i.an, null
  br i1 %.not181, label %bb.ah, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.ap = tail call ptr @sqlite3_str_value(ptr noundef nonnull %i.an) #45
  %fputs = tail call i32 @fputs(ptr %i.ap, ptr %i.ao) ; 0 uses
  br label %bb.ah

bb.p:                                             ; preds = %bb.m
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select189, ptr noundef nonnull dereferenceable(6) @.str.1383) #46
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.ah, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = load i8, ptr %spec.select189, align 1, !tbaa !52
  %.not.i = icmp eq i8 %i.as, 45
  br i1 %.not.i, label %optionMatch.exit, label %optionMatch.exit.thread

optionMatch.exit:                                 ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select189, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !52
  %i.av = icmp eq i8 %i.au, 45
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select189, i64 2
  %spec.select.i = select i1 %i.av, ptr %i.aw, ptr %i.at
  %i.ax = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i, ptr noundef nonnull dereferenceable(13) @.str.1846) #46
  %.not265 = icmp eq i32 %i.ax, 0
  br i1 %.not265, label %bb.r, label %optionMatch.exit.thread

bb.r:                                             ; preds = %optionMatch.exit
  %i.ay = add nsw i32 %.0156312, 1                ; 3 uses
  %.not180 = icmp slt i32 %i.ay, %i.b
  br i1 %.not180, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.0156312, ptr noundef nonnull @.str.1097, ptr noundef null)
  br label %.thread236

bb.t:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !375
  tail call void @free(ptr noundef %i.az) #45
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !88 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !52
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = tail call noalias ptr @strdup(ptr noundef nonnull %i.bc) #45
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.bg = phi ptr [ %i.bf, %bb.u ], [ null, %bb.t ]
  store ptr %i.bg, ptr %i.r, align 8, !tbaa !375
  br label %bb.ah

optionMatch.exit.thread:                          ; preds = %bb.q, %optionMatch.exit
  tail call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.0156312, ptr noundef nonnull @.str.864, ptr noundef null)
  tail call void @sqlite3_free(ptr noundef %.0160311) #45
  br label %.thread236

bb.w:                                             ; preds = %bb.e
  %i.bh = icmp eq ptr %.0160311, null
  %i.bi = icmp eq i32 %.1153313, 0
  %or.cond3 = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond3, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %.not = icmp eq i32 %.0143315, 0
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.0156312, ptr noundef nonnull @.str.1388, ptr noundef null)
  br label %.thread248

bb.z:                                             ; preds = %bb.x
  %i.bj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(7) @.str.1847) #46
  %i.bk = icmp eq i32 %i.bj, 0
  %or.cond5 = and i1 %i.o, %i.bk
  br i1 %or.cond5, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.1848, ptr noundef null)
  br label %.thread248

bb.ab:                                            ; preds = %bb.z
  %i.bl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(4) @.str.850) #46
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bn = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1849) #45
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.bo = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef nonnull %i.u) #45
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1161 = phi ptr [ %i.bn, %bb.ac ], [ %i.bo, %bb.ad ] ; 5 uses
  %.not178 = icmp eq ptr %.1161, null
  br i1 %.not178, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bp = load i8, ptr %.1161, align 1, !tbaa !52
  %i.bq = icmp eq i8 %i.bp, 124
  br i1 %i.bq, label %.preheader, label %bb.ah

.preheader:                                       ; preds = %bb.af
  %i.br = add nsw i32 %.0156312, 1                ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.b
  br i1 %i.bs, label %.lr.ph322.preheader, label %shell_check_oom.exit

.lr.ph322.preheader:                              ; preds = %.preheader
  %i.bt = sext i32 %i.br to i64
  br label %.lr.ph322

.lr.ph322:                                        ; preds = %.lr.ph322.preheader, %.lr.ph322
  %indvars.iv = phi i64 [ %i.bt, %.lr.ph322.preheader ], [ %indvars.iv.next, %.lr.ph322 ] ; 2 uses
  %.2162321 = phi ptr [ %.1161, %.lr.ph322.preheader ], [ %i.bw, %.lr.ph322 ]
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !88
  %i.bw = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1193, ptr noundef %.2162321, ptr noundef %i.bv) #45 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph322, !llvm.loop !1277

bb.ag:                                            ; preds = %bb.w
  tail call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.0156312, ptr noundef nonnull @.str.1850, ptr noundef null)
  tail call void @sqlite3_free(ptr noundef %.0160311) #45
  br label %.thread236

bb.ah:                                            ; preds = %bb.p, %bb.g, %bb.f, %bb.af, %bb.ae, %bb.l, %bb.v, %bb.n, %bb.o
  %.4164.ph = phi ptr [ %.0160311, %bb.p ], [ %.1161, %bb.af ], [ %.0160311, %bb.v ], [ %.0160311, %bb.g ], [ %.0160311, %bb.n ], [ %.0160311, %bb.o ], [ %.0160311, %bb.l ], [ %.0160311, %bb.f ], [ null, %bb.ae ] ; 2 uses
  %.3159.ph = phi i32 [ %.0156312, %bb.p ], [ %.0156312, %bb.af ], [ %i.ay, %bb.v ], [ %.0156312, %bb.g ], [ %.0156312, %bb.n ], [ %.0156312, %bb.o ], [ %.0156312, %bb.l ], [ %.0156312, %bb.f ], [ %.0156312, %bb.ae ]
  %.3155.ph = phi i32 [ %.1153313, %bb.p ], [ 0, %bb.af ], [ %.1153313, %bb.v ], [ %.1153313, %bb.g ], [ %.1153313, %bb.n ], [ %.1153313, %bb.o ], [ %i.ak, %bb.l ], [ %.1153313, %bb.f ], [ 0, %bb.ae ] ; 2 uses
  %.2149.ph = phi i32 [ %.0147314, %bb.p ], [ %.0147314, %bb.af ], [ %.0147314, %bb.v ], [ 1, %bb.g ], [ %.0147314, %bb.n ], [ %.0147314, %bb.o ], [ %.0147314, %bb.l ], [ %.0147314, %bb.f ], [ %.0147314, %bb.ae ] ; 2 uses
  %.2145.ph = phi i32 [ 1, %bb.p ], [ 0, %bb.af ], [ %.0143315, %bb.v ], [ %.0143315, %bb.g ], [ %.0143315, %bb.n ], [ %.0143315, %bb.o ], [ 0, %bb.l ], [ %.0143315, %bb.f ], [ 0, %bb.ae ] ; 2 uses
  %.2142.ph = phi ptr [ %.0140316, %bb.p ], [ %.0140316, %bb.af ], [ %.0140316, %bb.v ], [ %.0140316, %bb.g ], [ %.0140316, %bb.n ], [ %.0140316, %bb.o ], [ %.0140316, %bb.l ], [ @.str.1842, %bb.f ], [ %.0140316, %bb.ae ] ; 2 uses
  %i.bx = add nsw i32 %.3159.ph, 1                ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.b
  br i1 %i.by, label %bb.e, label %.loopexit.loopexit324, !llvm.loop !1278

.loopexit.loopexit324:                            ; preds = %bb.ah
  %i.bz = icmp ne i32 %.2145.ph, 0
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph322, %.loopexit.loopexit324, %bb.d
  %.0147289 = phi i32 [ 0, %bb.d ], [ %.2149.ph, %.loopexit.loopexit324 ], [ %.0147314, %.lr.ph322 ] ; 2 uses
  %.0140274 = phi ptr [ null, %bb.d ], [ %.2142.ph, %.loopexit.loopexit324 ], [ %.0140316, %.lr.ph322 ] ; 2 uses
  %.5 = phi ptr [ null, %bb.d ], [ %.4164.ph, %.loopexit.loopexit324 ], [ %i.bw, %.lr.ph322 ] ; 2 uses
  %.4 = phi i32 [ %.0152, %bb.d ], [ %.3155.ph, %.loopexit.loopexit324 ], [ 0, %.lr.ph322 ] ; 2 uses
  %.3146 = phi i1 [ false, %bb.d ], [ %i.bz, %.loopexit.loopexit324 ], [ false, %.lr.ph322 ] ; 3 uses
  %i.ca = icmp ne ptr %.5, null
  %or.cond7 = select i1 %i.ca, i1 true, i1 %.3146
  br i1 %or.cond7, label %shell_check_oom.exit, label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  %i.cb = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1050) #45 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.aj, label %shell_check_oom.exit

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %.preheader, %bb.ai, %.loopexit
  %.3146381 = phi i1 [ %.3146, %.loopexit ], [ %.3146, %bb.ai ], [ false, %.preheader ] ; 2 uses
  %.4380 = phi i32 [ %.4, %.loopexit ], [ %.4, %bb.ai ], [ 0, %.preheader ] ; 3 uses
  %.0140274379 = phi ptr [ %.0140274, %.loopexit ], [ %.0140274, %bb.ai ], [ %.0140316, %.preheader ] ; 6 uses
  %.0147289378 = phi i32 [ %.0147289, %.loopexit ], [ %.0147289, %bb.ai ], [ %.0147314, %.preheader ] ; 2 uses
  %.6 = phi ptr [ %.5, %.loopexit ], [ %i.cb, %bb.ai ], [ %.1161, %.preheader ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.not182, ptr %i.cd, align 8, !tbaa !386
  br i1 %.3146381, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %shell_check_oom.exit
  tail call fastcc void @output_reset(ptr noundef %0)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %shell_check_oom.exit
  %i.ce = icmp eq i32 %.4380, 119                 ; 2 uses
  switch i32 %.4380, label %bb.au [
    i32 120, label %bb.am
    i32 119, label %bb.am
    i32 101, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al
  %i.cf = icmp eq i32 %.4380, 120
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.cg, align 1, !tbaa !392
  tail call fastcc void @modePush(ptr noundef %0)
  br i1 %i.cf, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @newTempFile(ptr noundef %0, ptr noundef nonnull @.str.1786)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4317 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !368
  %i.cj = and i8 %i.ci, -2
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !368
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4318
  store i8 5, ptr %i.ck, align 2, !tbaa !426
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4376 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !88
  tail call void @free(ptr noundef %i.cm) #45
  %i.cn = tail call noalias dereferenceable_or_null(2) ptr @malloc(i64 noundef 2) #51 ; 3 uses
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !88
  %.not.i198 = icmp eq ptr %i.cn, null
  br i1 %.not.i198, label %modeSetStr.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i16 44, ptr %i.cn, align 1
  br label %modeSetStr.exit

modeSetStr.exit:                                  ; preds = %bb.an, %bb.ao
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !88
  tail call void @free(ptr noundef %i.cp) #45
  %i.cq = tail call noalias dereferenceable_or_null(3) ptr @malloc(i64 noundef 3) #51 ; 3 uses
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !88
  %.not.i199 = icmp eq ptr %i.cq, null
  br i1 %.not.i199, label %modeSetStr.exit200, label %bb.ap

bb.ap:                                            ; preds = %modeSetStr.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cq, ptr noundef nonnull align 1 dereferenceable(3) @.str.164, i64 3, i1 false)
  br label %modeSetStr.exit200

bb.aq:                                            ; preds = %bb.am
  br i1 %i.ce, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  tail call fastcc void @newTempFile(ptr noundef %0, ptr noundef nonnull @.str.1787)
  %.not183 = icmp eq i32 %.0147289378, 0
  br i1 %.not183, label %bb.as, label %modeSetStr.exit200

bb.as:                                            ; preds = %bb.ar
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4318
  store i8 22, ptr %i.cr, align 2, !tbaa !426
  br label %modeSetStr.exit200

bb.at:                                            ; preds = %bb.aq
  tail call fastcc void @newTempFile(ptr noundef %0, ptr noundef nonnull @.str.1851)
  br label %modeSetStr.exit200

modeSetStr.exit200:                               ; preds = %bb.ap, %modeSetStr.exit, %bb.at, %bb.as, %bb.ar
  tail call void @sqlite3_free(ptr noundef %.6) #45
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !387
  %i.cu = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.ct) #45
  br label %bb.au

bb.au:                                            ; preds = %bb.al, %modeSetStr.exit200
  %.7 = phi ptr [ %i.cu, %modeSetStr.exit200 ], [ %.6, %bb.al ] ; 17 uses
  br i1 %.3146381, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cv = icmp eq ptr %.7, null
  br i1 %i.cv, label %bb.aw, label %shell_check_oom.exit201

bb.aw:                                            ; preds = %bb.av
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit201:                          ; preds = %bb.av
  %i.cw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.7, ptr noundef nonnull dereferenceable(7) @.str.1847) #46
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %shell_check_oom.exit201
  %i.cy = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not187 = icmp eq ptr %i.cy, null
  br i1 %.not187, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @sqlite3_str_free(ptr noundef nonnull %i.cy) #45
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.cz = tail call ptr @sqlite3_str_new(ptr noundef null) #45
  store ptr %i.cz, ptr @cli_output_capture, align 8, !tbaa !335
  br label %.critedge

bb.ba:                                            ; preds = %shell_check_oom.exit201
  %i.da = load i8, ptr %.7, align 1, !tbaa !52
  %i.db = icmp eq i8 %i.da, 124
  br i1 %i.db, label %bb.bb, label %bb.bq

bb.bb:                                            ; preds = %bb.ba
  %i.dc = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 2 uses
  %i.dd = tail call noalias ptr @popen(ptr noundef nonnull %i.dc, ptr noundef nonnull @.str.40) ; 8 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.bp, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !351 ; 2 uses
  %i.dh = load ptr, ptr @stdout, align 8, !tbaa !122
  %.not.i203 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not.i203, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.di = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @sqlite3_str_appendall(ptr noundef nonnull %i.di, ptr noundef nonnull @.str.1857) #45
  br label %output_redir.exit

bb.bf:                                            ; preds = %bb.bd
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !122
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.1857, i64 27, i64 1, ptr %i.dj) #50 ; 0 uses
  br label %output_redir.exit

bb.bg:                                            ; preds = %bb.bc
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !351
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4318
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !426
  %i.dm = icmp eq i8 %i.dl, 22
  br i1 %i.dm, label %bb.bh, label %output_redir.exit

bb.bh:                                            ; preds = %bb.bg
  %i.dn = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.dn, null
  br i1 %.not.i6.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.do = icmp eq ptr %i.dd, %i.dg
  %i.dp = load ptr, ptr @stderr, align 8
  %i.dq = icmp eq ptr %i.dd, %i.dp
  %or.cond.i7.i = select i1 %i.do, i1 true, i1 %i.dq
  br i1 %or.cond.i7.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  tail call void @sqlite3_str_appendall(ptr noundef nonnull %i.dn, ptr noundef nonnull @.str.1858) #45
  br label %output_redir.exit

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %fwrite10.i = tail call i64 @fwrite(ptr nonnull @.str.1858, i64 34, i64 1, ptr nonnull %i.dd) ; 0 uses
  br label %output_redir.exit

end_hunk_1
begin_hunk_2_@dotCmdOutput:strlen30.exit
  br label %cli_puts.exit219

bb.ci:                                            ; preds = %bb.cg, %bb.cf
  %i.ff = tail call i32 @fputs(ptr noundef nonnull %.0140274379, ptr noundef nonnull %.0.i207261) ; 0 uses
  br label %cli_puts.exit219

cli_puts.exit219:                                 ; preds = %bb.ci, %bb.ch, %output_redir.exit215
  %i.fg = icmp ne i32 %.0147289378, 0
  %or.cond13 = select i1 %i.fg, i1 %i.ce, i1 false
  br i1 %or.cond13, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %cli_puts.exit219
  tail call fastcc void @cli_puts(ptr noundef nonnull @.str.1854, ptr noundef nonnull %.0.i207261)
  br label %bb.ck

bb.ck:                                            ; preds = %cli_puts.exit219, %bb.cj
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 198
  %i.fi = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 4096, ptr noundef nonnull %i.fh, ptr noundef nonnull @.str.51, ptr noundef nonnull %.7) #45 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.ck, %.thread256, %bb.au, %bb.az
  tail call void @sqlite3_free(ptr noundef %.7) #45
  br label %.thread236

.thread248:                                       ; preds = %output_file_open.exit.thread, %bb.bw, %bb.aa, %bb.y, %bb.k, %bb.bp
  %.8 = phi ptr [ %.7, %bb.bp ], [ %.0160311, %bb.k ], [ null, %bb.aa ], [ null, %bb.y ], [ %.7, %bb.bw ], [ %.7, %output_file_open.exit.thread ]
  tail call void @sqlite3_free(ptr noundef %.8) #45
  br label %.thread236

.thread236:                                       ; preds = %bb.ag, %optionMatch.exit.thread, %bb.s, %.thread248, %.critedge
  %.3168 = phi i32 [ 1, %.thread248 ], [ 0, %.critedge ], [ 1, %bb.s ], [ 1, %optionMatch.exit.thread ], [ 1, %bb.ag ]
  ret i32 %.3168
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bind_table_init(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store i32 0, ptr %i.a, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store i32 0, ptr %i.b, align 4, !tbaa !53
  %i.c = load ptr, ptr %0, align 8, !tbaa !389
  %i.d = call i32 (ptr, i32, ...) @sqlite3_db_config(ptr noundef %i.c, i32 noundef 1010, i32 noundef -1, ptr noundef nonnull %i.b) #45 ; 0 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !389
  %i.f = call i32 (ptr, i32, ...) @sqlite3_db_config(ptr noundef %i.e, i32 noundef 1010, i32 noundef 0, i32 noundef 0) #45 ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !389
  %i.h = call i32 (ptr, i32, ...) @sqlite3_db_config(ptr noundef %i.g, i32 noundef 1011, i32 noundef -1, ptr noundef nonnull %i.a) #45 ; 0 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !389
  %i.j = call i32 (ptr, i32, ...) @sqlite3_db_config(ptr noundef %i.i, i32 noundef 1011, i32 noundef 1, i32 noundef 0) #45 ; 0 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !389
  %i.l = call i32 @sqlite3_exec(ptr noundef %i.k, ptr noundef nonnull @.str.1859, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 0 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !389
  %i.n = load i32, ptr %i.a, align 4, !tbaa !53
  %i.o = call i32 (ptr, i32, ...) @sqlite3_db_config(ptr noundef %i.m, i32 noundef 1011, i32 noundef %i.n, i32 noundef 0) #45 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !389
  %i.q = load i32, ptr %i.b, align 4, !tbaa !53
  %i.r = call i32 (ptr, i32, ...) @sqlite3_db_config(ptr noundef %i.p, i32 noundef 1010, i32 noundef %i.q, i32 noundef 0) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bind_prepared_stmt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca [30 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !109
  %i.c = tail call i32 @sqlite3_bind_parameter_count(ptr noundef %1) #45 ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !389
  %i.f = tail call i32 @sqlite3_table_column_metadata(ptr noundef %i.e, ptr noundef nonnull @.str.1860, ptr noundef nonnull @.str.1861, ptr noundef nonnull @.str.1862, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #45
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !109
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !389
  %i.h = call i32 @sqlite3_prepare_v2(ptr noundef %i.g, ptr noundef nonnull @.str.1863, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %i.i = icmp eq i32 %i.h, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.042 = phi i1 [ false, %bb.c ], [ %i.i, %bb.d ]
  %.not4850 = icmp slt i32 %i.c, 1
  br i1 %.not4850, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.w
  %.04351 = phi i32 [ 1, %.lr.ph ], [ %i.ax, %bb.w ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  %i.k = call ptr @sqlite3_bind_parameter_name(ptr noundef %1, i32 noundef %.04351) #45 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 30, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.1864, i32 noundef %.04351) #45 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.b, %bb.g ], [ %i.k, %bb.f ]  ; 9 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.o = call i32 @sqlite3_bind_text(ptr noundef %i.n, i32 noundef 1, ptr noundef nonnull %.0, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  %i.p = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.q = icmp ne ptr %i.p, null
  %or.cond = select i1 %.042, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.r = call i32 @sqlite3_step(ptr noundef nonnull %i.p) #45
  %i.s = icmp eq i32 %i.r, 100
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.u = call ptr @sqlite3_column_value(ptr noundef %i.t, i32 noundef 0) #45
  %i.v = call i32 @sqlite3_bind_value(ptr noundef %1, i32 noundef %.04351, ptr noundef %i.u) #45 ; 0 uses
  br label %bb.w

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.w = call i32 @sqlite3_strlike(ptr noundef nonnull @.str.1865, ptr noundef nonnull %.0, i32 noundef 0) #45
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = call i32 @sqlite3_bind_double(ptr noundef %1, i32 noundef %.04351, double noundef +qnan) #45 ; 0 uses
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.z = call i32 @sqlite3_strlike(ptr noundef nonnull @.str.1866, ptr noundef nonnull %.0, i32 noundef 0) #45
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = call i32 @sqlite3_bind_double(ptr noundef %1, i32 noundef %.04351, double noundef +inf) #45 ; 0 uses
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  %i.ac = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(6) @.str.1867, i64 noundef 5) #46
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 5
  %i.af = call i64 @strtol(ptr noundef nonnull captures(none) %i.ae, ptr noundef null, i32 noundef 10) #45, !inline_history !25
  %i.ag = trunc i64 %i.af to i32
  %i.ah = call i32 @sqlite3_bind_int(ptr noundef %1, i32 noundef %.04351, i32 noundef %i.ag) #45 ; 0 uses
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.ai = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(7) @.str.1868, i64 noundef 6) #46
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ak = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #46 ; 2 uses
  %i.al = add i64 %i.ak, -5                       ; 2 uses
  %i.am = call ptr @sqlite3_malloc64(i64 noundef %i.al) #45 ; 3 uses
  %.not49 = icmp eq ptr %i.am, null
  br i1 %.not49, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %.0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull align 1 %i.an, i64 %i.al, i1 false)
  %i.ao = add i64 %i.ak, -6
  %i.ap = call i32 @sqlite3_bind_text64(ptr noundef %1, i32 noundef %.04351, ptr noundef nonnull %i.am, i64 noundef %i.ao, ptr noundef nonnull @sqlite3_free, i8 noundef zeroext 1) #45 ; 0 uses
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  %i.aq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(7) @.str.1869) #46
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.as = load double, ptr %i.j, align 8, !tbaa !461
  %i.at = call i32 @sqlite3_bind_double(ptr noundef %1, i32 noundef %.04351, double noundef %i.as) #45 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.au = call i32 @sqlite3_bind_null(ptr noundef %1, i32 noundef %.04351) #45 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.s, %bb.l, %bb.p, %bb.u, %bb.v, %bb.n, %bb.j
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.aw = call i32 @sqlite3_reset(ptr noundef %i.av) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  %i.ax = add nuw i32 %.04351, 1
  %exitcond.not = icmp eq i32 %.04351, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !1279

._crit_edge:                                      ; preds = %bb.w, %bb.e
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.az = call i32 @sqlite3_finalize(ptr noundef %i.ay) #45 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

declare void @sqlite3_progress_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @progress_handler(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !434
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !434
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !432
  %i.f = and i32 %i.e, 8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr @iBegin, align 8, !tbaa !130
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %elapseTime.exit.thread, label %elapseTime.exit

elapseTime.exit:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  %i.i = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #45 ; 0 uses
  %i.j = load i64, ptr %2, align 8, !tbaa !459
  %i.k = mul nsw i64 %i.j, 1000000
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !460
  %i.n = add nsw i64 %i.k, %i.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  %i.o = load i64, ptr @iBegin, align 8, !tbaa !130 ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = sitofp i64 %i.p to double
  %i.r = fmul nnan double %i.q, f0x3EB0C6F7A0B5ED8D
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load double, ptr %i.s, align 8, !tbaa !435
  %i.u = fcmp ult double %i.r, %i.t
  br i1 %i.u, label %elapseTime.exit._crit_edge, label %bb.c

elapseTime.exit.thread:                           ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load double, ptr %i.v, align 8, !tbaa !435
  %i.x = fcmp ugt double %i.w, 0.000000e+00
  br i1 %i.x, label %elapseTime.exit._crit_edge, label %.thread

.thread:                                          ; preds = %elapseTime.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !351
  br label %elapseTime.exit26

elapseTime.exit._crit_edge:                       ; preds = %elapseTime.exit.thread, %elapseTime.exit
  %.pre = load i32, ptr %i.a, align 4, !tbaa !434
  br label %bb.e

bb.c:                                             ; preds = %elapseTime.exit
  %i.aa = icmp eq i64 %i.o, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !351 ; 2 uses
  br i1 %i.aa, label %elapseTime.exit26, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #45
  %i.ad = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #45 ; 0 uses
  %i.ae = load i64, ptr %1, align 8, !tbaa !459
  %i.af = mul nsw i64 %i.ae, 1000000
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !460
  %i.ai = add nsw i64 %i.af, %i.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #45
  %i.aj = load i64, ptr @iBegin, align 8, !tbaa !130
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sitofp i64 %i.ak to double
  %i.am = fmul nnan double %i.al, f0x3EB0C6F7A0B5ED8D
  br label %elapseTime.exit26

elapseTime.exit26:                                ; preds = %.thread, %bb.c, %bb.d
  %i.an = phi ptr [ %i.ac, %bb.d ], [ %i.ac, %bb.c ], [ %i.z, %.thread ]
  %.0.i25 = phi double [ %i.am, %bb.d ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %.thread ]
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.an, ptr noundef nonnull @.str.1870, double noundef %.0.i25)
  br label %bb.l

bb.e:                                             ; preds = %elapseTime.exit._crit_edge, %bb.a
  %i.ao = phi i32 [ %.pre, %elapseTime.exit._crit_edge ], [ %i.c, %bb.a ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !433
  %i.ar = add i32 %i.aq, -1
  %or.cond.not = icmp ult i32 %i.ar, %i.ao
  br i1 %or.cond.not, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !351
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.at, ptr noundef nonnull @.str.1871, i32 noundef %i.ao)
  %i.au = load i32, ptr %i.d, align 4, !tbaa !432 ; 2 uses
  %i.av = and i32 %i.au, 2
  %.not23 = icmp eq i32 %i.av, 0
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.a, align 4, !tbaa !434
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aw = and i32 %i.au, 4
  %.not24 = icmp eq i32 %i.aw, 0
  br i1 %.not24, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ap, align 8, !tbaa !433
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.ax = load i32, ptr %i.d, align 4, !tbaa !432
  %i.ay = and i32 %i.ax, 1
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !351
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.bb, ptr noundef nonnull @.str.1872, i32 noundef %i.ao)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h, %bb.i, %elapseTime.exit26
  %.0 = phi i32 [ 1, %elapseTime.exit26 ], [ 1, %bb.h ], [ 1, %bb.i ], [ 0, %bb.k ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @popen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @pclose(ptr noundef captures(none)) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @createSelftestTable(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !88
  %i.b = load ptr, ptr %0, align 8, !tbaa !389
  %i.c = call i32 @sqlite3_exec(ptr noundef %i.b, ptr noundef nonnull @.str.1873, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) #45 ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.e, ptr noundef nonnull @.str.1874, ptr noundef nonnull %i.d)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.f) #45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !389
  %i.h = call i32 @sqlite3_exec(ptr noundef %i.g, ptr noundef nonnull @.str.1875, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @captureOutputCallback(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !437
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @appendText(ptr noundef nonnull %0, ptr noundef nonnull @.str.158, i8 noundef signext 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %1 to i64
  %.pre = load ptr, ptr %2, align 8, !tbaa !88    ; 2 uses
  %.not18.peel = icmp eq ptr %.pre, null
  br i1 %.not18.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @appendText(ptr noundef nonnull %0, ptr noundef nonnull %.pre, i8 noundef signext 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %exitcond.peel.not = icmp eq i32 %1, 1
  br i1 %exitcond.peel.not, label %.loopexit, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.g, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %bb.g ] ; 2 uses
  tail call fastcc void @appendText(ptr noundef %0, ptr noundef nonnull @.str.163, i8 noundef signext 0)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %.not18 = icmp eq ptr %i.f, null
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.peel.next
  tail call fastcc void @appendText(ptr noundef %0, ptr noundef nonnull %i.f, i8 noundef signext 0)
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.peel.next, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.peel.next, !llvm.loop !1280

.loopexit:                                        ; preds = %bb.i, %bb.g, %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @output_c_string(ptr nofree noundef captures(address) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @__const.output_c_string.ace, i64 3, i1 false)
  %i.b = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.d = icmp eq ptr %0, %i.c
  %i.e = load ptr, ptr @stderr, align 8
  %i.f = icmp eq ptr %0, %i.e
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @sqlite3_str_appendall(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.196) #45
  br label %cli_puts.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %fputc = tail call i32 @fputc(i32 34, ptr %0)   ; 0 uses
  br label %cli_puts.exit

cli_puts.exit:                                    ; preds = %bb.c, %bb.d
  %i.g = icmp eq ptr %1, null
  %spec.store.select = select i1 %i.g, ptr @.str.48, ptr %1 ; 2 uses
  %i.h = load i8, ptr %spec.store.select, align 1, !tbaa !52
  %.not66 = icmp eq i8 %i.h, 0
  br i1 %.not66, label %cli_puts.exit43.thread, label %.lr.ph

.lr.ph:                                           ; preds = %cli_puts.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %cli_puts.exit43
  %.03167 = phi ptr [ %spec.store.select, %.lr.ph ], [ %i.as, %cli_puts.exit43 ] ; 11 uses
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.03167) #46 ; 2 uses
  %i.k = ptrtoint ptr %.03167 to i64              ; 3 uses
  %i.l = call ptr @memchr(ptr noundef nonnull %.03167, i32 noundef 34, i64 noundef %i.j) #46 ; 3 uses
  %.not17.i = icmp eq ptr %i.l, null
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.k
  %.2.i = select i1 %.not17.i, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = call ptr @memchr(ptr noundef nonnull %.03167, i32 noundef 92, i64 noundef %.2.i) #46 ; 3 uses
  %.not17.1.i = icmp eq ptr %i.o, null            ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.k
  %.2.1.i = select i1 %.not17.1.i, i64 %.2.i, i64 %i.q
  %.1.1.i = select i1 %.not17.1.i, ptr %i.l, ptr %i.o
  %i.r = call ptr @memchr(ptr noundef nonnull %.03167, i32 noundef 127, i64 noundef %.2.1.i) #46 ; 2 uses
  %.not17.2.i = icmp eq ptr %i.r, null
  %.1.2.i = select i1 %.not17.2.i, ptr %.1.1.i, ptr %i.r ; 3 uses
  %i.s = getelementptr i8, ptr %.03167, i64 2147483647 ; 5 uses
  %i.t = icmp ult ptr %.03167, %i.s
  br i1 %i.t, label %.lr.ph.split.split.i, label %zSkipValidUtf8.exit

.lr.ph.split.split.i:                             ; preds = %bb.e, %.loopexit.split.i
  %.04780.i = phi ptr [ %.350.i, %.loopexit.split.i ], [ %.03167, %bb.e ] ; 14 uses
  %i.u = load i8, ptr %.04780.i, align 1, !tbaa !52 ; 6 uses
  %i.v = icmp ult i8 %i.u, 127
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.split.split.i
  %i.w = icmp samesign ult i8 %i.u, 32
  br i1 %i.w, label %zSkipValidUtf8.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.04780.i, i64 1
  br label %.loopexit.split.i

bb.h:                                             ; preds = %.lr.ph.split.split.i
  %.not57.i = icmp ugt i8 %i.u, -65
  br i1 %.not57.i, label %.split.i, label %zSkipValidUtf8.exit

.split.i:                                         ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.04780.i, i64 1 ; 2 uses
  %.not58.i82 = icmp ult ptr %i.y, %i.s
  br i1 %.not58.i82, label %.lr.ph85, label %zSkipValidUtf8.exit

bb.i:                                             ; preds = %bb.l
  %.not58.i = icmp ult ptr %i.af, %i.s
  br i1 %.not58.i, label %.lr.ph85.1, label %zSkipValidUtf8.exit

.lr.ph85.1:                                       ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.04780.i, i64 3 ; 3 uses
  %i.aa = load i8, ptr %i.af, align 1, !tbaa !52
  %.not59.i.1 = icmp slt i8 %i.aa, -64
  br i1 %.not59.i.1, label %bb.j, label %zSkipValidUtf8.exit

bb.j:                                             ; preds = %.lr.ph85.1
  %i.ab = and i8 %i.u, 16
  %.not60.i.1 = icmp eq i8 %i.ab, 0
  br i1 %.not60.i.1, label %.loopexit.split.i, label %bb.k, !llvm.loop !24

bb.k:                                             ; preds = %bb.j
  %.not58.i.1 = icmp ult ptr %i.z, %i.s
  br i1 %.not58.i.1, label %.lr.ph85.2, label %zSkipValidUtf8.exit

.lr.ph85.2:                                       ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.04780.i, i64 4
  %i.ad = load i8, ptr %i.z, align 1, !tbaa !52
  %.not59.i.2 = icmp slt i8 %i.ad, -64
  %i.ae = and i8 %i.u, 8
  %.not60.i.2 = icmp eq i8 %i.ae, 0
  %or.cond97 = and i1 %.not59.i.2, %.not60.i.2
  br i1 %or.cond97, label %.loopexit.split.i, label %zSkipValidUtf8.exit, !llvm.loop !24

.lr.ph85:                                         ; preds = %.split.i
  %i.af = getelementptr inbounds nuw i8, ptr %.04780.i, i64 2 ; 3 uses
  %i.ag = load i8, ptr %i.y, align 1, !tbaa !52
  %.not59.i = icmp slt i8 %i.ag, -64
  br i1 %.not59.i, label %bb.l, label %zSkipValidUtf8.exit

bb.l:                                             ; preds = %.lr.ph85
  %i.ah = and i8 %i.u, 32
  %.not60.i = icmp eq i8 %i.ah, 0
  br i1 %.not60.i, label %.loopexit.split.i, label %bb.i, !llvm.loop !24

.loopexit.split.i:                                ; preds = %.lr.ph85.2, %bb.l, %bb.j, %bb.g
  %.350.i = phi ptr [ %i.x, %bb.g ], [ %i.af, %bb.l ], [ %i.z, %bb.j ], [ %i.ac, %.lr.ph85.2 ] ; 3 uses
  %i.ai = icmp ult ptr %.350.i, %i.s
  br i1 %i.ai, label %.lr.ph.split.split.i, label %zSkipValidUtf8.exit, !llvm.loop !23

zSkipValidUtf8.exit:                              ; preds = %bb.f, %bb.h, %.loopexit.split.i, %.split.i, %.lr.ph85, %bb.i, %.lr.ph85.1, %bb.k, %.lr.ph85.2, %bb.e
  %.04776.i = phi ptr [ %.03167, %bb.e ], [ %.04780.i, %.split.i ], [ %.04780.i, %bb.h ], [ %.04780.i, %.lr.ph85.2 ], [ %.04780.i, %bb.k ], [ %.04780.i, %.lr.ph85.1 ], [ %.04780.i, %bb.i ], [ %.04780.i, %.lr.ph85 ], [ %.350.i, %.loopexit.split.i ], [ %.04780.i, %bb.f ] ; 2 uses
  %.not35 = icmp ne ptr %.1.2.i, null
  %i.aj = icmp ult ptr %.1.2.i, %.04776.i
  %or.cond = and i1 %.not35, %i.aj
  %i.ak = select i1 %or.cond, ptr %.1.2.i, ptr %.04776.i ; 4 uses
  %i.al = icmp ugt ptr %i.ak, %.03167
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %zSkipValidUtf8.exit
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.am, %i.k
  %i.ao = trunc i64 %i.an to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %0, ptr noundef nonnull @.str.349, i32 noundef %i.ao, ptr noundef nonnull %.03167)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %zSkipValidUtf8.exit
  %i.ap = load i8, ptr %i.ak, align 1, !tbaa !52  ; 7 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = icmp eq i8 %i.ap, 0
  br i1 %i.ar, label %cli_puts.exit43.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  switch i8 %i.ap, label %bb.x [
    i8 92, label %bb.t
    i8 34, label %bb.t
    i8 9, label %bb.p
    i8 10, label %bb.q
    i8 13, label %bb.r
    i8 12, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.q, %bb.r, %bb.o, %bb.o
  %.030.ph = phi i8 [ %i.ap, %bb.o ], [ %i.ap, %bb.o ], [ 114, %bb.r ], [ 110, %bb.q ], [ 116, %bb.p ], [ 102, %bb.s ]
  store i8 %.030.ph, ptr %i.i, align 1, !tbaa !52
  %i.at = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not.i40 = icmp eq ptr %i.at, null
  br i1 %.not.i40, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.av = icmp eq ptr %0, %i.au
  %i.aw = load ptr, ptr @stderr, align 8
  %i.ax = icmp eq ptr %0, %i.aw
  %or.cond.i41 = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond.i41, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @sqlite3_str_appendall(ptr noundef nonnull %i.at, ptr noundef nonnull %i.a) #45
  br label %cli_puts.exit43

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.ay = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %0) ; 0 uses
  br label %cli_puts.exit43

bb.x:                                             ; preds = %bb.o
  %i.az = tail call ptr @__ctype_b_loc() #47
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !132
  %i.bb = zext i8 %i.ap to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !98
  %i.be = and i16 %i.bd, 16384
  %.not37 = icmp eq i16 %i.be, 0
  br i1 %.not37, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %0, ptr noundef nonnull @.str.205, i32 noundef %i.aq)
  br label %cli_puts.exit43

bb.z:                                             ; preds = %bb.x
  store i8 %i.ap, ptr %i.i, align 1, !tbaa !52
  %i.bf = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not.i44 = icmp eq ptr %i.bf, null
  br i1 %.not.i44, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bg = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.bh = icmp eq ptr %0, %i.bg
  %i.bi = load ptr, ptr @stderr, align 8
  %i.bj = icmp eq ptr %0, %i.bi
  %or.cond.i45 = select i1 %i.bh, i1 true, i1 %i.bj
  br i1 %or.cond.i45, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @sqlite3_str_appendall(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.i) #45
  br label %cli_puts.exit43

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.bk = call i32 @fputs(ptr noundef nonnull %i.i, ptr noundef %0) ; 0 uses
  br label %cli_puts.exit43

cli_puts.exit43:                                  ; preds = %bb.ac, %bb.ab, %bb.w, %bb.v, %bb.y
  %i.bl = load i8, ptr %i.as, align 1, !tbaa !52
  %.not = icmp eq i8 %i.bl, 0
  br i1 %.not, label %cli_puts.exit43.thread, label %bb.e

cli_puts.exit43.thread:                           ; preds = %cli_puts.exit43, %bb.n, %cli_puts.exit
  %i.bm = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not.i48 = icmp eq ptr %i.bm, null
  br i1 %.not.i48, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %cli_puts.exit43.thread
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.bo = icmp eq ptr %0, %i.bn
  %i.bp = load ptr, ptr @stderr, align 8
  %i.bq = icmp eq ptr %0, %i.bp
  %or.cond.i49 = select i1 %i.bo, i1 true, i1 %i.bq
  br i1 %or.cond.i49, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @sqlite3_str_appendall(ptr noundef nonnull %i.bm, ptr noundef nonnull @.str.196) #45
  br label %cli_puts.exit51

bb.af:                                            ; preds = %bb.ad, %cli_puts.exit43.thread
  %fputc57 = call i32 @fputc(i32 34, ptr %0)      ; 0 uses
  br label %cli_puts.exit51

cli_puts.exit51:                                  ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @display_stats(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 24 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca [200 x i8], align 16              ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca [200 x i8], align 16              ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca [200 x i8], align 16              ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca [200 x i8], align 16              ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %i.p = alloca [200 x i8], align 16              ; 5 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %i.r = alloca i64, align 8                      ; 6 uses
  %i.s = alloca [200 x i8], align 16              ; 5 uses
  %i.t = alloca i32, align 4                      ; 36 uses
  %i.u = alloca i32, align 4                      ; 25 uses
  %i.v = alloca i64, align 8                      ; 6 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %i.y = alloca [100 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #45
  %i.z = icmp eq ptr %1, null
  %.lcssa.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 4 uses
  %.lcssa.i.sroa.gep144 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.lcssa.i.sroa.gep145 = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %.lcssa.i.sroa.gep146 = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  br i1 %i.z, label %bb.be, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !351 ; 31 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.be, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4296 ; 11 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !670 ; 4 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !370
  %i.ah = icmp eq i32 %i.ag, 2
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #45
  %i.ai = tail call i32 @sqlite3_column_count(ptr noundef nonnull %i.ae) #45 ; 3 uses
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1876, ptr noundef nonnull @.str.1877, i32 noundef %i.ai)
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.0147 = phi i32 [ %i.ar, %.lr.ph ], [ 0, %bb.e ] ; 4 uses
  %i.ak = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef nonnull %i.y, ptr noundef nonnull @.str.1878, i32 noundef %.0147, ptr noundef nonnull %i.x) #45 ; 0 uses
  %i.al = call ptr @sqlite3_column_name(ptr noundef nonnull %i.ae, i32 noundef %.0147) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1879, ptr noundef nonnull %i.y, ptr noundef %i.al)
  %i.am = load i32, ptr %i.x, align 4, !tbaa !53
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.y, i64 %i.an
  %i.ap = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 30, ptr noundef nonnull %i.ao, ptr noundef nonnull @.str.1880) #45 ; 0 uses
  %i.aq = call ptr @sqlite3_column_decltype(ptr noundef nonnull %i.ae, i32 noundef %.0147) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1879, ptr noundef nonnull %i.y, ptr noundef %i.aq)
  %i.ar = add nuw nsw i32 %.0147, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.ai
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1281

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #45
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !370
  %i.au = icmp eq i32 %i.at, 3
  br i1 %i.au, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !670 ; 2 uses
  %.not115 = icmp eq ptr %i.av, null
  br i1 %.not115, label %bb.be, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = call i32 @sqlite3_stmt_status(ptr noundef nonnull %i.av, i32 noundef 4, i32 noundef 0) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1881, i32 noundef %i.aw)
  br label %bb.be

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #45
  store i64 -1, ptr %i.q, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #45
  store i64 -1, ptr %i.r, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #45
  %i.ax = call i32 @sqlite3_status64(i32 noundef 0, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i32 noundef 0) #45 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %bb.i ] ; 2 uses
  %.0.i = phi i32 [ %.1.i, %bb.l ], [ 0, %bb.i ]  ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr @.str.1883, i64 %indvars.iv.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !52
  switch i8 %i.az, label %bb.l [
    i8 0, label %bb.m
    i8 37, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ba = add nsw i32 %.0.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.i = phi i32 [ %i.ba, %bb.k ], [ %.0.i, %bb.j ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %bb.j, !llvm.loop !1282

bb.m:                                             ; preds = %bb.j
  %i.bb = icmp sgt i32 %.0.i, 1
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = load i64, ptr %i.q, align 8, !tbaa !130
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !130
  %i.be = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.s, ptr noundef nonnull @.str.1883, i64 noundef %i.bc, i64 noundef %i.bd) #45 ; 0 uses
  br label %displayStatLine.exit

bb.o:                                             ; preds = %bb.m
  %i.bf = load i64, ptr %i.r, align 8, !tbaa !130
  %i.bg = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.s, ptr noundef nonnull @.str.1883, i64 noundef %i.bf) #45 ; 0 uses
  br label %displayStatLine.exit

displayStatLine.exit:                             ; preds = %bb.n, %bb.o
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1879, ptr noundef nonnull @.str.1882, ptr noundef nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #45
  store i64 -1, ptr %i.n, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #45
  store i64 -1, ptr %i.o, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #45
  %i.bh = call i32 @sqlite3_status64(i32 noundef 9, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i32 noundef 0) #45 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %displayStatLine.exit
  %indvars.iv.i116 = phi i64 [ %indvars.iv.next.i119, %bb.r ], [ 0, %displayStatLine.exit ] ; 2 uses
  %.0.i117 = phi i32 [ %.1.i118, %bb.r ], [ 0, %displayStatLine.exit ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr @.str.1885, i64 %indvars.iv.i116
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !52
  switch i8 %i.bj, label %bb.r [
    i8 0, label %bb.s
    i8 37, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bk = add nsw i32 %.0.i117, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1.i118 = phi i32 [ %i.bk, %bb.q ], [ %.0.i117, %bb.p ]
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i116, 1
  br label %bb.p, !llvm.loop !1282

bb.s:                                             ; preds = %bb.p
  %i.bl = icmp sgt i32 %.0.i117, 1
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bm = load i64, ptr %i.n, align 8, !tbaa !130
  %i.bn = load i64, ptr %i.o, align 8, !tbaa !130
  %i.bo = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.p, ptr noundef nonnull @.str.1885, i64 noundef %i.bm, i64 noundef %i.bn) #45 ; 0 uses
  br label %displayStatLine.exit120

bb.u:                                             ; preds = %bb.s
  %i.bp = load i64, ptr %i.o, align 8, !tbaa !130
  %i.bq = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.p, ptr noundef nonnull @.str.1885, i64 noundef %i.bp) #45 ; 0 uses
  br label %displayStatLine.exit120

displayStatLine.exit120:                          ; preds = %bb.t, %bb.u
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1879, ptr noundef nonnull @.str.1884, ptr noundef nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #45
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !344
  %i.bt = and i32 %i.bs, 1
  %.not111 = icmp eq i32 %i.bt, 0
  br i1 %.not111, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %displayStatLine.exit120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #45
  store i64 -1, ptr %i.k, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #45
  store i64 -1, ptr %i.l, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #45
  %i.bu = call i32 @sqlite3_status64(i32 noundef 1, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i32 noundef 0) #45 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v
  %indvars.iv.i121 = phi i64 [ %indvars.iv.next.i124, %bb.y ], [ 0, %bb.v ] ; 2 uses
  %.0.i122 = phi i32 [ %.1.i123, %bb.y ], [ 0, %bb.v ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr @.str.1887, i64 %indvars.iv.i121
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !52
  switch i8 %i.bw, label %bb.y [
    i8 0, label %bb.z
    i8 37, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.bx = add nsw i32 %.0.i122, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1.i123 = phi i32 [ %i.bx, %bb.x ], [ %.0.i122, %bb.w ]
  %indvars.iv.next.i124 = add nuw nsw i64 %indvars.iv.i121, 1
  br label %bb.w, !llvm.loop !1282

bb.z:                                             ; preds = %bb.w
  %i.by = icmp sgt i32 %.0.i122, 1
  br i1 %i.by, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bz = load i64, ptr %i.k, align 8, !tbaa !130
  %i.ca = load i64, ptr %i.l, align 8, !tbaa !130
  %i.cb = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.m, ptr noundef nonnull @.str.1887, i64 noundef %i.bz, i64 noundef %i.ca) #45 ; 0 uses
  br label %displayStatLine.exit125

bb.ab:                                            ; preds = %bb.z
  %i.cc = load i64, ptr %i.l, align 8, !tbaa !130
  %i.cd = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.m, ptr noundef nonnull @.str.1887, i64 noundef %i.cc) #45 ; 0 uses
  br label %displayStatLine.exit125

displayStatLine.exit125:                          ; preds = %bb.aa, %bb.ab
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1879, ptr noundef nonnull @.str.1886, ptr noundef nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #45
  br label %bb.ac

bb.ac:                                            ; preds = %displayStatLine.exit125, %displayStatLine.exit120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #45
  store i64 -1, ptr %i.h, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #45
  store i64 -1, ptr %i.i, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #45
  %i.ce = call i32 @sqlite3_status64(i32 noundef 2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 0) #45 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac
  %indvars.iv.i126 = phi i64 [ %indvars.iv.next.i129, %bb.af ], [ 0, %bb.ac ] ; 2 uses
  %.0.i127 = phi i32 [ %.1.i128, %bb.af ], [ 0, %bb.ac ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr @.str.1883, i64 %indvars.iv.i126
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !52
  switch i8 %i.cg, label %bb.af [
    i8 0, label %bb.ag
    i8 37, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ch = add nsw i32 %.0.i127, 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.1.i128 = phi i32 [ %i.ch, %bb.ae ], [ %.0.i127, %bb.ad ]
  %indvars.iv.next.i129 = add nuw nsw i64 %indvars.iv.i126, 1
  br label %bb.ad, !llvm.loop !1282

bb.ag:                                            ; preds = %bb.ad
  %i.ci = icmp sgt i32 %.0.i127, 1
  br i1 %i.ci, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cj = load i64, ptr %i.h, align 8, !tbaa !130
  %i.ck = load i64, ptr %i.i, align 8, !tbaa !130
  %i.cl = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.1883, i64 noundef %i.cj, i64 noundef %i.ck) #45 ; 0 uses
  br label %displayStatLine.exit130

bb.ai:                                            ; preds = %bb.ag
  %i.cm = load i64, ptr %i.i, align 8, !tbaa !130
  %i.cn = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.1883, i64 noundef %i.cm) #45 ; 0 uses
  br label %displayStatLine.exit130

displayStatLine.exit130:                          ; preds = %bb.ah, %bb.ai
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1879, ptr noundef nonnull @.str.1888, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #45
  store i64 -1, ptr %i.e, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #45
  store i64 -1, ptr %i.f, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #45
  %i.co = call i32 @sqlite3_status64(i32 noundef 5, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 0) #45 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %displayStatLine.exit130
  %indvars.iv.i131 = phi i64 [ %indvars.iv.next.i134, %bb.al ], [ 0, %displayStatLine.exit130 ] ; 2 uses
  %.0.i132 = phi i32 [ %.1.i133, %bb.al ], [ 0, %displayStatLine.exit130 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr @.str.1890, i64 %indvars.iv.i131
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !52
  switch i8 %i.cq, label %bb.al [
    i8 0, label %bb.am
    i8 37, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.cr = add nsw i32 %.0.i132, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.1.i133 = phi i32 [ %i.cr, %bb.ak ], [ %.0.i132, %bb.aj ]
  %indvars.iv.next.i134 = add nuw nsw i64 %indvars.iv.i131, 1
  br label %bb.aj, !llvm.loop !1282

bb.am:                                            ; preds = %bb.aj
  %i.cs = icmp sgt i32 %.0.i132, 1
  br i1 %i.cs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ct = load i64, ptr %i.e, align 8, !tbaa !130
  %i.cu = load i64, ptr %i.f, align 8, !tbaa !130
  %i.cv = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.1890, i64 noundef %i.ct, i64 noundef %i.cu) #45 ; 0 uses
  br label %displayStatLine.exit135

bb.ao:                                            ; preds = %bb.am
  %i.cw = load i64, ptr %i.f, align 8, !tbaa !130
  %i.cx = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.1890, i64 noundef %i.cw) #45 ; 0 uses
  br label %displayStatLine.exit135

displayStatLine.exit135:                          ; preds = %bb.an, %bb.ao
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1879, ptr noundef nonnull @.str.1889, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store i64 -1, ptr %i.b, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  store i64 -1, ptr %i.c, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #45
  %i.cy = call i32 @sqlite3_status64(i32 noundef 7, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0) #45 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %displayStatLine.exit135
  %indvars.iv.i136 = phi i64 [ %indvars.iv.next.i139, %bb.ar ], [ 0, %displayStatLine.exit135 ] ; 2 uses
  %.0.i137 = phi i32 [ %.1.i138, %bb.ar ], [ 0, %displayStatLine.exit135 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr @.str.1890, i64 %indvars.iv.i136
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !52
  switch i8 %i.da, label %bb.ar [
    i8 0, label %bb.as
    i8 37, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.db = add nsw i32 %.0.i137, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1.i138 = phi i32 [ %i.db, %bb.aq ], [ %.0.i137, %bb.ap ]
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i136, 1
  br label %bb.ap, !llvm.loop !1282

bb.as:                                            ; preds = %bb.ap
  %i.dc = icmp sgt i32 %.0.i137, 1
  br i1 %i.dc, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !130
  %i.de = load i64, ptr %i.c, align 8, !tbaa !130
  %i.df = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.1890, i64 noundef %i.dd, i64 noundef %i.de) #45 ; 0 uses
  br label %displayStatLine.exit140

bb.au:                                            ; preds = %bb.as
  %i.dg = load i64, ptr %i.c, align 8, !tbaa !130
  %i.dh = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.1890, i64 noundef %i.dg) #45 ; 0 uses
  br label %displayStatLine.exit140

displayStatLine.exit140:                          ; preds = %bb.at, %bb.au
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1879, ptr noundef nonnull @.str.1891, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  %.not112 = icmp eq ptr %0, null
  br i1 %.not112, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %displayStatLine.exit140
  %i.di = load i32, ptr %i.br, align 8, !tbaa !344
  %i.dj = and i32 %i.di, 2
  %.not113 = icmp eq i32 %i.dj, 0
  br i1 %.not113, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i32 -1, ptr %i.t, align 4, !tbaa !53
  store i32 -1, ptr %i.u, align 4, !tbaa !53
  %i.dk = call i32 @sqlite3_db_status(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i32 noundef 0) #45 ; 0 uses
  %i.dl = load i32, ptr %i.t, align 4, !tbaa !53
  %i.dm = load i32, ptr %i.u, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1892, i32 noundef %i.dl, i32 noundef %i.dm)
  %i.dn = call i32 @sqlite3_db_status(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i32 noundef 0) #45 ; 0 uses
  %i.do = load i32, ptr %i.u, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1893, i32 noundef %i.do)
  %i.dp = call i32 @sqlite3_db_status(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i32 noundef 0) #45 ; 0 uses
  %i.dq = load i32, ptr %i.u, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1894, i32 noundef %i.dq)
  %i.dr = call i32 @sqlite3_db_status(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i32 noundef 0) #45 ; 0 uses
  %i.ds = load i32, ptr %i.u, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1895, i32 noundef %i.ds)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i32 -1, ptr %i.t, align 4, !tbaa !53
  store i32 -1, ptr %i.u, align 4, !tbaa !53
  %i.dt = call i32 @sqlite3_db_status(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i32 noundef 0) #45 ; 0 uses
  %i.du = load i32, ptr %i.t, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1896, i32 noundef %i.du)
  store i32 -1, ptr %i.t, align 4, !tbaa !53
  store i32 -1, ptr %i.u, align 4, !tbaa !53
  %i.dv = call i32 @sqlite3_db_status(ptr noundef nonnull %0, i32 noundef 7, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i32 noundef 1) #45 ; 0 uses
  %i.dw = load i32, ptr %i.t, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1897, i32 noundef %i.dw)
  store i32 -1, ptr %i.t, align 4, !tbaa !53
  store i32 -1, ptr %i.u, align 4, !tbaa !53
  %i.dx = call i32 @sqlite3_db_status(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i32 noundef 1) #45 ; 0 uses
  %i.dy = load i32, ptr %i.t, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1898, i32 noundef %i.dy)
  store i64 -1, ptr %i.v, align 8, !tbaa !130
  store i64 -1, ptr %i.w, align 8, !tbaa !130
  %i.dz = call i32 @sqlite3_db_status64(ptr noundef nonnull %0, i32 noundef 13, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i32 noundef 0) #45 ; 0 uses
  store i32 -1, ptr %i.t, align 4, !tbaa !53
  store i32 -1, ptr %i.u, align 4, !tbaa !53
  %i.ea = call i32 @sqlite3_db_status(ptr noundef nonnull %0, i32 noundef 9, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i32 noundef 1) #45 ; 0 uses
  %i.eb = load i32, ptr %i.t, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1899, i32 noundef %i.eb)
  store i32 -1, ptr %i.t, align 4, !tbaa !53
  store i32 -1, ptr %i.u, align 4, !tbaa !53
  %i.ec = call i32 @sqlite3_db_status(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i32 noundef 1) #45 ; 0 uses
  %i.ed = load i32, ptr %i.t, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1900, i32 noundef %i.ed)
  %i.ee = load i64, ptr %i.v, align 8, !tbaa !130
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1901, i64 noundef %i.ee)
  %i.ef = call i32 @sqlite3_db_status64(ptr noundef nonnull %0, i32 noundef 13, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i32 noundef 1) #45 ; 0 uses
  store i32 -1, ptr %i.t, align 4, !tbaa !53
  store i32 -1, ptr %i.u, align 4, !tbaa !53
  %i.eg = call i32 @sqlite3_db_status(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i32 noundef 0) #45 ; 0 uses
  %i.eh = load i32, ptr %i.t, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1902, i32 noundef %i.eh)
  store i32 -1, ptr %i.t, align 4, !tbaa !53
  store i32 -1, ptr %i.u, align 4, !tbaa !53
  %i.ei = call i32 @sqlite3_db_status(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i32 noundef 0) #45 ; 0 uses
  %i.ej = load i32, ptr %i.t, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1903, i32 noundef %i.ej)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %displayStatLine.exit140
  %i.ek = load ptr, ptr %i.ad, align 8, !tbaa !670 ; 2 uses
  %.not114 = icmp eq ptr %i.ek, null
  br i1 %.not114, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.el = call i32 @sqlite3_stmt_status(ptr noundef nonnull %i.ek, i32 noundef 1, i32 noundef 0) #45 ; 2 uses
  store i32 %i.el, ptr %i.t, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1904, i32 noundef %i.el)
  %i.em = load ptr, ptr %i.ad, align 8, !tbaa !670
  %i.en = call i32 @sqlite3_stmt_status(ptr noundef %i.em, i32 noundef 2, i32 noundef 0) #45 ; 2 uses
  store i32 %i.en, ptr %i.t, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1905, i32 noundef %i.en)
  %i.eo = load ptr, ptr %i.ad, align 8, !tbaa !670
  %i.ep = call i32 @sqlite3_stmt_status(ptr noundef %i.eo, i32 noundef 3, i32 noundef 0) #45 ; 2 uses
  store i32 %i.ep, ptr %i.t, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1906, i32 noundef %i.ep)
  %i.eq = load ptr, ptr %i.ad, align 8, !tbaa !670
  %i.er = call i32 @sqlite3_stmt_status(ptr noundef %i.eq, i32 noundef 8, i32 noundef 0) #45 ; 3 uses
  %i.es = load ptr, ptr %i.ad, align 8, !tbaa !670
  %i.et = call i32 @sqlite3_stmt_status(ptr noundef %i.es, i32 noundef 7, i32 noundef 0) #45 ; 2 uses
  %i.eu = icmp ne i32 %i.er, 0
  %i.ev = icmp ne i32 %i.et, 0
  %or.cond = select i1 %i.eu, i1 true, i1 %i.ev
  br i1 %or.cond, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ew = add nsw i32 %i.et, %i.er
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1907, i32 noundef %i.er, i32 noundef %i.ew)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.ex = load ptr, ptr %i.ad, align 8, !tbaa !670
  %i.ey = call i32 @sqlite3_stmt_status(ptr noundef %i.ex, i32 noundef 4, i32 noundef 0) #45 ; 2 uses
  store i32 %i.ey, ptr %i.t, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1908, i32 noundef %i.ey)
  %i.ez = load ptr, ptr %i.ad, align 8, !tbaa !670
  %i.fa = call i32 @sqlite3_stmt_status(ptr noundef %i.ez, i32 noundef 5, i32 noundef 0) #45 ; 2 uses
  store i32 %i.fa, ptr %i.t, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1909, i32 noundef %i.fa)
  %i.fb = load ptr, ptr %i.ad, align 8, !tbaa !670
  %i.fc = call i32 @sqlite3_stmt_status(ptr noundef %i.fb, i32 noundef 6, i32 noundef 0) #45 ; 2 uses
  store i32 %i.fc, ptr %i.t, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1910, i32 noundef %i.fc)
  %i.fd = load ptr, ptr %i.ad, align 8, !tbaa !670
  %i.fe = call i32 @sqlite3_stmt_status(ptr noundef %i.fd, i32 noundef 99, i32 noundef 0) #45 ; 2 uses
  store i32 %i.fe, ptr %i.t, align 4, !tbaa !53
  call void (ptr, ptr, ...) @cli_printf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.1911, i32 noundef %i.fe)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ay
  %i.ff = load ptr, ptr %i.aa, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.fg = call i32 @getpid() #45
  %i.fh = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1912, i32 noundef %i.fg) #45 ; 0 uses
  %i.fi = call noalias ptr @fopen64(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.58) ; 4 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %displayLinuxIoStats.exit, label %.preheader13.i

.preheader13.i:                                   ; preds = %bb.bc
  %i.fk = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 200, ptr noundef nonnull %i.fi)
  %.not16.i = icmp eq ptr %i.fk, null
  br i1 %.not16.i, label %._crit_edge.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader13.i, %.loopexit.i
  %i.fl = load i32, ptr %i.a, align 16
  %i.fm = xor i32 1634231154, %i.fl
  %i.fn = getelementptr i8, ptr %i.a, i64 3
  %i.fo = load i32, ptr %i.fn, align 1
  %i.fp = xor i32 540701281, %i.fo
  %i.fq = or i32 %i.fm, %i.fp
  %i.fr = icmp ne i32 %i.fq, 0
  %i.fs = zext i1 %i.fr to i32
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.bd, label %strlen30.exit.1.i

strlen30.exit.1.i:                                ; preds = %.preheader.i
  %i.fu = load i32, ptr %i.a, align 16
  %i.fv = xor i32 1634231159, %i.fu
  %i.fw = getelementptr i8, ptr %i.a, i64 3
  %i.fx = load i32, ptr %i.fw, align 1
  %i.fy = xor i32 540701281, %i.fx
  %i.fz = or i32 %i.fv, %i.fy
  %i.ga = icmp ne i32 %i.fz, 0
  %i.gb = zext i1 %i.ga to i32
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.bd, label %strlen30.exit.2.i

strlen30.exit.2.i:                                ; preds = %strlen30.exit.1.i
  %i.gd = load i32, ptr %i.a, align 16
  %i.ge = xor i32 1668512115, %i.gd
  %i.gf = getelementptr i8, ptr %i.a, i64 3
  %i.gg = load i32, ptr %i.gf, align 1
  %i.gh = xor i32 540701283, %i.gg
  %i.gi = or i32 %i.ge, %i.gh
  %i.gj = icmp ne i32 %i.gi, 0
  %i.gk = zext i1 %i.gj to i32
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.bd, label %strlen30.exit.3.i

strlen30.exit.3.i:                                ; preds = %strlen30.exit.2.i
  %i.gm = load i32, ptr %i.a, align 16
  %i.gn = xor i32 1668512115, %i.gm
  %i.go = getelementptr i8, ptr %i.a, i64 3
  %i.gp = load i32, ptr %i.go, align 1
  %i.gq = xor i32 540702563, %i.gp
  %i.gr = or i32 %i.gn, %i.gq
  %i.gs = icmp ne i32 %i.gr, 0
  %i.gt = zext i1 %i.gs to i32
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.bd, label %strlen30.exit.4.i

strlen30.exit.4.i:                                ; preds = %strlen30.exit.3.i
  %i.gv = load i64, ptr %i.a, align 16
  %i.gw = xor i64 8392847542427149682, %i.gv
  %i.gx = getelementptr i8, ptr %i.a, i64 8
  %i.gy = load i32, ptr %i.gx, align 8
  %i.gz = zext i32 %i.gy to i64
  %i.ha = xor i64 540701541, %i.gz
  %i.hb = or i64 %i.gw, %i.ha
  %i.hc = icmp ne i64 %i.hb, 0
  %i.hd = zext i1 %i.hc to i32
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.bd, label %strlen30.exit.5.i

strlen30.exit.5.i:                                ; preds = %strlen30.exit.4.i
  %i.hf = load i64, ptr %i.a, align 16
  %i.hg = xor i64 8746658315656327799, %i.hf
  %i.hh = getelementptr i8, ptr %i.a, i64 5
  %i.hi = load i64, ptr %i.hh, align 1
  %i.hj = xor i64 2322295437445915231, %i.hi
  %i.hk = or i64 %i.hg, %i.hj
  %i.hl = icmp ne i64 %i.hk, 0
  %i.hm = zext i1 %i.hl to i32
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %bb.bd, label %strlen30.exit.6.i

strlen30.exit.6.i:                                ; preds = %strlen30.exit.5.i
  %i.ho = load i128, ptr %i.a, align 16
  %i.hp = xor i128 126803442696175716876833970230844612963, %i.ho
  %i.hq = getelementptr i8, ptr %i.a, i64 7
  %i.hr = load i128, ptr %i.hq, align 1
  %i.hs = xor i128 42838789598108167533289435963234149477, %i.hr
  %i.ht = or i128 %i.hp, %i.hs
  %i.hu = icmp ne i128 %i.ht, 0
  %i.hv = zext i1 %i.hu to i32
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.bd, label %.loopexit.i

bb.bd:                                            ; preds = %strlen30.exit.6.i, %strlen30.exit.5.i, %strlen30.exit.4.i, %strlen30.exit.3.i, %strlen30.exit.2.i, %strlen30.exit.1.i, %.preheader.i
  %.lcssa18.i = phi ptr [ @displayLinuxIoStats.aTrans, %.preheader.i ], [ getelementptr inbounds nuw (i8, ptr @displayLinuxIoStats.aTrans, i64 16), %strlen30.exit.1.i ], [ getelementptr inbounds nuw (i8, ptr @displayLinuxIoStats.aTrans, i64 32), %strlen30.exit.2.i ], [ getelementptr inbounds nuw (i8, ptr @displayLinuxIoStats.aTrans, i64 48), %strlen30.exit.3.i ], [ getelementptr inbounds nuw (i8, ptr @displayLinuxIoStats.aTrans, i64 64), %strlen30.exit.4.i ], [ getelementptr inbounds nuw (i8, ptr @displayLinuxIoStats.aTrans, i64 80), %strlen30.exit.5.i ], [ getelementptr inbounds nuw (i8, ptr @displayLinuxIoStats.aTrans, i64 96), %strlen30.exit.6.i ]
  %.lcssa.i.sroa.phi = phi ptr [ %.lcssa.i.sroa.gep, %.preheader.i ], [ %.lcssa.i.sroa.gep, %strlen30.exit.1.i ], [ %.lcssa.i.sroa.gep, %strlen30.exit.2.i ], [ %.lcssa.i.sroa.gep, %strlen30.exit.3.i ], [ %.lcssa.i.sroa.gep144, %strlen30.exit.4.i ], [ %.lcssa.i.sroa.gep145, %strlen30.exit.5.i ], [ %.lcssa.i.sroa.gep146, %strlen30.exit.6.i ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.lcssa18.i, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !672
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ff, ptr noundef nonnull @.str.1927, ptr noundef %i.hy, ptr noundef nonnull %.lcssa.i.sroa.phi)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bd, %strlen30.exit.6.i
  %i.hz = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 200, ptr noundef nonnull %i.fi)
  %.not.i = icmp eq ptr %i.hz, null
  br i1 %.not.i, label %._crit_edge.i, label %.preheader.i, !llvm.loop !1283

._crit_edge.i:                                    ; preds = %.loopexit.i, %.preheader13.i
  %i.ia = call i32 @fclose(ptr noundef nonnull %i.fi) ; 0 uses
  br label %displayLinuxIoStats.exit

displayLinuxIoStats.exit:                         ; preds = %bb.bc, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.be

bb.be:                                            ; preds = %bb.g, %bb.h, %bb.a, %bb.b, %displayLinuxIoStats.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @dotCmdTestcase(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4772
  %i.b = load i32, ptr %i.a, align 4, !tbaa !422  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4776
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !400  ; 2 uses
  %i.e = icmp sgt i32 %i.b, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.03762 = phi ptr [ null, %.lr.ph ], [ %.2, %bb.k ] ; 2 uses
  %.03861 = phi i32 [ 1, %.lr.ph ], [ %i.ae, %bb.k ] ; 5 uses
  %i.g = sext i32 %.03861 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88   ; 6 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !52
  %i.k = icmp eq i8 %i.j, 45
  br i1 %i.k, label %bb.c, label %optionMatch.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !52
  %i.n = icmp eq i8 %i.m, 45
  br i1 %i.n, label %bb.d, label %optionMatch.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52
  %.not48 = icmp eq i8 %i.p, 0
  %spec.select = select i1 %.not48, ptr %i.i, ptr %i.l
  br label %optionMatch.exit

optionMatch.exit:                                 ; preds = %bb.c, %bb.d
  %.036.ph = phi ptr [ %i.i, %bb.c ], [ %spec.select, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.036.ph, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !52
  %i.s = icmp eq i8 %i.r, 45
  %i.t = getelementptr inbounds nuw i8, ptr %.036.ph, i64 2
  %spec.select.i = select i1 %i.s, ptr %i.t, ptr %i.q
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i, ptr noundef nonnull dereferenceable(13) @.str.1846) #46
  %.not56 = icmp eq i32 %i.u, 0
  br i1 %.not56, label %bb.e, label %optionMatch.exit.thread

bb.e:                                             ; preds = %optionMatch.exit
  %i.v = add nsw i32 %.03861, 1                   ; 3 uses
  %.not51 = icmp slt i32 %i.v, %i.b
  br i1 %.not51, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.03861, ptr noundef nonnull @.str.1097, ptr noundef null)
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !375
  tail call void @free(ptr noundef %i.w) #45
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !88   ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !52
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call noalias ptr @strdup(ptr noundef nonnull %i.z) #45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ad = phi ptr [ %i.ac, %bb.h ], [ null, %bb.g ]
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !375
  br label %bb.k

optionMatch.exit.thread:                          ; preds = %bb.b, %optionMatch.exit
  %.not50 = icmp eq ptr %.03762, null
  br i1 %.not50, label %bb.k, label %bb.j

bb.j:                                             ; preds = %optionMatch.exit.thread
  tail call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.03861, ptr noundef nonnull @.str.864, ptr noundef null)
  br label %.critedge

bb.k:                                             ; preds = %optionMatch.exit.thread, %bb.i
  %.240 = phi i32 [ %i.v, %bb.i ], [ %.03861, %optionMatch.exit.thread ]
  %.2 = phi ptr [ %.03762, %bb.i ], [ %i.i, %optionMatch.exit.thread ] ; 2 uses
  %i.ae = add nsw i32 %.240, 1                    ; 2 uses
  %i.af = icmp slt i32 %i.ae, %i.b
  br i1 %i.af, label %bb.b, label %._crit_edge, !llvm.loop !1284

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.037.lcssa = phi ptr [ null, %bb.a ], [ %.2, %bb.k ] ; 2 uses
  tail call fastcc void @output_reset(ptr noundef %0)
  %i.ag = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  tail call void @sqlite3_str_free(ptr noundef nonnull %i.ag) #45
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.ah = tail call ptr @sqlite3_str_new(ptr noundef null) #45
  store ptr %i.ah, ptr @cli_output_capture, align 8, !tbaa !335
  %.not47 = icmp eq ptr %.037.lcssa, null
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  br i1 %.not47, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 30, ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.51, ptr noundef nonnull %.037.lcssa) #45 ; 0 uses
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !374
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !354
  %i.ao = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 30, ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.1928, ptr noundef %i.al, i64 noundef %i.an) #45 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.j, %bb.n, %bb.o
  %.243 = phi i32 [ 0, %bb.n ], [ 0, %bb.o ], [ 1, %bb.j ], [ 1, %bb.f ]
  ret i32 %.243
}

; Function Attrs: nounwind uwtable
define internal i32 @faultsim_callback(i32 noundef %0) #4 {
bb.a:
  %i.a = load i32, ptr @faultsim_state.0, align 4, !tbaa !450 ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  %.not = icmp eq i32 %i.a, %0
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @faultsim_state.2, align 4, !tbaa !447 ; 4 uses
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.e, ptr @faultsim_state.2, align 4, !tbaa !447
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi i32 [ %i.e, %bb.d ], [ %i.c, %bb.c ]
  %i.g = load i32, ptr @faultsim_state.4, align 4, !tbaa !452
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !122
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.i, ptr noundef nonnull @.str.1929, i32 noundef %0, i32 noundef %i.f)
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.j = load i32, ptr @faultsim_state.4, align 4, !tbaa !452
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.m = load i32, ptr @faultsim_state.1, align 4, !tbaa !448
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.l, ptr noundef nonnull @.str.1930, i32 noundef %0, i32 noundef %i.m)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = load i32, ptr @faultsim_state.3, align 4, !tbaa !451
  store i32 %i.n, ptr @faultsim_state.2, align 4, !tbaa !447
  %i.o = load i32, ptr @faultsim_state.5, align 4, !tbaa !449
  %i.p = add nsw i32 %i.o, 1                      ; 2 uses
  store i32 %i.p, ptr @faultsim_state.5, align 4, !tbaa !449
  %i.q = load i32, ptr @faultsim_state.6, align 4, !tbaa !453 ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  %.not8 = icmp sgt i32 %i.q, %i.p
  %or.cond9 = select i1 %i.r, i1 true, i1 %.not8
  br i1 %or.cond9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 -1, ptr @faultsim_state.2, align 4, !tbaa !447
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = load i32, ptr @faultsim_state.1, align 4, !tbaa !448
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.k
  %.0 = phi i32 [ %i.s, %bb.k ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i32 @sqlite3_strglob(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_busy_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_trace_v2(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @sql_trace_callback(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !456  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %cli_puts.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %0, 8
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.g = icmp eq ptr %i.b, %i.f
  %i.h = load ptr, ptr @stderr, align 8
  %i.i = icmp eq ptr %i.b, %i.h
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @sqlite3_str_appendall(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.1931) #45
  br label %cli_puts.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.1931, i64 31, i64 1, ptr nonnull %i.b) ; 0 uses
  br label %cli_puts.exit

bb.g:                                             ; preds = %bb.b
  %i.j = icmp ne i32 %0, 4
  %i.k = icmp ne ptr %3, null                     ; 2 uses
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = load i8, ptr %3, align 1, !tbaa !52
  %i.m = icmp eq i8 %i.l, 45
  br i1 %i.m, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.o = load i8, ptr %i.n, align 1, !tbaa !455
  %cond = icmp eq i8 %i.o, 1
  br i1 %cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @sqlite3_expanded_sql(ptr noundef %2) #45
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.q = tail call ptr @sqlite3_sql(ptr noundef %2) #45
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.030 = phi ptr [ %i.q, %bb.k ], [ %i.p, %bb.j ] ; 2 uses
  %i.r = icmp eq ptr %.030, null
  br i1 %i.r, label %cli_puts.exit, label %.thread

.thread:                                          ; preds = %bb.h, %bb.l
  %.03036 = phi ptr [ %.030, %bb.l ], [ %3, %bb.h ] ; 4 uses
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.03036) #46 ; 2 uses
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.s, i64 1000000000) ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.thread, %bb.m
  %.037 = phi i64 [ %i.y, %bb.m ], [ %spec.store.select, %.thread ] ; 4 uses
  %i.u = getelementptr i8, ptr %.03036, i64 %.037
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !52
  %i.x = icmp eq i8 %i.w, 59
  br i1 %i.x, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.y = add nsw i64 %.037, -1
  %i.z = icmp sgt i64 %.037, 1
  br i1 %i.z, label %.lr.ph, label %.critedge, !llvm.loop !1285

.critedge:                                        ; preds = %.lr.ph, %bb.m, %.thread
  %.0.lcssa = phi i64 [ %spec.store.select, %.thread ], [ 0, %bb.m ], [ %.037, %.lr.ph ] ; 2 uses
  switch i32 %0, label %cli_puts.exit [
    i32 4, label %bb.n
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %.critedge, %.critedge
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !456
  %i.ab = trunc i64 %.0.lcssa to i32
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.aa, ptr noundef nonnull @.str.1932, i32 noundef %i.ab, ptr noundef nonnull %.03036)
  br label %cli_puts.exit

bb.o:                                             ; preds = %.critedge
  br i1 %i.k, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ac = load i64, ptr %3, align 8, !tbaa !130
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ad = phi i64 [ %i.ac, %bb.p ], [ 0, %bb.o ]
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !456
  %i.af = trunc i64 %.0.lcssa to i32
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ae, ptr noundef nonnull @.str.1933, i32 noundef %i.af, ptr noundef nonnull %.03036, i64 noundef %i.ad)
  br label %cli_puts.exit

cli_puts.exit:                                    ; preds = %bb.f, %bb.e, %.critedge, %bb.n, %bb.q, %bb.l, %bb.a
  ret i32 0
}

declare ptr @zlibVersion() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @parseDotRealloc(ptr nofree noundef nonnull captures(none) initializes((4768, 4772)) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = add nsw i32 %1, 22                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4768 ; 3 uses
  store i32 %i.a, ptr %i.b, align 8, !tbaa !423
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4776 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !400
  %i.e = sext i32 %i.a to i64
  %i.f = shl nsw i64 %i.e, 3
  %i.g = tail call ptr @realloc(ptr noundef %i.d, i64 noundef %i.f) #49 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !400
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %shell_check_oom.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4784 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !401
  %i.k = load i32, ptr %i.b, align 8, !tbaa !423
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = tail call ptr @realloc(ptr noundef %i.j, i64 noundef %i.m) #49 ; 2 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !401
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %shell_check_oom.exit13

bb.c:                                             ; preds = %shell_check_oom.exit
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit13:                           ; preds = %shell_check_oom.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4792 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !402
  %i.r = load i32, ptr %i.b, align 8, !tbaa !423
  %i.s = sext i32 %i.r to i64
  %i.t = tail call ptr @realloc(ptr noundef %i.q, i64 noundef %i.s) #49 ; 2 uses
  store ptr %i.t, ptr %i.p, align 8, !tbaa !402
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %shell_check_oom.exit14

bb.d:                                             ; preds = %shell_check_oom.exit13
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit14:                           ; preds = %shell_check_oom.exit13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @resolve_backslashes(ptr nofree noundef captures(none) %0) unnamed_addr #30 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.067 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.c ]  ; 10 uses
  %i.a = load i8, ptr %.067, align 1, !tbaa !52   ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 0, label %.critedge.preheader
    i8 92, label %.critedge.preheader
  ]

.critedge.preheader:                              ; preds = %bb.b, %bb.b
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.067, i64 1
  br label %bb.b, !llvm.loop !1286

.critedge:                                        ; preds = %.critedge.preheader, %bb.y
  %i.c = phi i8 [ %.pre, %bb.y ], [ %i.a, %.critedge.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.y ], [ 0, %.critedge.preheader ] ; 4 uses
  %.066 = phi i32 [ %i.at, %bb.y ], [ 0, %.critedge.preheader ] ; 7 uses
  switch i8 %i.c, label %bb.y [
    i8 0, label %bb.z
    i8 92, label %bb.d
  ]

bb.d:                                             ; preds = %.critedge
  %i.d = add nsw i32 %.066, 1                     ; 12 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %.067, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !52    ; 5 uses
  switch i8 %i.g, label %bb.u [
    i8 0, label %bb.y
    i8 97, label %bb.e
    i8 98, label %bb.f
    i8 116, label %bb.g
    i8 110, label %bb.h
    i8 118, label %bb.i
    i8 102, label %bb.j
    i8 114, label %bb.k
    i8 34, label %bb.l
    i8 39, label %bb.l
    i8 92, label %bb.l
    i8 120, label %.preheader
  ]

.preheader:                                       ; preds = %bb.d
  %i.h = add nsw i32 %.066, 2
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.067, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !52    ; 6 uses
  %.not77 = icmp eq i8 %i.k, 0
  br i1 %.not77, label %.critedge2, label %bb.m

bb.e:                                             ; preds = %bb.d
  br label %bb.y

bb.f:                                             ; preds = %bb.d
  br label %bb.y

bb.g:                                             ; preds = %bb.d
  br label %bb.y

bb.h:                                             ; preds = %bb.d
  br label %bb.y

bb.i:                                             ; preds = %bb.d
  br label %bb.y

bb.j:                                             ; preds = %bb.d
  br label %bb.y

bb.k:                                             ; preds = %bb.d
  br label %bb.y

bb.l:                                             ; preds = %bb.d, %bb.d, %bb.d
  br label %bb.y

bb.m:                                             ; preds = %.preheader
  %i.l = add i8 %i.k, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.l, 10
  br i1 %or.cond.i, label %hexDigitValue.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.m = add i8 %i.k, -97
  %or.cond5.i = icmp ult i8 %i.m, 6
  br i1 %or.cond5.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.n = add nsw i8 %i.k, -87
  br label %hexDigitValue.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.o = add nsw i8 %i.k, -55
  %i.p = add i8 %i.k, -65
  %or.cond84 = icmp ult i8 %i.p, 6
  br i1 %or.cond84, label %hexDigitValue.exit.thread, label %.critedge2

hexDigitValue.exit.thread:                        ; preds = %bb.m, %bb.p, %bb.o
  %.0.i81 = phi i8 [ %i.o, %bb.p ], [ %i.n, %bb.o ], [ %i.l, %bb.m ] ; 3 uses
  %i.q = getelementptr i8, ptr %.067, i64 %i.i
  %i.r = getelementptr i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !52    ; 6 uses
  %.not77.1 = icmp eq i8 %i.s, 0
  br i1 %.not77.1, label %.critedge2, label %bb.q

bb.q:                                             ; preds = %hexDigitValue.exit.thread
  %i.t = add i8 %i.s, -48                         ; 2 uses
  %or.cond.i.1 = icmp ult i8 %i.t, 10
  br i1 %or.cond.i.1, label %hexDigitValue.exit.thread.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.u = add i8 %i.s, -97
  %or.cond5.i.1 = icmp ult i8 %i.u, 6
  br i1 %or.cond5.i.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.v = add nsw i8 %i.s, -55
  %i.w = add i8 %i.s, -65
  %or.cond84.1 = icmp ult i8 %i.w, 6
  br i1 %or.cond84.1, label %hexDigitValue.exit.thread.1, label %.critedge2

bb.t:                                             ; preds = %bb.r
  %i.x = add nsw i8 %i.s, -87
  br label %hexDigitValue.exit.thread.1

hexDigitValue.exit.thread.1:                      ; preds = %bb.q, %bb.t, %bb.s
  %.0.i81.1 = phi i8 [ %i.v, %bb.s ], [ %i.x, %bb.t ], [ %i.t, %bb.q ]
  %i.y = shl i8 %.0.i81, 4
  %i.z = or i8 %.0.i81.1, %i.y
  br label %.critedge2

.critedge2:                                       ; preds = %hexDigitValue.exit.thread.1, %bb.s, %hexDigitValue.exit.thread, %bb.p, %.preheader
  %.063.lcssa = phi i32 [ 0, %bb.p ], [ 0, %.preheader ], [ 2, %hexDigitValue.exit.thread.1 ], [ 1, %hexDigitValue.exit.thread ], [ 1, %bb.s ]
  %.0.lcssa = phi i8 [ 0, %bb.p ], [ 0, %.preheader ], [ %i.z, %hexDigitValue.exit.thread.1 ], [ %.0.i81, %hexDigitValue.exit.thread ], [ %.0.i81, %bb.s ]
  %i.aa = add nsw i32 %.063.lcssa, %i.d
  br label %bb.y

bb.u:                                             ; preds = %bb.d
  %i.ab = and i8 %i.g, -8
  %or.cond = icmp eq i8 %i.ab, 48
  br i1 %or.cond, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %narrow = add nsw i8 %i.g, -48                  ; 2 uses
  %i.ac = add nsw i32 %.066, 2                    ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %.067, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !52  ; 2 uses
  %i.ag = and i8 %i.af, -8
  %or.cond78 = icmp eq i8 %i.ag, 48
  br i1 %or.cond78, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ah = shl nuw nsw i8 %narrow, 3
  %i.ai = add nsw i8 %i.ah, -48
  %i.aj = add nsw i8 %i.ai, %i.af                 ; 2 uses
  %i.ak = add nsw i32 %.066, 3                    ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %.067, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !52  ; 2 uses
  %i.ao = and i8 %i.an, -8
  %or.cond79 = icmp eq i8 %i.ao, 48
  br i1 %or.cond79, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ap = shl i8 %i.aj, 3
  %i.aq = add i8 %i.ap, -48
  %i.ar = add i8 %i.aq, %i.an
  br label %bb.y

bb.y:                                             ; preds = %bb.d, %.critedge, %bb.e, %bb.g, %bb.i, %bb.k, %.critedge2, %bb.v, %bb.x, %bb.w, %bb.u, %bb.l, %bb.j, %bb.h, %bb.f
  %.1 = phi i32 [ %i.d, %bb.e ], [ %i.d, %bb.f ], [ %i.d, %bb.g ], [ %i.d, %bb.h ], [ %i.d, %bb.i ], [ %i.d, %bb.j ], [ %i.d, %bb.k ], [ %i.d, %bb.l ], [ %i.d, %bb.u ], [ %i.d, %bb.v ], [ %i.aa, %.critedge2 ], [ %i.ak, %bb.x ], [ %.066, %bb.d ], [ %i.ac, %bb.w ], [ %.066, %.critedge ]
  %.064 = phi i8 [ 7, %bb.e ], [ 8, %bb.f ], [ 9, %bb.g ], [ 10, %bb.h ], [ 11, %bb.i ], [ 12, %bb.j ], [ 13, %bb.k ], [ %i.g, %bb.l ], [ %i.g, %bb.u ], [ %narrow, %bb.v ], [ %.0.lcssa, %.critedge2 ], [ %i.ar, %bb.x ], [ 92, %bb.d ], [ %i.aj, %bb.w ], [ %i.c, %.critedge ]
  %i.as = getelementptr inbounds nuw i8, ptr %.067, i64 %indvars.iv
  store i8 %.064, ptr %i.as, align 1, !tbaa !52
  %i.at = add nsw i32 %.1, 1                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.phi.trans.insert = sext i32 %i.at to i64
  %.phi.trans.insert88 = getelementptr inbounds i8, ptr %.067, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert88, align 1, !tbaa !52
  br label %.critedge, !llvm.loop !1287

bb.z:                                             ; preds = %.critedge
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  %i.av = icmp sgt i32 %.066, %i.au
  br i1 %i.av, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.aw = getelementptr inbounds nuw i8, ptr %.067, i64 %indvars.iv
  store i8 0, ptr %i.aw, align 1, !tbaa !52
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal i32 @pickStr(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.va_start.p0(ptr nonnull %2)
  %.promoted = load i32, ptr %2, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 16
  %i.d = icmp eq ptr %0, null
  %spec.store.select.i = select i1 %i.d, ptr @.str.48, ptr %0
  %.promoted32 = load ptr, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.e = phi ptr [ %.promoted32, %bb.a ], [ %i.l, %bb.h ] ; 3 uses
  %i.f = phi i32 [ %.promoted, %bb.a ], [ %i.m, %bb.h ] ; 4 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.s, %bb.h ]     ; 3 uses
  %i.g = icmp ult i32 %i.f, 41
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.f to i64
  %i.i = getelementptr i8, ptr %i.c, i64 %i.h
  %i.j = add nuw nsw i32 %i.f, 8                  ; 2 uses
  store i32 %i.j, ptr %2, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  store ptr %i.k, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %i.e, %bb.c ], [ %i.k, %bb.d ]
  %i.m = phi i32 [ %i.j, %bb.c ], [ %i.f, %bb.d ]
  %i.n = phi ptr [ %i.i, %bb.c ], [ %i.e, %bb.d ]
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88   ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52
  %.not27 = icmp eq i8 %i.p, 0
  br i1 %.not27, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i, ptr noundef nonnull dereferenceable(1) %i.o) #46
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw nsw i32 %.0, 1
  br label %bb.b, !llvm.loop !1288

.critedge:                                        ; preds = %bb.e, %bb.f
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.t = icmp eq ptr %1, null
  br i1 %i.t, label %.loopexit, label %.peel.begin

.peel.begin:                                      ; preds = %.critedge
  %i.u = call ptr @sqlite3_str_new(ptr noundef null) #45 ; 7 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @sqlite3_str_appendall(ptr noundef %i.u, ptr noundef nonnull @.str.1394) #45
  %i.v = add nsw i32 %.0, -1                      ; 2 uses
  %i.w = load i32, ptr %2, align 16               ; 3 uses
  %i.x = icmp ult i32 %i.w, 41
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.peel.begin
  %i.y = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.a, align 8
  br label %bb.k

bb.j:                                             ; preds = %.peel.begin
  %i.aa = load ptr, ptr %i.b, align 16
  %i.ab = zext nneg i32 %i.w to i64
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab
  %i.ad = add nuw nsw i32 %i.w, 8
  store i32 %i.ad, ptr %2, align 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = phi ptr [ %i.ac, %bb.j ], [ %i.y, %bb.i ]
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !88 ; 3 uses
  %.not28.peel = icmp eq ptr %i.af, null
  br i1 %.not28.peel, label %.critedge2, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !52
  %.not29.peel = icmp eq i8 %i.ag, 0
  br i1 %.not29.peel, label %.critedge2, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = icmp eq i32 %i.v, 0
  br i1 %i.ah, label %bb.n, label %.peel.next

bb.n:                                             ; preds = %bb.m
  call void @sqlite3_str_append(ptr noundef %i.u, ptr noundef nonnull @.str.1395, i32 noundef 4) #45
  br label %.peel.next

.peel.next:                                       ; preds = %bb.m, %bb.n
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.u, ptr noundef nonnull @.str.124, ptr noundef nonnull %i.af) #45
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %.peel.next
  %.1 = phi i32 [ 1, %.peel.next ], [ %i.au, %bb.w ] ; 2 uses
  %i.ai = load i32, ptr %2, align 16              ; 3 uses
  %i.aj = icmp ult i32 %i.ai, 41
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.b, align 16
  %i.al = zext nneg i32 %i.ai to i64
  %i.am = getelementptr i8, ptr %i.ak, i64 %i.al
  %i.an = add nuw nsw i32 %i.ai, 8
  store i32 %i.an, ptr %2, align 16
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr %i.a, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aq = phi ptr [ %i.am, %bb.p ], [ %i.ao, %bb.q ]
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !88 ; 3 uses
  %.not28 = icmp eq ptr %i.ar, null
  br i1 %.not28, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !52
  %.not29 = icmp eq i8 %i.as, 0
  br i1 %.not29, label %.critedge2, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = icmp eq i32 %.1, %i.v
  br i1 %i.at, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @sqlite3_str_append(ptr noundef %i.u, ptr noundef nonnull @.str.1395, i32 noundef 4) #45
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @sqlite3_str_append(ptr noundef %i.u, ptr noundef nonnull @.str.163, i32 noundef 1) #45
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.u, ptr noundef nonnull @.str.124, ptr noundef nonnull %i.ar) #45
  %i.au = add nuw nsw i32 %.1, 1
  br label %bb.o, !llvm.loop !1289

.critedge2:                                       ; preds = %bb.r, %bb.s, %bb.l, %bb.k
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.av = call ptr @sqlite3_str_finish(ptr noundef %i.u) #45
  store ptr %i.av, ptr %1, align 8, !tbaa !88
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.critedge, %.critedge2
  %.021 = phi i32 [ -1, %.critedge2 ], [ -1, %.critedge ], [ %.0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret i32 %.021
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @testcase_glob(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !52      ; 2 uses
  %.not161 = icmp eq i8 %i.a, 0
  %.pre196 = tail call ptr @__ctype_b_loc() #47   ; 2 uses
  br i1 %.not161, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %.pre196, align 8, !tbaa !132 ; 7 uses
  br label %bb.b

.preheader:                                       ; preds = %.loopexit, %bb.a
  %.079.lcssa = phi ptr [ %1, %bb.a ], [ %.9, %.loopexit ]
  %i.c = load ptr, ptr %.pre196, align 8, !tbaa !132
  br label %bb.y

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.d = phi i8 [ %i.a, %.lr.ph ], [ %i.cc, %.loopexit ] ; 3 uses
  %.079163 = phi ptr [ %1, %.lr.ph ], [ %.9, %.loopexit ] ; 13 uses
  %.085162 = phi ptr [ %0, %.lr.ph ], [ %.893, %.loopexit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.085162, i64 1 ; 6 uses
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !98
  %i.i = and i16 %i.h, 8192
  %.not107 = icmp eq i16 %i.i, 0
  br i1 %.not107, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %.079163, align 1, !tbaa !52
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !98
  %i.n = and i16 %i.m, 8192
  %.not119 = icmp eq i16 %i.n, 0
  br i1 %.not119, label %.critedge125, label %.preheader138

.preheader138:                                    ; preds = %bb.c, %.preheader138
  %.186 = phi ptr [ %i.t, %.preheader138 ], [ %i.e, %bb.c ] ; 3 uses
  %i.o = load i8, ptr %.186, align 1, !tbaa !52
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !98
  %i.s = and i16 %i.r, 8192
  %.not120 = icmp eq i16 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.186, i64 1
  br i1 %.not120, label %.preheader136, label %.preheader138, !llvm.loop !1290

.preheader136:                                    ; preds = %.preheader138, %.preheader136
  %.180 = phi ptr [ %i.z, %.preheader136 ], [ %.079163, %.preheader138 ] ; 3 uses
  %i.u = load i8, ptr %.180, align 1, !tbaa !52
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !98
  %i.y = and i16 %i.x, 8192
  %.not121 = icmp eq i16 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %.180, i64 1
  br i1 %.not121, label %.loopexit, label %.preheader136, !llvm.loop !1291

bb.d:                                             ; preds = %bb.b
  switch i8 %i.d, label %bb.x [
    i8 42, label %.preheader131.outer
    i8 63, label %bb.i
    i8 91, label %bb.j
    i8 35, label %bb.u
  ]

.preheader131.outer:                              ; preds = %bb.d, %bb.e
  %.287.ph = phi ptr [ %i.aa, %bb.e ], [ %i.e, %bb.d ]
  %.281.ph = phi ptr [ %i.ad, %bb.e ], [ %.079163, %bb.d ] ; 5 uses
  br label %.preheader131

.preheader131:                                    ; preds = %.preheader131.outer, %.preheader131
  %.287 = phi ptr [ %i.aa, %.preheader131 ], [ %.287.ph, %.preheader131.outer ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.287, i64 1 ; 3 uses
  %i.ab = load i8, ptr %.287, align 1, !tbaa !52  ; 2 uses
  switch i8 %i.ab, label %.preheader128 [
    i8 63, label %bb.e
    i8 42, label %.preheader131
    i8 0, label %.critedge125
    i8 91, label %.preheader130
  ], !llvm.loop !1292

.preheader130:                                    ; preds = %.preheader131
  %i.ac = load i8, ptr %.281.ph, align 1, !tbaa !52
  %.not118164 = icmp eq i8 %i.ac, 0
  br i1 %.not118164, label %.critedge125, label %.lr.ph166

bb.e:                                             ; preds = %.preheader131
  %i.ad = getelementptr inbounds nuw i8, ptr %.281.ph, i64 1
  %i.ae = load i8, ptr %.281.ph, align 1, !tbaa !52
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %.critedge125, label %.preheader131.outer, !llvm.loop !1292

bb.f:                                             ; preds = %.lr.ph166
  %i.ag = getelementptr inbounds nuw i8, ptr %.483165, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !52
  %.not118 = icmp eq i8 %i.ah, 0
  br i1 %.not118, label %.critedge125, label %.lr.ph166, !llvm.loop !1293

.lr.ph166:                                        ; preds = %.preheader130, %bb.f
  %.483165 = phi ptr [ %i.ag, %bb.f ], [ %.281.ph, %.preheader130 ] ; 2 uses
  %i.ai = tail call fastcc i32 @testcase_glob(ptr noundef nonnull %.287, ptr noundef nonnull %.483165)
  %.not232 = icmp eq i32 %i.ai, 0
  br i1 %.not232, label %bb.f, label %.critedge125

.preheader128:                                    ; preds = %.preheader131, %bb.h
  %.584 = phi ptr [ %.6, %bb.h ], [ %.281.ph, %.preheader131 ] ; 2 uses
  %i.aj = load i8, ptr %.584, align 1, !tbaa !52  ; 2 uses
  %.not115.not = icmp eq i8 %i.aj, 0
  br i1 %.not115.not, label %.critedge125, label %.preheader127

.preheader127:                                    ; preds = %.preheader128, %bb.g
  %.584.pn = phi ptr [ %.6, %bb.g ], [ %.584, %.preheader128 ]
  %.075.in = phi i8 [ %i.ak, %bb.g ], [ %i.aj, %.preheader128 ]
  %.6 = getelementptr inbounds nuw i8, ptr %.584.pn, i64 1 ; 4 uses
  %.not116 = icmp eq i8 %.075.in, %i.ab
  br i1 %.not116, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader127
  %i.ak = load i8, ptr %.6, align 1, !tbaa !52    ; 2 uses
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %.critedge125, label %.preheader127, !llvm.loop !1294

bb.h:                                             ; preds = %.preheader127
  %i.am = tail call fastcc i32 @testcase_glob(ptr noundef nonnull %i.aa, ptr noundef nonnull %.6)
  %.not117 = icmp eq i32 %i.am, 0
  br i1 %.not117, label %.preheader128, label %.critedge125, !llvm.loop !1295

bb.i:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.079163, i64 1
  %i.ao = load i8, ptr %.079163, align 1, !tbaa !52
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %.critedge125, label %.loopexit

bb.j:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %.079163, i64 1
  %i.ar = load i8, ptr %.079163, align 1, !tbaa !52 ; 5 uses
  %i.as = sext i8 %i.ar to i32
  %i.at = icmp eq i8 %i.ar, 0
  br i1 %i.at, label %.critedge125, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.085162, i64 2 ; 2 uses
  %i.av = load i8, ptr %i.e, align 1, !tbaa !52   ; 2 uses
  %i.aw = icmp eq i8 %i.av, 94
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.085162, i64 3
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !52
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.388 = phi ptr [ %i.ax, %bb.l ], [ %i.au, %bb.k ] ; 2 uses
  %.176.in = phi i8 [ %i.ay, %bb.l ], [ %i.av, %bb.k ] ; 2 uses
  %.074 = phi i32 [ 1, %bb.l ], [ 0, %bb.k ]
  %i.az = icmp eq i8 %.176.in, 93
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = icmp eq i8 %i.ar, 93
  %spec.select = zext i1 %i.ba to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.s, %bb.n
  %.388.sink261 = phi ptr [ %.388, %bb.n ], [ %i.bg, %bb.r ], [ %.590, %bb.s ] ; 2 uses
  %.2.ph = phi i32 [ %spec.select, %bb.n ], [ %.3, %bb.r ], [ %spec.select123, %bb.s ]
  %.0.ph = phi i32 [ 0, %bb.n ], [ 0, %bb.r ], [ %.378, %bb.s ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.388.sink261, i64 1
  %i.bc = load i8, ptr %.388.sink261, align 1, !tbaa !52
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.m
  %.590 = phi ptr [ %.388, %bb.m ], [ %i.bb, %.sink.split ] ; 4 uses
  %.378.in = phi i8 [ %.176.in, %bb.m ], [ %i.bc, %.sink.split ] ; 3 uses
  %.2 = phi i32 [ 0, %bb.m ], [ %.2.ph, %.sink.split ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.m ], [ %.0.ph, %.sink.split ] ; 2 uses
  %.378 = sext i8 %.378.in to i32
  switch i8 %.378.in, label %bb.s [
    i8 45, label %bb.p
    i8 0, label %.critedge125
    i8 93, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o
  %i.bd = load i8, ptr %.590, align 1, !tbaa !52  ; 3 uses
  %.not112 = icmp eq i8 %i.bd, 93
  br i1 %.not112, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = icmp ne i8 %i.bd, 0
  %i.bf = icmp sgt i32 %.0, 0
  %or.cond = and i1 %i.bf, %i.be
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %.590, i64 1
  %.not113 = icmp sgt i32 %.0, %i.as
  %.not114 = icmp sgt i8 %i.ar, %i.bd
  %or.cond122 = or i1 %.not113, %.not114
  %.3 = select i1 %or.cond122, i32 %.2, i32 1
  br label %.sink.split, !llvm.loop !1296

bb.s:                                             ; preds = %bb.o, %bb.q, %bb.p
  %i.bh = icmp eq i8 %i.ar, %.378.in
  %spec.select123 = select i1 %i.bh, i32 1, i32 %.2
  br label %.sink.split, !llvm.loop !1296

bb.t:                                             ; preds = %bb.o
  %i.bi = icmp eq i32 %.2, %.074
  br i1 %i.bi, label %.critedge125, label %.loopexit

bb.u:                                             ; preds = %bb.d
  %i.bj = load i8, ptr %.079163, align 1, !tbaa !52 ; 2 uses
  switch i8 %i.bj, label %bb.w [
    i8 45, label %bb.v
    i8 43, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %.079163, i64 1 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !52
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !98
  %i.bp = and i16 %i.bo, 2048
  %.not109 = icmp eq i16 %i.bp, 0
  %spec.select126 = select i1 %.not109, ptr %.079163, ptr %i.bk ; 2 uses
  %.pre = load i8, ptr %spec.select126, align 1, !tbaa !52
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bq = phi i8 [ %i.bj, %bb.u ], [ %.pre, %bb.v ]
  %.7 = phi ptr [ %.079163, %bb.u ], [ %spec.select126, %bb.v ]
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !98
  %i.bu = and i16 %i.bt, 2048
  %.not110 = icmp eq i16 %i.bu, 0
  br i1 %.not110, label %.critedge125, label %.preheader135

.preheader135:                                    ; preds = %bb.w, %.preheader135
  %.7.pn = phi ptr [ %.8, %.preheader135 ], [ %.7, %bb.w ]
  %.8 = getelementptr inbounds nuw i8, ptr %.7.pn, i64 1 ; 3 uses
  %i.bv = load i8, ptr %.8, align 1, !tbaa !52
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !98
  %i.bz = and i16 %i.by, 2048
  %.not111 = icmp eq i16 %i.bz, 0
  br i1 %.not111, label %.loopexit, label %.preheader135, !llvm.loop !1297

bb.x:                                             ; preds = %bb.d
  %i.ca = getelementptr inbounds nuw i8, ptr %.079163, i64 1
  %i.cb = load i8, ptr %.079163, align 1, !tbaa !52
  %.not108 = icmp eq i8 %i.d, %i.cb
  br i1 %.not108, label %.loopexit, label %.critedge125

.loopexit:                                        ; preds = %.preheader136, %.preheader135, %bb.t, %bb.x, %bb.i
  %.893 = phi ptr [ %i.e, %.preheader135 ], [ %i.e, %bb.i ], [ %i.e, %bb.x ], [ %.590, %bb.t ], [ %.186, %.preheader136 ] ; 2 uses
  %.9 = phi ptr [ %.8, %.preheader135 ], [ %i.an, %bb.i ], [ %i.ca, %bb.x ], [ %i.aq, %bb.t ], [ %.180, %.preheader136 ] ; 2 uses
  %i.cc = load i8, ptr %.893, align 1, !tbaa !52  ; 2 uses
  %.not = icmp eq i8 %i.cc, 0
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !1298

bb.y:                                             ; preds = %bb.y, %.preheader
  %.10 = phi ptr [ %i.ci, %bb.y ], [ %.079.lcssa, %.preheader ] ; 2 uses
  %i.cd = load i8, ptr %.10, align 1, !tbaa !52   ; 2 uses
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !98
  %i.ch = and i16 %i.cg, 8192
  %.not106 = icmp eq i16 %i.ch, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br i1 %.not106, label %bb.z, label %bb.y, !llvm.loop !1299

bb.z:                                             ; preds = %bb.y
  %i.cj = icmp eq i8 %i.cd, 0
  %i.ck = zext i1 %i.cj to i32
  br label %.critedge125

.critedge125:                                     ; preds = %bb.j, %bb.t, %bb.x, %bb.w, %bb.i, %bb.c, %bb.o, %.preheader131, %bb.e, %bb.f, %.lr.ph166, %.preheader128, %bb.h, %bb.g, %.preheader130, %bb.z
  %.397.shrunk = phi i32 [ %i.ck, %bb.z ], [ 0, %.preheader130 ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %.preheader128 ], [ 1, %.lr.ph166 ], [ 1, %bb.h ], [ 0, %bb.f ], [ 1, %.preheader131 ], [ 0, %bb.o ], [ 0, %bb.c ], [ 0, %bb.i ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.t ], [ 0, %bb.j ]
  ret i32 %.397.shrunk
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tryToCloneSchema(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !88
  %i.c = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1403, ptr noundef %2) #45 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %shell_check_oom.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !389
  %i.f = call i32 @sqlite3_prepare_v2(ptr noundef %i.e, ptr noundef nonnull %i.c, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.preheader66, label %.loopexit.sink.split

.preheader66:                                     ; preds = %shell_check_oom.exit
  %.not59 = icmp eq ptr %3, null                  ; 2 uses
  br label %.backedge68

.backedge68:                                      ; preds = %.backedge68.backedge, %.preheader66
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.h = call i32 @sqlite3_step(ptr noundef %i.g) #45
  switch i32 %i.h, label %bb.l [
    i32 100, label %bb.c
    i32 101, label %.loopexit
  ]

bb.c:                                             ; preds = %.backedge68
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.j = call ptr @sqlite3_column_text(ptr noundef %i.i, i32 noundef 0) #45 ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.l = call ptr @sqlite3_column_text(ptr noundef %i.k, i32 noundef 1) #45 ; 3 uses
  %i.m = icmp eq ptr %i.j, null
  %i.n = icmp eq ptr %i.l, null
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond, label %.backedge68.backedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call i32 @sqlite3_stricmp(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.722) #45
  %.not57 = icmp eq i32 %i.o, 0
  br i1 %.not57, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.p, ptr noundef nonnull @.str.1405, ptr noundef nonnull %i.j)
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.r = call i32 @fflush(ptr noundef %i.q)       ; 0 uses
  %i.s = call i32 @sqlite3_exec(ptr noundef %1, ptr noundef nonnull %i.l, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.b) #45 ; 0 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %.not58 = icmp eq ptr %i.t, null
  br i1 %.not58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.u, ptr noundef nonnull @.str.1406, ptr noundef nonnull %i.t, ptr noundef nonnull %i.l)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.v) #45
  store ptr null, ptr %i.b, align 8, !tbaa !88
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void %3(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.j) #45, !callees !1302
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @sqlite3_str_appendall(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.1407) #45
  br label %.backedge68.backedge

bb.k:                                             ; preds = %bb.i
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !122
  %fwrite = call i64 @fwrite(ptr nonnull @.str.1407, i64 5, i64 1, ptr %i.x) ; 0 uses
  br label %.backedge68.backedge

.backedge68.backedge:                             ; preds = %bb.k, %bb.j, %bb.c
  br label %.backedge68, !llvm.loop !1300

bb.l:                                             ; preds = %.backedge68
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.z = call i32 @sqlite3_finalize(ptr noundef %i.y) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef nonnull %i.c) #45
  %i.aa = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1408, ptr noundef %2) #45 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.m, label %shell_check_oom.exit60

bb.m:                                             ; preds = %bb.l
  call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit60:                           ; preds = %bb.l
  %i.ac = load ptr, ptr %0, align 8, !tbaa !389
  %i.ad = call i32 @sqlite3_prepare_v2(ptr noundef %i.ac, ptr noundef nonnull %i.aa, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not54 = icmp eq i32 %i.ad, 0
  br i1 %.not54, label %.preheader, label %.loopexit.sink.split

.preheader:                                       ; preds = %shell_check_oom.exit60
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.af = call i32 @sqlite3_step(ptr noundef %i.ae) #45
  %i.ag = icmp eq i32 %i.af, 100
  br i1 %i.ag, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.backedge
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ai = call ptr @sqlite3_column_text(ptr noundef %i.ah, i32 noundef 0) #45 ; 4 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ak = call ptr @sqlite3_column_text(ptr noundef %i.aj, i32 noundef 1) #45 ; 3 uses
  %i.al = icmp eq ptr %i.ai, null
  %i.am = icmp eq ptr %i.ak, null
  %or.cond3 = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond3, label %.backedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.an = call i32 @sqlite3_stricmp(ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.722) #45
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.backedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ap, ptr noundef nonnull @.str.1405, ptr noundef nonnull %i.ai)
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.ar = call i32 @fflush(ptr noundef %i.aq)     ; 0 uses
  %i.as = call i32 @sqlite3_exec(ptr noundef %1, ptr noundef nonnull %i.ak, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.b) #45 ; 0 uses
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !88  ; 2 uses
  %.not55 = icmp eq ptr %i.at, null
  br i1 %.not55, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.au, ptr noundef nonnull @.str.1406, ptr noundef nonnull %i.at, ptr noundef nonnull %i.ak)
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.av) #45
  store ptr null, ptr %i.b, align 8, !tbaa !88
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not59, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void %3(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.ai) #45, !callees !1302
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aw = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not.i61 = icmp eq ptr %i.aw, null
  br i1 %.not.i61, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @sqlite3_str_appendall(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.1407) #45
  br label %.backedge

bb.u:                                             ; preds = %bb.s
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !122
  %fwrite65 = call i64 @fwrite(ptr nonnull @.str.1407, i64 5, i64 1, ptr %i.ax) ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.t, %.lr.ph, %bb.n
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.az = call i32 @sqlite3_step(ptr noundef %i.ay) #45
  %i.ba = icmp eq i32 %i.az, 100
  br i1 %i.ba, label %.lr.ph, label %.loopexit, !llvm.loop !1301

.loopexit.sink.split:                             ; preds = %shell_check_oom.exit60, %shell_check_oom.exit
  %.sink84 = phi ptr [ %i.c, %shell_check_oom.exit ], [ %i.aa, %shell_check_oom.exit60 ] ; 2 uses
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.bc = load ptr, ptr %0, align 8, !tbaa !389
  %i.bd = call i32 @sqlite3_extended_errcode(ptr noundef %i.bc) #45
  %i.be = load ptr, ptr %0, align 8, !tbaa !389
  %i.bf = call ptr @sqlite3_errmsg(ptr noundef %i.be) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.bb, ptr noundef nonnull @.str.1404, i32 noundef %i.bd, ptr noundef %i.bf, ptr noundef nonnull %.sink84)
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge68, %.backedge, %.loopexit.sink.split, %.preheader
  %.0 = phi ptr [ %.sink84, %.loopexit.sink.split ], [ %i.aa, %.backedge ], [ %i.aa, %.preheader ], [ %i.c, %.backedge68 ]
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bh = call i32 @sqlite3_finalize(ptr noundef %i.bg) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef nonnull %.0) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tryToCloneData(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 24 uses
  %i.b = alloca ptr, align 8                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !109
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %strlen30.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #46
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.d, i64 1073741823)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 200
  br label %strlen30.exit

strlen30.exit:                                    ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.g, %bb.b ], [ 200, %bb.a ] ; 2 uses
  %i.h = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1409, ptr noundef %2) #45 ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %shell_check_oom.exit

bb.c:                                             ; preds = %strlen30.exit
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %strlen30.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !389
  %i.k = call i32 @sqlite3_prepare_v2(ptr noundef %i.j, ptr noundef nonnull %i.h, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %shell_check_oom.exit
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.m = load ptr, ptr %0, align 8, !tbaa !389
  %i.n = call i32 @sqlite3_extended_errcode(ptr noundef %i.m) #45
  %i.o = load ptr, ptr %0, align 8, !tbaa !389
  %i.p = call ptr @sqlite3_errmsg(ptr noundef %i.o) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.l, ptr noundef nonnull @.str.1410, i32 noundef %i.n, ptr noundef %i.p, ptr noundef nonnull %i.h)
  br label %.loopexit

bb.e:                                             ; preds = %shell_check_oom.exit
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.r = call i32 @sqlite3_column_count(ptr noundef %i.q) #45 ; 9 uses
  %i.s = mul nsw i32 %i.r, 3
  %i.t = add nsw i32 %i.s, %.0.i
  %i.u = sext i32 %i.t to i64
  %i.v = call ptr @sqlite3_malloc64(i64 noundef %i.u) #45 ; 14 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %strlen30.exit79

bb.f:                                             ; preds = %bb.e
  call fastcc void @shell_out_of_memory()
  unreachable

strlen30.exit79:                                  ; preds = %bb.e
  %i.x = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %.0.i, ptr noundef nonnull %i.v, ptr noundef nonnull @.str.1411, ptr noundef %2) #45 ; 0 uses
  %i.y = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.v) #46
  %i.z = call i64 @llvm.umin.i64(i64 %i.y, i64 1073741823) ; 6 uses
  %i.aa = icmp sgt i32 %i.r, 1
  br i1 %i.aa, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %strlen30.exit79
  %i.ab = add nsw i32 %i.r, -1
  %i.ac = zext i32 %i.ab to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.r, 5
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check120 = icmp ult i32 %i.r, 17
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 4294967280              ; 5 uses
  %i.ae = shl nuw nsw i64 %n.vec, 1
  %i.af = add nuw nsw i64 %i.z, %i.ae             ; 2 uses
  %i.ag = trunc nuw i64 %n.vec to i32
  %i.ah = or disjoint i32 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl nuw i64 %index, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <8 x i16> splat (i16 16172), ptr %i.ak, align 1
  store <8 x i16> splat (i16 16172), ptr %i.al, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !687

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %i.ac, 4294967292           ; 4 uses
  %i.an = shl nuw nsw i64 %n.vec122, 1
  %i.ao = add nuw nsw i64 %i.z, %i.an             ; 2 uses
  %i.ap = trunc nuw i64 %n.vec122 to i32
  %i.aq = or disjoint i32 %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl nuw i64 %index123, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  store <4 x i16> splat (i16 16172), ptr %i.at, align 1
  %index.next124 = add nuw i64 %index123, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next124, %n.vec122
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1304

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %n.vec122, %i.ac
  br i1 %cmp.n125, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.z, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.06790.ph = phi i32 [ 1, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.06790 = phi i32 [ %i.aw, %.lr.ph ], [ %.06790.ph, %.lr.ph.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  store i16 16172, ptr %i.av, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aw = add nuw nsw i32 %.06790, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1305

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %strlen30.exit79
  %.068.lcssa.in = phi i64 [ %i.z, %strlen30.exit79 ], [ %i.ao, %vec.epilog.middle.block ], [ %i.af, %middle.block ], [ %indvars.iv.next, %.lr.ph ]
  %i.ax = and i64 %.068.lcssa.in, 4294967295
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ay, ptr noundef nonnull align 1 dereferenceable(3) @.str.1413, i64 3, i1 false)
  %i.az = call i32 @sqlite3_prepare_v2(ptr noundef %1, ptr noundef nonnull %i.v, i32 noundef -1, ptr noundef nonnull %i.b, ptr noundef null) #45
  %.not75 = icmp eq i32 %i.az, 0
  br i1 %.not75, label %.preheader82, label %bb.g

.preheader82:                                     ; preds = %._crit_edge
  %i.ba = icmp sgt i32 %i.r, 0                    ; 2 uses
  br label %bb.r

bb.g:                                             ; preds = %._crit_edge
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.bc = call i32 @sqlite3_extended_errcode(ptr noundef %1) #45
  %i.bd = call ptr @sqlite3_errmsg(ptr noundef %1) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.bb, ptr noundef nonnull @.str.1410, i32 noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull %i.v)
  br label %.loopexit

.preheader81.1:                                   ; preds = %shell_check_oom.exit80, %.preheader81.1.backedge
  %.1.1 = phi i32 [ %i.co, %.preheader81.1.backedge ], [ %.1, %shell_check_oom.exit80 ]
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bf = call i32 @sqlite3_step(ptr noundef %i.be) #45
  switch i32 %i.bf, label %bb.q [
    i32 100, label %.preheader.1
    i32 101, label %.loopexit
  ]

.preheader.1:                                     ; preds = %.preheader81.1
  br i1 %i.ba, label %.lr.ph92.1, label %._crit_edge93.1

.lr.ph92.1:                                       ; preds = %.preheader.1, %bb.m
  %.16991.1 = phi i32 [ %.pre-phi, %bb.m ], [ 0, %.preheader.1 ] ; 12 uses
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bh = call i32 @sqlite3_column_type(ptr noundef %i.bg, i32 noundef %.16991.1) #45
  switch i32 %i.bh, label %.lr.ph92.1._crit_edge [
    i32 5, label %bb.l
    i32 1, label %bb.k
    i32 2, label %bb.j
    i32 3, label %bb.i
    i32 4, label %bb.h
  ]

.lr.ph92.1._crit_edge:                            ; preds = %.lr.ph92.1
  %.pre = add nuw nsw i32 %.16991.1, 1
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph92.1
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.bj = add nuw nsw i32 %.16991.1, 1            ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bl = call ptr @sqlite3_column_blob(ptr noundef %i.bk, i32 noundef %.16991.1) #45
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bn = call i32 @sqlite3_column_bytes(ptr noundef %i.bm, i32 noundef %.16991.1) #45
  %i.bo = call i32 @sqlite3_bind_blob(ptr noundef %i.bi, i32 noundef %i.bj, ptr noundef %i.bl, i32 noundef %i.bn, ptr noundef null) #45 ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph92.1
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.bq = add nuw nsw i32 %.16991.1, 1            ; 2 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bs = call ptr @sqlite3_column_text(ptr noundef %i.br, i32 noundef %.16991.1) #45
  %i.bt = call i32 @sqlite3_bind_text(ptr noundef %i.bp, i32 noundef %i.bq, ptr noundef %i.bs, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph92.1
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.bv = add nuw nsw i32 %.16991.1, 1            ; 2 uses
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bx = call double @sqlite3_column_double(ptr noundef %i.bw, i32 noundef %.16991.1) #45
  %i.by = call i32 @sqlite3_bind_double(ptr noundef %i.bu, i32 noundef %i.bv, double noundef %i.bx) #45 ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph92.1
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ca = add nuw nsw i32 %.16991.1, 1            ; 2 uses
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.cc = call i64 @sqlite3_column_int64(ptr noundef %i.cb, i32 noundef %.16991.1) #45
  %i.cd = call i32 @sqlite3_bind_int64(ptr noundef %i.bz, i32 noundef %i.ca, i64 noundef %i.cc) #45 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph92.1
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.cf = add nuw nsw i32 %.16991.1, 1            ; 2 uses
  %i.cg = call i32 @sqlite3_bind_null(ptr noundef %i.ce, i32 noundef %i.cf) #45 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph92.1._crit_edge, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.pre-phi = phi i32 [ %.pre, %.lr.ph92.1._crit_edge ], [ %i.cf, %bb.l ], [ %i.ca, %bb.k ], [ %i.bv, %bb.j ], [ %i.bq, %bb.i ], [ %i.bj, %bb.h ] ; 2 uses
  %exitcond105.1.not = icmp eq i32 %.pre-phi, %i.r
  br i1 %exitcond105.1.not, label %._crit_edge93.1, label %.lr.ph92.1, !llvm.loop !1306

._crit_edge93.1:                                  ; preds = %bb.m, %.preheader.1
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ci = call i32 @sqlite3_step(ptr noundef %i.ch) #45
  switch i32 %i.ci, label %bb.n [
    i32 101, label %bb.o
    i32 100, label %bb.o
    i32 0, label %bb.o
  ]

bb.n:                                             ; preds = %._crit_edge93.1
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.ck = call i32 @sqlite3_extended_errcode(ptr noundef %1) #45
  %i.cl = call ptr @sqlite3_errmsg(ptr noundef %1) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.cj, ptr noundef nonnull @.str.1414, i32 noundef %i.ck, ptr noundef %i.cl)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge93.1, %._crit_edge93.1, %._crit_edge93.1
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.cn = call i32 @sqlite3_reset(ptr noundef %i.cm) #45 ; 0 uses
  %i.co = add nuw nsw i32 %.1.1, 1                ; 3 uses
  %i.cp = urem i32 %i.co, 10000
  %i.cq = udiv i32 %i.co, 10000
  %i.cr = icmp eq i32 %i.cp, 0
  br i1 %i.cr, label %bb.p, label %.preheader81.1.backedge

bb.p:                                             ; preds = %bb.o
  %i.cs = and i32 %i.cq, 3
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @.str.1416, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !52
  %i.cw = sext i8 %i.cv to i32
  %i.cx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1415, i32 noundef %i.cw) ; 0 uses
  %i.cy = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.cz = call i32 @fflush(ptr noundef %i.cy)     ; 0 uses
  br label %.preheader81.1.backedge

.preheader81.1.backedge:                          ; preds = %bb.p, %bb.o
  br label %.preheader81.1, !llvm.loop !1307

bb.q:                                             ; preds = %.preheader81.1
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.db = call i32 @sqlite3_finalize(ptr noundef %i.da) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef nonnull %i.fe) #45
  %i.dc = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1417, ptr noundef %2) #45 ; 4 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ac, label %shell_check_oom.exit80.1

shell_check_oom.exit80.1:                         ; preds = %bb.q
  %i.de = load ptr, ptr %0, align 8, !tbaa !389
  %i.df = call i32 @sqlite3_prepare_v2(ptr noundef %i.de, ptr noundef nonnull %i.dc, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not76.1 = icmp eq i32 %i.df, 0
  br i1 %.not76.1, label %.loopexit, label %bb.ad

bb.r:                                             ; preds = %.backedge, %.preheader82
  %.1 = phi i32 [ 0, %.preheader82 ], [ %i.eq, %.backedge ] ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.dh = call i32 @sqlite3_step(ptr noundef %i.dg) #45
  switch i32 %i.dh, label %bb.ab [
    i32 100, label %.preheader
    i32 101, label %.loopexit
  ]

.preheader:                                       ; preds = %bb.r
  br i1 %i.ba, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %.preheader, %bb.x
  %.16991 = phi i32 [ %.pre-phi109, %bb.x ], [ 0, %.preheader ] ; 12 uses
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.dj = call i32 @sqlite3_column_type(ptr noundef %i.di, i32 noundef %.16991) #45
  switch i32 %i.dj, label %.lr.ph92._crit_edge [
    i32 5, label %bb.s
    i32 1, label %bb.t
    i32 2, label %bb.u
    i32 3, label %bb.v
    i32 4, label %bb.w
  ]

.lr.ph92._crit_edge:                              ; preds = %.lr.ph92
  %.pre108 = add nuw nsw i32 %.16991, 1
  br label %bb.x

bb.s:                                             ; preds = %.lr.ph92
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.dl = add nuw nsw i32 %.16991, 1              ; 2 uses
  %i.dm = call i32 @sqlite3_bind_null(ptr noundef %i.dk, i32 noundef %i.dl) #45 ; 0 uses
  br label %bb.x

bb.t:                                             ; preds = %.lr.ph92
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.do = add nuw nsw i32 %.16991, 1              ; 2 uses
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.dq = call i64 @sqlite3_column_int64(ptr noundef %i.dp, i32 noundef %.16991) #45
  %i.dr = call i32 @sqlite3_bind_int64(ptr noundef %i.dn, i32 noundef %i.do, i64 noundef %i.dq) #45 ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %.lr.ph92
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.dt = add nuw nsw i32 %.16991, 1              ; 2 uses
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.dv = call double @sqlite3_column_double(ptr noundef %i.du, i32 noundef %.16991) #45
  %i.dw = call i32 @sqlite3_bind_double(ptr noundef %i.ds, i32 noundef %i.dt, double noundef %i.dv) #45 ; 0 uses
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph92
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.dy = add nuw nsw i32 %.16991, 1              ; 2 uses
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ea = call ptr @sqlite3_column_text(ptr noundef %i.dz, i32 noundef %.16991) #45
  %i.eb = call i32 @sqlite3_bind_text(ptr noundef %i.dx, i32 noundef %i.dy, ptr noundef %i.ea, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph92
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ed = add nuw nsw i32 %.16991, 1              ; 2 uses
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ef = call ptr @sqlite3_column_blob(ptr noundef %i.ee, i32 noundef %.16991) #45
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.eh = call i32 @sqlite3_column_bytes(ptr noundef %i.eg, i32 noundef %.16991) #45
  %i.ei = call i32 @sqlite3_bind_blob(ptr noundef %i.ec, i32 noundef %i.ed, ptr noundef %i.ef, i32 noundef %i.eh, ptr noundef null) #45 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph92._crit_edge, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.pre-phi109 = phi i32 [ %.pre108, %.lr.ph92._crit_edge ], [ %i.dl, %bb.s ], [ %i.do, %bb.t ], [ %i.dt, %bb.u ], [ %i.dy, %bb.v ], [ %i.ed, %bb.w ] ; 2 uses
  %exitcond105.not = icmp eq i32 %.pre-phi109, %i.r
  br i1 %exitcond105.not, label %._crit_edge93, label %.lr.ph92, !llvm.loop !1306

._crit_edge93:                                    ; preds = %bb.x, %.preheader
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ek = call i32 @sqlite3_step(ptr noundef %i.ej) #45
  switch i32 %i.ek, label %bb.y [
    i32 101, label %bb.z
    i32 100, label %bb.z
    i32 0, label %bb.z
  ]

bb.y:                                             ; preds = %._crit_edge93
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.em = call i32 @sqlite3_extended_errcode(ptr noundef %1) #45
  %i.en = call ptr @sqlite3_errmsg(ptr noundef %1) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.el, ptr noundef nonnull @.str.1414, i32 noundef %i.em, ptr noundef %i.en)
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge93, %._crit_edge93, %._crit_edge93, %bb.y
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ep = call i32 @sqlite3_reset(ptr noundef %i.eo) #45 ; 0 uses
  %i.eq = add nuw nsw i32 %.1, 1                  ; 3 uses
  %i.er = urem i32 %i.eq, 10000
  %i.es = udiv i32 %i.eq, 10000
  %i.et = icmp eq i32 %i.er, 0
  br i1 %i.et, label %bb.aa, label %.backedge

bb.aa:                                            ; preds = %bb.z
  %i.eu = and i32 %i.es, 3
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @.str.1416, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !52
  %i.ey = sext i8 %i.ex to i32
  %i.ez = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1415, i32 noundef %i.ey) ; 0 uses
  %i.fa = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.fb = call i32 @fflush(ptr noundef %i.fa)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.aa, %bb.z
  br label %bb.r, !llvm.loop !1307

bb.ab:                                            ; preds = %bb.r
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.fd = call i32 @sqlite3_finalize(ptr noundef %i.fc) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef nonnull %i.h) #45
  %i.fe = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1417, ptr noundef %2) #45 ; 5 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.ac, label %shell_check_oom.exit80

bb.ac:                                            ; preds = %bb.q, %bb.ab
  call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit80:                           ; preds = %bb.ab
  %i.fg = load ptr, ptr %0, align 8, !tbaa !389
  %i.fh = call i32 @sqlite3_prepare_v2(ptr noundef %i.fg, ptr noundef nonnull %i.fe, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not76 = icmp eq i32 %i.fh, 0
  br i1 %.not76, label %.preheader81.1, label %bb.ad

bb.ad:                                            ; preds = %shell_check_oom.exit80.1, %shell_check_oom.exit80
  %.lcssa102 = phi ptr [ %i.fe, %shell_check_oom.exit80 ], [ %i.dc, %shell_check_oom.exit80.1 ]
  %i.fi = load ptr, ptr @stderr, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fi, ptr noundef nonnull @.str.1418, ptr noundef %2)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %.preheader81.1, %shell_check_oom.exit80.1, %bb.ad, %bb.g, %bb.d
  %.172 = phi ptr [ %i.h, %bb.d ], [ %i.h, %bb.g ], [ %i.dc, %shell_check_oom.exit80.1 ], [ %.lcssa102, %bb.ad ], [ %i.fe, %.preheader81.1 ], [ %i.h, %bb.r ]
  %.070 = phi ptr [ null, %bb.d ], [ %i.v, %bb.g ], [ %i.v, %shell_check_oom.exit80.1 ], [ %i.v, %bb.ad ], [ %i.v, %.preheader81.1 ], [ %i.v, %bb.r ]
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.fk = call i32 @sqlite3_finalize(ptr noundef %i.fj) #45 ; 0 uses
  %i.fl = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.fm = call i32 @sqlite3_finalize(ptr noundef %i.fl) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef %.172) #45
  call void @sqlite3_free(ptr noundef %.070) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

declare i32 @sqlite3_extended_errcode(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_null(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_double(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @db_int(ptr noundef %0, ptr noundef %1, ...) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = call ptr @sqlite3_vmprintf(ptr noundef %1, ptr noundef nonnull %2) #45 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = call i32 @sqlite3_prepare_v2(ptr noundef %0, ptr noundef %i.b, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45 ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @sqlite3_step(ptr noundef nonnull %i.d) #45
  %i.f = icmp eq i32 %i.e, 100
  %.pre5 = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @sqlite3_column_int(ptr noundef %.pre5, i32 noundef 0) #45
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !109
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi ptr [ %.pre, %bb.c ], [ %.pre5, %bb.b ], [ null, %bb.a ]
  %.0 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.i = call i32 @sqlite3_finalize(ptr noundef %i.h) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @recoverSqlCb(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !351
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.b, ptr noundef nonnull @.str.440, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @shellPreparePrintf(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull initializes((0, 8)) %2, ptr noundef %3, ...) unnamed_addr #4 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  store ptr null, ptr %2, align 8, !tbaa !109
  %i.a = load i32, ptr %1, align 4, !tbaa !53
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.c = call ptr @sqlite3_vmprintf(ptr noundef %3, ptr noundef nonnull %4) #45 ; 3 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %1, align 4, !tbaa !53
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  store ptr null, ptr %2, align 8, !tbaa !109
  %i.e = load i32, ptr %1, align 4, !tbaa !53
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %shellPrepare.exit

bb.e:                                             ; preds = %bb.d
  %i.g = call i32 @sqlite3_prepare_v2(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef -1, ptr noundef nonnull %2, ptr noundef null) #45 ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %shellPrepare.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.i = call ptr @sqlite3_errmsg(ptr noundef %0) #45
  %i.j = call i32 @sqlite3_errcode(ptr noundef %0) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.h, ptr noundef nonnull @.str.1463, ptr noundef %i.i, i32 noundef %i.j)
  store i32 %i.g, ptr %1, align 4, !tbaa !53
  br label %shellPrepare.exit

shellPrepare.exit:                                ; preds = %bb.d, %bb.e, %bb.f
  call void @sqlite3_free(ptr noundef nonnull %i.c) #45
  br label %bb.g

bb.g:                                             ; preds = %shellPrepare.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dump_callback(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %4 = alloca %struct.ShellText, align 8          ; 15 uses
  %5 = alloca %struct.ShellText, align 8          ; 20 uses
  %6 = alloca %struct.Mode, align 8               ; 4 uses
  %i.b = icmp ne i32 %1, 3
  %i.c = icmp eq ptr %2, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.cl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !88     ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88   ; 4 uses
  %i.i = icmp eq ptr %i.d, null
  %i.j = icmp eq ptr %i.f, null
  %or.cond107 = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond107, label %bb.cl, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !344  ; 2 uses
  %i.m = and i32 %i.l, 256
  %.not = icmp eq i32 %i.m, 0                     ; 2 uses
  %i.n = and i32 %i.l, 512
  %i.o = icmp ne i32 %i.n, 0                      ; 2 uses
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(16) @.str.722) #46
  %i.q = icmp ne i32 %i.p, 0
  %or.cond3 = select i1 %i.q, i1 true, i1 %i.o
  br i1 %or.cond3, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !389
  %i.s = tail call i32 (ptr, ptr, ...) @db_int(ptr noundef %i.r, ptr noundef nonnull @.str.1470)
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %cli_puts.exit111

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !424
  %.not98 = icmp eq i32 %i.v, 0
  br i1 %.not98, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !351  ; 3 uses
  %i.y = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.aa = icmp eq ptr %i.x, %i.z
  %i.ab = load ptr, ptr @stderr, align 8
end_hunk_2
begin_hunk_3_@dump_callback:bb.a
  %i.aj = icmp eq ptr %i.ae, %i.ai
  %or.cond.i109 = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond.i109, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @sqlite3_str_appendall(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.1472) #45
  br label %cli_puts.exit111

bb.m:                                             ; preds = %bb.k, %bb.j
  %fwrite310 = tail call i64 @fwrite(ptr nonnull @.str.1472, i64 83, i64 1, ptr %i.ae) ; 0 uses
  br label %cli_puts.exit111

bb.n:                                             ; preds = %bb.c
  %i.ak = tail call i32 @sqlite3_strglob(ptr noundef nonnull @.str.1473, ptr noundef nonnull %i.d) #45
  %i.al = icmp ne i32 %i.ak, 0
  %or.cond5 = select i1 %i.al, i1 true, i1 %i.o
  br i1 %or.cond5, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not, label %bb.p, label %cli_puts.exit111

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !351 ; 3 uses
  %i.ao = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not.i112 = icmp eq ptr %i.ao, null
  br i1 %.not.i112, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.aq = icmp eq ptr %i.an, %i.ap
  %i.ar = load ptr, ptr @stderr, align 8
  %i.as = icmp eq ptr %i.an, %i.ar
  %or.cond.i113 = select i1 %i.aq, i1 true, i1 %i.as
  br i1 %or.cond.i113, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @sqlite3_str_appendall(ptr noundef nonnull %i.ao, ptr noundef nonnull @.str.990) #45
  br label %cli_puts.exit111

bb.s:                                             ; preds = %bb.q, %bb.p
  %fwrite311 = tail call i64 @fwrite(ptr nonnull @.str.990, i64 23, i64 1, ptr %i.an) ; 0 uses
  br label %cli_puts.exit111

bb.t:                                             ; preds = %bb.n
  %i.at = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(8) @.str.1174, i64 noundef 7) #46
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.cl, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not, label %bb.v, label %cli_puts.exit111

bb.v:                                             ; preds = %bb.u
  %i.av = icmp eq ptr %i.h, null
  %spec.store.select.i117 = select i1 %i.av, ptr @.str.48, ptr %i.h
  %i.aw = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i117, ptr noundef nonnull dereferenceable(21) @.str.1474, i64 noundef 20) #46
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !424
  %.not99 = icmp eq i32 %i.az, 0
  br i1 %.not99, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !351
  tail call fastcc void @cli_puts(ptr noundef nonnull @.str.1471, ptr noundef %i.bb)
  store i32 1, ptr %i.ay, align 4, !tbaa !424
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bc = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1475, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.h) #45 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.z, label %shell_check_oom.exit

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !351
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.bf, ptr noundef nonnull @.str.253, ptr noundef nonnull %i.bc)
  tail call void @sqlite3_free(ptr noundef nonnull %i.bc) #45
  br label %bb.cl

bb.aa:                                            ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !351
  tail call fastcc void @printSchemaLine(ptr noundef %i.bh, ptr noundef %i.h)
  br label %cli_puts.exit111

cli_puts.exit111:                                 ; preds = %bb.s, %bb.r, %bb.m, %bb.l, %bb.o, %bb.aa, %bb.u, %bb.d
  %i.bi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(6) @.str.1476) #46
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.ab, label %bb.cl

bb.ab:                                            ; preds = %cli_puts.exit111
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.bk = load i32, ptr %i.k, align 8, !tbaa !344
  %i.bl = and i32 %i.bk, 8                        ; 2 uses
  %i.bm = icmp ne i32 %i.bl, 0
  %.lobit.i = lshr exact i32 %i.bl, 3
  %i.bn = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1486, ptr noundef nonnull %i.d) #45 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.ac, label %shell_check_oom.exit.i

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit.i:                           ; preds = %bb.ab
  %i.bp = load ptr, ptr %0, align 8, !tbaa !389
  %i.bq = call i32 @sqlite3_prepare_v2(ptr noundef %i.bp, ptr noundef nonnull %i.bn, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  call void @sqlite3_free(ptr noundef nonnull %i.bn) #45
  %.not.i119 = icmp eq i32 %i.bq, 0
  br i1 %.not.i119, label %.preheader75.i, label %bb.av

.preheader75.i:                                   ; preds = %shell_check_oom.exit.i
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bs = call i32 @sqlite3_step(ptr noundef %i.br) #45
  %i.bt = icmp eq i32 %i.bs, 100
  br i1 %i.bt, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.preheader75.i
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bv = call i32 @sqlite3_finalize(ptr noundef %i.bu) #45 ; 0 uses
  br label %bb.av

.lr.ph.i:                                         ; preds = %.preheader75.i, %bb.aj
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aj ], [ 0, %.preheader75.i ] ; 4 uses
  %.05587.i = phi i32 [ %.1.i, %bb.aj ], [ 0, %.preheader75.i ]
  %.05686.i = phi i32 [ %.157.i, %bb.aj ], [ 0, %.preheader75.i ] ; 3 uses
  %.05885.i = phi i64 [ %.159.i, %bb.aj ], [ 0, %.preheader75.i ] ; 3 uses
  %.06183.i = phi ptr [ %.162.i, %bb.aj ], [ null, %.preheader75.i ] ; 2 uses
  %i.bw = add nsw i64 %.05885.i, -2
  %.not69.i = icmp sgt i64 %i.bw, %indvars.iv.i
  br i1 %.not69.i, label %shell_check_oom.exit71.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i
  %i.bx = shl nsw i64 %.05885.i, 1
  %i.by = add nuw nsw i64 %indvars.iv.i, 10
  %i.bz = add i64 %i.by, %i.bx                    ; 2 uses
  %i.ca = shl i64 %i.bz, 3
  %i.cb = call ptr @sqlite3_realloc64(ptr noundef %.06183.i, i64 noundef %i.ca) #45 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.ae, label %shell_check_oom.exit71.i

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit71.i:                         ; preds = %bb.ad, %.lr.ph.i
  %.162.i = phi ptr [ %.06183.i, %.lr.ph.i ], [ %i.cb, %bb.ad ] ; 20 uses
  %.159.i = phi i64 [ %.05885.i, %.lr.ph.i ], [ %i.bz, %bb.ad ]
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ce = call ptr @sqlite3_column_text(ptr noundef %i.cd, i32 noundef 1) #45
  %i.cf = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.ce) #45 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.162.i, i64 %indvars.iv.next.i
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !88
  %i.ch = icmp eq ptr %i.cf, null
  br i1 %i.ch, label %bb.af, label %shell_check_oom.exit72.i

bb.af:                                            ; preds = %shell_check_oom.exit71.i
  call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit72.i:                         ; preds = %shell_check_oom.exit71.i
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.cj = call i32 @sqlite3_column_int(ptr noundef %i.ci, i32 noundef 5) #45
  %.not70.i = icmp eq i32 %i.cj, 0
  br i1 %.not70.i, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %shell_check_oom.exit72.i
  %i.ck = add nsw i32 %.05686.i, 1
  %i.cl = icmp eq i32 %.05686.i, 0
  br i1 %i.cl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.cn = call ptr @sqlite3_column_text(ptr noundef %i.cm, i32 noundef 2) #45
  %i.co = call i32 @sqlite3_stricmp(ptr noundef %i.cn, ptr noundef nonnull @.str.1487) #45
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %shell_check_oom.exit72.i
  %.157.i = phi i32 [ %.05686.i, %shell_check_oom.exit72.i ], [ %i.ck, %bb.ai ], [ 1, %bb.ah ]
  %.1.i = phi i32 [ %.05587.i, %shell_check_oom.exit72.i ], [ 0, %bb.ai ], [ 1, %bb.ah ] ; 2 uses
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.cr = call i32 @sqlite3_step(ptr noundef %i.cq) #45
  %i.cs = icmp eq i32 %i.cr, 100
  br i1 %i.cs, label %.lr.ph.i, label %bb.ak, !llvm.loop !1308

bb.ak:                                            ; preds = %bb.aj
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.162.i, i64 %indvars.iv.next.i
  %i.cu = icmp ne i32 %.1.i, 0
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.cw = call i32 @sqlite3_finalize(ptr noundef %i.cv) #45 ; 0 uses
  store ptr null, ptr %.162.i, align 8, !tbaa !88
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !88
  %or.cond.i120 = select i1 %i.bm, i1 %i.cu, i1 false
  br i1 %or.cond.i120, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.cy = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1488, ptr noundef nonnull %i.d) #45 ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.am, label %shell_check_oom.exit73.i

bb.am:                                            ; preds = %bb.al
  call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit73.i:                         ; preds = %bb.al
  %i.da = load ptr, ptr %0, align 8, !tbaa !389
  %i.db = call i32 @sqlite3_prepare_v2(ptr noundef %i.da, ptr noundef nonnull %i.cy, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  call void @sqlite3_free(ptr noundef nonnull %i.cy) #45
  %.not66.i = icmp eq i32 %i.db, 0
  br i1 %.not66.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %shell_check_oom.exit73.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.162.i, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !88 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.dd, null
  br i1 %.not6.i.i, label %freeColumnList.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.an, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 1, %bb.an ]
  %i.de = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %i.dd, %bb.an ]
  call void @sqlite3_free(ptr noundef nonnull %i.de) #45
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.162.i, i64 %indvars.iv.next.i.i
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !88 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i, label %freeColumnList.exit.i, label %.lr.ph.i.i, !llvm.loop !1309

freeColumnList.exit.i:                            ; preds = %.lr.ph.i.i, %bb.an
  call void @sqlite3_free(ptr noundef nonnull %.162.i) #45
  br label %bb.av

bb.ao:                                            ; preds = %shell_check_oom.exit73.i
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.di = call i32 @sqlite3_step(ptr noundef %i.dh) #45
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.dk = call i32 @sqlite3_finalize(ptr noundef %i.dj) #45 ; 0 uses
  %i.dl = icmp eq i32 %i.di, 100
  %i.dm = zext i1 %i.dl to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ak
  %.054.i = phi i32 [ %i.dm, %bb.ao ], [ %.lobit.i, %bb.ak ]
  %.not67.i = icmp eq i32 %.054.i, 0
  br i1 %.not67.i, label %.loopexit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.ap
  %i.dn = add nuw i64 %indvars.iv.i, 2
  %wide.trip.count.i = and i64 %i.dn, 4294967295  ; 3 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ar
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next102.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader._crit_edge.i, label %bb.ar, !llvm.loop !1310

bb.ar:                                            ; preds = %bb.aq, %.preheader.preheader.i
  %indvars.iv101.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next102.i, %bb.aq ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.162.i, i64 %indvars.iv101.i
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !88
  %i.dq = call i32 @sqlite3_stricmp(ptr noundef nonnull @.str.1489, ptr noundef %i.dp) #45
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %.preheader.1.i, label %bb.aq

.preheader._crit_edge.i:                          ; preds = %bb.aq, %bb.at, %bb.au
  %.096.lcssa.wide.i = phi i64 [ 2, %bb.au ], [ 1, %bb.at ], [ 0, %bb.aq ]
  %i.ds = load ptr, ptr %0, align 8, !tbaa !389
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr @tableColumnList.azRowid, i64 %.096.lcssa.wide.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !88 ; 2 uses
  %i.dv = call i32 @sqlite3_table_column_metadata(ptr noundef %i.ds, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef %i.du, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #45
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %.preheader._crit_edge.i
  store ptr %i.du, ptr %.162.i, align 8, !tbaa !88
  br label %.loopexit

.preheader.1.i:                                   ; preds = %bb.ar, %bb.at
  %indvars.iv101.1.i = phi i64 [ %indvars.iv.next102.1.i, %bb.at ], [ 1, %bb.ar ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.162.i, i64 %indvars.iv101.1.i
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !88
  %i.dz = call i32 @sqlite3_stricmp(ptr noundef nonnull @.str.1490, ptr noundef %i.dy) #45
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %.preheader.2.i, label %bb.at

bb.at:                                            ; preds = %.preheader.1.i
  %indvars.iv.next102.1.i = add nuw nsw i64 %indvars.iv101.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next102.1.i, %wide.trip.count.i
  br i1 %exitcond.1.not.i, label %.preheader._crit_edge.i, label %.preheader.1.i, !llvm.loop !1310

.preheader.2.i:                                   ; preds = %.preheader.1.i, %bb.au
  %indvars.iv101.2.i = phi i64 [ %indvars.iv.next102.2.i, %bb.au ], [ 1, %.preheader.1.i ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.162.i, i64 %indvars.iv101.2.i
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !88
  %i.ed = call i32 @sqlite3_stricmp(ptr noundef nonnull @.str.1491, ptr noundef %i.ec) #45
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %.preheader.2.i
  %indvars.iv.next102.2.i = add nuw nsw i64 %indvars.iv101.2.i, 1 ; 2 uses
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.next102.2.i, %wide.trip.count.i
  br i1 %exitcond.2.not.i, label %.preheader._crit_edge.i, label %.preheader.2.i, !llvm.loop !1310

bb.av:                                            ; preds = %freeColumnList.exit.i, %._crit_edge.thread.i, %shell_check_oom.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %.sink.split

.loopexit:                                        ; preds = %.preheader.2.i, %.preheader._crit_edge.i, %bb.as, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ef = tail call ptr @__ctype_b_loc() #47      ; 4 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !132 ; 2 uses
  %i.eh = load i8, ptr %i.d, align 1, !tbaa !52   ; 4 uses
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !98
  %i.el = and i16 %i.ek, 1024
  %.not.i121 = icmp ne i16 %i.el, 0
  %.not15.i = icmp eq i8 %i.eh, 95
  %or.cond.i122 = or i1 %.not15.i, %.not.i121
  br i1 %or.cond.i122, label %.preheader.i, label %quoteChar.exit

.preheader.i:                                     ; preds = %.loopexit
  %.not1622.i = icmp eq i8 %i.eh, 0
  br i1 %.not1622.i, label %._crit_edge.i, label %.lr.ph.i123

.lr.ph.i123:                                      ; preds = %.preheader.i, %bb.aw
  %indvars.iv.i124 = phi i64 [ %indvars.iv.next.i125, %bb.aw ], [ 0, %.preheader.i ]
  %i.em = phi i8 [ %i.es, %bb.aw ], [ %i.eh, %.preheader.i ] ; 2 uses
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !98
  %i.eq = and i16 %i.ep, 8
  %.not18.i = icmp ne i16 %i.eq, 0
  %.not19.i = icmp eq i8 %i.em, 95
  %or.cond20.i = or i1 %.not19.i, %.not18.i
  br i1 %or.cond20.i, label %bb.aw, label %quoteChar.exit

bb.aw:                                            ; preds = %.lr.ph.i123
  %indvars.iv.next.i125 = add nuw nsw i64 %indvars.iv.i124, 1 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next.i125
  %i.es = load i8, ptr %i.er, align 1, !tbaa !52  ; 2 uses
  %.not16.i = icmp eq i8 %i.es, 0
  br i1 %.not16.i, label %._crit_edge.loopexit.i, label %.lr.ph.i123, !llvm.loop !36

._crit_edge.loopexit.i:                           ; preds = %bb.aw
  %i.et = trunc nuw i64 %indvars.iv.next.i125 to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.et, %._crit_edge.loopexit.i ]
  %i.eu = call i32 @sqlite3_keyword_check(ptr noundef nonnull %i.d, i32 noundef %.0.lcssa.i) #45
  %.not17.i = icmp eq i32 %i.eu, 0
  %i.ev = select i1 %.not17.i, i8 0, i8 34
  br label %quoteChar.exit

quoteChar.exit:                                   ; preds = %.lr.ph.i123, %.loopexit, %._crit_edge.i
  %.012.i = phi i8 [ %i.ev, %._crit_edge.i ], [ 34, %.loopexit ], [ 34, %.lr.ph.i123 ]
  call fastcc void @appendText(ptr noundef nonnull %5, ptr noundef nonnull %i.d, i8 noundef signext %.012.i)
  %i.ew = load ptr, ptr %.162.i, align 8, !tbaa !88
  %.not100 = icmp eq ptr %i.ew, null
  br i1 %.not100, label %bb.bl, label %bb.ax

bb.ax:                                            ; preds = %quoteChar.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !437 ; 5 uses
  %i.ez = add nsw i64 %i.ey, 1                    ; 4 uses
  %i.fa = add i64 %i.ey, 2                        ; 3 uses
  %i.fb = load ptr, ptr %5, align 8, !tbaa !438   ; 3 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %.loopexit._crit_edge.i, label %bb.ay

.loopexit._crit_edge.i:                           ; preds = %bb.ax
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !669
  br label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fd = add nsw i64 %i.fa, %i.ey
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !669 ; 3 uses
  %.not58.i = icmp slt i64 %i.fd, %i.ff
  br i1 %.not58.i, label %appendText.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay, %.loopexit._crit_edge.i
  %i.fg = phi i64 [ %.pre.i, %.loopexit._crit_edge.i ], [ %i.ff, %bb.ay ]
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fi = shl nsw i64 %i.fg, 1
  %i.fj = add i64 %i.ey, 22
  %i.fk = add i64 %i.fj, %i.fi                    ; 3 uses
  store i64 %i.fk, ptr %i.fh, align 8, !tbaa !669
  %i.fl = call ptr @sqlite3_realloc64(ptr noundef %i.fb, i64 noundef %i.fk) #45 ; 3 uses
  store ptr %i.fl, ptr %5, align 8, !tbaa !438
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ba, label %appendText.exit

bb.ba:                                            ; preds = %bb.az
  call fastcc void @shell_out_of_memory()
  unreachable

appendText.exit:                                  ; preds = %bb.ay, %bb.az
  %i.fn = phi i64 [ %i.fk, %bb.az ], [ %i.ff, %bb.ay ] ; 2 uses
  %i.fo = phi ptr [ %i.fl, %bb.az ], [ %i.fb, %bb.ay ] ; 4 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 %i.ey
  store i8 40, ptr %i.fp, align 1
  %i.fq = getelementptr inbounds i8, ptr %i.fo, i64 %i.ez
  store i8 0, ptr %i.fq, align 1, !tbaa !52
  %i.fr = load ptr, ptr %.162.i, align 8, !tbaa !88 ; 3 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %.loopexit.i, label %strlen30.exit.i

strlen30.exit.i:                                  ; preds = %appendText.exit
  %i.ft = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fr) #46
  %i.fu = call i64 @llvm.umin.i64(i64 %i.ft, i64 1073741823) ; 2 uses
  %i.fv = add i64 %i.fa, %i.fu
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %strlen30.exit.i, %appendText.exit
  %.0.i77.i = phi i64 [ %i.fu, %strlen30.exit.i ], [ 0, %appendText.exit ] ; 2 uses
  %.2.i = phi i64 [ %i.fv, %strlen30.exit.i ], [ %i.fa, %appendText.exit ] ; 2 uses
  %i.fw = add nsw i64 %.2.i, %i.ez
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %.not58.i131 = icmp slt i64 %i.fw, %i.fn
  br i1 %.not58.i131, label %appendText.exit140, label %bb.bb

bb.bb:                                            ; preds = %.loopexit.i
  %i.fy = shl nsw i64 %i.fn, 1
  %i.fz = add i64 %.2.i, 20
  %i.ga = add i64 %i.fz, %i.fy                    ; 2 uses
  store i64 %i.ga, ptr %i.fx, align 8, !tbaa !669
  %i.gb = call ptr @sqlite3_realloc64(ptr noundef nonnull %i.fo, i64 noundef %i.ga) #45 ; 3 uses
  store ptr %i.gb, ptr %5, align 8, !tbaa !438
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.bc, label %appendText.exit140

bb.bc:                                            ; preds = %bb.bb
  call fastcc void @shell_out_of_memory()
  unreachable

appendText.exit140:                               ; preds = %.loopexit.i, %bb.bb
  %i.gd = phi ptr [ %i.gb, %bb.bb ], [ %i.fo, %.loopexit.i ]
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %i.ez
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ge, ptr readonly align 1 %i.fr, i64 %.0.i77.i, i1 false)
  %i.gf = add nsw i64 %i.ez, %.0.i77.i            ; 4 uses
  store i64 %i.gf, ptr %i.ex, align 8, !tbaa !437
  %i.gg = load ptr, ptr %5, align 8, !tbaa !438   ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.gf
  store i8 0, ptr %i.gh, align 1, !tbaa !52
  %i.gi = getelementptr inbounds nuw i8, ptr %.162.i, i64 8 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !88
  %.not101323 = icmp eq ptr %i.gj, null
  br i1 %.not101323, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %appendText.exit140
  %i.gk = add nsw i64 %i.gf, 1
  br label %bb.bi

.lr.ph:                                           ; preds = %appendText.exit140, %quoteChar.exit173
  %indvars.iv = phi i64 [ %indvars.iv.next, %quoteChar.exit173 ], [ 1, %appendText.exit140 ]
  %i.gl = phi ptr [ %i.ht, %quoteChar.exit173 ], [ %i.gi, %appendText.exit140 ]
  %i.gm = load i64, ptr %i.ex, align 8, !tbaa !437 ; 4 uses
  %i.gn = add nsw i64 %i.gm, 1                    ; 2 uses
  %i.go = load ptr, ptr %5, align 8, !tbaa !438   ; 3 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %.loopexit._crit_edge.i151, label %bb.bd

.loopexit._crit_edge.i151:                        ; preds = %.lr.ph
  %.pre.i153 = load i64, ptr %i.fx, align 8, !tbaa !669
  br label %bb.be

bb.bd:                                            ; preds = %.lr.ph
  %reass.add = shl i64 %i.gm, 1
  %i.gq = add i64 %reass.add, 2
  %i.gr = load i64, ptr %i.fx, align 8, !tbaa !669 ; 2 uses
  %.not58.i145 = icmp slt i64 %i.gq, %i.gr
  br i1 %.not58.i145, label %appendText.exit154, label %bb.be

bb.be:                                            ; preds = %bb.bd, %.loopexit._crit_edge.i151
  %i.gs = phi i64 [ %.pre.i153, %.loopexit._crit_edge.i151 ], [ %i.gr, %bb.bd ]
  %i.gt = shl nsw i64 %i.gs, 1
  %i.gu = add i64 %i.gm, 22
  %i.gv = add i64 %i.gu, %i.gt                    ; 2 uses
  store i64 %i.gv, ptr %i.fx, align 8, !tbaa !669
  %i.gw = call ptr @sqlite3_realloc64(ptr noundef %i.go, i64 noundef %i.gv) #45 ; 3 uses
  store ptr %i.gw, ptr %5, align 8, !tbaa !438
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.bf, label %appendText.exit154

bb.bf:                                            ; preds = %bb.be
  call fastcc void @shell_out_of_memory()
  unreachable

appendText.exit154:                               ; preds = %bb.bd, %bb.be
  %i.gy = phi ptr [ %i.gw, %bb.be ], [ %i.go, %bb.bd ] ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 %i.gm
  store i8 44, ptr %i.gz, align 1
  store i64 %i.gn, ptr %i.ex, align 8, !tbaa !437
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 %i.gn
  store i8 0, ptr %i.ha, align 1, !tbaa !52
  %i.hb = load ptr, ptr %i.gl, align 8, !tbaa !88 ; 5 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %quoteChar.exit173, label %bb.bg

bb.bg:                                            ; preds = %appendText.exit154
  %i.hd = load ptr, ptr %i.ef, align 8, !tbaa !132 ; 2 uses
  %i.he = load i8, ptr %i.hb, align 1, !tbaa !52  ; 4 uses
  %i.hf = zext i8 %i.he to i64
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %i.hf
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !98
  %i.hi = and i16 %i.hh, 1024
  %.not.i155 = icmp ne i16 %i.hi, 0
  %.not15.i156 = icmp eq i8 %i.he, 95
  %or.cond.i157 = or i1 %.not15.i156, %.not.i155
  br i1 %or.cond.i157, label %.preheader.i160, label %quoteChar.exit173

.preheader.i160:                                  ; preds = %bb.bg
  %.not1622.i161 = icmp eq i8 %i.he, 0
  br i1 %.not1622.i161, label %._crit_edge.i170, label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %.preheader.i160, %bb.bh
  %indvars.iv.i163 = phi i64 [ %indvars.iv.next.i167, %bb.bh ], [ 0, %.preheader.i160 ]
  %i.hj = phi i8 [ %i.hp, %bb.bh ], [ %i.he, %.preheader.i160 ] ; 2 uses
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !98
  %i.hn = and i16 %i.hm, 8
  %.not18.i164 = icmp ne i16 %i.hn, 0
  %.not19.i165 = icmp eq i8 %i.hj, 95
  %or.cond20.i166 = or i1 %.not19.i165, %.not18.i164
  br i1 %or.cond20.i166, label %bb.bh, label %quoteChar.exit173

bb.bh:                                            ; preds = %.lr.ph.i162
  %indvars.iv.next.i167 = add nuw nsw i64 %indvars.iv.i163, 1 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hb, i64 %indvars.iv.next.i167
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !52  ; 2 uses
  %.not16.i168 = icmp eq i8 %i.hp, 0
  br i1 %.not16.i168, label %._crit_edge.loopexit.i169, label %.lr.ph.i162, !llvm.loop !36

._crit_edge.loopexit.i169:                        ; preds = %bb.bh
  %i.hq = trunc nuw i64 %indvars.iv.next.i167 to i32
  br label %._crit_edge.i170

._crit_edge.i170:                                 ; preds = %._crit_edge.loopexit.i169, %.preheader.i160
  %.0.lcssa.i171 = phi i32 [ 0, %.preheader.i160 ], [ %i.hq, %._crit_edge.loopexit.i169 ]
  %i.hr = call i32 @sqlite3_keyword_check(ptr noundef nonnull %i.hb, i32 noundef %.0.lcssa.i171) #45
  %.not17.i172 = icmp eq i32 %i.hr, 0
  %i.hs = select i1 %.not17.i172, i8 0, i8 34
  br label %quoteChar.exit173

quoteChar.exit173:                                ; preds = %.lr.ph.i162, %appendText.exit154, %bb.bg, %._crit_edge.i170
  %.012.i159 = phi i8 [ 34, %appendText.exit154 ], [ 34, %bb.bg ], [ %i.hs, %._crit_edge.i170 ], [ 34, %.lr.ph.i162 ]
  call fastcc void @appendText(ptr noundef nonnull %5, ptr noundef %i.hb, i8 noundef signext %.012.i159)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.162.i, i64 %indvars.iv.next ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !88
  %.not101 = icmp eq ptr %i.hu, null
  br i1 %.not101, label %._crit_edge, label %.lr.ph, !llvm.loop !1311

._crit_edge:                                      ; preds = %quoteChar.exit173
  %.pre = load i64, ptr %i.ex, align 8, !tbaa !437 ; 3 uses
  %.pre340 = load ptr, ptr %5, align 8, !tbaa !438 ; 2 uses
  %i.hv = add nsw i64 %.pre, 1                    ; 2 uses
  %i.hw = icmp eq ptr %.pre340, null
  br i1 %i.hw, label %.loopexit._crit_edge.i184, label %bb.bi

.loopexit._crit_edge.i184:                        ; preds = %._crit_edge
  %.pre.i186 = load i64, ptr %i.fx, align 8, !tbaa !669
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.hx = phi i64 [ %i.gk, %._crit_edge.thread ], [ %i.hv, %._crit_edge ] ; 2 uses
  %i.hy = phi i64 [ %i.gf, %._crit_edge.thread ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.hz = phi ptr [ %i.gg, %._crit_edge.thread ], [ %.pre340, %._crit_edge ] ; 2 uses
  %reass.add312 = shl i64 %i.hy, 1
  %i.ia = add i64 %reass.add312, 2
  %i.ib = load i64, ptr %i.fx, align 8, !tbaa !669 ; 2 uses
  %.not58.i178 = icmp slt i64 %i.ia, %i.ib
  br i1 %.not58.i178, label %appendText.exit187, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.loopexit._crit_edge.i184
  %i.ic = phi i64 [ %i.hv, %.loopexit._crit_edge.i184 ], [ %i.hx, %bb.bi ]
  %i.id = phi i64 [ %.pre, %.loopexit._crit_edge.i184 ], [ %i.hy, %bb.bi ] ; 2 uses
  %i.ie = phi ptr [ null, %.loopexit._crit_edge.i184 ], [ %i.hz, %bb.bi ]
  %i.if = phi i64 [ %.pre.i186, %.loopexit._crit_edge.i184 ], [ %i.ib, %bb.bi ]
  %i.ig = shl nsw i64 %i.if, 1
  %i.ih = add i64 %i.id, 22
  %i.ii = add i64 %i.ih, %i.ig                    ; 2 uses
  store i64 %i.ii, ptr %i.fx, align 8, !tbaa !669
  %i.ij = call ptr @sqlite3_realloc64(ptr noundef %i.ie, i64 noundef %i.ii) #45 ; 3 uses
  store ptr %i.ij, ptr %5, align 8, !tbaa !438
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %bb.bk, label %appendText.exit187

bb.bk:                                            ; preds = %bb.bj
  call fastcc void @shell_out_of_memory()
  unreachable

appendText.exit187:                               ; preds = %bb.bi, %bb.bj
  %i.il = phi i64 [ %i.ic, %bb.bj ], [ %i.hx, %bb.bi ] ; 2 uses
  %i.im = phi i64 [ %i.id, %bb.bj ], [ %i.hy, %bb.bi ]
  %i.in = phi ptr [ %i.ij, %bb.bj ], [ %i.hz, %bb.bi ]
  %i.io = getelementptr inbounds i8, ptr %i.in, i64 %i.im
  store i8 41, ptr %i.io, align 1
  store i64 %i.il, ptr %i.ex, align 8, !tbaa !437
  %i.ip = load ptr, ptr %5, align 8, !tbaa !438
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 %i.il
  store i8 0, ptr %i.iq, align 1, !tbaa !52
  br label %bb.bl

bb.bl:                                            ; preds = %appendText.exit187, %quoteChar.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store i64 28, ptr %i.is, align 8, !tbaa !669
  %i.it = call ptr @sqlite3_realloc64(ptr noundef null, i64 noundef 28) #45 ; 6 uses
  store ptr %i.it, ptr %4, align 8, !tbaa !438
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.bm, label %appendText.exit201

bb.bm:                                            ; preds = %bb.bl
  call fastcc void @shell_out_of_memory()
  unreachable

appendText.exit201:                               ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.it, ptr noundef nonnull align 1 dereferenceable(7) @.str.1477, i64 7, i1 false)
  store i64 7, ptr %i.ir, align 8, !tbaa !437
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 7
  store i8 0, ptr %i.iv, align 1, !tbaa !52
  %i.iw = load ptr, ptr %.162.i, align 8, !tbaa !88 ; 3 uses
  %.not102 = icmp eq ptr %i.iw, null
  br i1 %.not102, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %appendText.exit201
  %i.ix = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.iw) #46 ; 2 uses
  %i.iy = call i64 @llvm.umin.i64(i64 %i.ix, i64 1073741823) ; 5 uses
  %i.iz = icmp ult i64 %i.ix, 13
  br i1 %i.iz, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ja = add nuw nsw i64 %i.iy, 84               ; 3 uses
  store i64 %i.ja, ptr %i.is, align 8, !tbaa !669
  %i.jb = call ptr @sqlite3_realloc64(ptr noundef nonnull %i.it, i64 noundef %i.ja) #45 ; 3 uses
  store ptr %i.jb, ptr %4, align 8, !tbaa !438
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call fastcc void @shell_out_of_memory()
  unreachable

bb.bq:                                            ; preds = %bb.bo, %bb.bn
  %i.jd = phi i64 [ %i.ja, %bb.bo ], [ 28, %bb.bn ] ; 2 uses
  %i.je = phi ptr [ %i.jb, %bb.bo ], [ %i.it, %bb.bn ] ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jf, ptr nonnull readonly align 1 %i.iw, i64 %i.iy, i1 false)
  %i.jg = add nuw nsw i64 %i.iy, 7                ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jg
  store i8 0, ptr %i.jh, align 1, !tbaa !52
  %i.ji = add nuw nsw i64 %i.iy, 8                ; 2 uses
  %reass.add313 = shl nuw nsw i64 %i.jg, 1
  %i.jj = add nuw nsw i64 %reass.add313, 2
  %.not58.i222 = icmp samesign ult i64 %i.jj, %i.jd
  br i1 %.not58.i222, label %appendText.exit231, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jk = shl nuw nsw i64 %i.jd, 1
  %i.jl = add nuw nsw i64 %i.iy, 29
  %i.jm = add nuw nsw i64 %i.jl, %i.jk            ; 2 uses
  store i64 %i.jm, ptr %i.is, align 8, !tbaa !669
  %i.jn = call ptr @sqlite3_realloc64(ptr noundef nonnull %i.je, i64 noundef %i.jm) #45 ; 3 uses
  store ptr %i.jn, ptr %4, align 8, !tbaa !438
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %bb.bs, label %appendText.exit231

bb.bs:                                            ; preds = %bb.br
  call fastcc void @shell_out_of_memory()
  unreachable

appendText.exit231:                               ; preds = %bb.bq, %bb.br
  %i.jp = phi ptr [ %i.jn, %bb.br ], [ %i.je, %bb.bq ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jg
  store i8 44, ptr %i.jq, align 1
  store i64 %i.ji, ptr %i.ir, align 8, !tbaa !437
  %i.jr = load ptr, ptr %4, align 8, !tbaa !438
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.ji
  store i8 0, ptr %i.js, align 1, !tbaa !52
  br label %bb.bt

bb.bt:                                            ; preds = %appendText.exit231, %appendText.exit201
  %i.jt = getelementptr inbounds nuw i8, ptr %.162.i, i64 8 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !88 ; 2 uses
  %.not103325 = icmp eq ptr %i.ju, null
  br i1 %.not103325, label %freeColumnList.exit, label %.lr.ph328

.lr.ph328:                                        ; preds = %bb.bt, %bb.bz
  %indvars.iv337 = phi i64 [ %indvars.iv.next338, %bb.bz ], [ 1, %bb.bt ]
  %i.jv = phi ptr [ %.pre341, %bb.bz ], [ %i.ju, %bb.bt ] ; 4 uses
  %i.jw = load ptr, ptr %i.ef, align 8, !tbaa !132 ; 2 uses
  %i.jx = load i8, ptr %i.jv, align 1, !tbaa !52  ; 4 uses
  %i.jy = zext i8 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %i.jy
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !98
  %i.kb = and i16 %i.ka, 1024
  %.not.i232 = icmp ne i16 %i.kb, 0
  %.not15.i233 = icmp eq i8 %i.jx, 95
  %or.cond.i234 = or i1 %.not15.i233, %.not.i232
  br i1 %or.cond.i234, label %.preheader.i237, label %quoteChar.exit250

.preheader.i237:                                  ; preds = %.lr.ph328
  %.not1622.i238 = icmp eq i8 %i.jx, 0
  br i1 %.not1622.i238, label %._crit_edge.i247, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %.preheader.i237, %bb.bu
  %indvars.iv.i240 = phi i64 [ %indvars.iv.next.i244, %bb.bu ], [ 0, %.preheader.i237 ]
  %i.kc = phi i8 [ %i.ki, %bb.bu ], [ %i.jx, %.preheader.i237 ] ; 2 uses
  %i.kd = zext i8 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %i.kd
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !98
  %i.kg = and i16 %i.kf, 8
  %.not18.i241 = icmp ne i16 %i.kg, 0
  %.not19.i242 = icmp eq i8 %i.kc, 95
  %or.cond20.i243 = or i1 %.not19.i242, %.not18.i241
  br i1 %or.cond20.i243, label %bb.bu, label %quoteChar.exit250

bb.bu:                                            ; preds = %.lr.ph.i239
  %indvars.iv.next.i244 = add nuw nsw i64 %indvars.iv.i240, 1 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jv, i64 %indvars.iv.next.i244
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !52  ; 2 uses
  %.not16.i245 = icmp eq i8 %i.ki, 0
  br i1 %.not16.i245, label %._crit_edge.loopexit.i246, label %.lr.ph.i239, !llvm.loop !36

._crit_edge.loopexit.i246:                        ; preds = %bb.bu
  %i.kj = trunc nuw i64 %indvars.iv.next.i244 to i32
  br label %._crit_edge.i247

._crit_edge.i247:                                 ; preds = %._crit_edge.loopexit.i246, %.preheader.i237
  %.0.lcssa.i248 = phi i32 [ 0, %.preheader.i237 ], [ %i.kj, %._crit_edge.loopexit.i246 ]
  %i.kk = call i32 @sqlite3_keyword_check(ptr noundef nonnull %i.jv, i32 noundef %.0.lcssa.i248) #45
  %.not17.i249 = icmp eq i32 %i.kk, 0
  %i.kl = select i1 %.not17.i249, i8 0, i8 34
  br label %quoteChar.exit250

quoteChar.exit250:                                ; preds = %.lr.ph.i239, %.lr.ph328, %._crit_edge.i247
  %.012.i236 = phi i8 [ %i.kl, %._crit_edge.i247 ], [ 34, %.lr.ph328 ], [ 34, %.lr.ph.i239 ]
  call fastcc void @appendText(ptr noundef nonnull %4, ptr noundef nonnull %i.jv, i8 noundef signext %.012.i236)
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.162.i, i64 %indvars.iv.next338 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !88
  %.not105 = icmp eq ptr %i.kn, null
  br i1 %.not105, label %._crit_edge329, label %bb.bv

bb.bv:                                            ; preds = %quoteChar.exit250
  %i.ko = load i64, ptr %i.ir, align 8, !tbaa !437 ; 4 uses
  %i.kp = add nsw i64 %i.ko, 1                    ; 2 uses
  %i.kq = load ptr, ptr %4, align 8, !tbaa !438   ; 3 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %.loopexit._crit_edge.i261, label %bb.bw

.loopexit._crit_edge.i261:                        ; preds = %bb.bv
  %.pre.i263 = load i64, ptr %i.is, align 8, !tbaa !669
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %reass.add314 = shl i64 %i.ko, 1
  %i.ks = add i64 %reass.add314, 2
  %i.kt = load i64, ptr %i.is, align 8, !tbaa !669 ; 2 uses
  %.not58.i255 = icmp slt i64 %i.ks, %i.kt
  br i1 %.not58.i255, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.loopexit._crit_edge.i261
  %i.ku = phi i64 [ %.pre.i263, %.loopexit._crit_edge.i261 ], [ %i.kt, %bb.bw ]
  %i.kv = shl nsw i64 %i.ku, 1
  %i.kw = add i64 %i.ko, 22
  %i.kx = add i64 %i.kw, %i.kv                    ; 2 uses
  store i64 %i.kx, ptr %i.is, align 8, !tbaa !669
  %i.ky = call ptr @sqlite3_realloc64(ptr noundef %i.kq, i64 noundef %i.kx) #45 ; 3 uses
  store ptr %i.ky, ptr %4, align 8, !tbaa !438
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call fastcc void @shell_out_of_memory()
  unreachable

bb.bz:                                            ; preds = %bb.bx, %bb.bw
  %i.la = phi ptr [ %i.ky, %bb.bx ], [ %i.kq, %bb.bw ] ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 %i.ko
  store i8 44, ptr %i.lb, align 1
  store i64 %i.kp, ptr %i.ir, align 8, !tbaa !437
  %i.lc = getelementptr inbounds i8, ptr %i.la, i64 %i.kp
  store i8 0, ptr %i.lc, align 1, !tbaa !52
  %.pre341 = load ptr, ptr %i.km, align 8, !tbaa !88 ; 2 uses
  %.not103 = icmp eq ptr %.pre341, null
  br i1 %.not103, label %._crit_edge329, label %.lr.ph328, !llvm.loop !1312

._crit_edge329:                                   ; preds = %quoteChar.exit250, %bb.bz
  %.pre342 = load ptr, ptr %i.jt, align 8, !tbaa !88 ; 2 uses
  %.not6.i = icmp eq ptr %.pre342, null
  br i1 %.not6.i, label %freeColumnList.exit, label %.lr.ph.i265

.lr.ph.i265:                                      ; preds = %._crit_edge329, %.lr.ph.i265
  %indvars.iv.i266 = phi i64 [ %indvars.iv.next.i267, %.lr.ph.i265 ], [ 1, %._crit_edge329 ]
  %i.ld = phi ptr [ %i.lf, %.lr.ph.i265 ], [ %.pre342, %._crit_edge329 ]
  call void @sqlite3_free(ptr noundef nonnull %i.ld) #45
  %indvars.iv.next.i267 = add nuw nsw i64 %indvars.iv.i266, 1 ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.162.i, i64 %indvars.iv.next.i267
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !88 ; 2 uses
  %.not.i268 = icmp eq ptr %i.lf, null
  br i1 %.not.i268, label %freeColumnList.exit, label %.lr.ph.i265, !llvm.loop !1309

freeColumnList.exit:                              ; preds = %.lr.ph.i265, %bb.bt, %._crit_edge329
  call void @sqlite3_free(ptr noundef nonnull %.162.i) #45
  %i.lg = load i64, ptr %i.ir, align 8, !tbaa !437 ; 4 uses
  %i.lh = add nsw i64 %i.lg, 6                    ; 2 uses
  %i.li = load ptr, ptr %4, align 8, !tbaa !438   ; 3 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %.loopexit._crit_edge.i280, label %bb.ca

.loopexit._crit_edge.i280:                        ; preds = %freeColumnList.exit
  %.pre.i282 = load i64, ptr %i.is, align 8, !tbaa !669
  br label %bb.cb

bb.ca:                                            ; preds = %freeColumnList.exit
  %reass.add315 = shl i64 %i.lg, 1
  %i.lk = add i64 %reass.add315, 7
  %i.ll = load i64, ptr %i.is, align 8, !tbaa !669 ; 2 uses
  %.not58.i274 = icmp slt i64 %i.lk, %i.ll
  br i1 %.not58.i274, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.loopexit._crit_edge.i280
  %i.lm = phi i64 [ %.pre.i282, %.loopexit._crit_edge.i280 ], [ %i.ll, %bb.ca ]
  %i.ln = shl nsw i64 %i.lm, 1
  %i.lo = add i64 %i.lg, 27
  %i.lp = add i64 %i.lo, %i.ln                    ; 2 uses
  store i64 %i.lp, ptr %i.is, align 8, !tbaa !669
  %i.lq = call ptr @sqlite3_realloc64(ptr noundef %i.li, i64 noundef %i.lp) #45 ; 3 uses
  store ptr %i.lq, ptr %4, align 8, !tbaa !438
  %i.lr = icmp eq ptr %i.lq, null
  br i1 %i.lr, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call fastcc void @shell_out_of_memory()
  unreachable

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %i.ls = phi ptr [ %i.lq, %bb.cb ], [ %i.li, %bb.ca ] ; 2 uses
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 %i.lg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.lt, ptr noundef nonnull align 1 dereferenceable(6) @.str.1478, i64 6, i1 false)
  store i64 %i.lh, ptr %i.ir, align 8, !tbaa !437
  %i.lu = getelementptr inbounds i8, ptr %i.ls, i64 %i.lh
  store i8 0, ptr %i.lu, align 1, !tbaa !52
  %i.lv = load ptr, ptr %i.ef, align 8, !tbaa !132 ; 2 uses
  %i.lw = load i8, ptr %i.d, align 1, !tbaa !52   ; 4 uses
  %i.lx = zext i8 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.lv, i64 %i.lx
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !98
  %i.ma = and i16 %i.lz, 1024
  %.not.i284 = icmp ne i16 %i.ma, 0
  %.not15.i285 = icmp eq i8 %i.lw, 95
  %or.cond.i286 = or i1 %.not15.i285, %.not.i284
  br i1 %or.cond.i286, label %.preheader.i289, label %quoteChar.exit302

.preheader.i289:                                  ; preds = %bb.cd
  %.not1622.i290 = icmp eq i8 %i.lw, 0
  br i1 %.not1622.i290, label %._crit_edge.i299, label %.lr.ph.i291

.lr.ph.i291:                                      ; preds = %.preheader.i289, %bb.ce
  %indvars.iv.i292 = phi i64 [ %indvars.iv.next.i296, %bb.ce ], [ 0, %.preheader.i289 ]
  %i.mb = phi i8 [ %i.mh, %bb.ce ], [ %i.lw, %.preheader.i289 ] ; 2 uses
  %i.mc = zext i8 %i.mb to i64
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.lv, i64 %i.mc
  %i.me = load i16, ptr %i.md, align 2, !tbaa !98
  %i.mf = and i16 %i.me, 8
  %.not18.i293 = icmp ne i16 %i.mf, 0
  %.not19.i294 = icmp eq i8 %i.mb, 95
  %or.cond20.i295 = or i1 %.not19.i294, %.not18.i293
  br i1 %or.cond20.i295, label %bb.ce, label %quoteChar.exit302

bb.ce:                                            ; preds = %.lr.ph.i291
  %indvars.iv.next.i296 = add nuw nsw i64 %indvars.iv.i292, 1 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next.i296
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !52  ; 2 uses
  %.not16.i297 = icmp eq i8 %i.mh, 0
  br i1 %.not16.i297, label %._crit_edge.loopexit.i298, label %.lr.ph.i291, !llvm.loop !36

._crit_edge.loopexit.i298:                        ; preds = %bb.ce
  %i.mi = trunc nuw i64 %indvars.iv.next.i296 to i32
  br label %._crit_edge.i299

._crit_edge.i299:                                 ; preds = %._crit_edge.loopexit.i298, %.preheader.i289
  %.0.lcssa.i300 = phi i32 [ 0, %.preheader.i289 ], [ %i.mi, %._crit_edge.loopexit.i298 ]
  %i.mj = call i32 @sqlite3_keyword_check(ptr noundef nonnull %i.d, i32 noundef %.0.lcssa.i300) #45
  %.not17.i301 = icmp eq i32 %i.mj, 0
  %i.mk = select i1 %.not17.i301, i8 0, i8 34
  br label %quoteChar.exit302

quoteChar.exit302:                                ; preds = %.lr.ph.i291, %bb.cd, %._crit_edge.i299
  %.012.i288 = phi i8 [ %i.mk, %._crit_edge.i299 ], [ 34, %bb.cd ], [ 34, %.lr.ph.i291 ]
  call fastcc void @appendText(ptr noundef nonnull %4, ptr noundef nonnull %i.d, i8 noundef signext %.012.i288)
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 4312 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(136) %i.ml, i64 136, i1 false), !tbaa.struct !385
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 4392
  store ptr %i.d, ptr %i.mm, align 8, !tbaa !428
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 4318
  store i8 7, ptr %i.mn, align 2, !tbaa !426
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 4323
  store i8 2, ptr %i.mo, align 1, !tbaa !413
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 4325
  store i8 2, ptr %i.mp, align 1, !tbaa !688
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 4326
  store i8 1, ptr %i.mq, align 2, !tbaa !367
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 4348
  store i32 0, ptr %i.mr, align 4, !tbaa !414
  %i.ms = load ptr, ptr %4, align 8, !tbaa !438   ; 3 uses
  %i.mt = call fastcc i32 @shell_exec(ptr noundef nonnull %0, ptr noundef %i.ms, ptr noundef null) ; 2 uses
  %i.mu = and i32 %i.mt, 255
  %i.mv = icmp eq i32 %i.mu, 11
  br i1 %i.mv, label %bb.cf, label %bb.cj

bb.cf:                                            ; preds = %quoteChar.exit302
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !351 ; 3 uses
  %i.my = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not.i303 = icmp eq ptr %i.my, null
  br i1 %.not.i303, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mz = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.na = icmp eq ptr %i.mx, %i.mz
  %i.nb = load ptr, ptr @stderr, align 8
  %i.nc = icmp eq ptr %i.mx, %i.nb
  %or.cond.i304 = select i1 %i.na, i1 true, i1 %i.nc
  br i1 %or.cond.i304, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void @sqlite3_str_appendall(ptr noundef nonnull %i.my, ptr noundef nonnull @.str.1466) #45
  br label %cli_puts.exit306

bb.ci:                                            ; preds = %bb.cg, %bb.cf
  %fwrite316 = call i64 @fwrite(ptr nonnull @.str.1466, i64 34, i64 1, ptr %i.mx) ; 0 uses
  br label %cli_puts.exit306

cli_puts.exit306:                                 ; preds = %bb.ch, %bb.ci
  %i.nd = load ptr, ptr %0, align 8, !tbaa !389
  call fastcc void @toggleSelectOrder(ptr noundef %i.nd)
  %i.ne = call fastcc i32 @shell_exec(ptr noundef nonnull %0, ptr noundef %i.ms, ptr noundef null) ; 0 uses
  %i.nf = load ptr, ptr %0, align 8, !tbaa !389
  call fastcc void @toggleSelectOrder(ptr noundef %i.nf)
  br label %bb.cj

bb.cj:                                            ; preds = %cli_puts.exit306, %quoteChar.exit302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ml, ptr noundef nonnull align 8 dereferenceable(136) %6, i64 136, i1 false), !tbaa.struct !385
  %i.ng = load ptr, ptr %5, align 8, !tbaa !438
  call void @sqlite3_free(ptr noundef %i.ng) #45
  call void @sqlite3_free(ptr noundef %i.ms) #45
  %.not104 = icmp eq i32 %i.mt, 0
  br i1 %.not104, label %bb.ck, label %.sink.split

.sink.split:                                      ; preds = %bb.cj, %bb.av
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !425
  %i.nj = add nsw i32 %i.ni, 1
  store i32 %i.nj, ptr %i.nh, align 8, !tbaa !425
  br label %bb.ck

bb.ck:                                            ; preds = %.sink.split, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %cli_puts.exit111, %bb.t, %bb.b, %bb.a, %shell_check_oom.exit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @printSchemaLine(ptr nofree noundef captures(address) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.1479) #46
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.1480) #46
  %.not34 = icmp eq ptr %i.c, null
  br i1 %.not34, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1482, ptr noundef nonnull %1, ptr noundef nonnull @.str.48) #45 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %shell_check_oom.exit

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %bb.d
  %i.f = tail call i32 @sqlite3_complete(ptr noundef nonnull %i.d) #45
  %.not35 = icmp eq i32 %i.f, 0
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %shell_check_oom.exit.2, %shell_check_oom.exit.1, %shell_check_oom.exit
  %.lcssa8 = phi ptr [ %i.d, %shell_check_oom.exit ], [ %i.j, %shell_check_oom.exit.1 ], [ %i.m, %shell_check_oom.exit.2 ] ; 4 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa8) #46
  %i.h = getelementptr i8, ptr %.lcssa8, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  store i8 0, ptr %i.i, align 1, !tbaa !52
  br label %.loopexit

bb.g:                                             ; preds = %shell_check_oom.exit
  tail call void @sqlite3_free(ptr noundef nonnull %i.d) #45
  %i.j = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1482, ptr noundef nonnull %1, ptr noundef nonnull @.str.1481) #45 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %shell_check_oom.exit.1

shell_check_oom.exit.1:                           ; preds = %bb.g
  %i.l = tail call i32 @sqlite3_complete(ptr noundef nonnull %i.j) #45
  %.not35.1 = icmp eq i32 %i.l, 0
  br i1 %.not35.1, label %bb.h, label %bb.f

bb.h:                                             ; preds = %shell_check_oom.exit.1
  tail call void @sqlite3_free(ptr noundef nonnull %i.j) #45
  %i.m = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1482, ptr noundef nonnull %1, ptr noundef nonnull @.str.125) #45 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %shell_check_oom.exit.2

shell_check_oom.exit.2:                           ; preds = %bb.h
  %i.o = tail call i32 @sqlite3_complete(ptr noundef nonnull %i.m) #45
  %.not35.2 = icmp eq i32 %i.o, 0
  br i1 %.not35.2, label %.loopexit.loopexit, label %bb.f

.loopexit.loopexit:                               ; preds = %shell_check_oom.exit.2
  tail call void @sqlite3_free(ptr noundef nonnull %i.m) #45
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f, %bb.c
  %.331 = phi ptr [ null, %bb.c ], [ %.lcssa8, %bb.f ], [ null, %.loopexit.loopexit ]
  %.3 = phi ptr [ %1, %bb.c ], [ %.lcssa8, %bb.f ], [ %1, %.loopexit.loopexit ] ; 3 uses
  %i.p = tail call i32 @sqlite3_strglob(ptr noundef nonnull @.str.1483, ptr noundef nonnull %.3) #45
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.r = getelementptr inbounds nuw i8, ptr %.3, i64 13
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %0, ptr noundef nonnull @.str.1484, ptr noundef nonnull %i.r, ptr noundef nonnull @.str.243)
  br label %bb.k

bb.j:                                             ; preds = %.loopexit
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %0, ptr noundef nonnull @.str.1485, ptr noundef nonnull %.3, ptr noundef nonnull @.str.243)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @sqlite3_free(ptr noundef %.331) #45
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @toggleSelectOrder(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [100 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  %i.c = call i32 @sqlite3_prepare_v2(ptr noundef %0, ptr noundef nonnull @.str.1492, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45 ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.e = call i32 @sqlite3_step(ptr noundef %i.d) #45
  %i.f = icmp eq i32 %i.e, 100
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.h = call i32 @sqlite3_column_int(ptr noundef %i.g, i32 noundef 0) #45
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.j, %bb.b ], [ 1, %bb.a ]
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.l = call i32 @sqlite3_finalize(ptr noundef %i.k) #45 ; 0 uses
  %i.m = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.1493, i32 noundef %.0) #45 ; 0 uses
  %i.n = call i32 @sqlite3_exec(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

declare i32 @sqlite3_complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @shell_error_context(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @sqlite3_error_offset(ptr noundef nonnull %1) #45 ; 5 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #46
  %i.f = trunc i64 %i.e to i32
  %.not = icmp slt i32 %i.c, %i.f
  br i1 %.not, label %.preheader49, label %bb.d

.preheader49:                                     ; preds = %bb.c
  %i.g = icmp samesign ugt i32 %i.c, 50
  br i1 %i.g, label %.preheader48, label %._crit_edge

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.48) #45
  br label %bb.k

.preheader48:                                     ; preds = %.preheader49, %.preheader48
  %.039.pn = phi ptr [ %.140, %.preheader48 ], [ %0, %.preheader49 ]
  %.137.in = phi i32 [ %.137, %.preheader48 ], [ %i.c, %.preheader49 ] ; 2 uses
  %.140 = getelementptr inbounds nuw i8, ptr %.039.pn, i64 1 ; 3 uses
  %.137 = add nsw i32 %.137.in, -1                ; 2 uses
  %i.i = load i8, ptr %.140, align 1, !tbaa !52
  %i.j = icmp slt i8 %i.i, -64
  %i.k = icmp sgt i32 %.137.in, 51
  %or.cond63 = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond63, label %.preheader48, label %._crit_edge, !llvm.loop !1313

._crit_edge:                                      ; preds = %.preheader48, %.preheader49
  %.039.lcssa = phi ptr [ %0, %.preheader49 ], [ %.140, %.preheader48 ] ; 9 uses
  %.036.lcssa = phi i32 [ %i.c, %.preheader49 ], [ %.137, %.preheader48 ] ; 3 uses
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.039.lcssa) #46 ; 2 uses
  %i.m = icmp ugt i64 %i.l, 78
  br i1 %i.m, label %.preheader, label %.critedge

.preheader:                                       ; preds = %._crit_edge, %bb.e
  %.03553 = phi i64 [ %i.ak, %bb.e ], [ 78, %._crit_edge ] ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 %.03553
  %i.o = load i8, ptr %i.n, align 1, !tbaa !52
  %i.p = icmp slt i8 %i.o, -64
  br i1 %i.p, label %.preheader.1, label %.critedge

.preheader.1:                                     ; preds = %.preheader
  %i.q = add nsw i64 %.03553, -1                  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !52
  %i.t = icmp slt i8 %i.s, -64
  br i1 %i.t, label %.preheader.2, label %.critedge

.preheader.2:                                     ; preds = %.preheader.1
  %i.u = add nsw i64 %.03553, -2                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !52
  %i.x = icmp slt i8 %i.w, -64
  br i1 %i.x, label %.preheader.3, label %.critedge

.preheader.3:                                     ; preds = %.preheader.2
  %i.y = add nsw i64 %.03553, -3                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !52
  %i.ab = icmp slt i8 %i.aa, -64
  br i1 %i.ab, label %.preheader.4, label %.critedge

.preheader.4:                                     ; preds = %.preheader.3
  %i.ac = add nsw i64 %.03553, -4                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !52
  %i.af = icmp slt i8 %i.ae, -64
  br i1 %i.af, label %.preheader.5, label %.critedge

.preheader.5:                                     ; preds = %.preheader.4
  %i.ag = add nsw i64 %.03553, -5                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !52
  %i.aj = icmp slt i8 %i.ai, -64
  br i1 %i.aj, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.preheader.5
  %i.ak = add nsw i64 %.03553, -6                 ; 2 uses
  %.not45.5 = icmp eq i64 %i.ak, 0
  br i1 %.not45.5, label %.critedge, label %.preheader, !llvm.loop !1314

.critedge:                                        ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %bb.e, %._crit_edge
  %.1 = phi i64 [ %i.l, %._crit_edge ], [ 0, %bb.e ], [ %.03553, %.preheader ], [ %i.q, %.preheader.1 ], [ %i.ag, %.preheader.5 ], [ %i.u, %.preheader.2 ], [ %i.ac, %.preheader.4 ], [ %i.y, %.preheader.3 ]
  %i.al = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.349, i64 noundef %.1, ptr noundef nonnull %.039.lcssa) #45 ; 6 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.f, label %shell_check_oom.exit.preheader

shell_check_oom.exit.preheader:                   ; preds = %.critedge
  %i.an = load i8, ptr %i.al, align 1, !tbaa !52
  %.not4654 = icmp eq i8 %i.an, 0
  br i1 %.not4654, label %shell_check_oom.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %shell_check_oom.exit.preheader
  %i.ao = tail call ptr @__ctype_b_loc() #47      ; 2 uses
  %.pre57 = load ptr, ptr %i.ao, align 8, !tbaa !132
  br label %bb.g

bb.f:                                             ; preds = %.critedge
  tail call fastcc void @shell_out_of_memory()
  unreachable

bb.g:                                             ; preds = %.lr.ph, %shell_check_oom.exit
  %i.ap = phi ptr [ %.pre57, %.lr.ph ], [ %i.ax, %shell_check_oom.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %shell_check_oom.exit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 %indvars.iv
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !52
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !98
  %i.av = and i16 %i.au, 8192
  %.not47 = icmp eq i16 %i.av, 0
  br i1 %.not47, label %shell_check_oom.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv
  store i8 32, ptr %i.aw, align 1, !tbaa !52
  %.pre = load ptr, ptr %i.ao, align 8, !tbaa !132
  br label %shell_check_oom.exit

shell_check_oom.exit:                             ; preds = %bb.g, %bb.h
  %i.ax = phi ptr [ %i.ap, %bb.g ], [ %.pre, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !52
  %.not46 = icmp eq i8 %i.az, 0
  br i1 %.not46, label %shell_check_oom.exit._crit_edge, label %bb.g, !llvm.loop !1315

shell_check_oom.exit._crit_edge:                  ; preds = %shell_check_oom.exit, %shell_check_oom.exit.preheader
  %i.ba = icmp slt i32 %.036.lcssa, 25
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %shell_check_oom.exit._crit_edge
  %i.bb = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1498, ptr noundef nonnull %i.al, i32 noundef %.036.lcssa, ptr noundef nonnull @.str.48) #45
  br label %bb.k

bb.j:                                             ; preds = %shell_check_oom.exit._crit_edge
  %i.bc = add nsw i32 %.036.lcssa, -14
  %i.bd = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1499, ptr noundef nonnull %i.al, i32 noundef %i.bc, ptr noundef nonnull @.str.48) #45
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.d
  %.038 = phi ptr [ %i.h, %bb.d ], [ %i.bb, %bb.i ], [ %i.bd, %bb.j ]
  ret ptr %.038
}

declare i32 @sqlite3_error_offset(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal noundef i32 @shellWriteQR(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !351
  %i.c = trunc i64 %2 to i32
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.b, ptr noundef nonnull @.str.349, i32 noundef %i.c, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @save_err_msg(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 1, 0) %2, ptr noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_str_new(ptr noundef null) #45 ; 4 uses
  %i.b = tail call ptr @sqlite3_errmsg(ptr noundef %0) #45
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.a, ptr noundef nonnull @.str.1521, ptr noundef %1, ptr noundef %i.b) #45
  %i.c = icmp sgt i32 %2, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.a, ptr noundef nonnull @.str.1522, i32 noundef %2) #45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call fastcc ptr @shell_error_context(ptr noundef %3, ptr noundef %0) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @sqlite3_str_appendall(ptr noundef %i.a, ptr noundef nonnull %i.d) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.d) #45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = tail call ptr @sqlite3_str_finish(ptr noundef %i.a) #45 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %shell_check_oom.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %bb.e
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @ascii_read_one_field(ptr nofree noundef captures(none) initializes((48, 56)) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i32, ptr %i.a, align 4, !tbaa !674
  %i.c = and i32 %i.b, 255                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !675
  %i.f = and i32 %i.e, 255                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store i64 0, ptr %i.g, align 8, !tbaa !684
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !680  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @fgetc(ptr noundef nonnull %i.i)
  br label %import_getc.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !682  ; 2 uses
  %.not9.i = icmp eq ptr %i.l, null
  br i1 %.not9.i, label %import_getc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !689  ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52
  %.not10.i = icmp eq i8 %i.p, 0
  br i1 %.not10.i, label %import_getc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i64 %i.n, 1
  store i64 %i.q, ptr %i.m, align 8, !tbaa !689
  %i.r = load i8, ptr %i.o, align 1, !tbaa !52
  %i.s = sext i8 %i.r to i32
  br label %import_getc.exit

import_getc.exit:                                 ; preds = %bb.b, %bb.e
  %.0.i = phi i32 [ %i.j, %bb.b ], [ %i.s, %bb.e ] ; 5 uses
  %i.t = icmp eq i32 %.0.i, -1
  br i1 %i.t, label %import_getc.exit.thread, label %bb.f

bb.f:                                             ; preds = %import_getc.exit
  %i.u = load volatile i32, ptr @seenInterrupt, align 4, !tbaa !53
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.preheader, label %import_getc.exit.thread

.preheader:                                       ; preds = %bb.f
  %.not2741 = icmp eq i32 %.0.i, %i.c
  %.not2843 = icmp eq i32 %.0.i, %i.f             ; 2 uses
  %or.cond3044 = select i1 %.not2741, i1 true, i1 %.not2843
  br i1 %or.cond3044, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.g

import_getc.exit.thread:                          ; preds = %bb.c, %bb.d, %bb.f, %import_getc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -1, ptr %i.z, align 8, !tbaa !686
  br label %bb.p

bb.g:                                             ; preds = %.lr.ph, %import_getc.exit36
  %.045 = phi i32 [ %.0.i, %.lr.ph ], [ %.0.i33, %import_getc.exit36 ]
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !684 ; 2 uses
  %i.ab = add nsw i64 %i.aa, 1                    ; 2 uses
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !685 ; 2 uses
  %.not.i31 = icmp slt i64 %i.ab, %i.ac
  br i1 %.not.i31, label %.shell_check_oom.exit_crit_edge.i, label %bb.h

.shell_check_oom.exit_crit_edge.i:                ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !683
  br label %import_append_char.exit

bb.h:                                             ; preds = %bb.g
  %reass.add.i = shl i64 %i.ac, 1
  %i.ad = add i64 %reass.add.i, 100               ; 2 uses
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !685
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !683
  %i.af = tail call ptr @sqlite3_realloc64(ptr noundef %i.ae, i64 noundef %i.ad) #45 ; 3 uses
  store ptr %i.af, ptr %i.w, align 8, !tbaa !683
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %.shell_check_oom.exit_crit_edge10.i

.shell_check_oom.exit_crit_edge10.i:              ; preds = %bb.h
  %.pre11.i = load i64, ptr %i.g, align 8, !tbaa !684 ; 2 uses
  %.pre12.i = add nsw i64 %.pre11.i, 1
  br label %import_append_char.exit

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @shell_out_of_memory()
  unreachable

import_append_char.exit:                          ; preds = %.shell_check_oom.exit_crit_edge.i, %.shell_check_oom.exit_crit_edge10.i
  %.pre-phi.i = phi i64 [ %.pre12.i, %.shell_check_oom.exit_crit_edge10.i ], [ %i.ab, %.shell_check_oom.exit_crit_edge.i ]
  %i.ah = phi i64 [ %.pre11.i, %.shell_check_oom.exit_crit_edge10.i ], [ %i.aa, %.shell_check_oom.exit_crit_edge.i ]
  %i.ai = phi ptr [ %i.af, %.shell_check_oom.exit_crit_edge10.i ], [ %.pre.i, %.shell_check_oom.exit_crit_edge.i ]
  %i.aj = trunc i32 %.045 to i8
  store i64 %.pre-phi.i, ptr %i.g, align 8, !tbaa !684
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.ah
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !52
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !680 ; 2 uses
  %.not.i32 = icmp eq ptr %i.al, null
  br i1 %.not.i32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %import_append_char.exit
  %i.am = tail call i32 @fgetc(ptr noundef nonnull %i.al)
  br label %import_getc.exit36

bb.k:                                             ; preds = %import_append_char.exit
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !682 ; 2 uses
  %.not9.i34 = icmp eq ptr %i.an, null
  br i1 %.not9.i34, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !689 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !52
  %.not10.i35 = icmp eq i8 %i.aq, 0
  br i1 %.not10.i35, label %.critedge.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = add nsw i64 %i.ao, 1
  store i64 %i.ar, ptr %i.y, align 8, !tbaa !689
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !52
  %i.at = sext i8 %i.as to i32
  br label %import_getc.exit36

import_getc.exit36:                               ; preds = %bb.j, %bb.m
  %.0.i33 = phi i32 [ %i.am, %bb.j ], [ %i.at, %bb.m ] ; 5 uses
  %.not26 = icmp eq i32 %.0.i33, -1
  %.not27 = icmp eq i32 %.0.i33, %i.c
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  %.not28 = icmp eq i32 %.0.i33, %i.f             ; 2 uses
  %or.cond30 = select i1 %or.cond, i1 true, i1 %.not28
  br i1 %or.cond30, label %.critedge, label %bb.g, !llvm.loop !1316

.critedge:                                        ; preds = %import_getc.exit36, %.preheader
  %.0.lcssa = phi i32 [ %.0.i, %.preheader ], [ %.0.i33, %import_getc.exit36 ] ; 2 uses
  %.not28.lcssa = phi i1 [ %.not2843, %.preheader ], [ %.not28, %import_getc.exit36 ]
  br i1 %.not28.lcssa, label %bb.n, label %.critedge.thread

bb.n:                                             ; preds = %.critedge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !679
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !679
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.l, %bb.k, %bb.n, %.critedge
  %.0.lcssa67 = phi i32 [ %.0.lcssa, %.critedge ], [ %.0.lcssa, %bb.n ], [ -1, %bb.k ], [ -1, %bb.l ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.0.lcssa67, ptr %i.ax, align 8, !tbaa !686
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !683 ; 2 uses
  %.not29 = icmp eq ptr %i.az, null
  br i1 %.not29, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge.thread
  %i.ba = load i64, ptr %i.g, align 8, !tbaa !684
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  store i8 0, ptr %i.bb, align 1, !tbaa !52
  %.pre = load ptr, ptr %i.ay, align 8, !tbaa !683
  br label %bb.p

bb.p:                                             ; preds = %.critedge.thread, %bb.o, %import_getc.exit.thread
  %.023 = phi ptr [ null, %import_getc.exit.thread ], [ %.pre, %bb.o ], [ null, %.critedge.thread ]
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal ptr @csv_read_one_field(ptr nofree noundef captures(none) initializes((48, 56)) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.bn, %bb.a
  %i.k = load i32, ptr %i.a, align 4, !tbaa !674  ; 2 uses
  %i.l = load i32, ptr %i.b, align 8, !tbaa !675  ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !684
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !680  ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.n = tail call i32 @fgetc(ptr noundef nonnull %i.m)
  br label %import_getc.exit

bb.c:                                             ; preds = %tailrecurse
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !682  ; 2 uses
  %.not9.i = icmp eq ptr %i.o, null
  br i1 %.not9.i, label %import_getc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.f, align 8, !tbaa !689  ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !52
  %.not10.i = icmp eq i8 %i.r, 0
  br i1 %.not10.i, label %import_getc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i64 %i.p, 1
  store i64 %i.s, ptr %i.f, align 8, !tbaa !689
  %i.t = load i8, ptr %i.q, align 1, !tbaa !52
  %i.u = sext i8 %i.t to i32
  br label %import_getc.exit

import_getc.exit:                                 ; preds = %bb.b, %bb.e
  %.0.i = phi i32 [ %i.n, %bb.b ], [ %i.u, %bb.e ] ; 5 uses
  %i.v = icmp eq i32 %.0.i, -1
  br i1 %i.v, label %import_getc.exit.thread, label %bb.f

bb.f:                                             ; preds = %import_getc.exit
  %i.w = load volatile i32, ptr @seenInterrupt, align 4, !tbaa !53
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.g, label %import_getc.exit.thread

import_getc.exit.thread:                          ; preds = %bb.c, %bb.d, %bb.f, %import_getc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -1, ptr %i.x, align 8, !tbaa !686
  br label %bb.bq

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i32 %.0.i, 34
  br i1 %i.y, label %bb.h, label %bb.ao

bb.h:                                             ; preds = %bb.g
  %i.z = and i32 %i.k, 255
  %i.aa = and i32 %i.l, 255                       ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 14 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !679
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !677
  %.fr = freeze i32 %i.ae
  %i.af = and i32 %.fr, 255                       ; 5 uses
  %i.ag = icmp ne i32 %i.af, 0                    ; 3 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.h
  %.0110.ph = phi i32 [ 0, %bb.h ], [ %.0110.ph.be, %.outer.backedge ] ; 9 uses
  %.0.ph = phi i32 [ 0, %bb.h ], [ %.0.ph.be, %.outer.backedge ]
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !680 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.outer.split.us, label %import_getc.exit137.peel

import_getc.exit137.peel:                         ; preds = %.outer
  %i.aj = tail call i32 @fgetc(ptr noundef nonnull %i.ah) ; 4 uses
  %i.ak = icmp eq i32 %i.aj, %i.aa                ; 2 uses
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %import_getc.exit137.peel
  %i.al = load i32, ptr %i.ab, align 8, !tbaa !679
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ab, align 8, !tbaa !679
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %import_getc.exit137.peel
  %i.an = icmp eq i32 %i.aj, %i.af
  %or.cond.peel = and i1 %i.ag, %i.an
  br i1 %or.cond.peel, label %..split.us.loopexit256_crit_edge, label %bb.k

..split.us.loopexit256_crit_edge:                 ; preds = %bb.j
  %.pre291.pre = load ptr, ptr %i.d, align 8, !tbaa !680
  br label %.split.us

bb.k:                                             ; preds = %bb.j
  %i.ao = icmp eq i32 %i.aj, 34
  %i.ap = icmp eq i32 %.0110.ph, 34               ; 2 uses
  %or.cond125.peel = and i1 %i.ap, %i.ao
  br i1 %or.cond125.peel, label %.outer.split, label %.loopexit

.outer.split.us:                                  ; preds = %.outer
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !682 ; 4 uses
  %.not9.i135.us = icmp eq ptr %i.aq, null
  br i1 %.not9.i135.us, label %.thread195, label %.outer.split.us.split

.outer.split.us.split:                            ; preds = %.outer.split.us
  %.promoted = load i64, ptr %i.f, align 8, !tbaa !689 ; 5 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %.promoted ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !52
  %.not10.i136.us.peel = icmp eq i8 %i.as, 0      ; 2 uses
  br i1 %i.ag, label %.outer.split.us.split.split.preheader, label %.outer.split.us.split.split.us.preheader

.outer.split.us.split.split.us.preheader:         ; preds = %.outer.split.us.split
  br i1 %.not10.i136.us.peel, label %.thread195, label %import_getc.exit137.us.us.peel

import_getc.exit137.us.us.peel:                   ; preds = %.outer.split.us.split.split.us.preheader
  %i.at = add nsw i64 %.promoted, 1               ; 2 uses
  store i64 %i.at, ptr %i.f, align 8, !tbaa !689
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !52  ; 2 uses
  %i.av = sext i8 %i.au to i32                    ; 2 uses
  %i.aw = icmp eq i32 %i.aa, %i.av                ; 2 uses
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %import_getc.exit137.us.us.peel
  %i.ax = load i32, ptr %i.ab, align 8, !tbaa !679
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.ab, align 8, !tbaa !679
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %import_getc.exit137.us.us.peel
  %i.az = icmp eq i8 %i.au, 34
  %i.ba = icmp eq i32 %.0110.ph, 34               ; 2 uses
  %or.cond125.us.us.peel = and i1 %i.ba, %i.az
  br i1 %or.cond125.us.us.peel, label %.outer.split.us.split.split.us, label %.loopexit

.outer.split.us.split.split.preheader:            ; preds = %.outer.split.us.split
  br i1 %.not10.i136.us.peel, label %.thread195, label %import_getc.exit137.us.peel

import_getc.exit137.us.peel:                      ; preds = %.outer.split.us.split.split.preheader
  %i.bb = add nsw i64 %.promoted, 1               ; 2 uses
  store i64 %i.bb, ptr %i.f, align 8, !tbaa !689
  %i.bc = load i8, ptr %i.ar, align 1, !tbaa !52  ; 2 uses
  %i.bd = sext i8 %i.bc to i32                    ; 3 uses
  %i.be = icmp eq i32 %i.aa, %i.bd                ; 2 uses
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %import_getc.exit137.us.peel
  %i.bf = load i32, ptr %i.ab, align 8, !tbaa !679
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !679
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %import_getc.exit137.us.peel
  %i.bh = icmp eq i32 %i.af, %i.bd
  br i1 %i.bh, label %.split.us.thread, label %bb.p

end_hunk_3
begin_hunk_4_@csv_read_one_field:bb.a
  store i64 %i.bm, ptr %i.f, align 8, !tbaa !689
  %i.bn = load i8, ptr %i.bk, align 1, !tbaa !52
  %i.bo = sext i8 %i.bn to i32                    ; 3 uses
  %i.bp = icmp eq i32 %i.aa, %i.bo
  br i1 %i.bp, label %bb.q, label %.thread346

bb.q:                                             ; preds = %import_getc.exit137.us.us
  %i.bq = load i32, ptr %i.ab, align 8, !tbaa !679
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.ab, align 8, !tbaa !679
  br label %.thread346

.outer.split.us.split.split:                      ; preds = %bb.p
  %i.bs = getelementptr inbounds i8, ptr %i.aq, i64 %i.bb ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !52
  %.not10.i136.us = icmp eq i8 %i.bt, 0
  br i1 %.not10.i136.us, label %.thread195, label %import_getc.exit137.us

import_getc.exit137.us:                           ; preds = %.outer.split.us.split.split
  %i.bu = add nsw i64 %.promoted, 2
  store i64 %i.bu, ptr %i.f, align 8, !tbaa !689
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !52
  %i.bw = sext i8 %i.bv to i32                    ; 3 uses
  %i.bx = icmp eq i32 %i.aa, %i.bw
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %import_getc.exit137.us
  %i.by = load i32, ptr %i.ab, align 8, !tbaa !679
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.ab, align 8, !tbaa !679
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %import_getc.exit137.us
  %i.ca = icmp eq i32 %i.af, %i.bw
  br i1 %i.ca, label %.split.us.thread, label %.thread346

.outer.split:                                     ; preds = %bb.k
  %.pre290 = load ptr, ptr %i.d, align 8, !tbaa !680 ; 2 uses
  %.not.i133 = icmp eq ptr %.pre290, null
  br i1 %.not.i133, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.outer.split
  %i.cb = tail call i32 @fgetc(ptr noundef nonnull %.pre290)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !680
  br label %import_getc.exit137

bb.u:                                             ; preds = %.outer.split
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !682 ; 2 uses
  %.not9.i135 = icmp eq ptr %i.cc, null
  br i1 %.not9.i135, label %.thread195, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = load i64, ptr %i.f, align 8, !tbaa !689 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.cd ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !52
  %.not10.i136 = icmp eq i8 %i.cf, 0
  br i1 %.not10.i136, label %.thread195, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = add nsw i64 %i.cd, 1
  store i64 %i.cg, ptr %i.f, align 8, !tbaa !689
  %i.ch = load i8, ptr %i.ce, align 1, !tbaa !52
  %i.ci = sext i8 %i.ch to i32
  br label %import_getc.exit137

.thread195:                                       ; preds = %bb.u, %bb.v, %.outer.split.us.split.split.us.preheader, %.outer.split.us.split.split.us, %.outer.split.us.split.split.preheader, %.outer.split.us.split.split, %.outer.split.us
  %.us-phi = phi i32 [ 0, %.outer.split.us.split.split ], [ %.0110.ph, %.outer.split.us ], [ 0, %.outer.split.us.split.split.us ], [ %.0110.ph, %.outer.split.us.split.split.preheader ], [ %.0110.ph, %.outer.split.us.split.split.us.preheader ], [ 0, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.cj = icmp eq i32 %.us-phi, 34
  br label %.loopexit

import_getc.exit137:                              ; preds = %bb.t, %bb.w
  %.pre291295 = phi ptr [ %.pre, %bb.t ], [ null, %bb.w ]
  %.0.i134 = phi i32 [ %i.cb, %bb.t ], [ %i.ci, %bb.w ] ; 3 uses
  %i.ck = icmp eq i32 %.0.i134, %i.aa
  br i1 %i.ck, label %bb.x, label %bb.y

bb.x:                                             ; preds = %import_getc.exit137
  %i.cl = load i32, ptr %i.ab, align 8, !tbaa !679
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ab, align 8, !tbaa !679
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %import_getc.exit137
  %i.cn = icmp eq i32 %.0.i134, %i.af
  %or.cond = and i1 %i.ag, %i.cn
  br i1 %or.cond, label %.split.us, label %.thread346

.split.us:                                        ; preds = %..split.us.loopexit256_crit_edge, %bb.y
  %i.co = phi ptr [ %.pre291.pre, %..split.us.loopexit256_crit_edge ], [ %.pre291295, %bb.y ] ; 2 uses
  %.not.i138 = icmp eq ptr %i.co, null
  br i1 %.not.i138, label %.split.us.thread, label %bb.z

bb.z:                                             ; preds = %.split.us
  %i.cp = tail call i32 @fgetc(ptr noundef nonnull %i.co)
  %i.cq = trunc i32 %i.cp to i8
  br label %import_getc.exit142

.split.us.thread:                                 ; preds = %bb.s, %bb.o, %.split.us
  %i.cr = load ptr, ptr %i.e, align 8, !tbaa !682 ; 2 uses
  %.not9.i140 = icmp eq ptr %i.cr, null
  br i1 %.not9.i140, label %import_getc.exit142, label %bb.aa

bb.aa:                                            ; preds = %.split.us.thread
  %i.cs = load i64, ptr %i.f, align 8, !tbaa !689 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !52
  %.not10.i141 = icmp eq i8 %i.cu, 0
  br i1 %.not10.i141, label %import_getc.exit142, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = add nsw i64 %i.cs, 1
  store i64 %i.cv, ptr %i.f, align 8, !tbaa !689
  %i.cw = load i8, ptr %i.ct, align 1, !tbaa !52
  br label %import_getc.exit142

import_getc.exit142:                              ; preds = %bb.z, %.split.us.thread, %bb.aa, %bb.ab
  %.0.i139 = phi i8 [ %i.cq, %bb.z ], [ %i.cw, %bb.ab ], [ -1, %bb.aa ], [ -1, %.split.us.thread ]
  %i.cx = load i64, ptr %i.c, align 8, !tbaa !684 ; 2 uses
  %i.cy = add nsw i64 %i.cx, 1                    ; 2 uses
  %i.cz = load i64, ptr %i.i, align 8, !tbaa !685 ; 2 uses
  %.not.i143 = icmp slt i64 %i.cy, %i.cz
  br i1 %.not.i143, label %.shell_check_oom.exit_crit_edge.i, label %bb.ac

.shell_check_oom.exit_crit_edge.i:                ; preds = %import_getc.exit142
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !683
  br label %import_append_char.exit

bb.ac:                                            ; preds = %import_getc.exit142
  %reass.add.i = shl i64 %i.cz, 1
  %i.da = add i64 %reass.add.i, 100               ; 2 uses
  store i64 %i.da, ptr %i.i, align 8, !tbaa !685
  %i.db = load ptr, ptr %i.j, align 8, !tbaa !683
  %i.dc = tail call ptr @sqlite3_realloc64(ptr noundef %i.db, i64 noundef %i.da) #45 ; 3 uses
  store ptr %i.dc, ptr %i.j, align 8, !tbaa !683
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ad, label %.shell_check_oom.exit_crit_edge10.i

.shell_check_oom.exit_crit_edge10.i:              ; preds = %bb.ac
  %.pre11.i = load i64, ptr %i.c, align 8, !tbaa !684 ; 2 uses
  %.pre12.i = add nsw i64 %.pre11.i, 1
  br label %import_append_char.exit

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @shell_out_of_memory()
  unreachable

import_append_char.exit:                          ; preds = %.shell_check_oom.exit_crit_edge.i, %.shell_check_oom.exit_crit_edge10.i
  %.pre-phi.i = phi i64 [ %.pre12.i, %.shell_check_oom.exit_crit_edge10.i ], [ %i.cy, %.shell_check_oom.exit_crit_edge.i ]
  %i.de = phi i64 [ %.pre11.i, %.shell_check_oom.exit_crit_edge10.i ], [ %i.cx, %.shell_check_oom.exit_crit_edge.i ]
  %i.df = phi ptr [ %i.dc, %.shell_check_oom.exit_crit_edge10.i ], [ %.pre.i, %.shell_check_oom.exit_crit_edge.i ]
  store i64 %.pre-phi.i, ptr %i.c, align 8, !tbaa !684
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.de
  store i8 %.0.i139, ptr %i.dg, align 1, !tbaa !52
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %import_append_char.exit, %import_append_char.exit153
  %.0110.ph.be = phi i32 [ %.0.i134191194198334338345350353, %import_append_char.exit153 ], [ 0, %import_append_char.exit ]
  %.0.ph.be = phi i32 [ %.0110206333339344351352, %import_append_char.exit153 ], [ 0, %import_append_char.exit ]
  br label %.outer

.thread346:                                       ; preds = %bb.y, %import_getc.exit137.us.us, %bb.q, %bb.s
  %.0.i134191194198.ph = phi i32 [ %.0.i134, %bb.y ], [ %i.bo, %import_getc.exit137.us.us ], [ %i.bo, %bb.q ], [ %i.bw, %bb.s ] ; 2 uses
  %i.dh = icmp eq i32 %.0.i134191194198.ph, -1
  br i1 %i.dh, label %bb.ak, label %bb.al

.loopexit:                                        ; preds = %bb.k, %bb.m, %bb.p, %.thread195
  %.0110206 = phi i32 [ %.us-phi, %.thread195 ], [ %.0110.ph, %bb.m ], [ %.0110.ph, %bb.k ], [ %.0110.ph, %bb.p ] ; 3 uses
  %i.di = phi i1 [ %i.cj, %.thread195 ], [ %i.ba, %bb.m ], [ %i.ap, %bb.k ], [ %i.bj, %bb.p ] ; 3 uses
  %i.dj = phi i1 [ false, %.thread195 ], [ %i.aw, %bb.m ], [ %i.ak, %bb.k ], [ %i.be, %bb.p ] ; 2 uses
  %.0.i134191194198 = phi i32 [ -1, %.thread195 ], [ %i.av, %bb.m ], [ %i.aj, %bb.k ], [ %i.bd, %bb.p ] ; 7 uses
  %i.dk = icmp eq i32 %.0.i134191194198, %i.z
  %or.cond126203 = or i1 %i.dj, %i.dk
  %or.cond132 = and i1 %i.di, %or.cond126203
  br i1 %or.cond132, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  %i.dl = icmp eq i32 %.0110206, 13
  %i.dm = icmp eq i32 %.0.ph, 34
  %i.dn = and i1 %i.dl, %i.dm
  %or.cond128 = and i1 %i.dn, %i.dj
  br i1 %or.cond128, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = icmp eq i32 %.0.i134191194198, -1       ; 3 uses
  %or.cond129 = and i1 %i.di, %i.do
  br i1 %or.cond129, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.loopexit
  %.0.i134191194198.lcssa = phi i32 [ -1, %bb.af ], [ %.0.i134191194198, %bb.ae ], [ %.0.i134191194198, %.loopexit ]
  %i.dp = load ptr, ptr %i.j, align 8, !tbaa !683
  %.lcssa218.promoted = load i64, ptr %i.c, align 8, !tbaa !684
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %i.dq = phi i64 [ %i.dr, %bb.ah ], [ %.lcssa218.promoted, %bb.ag ]
  %i.dr = add nsw i64 %i.dq, -1                   ; 3 uses
  store i64 %i.dr, ptr %i.c, align 8, !tbaa !684
  %i.ds = getelementptr inbounds i8, ptr %i.dp, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !52
  %.not123 = icmp eq i8 %i.dt, 34
  br i1 %.not123, label %.thread200, label %bb.ah, !llvm.loop !1317

bb.ai:                                            ; preds = %bb.af
  %i.du = icmp ne i32 %.0.i134191194198, 13
  %or.cond5 = and i1 %i.di, %i.du
  br i1 %or.cond5, label %.split, label %bb.aj

.split:                                           ; preds = %bb.ai
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.dw = load ptr, ptr %0, align 8, !tbaa !678
  %i.dx = load i32, ptr %i.ab, align 8, !tbaa !679
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dv, ptr noundef nonnull @.str.1732, ptr noundef %i.dw, i32 noundef %i.dx, i32 noundef 34)
  br i1 %i.do, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.do, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.split, %.thread346, %bb.aj
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.dz = load ptr, ptr %0, align 8, !tbaa !678
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dy, ptr noundef nonnull @.str.1733, ptr noundef %i.dz, i32 noundef %i.ac, i32 noundef 34)
  br label %.thread200

bb.al:                                            ; preds = %.split, %.thread346, %bb.aj
  %.0.i134191194198334338345350353 = phi i32 [ %.0.i134191194198.ph, %.thread346 ], [ %.0.i134191194198, %bb.aj ], [ %.0.i134191194198, %.split ] ; 2 uses
  %.0110206333339344351352 = phi i32 [ 0, %.thread346 ], [ %.0110206, %bb.aj ], [ %.0110206, %.split ]
  %i.ea = load i64, ptr %i.c, align 8, !tbaa !684 ; 2 uses
  %i.eb = add nsw i64 %i.ea, 1                    ; 2 uses
  %i.ec = load i64, ptr %i.i, align 8, !tbaa !685 ; 2 uses
  %.not.i144 = icmp slt i64 %i.eb, %i.ec
  br i1 %.not.i144, label %.shell_check_oom.exit_crit_edge.i150, label %bb.am

.shell_check_oom.exit_crit_edge.i150:             ; preds = %bb.al
  %.pre.i152 = load ptr, ptr %i.j, align 8, !tbaa !683
  br label %import_append_char.exit153

bb.am:                                            ; preds = %bb.al
  %reass.add.i145 = shl i64 %i.ec, 1
  %i.ed = add i64 %reass.add.i145, 100            ; 2 uses
  store i64 %i.ed, ptr %i.i, align 8, !tbaa !685
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !683
  %i.ef = tail call ptr @sqlite3_realloc64(ptr noundef %i.ee, i64 noundef %i.ed) #45 ; 3 uses
  store ptr %i.ef, ptr %i.j, align 8, !tbaa !683
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.an, label %.shell_check_oom.exit_crit_edge10.i146

.shell_check_oom.exit_crit_edge10.i146:           ; preds = %bb.am
  %.pre11.i147 = load i64, ptr %i.c, align 8, !tbaa !684 ; 2 uses
  %.pre12.i148 = add nsw i64 %.pre11.i147, 1
  br label %import_append_char.exit153

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @shell_out_of_memory()
  unreachable

import_append_char.exit153:                       ; preds = %.shell_check_oom.exit_crit_edge.i150, %.shell_check_oom.exit_crit_edge10.i146
  %.pre-phi.i149 = phi i64 [ %.pre12.i148, %.shell_check_oom.exit_crit_edge10.i146 ], [ %i.eb, %.shell_check_oom.exit_crit_edge.i150 ]
  %i.eh = phi i64 [ %.pre11.i147, %.shell_check_oom.exit_crit_edge10.i146 ], [ %i.ea, %.shell_check_oom.exit_crit_edge.i150 ]
  %i.ei = phi ptr [ %i.ef, %.shell_check_oom.exit_crit_edge10.i146 ], [ %.pre.i152, %.shell_check_oom.exit_crit_edge.i150 ]
  %i.ej = trunc i32 %.0.i134191194198334338345350353 to i8
  store i64 %.pre-phi.i149, ptr %i.c, align 8, !tbaa !684
  %i.ek = getelementptr inbounds i8, ptr %i.ei, i64 %i.eh
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !52
  br label %.outer.backedge

bb.ao:                                            ; preds = %bb.g
  %i.el = load i32, ptr %i.g, align 8, !tbaa !676 ; 2 uses
  %i.em = and i32 %.0.i, 255
  %i.en = icmp eq i32 %i.em, 239
  br i1 %i.en, label %bb.ap, label %import_getc.exit168.thread

bb.ap:                                            ; preds = %bb.ao
  %i.eo = load i32, ptr %i.h, align 4, !tbaa !1319
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.aq, label %import_getc.exit168.thread

bb.aq:                                            ; preds = %bb.ap
  %i.eq = load i64, ptr %i.c, align 8, !tbaa !684 ; 2 uses
  %i.er = add nsw i64 %i.eq, 1                    ; 2 uses
  %i.es = load i64, ptr %i.i, align 8, !tbaa !685 ; 2 uses
  %.not.i154 = icmp slt i64 %i.er, %i.es
  br i1 %.not.i154, label %.shell_check_oom.exit_crit_edge.i160, label %bb.ar

.shell_check_oom.exit_crit_edge.i160:             ; preds = %bb.aq
  %.pre.i162 = load ptr, ptr %i.j, align 8, !tbaa !683
  br label %import_append_char.exit163

bb.ar:                                            ; preds = %bb.aq
  %reass.add.i155 = shl i64 %i.es, 1
  %i.et = add i64 %reass.add.i155, 100            ; 2 uses
  store i64 %i.et, ptr %i.i, align 8, !tbaa !685
  %i.eu = load ptr, ptr %i.j, align 8, !tbaa !683
  %i.ev = tail call ptr @sqlite3_realloc64(ptr noundef %i.eu, i64 noundef %i.et) #45 ; 3 uses
  store ptr %i.ev, ptr %i.j, align 8, !tbaa !683
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.as, label %.shell_check_oom.exit_crit_edge10.i156

.shell_check_oom.exit_crit_edge10.i156:           ; preds = %bb.ar
  %.pre11.i157 = load i64, ptr %i.c, align 8, !tbaa !684 ; 2 uses
  %.pre12.i158 = add nsw i64 %.pre11.i157, 1
  br label %import_append_char.exit163

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @shell_out_of_memory()
  unreachable

import_append_char.exit163:                       ; preds = %.shell_check_oom.exit_crit_edge.i160, %.shell_check_oom.exit_crit_edge10.i156
  %.pre-phi.i159 = phi i64 [ %.pre12.i158, %.shell_check_oom.exit_crit_edge10.i156 ], [ %i.er, %.shell_check_oom.exit_crit_edge.i160 ]
  %i.ex = phi i64 [ %.pre11.i157, %.shell_check_oom.exit_crit_edge10.i156 ], [ %i.eq, %.shell_check_oom.exit_crit_edge.i160 ]
  %i.ey = phi ptr [ %i.ev, %.shell_check_oom.exit_crit_edge10.i156 ], [ %.pre.i162, %.shell_check_oom.exit_crit_edge.i160 ]
  store i64 %.pre-phi.i159, ptr %i.c, align 8, !tbaa !684
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 %i.ex
  store i8 -17, ptr %i.ez, align 1, !tbaa !52
  %i.fa = load ptr, ptr %i.d, align 8, !tbaa !680 ; 2 uses
  %.not.i164 = icmp eq ptr %i.fa, null
  br i1 %.not.i164, label %bb.au, label %bb.at

bb.at:                                            ; preds = %import_append_char.exit163
  %i.fb = tail call i32 @fgetc(ptr noundef nonnull %i.fa)
  br label %import_getc.exit168

bb.au:                                            ; preds = %import_append_char.exit163
  %i.fc = load ptr, ptr %i.e, align 8, !tbaa !682 ; 2 uses
  %.not9.i166 = icmp eq ptr %i.fc, null
  br i1 %.not9.i166, label %import_getc.exit168.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fd = load i64, ptr %i.f, align 8, !tbaa !689 ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fc, i64 %i.fd ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !52
  %.not10.i167 = icmp eq i8 %i.ff, 0
  br i1 %.not10.i167, label %import_getc.exit168.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fg = add nsw i64 %i.fd, 1
  store i64 %i.fg, ptr %i.f, align 8, !tbaa !689
  %i.fh = load i8, ptr %i.fe, align 1, !tbaa !52
  %i.fi = sext i8 %i.fh to i32
  br label %import_getc.exit168

import_getc.exit168:                              ; preds = %bb.at, %bb.aw
  %.0.i165 = phi i32 [ %i.fb, %bb.at ], [ %i.fi, %bb.aw ] ; 3 uses
  %i.fj = and i32 %.0.i165, 255
  %i.fk = icmp eq i32 %i.fj, 187
  br i1 %i.fk, label %bb.ax, label %import_getc.exit168.thread

bb.ax:                                            ; preds = %import_getc.exit168
  tail call fastcc void @import_append_char(ptr noundef nonnull %0, i32 noundef %.0.i165)
  %i.fl = tail call fastcc i32 @import_getc(ptr noundef nonnull %0) ; 2 uses
  %i.fm = and i32 %i.fl, 255
  %i.fn = icmp eq i32 %i.fm, 191
  br i1 %i.fn, label %bb.bn, label %import_getc.exit168.thread

import_getc.exit168.thread:                       ; preds = %bb.au, %bb.av, %import_getc.exit168, %bb.ax, %bb.ap, %bb.ao
  %.0112 = phi i32 [ %i.fl, %bb.ax ], [ %.0.i165, %import_getc.exit168 ], [ %.0.i, %bb.ap ], [ %.0.i, %bb.ao ], [ -1, %bb.av ], [ -1, %bb.au ] ; 5 uses
  %i.fo = and i32 %i.k, 255                       ; 2 uses
  %i.fp = and i32 %i.l, 255                       ; 2 uses
  %.not120234 = icmp eq i32 %.0112, -1
  %.not121235 = icmp eq i32 %.0112, %i.fo
  %or.cond130236 = select i1 %.not120234, i1 true, i1 %.not121235
  %.not122237 = icmp eq i32 %.0112, %i.fp         ; 2 uses
  %or.cond131238 = select i1 %or.cond130236, i1 true, i1 %.not122237
  br i1 %or.cond131238, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %import_getc.exit168.thread
  %i.fq = icmp ne i32 %i.el, 0
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph, %import_getc.exit188
  %.1239 = phi i32 [ %.0112, %.lr.ph ], [ %.0.i185, %import_getc.exit188 ] ; 2 uses
  %i.fr = icmp eq i32 %.1239, %i.el
  %or.cond7 = and i1 %i.fq, %i.fr
  br i1 %or.cond7, label %bb.az, label %import_getc.exit173

bb.az:                                            ; preds = %bb.ay
  %i.fs = load ptr, ptr %i.d, align 8, !tbaa !680 ; 2 uses
  %.not.i169 = icmp eq ptr %i.fs, null
  br i1 %.not.i169, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ft = tail call i32 @fgetc(ptr noundef nonnull %i.fs)
  br label %import_getc.exit173

bb.bb:                                            ; preds = %bb.az
  %i.fu = load ptr, ptr %i.e, align 8, !tbaa !682 ; 2 uses
  %.not9.i171 = icmp eq ptr %i.fu, null
  br i1 %.not9.i171, label %import_getc.exit173, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fv = load i64, ptr %i.f, align 8, !tbaa !689 ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fu, i64 %i.fv ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !52
  %.not10.i172 = icmp eq i8 %i.fx, 0
  br i1 %.not10.i172, label %import_getc.exit173, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fy = add nsw i64 %i.fv, 1
  store i64 %i.fy, ptr %i.f, align 8, !tbaa !689
  %i.fz = load i8, ptr %i.fw, align 1, !tbaa !52
  %i.ga = zext i8 %i.fz to i32
  br label %import_getc.exit173

import_getc.exit173:                              ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ay
  %.2 = phi i32 [ %.1239, %bb.ay ], [ %i.ft, %bb.ba ], [ %i.ga, %bb.bd ], [ -1, %bb.bc ], [ -1, %bb.bb ]
  %i.gb = load i64, ptr %i.c, align 8, !tbaa !684 ; 2 uses
  %i.gc = add nsw i64 %i.gb, 1                    ; 2 uses
  %i.gd = load i64, ptr %i.i, align 8, !tbaa !685 ; 2 uses
  %.not.i174 = icmp slt i64 %i.gc, %i.gd
  br i1 %.not.i174, label %.shell_check_oom.exit_crit_edge.i180, label %bb.be

.shell_check_oom.exit_crit_edge.i180:             ; preds = %import_getc.exit173
  %.pre.i182 = load ptr, ptr %i.j, align 8, !tbaa !683
  br label %import_append_char.exit183

bb.be:                                            ; preds = %import_getc.exit173
  %reass.add.i175 = shl i64 %i.gd, 1
  %i.ge = add i64 %reass.add.i175, 100            ; 2 uses
  store i64 %i.ge, ptr %i.i, align 8, !tbaa !685
  %i.gf = load ptr, ptr %i.j, align 8, !tbaa !683
  %i.gg = tail call ptr @sqlite3_realloc64(ptr noundef %i.gf, i64 noundef %i.ge) #45 ; 3 uses
  store ptr %i.gg, ptr %i.j, align 8, !tbaa !683
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.bf, label %.shell_check_oom.exit_crit_edge10.i176

.shell_check_oom.exit_crit_edge10.i176:           ; preds = %bb.be
  %.pre11.i177 = load i64, ptr %i.c, align 8, !tbaa !684 ; 2 uses
  %.pre12.i178 = add nsw i64 %.pre11.i177, 1
  br label %import_append_char.exit183

bb.bf:                                            ; preds = %bb.be
  tail call fastcc void @shell_out_of_memory()
  unreachable

import_append_char.exit183:                       ; preds = %.shell_check_oom.exit_crit_edge.i180, %.shell_check_oom.exit_crit_edge10.i176
  %.pre-phi.i179 = phi i64 [ %.pre12.i178, %.shell_check_oom.exit_crit_edge10.i176 ], [ %i.gc, %.shell_check_oom.exit_crit_edge.i180 ]
  %i.gi = phi i64 [ %.pre11.i177, %.shell_check_oom.exit_crit_edge10.i176 ], [ %i.gb, %.shell_check_oom.exit_crit_edge.i180 ]
  %i.gj = phi ptr [ %i.gg, %.shell_check_oom.exit_crit_edge10.i176 ], [ %.pre.i182, %.shell_check_oom.exit_crit_edge.i180 ]
  %i.gk = trunc i32 %.2 to i8
  store i64 %.pre-phi.i179, ptr %i.c, align 8, !tbaa !684
  %i.gl = getelementptr inbounds i8, ptr %i.gj, i64 %i.gi
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !52
  %i.gm = load ptr, ptr %i.d, align 8, !tbaa !680 ; 2 uses
  %.not.i184 = icmp eq ptr %i.gm, null
  br i1 %.not.i184, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %import_append_char.exit183
  %i.gn = tail call i32 @fgetc(ptr noundef nonnull %i.gm)
  br label %import_getc.exit188

bb.bh:                                            ; preds = %import_append_char.exit183
  %i.go = load ptr, ptr %i.e, align 8, !tbaa !682 ; 2 uses
  %.not9.i186 = icmp eq ptr %i.go, null
  br i1 %.not9.i186, label %.thread200, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gp = load i64, ptr %i.f, align 8, !tbaa !689 ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %i.go, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !52
  %.not10.i187 = icmp eq i8 %i.gr, 0
  br i1 %.not10.i187, label %.thread200, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gs = add nsw i64 %i.gp, 1
  store i64 %i.gs, ptr %i.f, align 8, !tbaa !689
  %i.gt = load i8, ptr %i.gq, align 1, !tbaa !52
  %i.gu = sext i8 %i.gt to i32
  br label %import_getc.exit188

import_getc.exit188:                              ; preds = %bb.bg, %bb.bj
  %.0.i185 = phi i32 [ %i.gn, %bb.bg ], [ %i.gu, %bb.bj ] ; 5 uses
  %.not120 = icmp eq i32 %.0.i185, -1
  %.not121 = icmp eq i32 %.0.i185, %i.fo
  %or.cond130 = select i1 %.not120, i1 true, i1 %.not121
  %.not122 = icmp eq i32 %.0.i185, %i.fp          ; 2 uses
  %or.cond131 = select i1 %or.cond130, i1 true, i1 %.not122
  br i1 %or.cond131, label %.critedge, label %bb.ay, !llvm.loop !1318

.critedge:                                        ; preds = %import_getc.exit188, %import_getc.exit168.thread
  %.1.lcssa = phi i32 [ %.0112, %import_getc.exit168.thread ], [ %.0.i185, %import_getc.exit188 ] ; 4 uses
  %.not122.lcssa = phi i1 [ %.not122237, %import_getc.exit168.thread ], [ %.not122, %import_getc.exit188 ]
  br i1 %.not122.lcssa, label %bb.bk, label %.thread200

bb.bk:                                            ; preds = %.critedge
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !679
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 8, !tbaa !679
  %i.gy = load i64, ptr %i.c, align 8, !tbaa !684 ; 3 uses
  %i.gz = icmp sgt i64 %i.gy, 0
  br i1 %i.gz, label %bb.bl, label %.thread200

bb.bl:                                            ; preds = %bb.bk
  %i.ha = load ptr, ptr %i.j, align 8, !tbaa !683
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.gy
  %i.hc = getelementptr i8, ptr %i.hb, i64 -1
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !52
  %i.he = icmp eq i8 %i.hd, 13
  br i1 %i.he, label %bb.bm, label %.thread200

bb.bm:                                            ; preds = %bb.bl
  %i.hf = add nsw i64 %i.gy, -1
  store i64 %i.hf, ptr %i.c, align 8, !tbaa !684
  br label %.thread200

bb.bn:                                            ; preds = %bb.ax
  store i32 1, ptr %i.h, align 4, !tbaa !1319
  store i64 0, ptr %i.c, align 8, !tbaa !684
  br label %tailrecurse

.thread200:                                       ; preds = %bb.bh, %bb.bi, %bb.ah, %bb.bk, %bb.bl, %bb.bm, %.critedge, %bb.ak
  %.1.lcssa364.sink = phi i32 [ %.0.i134191194198.lcssa, %bb.ah ], [ -1, %bb.ak ], [ %.1.lcssa, %bb.bk ], [ %.1.lcssa, %.critedge ], [ %.1.lcssa, %bb.bm ], [ %.1.lcssa, %bb.bl ], [ -1, %bb.bi ], [ -1, %bb.bh ]
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.1.lcssa364.sink, ptr %i.hg, align 8, !tbaa !686
  %i.hh = load ptr, ptr %i.j, align 8, !tbaa !683 ; 2 uses
  %.not124 = icmp eq ptr %i.hh, null
  br i1 %.not124, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.thread200
  %i.hi = load i64, ptr %i.c, align 8, !tbaa !684
  %i.hj = getelementptr inbounds i8, ptr %i.hh, i64 %i.hi
  store i8 0, ptr %i.hj, align 1, !tbaa !52
  %.pre292 = load ptr, ptr %i.j, align 8, !tbaa !683
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.thread200
  %i.hk = phi ptr [ %.pre292, %bb.bo ], [ null, %.thread200 ]
  store i32 1, ptr %i.h, align 4, !tbaa !1319
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %import_getc.exit.thread
  %.1114 = phi ptr [ null, %import_getc.exit.thread ], [ %i.hk, %bb.bp ]
  ret ptr %.1114
}

; Function Attrs: nounwind uwtable
define internal fastcc void @import_cleanup(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !680  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !681  ; 2 uses
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 %i.d(ptr noundef nonnull %i.b) #45 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !680
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !683
  tail call void @sqlite3_free(ptr noundef %i.g) #45
  store ptr null, ptr %i.f, align 8, !tbaa !683
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !682  ; 2 uses
  %.not13 = icmp eq ptr %i.i, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @sqlite3_free(ptr noundef nonnull %i.i) #45
  store ptr null, ptr %i.h, align 8, !tbaa !682
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @import_append_char(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !684  ; 2 uses
  %i.c = add nsw i64 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !685  ; 2 uses
  %.not = icmp slt i64 %i.c, %i.e
  br i1 %.not, label %.shell_check_oom.exit_crit_edge, label %bb.b

.shell_check_oom.exit_crit_edge:                  ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !683
  br label %shell_check_oom.exit

bb.b:                                             ; preds = %bb.a
  %reass.add = shl i64 %i.e, 1
  %i.f = add i64 %reass.add, 100                  ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !685
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !683
  %i.i = tail call ptr @sqlite3_realloc64(ptr noundef %i.h, i64 noundef %i.f) #45 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !683
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %.shell_check_oom.exit_crit_edge10

.shell_check_oom.exit_crit_edge10:                ; preds = %bb.b
  %.pre11 = load i64, ptr %i.a, align 8, !tbaa !684 ; 2 uses
  %.pre12 = add nsw i64 %.pre11, 1
  br label %shell_check_oom.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %.shell_check_oom.exit_crit_edge10, %.shell_check_oom.exit_crit_edge
  %.pre-phi = phi i64 [ %.pre12, %.shell_check_oom.exit_crit_edge10 ], [ %i.c, %.shell_check_oom.exit_crit_edge ]
  %i.k = phi i64 [ %.pre11, %.shell_check_oom.exit_crit_edge10 ], [ %i.b, %.shell_check_oom.exit_crit_edge ]
  %i.l = phi ptr [ %i.i, %.shell_check_oom.exit_crit_edge10 ], [ %.pre, %.shell_check_oom.exit_crit_edge ]
  %i.m = trunc i32 %1 to i8
  store i64 %.pre-phi, ptr %i.a, align 8, !tbaa !684
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.k
  store i8 %i.m, ptr %i.n, align 1, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zAutoColumn(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !109
  %.not = icmp eq ptr %0, null
  %i.b = load ptr, ptr %1, align 8, !tbaa !218    ; 3 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %rc_err_oom_die.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @sqlite3_open(ptr noundef nonnull @.str.43, ptr noundef nonnull %1) #45
  %.not40 = icmp eq i32 %i.d, 0
  br i1 %.not40, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %1, align 8, !tbaa !218
  %i.f = tail call i32 @sqlite3_exec(ptr noundef %i.e, ptr noundef nonnull @.str.1734, ptr noundef null, ptr noundef null, ptr noundef null) #45
  %i.g = icmp eq i32 %i.f, 7
  br i1 %i.g, label %bb.e, label %.rc_err_oom_die.exit_crit_edge

.rc_err_oom_die.exit_crit_edge:                   ; preds = %bb.d
  %.pre = load ptr, ptr %1, align 8, !tbaa !218
  br label %rc_err_oom_die.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @shell_out_of_memory()
  unreachable

rc_err_oom_die.exit:                              ; preds = %.rc_err_oom_die.exit_crit_edge, %bb.b
  %i.h = phi ptr [ %.pre, %.rc_err_oom_die.exit_crit_edge ], [ %i.b, %bb.b ]
  %i.i = call i32 @sqlite3_prepare_v2(ptr noundef %i.h, ptr noundef nonnull @.str.1735, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %i.j = icmp eq i32 %i.i, 7
  br i1 %i.j, label %bb.f, label %rc_err_oom_die.exit41

bb.f:                                             ; preds = %rc_err_oom_die.exit
  call fastcc void @shell_out_of_memory()
  unreachable

rc_err_oom_die.exit41:                            ; preds = %rc_err_oom_die.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.l = call i32 @sqlite3_bind_text(ptr noundef %i.k, i32 noundef 1, ptr noundef nonnull %0, i32 noundef -1, ptr noundef null) #45
  %i.m = icmp eq i32 %i.l, 7
  br i1 %i.m, label %bb.g, label %rc_err_oom_die.exit42

bb.g:                                             ; preds = %rc_err_oom_die.exit41
  call fastcc void @shell_out_of_memory()
  unreachable

rc_err_oom_die.exit42:                            ; preds = %rc_err_oom_die.exit41
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.o = call i32 @sqlite3_step(ptr noundef %i.n) #45
  %i.p = icmp eq i32 %i.o, 7
  br i1 %i.p, label %bb.h, label %rc_err_oom_die.exit43

bb.h:                                             ; preds = %rc_err_oom_die.exit42
  call fastcc void @shell_out_of_memory()
  unreachable

rc_err_oom_die.exit43:                            ; preds = %rc_err_oom_die.exit42
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.r = call i32 @sqlite3_finalize(ptr noundef %i.q) #45 ; 0 uses
  br label %bb.w

bb.i:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 (ptr, ptr, ...) @db_int(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1736)
  %.not37 = icmp eq i32 %i.s, 0                   ; 2 uses
  br i1 %.not37, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %1, align 8, !tbaa !218
  %i.u = tail call i32 (ptr, ptr, ...) @db_int(ptr noundef %i.t, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1738)
  %i.v = load ptr, ptr %1, align 8, !tbaa !218
  %i.w = tail call i32 @sqlite3_exec(ptr noundef %i.v, ptr noundef nonnull @.str.1737, ptr noundef null, ptr noundef null, ptr noundef null) #45
  %i.x = icmp eq i32 %i.w, 7
  br i1 %i.x, label %bb.l, label %rc_err_oom_die.exit44

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @shell_out_of_memory()
  unreachable

rc_err_oom_die.exit44:                            ; preds = %bb.k
  %i.y = load ptr, ptr %1, align 8, !tbaa !218
  %i.z = call i32 @sqlite3_prepare_v2(ptr noundef %i.y, ptr noundef nonnull @.str.1739, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %i.aa = icmp eq i32 %i.z, 7
  br i1 %i.aa, label %bb.m, label %rc_err_oom_die.exit45

bb.m:                                             ; preds = %rc_err_oom_die.exit44
  call fastcc void @shell_out_of_memory()
  unreachable

rc_err_oom_die.exit45:                            ; preds = %rc_err_oom_die.exit44
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ac = call i32 @sqlite3_bind_int(ptr noundef %i.ab, i32 noundef 1, i32 noundef %i.u) #45 ; 0 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ae = call i32 @sqlite3_step(ptr noundef %i.ad) #45
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ag = call i32 @sqlite3_finalize(ptr noundef %i.af) #45 ; 0 uses
  %.not38 = icmp eq i32 %i.ae, 101
  br i1 %.not38, label %.critedge, label %bb.n

end_hunk_4
begin_hunk_5_@fgetc

; Function Attrs: nounwind uwtable
define internal void @shellFkeyCollateClause(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = tail call ptr @sqlite3_context_db_handle(ptr noundef %0) #45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !88
  %i.d = load ptr, ptr %2, align 8, !tbaa !126
  %i.e = tail call ptr @sqlite3_value_text(ptr noundef %i.d) #45
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126
  %i.h = tail call ptr @sqlite3_value_text(ptr noundef %i.g) #45
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126
  %i.k = tail call ptr @sqlite3_value_text(ptr noundef %i.j) #45
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.n = tail call ptr @sqlite3_value_text(ptr noundef %i.m) #45
  tail call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef -1, ptr noundef null) #45
  %i.o = call i32 @sqlite3_table_column_metadata(ptr noundef %i.c, ptr noundef nonnull @.str.50, ptr noundef %i.e, ptr noundef %i.h, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null) #45
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.q = call i32 @sqlite3_table_column_metadata(ptr noundef %i.c, ptr noundef nonnull @.str.50, ptr noundef %i.k, ptr noundef %i.n, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef null) #45
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.u = call i32 @sqlite3_stricmp(ptr noundef %i.s, ptr noundef %i.t) #45
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.w = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.420, ptr noundef %i.v) #45 ; 2 uses
  call void @sqlite3_result_text(ptr noundef %0, ptr noundef %i.w, i32 noundef -1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  call void @sqlite3_free(ptr noundef %i.w) #45
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @modeFind(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #13 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %spec.store.select1.i = select i1 %i.a, ptr @.str.48, ptr %1 ; 24 uses
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @aModeInfo, ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4584
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !396
  %wide.trip.count = zext nneg i32 %i.ay to i64
  br label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 19), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(2) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 38), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 57), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 76), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 95), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 114), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 133), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 152), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 171), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 190), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 209), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 228), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 247), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 266), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 285), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 304), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 323), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 342), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 361), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 380), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 399), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds nuw (i8, ptr @aModeInfo, i64 418), ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !395 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph, label %._crit_edge

bb.x:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [144 x i8], ptr %i.e, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !398 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  %spec.store.select.i = select i1 %i.bc, ptr @.str.48, ptr %i.bb
  %i.bd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i, ptr noundef nonnull dereferenceable(1) %spec.store.select1.i) #46
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bf = trunc nuw nsw i64 %indvars.iv to i32
  %i.bg = add nuw nsw i32 %i.bf, 75
  br label %.loopexit

bb.z:                                             ; preds = %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !1320

._crit_edge:                                      ; preds = %bb.z, %.preheader
  %i.bh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.1839) #46
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.bj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.1840) #46
  %i.bk = icmp eq i32 %i.bj, 0
  %. = select i1 %i.bk, i32 51, i32 -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.aa, %._crit_edge, %bb.y
  %.014 = phi i32 [ 50, %._crit_edge ], [ %i.bg, %bb.y ], [ %., %bb.aa ], [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %bb.m ], [ 13, %bb.n ], [ 14, %bb.o ], [ 15, %bb.p ], [ 16, %bb.q ], [ 17, %bb.r ], [ 18, %bb.s ], [ 19, %bb.t ], [ 20, %bb.u ], [ 21, %bb.v ], [ 22, %bb.w ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc void @append_c_string(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @__const.output_c_string.ace, i64 3, i1 false)
  %i.b = icmp eq ptr %1, null
  %spec.store.select = select i1 %i.b, ptr @.str.48, ptr %1 ; 2 uses
  tail call void @sqlite3_str_appendall(ptr noundef %0, ptr noundef nonnull @.str.196) #45
  %i.c = load i8, ptr %spec.store.select, align 1, !tbaa !52
  %.not52 = icmp eq i8 %i.c, 0
  br i1 %.not52, label %.thread41, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %.03153 = phi ptr [ %spec.store.select, %.lr.ph ], [ %i.an, %bb.u ] ; 11 uses
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.03153) #46 ; 2 uses
  %i.f = ptrtoint ptr %.03153 to i64              ; 3 uses
  %i.g = call ptr @memchr(ptr noundef nonnull %.03153, i32 noundef 34, i64 noundef %i.e) #46 ; 3 uses
  %.not17.i = icmp eq ptr %i.g, null
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %i.f
  %.2.i = select i1 %.not17.i, i64 %i.e, i64 %i.i ; 2 uses
  %i.j = call ptr @memchr(ptr noundef nonnull %.03153, i32 noundef 92, i64 noundef %.2.i) #46 ; 3 uses
  %.not17.1.i = icmp eq ptr %i.j, null            ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.f
  %.2.1.i = select i1 %.not17.1.i, i64 %.2.i, i64 %i.l
  %.1.1.i = select i1 %.not17.1.i, ptr %i.g, ptr %i.j
  %i.m = call ptr @memchr(ptr noundef nonnull %.03153, i32 noundef 127, i64 noundef %.2.1.i) #46 ; 2 uses
  %.not17.2.i = icmp eq ptr %i.m, null
  %.1.2.i = select i1 %.not17.2.i, ptr %.1.1.i, ptr %i.m ; 3 uses
  %i.n = getelementptr i8, ptr %.03153, i64 2147483647 ; 5 uses
  %i.o = icmp ult ptr %.03153, %i.n
  br i1 %i.o, label %.lr.ph.split.split.i, label %zSkipValidUtf8.exit

.lr.ph.split.split.i:                             ; preds = %bb.b, %.loopexit.split.i
  %.04780.i = phi ptr [ %.350.i, %.loopexit.split.i ], [ %.03153, %bb.b ] ; 14 uses
  %i.p = load i8, ptr %.04780.i, align 1, !tbaa !52 ; 6 uses
  %i.q = icmp ult i8 %i.p, 127
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.split.split.i
  %i.r = icmp samesign ult i8 %i.p, 32
  br i1 %i.r, label %zSkipValidUtf8.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.04780.i, i64 1
  br label %.loopexit.split.i

bb.e:                                             ; preds = %.lr.ph.split.split.i
  %.not57.i = icmp ugt i8 %i.p, -65
  br i1 %.not57.i, label %.split.i, label %zSkipValidUtf8.exit

.split.i:                                         ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.04780.i, i64 1 ; 2 uses
  %.not58.i64 = icmp ult ptr %i.t, %i.n
  br i1 %.not58.i64, label %.lr.ph67, label %zSkipValidUtf8.exit

bb.f:                                             ; preds = %bb.i
  %.not58.i = icmp ult ptr %i.aa, %i.n
  br i1 %.not58.i, label %.lr.ph67.1, label %zSkipValidUtf8.exit

.lr.ph67.1:                                       ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.04780.i, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.aa, align 1, !tbaa !52
  %.not59.i.1 = icmp slt i8 %i.v, -64
  br i1 %.not59.i.1, label %bb.g, label %zSkipValidUtf8.exit

bb.g:                                             ; preds = %.lr.ph67.1
  %i.w = and i8 %i.p, 16
  %.not60.i.1 = icmp eq i8 %i.w, 0
  br i1 %.not60.i.1, label %.loopexit.split.i, label %bb.h, !llvm.loop !24

bb.h:                                             ; preds = %bb.g
  %.not58.i.1 = icmp ult ptr %i.u, %i.n
  br i1 %.not58.i.1, label %.lr.ph67.2, label %zSkipValidUtf8.exit

.lr.ph67.2:                                       ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.04780.i, i64 4
  %i.y = load i8, ptr %i.u, align 1, !tbaa !52
  %.not59.i.2 = icmp slt i8 %i.y, -64
  %i.z = and i8 %i.p, 8
  %.not60.i.2 = icmp eq i8 %i.z, 0
  %or.cond79 = and i1 %.not59.i.2, %.not60.i.2
  br i1 %or.cond79, label %.loopexit.split.i, label %zSkipValidUtf8.exit, !llvm.loop !24

.lr.ph67:                                         ; preds = %.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.04780.i, i64 2 ; 3 uses
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !52
  %.not59.i = icmp slt i8 %i.ab, -64
  br i1 %.not59.i, label %bb.i, label %zSkipValidUtf8.exit

bb.i:                                             ; preds = %.lr.ph67
  %i.ac = and i8 %i.p, 32
  %.not60.i = icmp eq i8 %i.ac, 0
  br i1 %.not60.i, label %.loopexit.split.i, label %bb.f, !llvm.loop !24

.loopexit.split.i:                                ; preds = %.lr.ph67.2, %bb.i, %bb.g, %bb.d
  %.350.i = phi ptr [ %i.s, %bb.d ], [ %i.aa, %bb.i ], [ %i.u, %bb.g ], [ %i.x, %.lr.ph67.2 ] ; 3 uses
  %i.ad = icmp ult ptr %.350.i, %i.n
  br i1 %i.ad, label %.lr.ph.split.split.i, label %zSkipValidUtf8.exit, !llvm.loop !23

zSkipValidUtf8.exit:                              ; preds = %bb.c, %bb.e, %.loopexit.split.i, %.split.i, %.lr.ph67, %bb.f, %.lr.ph67.1, %bb.h, %.lr.ph67.2, %bb.b
  %.04776.i = phi ptr [ %.03153, %bb.b ], [ %.04780.i, %.split.i ], [ %.04780.i, %bb.e ], [ %.04780.i, %.lr.ph67.2 ], [ %.04780.i, %bb.h ], [ %.04780.i, %.lr.ph67.1 ], [ %.04780.i, %bb.f ], [ %.04780.i, %.lr.ph67 ], [ %.350.i, %.loopexit.split.i ], [ %.04780.i, %bb.c ] ; 2 uses
  %.not35 = icmp ne ptr %.1.2.i, null
  %i.ae = icmp ult ptr %.1.2.i, %.04776.i
  %or.cond = and i1 %.not35, %i.ae
  %i.af = select i1 %or.cond, ptr %.1.2.i, ptr %.04776.i ; 4 uses
  %i.ag = icmp ugt ptr %i.af, %.03153
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %zSkipValidUtf8.exit
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ah, %i.f
  %i.aj = trunc i64 %i.ai to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %0, ptr noundef nonnull @.str.349, i32 noundef %i.aj, ptr noundef nonnull %.03153) #45
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %zSkipValidUtf8.exit
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !52  ; 7 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = icmp eq i8 %i.ak, 0
  br i1 %i.am, label %.thread41, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  switch i8 %i.ak, label %bb.r [
    i8 92, label %bb.q
    i8 34, label %bb.q
    i8 9, label %bb.m
    i8 10, label %bb.n
    i8 13, label %bb.o
    i8 12, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.n, %bb.o, %bb.l, %bb.l
  %.030.ph = phi i8 [ %i.ak, %bb.l ], [ %i.ak, %bb.l ], [ 114, %bb.o ], [ 110, %bb.n ], [ 116, %bb.m ], [ 102, %bb.p ]
  store i8 %.030.ph, ptr %i.d, align 1, !tbaa !52
  call void @sqlite3_str_appendall(ptr noundef %0, ptr noundef nonnull %i.a) #45
  br label %bb.u

bb.r:                                             ; preds = %bb.l
  %i.ao = tail call ptr @__ctype_b_loc() #47
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !132
  %i.aq = zext i8 %i.ak to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !98
  %i.at = and i16 %i.as, 16384
  %.not37 = icmp eq i16 %i.at, 0
  br i1 %.not37, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %0, ptr noundef nonnull @.str.205, i32 noundef %i.al) #45
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  store i8 %i.ak, ptr %i.d, align 1, !tbaa !52
  call void @sqlite3_str_appendall(ptr noundef %0, ptr noundef nonnull %i.d) #45
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.s
  %i.au = load i8, ptr %i.an, align 1, !tbaa !52
  %.not = icmp eq i8 %i.au, 0
  br i1 %.not, label %.thread41, label %bb.b

.thread41:                                        ; preds = %bb.u, %bb.k, %bb.a
  call void @sqlite3_str_appendall(ptr noundef %0, ptr noundef nonnull @.str.196) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @newTempFile(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store i64 0, ptr %i.a, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.c = phi i64 [ 0, %bb.a ], [ %i.k, %bb.d ]
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.lhs.trunc = trunc i64 %indvars.iv to i8
  %i.d = urem i8 %.lhs.trunc, 12
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @sqlite3_randomness(i32 noundef 8, ptr noundef nonnull %i.a) #45
  %.pre = load i64, ptr %i.a, align 8, !tbaa !130
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.g = urem i64 %i.f, 36
  %i.h = getelementptr inbounds nuw i8, ptr @.str.1855, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.i, ptr %i.j, align 1, !tbaa !52
  %i.k = udiv i64 %i.f, 36                        ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !tbaa !130
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !1321

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  store i8 0, ptr %i.l, align 1, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !387  ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %clearTempFile.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !392
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %bb.g, label %clearTempFile.exit

bb.g:                                             ; preds = %bb.f
  %i.r = call noundef i32 @unlink(ptr noundef nonnull readonly %i.n) #45
  %.not5.i = icmp eq i32 %i.r, 0
  %.pre13 = load ptr, ptr %i.m, align 8, !tbaa !387 ; 2 uses
  br i1 %.not5.i, label %bb.h, label %clearTempFile.exit

bb.h:                                             ; preds = %bb.g
  call void @sqlite3_free(ptr noundef %.pre13) #45
  store ptr null, ptr %i.m, align 8, !tbaa !387
  br label %clearTempFile.exit

clearTempFile.exit:                               ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.s = phi ptr [ null, %bb.e ], [ %i.n, %bb.f ], [ %.pre13, %bb.g ], [ null, %bb.h ]
  call void @sqlite3_free(ptr noundef %i.s) #45
  store ptr null, ptr %i.m, align 8, !tbaa !387
  %i.t = load ptr, ptr @find_home_dir.home_dir, align 8, !tbaa !88 ; 2 uses
  %.not12.i = icmp eq ptr %i.t, null
  br i1 %.not12.i, label %bb.i, label %find_home_dir.exit

bb.i:                                             ; preds = %clearTempFile.exit
  %i.u = call i32 @getuid() #45
  %i.v = call ptr @getpwuid(i32 noundef %i.u) #45 ; 2 uses
  %.not13.i = icmp eq ptr %i.v, null
  br i1 %.not13.i, label %thread-pre-split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !356  ; 2 uses
  store ptr %i.x, ptr @find_home_dir.home_dir, align 8, !tbaa !88
  br label %bb.k

thread-pre-split.i:                               ; preds = %bb.i
  %.pr.i = load ptr, ptr @find_home_dir.home_dir, align 8, !tbaa !88
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split.i, %bb.j
  %.pr18.i = phi ptr [ %.pr.i, %thread-pre-split.i ], [ %i.x, %bb.j ] ; 2 uses
  %.not14.i = icmp eq ptr %.pr18.i, null
  br i1 %.not14.i, label %thread-pre-split17.i, label %thread-pre-split17.thread.i

thread-pre-split17.i:                             ; preds = %bb.k
  %i.y = call ptr @getenv(ptr noundef nonnull @.str.2022) #45 ; 3 uses
  store ptr %i.y, ptr @find_home_dir.home_dir, align 8, !tbaa !88
  %.not15.i = icmp eq ptr %i.y, null
  br i1 %.not15.i, label %find_home_dir.exit, label %thread-pre-split17.thread.i

thread-pre-split17.thread.i:                      ; preds = %thread-pre-split17.i, %bb.k
  %i.z = phi ptr [ %i.y, %thread-pre-split17.i ], [ %.pr18.i, %bb.k ] ; 2 uses
  %i.aa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #46
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  %i.ac = call noalias ptr @malloc(i64 noundef %i.ab) #51 ; 4 uses
  %.not16.i = icmp eq ptr %i.ac, null
  br i1 %.not16.i, label %.sink.split.i, label %bb.l

bb.l:                                             ; preds = %thread-pre-split17.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.z, i64 %i.ab, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %thread-pre-split17.thread.i
  store ptr %i.ac, ptr @find_home_dir.home_dir, align 8, !tbaa !88
  br label %find_home_dir.exit

find_home_dir.exit:                               ; preds = %clearTempFile.exit, %thread-pre-split17.i, %.sink.split.i
  %.0.i = phi ptr [ null, %thread-pre-split17.i ], [ %i.t, %clearTempFile.exit ], [ %i.ac, %.sink.split.i ]
  %i.ad = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1856, ptr noundef %.0.i, i32 noundef 47, ptr noundef nonnull %i.b, ptr noundef %1) #45 ; 2 uses
  store ptr %i.ad, ptr %i.m, align 8, !tbaa !387
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.m, label %shell_check_oom.exit

bb.m:                                             ; preds = %find_home_dir.exit
  call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %find_home_dir.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

declare i32 @sqlite3_bind_parameter_count(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_bind_parameter_name(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_text64(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

declare ptr @sqlite3_column_decltype(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_stmt_status(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_db_status(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_db_status64(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_status64(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_expanded_sql(ptr noundef) local_unnamed_addr #5

declare i64 @sqlite3_changes64(ptr noundef) local_unnamed_addr #5

declare i64 @sqlite3_total_changes64(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define internal fastcc i32 @arCreateOrUpdateCommand(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca [50 x i8], align 16               ; 7 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #45
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 8 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !465
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !472
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.n, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.1977)
  br label %arExecSql.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #45
  store ptr null, ptr %i.h, align 8, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !473
  %i.q = call i32 @sqlite3_exec(ptr noundef %i.p, ptr noundef nonnull @.str.1977, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.h) #45 ; 0 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !88   ; 2 uses
  %.not6.i = icmp eq ptr %i.r, null
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.s, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.r)
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.t) #45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #45
  br label %arExecSql.exit

arExecSql.exit:                                   ; preds = %bb.b, %bb.e
  %i.u = load i8, ptr %i.k, align 1, !tbaa !465
  %.not.i60 = icmp eq i8 %i.u, 0
  br i1 %.not.i60, label %bb.f, label %arExecSql.exit63.thread

arExecSql.exit63.thread:                          ; preds = %arExecSql.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.w, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.1978)
  br label %bb.h

bb.f:                                             ; preds = %arExecSql.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #45
  store ptr null, ptr %i.g, align 8, !tbaa !88
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !473
  %i.z = call i32 @sqlite3_exec(ptr noundef %i.y, ptr noundef nonnull @.str.1978, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.g) #45 ; 2 uses
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !88  ; 2 uses
  %.not6.i62 = icmp eq ptr %i.aa, null
  br i1 %.not6.i62, label %arExecSql.exit63, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ab, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.aa)
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.ac) #45
  br label %arExecSql.exit63

arExecSql.exit63:                                 ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #45
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.h, label %bb.ar
end_hunk_5
begin_hunk_6_@arCreateOrUpdateCommand:bb.a
  br i1 %.not54, label %arExecSql.exit75, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #45
  call void @sqlite3_randomness(i32 noundef 8, ptr noundef nonnull %i.j) #45
  %i.ah = load i64, ptr %i.j, align 8, !tbaa !130
  %i.ai = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.i, ptr noundef nonnull @.str.1979, i64 noundef %i.ah) #45 ; 0 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !468
  %i.ak = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1980, ptr noundef nonnull %i.i, ptr noundef %i.aj) #45 ; 3 uses
  %i.al = load i8, ptr %i.k, align 1, !tbaa !465
  %.not.i64 = icmp eq i8 %i.al, 0
  br i1 %.not.i64, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.an, ptr noundef nonnull @.str.253, ptr noundef %i.ak)
  br label %arExecSql.exit67

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #45
  store ptr null, ptr %i.f, align 8, !tbaa !88
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !473
  %i.aq = call i32 @sqlite3_exec(ptr noundef %i.ap, ptr noundef %i.ak, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.f) #45
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !88  ; 2 uses
  %.not6.i66 = icmp eq ptr %i.ar, null
  br i1 %.not6.i66, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.as, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.ar)
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.at) #45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #45
  br label %arExecSql.exit67

arExecSql.exit67:                                 ; preds = %bb.k, %bb.n
  %.0.i65 = phi i32 [ 0, %bb.k ], [ %i.aq, %bb.n ]
  call void @sqlite3_free(ptr noundef %i.ak) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #45
  br label %arExecSql.exit75

bb.o:                                             ; preds = %bb.h
  %i.au = icmp eq i32 %1, 0
  br i1 %i.au, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.av = load i8, ptr %i.k, align 1, !tbaa !465
  %.not.i68 = icmp eq i8 %i.av, 0
  br i1 %.not.i68, label %bb.q, label %arExecSql.exit71.thread

arExecSql.exit71.thread:                          ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ax, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.1974)
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #45
  store ptr null, ptr %i.e, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !473
  %i.ba = call i32 @sqlite3_exec(ptr noundef %i.az, ptr noundef nonnull @.str.1974, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.e) #45 ; 2 uses
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !88  ; 2 uses
  %.not6.i70 = icmp eq ptr %i.bb, null
  br i1 %.not6.i70, label %arExecSql.exit71, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.bc, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.bb)
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.bd) #45
  br label %arExecSql.exit71

arExecSql.exit71:                                 ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #45
  %.not53 = icmp eq i32 %i.ba, 0
  br i1 %.not53, label %bb.s, label %.thread

bb.s:                                             ; preds = %arExecSql.exit71.thread, %arExecSql.exit71, %bb.o
  %i.be = load i8, ptr %i.k, align 1, !tbaa !465
  %.not.i72 = icmp eq i8 %i.be, 0
  br i1 %.not.i72, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.bg, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.1973)
  br label %arExecSql.exit75

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #45
  store ptr null, ptr %i.d, align 8, !tbaa !88
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !473
  %i.bj = call i32 @sqlite3_exec(ptr noundef %i.bi, ptr noundef nonnull @.str.1973, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d) #45
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !88  ; 2 uses
  %.not6.i74 = icmp eq ptr %i.bk, null
  br i1 %.not6.i74, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.bl, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.bk)
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.bm) #45
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #45
  br label %arExecSql.exit75

arExecSql.exit75:                                 ; preds = %bb.w, %bb.t, %bb.i, %arExecSql.exit67
  %.046 = phi i32 [ %.0.i65, %arExecSql.exit67 ], [ 0, %bb.i ], [ 0, %bb.t ], [ %i.bj, %bb.w ]
  %.045 = phi ptr [ %i.i, %arExecSql.exit67 ], [ @.str.1058, %bb.i ], [ @.str.1952, %bb.t ], [ @.str.1952, %bb.w ] ; 2 uses
  %.not55 = icmp eq i32 %2, 0
  br i1 %.not55, label %bb.y, label %bb.x

bb.x:                                             ; preds = %arExecSql.exit75
  %i.bn = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1981, ptr noundef nonnull %.045) #45
  br label %bb.z

bb.y:                                             ; preds = %arExecSql.exit75
  %i.bo = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.48) #45
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.044 = phi ptr [ %i.bn, %bb.x ], [ %i.bo, %bb.y ] ; 6 uses
  %i.bp = icmp eq ptr %.044, null
  %spec.select = select i1 %i.bp, i32 7, i32 %.046 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !470
  %i.bs = icmp sgt i32 %i.br, 0
  %i.bt = icmp eq i32 %spec.select, 0
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %arExecSql.exit79
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %arExecSql.exit79 ] ; 2 uses
  %i.ca = load i8, ptr %i.ad, align 2, !tbaa !475
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr @__const.arCreateOrUpdateCommand.zInsertFmt, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !88
  %i.ce = load i8, ptr %i.bv, align 1, !tbaa !467
  %.not59 = icmp eq i8 %i.ce, 0
  %i.cf = select i1 %.not59, ptr @.str.1953, ptr @.str.1982
  %i.cg = load ptr, ptr %i.bw, align 8, !tbaa !471
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !88
  %i.cj = load ptr, ptr %i.bx, align 8, !tbaa !469
  %i.ck = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef %i.cd, ptr noundef nonnull %.045, ptr noundef nonnull %i.cf, ptr noundef %i.ci, ptr noundef %i.cj, ptr noundef %.044) #45 ; 3 uses
  %i.cl = load i8, ptr %i.k, align 1, !tbaa !465
  %.not.i76 = icmp eq i8 %i.cl, 0
  br i1 %.not.i76, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = load ptr, ptr %i.by, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.cm, ptr noundef nonnull @.str.253, ptr noundef %i.ck)
  br label %arExecSql.exit79

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  store ptr null, ptr %i.c, align 8, !tbaa !88
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !473
  %i.co = call i32 @sqlite3_exec(ptr noundef %i.cn, ptr noundef %i.ck, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.c) #45
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !88  ; 2 uses
  %.not6.i78 = icmp eq ptr %i.cp, null
  br i1 %.not6.i78, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.cq, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.cp)
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.cr) #45
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #45
  br label %arExecSql.exit79

arExecSql.exit79:                                 ; preds = %bb.ab, %bb.ae
  %.0.i77 = phi i32 [ 0, %bb.ab ], [ %i.co, %bb.ae ] ; 2 uses
  call void @sqlite3_free(ptr noundef %i.ck) #45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = load i32, ptr %i.bq, align 8, !tbaa !470
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next, %i.ct
  %i.cv = icmp eq i32 %.0.i77, 0
  %i.cw = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %i.cw, label %bb.aa, label %._crit_edge, !llvm.loop !1322

._crit_edge:                                      ; preds = %arExecSql.exit79, %bb.z
  %.2.lcssa = phi i32 [ %spec.select, %bb.z ], [ %.0.i77, %arExecSql.exit79 ] ; 2 uses
  %.not56 = icmp eq i32 %.2.lcssa, 0
  br i1 %.not56, label %bb.af, label %.thread

.thread:                                          ; preds = %arExecSql.exit71, %._crit_edge
  %.197 = phi ptr [ %.044, %._crit_edge ], [ null, %arExecSql.exit71 ]
  %.395 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %i.ba, %arExecSql.exit71 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !473
  %i.cz = call i32 @sqlite3_exec(ptr noundef %i.cy, ptr noundef nonnull @.str.1983, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 0 uses
  br label %bb.aq

bb.af:                                            ; preds = %._crit_edge
  %i.da = load i8, ptr %i.k, align 1, !tbaa !465
  %.not.i80 = icmp eq i8 %i.da, 0
  br i1 %.not.i80, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dc, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.1984)
  br label %arExecSql.exit83

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !88
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !473
  %i.df = call i32 @sqlite3_exec(ptr noundef %i.de, ptr noundef nonnull @.str.1984, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.b) #45
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !88  ; 2 uses
  %.not6.i82 = icmp eq ptr %i.dg, null
  br i1 %.not6.i82, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dh = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dh, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.dg)
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.di) #45
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %arExecSql.exit83

arExecSql.exit83:                                 ; preds = %bb.ag, %bb.aj
  %.0.i81 = phi i32 [ 0, %bb.ag ], [ %i.df, %bb.aj ] ; 3 uses
  %i.dj = load i8, ptr %i.ad, align 2, !tbaa !475
  %.not57 = icmp eq i8 %i.dj, 0
  br i1 %.not57, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %arExecSql.exit83
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !468
  %.not58 = icmp eq ptr %i.dl, null
  br i1 %.not58, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dm = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1985, ptr noundef nonnull %i.i) #45 ; 3 uses
  %i.dn = load i8, ptr %i.k, align 1, !tbaa !465
  %.not.i84 = icmp eq i8 %i.dn, 0
  br i1 %.not.i84, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dp, ptr noundef nonnull @.str.253, ptr noundef %i.dm)
  br label %arExecSql.exit87

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !88
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !473
  %i.ds = call i32 @sqlite3_exec(ptr noundef %i.dr, ptr noundef %i.dm, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) #45 ; 0 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %.not6.i86 = icmp eq ptr %i.dt, null
  br i1 %.not6.i86, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.du = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.du, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.dt)
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.dv) #45
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %arExecSql.exit87

arExecSql.exit87:                                 ; preds = %bb.am, %bb.ap
  call void @sqlite3_free(ptr noundef %i.dm) #45
  br label %bb.aq

bb.aq:                                            ; preds = %arExecSql.exit83, %bb.ak, %arExecSql.exit87, %.thread
  %.196 = phi ptr [ %.197, %.thread ], [ %.044, %arExecSql.exit87 ], [ %.044, %bb.ak ], [ %.044, %arExecSql.exit83 ]
  %.4 = phi i32 [ %.395, %.thread ], [ %.0.i81, %arExecSql.exit87 ], [ %.0.i81, %bb.ak ], [ %.0.i81, %arExecSql.exit83 ]
  call void @sqlite3_free(ptr noundef %.196) #45
  br label %bb.ar

bb.ar:                                            ; preds = %arExecSql.exit63, %bb.aq
  %.0 = phi i32 [ %.4, %bb.aq ], [ %i.z, %arExecSql.exit63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #45
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @arErrorMsg(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call ptr @sqlite3_vmprintf(ptr noundef %1, ptr noundef nonnull %2) #45 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.b, ptr noundef nonnull @.str.1088, ptr noundef %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.d = load i8, ptr %i.c, align 2, !tbaa !464
  %.not = icmp eq i8 %i.d, 0
  %i.e = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 3 uses
  %.not.i4 = icmp eq ptr %i.e, null               ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @sqlite3_str_appendall(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.1970) #45
  br label %cli_puts.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !122
  %fwrite = call i64 @fwrite(ptr nonnull @.str.1970, i64 23, i64 1, ptr %i.f) #50 ; 0 uses
  br label %cli_puts.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @sqlite3_str_appendall(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.1971) #45
  br label %cli_puts.exit

bb.g:                                             ; preds = %bb.e
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !122
  %fwrite8 = call i64 @fwrite(ptr nonnull @.str.1971, i64 36, i64 1, ptr %i.g) #50 ; 0 uses
  br label %cli_puts.exit

cli_puts.exit:                                    ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  call void @sqlite3_free(ptr noundef %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @arCheckEntries(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store i32 0, ptr %i.a, align 4, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !470
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !466
  %.not23 = icmp eq i8 %i.f, 0
  %i.g = select i1 %.not23, ptr @.str.1995, ptr @.str.1994
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !473
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !474
  call void (ptr, ptr, ptr, ptr, ...) @shellPreparePrintf(ptr noundef %i.i, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.g, ptr noundef %i.k)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.m = call i32 @sqlite3_bind_parameter_index(ptr noundef %i.l, ptr noundef nonnull @.str.1996) #45
  %.promoted = load i32, ptr %i.a, align 4        ; 2 uses
  %i.n = load i32, ptr %i.c, align 8, !tbaa !470
  %i.o = icmp sgt i32 %i.n, 0
  %i.p = icmp eq i32 %.promoted, 0                ; 2 uses
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph31, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !471
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !88   ; 6 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %._crit_edge, label %strlen30.exit

strlen30.exit:                                    ; preds = %bb.c
  %i.w = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.u) #46 ; 2 uses
  %.not51 = icmp eq i64 %i.w, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %strlen30.exit
  %i.x = call i64 @llvm.umin.i64(i64 %i.w, i64 1073741823)
  %i.y = trunc nuw nsw i64 %i.x to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.02125 = phi i32 [ %i.ae, %bb.d ], [ %i.y, %.lr.ph.preheader ] ; 4 uses
  %i.z = zext nneg i32 %.02125 to i64
  %i.aa = getelementptr i8, ptr %i.u, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !52
  %i.ad = icmp eq i8 %i.ac, 47
  br i1 %i.ad, label %bb.d, label %._crit_edge.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.ae = add nsw i32 %.02125, -1
  %i.af = icmp sgt i32 %.02125, 1
  br i1 %i.af, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1323

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.d
  %.021.lcssa.ph = phi i32 [ 0, %bb.d ], [ %.02125, %.lr.ph ]
  %i.ag = zext nneg i32 %.021.lcssa.ph to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit, %strlen30.exit
  %.021.lcssa = phi i64 [ 0, %strlen30.exit ], [ %i.ag, %._crit_edge.loopexit ], [ 0, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 %.021.lcssa
  store i8 0, ptr %i.ah, align 1, !tbaa !52
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.aj = call i32 @sqlite3_bind_text(ptr noundef %i.ai, i32 noundef %i.m, ptr noundef %i.u, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.al = call i32 @sqlite3_step(ptr noundef %i.ak) #45
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !109 ; 2 uses
  %i.an = call i32 @sqlite3_reset(ptr noundef %i.am) #45 ; 2 uses
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %shellReset.exit, label %shellReset.exit.thread

shellReset.exit.thread:                           ; preds = %._crit_edge
  %i.ao = call ptr @sqlite3_db_handle(ptr noundef %i.am) #45
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.aq = call ptr @sqlite3_errmsg(ptr noundef %i.ao) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ap, ptr noundef nonnull @.str.63, ptr noundef %i.aq)
  br label %._crit_edge32

shellReset.exit:                                  ; preds = %._crit_edge
  %.not52 = icmp eq i32 %i.al, 100
  br i1 %.not52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %shellReset.exit
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ar, ptr noundef nonnull @.str.1997, ptr noundef nonnull %i.u)
  br label %._crit_edge32

bb.f:                                             ; preds = %shellReset.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.c, align 8, !tbaa !470
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.c, label %._crit_edge32, !llvm.loop !1324

._crit_edge32:                                    ; preds = %bb.f, %shellReset.exit.thread, %bb.e, %bb.b
  %.lcssa28 = phi i32 [ %.promoted, %bb.b ], [ 1, %bb.e ], [ %i.an, %shellReset.exit.thread ], [ 0, %bb.f ] ; 2 uses
  %.lcssa = phi i1 [ %i.p, %bb.b ], [ false, %bb.e ], [ false, %shellReset.exit.thread ], [ true, %bb.f ]
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !109 ; 3 uses
  %.not.i24 = icmp eq ptr %i.av, null
  br i1 %.not.i24, label %shellFinalize.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge32
  %i.aw = call ptr @sqlite3_db_handle(ptr noundef nonnull %i.av) #45
  %i.ax = call i32 @sqlite3_finalize(ptr noundef nonnull %i.av) #45 ; 3 uses
  br i1 %.lcssa, label %bb.h, label %shellFinalize.exit

bb.h:                                             ; preds = %bb.g
  %.not7.i = icmp eq i32 %i.ax, 0
  br i1 %.not7.i, label %shellFinalize.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.az = call ptr @sqlite3_errmsg(ptr noundef %i.aw) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ay, ptr noundef nonnull @.str.63, ptr noundef %i.az)
  br label %shellFinalize.exit

shellFinalize.exit:                               ; preds = %bb.h, %bb.i, %._crit_edge32, %bb.g
  %i.ba = phi i32 [ %.lcssa28, %._crit_edge32 ], [ %.lcssa28, %bb.g ], [ %i.ax, %bb.i ], [ %i.ax, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %bb.j

bb.j:                                             ; preds = %shellFinalize.exit, %bb.a
  %i.bb = phi i32 [ %i.ba, %shellFinalize.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %i.bb
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arWhereClause(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !53
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !470
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1785) #45
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !466
  %.not = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not, ptr @.str.1998, ptr @.str.48
  %i.j = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull %i.i) #45 ; 3 uses
  %i.k = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.48) #45 ; 3 uses
  %i.l = load i32, ptr %i.c, align 8, !tbaa !470
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = icmp ne ptr %i.j, null
  %or.cond48 = select i1 %i.m, i1 %i.n, i1 false
  %i.o = icmp ne ptr %i.k, null
  %or.cond549 = select i1 %or.cond48, i1 %i.o, i1 false
  br i1 %or.cond549, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !471
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !88   ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %strlen30.exit.peel, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.t = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.r) #46
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1073741823)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = add nuw nsw i32 %i.v, 1
  br label %strlen30.exit.peel

strlen30.exit.peel:                               ; preds = %bb.e, %.lr.ph
  %.0.i.peel = phi i32 [ %i.w, %bb.e ], [ 1, %.lr.ph ]
  %i.x = load i8, ptr %i.g, align 1, !tbaa !466
  %.not47.peel = icmp eq i8 %i.x, 0               ; 2 uses
  %.str.2001..str.1999 = select i1 %.not47.peel, ptr @.str.2001, ptr @.str.1999
  %.str.2002..str.2000 = select i1 %.not47.peel, ptr @.str.2002, ptr @.str.2000
  %i.y = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull %.str.2001..str.1999, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.48, ptr noundef %i.r) #45 ; 3 uses
  %i.z = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull %.str.2002..str.2000, ptr noundef nonnull %i.k, ptr noundef nonnull @.str.48, i32 noundef %.0.i.peel, ptr noundef %i.r) #45 ; 3 uses
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !470
  %i.ab = icmp sgt i32 %i.aa, 1
  %i.ac = icmp ne ptr %i.y, null
  %or.cond.peel = select i1 %i.ab, i1 %i.ac, i1 false
  %i.ad = icmp ne ptr %i.z, null
  %or.cond5.peel = select i1 %or.cond.peel, i1 %i.ad, i1 false
  br i1 %or.cond5.peel, label %.peel.next, label %.critedge

.peel.next:                                       ; preds = %strlen30.exit.peel, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %strlen30.exit.peel ] ; 2 uses
  %.04251 = phi ptr [ %i.ap, %bb.i ], [ %i.z, %strlen30.exit.peel ]
  %.04350 = phi ptr [ %.144, %bb.i ], [ %i.y, %strlen30.exit.peel ] ; 2 uses
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !471
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !88 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %strlen30.exit, label %bb.f

bb.f:                                             ; preds = %.peel.next
  %i.ai = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ag) #46
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1073741823)
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = add nuw nsw i32 %i.ak, 1
  br label %strlen30.exit

strlen30.exit:                                    ; preds = %.peel.next, %bb.f
  %.0.i = phi i32 [ %i.al, %bb.f ], [ 1, %.peel.next ]
  %i.am = load i8, ptr %i.g, align 1, !tbaa !466
  %.not47 = icmp eq i8 %i.am, 0
  br i1 %.not47, label %bb.h, label %bb.g

bb.g:                                             ; preds = %strlen30.exit
  %i.an = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1999, ptr noundef nonnull %.04350, ptr noundef nonnull @.str.2003, ptr noundef %i.ag) #45
  br label %bb.i

bb.h:                                             ; preds = %strlen30.exit
  %i.ao = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.2001, ptr noundef nonnull %.04350, ptr noundef nonnull @.str.397, ptr noundef %i.ag) #45
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.str.2002.sink61 = phi ptr [ @.str.2002, %bb.h ], [ @.str.2000, %bb.g ]
  %.144 = phi ptr [ %i.ao, %bb.h ], [ %i.an, %bb.g ] ; 3 uses
  %i.ap = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull %.str.2002.sink61, ptr noundef nonnull %.04251, ptr noundef nonnull @.str.2003, i32 noundef %.0.i, ptr noundef %i.ag) #45 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.c, align 8, !tbaa !470
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  %i.at = icmp ne ptr %.144, null
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  %i.au = icmp ne ptr %i.ap, null
  %or.cond5 = select i1 %or.cond, i1 %i.au, i1 false
  br i1 %or.cond5, label %.peel.next, label %.critedge, !llvm.loop !1325

.critedge:                                        ; preds = %bb.i, %strlen30.exit.peel, %bb.d
  %.043.lcssa = phi ptr [ %i.j, %bb.d ], [ %i.y, %strlen30.exit.peel ], [ %.144, %bb.i ] ; 3 uses
  %.042.lcssa = phi ptr [ %i.k, %bb.d ], [ %i.z, %strlen30.exit.peel ], [ %i.ap, %bb.i ] ; 3 uses
  %i.av = icmp eq ptr %.043.lcssa, null
  %i.aw = icmp eq ptr %.042.lcssa, null
  %or.cond3 = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  store i32 7, ptr %0, align 4, !tbaa !53
  br label %bb.l

bb.k:                                             ; preds = %.critedge
  %i.ax = load i8, ptr %i.g, align 1, !tbaa !466
  %i.ay = icmp eq i8 %i.ax, 0
  %i.az = select i1 %i.ay, ptr @.str.210, ptr @.str.48
  %i.ba = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.2004, ptr noundef nonnull %.043.lcssa, ptr noundef nonnull %i.az, ptr noundef nonnull %.042.lcssa) #45
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.045 = phi ptr [ null, %bb.j ], [ %i.ba, %bb.k ]
  tail call void @sqlite3_free(ptr noundef %.043.lcssa) #45
  tail call void @sqlite3_free(ptr noundef %.042.lcssa) #45
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.l, %bb.a
  %.146 = phi ptr [ %i.f, %bb.c ], [ %.045, %bb.l ], [ null, %bb.a ]
  store ptr %.146, ptr %2, align 8, !tbaa !88
  ret void
}

declare i32 @sqlite3_bind_parameter_index(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @quickscan(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #39 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %sext.mask = and i32 %1, 255
  %i.b = icmp eq i32 %sext.mask, 0
  br i1 %i.b, label %..preheader80_crit_edge, label %bb.l

..preheader80_crit_edge:                          ; preds = %bb.a
  %.pre = load i32, ptr @stdin_is_interactive, align 4
  br label %.preheader80

.preheader80:                                     ; preds = %..preheader80_crit_edge, %bb.q, %bb.s
  %i.c = phi i32 [ %i.as, %bb.q ], [ %i.az, %bb.s ], [ %.pre, %..preheader80_crit_edge ]
  %.056.ph = phi ptr [ %i.aq, %bb.q ], [ %i.ax, %bb.s ], [ %0, %..preheader80_crit_edge ]
  %.055.ph = phi i32 [ %i.aw, %bb.q ], [ %i.bd, %bb.s ], [ %1, %..preheader80_crit_edge ]
  %i.d = icmp ne ptr %2, null
  %i.e = icmp ne i32 %i.c, 0
  %or.cond7 = select i1 %i.d, i1 %i.e, i1 false   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  br label %.outer.outer

.outer:                                           ; preds = %.preheader, %.outer.outer
  %.157.ph = phi ptr [ %.157.ph.ph, %.outer.outer ], [ %i.q, %.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.c
  %.157 = phi ptr [ %i.i, %bb.c ], [ %.157.ph, %.outer ] ; 3 uses
  %i.h = load i8, ptr %.157, align 1, !tbaa !52   ; 4 uses
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.157, i64 1 ; 7 uses
  %i.j = tail call ptr @__ctype_b_loc() #47
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !132
  %i.l = zext i8 %i.h to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !98
  %i.o = and i16 %i.n, 8192
  %.not69 = icmp eq i16 %i.o, 0
  br i1 %.not69, label %bb.d, label %bb.b, !llvm.loop !1326

bb.d:                                             ; preds = %bb.c
  switch i8 %i.h, label %.loopexit293 [
    i8 45, label %bb.e
    i8 59, label %bb.f
    i8 47, label %bb.g
    i8 91, label %.loopexit79
    i8 96, label %.loopexit79.loopexit
    i8 39, label %.loopexit79.loopexit
    i8 34, label %.loopexit79.loopexit
    i8 40, label %bb.j
    i8 41, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.i, align 1, !tbaa !52
  %.not72 = icmp eq i8 %i.p, 45
  br i1 %.not72, label %.preheader, label %.loopexit293

.preheader:                                       ; preds = %bb.e, %.preheader
  %.258 = phi ptr [ %i.q, %.preheader ], [ %i.i, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %.258, i64 1 ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !52
  switch i8 %i.r, label %.preheader [
    i8 0, label %.loopexit
    i8 10, label %.outer
  ]

bb.f:                                             ; preds = %bb.d
  %i.s = or i32 %.1.ph.ph, 512
  br label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %bb.f, %.loopexit293
  %.1.ph.ph.be = phi i32 [ %i.af, %.loopexit293 ], [ %i.s, %bb.f ]
  br label %.outer.outer, !llvm.loop !1326

.outer.outer:                                     ; preds = %.outer.outer.backedge, %.preheader80
  %.157.ph.ph = phi ptr [ %.056.ph, %.preheader80 ], [ %i.i, %.outer.outer.backedge ]
  %.1.ph.ph = phi i32 [ %.055.ph, %.preheader80 ], [ %.1.ph.ph.be, %.outer.outer.backedge ] ; 5 uses
  br label %.outer

bb.g:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.i, align 1, !tbaa !52
  %i.u = icmp eq i8 %i.t, 42
  br i1 %i.u, label %bb.h, label %.loopexit293

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.157, i64 2
  br i1 %or.cond7, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  store ptr @.str.1479, ptr %i.g, align 8, !tbaa !478
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i8 0, ptr %i.w, align 8, !tbaa !52
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  %i.x = and i32 %.1.ph.ph, 768
  %i.y = or disjoint i32 %i.x, 42
  br label %thread-pre-split.us.preheader

.loopexit79.loopexit:                             ; preds = %bb.d, %bb.d, %bb.d
  br label %.loopexit79

.loopexit79:                                      ; preds = %bb.d, %.loopexit79.loopexit
  %.053 = phi i8 [ %i.h, %.loopexit79.loopexit ], [ 93, %bb.d ] ; 4 uses
  %i.z = zext nneg i8 %.053 to i32
  %i.aa = or disjoint i32 %i.z, 256               ; 2 uses
  br i1 %or.cond7, label %setLexemeOpen.exit, label %bb.l

setLexemeOpen.exit:                               ; preds = %.loopexit79
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  store i8 %.053, ptr %i.ab, align 8, !tbaa !52
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !478
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  br i1 %or.cond7, label %.sink.split, label %.loopexit293

bb.k:                                             ; preds = %bb.d
  br i1 %or.cond7, label %.sink.split, label %.loopexit293

.sink.split:                                      ; preds = %bb.k, %bb.j
  %.sink245 = phi i32 [ 1, %bb.j ], [ -1, %bb.k ]
  %i.ac = load i32, ptr %i.f, align 4, !tbaa !477
  %i.ad = add nsw i32 %i.ac, %.sink245
  store i32 %i.ad, ptr %i.f, align 4, !tbaa !477
  store ptr null, ptr %i.g, align 8, !tbaa !478
  br label %.loopexit293

.loopexit293:                                     ; preds = %bb.d, %bb.e, %.sink.split, %bb.k, %bb.j, %bb.g
  %i.ae = and i32 %.1.ph.ph, -769
  %i.af = or disjoint i32 %i.ae, 256
  br label %.outer.outer.backedge

bb.l:                                             ; preds = %bb.a, %.loopexit79, %setLexemeOpen.exit
  %.359 = phi ptr [ %0, %bb.a ], [ %i.i, %setLexemeOpen.exit ], [ %i.i, %.loopexit79 ] ; 5 uses
  %.2 = phi i32 [ %1, %bb.a ], [ %i.aa, %setLexemeOpen.exit ], [ %i.aa, %.loopexit79 ] ; 7 uses
  %.0 = phi i8 [ %i.a, %bb.a ], [ %.053, %setLexemeOpen.exit ], [ %.053, %.loopexit79 ] ; 3 uses
  switch i8 %.0, label %.loopexit [
    i8 42, label %thread-pre-split.us.preheader
    i8 96, label %.split.us129
    i8 39, label %.split.us129
    i8 34, label %.split.us129
    i8 93, label %.split.us142
  ], !llvm.loop !1327

thread-pre-split.us.preheader:                    ; preds = %.thread, %bb.l
  %.2211 = phi i32 [ %i.y, %.thread ], [ %.2, %bb.l ] ; 2 uses
  %.359210 = phi ptr [ %i.v, %.thread ], [ %.359, %bb.l ]
  br label %thread-pre-split.us

thread-pre-split.us:                              ; preds = %bb.m, %thread-pre-split.us.preheader
  %.4.ph.us = phi ptr [ %.359210, %thread-pre-split.us.preheader ], [ %i.ah, %bb.m ] ; 2 uses
  %.pr.us = load i8, ptr %.4.ph.us, align 1, !tbaa !52
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %thread-pre-split.us
  %i.ag = phi i8 [ %.pr.us, %thread-pre-split.us ], [ %i.ai, %bb.n ]
  %.4.us.us = phi ptr [ %.4.ph.us, %thread-pre-split.us ], [ %i.ah, %bb.n ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.4.us.us, i64 1 ; 3 uses
  switch i8 %i.ag, label %thread-pre-split.us [
    i8 0, label %.loopexit
    i8 42, label %bb.n
  ], !llvm.loop !1327

bb.n:                                             ; preds = %bb.m
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !52  ; 2 uses
  %.not71.us.us = icmp eq i8 %i.ai, 47
  br i1 %.not71.us.us, label %.split.us, label %bb.m, !llvm.loop !1327

.split.us129:                                     ; preds = %bb.l, %bb.l, %bb.l
  %.pr.us132160 = load i8, ptr %.359, align 1, !tbaa !52 ; 2 uses
  %.not70.us111.us161 = icmp eq i8 %.pr.us132160, 0
  br i1 %.not70.us111.us161, label %.loopexit, label %.lr.ph164

.lr.ph164:                                        ; preds = %.split.us129, %thread-pre-split.backedge.us139
  %.pr.us132163 = phi i8 [ %.pr.us132, %thread-pre-split.backedge.us139 ], [ %.pr.us132160, %.split.us129 ]
  %.4.ph.us131162 = phi ptr [ %.4.ph.be.us140, %thread-pre-split.backedge.us139 ], [ %.359, %.split.us129 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.4.ph.us131162, i64 1 ; 3 uses
  %i.ak = icmp eq i8 %.pr.us132163, %.0
  br i1 %i.ak, label %.split115.us.us, label %thread-pre-split.backedge.us139, !llvm.loop !1327

.split115.us.us:                                  ; preds = %.lr.ph164
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !52
  %i.am = icmp eq i8 %i.al, %.0
  br i1 %i.am, label %bb.o, label %.loopexit74

bb.o:                                             ; preds = %.split115.us.us
  %i.an = getelementptr inbounds nuw i8, ptr %.4.ph.us131162, i64 2
  br label %thread-pre-split.backedge.us139

thread-pre-split.backedge.us139:                  ; preds = %.lr.ph164, %bb.o
  %.4.ph.be.us140 = phi ptr [ %i.an, %bb.o ], [ %i.aj, %.lr.ph164 ] ; 2 uses
  %.pr.us132 = load i8, ptr %.4.ph.be.us140, align 1, !tbaa !52 ; 2 uses
  %.not70.us111.us = icmp eq i8 %.pr.us132, 0
  br i1 %.not70.us111.us, label %.loopexit, label %.lr.ph164, !llvm.loop !1327

.split.us142:                                     ; preds = %bb.l
  %.pr.us145165 = load i8, ptr %.359, align 1, !tbaa !52 ; 2 uses
  %.not70.us120.us166 = icmp eq i8 %.pr.us145165, 0
  br i1 %.not70.us120.us166, label %.loopexit, label %thread-pre-split.loopexit.split.split.split.us.us

thread-pre-split.us143:                           ; preds = %thread-pre-split.loopexit.split.split.split.us.us
  %.pr.us145 = load i8, ptr %i.ao, align 1, !tbaa !52 ; 2 uses
  %.not70.us120.us = icmp eq i8 %.pr.us145, 0
  br i1 %.not70.us120.us, label %.loopexit, label %thread-pre-split.loopexit.split.split.split.us.us, !llvm.loop !1327

thread-pre-split.loopexit.split.split.split.us.us: ; preds = %.split.us142, %thread-pre-split.us143
  %.4.ph.us144.pn = phi ptr [ %i.ao, %thread-pre-split.us143 ], [ %.359, %.split.us142 ]
  %.pr.us145167 = phi i8 [ %.pr.us145, %thread-pre-split.us143 ], [ %.pr.us145165, %.split.us142 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.4.ph.us144.pn, i64 1 ; 3 uses
  %i.ap = icmp eq i8 %.pr.us145167, 93
  br i1 %i.ap, label %.loopexit74, label %thread-pre-split.us143, !llvm.loop !1327

.split.us:                                        ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %.4.us.us, i64 2
  %i.ar = icmp ne ptr %2, null
  %i.as = load i32, ptr @stdin_is_interactive, align 4 ; 2 uses
  %i.at = icmp ne i32 %i.as, 0
  %or.cond9 = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %or.cond9, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.split.us
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 136
  store ptr null, ptr %i.au, align 8, !tbaa !478
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i8 0, ptr %i.av, align 8, !tbaa !52
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.split.us
  %i.aw = and i32 %.2211, 768
  br label %.preheader80

.loopexit74:                                      ; preds = %thread-pre-split.loopexit.split.split.split.us.us, %.split115.us.us
  %i.ax = phi ptr [ %i.aj, %.split115.us.us ], [ %i.ao, %thread-pre-split.loopexit.split.split.split.us.us ]
  %i.ay = icmp ne ptr %2, null
  %i.az = load i32, ptr @stdin_is_interactive, align 4 ; 2 uses
  %i.ba = icmp ne i32 %i.az, 0
  %or.cond11 = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond11, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit74
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 136
  store ptr null, ptr %i.bb, align 8, !tbaa !478
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i8 0, ptr %i.bc, align 8, !tbaa !52
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit74
  %i.bd = and i32 %.2, 768
  br label %.preheader80

.loopexit:                                        ; preds = %bb.b, %.preheader, %thread-pre-split.us143, %thread-pre-split.backedge.us139, %bb.m, %bb.l, %.split.us142, %.split.us129
  %.054 = phi i32 [ %.2211, %bb.m ], [ %.2, %thread-pre-split.us143 ], [ %.2, %.split.us129 ], [ %.2, %thread-pre-split.backedge.us139 ], [ %.1.ph.ph, %.preheader ], [ %.2, %bb.l ], [ %.2, %.split.us142 ], [ %.1.ph.ph, %bb.b ]
  ret i32 %.054
}

declare ptr @readline(ptr noundef) local_unnamed_addr #5

declare void @add_history(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #31

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #15

declare ptr @getpwuid(i32 noundef) local_unnamed_addr #5

declare ptr @rl_completion_matches(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noalias ptr @readline_completion_generator(ptr noundef %0, i32 noundef %1) #4 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @readline_completion_generator.pStmt, align 8, !tbaa !109
  %i.c = tail call i32 @sqlite3_finalize(ptr noundef %i.b) #45 ; 0 uses
  %i.d = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.2023, ptr noundef %0) #45 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %shell_check_oom.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %bb.b
  %i.f = load ptr, ptr @globalDb, align 8, !tbaa !218
  %i.g = tail call i32 @sqlite3_prepare_v2(ptr noundef %i.f, ptr noundef nonnull %i.d, i32 noundef -1, ptr noundef nonnull @readline_completion_generator.pStmt, ptr noundef null) #45 ; 0 uses
  tail call void @sqlite3_free(ptr noundef nonnull %i.d) #45
  br label %bb.d

bb.d:                                             ; preds = %shell_check_oom.exit, %bb.a
  %i.h = load ptr, ptr @readline_completion_generator.pStmt, align 8, !tbaa !109
  %i.i = tail call i32 @sqlite3_step(ptr noundef %i.h) #45
  %i.j = icmp eq i32 %i.i, 100
  %i.k = load ptr, ptr @readline_completion_generator.pStmt, align 8, !tbaa !109 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @sqlite3_column_text(ptr noundef %i.k, i32 noundef 0) #45 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call noalias ptr @strdup(ptr noundef nonnull %i.l) #45
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.n = tail call i32 @sqlite3_finalize(ptr noundef %i.k) #45 ; 0 uses
  store ptr null, ptr @readline_completion_generator.pStmt, align 8, !tbaa !109
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %.0 = phi ptr [ null, %bb.g ], [ %i.m, %bb.f ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #32

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #32

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #42

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #32

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
end_hunk_6
begin_hunk_7_@llvm.vector.reduce.add.v2i64
!1075 = distinct !{!1075, !51}
!1076 = distinct !{!1076, !51, !103, !104}
!1077 = distinct !{!1077, !51, !103, !104}
!1078 = distinct !{!1078, !96}
!1079 = distinct !{!1079, !51, !103}
!1080 = !{!"branch_weights", i32 8, i32 24}
!1081 = distinct !{!1081, !51}
!1082 = distinct !{!1082, !51}
!1083 = distinct !{!1083, !51}
!1084 = distinct !{!1084, !51}
!1085 = distinct !{!1085, !51}
!1086 = distinct !{!1086, !51}
!1087 = distinct !{!1087, !51}
!1088 = distinct !{!1088, !51}
!1089 = distinct !{!1089, !51}
!1090 = distinct !{!1090, !51}
!1091 = distinct !{!1091, !51}
!1092 = distinct !{!1092, !51}
!1093 = distinct !{!1093, !51}
!1094 = distinct !{!1094, !51}
!1095 = distinct !{!1095, !51}
!1096 = distinct !{!1096, !51}
!1097 = !{!488, !45, i64 80}
!1098 = distinct !{!1098, !51}
!1099 = !{!514, !60, i64 8}
!1100 = !{!514, !60, i64 16}
!1101 = !{!514, !60, i64 24}
!1102 = !{!514, !60, i64 32}
!1103 = distinct !{!1103, !51}
!1104 = distinct !{!1104, !51}
!1105 = distinct !{!1105, !51}
!1106 = distinct !{!1106, !51}
!1107 = distinct !{!1107, !51}
!1108 = distinct !{!1108, !51}
!1109 = distinct !{!1109, !51}
!1110 = distinct !{!1110, !51}
!1111 = !{!521, !64, i64 32}
!1112 = distinct !{!1112, !51}
!1113 = !{!521, !159, i64 136}
!1114 = !{!521, !483, i64 0}
!1115 = distinct !{!1115, !51}
!1116 = distinct !{!1116, !51}
!1117 = distinct !{!1117, !51, !110}
!1118 = distinct !{!1118, !51, !110}
!1119 = distinct !{!1119, !51, !110}
!1120 = distinct !{!1120, !51}
!1121 = distinct !{null, null, null}
!1122 = distinct !{null, null}
!1123 = distinct !{null}
!1124 = distinct !{null}
!1125 = distinct !{!1125, !51}
!1126 = !{!558, !60, i64 56}
!1127 = !{!558, !556, i64 48}
!1128 = distinct !{!1128, !51}
!1129 = !{!569, !62, i64 44}
!1130 = !{!569, !45, i64 48}
!1131 = distinct !{!1131, !51}
!1132 = distinct !{!1132, !51}
!1133 = distinct !{!1133, !51}
!1134 = distinct !{!1134, !51}
!1135 = !{!558, !60, i64 96}
!1136 = distinct !{!1136, !51}
!1137 = !{!"branch_weights", i32 1, i32 1048575}
!1138 = distinct !{!1138, !51}
!1139 = !{!568, !62, i64 0}
!1140 = !{!568, !62, i64 2}
!1141 = !{!568, !62, i64 4}
!1142 = !{!568, !62, i64 6}
!1143 = !{!568, !45, i64 8}
!1144 = distinct !{!1144, !51}
!1145 = !{!558, !64, i64 16}
!1146 = distinct !{!1146, !51}
!1147 = !{!619, !45, i64 8}
!1148 = distinct !{!1148, !51}
!1149 = distinct !{!1149, !51}
!1150 = distinct !{!1150, !51}
!1151 = !{!199, !45, i64 8}
!1152 = distinct !{!1152, !51}
!1153 = distinct !{!1153, !51}
!1154 = distinct !{!1154, !51}
!1155 = distinct !{!1155, !51}
!1156 = distinct !{!1156, !51}
!1157 = distinct !{!1157, !51}
!1158 = distinct !{!1158, !51}
!1159 = distinct !{!1159, !51}
!1160 = !{!199, !45, i64 16}
!1161 = !{!173, !58, i64 72}
!1162 = distinct !{!1162, !96}
!1163 = !{!172, !171, i64 0}
!1164 = !{!224, !45, i64 0}
!1165 = !{!224, !60, i64 8}
!1166 = !{!224, !219, i64 16}
!1167 = !{!224, !60, i64 32}
!1168 = !{!224, !60, i64 24}
!1169 = !{!220, !219, i64 16}
!1170 = !{!220, !219, i64 24}
!1171 = !{!267, !263, i64 0}
!1172 = distinct !{!1172, !51}
!1173 = distinct !{!1173, !51}
!1174 = distinct !{!1174, !51}
!1175 = distinct !{!1175, !51}
!1176 = !{!643, !64, i64 16}
!1177 = distinct !{!1177, !110}
!1178 = !{!648, !45, i64 36}
!1179 = !{!647, !60, i64 8}
!1180 = !{!648, !60, i64 88}
!1181 = !{!648, !60, i64 128}
!1182 = distinct !{!1182, !51}
!1183 = distinct !{!1183, !51}
!1184 = distinct !{!1184, !51}
!1185 = distinct !{!1185, !51}
!1186 = distinct !{!1186, !51}
!1187 = distinct !{!1187, !51, !103, !104}
!1188 = distinct !{!1188, !51}
!1189 = distinct !{!1189, !51}
!1190 = distinct !{!1190, !51, !104, !103}
!1191 = distinct !{!1191, !51}
!1192 = distinct !{!1192, !51}
!1193 = distinct !{!1193, !51}
!1194 = !{!336, !45, i64 40}
!1195 = !{!336, !45, i64 44}
!1196 = distinct !{!1196, !51}
!1197 = distinct !{!1197, !51}
!1198 = distinct !{!1198, !51}
!1199 = distinct !{!1199, !51}
!1200 = distinct !{!1200, !51}
!1201 = distinct !{!1201, !51}
!1202 = distinct !{!1202, !51}
!1203 = distinct !{!1203, !51}
!1204 = distinct !{!1204, !51}
!1205 = distinct !{!1205, !51, !103, !104}
!1206 = distinct !{!1206, !51, !104, !103}
!1207 = distinct !{!1207, !51}
!1208 = distinct !{!1208, !51}
!1209 = distinct !{!1209, !51}
!1210 = distinct !{!1210, !51}
!1211 = distinct !{!1211, !51}
!1212 = distinct !{!1212, !51}
!1213 = distinct !{!1213, !51}
!1214 = distinct !{!1214, !51}
!1215 = distinct !{!1215, !51}
!1216 = distinct !{!1216, !51}
!1217 = distinct !{!1217, !51}
!1218 = distinct !{!1218, !51, !110}
!1219 = distinct !{!1219, !51}
!1220 = distinct !{!1220, !51}
!1221 = distinct !{!1221, !51}
!1222 = distinct !{!1222, !51}
!1223 = distinct !{!1223, !51}
!1224 = distinct !{!1224, !51}
!1225 = distinct !{!1225, !51}
!1226 = distinct !{!1226, !51}
!1227 = distinct !{!1227, !51}
!1228 = distinct !{!1228, !51}
!1229 = !{!65, !54, i64 96}
!1230 = !{!65, !54, i64 112}
!1231 = !{!65, !44, i64 6}
!1232 = !{!405, !44, i64 16}
!1233 = !{!65, !62, i64 16}
!1234 = !{!65, !44, i64 5}
!1235 = !{!65, !44, i64 3}
!1236 = !{!65, !44, i64 1}
!1237 = distinct !{!1237, !51}
!1238 = distinct !{!1238, !51}
!1239 = distinct !{!1239, !51}
!1240 = distinct !{!1240, !51}
!1241 = distinct !{!1241, !51}
!1242 = distinct !{!1242, !51}
!1243 = distinct !{!1243, !51}
!1244 = distinct !{!1244, !51}
!1245 = distinct !{!1245, !51}
!1246 = distinct !{!1246, !51}
!1247 = distinct !{!1247, !51}
!1248 = distinct !{!1248, !51, !103, !104}
!1249 = distinct !{!1249, !51, !103, !104}
!1250 = distinct !{!1250, !51, !104, !103}
!1251 = distinct !{!1251, !51}
!1252 = distinct !{!1252, !51}
!1253 = distinct !{!1253, !51}
!1254 = distinct !{!1254, !51}
!1255 = !{ptr @import_cleanup}
!1256 = !{ptr @ascii_read_one_field, ptr @csv_read_one_field}
!1257 = !{!673, !45, i64 72}
!1258 = !{!673, !45, i64 68}
!1259 = distinct !{!1259, !51}
!1260 = distinct !{!1260, !51}
!1261 = distinct !{!1261, !51}
!1262 = distinct !{!1262, !51}
!1263 = distinct !{!1263, !51}
!1264 = distinct !{!1264, !51}
!1265 = distinct !{!1265, !51}
!1266 = distinct !{!1266, !51}
!1267 = distinct !{!1267, !51}
!1268 = distinct !{!1268, !51}
!1269 = distinct !{!1269, !51}
!1270 = distinct !{!1270, !51, !110}
!1271 = !{!342, !64, i64 4368}
!1272 = !{!342, !45, i64 4356}
!1273 = !{!342, !44, i64 4332}
!1274 = !{!342, !62, i64 4336}
!1275 = !{!405, !44, i64 18}
!1276 = distinct !{!1276, !51}
!1277 = distinct !{!1277, !51}
!1278 = distinct !{!1278, !51}
!1279 = distinct !{!1279, !51}
!1280 = distinct !{!1280, !51, !110}
!1281 = distinct !{!1281, !51}
!1282 = distinct !{!1282, !51}
!1283 = distinct !{!1283, !51}
!1284 = distinct !{!1284, !51}
!1285 = distinct !{!1285, !51}
!1286 = distinct !{!1286, !51}
!1287 = distinct !{!1287, !51}
!1288 = distinct !{!1288, !51}
!1289 = distinct !{!1289, !51, !110}
!1290 = distinct !{!1290, !51}
!1291 = distinct !{!1291, !51}
!1292 = distinct !{!1292, !51}
!1293 = distinct !{!1293, !51}
!1294 = distinct !{!1294, !51}
!1295 = distinct !{!1295, !51}
!1296 = distinct !{!1296, !51}
!1297 = distinct !{!1297, !51}
!1298 = distinct !{!1298, !51}
!1299 = distinct !{!1299, !51}
!1300 = distinct !{!1300, !51}
!1301 = distinct !{!1301, !51}
!1302 = !{ptr @tryToCloneData}
!1303 = distinct !{!1303, !51, !103, !104}
!1304 = distinct !{!1304, !51, !103, !104}
!1305 = distinct !{!1305, !51, !104, !103}
!1306 = distinct !{!1306, !51}
!1307 = distinct !{!1307, !51}
!1308 = distinct !{!1308, !51}
!1309 = distinct !{!1309, !51}
!1310 = distinct !{!1310, !51}
!1311 = distinct !{!1311, !51}
!1312 = distinct !{!1312, !51}
!1313 = distinct !{!1313, !51}
!1314 = distinct !{!1314, !51}
!1315 = distinct !{!1315, !51}
!1316 = distinct !{!1316, !51}
!1317 = distinct !{!1317, !51}
!1318 = distinct !{!1318, !51}
!1319 = !{!673, !45, i64 76}
!1320 = distinct !{!1320, !51}
!1321 = distinct !{!1321, !51}
!1322 = distinct !{!1322, !51}
!1323 = distinct !{!1323, !51}
!1324 = distinct !{!1324, !51}
!1325 = distinct !{!1325, !51, !110}
!1326 = distinct !{!1326, !51}
!1327 = distinct !{!1327, !51}
end_hunk_7
