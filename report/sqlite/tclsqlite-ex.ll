Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@DbObjCmd:bb.a

bb.dp:                                            ; preds = %._crit_edge1489, %bb.dn
  %i.qq = phi i32 [ %.pre1490, %._crit_edge1489 ], [ -1, %bb.dn ]
  %i.qr = load ptr, ptr %0, align 8, !tbaa !117
  %i.qs = getelementptr inbounds nuw [16 x i8], ptr @DbObjCmd.aDbConfig, i64 %.lcssa1446
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !359
  %i.qv = call i32 (ptr, i32, ...) @sqlite3_db_config(ptr noundef %i.qr, i32 noundef %i.qu, i32 noundef %i.qq, ptr noundef nonnull %i.m) #20 ; 0 uses
  %i.qw = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 432
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !150
  %i.qz = load i32, ptr %i.m, align 4, !tbaa !30
  %i.ra = call ptr %i.qy(i32 noundef %i.qz) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cv, %bb.dp
  %.1962 = phi ptr [ %i.ra, %bb.dp ], [ %i.nx, %bb.cv ]
  %i.rb = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 1896
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !151
  call void %i.rd(ptr noundef %1, ptr noundef %.1962) #20
  br label %.critedge1185

.critedge1183:                                    ; preds = %bb.do, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  br label %.critedge1185

bb.dq:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #20
  %i.re = add nsw i32 %2, -8
  %or.cond37 = icmp ult i32 %i.re, -3
  br i1 %or.cond37, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.rf = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 2128
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !102
  call void %i.rh(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.222) #20
  br label %.thread1254

bb.ds:                                            ; preds = %bb.dq
  %i.ri = icmp samesign ugt i32 %2, 5
  br i1 %i.ri, label %bb.dt, label %.thread1244

bb.dt:                                            ; preds = %bb.ds
  %i.rj = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 344
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !103
  %i.rm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !105
  %i.ro = call ptr %i.rl(ptr noundef %i.rn, ptr noundef null) #20 ; 2 uses
  %.not1330 = icmp eq i32 %2, 6
  br i1 %.not1330, label %.thread1244, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.rp = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 344
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !103
  %i.rs = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !105
  %i.ru = call ptr %i.rr(ptr noundef %i.rt, ptr noundef null) #20
  br label %.thread1244

.thread1244:                                      ; preds = %bb.ds, %bb.dt, %bb.du
  %.09461246 = phi ptr [ %i.ro, %bb.du ], [ %i.ro, %bb.dt ], [ @.str.223, %bb.ds ] ; 3 uses
  %.0945 = phi ptr [ %i.ru, %bb.du ], [ @.str.6, %bb.dt ], [ @.str.6, %bb.ds ] ; 2 uses
  %i.rv = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 344
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !103
  %i.ry = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !105
  %i.sa = call ptr %i.rx(ptr noundef %i.rz, ptr noundef null) #20 ; 7 uses
  %i.sb = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 344
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !103
  %i.se = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !105
  %i.sg = call ptr %i.sd(ptr noundef %i.sf, ptr noundef null) #20 ; 3 uses
  %i.sh = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 344
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !103
  %i.sk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !105
  %i.sm = call ptr %i.sj(ptr noundef %i.sl, ptr noundef null) #20 ; 3 uses
  %strlen.i = call i64 @strlen(ptr nonnull readonly dereferenceable(1) %.09461246)
  %strlen.i1224 = call i64 @strlen(ptr nonnull readonly dereferenceable(1) %.0945)
  %i.sn = and i64 %strlen.i, 1073741823           ; 3 uses
  %i.so = icmp eq i64 %i.sn, 0
  br i1 %i.so, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %.thread1244
  %i.sp = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 576
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !106
  call void (ptr, ...) %i.sr(ptr noundef %1, ptr noundef nonnull @.str.224, ptr noundef null) #20
  br label %.thread1254

bb.dw:                                            ; preds = %.thread1244
  %i.ss = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.sa, ptr noundef nonnull dereferenceable(9) @.str.225) #21
  %.not1145 = icmp eq i32 %i.ss, 0
  br i1 %.not1145, label %bb.ec, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.st = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.sa, ptr noundef nonnull dereferenceable(6) @.str.226) #21
  %.not1146 = icmp eq i32 %i.st, 0
  br i1 %.not1146, label %bb.ec, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.su = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.sa, ptr noundef nonnull dereferenceable(5) @.str.227) #21
  %.not1147 = icmp eq i32 %i.su, 0
  br i1 %.not1147, label %bb.ec, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.sv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.sa, ptr noundef nonnull dereferenceable(7) @.str.228) #21
  %.not1148 = icmp eq i32 %i.sv, 0
  br i1 %.not1148, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.sw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.sa, ptr noundef nonnull dereferenceable(8) @.str.229) #21
  %.not1149 = icmp eq i32 %i.sw, 0
  br i1 %.not1149, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.sx = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 576
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !106
  call void (ptr, ...) %i.sz(ptr noundef %1, ptr noundef nonnull @.str.230, ptr noundef nonnull %i.sa, ptr noundef nonnull @.str.231, ptr noundef null) #20
  br label %.thread1254

bb.ec:                                            ; preds = %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw
  %i.ta = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.232, ptr noundef %i.sg) #20 ; 4 uses
  %i.tb = icmp eq ptr %i.ta, null
  br i1 %i.tb, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.tc = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 576
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !106
  call void (ptr, ...) %i.te(ptr noundef %1, ptr noundef nonnull @.str.233, ptr noundef %i.sg, ptr noundef null) #20
  br label %.thread1254

bb.ee:                                            ; preds = %bb.ec
  %strlen.i1225 = call i64 @strlen(ptr nonnull readonly dereferenceable(1) %i.ta)
  %i.tf = trunc i64 %strlen.i1225 to i32
  %i.tg = and i32 %i.tf, 1073741823
  %i.th = load ptr, ptr %0, align 8, !tbaa !117
  %i.ti = call i32 @sqlite3_prepare(ptr noundef %i.th, ptr noundef nonnull %i.ta, i32 noundef -1, ptr noundef nonnull %i.n, ptr noundef null) #20
  call void @sqlite3_free(ptr noundef nonnull %i.ta) #20
  %.not1150 = icmp eq i32 %i.ti, 0
  br i1 %.not1150, label %bb.ef, label %.thread1247

.thread1247:                                      ; preds = %bb.ee
  %i.tj = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 576
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !106
  %i.tm = load ptr, ptr %0, align 8, !tbaa !117
  %i.tn = call ptr @sqlite3_errmsg(ptr noundef %i.tm) #20
  call void (ptr, ...) %i.tl(ptr noundef %1, ptr noundef nonnull @.str.234, ptr noundef %i.tn, ptr noundef null) #20
  %i.to = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.tp = call i32 @sqlite3_finalize(ptr noundef %i.to) #20 ; 0 uses
  br label %.thread1254

bb.ef:                                            ; preds = %bb.ee
  %i.tq = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.tr = call i32 @sqlite3_column_count(ptr noundef %i.tq) #20 ; 13 uses
  %i.ts = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.tt = call i32 @sqlite3_finalize(ptr noundef %i.ts) #20 ; 0 uses
  %i.tu = icmp eq i32 %i.tr, 0
  br i1 %i.tu, label %.thread1254, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.tv = add nuw nsw i32 %i.tg, 50               ; 2 uses
  %i.tw = shl nsw i32 %i.tr, 1
  %i.tx = add nsw i32 %i.tw, %i.tv
  %i.ty = sext i32 %i.tx to i64
  %i.tz = call noalias ptr @malloc(i64 noundef %i.ty) #22 ; 10 uses
  %i.ua = icmp eq ptr %i.tz, null
  br i1 %i.ua, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.ub = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 576
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !106
  call void (ptr, ...) %i.ud(ptr noundef %1, ptr noundef nonnull @.str.235, ptr noundef null) #20
  br label %.thread1254

bb.ei:                                            ; preds = %bb.eg
  %i.ue = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.tv, ptr noundef nonnull %i.tz, ptr noundef nonnull @.str.236, ptr noundef nonnull %i.sa, ptr noundef %i.sg) #20 ; 0 uses
  %strlen.i1226 = call i64 @strlen(ptr nonnull readonly dereferenceable(1) %i.tz) ; 2 uses
  %i.uf = and i64 %strlen.i1226, 1073741823
  %i.ug = icmp sgt i32 %i.tr, 1
  br i1 %i.ug, label %iter.check, label %._crit_edge1428

iter.check:                                       ; preds = %bb.ei
  %i.uh = and i64 %strlen.i1226, 1073741823       ; 5 uses
  %i.ui = add nsw i32 %i.tr, -1
  %i.uj = zext i32 %i.ui to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.tr, 5
  br i1 %min.iters.check, label %.lr.ph1427.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1659 = icmp ult i32 %i.tr, 17
  br i1 %min.iters.check1659, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.uk = and i64 %i.uj, 12
  %n.vec = and i64 %i.uj, 4294967280              ; 5 uses
  %i.ul = shl nuw nsw i64 %n.vec, 1
  %i.um = add nuw nsw i64 %i.uh, %i.ul            ; 2 uses
  %i.un = trunc nuw i64 %n.vec to i32
  %i.uo = or disjoint i32 %i.un, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.up = shl nuw i64 %index, 1
  %i.uq = add nuw i64 %i.uh, %i.up                ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.uq
  %i.us = getelementptr i8, ptr %i.tz, i64 %i.uq
  %i.ut = getelementptr i8, ptr %i.us, i64 16
  store <16 x i8> <i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63>, ptr %i.ur, align 1, !tbaa !29
  store <16 x i8> <i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63>, ptr %i.ut, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.uu = icmp eq i64 %index.next, %n.vec
  br i1 %i.uu, label %middle.block, label %vector.body, !llvm.loop !342

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.uj
  br i1 %cmp.n, label %._crit_edge1428.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.uk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1427.preheader, label %vec.epilog.ph, !prof !361

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1661 = and i64 %i.uj, 4294967292          ; 4 uses
  %i.uv = shl nuw nsw i64 %n.vec1661, 1
  %i.uw = add nuw nsw i64 %i.uh, %i.uv            ; 2 uses
  %i.ux = trunc nuw i64 %n.vec1661 to i32
  %i.uy = or disjoint i32 %i.ux, 1
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.uh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1662 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1663, %vec.epilog.vector.body ] ; 2 uses
  %i.va = shl nuw i64 %index1662, 1
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.va
  store <8 x i8> <i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63>, ptr %i.vb, align 1, !tbaa !29
  %index.next1663 = add nuw i64 %index1662, 4     ; 2 uses
  %i.vc = icmp eq i64 %index.next1663, %n.vec1661
  br i1 %i.vc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !343

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1664 = icmp eq i64 %n.vec1661, %i.uj
  br i1 %cmp.n1664, label %._crit_edge1428.loopexit, label %.lr.ph1427.preheader

.lr.ph1427.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.uh, %iter.check ], [ %i.um, %vec.epilog.iter.check ], [ %i.uw, %vec.epilog.middle.block ]
  %.09531424.ph = phi i32 [ 1, %iter.check ], [ %i.uo, %vec.epilog.iter.check ], [ %i.uy, %vec.epilog.middle.block ]
  br label %.lr.ph1427

.lr.ph1427:                                       ; preds = %.lr.ph1427.preheader, %.lr.ph1427
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph1427 ], [ %indvars.iv.ph, %.lr.ph1427.preheader ] ; 2 uses
  %.09531424 = phi i32 [ %i.vf, %.lr.ph1427 ], [ %.09531424.ph, %.lr.ph1427.preheader ]
  %i.vd = getelementptr inbounds nuw i8, ptr %i.tz, i64 %indvars.iv ; 2 uses
  store i8 44, ptr %i.vd, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 1
  store i8 63, ptr %i.ve, align 1, !tbaa !29
  %i.vf = add nuw nsw i32 %.09531424, 1           ; 2 uses
  %exitcond1475.not = icmp eq i32 %i.vf, %i.tr
  br i1 %exitcond1475.not, label %._crit_edge1428.loopexit, label %.lr.ph1427, !llvm.loop !344

._crit_edge1428.loopexit:                         ; preds = %.lr.ph1427, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.uw, %vec.epilog.middle.block ], [ %i.um, %middle.block ], [ %indvars.iv.next, %.lr.ph1427 ]
  %i.vg = and i64 %indvars.iv.next.lcssa, 4294967295
  br label %._crit_edge1428

._crit_edge1428:                                  ; preds = %._crit_edge1428.loopexit, %bb.ei
  %.0952.lcssa = phi i64 [ %i.uf, %bb.ei ], [ %i.vg, %._crit_edge1428.loopexit ]
  %i.vh = getelementptr inbounds nuw i8, ptr %i.tz, i64 %.0952.lcssa ; 2 uses
  store i8 41, ptr %i.vh, align 1, !tbaa !29
  %i.vi = getelementptr i8, ptr %i.vh, i64 1
  store i8 0, ptr %i.vi, align 1, !tbaa !29
  %i.vj = load ptr, ptr %0, align 8, !tbaa !117
  %i.vk = call i32 @sqlite3_prepare(ptr noundef %i.vj, ptr noundef nonnull %i.tz, i32 noundef -1, ptr noundef nonnull %i.n, ptr noundef null) #20
  call void @free(ptr noundef nonnull %i.tz) #20
  %.not1151 = icmp eq i32 %i.vk, 0
  %i.vl = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %.not1151, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %._crit_edge1428
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 576
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !106
  %i.vo = load ptr, ptr %0, align 8, !tbaa !117
  %i.vp = call ptr @sqlite3_errmsg(ptr noundef %i.vo) #20
  call void (ptr, ...) %i.vn(ptr noundef %1, ptr noundef nonnull @.str.234, ptr noundef %i.vp, ptr noundef null) #20
  %i.vq = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.vr = call i32 @sqlite3_finalize(ptr noundef %i.vq) #20 ; 0 uses
  br label %.thread1254

bb.ek:                                            ; preds = %._crit_edge1428
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vl, i64 1600
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !362
  %i.vu = call ptr %i.vt(ptr noundef %1, ptr noundef %i.sm, ptr noundef nonnull @.str.237, i32 noundef 438) #20 ; 6 uses
  %i.vv = icmp eq ptr %i.vu, null
  br i1 %i.vv, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.vw = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.vx = call i32 @sqlite3_finalize(ptr noundef %i.vw) #20 ; 0 uses
  br label %.thread1254

bb.em:                                            ; preds = %bb.ek
  %i.vy = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 1816
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !363
  %i.wb = call i32 %i.wa(ptr noundef null, ptr noundef nonnull %i.vu, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.239) #20 ; 0 uses
  %i.wc = add nsw i32 %i.tr, 1
  %i.wd = sext i32 %i.wc to i64
  %i.we = shl nsw i64 %i.wd, 3
  %i.wf = call noalias ptr @malloc(i64 noundef %i.we) #22 ; 5 uses
  %i.wg = icmp eq ptr %i.wf, null
  %i.wh = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %i.wg, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 576
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !106
  call void (ptr, ...) %i.wj(ptr noundef %1, ptr noundef nonnull @.str.235, ptr noundef null) #20
  %i.wk = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 664
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !364
  %i.wn = call i32 %i.wm(ptr noundef %1, ptr noundef nonnull %i.vu) #20 ; 0 uses
  br label %.thread1254

bb.eo:                                            ; preds = %bb.em
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wh, i64 456
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !152
  %i.wq = call ptr %i.wp() #20                    ; 9 uses
  %i.wr = load i32, ptr %i.wq, align 8, !tbaa !143
  %i.ws = add nsw i32 %i.wr, 1
  store i32 %i.ws, ptr %i.wq, align 8, !tbaa !143
  %i.wt = load ptr, ptr %0, align 8, !tbaa !117
  %i.wu = call i32 @sqlite3_exec(ptr noundef %i.wt, ptr noundef nonnull @.str.240, ptr noundef null, ptr noundef null, ptr noundef null) #20 ; 0 uses
  %i.wv = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 1376
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !365
  %i.wy = call i32 %i.wx(ptr noundef nonnull %i.vu, ptr noundef nonnull %i.wq) #20
  %i.wz = icmp sgt i32 %i.wy, -1
  br i1 %i.wz, label %.lr.ph1442, label %.loopexit1332

.lr.ph1442:                                       ; preds = %bb.eo
  %i.xa = icmp sgt i32 %i.tr, 0
  %i.xb = and i64 %strlen.i1224, 1073741823
  %.not1155 = icmp eq i64 %i.xb, 0
  %wide.trip.count = zext nneg i32 %i.tr to i64
  br label %bb.ep

bb.ep:                                            ; preds = %.lr.ph1442, %bb.fb
  %.09471440 = phi i32 [ 0, %.lr.ph1442 ], [ %i.xc, %bb.fb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #20
  %i.xc = add nuw nsw i32 %.09471440, 1           ; 4 uses
  %i.xd = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 280
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !153
  %i.xg = call ptr %i.xf(ptr noundef nonnull %i.wq, ptr noundef nonnull %i.p) #20 ; 3 uses
  store ptr %i.xg, ptr %i.wf, align 8, !tbaa !66
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !29  ; 2 uses
  %.not11521430 = icmp eq i8 %i.xh, 0
  br i1 %.not11521430, label %._crit_edge1435, label %.lr.ph1434

.lr.ph1434:                                       ; preds = %bb.ep, %bb.et
  %i.xi = phi i8 [ %i.xu, %bb.et ], [ %i.xh, %bb.ep ]
  %.09431432 = phi ptr [ %i.xt, %bb.et ], [ %i.xg, %bb.ep ] ; 6 uses
  %.19541431 = phi i32 [ %.2955, %bb.et ], [ 0, %bb.ep ] ; 3 uses
  %i.xj = load i8, ptr %.09461246, align 1, !tbaa !29
  %i.xk = icmp eq i8 %i.xi, %i.xj
  br i1 %i.xk, label %bb.eq, label %bb.et

bb.eq:                                            ; preds = %.lr.ph1434
  %i.xl = call i32 @strncmp(ptr noundef nonnull %.09431432, ptr noundef nonnull %.09461246, i64 noundef %i.sn) #21
  %i.xm = icmp eq i32 %i.xl, 0
  br i1 %i.xm, label %bb.er, label %bb.et

bb.er:                                            ; preds = %bb.eq
  store i8 0, ptr %.09431432, align 1, !tbaa !29
  %i.xn = add nsw i32 %.19541431, 1               ; 4 uses
  %i.xo = icmp slt i32 %i.xn, %i.tr
  br i1 %i.xo, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.xp = getelementptr i8, ptr %.09431432, i64 %i.sn ; 2 uses
  %i.xq = sext i32 %i.xn to i64
  %i.xr = getelementptr inbounds [8 x i8], ptr %i.wf, i64 %i.xq
  store ptr %i.xp, ptr %i.xr, align 8, !tbaa !66
  %i.xs = getelementptr i8, ptr %i.xp, i64 -1
  br label %bb.et

bb.et:                                            ; preds = %.lr.ph1434, %bb.eq, %bb.es, %bb.er
  %.2955 = phi i32 [ %i.xn, %bb.es ], [ %i.xn, %bb.er ], [ %.19541431, %bb.eq ], [ %.19541431, %.lr.ph1434 ] ; 2 uses
  %.1944 = phi ptr [ %i.xs, %bb.es ], [ %.09431432, %bb.er ], [ %.09431432, %bb.eq ], [ %.09431432, %.lr.ph1434 ]
  %i.xt = getelementptr inbounds nuw i8, ptr %.1944, i64 1 ; 2 uses
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !29  ; 2 uses
  %.not1152 = icmp eq i8 %i.xu, 0
  br i1 %.not1152, label %._crit_edge1435.loopexit, label %.lr.ph1434, !llvm.loop !345

._crit_edge1435.loopexit:                         ; preds = %bb.et
  %i.xv = add nsw i32 %.2955, 1
  br label %._crit_edge1435

._crit_edge1435:                                  ; preds = %._crit_edge1435.loopexit, %bb.ep
  %.1954.lcssa = phi i32 [ 1, %bb.ep ], [ %i.xv, %._crit_edge1435.loopexit ] ; 2 uses
  %.not1153 = icmp eq i32 %.1954.lcssa, %i.tr
  br i1 %.not1153, label %.preheader1331, label %bb.eu

.preheader1331:                                   ; preds = %._crit_edge1435
  br i1 %i.xa, label %.lr.ph1438, label %._crit_edge1439

bb.eu:                                            ; preds = %._crit_edge1435
  %strlen.i1227 = call i64 @strlen(ptr nonnull readonly dereferenceable(1) %i.sm)
  %i.xw = trunc i64 %strlen.i1227 to i32
  %i.xx = and i32 %i.xw, 1073741823
  %i.xy = add nuw nsw i32 %i.xx, 200              ; 2 uses
  %i.xz = zext nneg i32 %i.xy to i64
  %i.ya = call noalias ptr @malloc(i64 noundef %i.xz) #22 ; 4 uses
  %.not1156 = icmp eq ptr %i.ya, null
  br i1 %.not1156, label %.thread1250, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.yb = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.xy, ptr noundef nonnull %i.ya, ptr noundef nonnull @.str.242, ptr noundef nonnull %i.sm, i32 noundef %i.xc, i32 noundef %i.tr, i32 noundef %.1954.lcssa) #20 ; 0 uses
  %i.yc = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 576
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !106
  call void (ptr, ...) %i.ye(ptr noundef %1, ptr noundef nonnull %i.ya, ptr noundef null) #20
  call void @free(ptr noundef nonnull %i.ya) #20
  br label %.thread1250

.lr.ph1438:                                       ; preds = %.preheader1331, %bb.ez
end_hunk_0
