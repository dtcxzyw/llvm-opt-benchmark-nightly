inline.NumInlined: 65
inline.NumDeleted: 32
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@get_relation_info:bb.a
  store i32 %i.ru, ptr %i.rv, align 8
  %i.rw = call ptr @GetFdwRoutineForRelation(ptr noundef nonnull %i.k, i1 noundef zeroext true) #9
  br label %bb.ce

bb.cd:                                            ; preds = %get_relation_statistics.exit
  %i.rx = getelementptr inbounds nuw i8, ptr %3, i64 248
  store i32 0, ptr %i.rx, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.sink433 = phi ptr [ null, %bb.cd ], [ %i.rw, %bb.cc ]
  %i.ry = getelementptr inbounds nuw i8, ptr %3, i64 264
  store ptr %.sink433, ptr %i.ry, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 80
  %i.sc = load ptr, ptr %i.sb, align 8            ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.se = load i32, ptr %i.sd, align 4
  %.not.i330 = icmp ne i32 %i.se, 0
  %.not.i.i331 = icmp eq ptr %i.sc, null
  %or.cond.i332 = select i1 %.not.i330, i1 true, i1 %.not.i.i331
  br i1 %or.cond.i332, label %get_relation_foreign_keys.exit, label %list_length.exit.i

list_length.exit.i:                               ; preds = %bb.ce
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 4 ; 3 uses
  %i.sg = load i32, ptr %i.sf, align 4
  %i.sh = icmp slt i32 %i.sg, 2
  %brmerge.i = or i1 %2, %i.sh
  br i1 %brmerge.i, label %get_relation_foreign_keys.exit, label %bb.cf

bb.cf:                                            ; preds = %list_length.exit.i
  %i.si = call ptr @RelationGetFKeyList(ptr noundef nonnull %i.k) #9 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 4 ; 2 uses
  %.not54.i = icmp eq ptr %i.si, null
  br i1 %.not54.i, label %get_relation_foreign_keys.exit, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %bb.cf
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.sn = load i32, ptr %i.sj, align 4            ; 2 uses
  %i.so = icmp sgt i32 %i.sn, 0
  br i1 %i.so, label %.lr.ph366, label %get_relation_foreign_keys.exit

.lr.ph366:                                        ; preds = %.lr.ph66.i, %.critedge61.i
  %i.sp = phi i32 [ %i.ug, %.critedge61.i ], [ %i.sn, %.lr.ph66.i ] ; 2 uses
  %indvars.iv71.i365 = phi i64 [ %indvars.iv.next72.i, %.critedge61.i ], [ 0, %.lr.ph66.i ] ; 2 uses
  %i.sq = load ptr, ptr %i.sk, align 8
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %indvars.iv71.i365
  %i.ss = load ptr, ptr %i.sr, align 8            ; 6 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 20
  %i.su = load i8, ptr %i.st, align 4, !range !4, !noundef !5
  %i.sv = trunc nuw i8 %i.su to i1
  br i1 %i.sv, label %.preheader.i, label %.critedge61.i

.preheader.i:                                     ; preds = %.lr.ph366
  %i.sw = load i32, ptr %i.sf, align 4            ; 2 uses
  %i.sx = icmp sgt i32 %i.sw, 0
  br i1 %i.sx, label %.lr.ph.i333, label %.critedge61.i

.lr.ph.i333:                                      ; preds = %.preheader.i
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ss, i64 12
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ss, i64 22
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ss, i64 86
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ss, i64 152
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cl, %.lr.ph.i333
  %i.td = phi i32 [ %i.sw, %.lr.ph.i333 ], [ %i.ud, %bb.cl ] ; 4 uses
  %indvars.iv.i334 = phi i64 [ 0, %.lr.ph.i333 ], [ %indvars.iv.next.i335, %bb.cl ] ; 2 uses
  %i.te = load ptr, ptr %i.sl, align 8
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.i334
  %i.tg = load ptr, ptr %i.tf, align 8            ; 3 uses
  %indvars.iv.next.i335 = add nuw nsw i64 %indvars.iv.i334, 1 ; 3 uses
  %indvars69.i = trunc i64 %indvars.iv.next.i335 to i32 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 24
  %i.ti = load i32, ptr %i.th, align 8
  %.not58.i = icmp eq i32 %i.ti, 0
  br i1 %.not58.i, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %bb.cg
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 28
  %i.tk = load i32, ptr %i.tj, align 4
  %i.tl = load i32, ptr %i.sy, align 4
  %.not59.i = icmp eq i32 %i.tk, %i.tl
  br i1 %.not59.i, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tg, i64 32
  %i.tn = load i8, ptr %i.tm, align 8, !range !4, !noundef !5
  %i.to = trunc nuw i8 %i.tn to i1
  br i1 %i.to, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tp = load i32, ptr %i.i, align 8
  %i.tq = icmp eq i32 %i.tp, %indvars69.i
  br i1 %i.tq, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.tr = call noundef ptr @palloc0(i64 noundef 1056) #9 ; 9 uses
  store i32 287, ptr %i.tr, align 4
  %i.ts = load i32, ptr %i.i, align 8
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  store i32 %i.ts, ptr %i.tt, align 4
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  store i32 %indvars69.i, ptr %i.tu, align 8
  %i.tv = load i32, ptr %i.sz, align 4
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tr, i64 12
  store i32 %i.tv, ptr %i.tw, align 4
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.tx, ptr noundef nonnull align 2 dereferenceable(64) %i.ta, i64 64, i1 false)
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tr, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ty, ptr noundef nonnull align 2 dereferenceable(64) %i.tb, i64 64, i1 false)
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tr, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.tz, ptr noundef nonnull align 4 dereferenceable(128) %i.tc, i64 128, i1 false)
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tr, i64 272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(784) %i.ua, i8 0, i64 784, i1 false)
  %i.ub = load ptr, ptr %i.sm, align 8
  %i.uc = call ptr @lappend(ptr noundef %i.ub, ptr noundef nonnull %i.tr) #9
  store ptr %i.uc, ptr %i.sm, align 8
  %.pre.i336 = load i32, ptr %i.sf, align 4
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg
  %i.ud = phi i32 [ %i.td, %bb.cj ], [ %i.td, %bb.ci ], [ %i.td, %bb.cg ], [ %i.td, %bb.ch ], [ %.pre.i336, %bb.ck ] ; 2 uses
  %i.ue = sext i32 %i.ud to i64
  %i.uf = icmp slt i64 %indvars.iv.next.i335, %i.ue
  br i1 %i.uf, label %bb.cg, label %.critedge61.i.loopexit, !llvm.loop !14

.critedge61.i.loopexit:                           ; preds = %bb.cl
  %.pre397 = load i32, ptr %i.sj, align 4
  br label %.critedge61.i

.critedge61.i:                                    ; preds = %.critedge61.i.loopexit, %.preheader.i, %.lr.ph366
  %i.ug = phi i32 [ %.pre397, %.critedge61.i.loopexit ], [ %i.sp, %.preheader.i ], [ %i.sp, %.lr.ph366 ] ; 2 uses
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i365, 1 ; 2 uses
  %i.uh = sext i32 %i.ug to i64
  %i.ui = icmp slt i64 %indvars.iv.next72.i, %i.uh
  br i1 %i.ui, label %.lr.ph366, label %get_relation_foreign_keys.exit

get_relation_foreign_keys.exit:                   ; preds = %.critedge61.i, %.lr.ph66.i, %bb.ce, %list_length.exit.i, %bb.cf
  %i.uj = load ptr, ptr %i.l, align 8             ; 3 uses
  %.not305 = icmp eq ptr %i.uj, null
  br i1 %.not305, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %get_relation_foreign_keys.exit
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 48
  %i.ul = load ptr, ptr %i.uk, align 8
  %.not306 = icmp eq ptr %i.ul, null
  br i1 %.not306, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 56
  %i.un = load ptr, ptr %i.um, align 8
  %.not307 = icmp eq ptr %i.un, null
  br i1 %.not307, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.uo = getelementptr inbounds nuw i8, ptr %3, i64 244 ; 2 uses
  %i.up = load i32, ptr %i.uo, align 4
  %i.uq = or i32 %i.up, 1
  store i32 %i.uq, ptr %i.uo, align 4
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %get_relation_foreign_keys.exit
  br i1 %2, label %bb.cq, label %set_relation_partition_info.exit

bb.cq:                                            ; preds = %bb.cp
  %i.ur = load ptr, ptr %i.aa, align 8
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 119
  %i.ut = load i8, ptr %i.us, align 1
  %i.uu = icmp eq i8 %i.ut, 112
  br i1 %i.uu, label %bb.cr, label %set_relation_partition_info.exit

bb.cr:                                            ; preds = %bb.cq
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.uw = load ptr, ptr %i.uv, align 8
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 192
  %i.uy = load ptr, ptr %i.ux, align 8            ; 2 uses
  %i.uz = icmp eq ptr %i.uy, null
  br i1 %i.uz, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.va = load ptr, ptr @CurrentMemoryContext, align 8
  %i.vb = call ptr @CreatePartitionDirectory(ptr noundef %i.va, i1 noundef zeroext true) #9
  %i.vc = load ptr, ptr %i.uv, align 8
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 192
  store ptr %i.vb, ptr %i.vd, align 8
  %.pre.i338 = load ptr, ptr %i.uv, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i338, i64 192
  %.pre26.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.ve = phi ptr [ %.pre26.i, %bb.cs ], [ %i.uy, %bb.cr ]
  %i.vf = call ptr @PartitionDirectoryLookup(ptr noundef %i.ve, ptr noundef nonnull %i.k) #9 ; 2 uses
  %i.vg = call ptr @RelationGetPartitionKey(ptr noundef nonnull %i.k) #9 ; 12 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 4 ; 2 uses
  %i.vi = load i16, ptr %i.vh, align 4            ; 5 uses
  %wide.trip.count97.i.i = zext nneg i16 %i.vi to i64
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.vk = load ptr, ptr %i.vj, align 8            ; 3 uses
  %.not.i.i337 = icmp eq ptr %i.vk, null
  br i1 %.not.i.i337, label %.._crit_edge_crit_edge.i.i, label %.lr.ph.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.ct
  %.pre.i.i = sext i16 %i.vi to i64               ; 2 uses
  %.pre99.i.i = shl nsw i64 %.pre.i.i, 2
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ct
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 4
  %i.vm = load i32, ptr %i.vl, align 4            ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vg, i64 24
  %4 = sext i16 %i.vi to i64                      ; 3 uses
  %i.vo = shl nsw i64 %4, 2                       ; 5 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vg, i64 32
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vg, i64 48
  %i.vr = icmp sgt i32 %i.vm, 0
  br i1 %i.vr, label %.lr.ph87.i.i, label %._crit_edge.i.i

.lr.ph87.i.i:                                     ; preds = %.lr.ph.i.i
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  %i.vt = load ptr, ptr %i.vs, align 8
  %i.vu = load i32, ptr %i.vg, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.vm to i64
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cz, %.lr.ph87.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph87.i.i ], [ %indvars.iv.next.i.i, %bb.cz ] ; 2 uses
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.i.i
  %i.vw = load ptr, ptr %i.vv, align 8            ; 6 uses
  %i.vx = load i8, ptr %i.vw, align 8
  %i.vy = sext i8 %i.vx to i32
  %.not71.i.i = icmp eq i32 %i.vu, %i.vy
  br i1 %.not71.i.i, label %bb.cv, label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vw, i64 2
  %i.wa = load i16, ptr %i.vz, align 2
  %.not72.i.i = icmp eq i16 %i.vi, %i.wa
  br i1 %.not72.i.i, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  %i.wb = load ptr, ptr %i.vn, align 8
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8
  %bcmp.i.i = call i32 @bcmp(ptr %i.wb, ptr %i.wd, i64 %i.vo)
  %.not73.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not73.i.i, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.we = load ptr, ptr %i.vp, align 8
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  %i.wg = load ptr, ptr %i.wf, align 8
  %bcmp74.i.i = call i32 @bcmp(ptr %i.we, ptr %i.wg, i64 %i.vo)
  %.not75.i.i = icmp eq i32 %bcmp74.i.i, 0
  br i1 %.not75.i.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.wh = load ptr, ptr %i.vq, align 8
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vw, i64 24
  %i.wj = load ptr, ptr %i.wi, align 8
  %bcmp76.i.i = call i32 @bcmp(ptr %i.wh, ptr %i.wj, i64 %i.vo)
  %.not77.i.i = icmp eq i32 %bcmp76.i.i, 0
  br i1 %.not77.i.i, label %find_partition_scheme.exit.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.cu

._crit_edge.i.i:                                  ; preds = %bb.cz, %.lr.ph.i.i, %.._crit_edge_crit_edge.i.i
  %.pre-phi100.i.i = phi i64 [ %.pre99.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.vo, %.lr.ph.i.i ], [ %i.vo, %bb.cz ] ; 3 uses
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %.._crit_edge_crit_edge.i.i ], [ %4, %.lr.ph.i.i ], [ %4, %bb.cz ] ; 8 uses
  %i.wk = call ptr @palloc0(i64 noundef 56) #9    ; 10 uses
  %i.wl = load i32, ptr %i.vg, align 8
  %i.wm = trunc i32 %i.wl to i8
  store i8 %i.wm, ptr %i.wk, align 8
  %i.wn = load i16, ptr %i.vh, align 4
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wk, i64 2
  store i16 %i.wn, ptr %i.wo, align 2
  %i.wp = call ptr @palloc_mul(i64 noundef 4, i64 noundef %.pre-phi.i.i) #9 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  store ptr %i.wp, ptr %i.wq, align 8
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vg, i64 24
  %i.ws = load ptr, ptr %i.wr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.wp, ptr align 4 %i.ws, i64 %.pre-phi100.i.i, i1 false)
  %i.wt = call ptr @palloc_mul(i64 noundef 4, i64 noundef %.pre-phi.i.i) #9 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  store ptr %i.wt, ptr %i.wu, align 8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.vg, i64 32
  %i.ww = load ptr, ptr %i.wv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.wt, ptr align 4 %i.ww, i64 %.pre-phi100.i.i, i1 false)
  %i.wx = call ptr @palloc_mul(i64 noundef 4, i64 noundef %.pre-phi.i.i) #9 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wk, i64 24
  store ptr %i.wx, ptr %i.wy, align 8
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vg, i64 48
  %i.xa = load ptr, ptr %i.wz, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.wx, ptr align 4 %i.xa, i64 %.pre-phi100.i.i, i1 false)
  %i.xb = call ptr @palloc_mul(i64 noundef 2, i64 noundef %.pre-phi.i.i) #9 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wk, i64 32
  store ptr %i.xb, ptr %i.xc, align 8
  %i.xd = getelementptr inbounds nuw i8, ptr %i.vg, i64 72
  %i.xe = load ptr, ptr %i.xd, align 8
  %i.xf = shl nsw i64 %.pre-phi.i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.xb, ptr align 2 %i.xe, i64 %i.xf, i1 false)
  %i.xg = call ptr @palloc_mul(i64 noundef 1, i64 noundef %.pre-phi.i.i) #9 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wk, i64 40
  store ptr %i.xg, ptr %i.xh, align 8
  %i.xi = getelementptr inbounds nuw i8, ptr %i.vg, i64 80
  %i.xj = load ptr, ptr %i.xi, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xg, ptr align 1 %i.xj, i64 %.pre-phi.i.i, i1 false)
  %i.xk = call ptr @palloc_mul(i64 noundef 48, i64 noundef %.pre-phi.i.i) #9
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wk, i64 48 ; 2 uses
  store ptr %i.xk, ptr %i.xl, align 8
  %i.xm = icmp sgt i16 %i.vi, 0
  br i1 %i.xm, label %.lr.ph90.i.i, label %._crit_edge91.i.i

.lr.ph90.i.i:                                     ; preds = %._crit_edge.i.i
  %i.xn = getelementptr inbounds nuw i8, ptr %i.vg, i64 40
  br label %bb.da

bb.da:                                            ; preds = %bb.da, %.lr.ph90.i.i
  %indvars.iv94.i.i = phi i64 [ 0, %.lr.ph90.i.i ], [ %indvars.iv.next95.i.i, %bb.da ] ; 3 uses
  %i.xo = load ptr, ptr %i.xl, align 8
  %i.xp = getelementptr inbounds nuw [48 x i8], ptr %i.xo, i64 %indvars.iv94.i.i
  %i.xq = load ptr, ptr %i.xn, align 8
  %i.xr = getelementptr inbounds nuw [48 x i8], ptr %i.xq, i64 %indvars.iv94.i.i
  %i.xs = load ptr, ptr @CurrentMemoryContext, align 8
  call void @fmgr_info_copy(ptr noundef %i.xp, ptr noundef %i.xr, ptr noundef %i.xs) #9
  %indvars.iv.next95.i.i = add nuw nsw i64 %indvars.iv94.i.i, 1 ; 2 uses
  %exitcond98.not.i.i = icmp eq i64 %indvars.iv.next95.i.i, %wide.trip.count97.i.i
  br i1 %exitcond98.not.i.i, label %._crit_edge91.i.i, label %bb.da, !llvm.loop !15

._crit_edge91.i.i:                                ; preds = %bb.da, %._crit_edge.i.i
  %i.xt = load ptr, ptr %i.vj, align 8
  %i.xu = call ptr @lappend(ptr noundef %i.xt, ptr noundef nonnull %i.wk) #9
  store ptr %i.xu, ptr %i.vj, align 8
  br label %find_partition_scheme.exit.i

find_partition_scheme.exit.i:                     ; preds = %bb.cy, %._crit_edge91.i.i
  %.1.i.i = phi ptr [ %i.wk, %._crit_edge91.i.i ], [ %i.vw, %bb.cy ]
  %i.xv = getelementptr inbounds nuw i8, ptr %3, i64 408
  store ptr %.1.i.i, ptr %i.xv, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.xx = load ptr, ptr %i.xw, align 8
  %i.xy = getelementptr inbounds nuw i8, ptr %3, i64 424
  store ptr %i.xx, ptr %i.xy, align 8
  %i.xz = load i32, ptr %i.vf, align 8
  %i.ya = getelementptr inbounds nuw i8, ptr %3, i64 416
  store i32 %i.xz, ptr %i.ya, align 8
  %i.yb = call ptr @RelationGetPartitionKey(ptr noundef nonnull %i.k) #9 ; 6 uses
  %i.yc = load i32, ptr %i.i, align 8             ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yb, i64 4
  %i.ye = load i16, ptr %i.yd, align 4            ; 2 uses
  %wide.trip.count.i15.i = sext i16 %i.ye to i64  ; 3 uses
  %i.yf = call ptr @palloc_mul(i64 noundef 8, i64 noundef %wide.trip.count.i15.i) #9 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yb, i64 16 ; 2 uses
  %i.yh = load ptr, ptr %i.yg, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.yh, null
  br i1 %.not.i.i.i, label %list_head.exit.i.i, label %bb.db

bb.db:                                            ; preds = %find_partition_scheme.exit.i
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8
  br label %list_head.exit.i.i

list_head.exit.i.i:                               ; preds = %bb.db, %find_partition_scheme.exit.i
  %i.yk = phi ptr [ %i.yj, %bb.db ], [ null, %find_partition_scheme.exit.i ]
  %i.yl = icmp sgt i16 %i.ye, 0
  br i1 %i.yl, label %.lr.ph.i17.i, label %set_baserel_partition_key_exprs.exit.i

.lr.ph.i17.i:                                     ; preds = %list_head.exit.i.i
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yb, i64 56
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yb, i64 64
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yb, i64 96
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dh, %.lr.ph.i17.i
  %indvars.iv.i18.i = phi i64 [ 0, %.lr.ph.i17.i ], [ %indvars.iv.next.i21.i, %bb.dh ] ; 6 uses
  %.03134.i.i = phi ptr [ %i.yk, %.lr.ph.i17.i ], [ %.1.i20.i, %bb.dh ] ; 4 uses
  %i.yq = load ptr, ptr %i.ym, align 8
  %i.yr = getelementptr inbounds nuw [2 x i8], ptr %i.yq, i64 %indvars.iv.i18.i
  %i.ys = load i16, ptr %i.yr, align 2            ; 2 uses
  %.not.i19.i = icmp eq i16 %i.ys, 0
  br i1 %.not.i19.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yt = load ptr, ptr %i.yn, align 8
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %indvars.iv.i18.i
  %i.yv = load i32, ptr %i.yu, align 4
  %i.yw = load ptr, ptr %i.yo, align 8
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %indvars.iv.i18.i
  %i.yy = load i32, ptr %i.yx, align 4
  %i.yz = load ptr, ptr %i.yp, align 8
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %indvars.iv.i18.i
  %i.zb = load i32, ptr %i.za, align 4
  %i.zc = call ptr @makeVar(i32 noundef %i.yc, i16 noundef signext %i.ys, i32 noundef %i.yv, i32 noundef %i.yy, i32 noundef %i.zb, i32 noundef 0) #9
  br label %bb.dh

bb.de:                                            ; preds = %bb.dc
  %i.zd = icmp eq ptr %.03134.i.i, null
  br i1 %i.zd, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ze = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.zf = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.19) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2861, ptr noundef nonnull @__func__.set_baserel_partition_key_exprs) #9
  unreachable

bb.dg:                                            ; preds = %bb.de
  %i.zg = load ptr, ptr %.03134.i.i, align 8
  %i.zh = call ptr @copyObjectImpl(ptr noundef %i.zg) #9 ; 2 uses
  call void @ChangeVarNodes(ptr noundef %i.zh, i32 noundef 1, i32 noundef %i.yc, i32 noundef 0) #9
  %i.zi = load ptr, ptr %i.yg, align 8            ; 2 uses
  %i.zj = getelementptr i8, ptr %i.zi, i64 4
  %.val.i.i = load i32, ptr %i.zj, align 4
  %i.zk = getelementptr i8, ptr %i.zi, i64 16
  %.val33.i.i = load ptr, ptr %i.zk, align 8
  %i.zl = getelementptr inbounds nuw i8, ptr %.03134.i.i, i64 8 ; 2 uses
  %i.zm = sext i32 %.val.i.i to i64
  %i.zn = getelementptr inbounds [8 x i8], ptr %.val33.i.i, i64 %i.zm
  %i.zo = icmp ult ptr %i.zl, %i.zn
  %..i.i.i = select i1 %i.zo, ptr %i.zl, ptr null
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.dd
  %.032.i.i = phi ptr [ %i.zc, %bb.dd ], [ %i.zh, %bb.dg ]
  %.1.i20.i = phi ptr [ %.03134.i.i, %bb.dd ], [ %..i.i.i, %bb.dg ]
  %i.zp = call ptr @list_make1_impl(i32 noundef 1, ptr %.032.i.i) #9
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %indvars.iv.i18.i
  store ptr %i.zp, ptr %i.zq, align 8
  %indvars.iv.next.i21.i = add nuw nsw i64 %indvars.iv.i18.i, 1 ; 2 uses
  %exitcond.not.i22.i = icmp eq i64 %indvars.iv.next.i21.i, %wide.trip.count.i15.i
  br i1 %exitcond.not.i22.i, label %set_baserel_partition_key_exprs.exit.i, label %bb.dc, !llvm.loop !16

set_baserel_partition_key_exprs.exit.i:           ; preds = %bb.dh, %list_head.exit.i.i
  %i.zr = getelementptr inbounds nuw i8, ptr %3, i64 472
  store ptr %i.yf, ptr %i.zr, align 8
  %i.zs = call ptr @palloc0_mul(i64 noundef 8, i64 noundef %wide.trip.count.i15.i) #9
  %i.zt = getelementptr inbounds nuw i8, ptr %3, i64 480
  store ptr %i.zs, ptr %i.zt, align 8
  %i.zu = getelementptr inbounds nuw i8, ptr %3, i64 440 ; 2 uses
  %i.zv = load ptr, ptr %i.zu, align 8
  %.not.i23.i = icmp eq ptr %i.zv, null
  br i1 %.not.i23.i, label %bb.di, label %set_relation_partition_info.exit

bb.di:                                            ; preds = %set_baserel_partition_key_exprs.exit.i
  %i.zw = call ptr @RelationGetPartitionQual(ptr noundef nonnull %i.k) #9 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.zw, null
  br i1 %.not10.i.i, label %set_relation_partition_info.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.zx = call ptr @expression_planner(ptr noundef nonnull %i.zw) #9 ; 2 uses
  %i.zy = load i32, ptr %i.i, align 8             ; 2 uses
  %.not11.i.i = icmp eq i32 %i.zy, 1
  br i1 %.not11.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @ChangeVarNodes(ptr noundef %i.zx, i32 noundef 1, i32 noundef %i.zy, i32 noundef 0) #9
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  store ptr %i.zx, ptr %i.zu, align 8
  br label %set_relation_partition_info.exit

set_relation_partition_info.exit:                 ; preds = %bb.dl, %bb.di, %set_baserel_partition_key_exprs.exit.i, %bb.cq, %bb.cp
  call void @table_close(ptr noundef %i.k, i32 noundef 0) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @table_open(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @errdetail_relkind_not_supported(i8 noundef signext) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @RecoveryInProgress() local_unnamed_addr #2

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @find_relation_notnullatts(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  store i32 %1, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call ptr @hash_search(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull %i.b) #9
  %i.i = load i8, ptr %i.b, align 1, !range !4, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
