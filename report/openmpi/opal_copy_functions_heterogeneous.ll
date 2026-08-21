inline.NumInlined: 51
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 97
begin_hunk_0_@copy_float8_heterogeneous:datatype_check.exit
  %i.k = and i32 %i.j, 8
  %.not34 = icmp eq i32 %i.k, 0
  %i.l = shl i64 %.030, 3                         ; 5 uses
  br i1 %.not34, label %opal_dt_swap_bytes.exit.us.preheader, label %datatype_check.exit.split

opal_dt_swap_bytes.exit.us.preheader:             ; preds = %datatype_check.exit
  %i.m = add i64 %.029, -1
  %xtraiter = and i64 %.029, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol

opal_dt_swap_bytes.exit.us.prol:                  ; preds = %opal_dt_swap_bytes.exit.us.preheader, %opal_dt_swap_bytes.exit.us.prol
  %.032.us.prol = phi ptr [ %i.n, %opal_dt_swap_bytes.exit.us.prol ], [ %5, %opal_dt_swap_bytes.exit.us.preheader ] ; 2 uses
  %.031.us.prol = phi ptr [ %i.o, %opal_dt_swap_bytes.exit.us.prol ], [ %2, %opal_dt_swap_bytes.exit.us.preheader ] ; 2 uses
  %.1.us.prol = phi i64 [ %i.p, %opal_dt_swap_bytes.exit.us.prol ], [ %.029, %opal_dt_swap_bytes.exit.us.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %opal_dt_swap_bytes.exit.us.prol ], [ 0, %opal_dt_swap_bytes.exit.us.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.032.us.prol, ptr align 1 %.031.us.prol, i64 %i.l, i1 false)
  %i.n = getelementptr inbounds i8, ptr %.032.us.prol, i64 %7 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.031.us.prol, i64 %4 ; 2 uses
  %i.p = add i64 %.1.us.prol, -1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol, !llvm.loop !52

opal_dt_swap_bytes.exit.us.prol.loopexit:         ; preds = %opal_dt_swap_bytes.exit.us.prol, %opal_dt_swap_bytes.exit.us.preheader
  %.032.us.unr = phi ptr [ %5, %opal_dt_swap_bytes.exit.us.preheader ], [ %i.n, %opal_dt_swap_bytes.exit.us.prol ]
  %.031.us.unr = phi ptr [ %2, %opal_dt_swap_bytes.exit.us.preheader ], [ %i.o, %opal_dt_swap_bytes.exit.us.prol ]
  %.1.us.unr = phi i64 [ %.029, %opal_dt_swap_bytes.exit.us.preheader ], [ %i.p, %opal_dt_swap_bytes.exit.us.prol ]
  %i.q = icmp ult i64 %i.m, 3
  br i1 %i.q, label %.split.us, label %opal_dt_swap_bytes.exit.us

opal_dt_swap_bytes.exit.us:                       ; preds = %opal_dt_swap_bytes.exit.us.prol.loopexit, %opal_dt_swap_bytes.exit.us
  %.032.us = phi ptr [ %i.x, %opal_dt_swap_bytes.exit.us ], [ %.032.us.unr, %opal_dt_swap_bytes.exit.us.prol.loopexit ] ; 2 uses
  %.031.us = phi ptr [ %i.y, %opal_dt_swap_bytes.exit.us ], [ %.031.us.unr, %opal_dt_swap_bytes.exit.us.prol.loopexit ] ; 2 uses
  %.1.us = phi i64 [ %i.z, %opal_dt_swap_bytes.exit.us ], [ %.1.us.unr, %opal_dt_swap_bytes.exit.us.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.032.us, ptr align 1 %.031.us, i64 %i.l, i1 false)
  %i.r = getelementptr inbounds i8, ptr %.032.us, i64 %7 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.031.us, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.s, i64 %i.l, i1 false)
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %7 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.l, i1 false)
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %7 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.w, i64 %i.l, i1 false)
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %7
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %4
  %i.z = add i64 %.1.us, -4                       ; 2 uses
  %.not35.us.3 = icmp eq i64 %i.z, 0
  br i1 %.not35.us.3, label %.split.us, label %opal_dt_swap_bytes.exit.us, !llvm.loop !53

datatype_check.exit.split:                        ; preds = %datatype_check.exit
  %i.aa = icmp ugt i64 %.030, 1
  br i1 %i.aa, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %datatype_check.exit.split, %opal_dt_swap_bytes.exit.loopexit.us
  %.032.us40 = phi ptr [ %i.bx, %opal_dt_swap_bytes.exit.loopexit.us ], [ %5, %datatype_check.exit.split ] ; 10 uses
  %.031.us41 = phi ptr [ %i.by, %opal_dt_swap_bytes.exit.loopexit.us ], [ %2, %datatype_check.exit.split ] ; 10 uses
  %.1.us42 = phi i64 [ %i.bz, %opal_dt_swap_bytes.exit.loopexit.us ], [ %.029, %datatype_check.exit.split ]
  %i.ab = load i8, ptr %.031.us41, align 1, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %.032.us40, i64 7
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %.031.us41, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %.032.us40, i64 6
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %.031.us41, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %.032.us40, i64 5
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %.031.us41, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %.032.us40, i64 4
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %.031.us41, i64 4
  %i.an = load i8, ptr %i.am, align 1, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %.032.us40, i64 3
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %.031.us41, i64 5
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %.032.us40, i64 2
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %.031.us41, i64 6
  %i.at = load i8, ptr %i.as, align 1, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %.032.us40, i64 1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %.031.us41, i64 7
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !25
  store i8 %i.aw, ptr %.032.us40, align 1, !tbaa !25
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.preheader.us, %.lr.ph.i.us
  %.036.i.us = phi ptr [ %i.ay, %.lr.ph.i.us ], [ %.031.us41, %.preheader.us ] ; 8 uses
  %.02535.i.us = phi ptr [ %i.ax, %.lr.ph.i.us ], [ %.032.us40, %.preheader.us ] ; 8 uses
  %.02934.i.us = phi i64 [ %i.bv, %.lr.ph.i.us ], [ %spec.select, %.preheader.us ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 8 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 15
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 14
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 10
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 13
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 11
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 12
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 12
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !25
  %i.bm = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 11
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 13
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 10
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 14
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 9
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 15
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !25
  store i8 %i.bu, ptr %i.ax, align 1, !tbaa !25
  %i.bv = add i64 %.02934.i.us, -1                ; 2 uses
  %i.bw = icmp ugt i64 %i.bv, 1
  br i1 %i.bw, label %.lr.ph.i.us, label %opal_dt_swap_bytes.exit.loopexit.us, !llvm.loop !42

opal_dt_swap_bytes.exit.loopexit.us:              ; preds = %.lr.ph.i.us
  %i.bx = getelementptr inbounds i8, ptr %.032.us40, i64 %7
  %i.by = getelementptr inbounds i8, ptr %.031.us41, i64 %4
  %i.bz = add i64 %.1.us42, -1                    ; 2 uses
  %.not35.us44 = icmp eq i64 %i.bz, 0
  br i1 %.not35.us44, label %.split.us, label %.preheader.us, !llvm.loop !53

.preheader:                                       ; preds = %datatype_check.exit.split, %.preheader
  %.032 = phi ptr [ %i.cw, %.preheader ], [ %5, %datatype_check.exit.split ] ; 9 uses
  %.031 = phi ptr [ %i.cx, %.preheader ], [ %2, %datatype_check.exit.split ] ; 9 uses
  %.1 = phi i64 [ %i.cy, %.preheader ], [ %.029, %datatype_check.exit.split ]
  %i.ca = load i8, ptr %.031, align 1, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %.032, i64 7
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !25
  %i.cc = getelementptr inbounds nuw i8, ptr %.031, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !25
  %i.ce = getelementptr inbounds nuw i8, ptr %.032, i64 6
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %.031, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !25
  %i.ch = getelementptr inbounds nuw i8, ptr %.032, i64 5
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !25
  %i.ci = getelementptr inbounds nuw i8, ptr %.031, i64 3
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !25
  %i.ck = getelementptr inbounds nuw i8, ptr %.032, i64 4
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !25
  %i.cl = getelementptr inbounds nuw i8, ptr %.031, i64 4
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !25
  %i.cn = getelementptr inbounds nuw i8, ptr %.032, i64 3
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %.031, i64 5
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !25
  %i.cq = getelementptr inbounds nuw i8, ptr %.032, i64 2
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %.031, i64 6
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !25
  %i.ct = getelementptr inbounds nuw i8, ptr %.032, i64 1
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %.031, i64 7
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !25
  store i8 %i.cv, ptr %.032, align 1, !tbaa !25
  %i.cw = getelementptr inbounds i8, ptr %.032, i64 %7
  %i.cx = getelementptr inbounds i8, ptr %.031, i64 %4
  %i.cy = add i64 %.1, -1                         ; 2 uses
  %.not35 = icmp eq i64 %i.cy, 0
  br i1 %.not35, label %.split.us, label %.preheader, !llvm.loop !53

.split.us:                                        ; preds = %.preheader, %opal_dt_swap_bytes.exit.loopexit.us, %opal_dt_swap_bytes.exit.us.prol.loopexit, %opal_dt_swap_bytes.exit.us
  %i.cz = mul i64 %spec.select, %4
  store i64 %i.cz, ptr %8, align 8, !tbaa !38
  %i.da = trunc i64 %spec.select to i32
  ret i32 %i.da
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @copy_float16_heterogeneous(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6, i64 noundef %7, ptr nofree noundef writeonly captures(none) %8) #1 {
datatype_check.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = and i32 %i.b, 65536
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.opal_local_arch = select i1 %.not, ptr %i.d, ptr @opal_local_arch
  %opal_local_arch. = select i1 %.not, ptr @opal_local_arch, ptr %i.d
  %.060 = load i32, ptr %opal_local_arch., align 4, !tbaa !20 ; 3 uses
  %.061 = load i32, ptr %.opal_local_arch, align 4, !tbaa !20 ; 3 uses
  %i.e = shl i64 %1, 4
  %i.f = icmp ugt i64 %i.e, %3
  %i.g = lshr i64 %3, 4
  %spec.select = select i1 %i.f, i64 %i.g, i64 %1 ; 8 uses
  %i.h = icmp eq i64 %7, 16
  %i.i = icmp eq i64 %4, 16
  %or.cond = and i1 %i.i, %i.h                    ; 2 uses
  %.064 = select i1 %or.cond, i64 %spec.select, i64 1 ; 6 uses
  %.062 = select i1 %or.cond, i64 1, i64 %spec.select ; 7 uses
  %i.j = xor i32 %.061, %.060                     ; 2 uses
  %i.k = and i32 %i.j, 8126464
  %i.l = icmp eq i32 %i.k, 0
  %i.m = icmp ugt i64 %.064, 1                    ; 4 uses
  %i.n = and i32 %.061, 8126464
  %or.cond73 = icmp eq i32 %i.n, 5767168
  %i.o = and i32 %.060, 8126464
  %or.cond75 = icmp eq i32 %i.o, 5767168
  %i.p = shl i64 %.064, 4                         ; 5 uses
  br i1 %i.l, label %datatype_check.exit.split.us, label %datatype_check.exit.split.preheader

datatype_check.exit.split.preheader:              ; preds = %datatype_check.exit
  %alignment_of_long_double.val.promoted.b = load i1, ptr @alignment_of_long_double.val, align 8
  %alignment_of_long_double.val.promoted = select i1 %alignment_of_long_double.val.promoted.b, i64 16, i64 0
  br label %datatype_check.exit.split

datatype_check.exit.split.us:                     ; preds = %datatype_check.exit
  %i.q = and i32 %i.j, 8
  %.not70 = icmp eq i32 %i.q, 0
  br i1 %.not70, label %opal_dt_swap_bytes.exit.us.us.preheader, label %datatype_check.exit.split.us.split

opal_dt_swap_bytes.exit.us.us.preheader:          ; preds = %datatype_check.exit.split.us
  %i.r = add i64 %.062, -1
  %xtraiter = and i64 %.062, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %opal_dt_swap_bytes.exit.us.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.us.prol

opal_dt_swap_bytes.exit.us.us.prol:               ; preds = %opal_dt_swap_bytes.exit.us.us.preheader, %opal_dt_swap_bytes.exit.us.us.prol
  %.066.us.us.prol = phi ptr [ %i.s, %opal_dt_swap_bytes.exit.us.us.prol ], [ %5, %opal_dt_swap_bytes.exit.us.us.preheader ] ; 2 uses
  %.065.us.us.prol = phi ptr [ %i.t, %opal_dt_swap_bytes.exit.us.us.prol ], [ %2, %opal_dt_swap_bytes.exit.us.us.preheader ] ; 2 uses
  %.163.us.us.prol = phi i64 [ %i.u, %opal_dt_swap_bytes.exit.us.us.prol ], [ %.062, %opal_dt_swap_bytes.exit.us.us.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %opal_dt_swap_bytes.exit.us.us.prol ], [ 0, %opal_dt_swap_bytes.exit.us.us.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.066.us.us.prol, ptr align 1 %.065.us.us.prol, i64 %i.p, i1 false)
  %i.s = getelementptr inbounds i8, ptr %.066.us.us.prol, i64 %7 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.065.us.us.prol, i64 %4 ; 2 uses
  %i.u = add i64 %.163.us.us.prol, -1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %opal_dt_swap_bytes.exit.us.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.us.prol, !llvm.loop !54

opal_dt_swap_bytes.exit.us.us.prol.loopexit:      ; preds = %opal_dt_swap_bytes.exit.us.us.prol, %opal_dt_swap_bytes.exit.us.us.preheader
  %.066.us.us.unr = phi ptr [ %5, %opal_dt_swap_bytes.exit.us.us.preheader ], [ %i.s, %opal_dt_swap_bytes.exit.us.us.prol ]
  %.065.us.us.unr = phi ptr [ %2, %opal_dt_swap_bytes.exit.us.us.preheader ], [ %i.t, %opal_dt_swap_bytes.exit.us.us.prol ]
  %.163.us.us.unr = phi i64 [ %.062, %opal_dt_swap_bytes.exit.us.us.preheader ], [ %i.u, %opal_dt_swap_bytes.exit.us.us.prol ]
  %i.v = icmp ult i64 %i.r, 3
  br i1 %i.v, label %.split.us, label %opal_dt_swap_bytes.exit.us.us

opal_dt_swap_bytes.exit.us.us:                    ; preds = %opal_dt_swap_bytes.exit.us.us.prol.loopexit, %opal_dt_swap_bytes.exit.us.us
  %.066.us.us = phi ptr [ %i.ac, %opal_dt_swap_bytes.exit.us.us ], [ %.066.us.us.unr, %opal_dt_swap_bytes.exit.us.us.prol.loopexit ] ; 2 uses
  %.065.us.us = phi ptr [ %i.ad, %opal_dt_swap_bytes.exit.us.us ], [ %.065.us.us.unr, %opal_dt_swap_bytes.exit.us.us.prol.loopexit ] ; 2 uses
  %.163.us.us = phi i64 [ %i.ae, %opal_dt_swap_bytes.exit.us.us ], [ %.163.us.us.unr, %opal_dt_swap_bytes.exit.us.us.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.066.us.us, ptr align 1 %.065.us.us, i64 %i.p, i1 false)
  %i.w = getelementptr inbounds i8, ptr %.066.us.us, i64 %7 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.065.us.us, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.x, i64 %i.p, i1 false)
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %7 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.z, i64 %i.p, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %7 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ab, i64 %i.p, i1 false)
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %7
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %4
  %i.ae = add i64 %.163.us.us, -4                 ; 2 uses
  %.not71.us.us.3 = icmp eq i64 %i.ae, 0
  br i1 %.not71.us.us.3, label %.split.us, label %opal_dt_swap_bytes.exit.us.us, !llvm.loop !55

datatype_check.exit.split.us.split:               ; preds = %datatype_check.exit.split.us
  br i1 %i.m, label %.preheader.us.us, label %.preheader.us

.preheader.us.us:                                 ; preds = %datatype_check.exit.split.us.split, %opal_dt_swap_bytes.exit.loopexit.us.us
  %.066.us.us126 = phi ptr [ %i.dx, %opal_dt_swap_bytes.exit.loopexit.us.us ], [ %5, %datatype_check.exit.split.us.split ] ; 18 uses
  %.065.us.us127 = phi ptr [ %i.dy, %opal_dt_swap_bytes.exit.loopexit.us.us ], [ %2, %datatype_check.exit.split.us.split ] ; 18 uses
  %.163.us.us128 = phi i64 [ %i.dz, %opal_dt_swap_bytes.exit.loopexit.us.us ], [ %.062, %datatype_check.exit.split.us.split ]
  %i.af = load i8, ptr %.065.us.us127, align 1, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %.066.us.us126, i64 15
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %.065.us.us127, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %.066.us.us126, i64 14
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %.065.us.us127, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %.066.us.us126, i64 13
  store i8 %i.al, ptr %i.am, align 1, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %.065.us.us127, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %.066.us.us126, i64 12
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %.065.us.us127, i64 4
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %.066.us.us126, i64 11
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %.065.us.us127, i64 5
  %i.au = load i8, ptr %i.at, align 1, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %.066.us.us126, i64 10
  store i8 %i.au, ptr %i.av, align 1, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %.065.us.us127, i64 6
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %.066.us.us126, i64 9
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %.065.us.us127, i64 7
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %.066.us.us126, i64 8
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %.065.us.us127, i64 8
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %.066.us.us126, i64 7
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %.065.us.us127, i64 9
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %.066.us.us126, i64 6
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %.065.us.us127, i64 10
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %.066.us.us126, i64 5
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %.065.us.us127, i64 11
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %.066.us.us126, i64 4
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %.065.us.us127, i64 12
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %.066.us.us126, i64 3
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %.065.us.us127, i64 13
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %.066.us.us126, i64 2
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %.065.us.us127, i64 14
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !25
  %i.bw = getelementptr inbounds nuw i8, ptr %.066.us.us126, i64 1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %.065.us.us127, i64 15
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !25
  store i8 %i.by, ptr %.066.us.us126, align 1, !tbaa !25
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.preheader.us.us, %.lr.ph.i.us.us
  %.036.i.us.us = phi ptr [ %i.ca, %.lr.ph.i.us.us ], [ %.065.us.us127, %.preheader.us.us ] ; 16 uses
  %.02535.i.us.us = phi ptr [ %i.bz, %.lr.ph.i.us.us ], [ %.066.us.us126, %.preheader.us.us ] ; 16 uses
  %.02934.i.us.us = phi i64 [ %i.dv, %.lr.ph.i.us.us ], [ %spec.select, %.preheader.us.us ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 16 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !25
  %i.cc = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 31
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !25
  %i.cd = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 17
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 30
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !25
  %i.cg = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 18
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !25
  %i.ci = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 29
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !25
  %i.cj = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 19
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !25
  %i.cl = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 28
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !25
  %i.cm = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 20
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 27
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !25
  %i.cp = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 21
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 26
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !25
  %i.cs = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 22
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 25
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !25
  %i.cv = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 23
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !25
  %i.cx = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 24
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !25
  %i.cy = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 24
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !25
  %i.da = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 23
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !25
  %i.db = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 25
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !25
  %i.dd = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 22
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !25
  %i.de = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 26
  %i.df = load i8, ptr %i.de, align 1, !tbaa !25
  %i.dg = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 21
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !25
  %i.dh = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 27
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !25
  %i.dj = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 20
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !25
  %i.dk = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 28
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !25
  %i.dm = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 19
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !25
  %i.dn = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 29
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !25
  %i.dp = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 18
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !25
  %i.dq = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 30
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !25
  %i.ds = getelementptr inbounds nuw i8, ptr %.02535.i.us.us, i64 17
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !25
  %i.dt = getelementptr inbounds nuw i8, ptr %.036.i.us.us, i64 31
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !25
  store i8 %i.du, ptr %i.bz, align 1, !tbaa !25
  %i.dv = add i64 %.02934.i.us.us, -1             ; 2 uses
  %i.dw = icmp ugt i64 %i.dv, 1
  br i1 %i.dw, label %.lr.ph.i.us.us, label %opal_dt_swap_bytes.exit.loopexit.us.us, !llvm.loop !42

opal_dt_swap_bytes.exit.loopexit.us.us:           ; preds = %.lr.ph.i.us.us
  %i.dx = getelementptr inbounds i8, ptr %.066.us.us126, i64 %7
  %i.dy = getelementptr inbounds i8, ptr %.065.us.us127, i64 %4
  %i.dz = add i64 %.163.us.us128, -1              ; 2 uses
  %.not71.us.us130 = icmp eq i64 %i.dz, 0
  br i1 %.not71.us.us130, label %.split.us, label %.preheader.us.us, !llvm.loop !55

.preheader.us:                                    ; preds = %datatype_check.exit.split.us.split, %.preheader.us
  %.066.us = phi ptr [ %i.fu, %.preheader.us ], [ %5, %datatype_check.exit.split.us.split ] ; 17 uses
  %.065.us = phi ptr [ %i.fv, %.preheader.us ], [ %2, %datatype_check.exit.split.us.split ] ; 17 uses
  %.163.us = phi i64 [ %i.fw, %.preheader.us ], [ %.062, %datatype_check.exit.split.us.split ]
  %i.ea = load i8, ptr %.065.us, align 1, !tbaa !25
  %i.eb = getelementptr inbounds nuw i8, ptr %.066.us, i64 15
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !25
  %i.ec = getelementptr inbounds nuw i8, ptr %.065.us, i64 1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !25
  %i.ee = getelementptr inbounds nuw i8, ptr %.066.us, i64 14
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !25
  %i.ef = getelementptr inbounds nuw i8, ptr %.065.us, i64 2
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !25
  %i.eh = getelementptr inbounds nuw i8, ptr %.066.us, i64 13
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !25
  %i.ei = getelementptr inbounds nuw i8, ptr %.065.us, i64 3
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !25
  %i.ek = getelementptr inbounds nuw i8, ptr %.066.us, i64 12
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !25
  %i.el = getelementptr inbounds nuw i8, ptr %.065.us, i64 4
  %i.em = load i8, ptr %i.el, align 1, !tbaa !25
  %i.en = getelementptr inbounds nuw i8, ptr %.066.us, i64 11
  store i8 %i.em, ptr %i.en, align 1, !tbaa !25
  %i.eo = getelementptr inbounds nuw i8, ptr %.065.us, i64 5
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !25
  %i.eq = getelementptr inbounds nuw i8, ptr %.066.us, i64 10
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !25
  %i.er = getelementptr inbounds nuw i8, ptr %.065.us, i64 6
  %i.es = load i8, ptr %i.er, align 1, !tbaa !25
  %i.et = getelementptr inbounds nuw i8, ptr %.066.us, i64 9
  store i8 %i.es, ptr %i.et, align 1, !tbaa !25
  %i.eu = getelementptr inbounds nuw i8, ptr %.065.us, i64 7
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !25
  %i.ew = getelementptr inbounds nuw i8, ptr %.066.us, i64 8
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !25
  %i.ex = getelementptr inbounds nuw i8, ptr %.065.us, i64 8
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !25
  %i.ez = getelementptr inbounds nuw i8, ptr %.066.us, i64 7
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !25
  %i.fa = getelementptr inbounds nuw i8, ptr %.065.us, i64 9
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !25
  %i.fc = getelementptr inbounds nuw i8, ptr %.066.us, i64 6
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !25
  %i.fd = getelementptr inbounds nuw i8, ptr %.065.us, i64 10
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !25
  %i.ff = getelementptr inbounds nuw i8, ptr %.066.us, i64 5
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !25
  %i.fg = getelementptr inbounds nuw i8, ptr %.065.us, i64 11
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !25
  %i.fi = getelementptr inbounds nuw i8, ptr %.066.us, i64 4
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !25
  %i.fj = getelementptr inbounds nuw i8, ptr %.065.us, i64 12
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !25
  %i.fl = getelementptr inbounds nuw i8, ptr %.066.us, i64 3
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !25
  %i.fm = getelementptr inbounds nuw i8, ptr %.065.us, i64 13
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !25
  %i.fo = getelementptr inbounds nuw i8, ptr %.066.us, i64 2
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !25
  %i.fp = getelementptr inbounds nuw i8, ptr %.065.us, i64 14
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !25
  %i.fr = getelementptr inbounds nuw i8, ptr %.066.us, i64 1
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !25
  %i.fs = getelementptr inbounds nuw i8, ptr %.065.us, i64 15
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !25
  store i8 %i.ft, ptr %.066.us, align 1, !tbaa !25
  %i.fu = getelementptr inbounds i8, ptr %.066.us, i64 %7
  %i.fv = getelementptr inbounds i8, ptr %.065.us, i64 %4
  %i.fw = add i64 %.163.us, -1                    ; 2 uses
  %.not71.us = icmp eq i64 %i.fw, 0
  br i1 %.not71.us, label %.split.us, label %.preheader.us, !llvm.loop !55

datatype_check.exit.split:                        ; preds = %datatype_check.exit.split.preheader, %opal_dt_swap_bytes.exit
  %i.fx = phi i64 [ %i.lk, %opal_dt_swap_bytes.exit ], [ %alignment_of_long_double.val.promoted, %datatype_check.exit.split.preheader ] ; 3 uses
  %.066 = phi ptr [ %i.pm, %opal_dt_swap_bytes.exit ], [ %5, %datatype_check.exit.split.preheader ] ; 50 uses
  %.065 = phi ptr [ %i.pn, %opal_dt_swap_bytes.exit ], [ %2, %datatype_check.exit.split.preheader ] ; 37 uses
  %.163 = phi i64 [ %i.po, %opal_dt_swap_bytes.exit ], [ %.062, %datatype_check.exit.split.preheader ]
  %i.fy = load i32, ptr @opal_local_arch, align 4, !tbaa !20
  %i.fz = xor i32 %i.fy, %.061
  %i.ga = and i32 %i.fz, 8
  %.not68 = icmp eq i32 %i.ga, 0
  br i1 %.not68, label %opal_dt_swap_bytes.exit88, label %.preheader125.preheader

.preheader125.preheader:                          ; preds = %datatype_check.exit.split
  %i.gb = load i8, ptr %.065, align 1, !tbaa !25
  %i.gc = getelementptr inbounds nuw i8, ptr %.066, i64 15
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !25
  %i.gd = getelementptr inbounds nuw i8, ptr %.065, i64 1
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !25
  %i.gf = getelementptr inbounds nuw i8, ptr %.066, i64 14
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !25
  %i.gg = getelementptr inbounds nuw i8, ptr %.065, i64 2
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !25
  %i.gi = getelementptr inbounds nuw i8, ptr %.066, i64 13
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !25
  %i.gj = getelementptr inbounds nuw i8, ptr %.065, i64 3
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !25
  %i.gl = getelementptr inbounds nuw i8, ptr %.066, i64 12
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !25
  %i.gm = getelementptr inbounds nuw i8, ptr %.065, i64 4
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !25
  %i.go = getelementptr inbounds nuw i8, ptr %.066, i64 11
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !25
  %i.gp = getelementptr inbounds nuw i8, ptr %.065, i64 5
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !25
  %i.gr = getelementptr inbounds nuw i8, ptr %.066, i64 10
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !25
  %i.gs = getelementptr inbounds nuw i8, ptr %.065, i64 6
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !25
  %i.gu = getelementptr inbounds nuw i8, ptr %.066, i64 9
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !25
  %i.gv = getelementptr inbounds nuw i8, ptr %.065, i64 7
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !25
  %i.gx = getelementptr inbounds nuw i8, ptr %.066, i64 8
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !25
  %i.gy = getelementptr inbounds nuw i8, ptr %.065, i64 8
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !25
  %i.ha = getelementptr inbounds nuw i8, ptr %.066, i64 7
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !25
  %i.hb = getelementptr inbounds nuw i8, ptr %.065, i64 9
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !25
  %i.hd = getelementptr inbounds nuw i8, ptr %.066, i64 6
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !25
  %i.he = getelementptr inbounds nuw i8, ptr %.065, i64 10
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !25
  %i.hg = getelementptr inbounds nuw i8, ptr %.066, i64 5
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !25
  %i.hh = getelementptr inbounds nuw i8, ptr %.065, i64 11
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !25
  %i.hj = getelementptr inbounds nuw i8, ptr %.066, i64 4
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !25
  %i.hk = getelementptr inbounds nuw i8, ptr %.065, i64 12
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !25
  %i.hm = getelementptr inbounds nuw i8, ptr %.066, i64 3
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !25
  %i.hn = getelementptr inbounds nuw i8, ptr %.065, i64 13
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !25
  %i.hp = getelementptr inbounds nuw i8, ptr %.066, i64 2
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !25
  %i.hq = getelementptr inbounds nuw i8, ptr %.065, i64 14
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !25
  %i.hs = getelementptr inbounds nuw i8, ptr %.066, i64 1
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !25
  %i.ht = getelementptr inbounds nuw i8, ptr %.065, i64 15
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !25
  store i8 %i.hu, ptr %.066, align 1, !tbaa !25
  br i1 %i.m, label %.lr.ph.i80, label %opal_dt_swap_bytes.exit88

.lr.ph.i80:                                       ; preds = %.preheader125.preheader, %.lr.ph.i80
  %.036.i81 = phi ptr [ %i.hw, %.lr.ph.i80 ], [ %.065, %.preheader125.preheader ] ; 16 uses
  %.02535.i82 = phi ptr [ %i.hv, %.lr.ph.i80 ], [ %.066, %.preheader125.preheader ] ; 16 uses
  %.02934.i83 = phi i64 [ %i.jr, %.lr.ph.i80 ], [ %spec.select, %.preheader125.preheader ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 16 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.036.i81, i64 16 ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !25
  %i.hy = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 31
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !25
  %i.hz = getelementptr inbounds nuw i8, ptr %.036.i81, i64 17
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !25
  %i.ib = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 30
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !25
  %i.ic = getelementptr inbounds nuw i8, ptr %.036.i81, i64 18
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !25
  %i.ie = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 29
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !25
  %i.if = getelementptr inbounds nuw i8, ptr %.036.i81, i64 19
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !25
  %i.ih = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 28
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !25
  %i.ii = getelementptr inbounds nuw i8, ptr %.036.i81, i64 20
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !25
  %i.ik = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 27
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !25
  %i.il = getelementptr inbounds nuw i8, ptr %.036.i81, i64 21
  %i.im = load i8, ptr %i.il, align 1, !tbaa !25
  %i.in = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 26
  store i8 %i.im, ptr %i.in, align 1, !tbaa !25
  %i.io = getelementptr inbounds nuw i8, ptr %.036.i81, i64 22
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !25
  %i.iq = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 25
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !25
  %i.ir = getelementptr inbounds nuw i8, ptr %.036.i81, i64 23
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !25
  %i.it = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 24
  store i8 %i.is, ptr %i.it, align 1, !tbaa !25
  %i.iu = getelementptr inbounds nuw i8, ptr %.036.i81, i64 24
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !25
  %i.iw = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 23
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !25
  %i.ix = getelementptr inbounds nuw i8, ptr %.036.i81, i64 25
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !25
  %i.iz = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 22
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !25
  %i.ja = getelementptr inbounds nuw i8, ptr %.036.i81, i64 26
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !25
  %i.jc = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 21
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !25
  %i.jd = getelementptr inbounds nuw i8, ptr %.036.i81, i64 27
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !25
  %i.jf = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 20
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !25
  %i.jg = getelementptr inbounds nuw i8, ptr %.036.i81, i64 28
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !25
  %i.ji = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 19
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !25
  %i.jj = getelementptr inbounds nuw i8, ptr %.036.i81, i64 29
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !25
  %i.jl = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 18
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !25
  %i.jm = getelementptr inbounds nuw i8, ptr %.036.i81, i64 30
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !25
  %i.jo = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 17
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !25
  %i.jp = getelementptr inbounds nuw i8, ptr %.036.i81, i64 31
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !25
  store i8 %i.jq, ptr %i.hv, align 1, !tbaa !25
  %i.jr = add i64 %.02934.i83, -1                 ; 2 uses
  %i.js = icmp ugt i64 %i.jr, 1
  br i1 %i.js, label %.lr.ph.i80, label %opal_dt_swap_bytes.exit88, !llvm.loop !42

opal_dt_swap_bytes.exit88:                        ; preds = %.lr.ph.i80, %.preheader125.preheader, %datatype_check.exit.split
  %.0 = phi ptr [ %.065, %datatype_check.exit.split ], [ %.066, %.preheader125.preheader ], [ %.066, %.lr.ph.i80 ] ; 4 uses
  br i1 %or.cond73, label %ldbl_to_f128.exit, label %bb.a

bb.a:                                             ; preds = %opal_dt_swap_bytes.exit88
  %i.jt = icmp eq i64 %i.fx, 0
  br i1 %i.jt, label %.preheader.preheader.i.i, label %alignment_of_long_double.exit.i

.preheader.preheader.i.i:                         ; preds = %bb.a
  store i1 true, ptr @alignment_of_long_double.val, align 8
  br label %alignment_of_long_double.exit.i

alignment_of_long_double.exit.i:                  ; preds = %.preheader.preheader.i.i, %bb.a
  %i.ju = phi i64 [ 16, %.preheader.preheader.i.i ], [ %i.fx, %bb.a ] ; 3 uses
  %i.jv = ptrtoint ptr %.0 to i64
  %i.jw = shl i64 %i.ju, 32
  %sext.i = add i64 %i.jw, -4294967296
  %i.jx = ashr exact i64 %sext.i, 32
  %i.jy = or i64 %4, %i.jv
  %i.jz = and i64 %i.jx, %i.jy
  %i.ka = ptrtoint ptr %.066 to i64
  %i.kb = and i64 %i.ka, 15
  %i.kc = or i64 %i.jz, %i.kb
  %or.cond.i = icmp eq i64 %i.kc, 0
  br i1 %or.cond.i, label %alignment_of_long_double.exit.split.us.i, label %alignment_of_long_double.exit.split.i

alignment_of_long_double.exit.split.us.i:         ; preds = %alignment_of_long_double.exit.i, %alignment_of_long_double.exit.split.us.i
  %.020.us.i = phi i64 [ %i.kh, %alignment_of_long_double.exit.split.us.i ], [ %.064, %alignment_of_long_double.exit.i ] ; 2 uses
  %.018.us.i = phi ptr [ %i.kf, %alignment_of_long_double.exit.split.us.i ], [ %.0, %alignment_of_long_double.exit.i ] ; 2 uses
  %.0.us.i = phi ptr [ %i.kg, %alignment_of_long_double.exit.split.us.i ], [ %.066, %alignment_of_long_double.exit.i ] ; 2 uses
  %i.kd = load x86_fp80, ptr %.018.us.i, align 16, !tbaa !56
  %i.ke = fpext x86_fp80 %i.kd to fp128
  store fp128 %i.ke, ptr %.0.us.i, align 16, !tbaa !58
  %i.kf = getelementptr inbounds i8, ptr %.018.us.i, i64 %4
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.us.i, i64 16
  %i.kh = add nsw i64 %.020.us.i, -1
  %i.ki = icmp sgt i64 %.020.us.i, 1
  br i1 %i.ki, label %alignment_of_long_double.exit.split.us.i, label %ldbl_to_f128.exit, !llvm.loop !60

alignment_of_long_double.exit.split.i:            ; preds = %alignment_of_long_double.exit.i, %alignment_of_long_double.exit.split.i
  %.020.i = phi i64 [ %i.km, %alignment_of_long_double.exit.split.i ], [ %.064, %alignment_of_long_double.exit.i ] ; 2 uses
  %.018.i = phi ptr [ %i.kk, %alignment_of_long_double.exit.split.i ], [ %.0, %alignment_of_long_double.exit.i ] ; 2 uses
  %.0.i = phi ptr [ %i.kl, %alignment_of_long_double.exit.split.i ], [ %.066, %alignment_of_long_double.exit.i ] ; 2 uses
  %.0.copyload.i = load x86_fp80, ptr %.018.i, align 1
  %i.kj = fpext x86_fp80 %.0.copyload.i to fp128
  store fp128 %i.kj, ptr %.0.i, align 1
  %i.kk = getelementptr inbounds i8, ptr %.018.i, i64 %4
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.km = add nsw i64 %.020.i, -1
  %i.kn = icmp sgt i64 %.020.i, 1
  br i1 %i.kn, label %alignment_of_long_double.exit.split.i, label %ldbl_to_f128.exit, !llvm.loop !60

ldbl_to_f128.exit:                                ; preds = %alignment_of_long_double.exit.split.i, %alignment_of_long_double.exit.split.us.i, %opal_dt_swap_bytes.exit88
  %i.ko = phi i64 [ %i.fx, %opal_dt_swap_bytes.exit88 ], [ %i.ju, %alignment_of_long_double.exit.split.us.i ], [ %i.ju, %alignment_of_long_double.exit.split.i ] ; 3 uses
  %.1 = phi ptr [ %.0, %opal_dt_swap_bytes.exit88 ], [ %.066, %alignment_of_long_double.exit.split.us.i ], [ %.066, %alignment_of_long_double.exit.split.i ] ; 4 uses
end_hunk_0
begin_hunk_1_@copy_float16_heterogeneous:datatype_check.exit
  store i1 true, ptr @alignment_of_long_double.val, align 8
  br label %alignment_of_long_double.exit.i89

alignment_of_long_double.exit.i89:                ; preds = %.preheader.preheader.i.i100, %bb.b
  %i.kq = phi i64 [ 16, %.preheader.preheader.i.i100 ], [ %i.ko, %bb.b ] ; 3 uses
  %i.kr = ptrtoint ptr %.066 to i64
  %i.ks = shl i64 %i.kq, 32
  %sext.i90 = add i64 %i.ks, -4294967296
  %i.kt = ashr exact i64 %sext.i90, 32
  %i.ku = or i64 %7, %i.kr
  %i.kv = and i64 %i.kt, %i.ku
  %i.kw = ptrtoint ptr %.1 to i64
  %i.kx = and i64 %i.kw, 15
  %i.ky = or i64 %i.kv, %i.kx
  %or.cond.i91 = icmp eq i64 %i.ky, 0
  br i1 %or.cond.i91, label %alignment_of_long_double.exit.split.us.i96, label %alignment_of_long_double.exit.split.i92

alignment_of_long_double.exit.split.us.i96:       ; preds = %alignment_of_long_double.exit.i89, %alignment_of_long_double.exit.split.us.i96
  %.020.us.i97 = phi i64 [ %i.ld, %alignment_of_long_double.exit.split.us.i96 ], [ %.064, %alignment_of_long_double.exit.i89 ] ; 2 uses
  %.018.us.i98 = phi ptr [ %i.lc, %alignment_of_long_double.exit.split.us.i96 ], [ %.1, %alignment_of_long_double.exit.i89 ] ; 2 uses
  %.0.us.i99 = phi ptr [ %i.lb, %alignment_of_long_double.exit.split.us.i96 ], [ %.066, %alignment_of_long_double.exit.i89 ] ; 2 uses
  %i.kz = load fp128, ptr %.018.us.i98, align 16, !tbaa !58
  %i.la = fptrunc fp128 %i.kz to x86_fp80
  store x86_fp80 %i.la, ptr %.0.us.i99, align 16, !tbaa !56
  %i.lb = getelementptr inbounds i8, ptr %.0.us.i99, i64 %7
  %i.lc = getelementptr inbounds nuw i8, ptr %.018.us.i98, i64 16
  %i.ld = add nsw i64 %.020.us.i97, -1
  %i.le = icmp sgt i64 %.020.us.i97, 1
  br i1 %i.le, label %alignment_of_long_double.exit.split.us.i96, label %f128_to_ldbl.exit, !llvm.loop !61

alignment_of_long_double.exit.split.i92:          ; preds = %alignment_of_long_double.exit.i89, %alignment_of_long_double.exit.split.i92
  %.020.i93 = phi i64 [ %i.li, %alignment_of_long_double.exit.split.i92 ], [ %.064, %alignment_of_long_double.exit.i89 ] ; 2 uses
  %.018.i94 = phi ptr [ %i.lh, %alignment_of_long_double.exit.split.i92 ], [ %.1, %alignment_of_long_double.exit.i89 ] ; 2 uses
  %.0.i95 = phi ptr [ %i.lg, %alignment_of_long_double.exit.split.i92 ], [ %.066, %alignment_of_long_double.exit.i89 ] ; 2 uses
  %.0.copyload2.i = load fp128, ptr %.018.i94, align 1
  %i.lf = fptrunc fp128 %.0.copyload2.i to x86_fp80
  store x86_fp80 %i.lf, ptr %.0.i95, align 1
  %i.lg = getelementptr inbounds i8, ptr %.0.i95, i64 %7
  %i.lh = getelementptr inbounds nuw i8, ptr %.018.i94, i64 16
  %i.li = add nsw i64 %.020.i93, -1
  %i.lj = icmp sgt i64 %.020.i93, 1
  br i1 %i.lj, label %alignment_of_long_double.exit.split.i92, label %f128_to_ldbl.exit, !llvm.loop !61

f128_to_ldbl.exit:                                ; preds = %alignment_of_long_double.exit.split.i92, %alignment_of_long_double.exit.split.us.i96, %ldbl_to_f128.exit
  %i.lk = phi i64 [ %i.ko, %ldbl_to_f128.exit ], [ %i.kq, %alignment_of_long_double.exit.split.us.i96 ], [ %i.kq, %alignment_of_long_double.exit.split.i92 ]
  %.2 = phi ptr [ %.1, %ldbl_to_f128.exit ], [ %.066, %alignment_of_long_double.exit.split.us.i96 ], [ %.066, %alignment_of_long_double.exit.split.i92 ]
  %i.ll = load i32, ptr @opal_local_arch, align 4, !tbaa !20
  %i.lm = xor i32 %i.ll, %.060
  %i.ln = and i32 %i.lm, 8
  %.not69 = icmp eq i32 %i.ln, 0
  br i1 %.not69, label %opal_dt_swap_bytes.exit, label %bb.c

bb.c:                                             ; preds = %f128_to_ldbl.exit
  %i.lo = icmp eq ptr %.2, %.065
  br i1 %i.lo, label %.preheader121.preheader, label %bb.d

.preheader121.preheader:                          ; preds = %bb.c
  %i.lp = load i8, ptr %.065, align 1, !tbaa !25
  %i.lq = getelementptr inbounds nuw i8, ptr %.066, i64 15
  store i8 %i.lp, ptr %i.lq, align 1, !tbaa !25
  %i.lr = getelementptr inbounds nuw i8, ptr %.065, i64 1
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !25
  %i.lt = getelementptr inbounds nuw i8, ptr %.066, i64 14
  store i8 %i.ls, ptr %i.lt, align 1, !tbaa !25
  %i.lu = getelementptr inbounds nuw i8, ptr %.065, i64 2
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !25
  %i.lw = getelementptr inbounds nuw i8, ptr %.066, i64 13
  store i8 %i.lv, ptr %i.lw, align 1, !tbaa !25
  %i.lx = getelementptr inbounds nuw i8, ptr %.065, i64 3
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !25
  %i.lz = getelementptr inbounds nuw i8, ptr %.066, i64 12
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !25
  %i.ma = getelementptr inbounds nuw i8, ptr %.065, i64 4
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !25
  %i.mc = getelementptr inbounds nuw i8, ptr %.066, i64 11
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !25
  %i.md = getelementptr inbounds nuw i8, ptr %.065, i64 5
  %i.me = load i8, ptr %i.md, align 1, !tbaa !25
  %i.mf = getelementptr inbounds nuw i8, ptr %.066, i64 10
  store i8 %i.me, ptr %i.mf, align 1, !tbaa !25
  %i.mg = getelementptr inbounds nuw i8, ptr %.065, i64 6
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !25
  %i.mi = getelementptr inbounds nuw i8, ptr %.066, i64 9
  store i8 %i.mh, ptr %i.mi, align 1, !tbaa !25
  %i.mj = getelementptr inbounds nuw i8, ptr %.065, i64 7
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !25
  %i.ml = getelementptr inbounds nuw i8, ptr %.066, i64 8
  store i8 %i.mk, ptr %i.ml, align 1, !tbaa !25
  %i.mm = getelementptr inbounds nuw i8, ptr %.065, i64 8
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !25
  %i.mo = getelementptr inbounds nuw i8, ptr %.066, i64 7
  store i8 %i.mn, ptr %i.mo, align 1, !tbaa !25
  %i.mp = getelementptr inbounds nuw i8, ptr %.065, i64 9
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !25
  %i.mr = getelementptr inbounds nuw i8, ptr %.066, i64 6
  store i8 %i.mq, ptr %i.mr, align 1, !tbaa !25
  %i.ms = getelementptr inbounds nuw i8, ptr %.065, i64 10
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !25
  %i.mu = getelementptr inbounds nuw i8, ptr %.066, i64 5
  store i8 %i.mt, ptr %i.mu, align 1, !tbaa !25
  %i.mv = getelementptr inbounds nuw i8, ptr %.065, i64 11
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !25
  %i.mx = getelementptr inbounds nuw i8, ptr %.066, i64 4
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !25
  %i.my = getelementptr inbounds nuw i8, ptr %.065, i64 12
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !25
  %i.na = getelementptr inbounds nuw i8, ptr %.066, i64 3
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !25
  %i.nb = getelementptr inbounds nuw i8, ptr %.065, i64 13
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !25
  %i.nd = getelementptr inbounds nuw i8, ptr %.066, i64 2
  store i8 %i.nc, ptr %i.nd, align 1, !tbaa !25
  %i.ne = getelementptr inbounds nuw i8, ptr %.065, i64 14
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !25
  %i.ng = getelementptr inbounds nuw i8, ptr %.066, i64 1
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !25
  %i.nh = getelementptr inbounds nuw i8, ptr %.065, i64 15
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !25
  store i8 %i.ni, ptr %.066, align 1, !tbaa !25
  br i1 %i.m, label %.lr.ph.i105, label %opal_dt_swap_bytes.exit

.lr.ph.i105:                                      ; preds = %.preheader121.preheader, %.lr.ph.i105
  %.036.i106 = phi ptr [ %i.nk, %.lr.ph.i105 ], [ %.065, %.preheader121.preheader ] ; 16 uses
  %.02535.i107 = phi ptr [ %i.nj, %.lr.ph.i105 ], [ %.066, %.preheader121.preheader ] ; 16 uses
  %.02934.i108 = phi i64 [ %i.pf, %.lr.ph.i105 ], [ %spec.select, %.preheader121.preheader ]
  %i.nj = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 16 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.036.i106, i64 16 ; 2 uses
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !25
  %i.nm = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 31
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !25
  %i.nn = getelementptr inbounds nuw i8, ptr %.036.i106, i64 17
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !25
  %i.np = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 30
  store i8 %i.no, ptr %i.np, align 1, !tbaa !25
  %i.nq = getelementptr inbounds nuw i8, ptr %.036.i106, i64 18
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !25
  %i.ns = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 29
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !25
  %i.nt = getelementptr inbounds nuw i8, ptr %.036.i106, i64 19
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !25
  %i.nv = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 28
  store i8 %i.nu, ptr %i.nv, align 1, !tbaa !25
  %i.nw = getelementptr inbounds nuw i8, ptr %.036.i106, i64 20
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !25
  %i.ny = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 27
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !25
  %i.nz = getelementptr inbounds nuw i8, ptr %.036.i106, i64 21
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !25
  %i.ob = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 26
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !25
  %i.oc = getelementptr inbounds nuw i8, ptr %.036.i106, i64 22
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !25
  %i.oe = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 25
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !25
  %i.of = getelementptr inbounds nuw i8, ptr %.036.i106, i64 23
  %i.og = load i8, ptr %i.of, align 1, !tbaa !25
  %i.oh = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 24
  store i8 %i.og, ptr %i.oh, align 1, !tbaa !25
  %i.oi = getelementptr inbounds nuw i8, ptr %.036.i106, i64 24
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !25
  %i.ok = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 23
  store i8 %i.oj, ptr %i.ok, align 1, !tbaa !25
  %i.ol = getelementptr inbounds nuw i8, ptr %.036.i106, i64 25
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !25
  %i.on = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 22
  store i8 %i.om, ptr %i.on, align 1, !tbaa !25
  %i.oo = getelementptr inbounds nuw i8, ptr %.036.i106, i64 26
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !25
  %i.oq = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 21
  store i8 %i.op, ptr %i.oq, align 1, !tbaa !25
  %i.or = getelementptr inbounds nuw i8, ptr %.036.i106, i64 27
  %i.os = load i8, ptr %i.or, align 1, !tbaa !25
  %i.ot = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 20
  store i8 %i.os, ptr %i.ot, align 1, !tbaa !25
  %i.ou = getelementptr inbounds nuw i8, ptr %.036.i106, i64 28
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !25
  %i.ow = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 19
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !25
  %i.ox = getelementptr inbounds nuw i8, ptr %.036.i106, i64 29
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !25
  %i.oz = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 18
  store i8 %i.oy, ptr %i.oz, align 1, !tbaa !25
  %i.pa = getelementptr inbounds nuw i8, ptr %.036.i106, i64 30
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !25
  %i.pc = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 17
  store i8 %i.pb, ptr %i.pc, align 1, !tbaa !25
  %i.pd = getelementptr inbounds nuw i8, ptr %.036.i106, i64 31
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !25
  store i8 %i.pe, ptr %i.nj, align 1, !tbaa !25
  %i.pf = add i64 %.02934.i108, -1                ; 2 uses
  %i.pg = icmp ugt i64 %i.pf, 1
  br i1 %i.pg, label %.lr.ph.i105, label %opal_dt_swap_bytes.exit, !llvm.loop !42

bb.d:                                             ; preds = %bb.c
  %i.ph = load <16 x i8>, ptr %.066, align 1, !tbaa !25
  %i.pi = shufflevector <16 x i8> %i.ph, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.pi, ptr %.066, align 1, !tbaa !25
  br i1 %i.m, label %.lr.ph.i114, label %opal_dt_swap_bytes.exit

.lr.ph.i114:                                      ; preds = %bb.d, %.lr.ph.i114
  %.046.i = phi ptr [ %i.pj, %.lr.ph.i114 ], [ %.066, %bb.d ]
  %.03545.i = phi i64 [ %indvar.next.i, %.lr.ph.i114 ], [ %spec.select, %bb.d ]
  %i.pj = getelementptr inbounds nuw i8, ptr %.046.i, i64 16 ; 3 uses
  %i.pk = load <16 x i8>, ptr %i.pj, align 1, !tbaa !25
  %i.pl = shufflevector <16 x i8> %i.pk, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.pl, ptr %i.pj, align 1, !tbaa !25
  %indvar.next.i = add i64 %.03545.i, -1          ; 2 uses
  %9 = icmp ugt i64 %indvar.next.i, 1
  br i1 %9, label %.lr.ph.i114, label %opal_dt_swap_bytes.exit, !llvm.loop !62

opal_dt_swap_bytes.exit:                          ; preds = %.lr.ph.i114, %.lr.ph.i105, %bb.d, %.preheader121.preheader, %f128_to_ldbl.exit
  %i.pm = getelementptr inbounds i8, ptr %.066, i64 %7
  %i.pn = getelementptr inbounds i8, ptr %.065, i64 %4
  %i.po = add i64 %.163, -1                       ; 2 uses
  %.not71 = icmp eq i64 %i.po, 0
  br i1 %.not71, label %.split.us, label %datatype_check.exit.split, !llvm.loop !55

.split.us:                                        ; preds = %opal_dt_swap_bytes.exit, %.preheader.us, %opal_dt_swap_bytes.exit.loopexit.us.us, %opal_dt_swap_bytes.exit.us.us.prol.loopexit, %opal_dt_swap_bytes.exit.us.us
  %i.pp = mul i64 %spec.select, %4
  store i64 %i.pp, ptr %8, align 8, !tbaa !38
  %i.pq = trunc i64 %spec.select to i32
  ret i32 %i.pq
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @copy_short_float_complex_heterogeneous(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 %6, i64 noundef %7, ptr nofree noundef writeonly captures(none) %8) #0 {
datatype_check.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = and i32 %i.b, 65536
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.opal_local_arch = select i1 %.not, ptr %i.d, ptr @opal_local_arch
  %opal_local_arch. = select i1 %.not, ptr @opal_local_arch, ptr %i.d
  %.0 = load i32, ptr %opal_local_arch., align 4, !tbaa !20
  %.028 = load i32, ptr %.opal_local_arch, align 4, !tbaa !20
  %i.e = shl i64 %1, 2
  %i.f = icmp ugt i64 %i.e, %3
  %i.g = lshr i64 %3, 2
  %spec.select = select i1 %i.f, i64 %i.g, i64 %1 ; 4 uses
  %i.h = icmp eq i64 %7, 8
  %i.i = icmp eq i64 %4, 8
  %or.cond = and i1 %i.i, %i.h                    ; 2 uses
  %i.j = shl i64 %spec.select, 1
  %.030 = select i1 %or.cond, i64 %i.j, i64 2     ; 3 uses
  %.029 = select i1 %or.cond, i64 1, i64 %spec.select ; 9 uses
  %i.k = xor i32 %.028, %.0
  %i.l = and i32 %i.k, 8
  %.not34 = icmp eq i32 %i.l, 0
  %i.m = shl i64 %.030, 2                         ; 5 uses
  br i1 %.not34, label %opal_dt_swap_bytes.exit.us.preheader, label %datatype_check.exit.split

opal_dt_swap_bytes.exit.us.preheader:             ; preds = %datatype_check.exit
  %i.n = add i64 %.029, -1
  %xtraiter55 = and i64 %.029, 3                  ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol

opal_dt_swap_bytes.exit.us.prol:                  ; preds = %opal_dt_swap_bytes.exit.us.preheader, %opal_dt_swap_bytes.exit.us.prol
  %.032.us.prol = phi ptr [ %i.o, %opal_dt_swap_bytes.exit.us.prol ], [ %5, %opal_dt_swap_bytes.exit.us.preheader ] ; 2 uses
  %.031.us.prol = phi ptr [ %i.p, %opal_dt_swap_bytes.exit.us.prol ], [ %2, %opal_dt_swap_bytes.exit.us.preheader ] ; 2 uses
  %.1.us.prol = phi i64 [ %i.q, %opal_dt_swap_bytes.exit.us.prol ], [ %.029, %opal_dt_swap_bytes.exit.us.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %opal_dt_swap_bytes.exit.us.prol ], [ 0, %opal_dt_swap_bytes.exit.us.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.032.us.prol, ptr align 1 %.031.us.prol, i64 %i.m, i1 false)
  %i.o = getelementptr inbounds i8, ptr %.032.us.prol, i64 %7 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.031.us.prol, i64 %4 ; 2 uses
  %i.q = add i64 %.1.us.prol, -1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter55
  br i1 %prol.iter.cmp.not, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol, !llvm.loop !63

opal_dt_swap_bytes.exit.us.prol.loopexit:         ; preds = %opal_dt_swap_bytes.exit.us.prol, %opal_dt_swap_bytes.exit.us.preheader
  %.032.us.unr = phi ptr [ %5, %opal_dt_swap_bytes.exit.us.preheader ], [ %i.o, %opal_dt_swap_bytes.exit.us.prol ]
  %.031.us.unr = phi ptr [ %2, %opal_dt_swap_bytes.exit.us.preheader ], [ %i.p, %opal_dt_swap_bytes.exit.us.prol ]
  %.1.us.unr = phi i64 [ %.029, %opal_dt_swap_bytes.exit.us.preheader ], [ %i.q, %opal_dt_swap_bytes.exit.us.prol ]
  %i.r = icmp ult i64 %i.n, 3
  br i1 %i.r, label %.split.us, label %opal_dt_swap_bytes.exit.us

opal_dt_swap_bytes.exit.us:                       ; preds = %opal_dt_swap_bytes.exit.us.prol.loopexit, %opal_dt_swap_bytes.exit.us
  %.032.us = phi ptr [ %i.y, %opal_dt_swap_bytes.exit.us ], [ %.032.us.unr, %opal_dt_swap_bytes.exit.us.prol.loopexit ] ; 2 uses
  %.031.us = phi ptr [ %i.z, %opal_dt_swap_bytes.exit.us ], [ %.031.us.unr, %opal_dt_swap_bytes.exit.us.prol.loopexit ] ; 2 uses
  %.1.us = phi i64 [ %i.aa, %opal_dt_swap_bytes.exit.us ], [ %.1.us.unr, %opal_dt_swap_bytes.exit.us.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.032.us, ptr align 1 %.031.us, i64 %i.m, i1 false)
  %i.s = getelementptr inbounds i8, ptr %.032.us, i64 %7 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.031.us, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.t, i64 %i.m, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %7 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.v, i64 %i.m, i1 false)
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %7 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.x, i64 %i.m, i1 false)
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %7
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %4
  %i.aa = add i64 %.1.us, -4                      ; 2 uses
  %.not35.us.3 = icmp eq i64 %i.aa, 0
  br i1 %.not35.us.3, label %.split.us, label %opal_dt_swap_bytes.exit.us, !llvm.loop !64

datatype_check.exit.split:                        ; preds = %datatype_check.exit
  %.not40 = icmp eq i64 %.030, 0
  br i1 %.not40, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %datatype_check.exit.split
  %xtraiter = and i64 %.029, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.us.prol.loopexit, label %.preheader.us.prol

.preheader.us.prol:                               ; preds = %.preheader.us.preheader
  %i.ab = load i8, ptr %2, align 1, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !25
  store i8 %i.ak, ptr %5, align 1, !tbaa !25
  %i.al = getelementptr inbounds i8, ptr %5, i64 %7
  %i.am = getelementptr inbounds i8, ptr %2, i64 %4
  %i.an = add nsw i64 %.029, -1
  br label %.preheader.us.prol.loopexit

.preheader.us.prol.loopexit:                      ; preds = %.preheader.us.prol, %.preheader.us.preheader
  %.032.us41.unr = phi ptr [ %5, %.preheader.us.preheader ], [ %i.al, %.preheader.us.prol ]
  %.031.us42.unr = phi ptr [ %2, %.preheader.us.preheader ], [ %i.am, %.preheader.us.prol ]
  %.1.us43.unr = phi i64 [ %.029, %.preheader.us.preheader ], [ %i.an, %.preheader.us.prol ]
  %i.ao = icmp eq i64 %.029, 1
  br i1 %i.ao, label %.split.us, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.prol.loopexit, %.preheader.us
  %.032.us41 = phi ptr [ %i.bl, %.preheader.us ], [ %.032.us41.unr, %.preheader.us.prol.loopexit ] ; 5 uses
  %.031.us42 = phi ptr [ %i.bm, %.preheader.us ], [ %.031.us42.unr, %.preheader.us.prol.loopexit ] ; 5 uses
  %.1.us43 = phi i64 [ %i.bn, %.preheader.us ], [ %.1.us43.unr, %.preheader.us.prol.loopexit ]
  %i.ap = load i8, ptr %.031.us42, align 1, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %.032.us41, i64 3
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %.031.us42, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %.032.us41, i64 2
  store i8 %i.as, ptr %i.at, align 1, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %.031.us42, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %.032.us41, i64 1
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %.031.us42, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !25
  store i8 %i.ay, ptr %.032.us41, align 1, !tbaa !25
  %i.az = getelementptr inbounds i8, ptr %.032.us41, i64 %7 ; 5 uses
  %i.ba = getelementptr inbounds i8, ptr %.031.us42, i64 %4 ; 5 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !25
  store i8 %i.bk, ptr %i.az, align 1, !tbaa !25
  %i.bl = getelementptr inbounds i8, ptr %i.az, i64 %7
  %i.bm = getelementptr inbounds i8, ptr %i.ba, i64 %4
  %i.bn = add i64 %.1.us43, -2                    ; 2 uses
  %.not35.us45.1 = icmp eq i64 %i.bn, 0
  br i1 %.not35.us45.1, label %.split.us, label %.preheader.us, !llvm.loop !64

.preheader:                                       ; preds = %datatype_check.exit.split, %opal_dt_swap_bytes.exit.loopexit
  %.032 = phi ptr [ %i.cm, %opal_dt_swap_bytes.exit.loopexit ], [ %5, %datatype_check.exit.split ] ; 6 uses
  %.031 = phi ptr [ %i.cn, %opal_dt_swap_bytes.exit.loopexit ], [ %2, %datatype_check.exit.split ] ; 6 uses
  %.1 = phi i64 [ %i.co, %opal_dt_swap_bytes.exit.loopexit ], [ %.029, %datatype_check.exit.split ]
  %i.bo = load i8, ptr %.031, align 1, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %.032, i64 3
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %.031, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %.032, i64 2
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %.031, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !25
  %i.bv = getelementptr inbounds nuw i8, ptr %.032, i64 1
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !25
  %i.bw = getelementptr inbounds nuw i8, ptr %.031, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !25
  store i8 %i.bx, ptr %.032, align 1, !tbaa !25
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader, %.lr.ph.i
  %.036.i = phi ptr [ %i.bz, %.lr.ph.i ], [ %.031, %.preheader ] ; 4 uses
  %.02535.i = phi ptr [ %i.by, %.lr.ph.i ], [ %.032, %.preheader ] ; 4 uses
  %.02934.i = phi i64 [ %i.ck, %.lr.ph.i ], [ %.030, %.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %.02535.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.036.i, i64 4 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %.02535.i, i64 7
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !25
  %i.cc = getelementptr inbounds nuw i8, ptr %.036.i, i64 5
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !25
  %i.ce = getelementptr inbounds nuw i8, ptr %.02535.i, i64 6
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %.036.i, i64 6
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !25
end_hunk_1
begin_hunk_2_@copy_double_complex_heterogeneous:datatype_check.exit
  %i.o = getelementptr inbounds i8, ptr %.032.us.prol, i64 %7 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.031.us.prol, i64 %4 ; 2 uses
  %i.q = add i64 %.1.us.prol, -1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol, !llvm.loop !67

opal_dt_swap_bytes.exit.us.prol.loopexit:         ; preds = %opal_dt_swap_bytes.exit.us.prol, %opal_dt_swap_bytes.exit.us.preheader
  %.032.us.unr = phi ptr [ %5, %opal_dt_swap_bytes.exit.us.preheader ], [ %i.o, %opal_dt_swap_bytes.exit.us.prol ]
  %.031.us.unr = phi ptr [ %2, %opal_dt_swap_bytes.exit.us.preheader ], [ %i.p, %opal_dt_swap_bytes.exit.us.prol ]
  %.1.us.unr = phi i64 [ %.029, %opal_dt_swap_bytes.exit.us.preheader ], [ %i.q, %opal_dt_swap_bytes.exit.us.prol ]
  %i.r = icmp ult i64 %i.n, 3
  br i1 %i.r, label %.split.us, label %opal_dt_swap_bytes.exit.us

opal_dt_swap_bytes.exit.us:                       ; preds = %opal_dt_swap_bytes.exit.us.prol.loopexit, %opal_dt_swap_bytes.exit.us
  %.032.us = phi ptr [ %i.y, %opal_dt_swap_bytes.exit.us ], [ %.032.us.unr, %opal_dt_swap_bytes.exit.us.prol.loopexit ] ; 2 uses
  %.031.us = phi ptr [ %i.z, %opal_dt_swap_bytes.exit.us ], [ %.031.us.unr, %opal_dt_swap_bytes.exit.us.prol.loopexit ] ; 2 uses
  %.1.us = phi i64 [ %i.aa, %opal_dt_swap_bytes.exit.us ], [ %.1.us.unr, %opal_dt_swap_bytes.exit.us.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.032.us, ptr align 1 %.031.us, i64 %i.m, i1 false)
  %i.s = getelementptr inbounds i8, ptr %.032.us, i64 %7 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.031.us, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.t, i64 %i.m, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %7 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.v, i64 %i.m, i1 false)
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %7 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.x, i64 %i.m, i1 false)
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %7
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %4
  %i.aa = add i64 %.1.us, -4                      ; 2 uses
  %.not35.us.3 = icmp eq i64 %i.aa, 0
  br i1 %.not35.us.3, label %.split.us, label %opal_dt_swap_bytes.exit.us, !llvm.loop !68

datatype_check.exit.split:                        ; preds = %datatype_check.exit
  %.not40 = icmp eq i64 %.030, 0
  br i1 %.not40, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %datatype_check.exit.split, %.preheader.us
  %.032.us41 = phi ptr [ %i.ax, %.preheader.us ], [ %5, %datatype_check.exit.split ] ; 9 uses
  %.031.us42 = phi ptr [ %i.ay, %.preheader.us ], [ %2, %datatype_check.exit.split ] ; 9 uses
  %.1.us43 = phi i64 [ %i.az, %.preheader.us ], [ %.029, %datatype_check.exit.split ]
  %i.ab = load i8, ptr %.031.us42, align 1, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %.032.us41, i64 7
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %.031.us42, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %.032.us41, i64 6
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %.031.us42, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %.032.us41, i64 5
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %.031.us42, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %.032.us41, i64 4
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %.031.us42, i64 4
  %i.an = load i8, ptr %i.am, align 1, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %.032.us41, i64 3
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %.031.us42, i64 5
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %.032.us41, i64 2
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %.031.us42, i64 6
  %i.at = load i8, ptr %i.as, align 1, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %.032.us41, i64 1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %.031.us42, i64 7
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !25
  store i8 %i.aw, ptr %.032.us41, align 1, !tbaa !25
  %i.ax = getelementptr inbounds i8, ptr %.032.us41, i64 %7
  %i.ay = getelementptr inbounds i8, ptr %.031.us42, i64 %4
  %i.az = add i64 %.1.us43, -1                    ; 2 uses
  %.not35.us45 = icmp eq i64 %i.az, 0
  br i1 %.not35.us45, label %.split.us, label %.preheader.us, !llvm.loop !68

.preheader:                                       ; preds = %datatype_check.exit.split, %opal_dt_swap_bytes.exit.loopexit
  %.032 = phi ptr [ %i.cw, %opal_dt_swap_bytes.exit.loopexit ], [ %5, %datatype_check.exit.split ] ; 10 uses
  %.031 = phi ptr [ %i.cx, %opal_dt_swap_bytes.exit.loopexit ], [ %2, %datatype_check.exit.split ] ; 10 uses
  %.1 = phi i64 [ %i.cy, %opal_dt_swap_bytes.exit.loopexit ], [ %.029, %datatype_check.exit.split ]
  %i.ba = load i8, ptr %.031, align 1, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %.032, i64 7
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %.031, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %.032, i64 6
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %.031, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %.032, i64 5
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %.031, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %.032, i64 4
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %.031, i64 4
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %.032, i64 3
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %.031, i64 5
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %.032, i64 2
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %.031, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %.032, i64 1
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %.031, i64 7
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !25
  store i8 %i.bv, ptr %.032, align 1, !tbaa !25
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader, %.lr.ph.i
  %.036.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %.031, %.preheader ] ; 8 uses
  %.02535.i = phi ptr [ %i.bw, %.lr.ph.i ], [ %.032, %.preheader ] ; 8 uses
  %.02934.i = phi i64 [ %i.cu, %.lr.ph.i ], [ %.030, %.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.02535.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.036.i, i64 8 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %.02535.i, i64 15
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %.036.i, i64 9
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !25
  %i.cc = getelementptr inbounds nuw i8, ptr %.02535.i, i64 14
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !25
  %i.cd = getelementptr inbounds nuw i8, ptr %.036.i, i64 10
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %.02535.i, i64 13
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !25
  %i.cg = getelementptr inbounds nuw i8, ptr %.036.i, i64 11
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !25
  %i.ci = getelementptr inbounds nuw i8, ptr %.02535.i, i64 12
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !25
  %i.cj = getelementptr inbounds nuw i8, ptr %.036.i, i64 12
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !25
  %i.cl = getelementptr inbounds nuw i8, ptr %.02535.i, i64 11
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !25
  %i.cm = getelementptr inbounds nuw i8, ptr %.036.i, i64 13
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %.02535.i, i64 10
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !25
  %i.cp = getelementptr inbounds nuw i8, ptr %.036.i, i64 14
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %.02535.i, i64 9
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !25
  %i.cs = getelementptr inbounds nuw i8, ptr %.036.i, i64 15
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !25
  store i8 %i.ct, ptr %i.bw, align 1, !tbaa !25
  %i.cu = add i64 %.02934.i, -1                   ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, 1
  br i1 %i.cv, label %.lr.ph.i, label %opal_dt_swap_bytes.exit.loopexit, !llvm.loop !42

opal_dt_swap_bytes.exit.loopexit:                 ; preds = %.lr.ph.i
  %i.cw = getelementptr inbounds i8, ptr %.032, i64 %7
  %i.cx = getelementptr inbounds i8, ptr %.031, i64 %4
  %i.cy = add i64 %.1, -1                         ; 2 uses
  %.not35 = icmp eq i64 %i.cy, 0
  br i1 %.not35, label %.split.us, label %.preheader, !llvm.loop !68

.split.us:                                        ; preds = %opal_dt_swap_bytes.exit.loopexit, %.preheader.us, %opal_dt_swap_bytes.exit.us.prol.loopexit, %opal_dt_swap_bytes.exit.us
  %i.cz = mul i64 %spec.select, %4
  store i64 %i.cz, ptr %8, align 8, !tbaa !38
  %i.da = trunc i64 %spec.select to i32
  ret i32 %i.da
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @copy_long_double_complex_heterogeneous(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6, i64 noundef %7, ptr nofree noundef writeonly captures(none) %8) #1 {
datatype_check.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = and i32 %i.b, 65536
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.opal_local_arch = select i1 %.not, ptr %i.d, ptr @opal_local_arch
  %opal_local_arch. = select i1 %.not, ptr @opal_local_arch, ptr %i.d
  %.060 = load i32, ptr %opal_local_arch., align 4, !tbaa !20 ; 3 uses
  %.061 = load i32, ptr %.opal_local_arch, align 4, !tbaa !20 ; 3 uses
  %i.e = shl i64 %1, 4
  %i.f = icmp ugt i64 %i.e, %3
  %i.g = lshr i64 %3, 4
  %spec.select = select i1 %i.f, i64 %i.g, i64 %1 ; 4 uses
  %i.h = icmp eq i64 %7, 32
  %i.i = icmp eq i64 %4, 32
  %or.cond = and i1 %i.i, %i.h                    ; 2 uses
  %i.j = shl i64 %spec.select, 1
  %.064 = select i1 %or.cond, i64 %i.j, i64 2     ; 10 uses
  %.062 = select i1 %or.cond, i64 1, i64 %spec.select ; 7 uses
  %i.k = xor i32 %.061, %.060                     ; 2 uses
  %i.l = and i32 %i.k, 8126464
  %i.m = icmp eq i32 %i.l, 0
  %.not120 = icmp eq i64 %.064, 0                 ; 4 uses
  %i.n = and i32 %.061, 8126464
  %or.cond73 = icmp eq i32 %i.n, 5767168
  %i.o = sdiv i64 %4, 2                           ; 3 uses
  %i.p = and i32 %.060, 8126464
  %or.cond75 = icmp eq i32 %i.p, 5767168
  %i.q = sdiv i64 %7, 2                           ; 3 uses
  %i.r = shl i64 %.064, 4                         ; 5 uses
  br i1 %i.m, label %datatype_check.exit.split.us, label %datatype_check.exit.split.preheader

datatype_check.exit.split.preheader:              ; preds = %datatype_check.exit
  %alignment_of_long_double.val.promoted.b = load i1, ptr @alignment_of_long_double.val, align 8
  %alignment_of_long_double.val.promoted = select i1 %alignment_of_long_double.val.promoted.b, i64 16, i64 0
  br label %datatype_check.exit.split

datatype_check.exit.split.us:                     ; preds = %datatype_check.exit
  %i.s = and i32 %i.k, 8
  %.not70 = icmp eq i32 %i.s, 0
  br i1 %.not70, label %opal_dt_swap_bytes.exit.us.us.preheader, label %datatype_check.exit.split.us.split

opal_dt_swap_bytes.exit.us.us.preheader:          ; preds = %datatype_check.exit.split.us
  %i.t = add i64 %.062, -1
  %xtraiter = and i64 %.062, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %opal_dt_swap_bytes.exit.us.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.us.prol

opal_dt_swap_bytes.exit.us.us.prol:               ; preds = %opal_dt_swap_bytes.exit.us.us.preheader, %opal_dt_swap_bytes.exit.us.us.prol
  %.066.us.us.prol = phi ptr [ %i.u, %opal_dt_swap_bytes.exit.us.us.prol ], [ %5, %opal_dt_swap_bytes.exit.us.us.preheader ] ; 2 uses
  %.065.us.us.prol = phi ptr [ %i.v, %opal_dt_swap_bytes.exit.us.us.prol ], [ %2, %opal_dt_swap_bytes.exit.us.us.preheader ] ; 2 uses
  %.163.us.us.prol = phi i64 [ %i.w, %opal_dt_swap_bytes.exit.us.us.prol ], [ %.062, %opal_dt_swap_bytes.exit.us.us.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %opal_dt_swap_bytes.exit.us.us.prol ], [ 0, %opal_dt_swap_bytes.exit.us.us.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.066.us.us.prol, ptr align 1 %.065.us.us.prol, i64 %i.r, i1 false)
  %i.u = getelementptr inbounds i8, ptr %.066.us.us.prol, i64 %7 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.065.us.us.prol, i64 %4 ; 2 uses
  %i.w = add i64 %.163.us.us.prol, -1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %opal_dt_swap_bytes.exit.us.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.us.prol, !llvm.loop !69

opal_dt_swap_bytes.exit.us.us.prol.loopexit:      ; preds = %opal_dt_swap_bytes.exit.us.us.prol, %opal_dt_swap_bytes.exit.us.us.preheader
  %.066.us.us.unr = phi ptr [ %5, %opal_dt_swap_bytes.exit.us.us.preheader ], [ %i.u, %opal_dt_swap_bytes.exit.us.us.prol ]
  %.065.us.us.unr = phi ptr [ %2, %opal_dt_swap_bytes.exit.us.us.preheader ], [ %i.v, %opal_dt_swap_bytes.exit.us.us.prol ]
  %.163.us.us.unr = phi i64 [ %.062, %opal_dt_swap_bytes.exit.us.us.preheader ], [ %i.w, %opal_dt_swap_bytes.exit.us.us.prol ]
  %i.x = icmp ult i64 %i.t, 3
  br i1 %i.x, label %.split.us, label %opal_dt_swap_bytes.exit.us.us

opal_dt_swap_bytes.exit.us.us:                    ; preds = %opal_dt_swap_bytes.exit.us.us.prol.loopexit, %opal_dt_swap_bytes.exit.us.us
  %.066.us.us = phi ptr [ %i.ae, %opal_dt_swap_bytes.exit.us.us ], [ %.066.us.us.unr, %opal_dt_swap_bytes.exit.us.us.prol.loopexit ] ; 2 uses
  %.065.us.us = phi ptr [ %i.af, %opal_dt_swap_bytes.exit.us.us ], [ %.065.us.us.unr, %opal_dt_swap_bytes.exit.us.us.prol.loopexit ] ; 2 uses
  %.163.us.us = phi i64 [ %i.ag, %opal_dt_swap_bytes.exit.us.us ], [ %.163.us.us.unr, %opal_dt_swap_bytes.exit.us.us.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.066.us.us, ptr align 1 %.065.us.us, i64 %i.r, i1 false)
  %i.y = getelementptr inbounds i8, ptr %.066.us.us, i64 %7 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.065.us.us, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.z, i64 %i.r, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %7 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ab, i64 %i.r, i1 false)
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %7 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.ad, i64 %i.r, i1 false)
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %7
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %4
  %i.ag = add i64 %.163.us.us, -4                 ; 2 uses
  %.not71.us.us.3 = icmp eq i64 %i.ag, 0
  br i1 %.not71.us.us.3, label %.split.us, label %opal_dt_swap_bytes.exit.us.us, !llvm.loop !70

datatype_check.exit.split.us.split:               ; preds = %datatype_check.exit.split.us
  br i1 %.not120, label %.preheader.us.us, label %.preheader.us

.preheader.us.us:                                 ; preds = %datatype_check.exit.split.us.split, %.preheader.us.us
  %.066.us.us130 = phi ptr [ %i.cb, %.preheader.us.us ], [ %5, %datatype_check.exit.split.us.split ] ; 17 uses
  %.065.us.us131 = phi ptr [ %i.cc, %.preheader.us.us ], [ %2, %datatype_check.exit.split.us.split ] ; 17 uses
  %.163.us.us132 = phi i64 [ %i.cd, %.preheader.us.us ], [ %.062, %datatype_check.exit.split.us.split ]
  %i.ah = load i8, ptr %.065.us.us131, align 1, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %.066.us.us130, i64 15
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %.065.us.us131, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %.066.us.us130, i64 14
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %.065.us.us131, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %.066.us.us130, i64 13
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %.065.us.us131, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %.066.us.us130, i64 12
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %.065.us.us131, i64 4
  %i.at = load i8, ptr %i.as, align 1, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %.066.us.us130, i64 11
  store i8 %i.at, ptr %i.au, align 1, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %.065.us.us131, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %.066.us.us130, i64 10
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %.065.us.us131, i64 6
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %.066.us.us130, i64 9
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %.065.us.us131, i64 7
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %.066.us.us130, i64 8
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %.065.us.us131, i64 8
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %.066.us.us130, i64 7
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %.065.us.us131, i64 9
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %.066.us.us130, i64 6
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %.065.us.us131, i64 10
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !25
  %i.bm = getelementptr inbounds nuw i8, ptr %.066.us.us130, i64 5
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %.065.us.us131, i64 11
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %.066.us.us130, i64 4
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %.065.us.us131, i64 12
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %.066.us.us130, i64 3
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %.065.us.us131, i64 13
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !25
  %i.bv = getelementptr inbounds nuw i8, ptr %.066.us.us130, i64 2
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !25
  %i.bw = getelementptr inbounds nuw i8, ptr %.065.us.us131, i64 14
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %.066.us.us130, i64 1
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %.065.us.us131, i64 15
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !25
  store i8 %i.ca, ptr %.066.us.us130, align 1, !tbaa !25
  %i.cb = getelementptr inbounds i8, ptr %.066.us.us130, i64 %7
  %i.cc = getelementptr inbounds i8, ptr %.065.us.us131, i64 %4
  %i.cd = add i64 %.163.us.us132, -1              ; 2 uses
  %.not71.us.us134 = icmp eq i64 %i.cd, 0
  br i1 %.not71.us.us134, label %.split.us, label %.preheader.us.us, !llvm.loop !70

.preheader.us:                                    ; preds = %datatype_check.exit.split.us.split, %opal_dt_swap_bytes.exit.loopexit.us
  %.066.us = phi ptr [ %i.fw, %opal_dt_swap_bytes.exit.loopexit.us ], [ %5, %datatype_check.exit.split.us.split ] ; 18 uses
  %.065.us = phi ptr [ %i.fx, %opal_dt_swap_bytes.exit.loopexit.us ], [ %2, %datatype_check.exit.split.us.split ] ; 18 uses
  %.163.us = phi i64 [ %i.fy, %opal_dt_swap_bytes.exit.loopexit.us ], [ %.062, %datatype_check.exit.split.us.split ]
  %i.ce = load i8, ptr %.065.us, align 1, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %.066.us, i64 15
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !25
  %i.cg = getelementptr inbounds nuw i8, ptr %.065.us, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !25
  %i.ci = getelementptr inbounds nuw i8, ptr %.066.us, i64 14
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !25
  %i.cj = getelementptr inbounds nuw i8, ptr %.065.us, i64 2
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !25
  %i.cl = getelementptr inbounds nuw i8, ptr %.066.us, i64 13
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !25
  %i.cm = getelementptr inbounds nuw i8, ptr %.065.us, i64 3
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %.066.us, i64 12
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !25
  %i.cp = getelementptr inbounds nuw i8, ptr %.065.us, i64 4
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %.066.us, i64 11
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !25
  %i.cs = getelementptr inbounds nuw i8, ptr %.065.us, i64 5
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %.066.us, i64 10
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !25
  %i.cv = getelementptr inbounds nuw i8, ptr %.065.us, i64 6
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !25
  %i.cx = getelementptr inbounds nuw i8, ptr %.066.us, i64 9
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !25
  %i.cy = getelementptr inbounds nuw i8, ptr %.065.us, i64 7
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !25
  %i.da = getelementptr inbounds nuw i8, ptr %.066.us, i64 8
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !25
  %i.db = getelementptr inbounds nuw i8, ptr %.065.us, i64 8
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !25
  %i.dd = getelementptr inbounds nuw i8, ptr %.066.us, i64 7
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !25
  %i.de = getelementptr inbounds nuw i8, ptr %.065.us, i64 9
  %i.df = load i8, ptr %i.de, align 1, !tbaa !25
  %i.dg = getelementptr inbounds nuw i8, ptr %.066.us, i64 6
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !25
  %i.dh = getelementptr inbounds nuw i8, ptr %.065.us, i64 10
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !25
  %i.dj = getelementptr inbounds nuw i8, ptr %.066.us, i64 5
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !25
  %i.dk = getelementptr inbounds nuw i8, ptr %.065.us, i64 11
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !25
  %i.dm = getelementptr inbounds nuw i8, ptr %.066.us, i64 4
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !25
  %i.dn = getelementptr inbounds nuw i8, ptr %.065.us, i64 12
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !25
  %i.dp = getelementptr inbounds nuw i8, ptr %.066.us, i64 3
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !25
  %i.dq = getelementptr inbounds nuw i8, ptr %.065.us, i64 13
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !25
  %i.ds = getelementptr inbounds nuw i8, ptr %.066.us, i64 2
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !25
  %i.dt = getelementptr inbounds nuw i8, ptr %.065.us, i64 14
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !25
  %i.dv = getelementptr inbounds nuw i8, ptr %.066.us, i64 1
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !25
  %i.dw = getelementptr inbounds nuw i8, ptr %.065.us, i64 15
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !25
  store i8 %i.dx, ptr %.066.us, align 1, !tbaa !25
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.preheader.us, %.lr.ph.i.us
  %.036.i.us = phi ptr [ %i.dz, %.lr.ph.i.us ], [ %.065.us, %.preheader.us ] ; 16 uses
  %.02535.i.us = phi ptr [ %i.dy, %.lr.ph.i.us ], [ %.066.us, %.preheader.us ] ; 16 uses
  %.02934.i.us = phi i64 [ %i.fu, %.lr.ph.i.us ], [ %.064, %.preheader.us ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 16 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !25
  %i.eb = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 31
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !25
  %i.ec = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 17
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !25
  %i.ee = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 30
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !25
  %i.ef = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 18
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !25
  %i.eh = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 29
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !25
  %i.ei = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 19
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !25
  %i.ek = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 28
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !25
  %i.el = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 20
  %i.em = load i8, ptr %i.el, align 1, !tbaa !25
  %i.en = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 27
  store i8 %i.em, ptr %i.en, align 1, !tbaa !25
  %i.eo = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 21
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !25
  %i.eq = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 26
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !25
  %i.er = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 22
  %i.es = load i8, ptr %i.er, align 1, !tbaa !25
  %i.et = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 25
  store i8 %i.es, ptr %i.et, align 1, !tbaa !25
  %i.eu = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 23
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !25
  %i.ew = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 24
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !25
  %i.ex = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 24
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !25
  %i.ez = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 23
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !25
  %i.fa = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 25
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !25
  %i.fc = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 22
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !25
  %i.fd = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 26
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !25
  %i.ff = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 21
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !25
  %i.fg = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 27
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !25
  %i.fi = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 20
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !25
  %i.fj = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 28
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !25
  %i.fl = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 19
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !25
  %i.fm = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 29
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !25
  %i.fo = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 18
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !25
  %i.fp = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 30
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !25
  %i.fr = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 17
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !25
  %i.fs = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 31
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !25
  store i8 %i.ft, ptr %i.dy, align 1, !tbaa !25
  %i.fu = add i64 %.02934.i.us, -1                ; 2 uses
  %i.fv = icmp ugt i64 %i.fu, 1
  br i1 %i.fv, label %.lr.ph.i.us, label %opal_dt_swap_bytes.exit.loopexit.us, !llvm.loop !42

opal_dt_swap_bytes.exit.loopexit.us:              ; preds = %.lr.ph.i.us
  %i.fw = getelementptr inbounds i8, ptr %.066.us, i64 %7
  %i.fx = getelementptr inbounds i8, ptr %.065.us, i64 %4
  %i.fy = add i64 %.163.us, -1                    ; 2 uses
  %.not71.us = icmp eq i64 %i.fy, 0
  br i1 %.not71.us, label %.split.us, label %.preheader.us, !llvm.loop !70

datatype_check.exit.split:                        ; preds = %datatype_check.exit.split.preheader, %opal_dt_swap_bytes.exit
  %i.fz = phi i64 [ %i.lm, %opal_dt_swap_bytes.exit ], [ %alignment_of_long_double.val.promoted, %datatype_check.exit.split.preheader ] ; 3 uses
  %.066 = phi ptr [ %i.po, %opal_dt_swap_bytes.exit ], [ %5, %datatype_check.exit.split.preheader ] ; 50 uses
  %.065 = phi ptr [ %i.pp, %opal_dt_swap_bytes.exit ], [ %2, %datatype_check.exit.split.preheader ] ; 37 uses
  %.163 = phi i64 [ %i.pq, %opal_dt_swap_bytes.exit ], [ %.062, %datatype_check.exit.split.preheader ]
  %i.ga = load i32, ptr @opal_local_arch, align 4, !tbaa !20
  %i.gb = xor i32 %i.ga, %.061
  %i.gc = and i32 %i.gb, 8
  %.not68 = icmp eq i32 %i.gc, 0
  br i1 %.not68, label %opal_dt_swap_bytes.exit88, label %.preheader129.preheader

.preheader129.preheader:                          ; preds = %datatype_check.exit.split
  %i.gd = load i8, ptr %.065, align 1, !tbaa !25
  %i.ge = getelementptr inbounds nuw i8, ptr %.066, i64 15
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !25
  %i.gf = getelementptr inbounds nuw i8, ptr %.065, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !25
  %i.gh = getelementptr inbounds nuw i8, ptr %.066, i64 14
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !25
  %i.gi = getelementptr inbounds nuw i8, ptr %.065, i64 2
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !25
  %i.gk = getelementptr inbounds nuw i8, ptr %.066, i64 13
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !25
  %i.gl = getelementptr inbounds nuw i8, ptr %.065, i64 3
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !25
  %i.gn = getelementptr inbounds nuw i8, ptr %.066, i64 12
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !25
  %i.go = getelementptr inbounds nuw i8, ptr %.065, i64 4
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !25
  %i.gq = getelementptr inbounds nuw i8, ptr %.066, i64 11
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !25
  %i.gr = getelementptr inbounds nuw i8, ptr %.065, i64 5
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !25
  %i.gt = getelementptr inbounds nuw i8, ptr %.066, i64 10
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !25
  %i.gu = getelementptr inbounds nuw i8, ptr %.065, i64 6
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !25
  %i.gw = getelementptr inbounds nuw i8, ptr %.066, i64 9
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !25
  %i.gx = getelementptr inbounds nuw i8, ptr %.065, i64 7
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !25
  %i.gz = getelementptr inbounds nuw i8, ptr %.066, i64 8
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !25
  %i.ha = getelementptr inbounds nuw i8, ptr %.065, i64 8
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !25
  %i.hc = getelementptr inbounds nuw i8, ptr %.066, i64 7
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !25
  %i.hd = getelementptr inbounds nuw i8, ptr %.065, i64 9
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !25
  %i.hf = getelementptr inbounds nuw i8, ptr %.066, i64 6
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !25
  %i.hg = getelementptr inbounds nuw i8, ptr %.065, i64 10
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !25
  %i.hi = getelementptr inbounds nuw i8, ptr %.066, i64 5
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !25
  %i.hj = getelementptr inbounds nuw i8, ptr %.065, i64 11
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !25
  %i.hl = getelementptr inbounds nuw i8, ptr %.066, i64 4
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !25
  %i.hm = getelementptr inbounds nuw i8, ptr %.065, i64 12
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !25
  %i.ho = getelementptr inbounds nuw i8, ptr %.066, i64 3
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !25
  %i.hp = getelementptr inbounds nuw i8, ptr %.065, i64 13
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !25
  %i.hr = getelementptr inbounds nuw i8, ptr %.066, i64 2
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !25
  %i.hs = getelementptr inbounds nuw i8, ptr %.065, i64 14
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !25
  %i.hu = getelementptr inbounds nuw i8, ptr %.066, i64 1
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !25
  %i.hv = getelementptr inbounds nuw i8, ptr %.065, i64 15
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !25
  store i8 %i.hw, ptr %.066, align 1, !tbaa !25
  br i1 %.not120, label %opal_dt_swap_bytes.exit88, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.preheader129.preheader, %.lr.ph.i80
  %.036.i81 = phi ptr [ %i.hy, %.lr.ph.i80 ], [ %.065, %.preheader129.preheader ] ; 16 uses
  %.02535.i82 = phi ptr [ %i.hx, %.lr.ph.i80 ], [ %.066, %.preheader129.preheader ] ; 16 uses
  %.02934.i83 = phi i64 [ %i.jt, %.lr.ph.i80 ], [ %.064, %.preheader129.preheader ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 16 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.036.i81, i64 16 ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !25
  %i.ia = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 31
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !25
  %i.ib = getelementptr inbounds nuw i8, ptr %.036.i81, i64 17
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !25
  %i.id = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 30
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !25
  %i.ie = getelementptr inbounds nuw i8, ptr %.036.i81, i64 18
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !25
  %i.ig = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 29
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !25
  %i.ih = getelementptr inbounds nuw i8, ptr %.036.i81, i64 19
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !25
  %i.ij = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 28
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !25
  %i.ik = getelementptr inbounds nuw i8, ptr %.036.i81, i64 20
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !25
  %i.im = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 27
  store i8 %i.il, ptr %i.im, align 1, !tbaa !25
  %i.in = getelementptr inbounds nuw i8, ptr %.036.i81, i64 21
  %i.io = load i8, ptr %i.in, align 1, !tbaa !25
  %i.ip = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 26
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !25
  %i.iq = getelementptr inbounds nuw i8, ptr %.036.i81, i64 22
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !25
  %i.is = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 25
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !25
  %i.it = getelementptr inbounds nuw i8, ptr %.036.i81, i64 23
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !25
  %i.iv = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 24
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !25
  %i.iw = getelementptr inbounds nuw i8, ptr %.036.i81, i64 24
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !25
  %i.iy = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 23
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !25
  %i.iz = getelementptr inbounds nuw i8, ptr %.036.i81, i64 25
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !25
  %i.jb = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 22
  store i8 %i.ja, ptr %i.jb, align 1, !tbaa !25
  %i.jc = getelementptr inbounds nuw i8, ptr %.036.i81, i64 26
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !25
  %i.je = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 21
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !25
  %i.jf = getelementptr inbounds nuw i8, ptr %.036.i81, i64 27
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !25
  %i.jh = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 20
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !25
  %i.ji = getelementptr inbounds nuw i8, ptr %.036.i81, i64 28
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !25
  %i.jk = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 19
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !25
  %i.jl = getelementptr inbounds nuw i8, ptr %.036.i81, i64 29
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !25
  %i.jn = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 18
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !25
  %i.jo = getelementptr inbounds nuw i8, ptr %.036.i81, i64 30
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !25
  %i.jq = getelementptr inbounds nuw i8, ptr %.02535.i82, i64 17
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !25
  %i.jr = getelementptr inbounds nuw i8, ptr %.036.i81, i64 31
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !25
  store i8 %i.js, ptr %i.hx, align 1, !tbaa !25
  %i.jt = add i64 %.02934.i83, -1                 ; 2 uses
  %i.ju = icmp ugt i64 %i.jt, 1
  br i1 %i.ju, label %.lr.ph.i80, label %opal_dt_swap_bytes.exit88, !llvm.loop !42

opal_dt_swap_bytes.exit88:                        ; preds = %.lr.ph.i80, %.preheader129.preheader, %datatype_check.exit.split
  %.0 = phi ptr [ %.065, %datatype_check.exit.split ], [ %.066, %.preheader129.preheader ], [ %.066, %.lr.ph.i80 ] ; 4 uses
  br i1 %or.cond73, label %ldbl_to_f128.exit, label %bb.a

bb.a:                                             ; preds = %opal_dt_swap_bytes.exit88
  %i.jv = icmp eq i64 %i.fz, 0
  br i1 %i.jv, label %.preheader.preheader.i.i, label %alignment_of_long_double.exit.i

.preheader.preheader.i.i:                         ; preds = %bb.a
  store i1 true, ptr @alignment_of_long_double.val, align 8
  br label %alignment_of_long_double.exit.i

alignment_of_long_double.exit.i:                  ; preds = %.preheader.preheader.i.i, %bb.a
  %i.jw = phi i64 [ 16, %.preheader.preheader.i.i ], [ %i.fz, %bb.a ] ; 3 uses
  %i.jx = ptrtoint ptr %.0 to i64
  %i.jy = shl i64 %i.jw, 32
  %sext.i = add i64 %i.jy, -4294967296
  %i.jz = ashr exact i64 %sext.i, 32
  %i.ka = or i64 %i.o, %i.jx
  %i.kb = and i64 %i.jz, %i.ka
  %i.kc = ptrtoint ptr %.066 to i64
  %i.kd = and i64 %i.kc, 15
  %i.ke = or i64 %i.kb, %i.kd
  %or.cond.i = icmp eq i64 %i.ke, 0
  br i1 %or.cond.i, label %alignment_of_long_double.exit.split.us.i, label %alignment_of_long_double.exit.split.i

alignment_of_long_double.exit.split.us.i:         ; preds = %alignment_of_long_double.exit.i, %alignment_of_long_double.exit.split.us.i
  %.020.us.i = phi i64 [ %i.kj, %alignment_of_long_double.exit.split.us.i ], [ %.064, %alignment_of_long_double.exit.i ] ; 2 uses
  %.018.us.i = phi ptr [ %i.kh, %alignment_of_long_double.exit.split.us.i ], [ %.0, %alignment_of_long_double.exit.i ] ; 2 uses
  %.0.us.i = phi ptr [ %i.ki, %alignment_of_long_double.exit.split.us.i ], [ %.066, %alignment_of_long_double.exit.i ] ; 2 uses
  %i.kf = load x86_fp80, ptr %.018.us.i, align 16, !tbaa !56
  %i.kg = fpext x86_fp80 %i.kf to fp128
  store fp128 %i.kg, ptr %.0.us.i, align 16, !tbaa !58
  %i.kh = getelementptr inbounds i8, ptr %.018.us.i, i64 %i.o
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.us.i, i64 16
  %i.kj = add nsw i64 %.020.us.i, -1
  %i.kk = icmp sgt i64 %.020.us.i, 1
  br i1 %i.kk, label %alignment_of_long_double.exit.split.us.i, label %ldbl_to_f128.exit, !llvm.loop !60

alignment_of_long_double.exit.split.i:            ; preds = %alignment_of_long_double.exit.i, %alignment_of_long_double.exit.split.i
  %.020.i = phi i64 [ %i.ko, %alignment_of_long_double.exit.split.i ], [ %.064, %alignment_of_long_double.exit.i ] ; 2 uses
  %.018.i = phi ptr [ %i.km, %alignment_of_long_double.exit.split.i ], [ %.0, %alignment_of_long_double.exit.i ] ; 2 uses
  %.0.i = phi ptr [ %i.kn, %alignment_of_long_double.exit.split.i ], [ %.066, %alignment_of_long_double.exit.i ] ; 2 uses
  %.0.copyload.i = load x86_fp80, ptr %.018.i, align 1
  %i.kl = fpext x86_fp80 %.0.copyload.i to fp128
  store fp128 %i.kl, ptr %.0.i, align 1
  %i.km = getelementptr inbounds i8, ptr %.018.i, i64 %i.o
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ko = add nsw i64 %.020.i, -1
  %i.kp = icmp sgt i64 %.020.i, 1
  br i1 %i.kp, label %alignment_of_long_double.exit.split.i, label %ldbl_to_f128.exit, !llvm.loop !60

ldbl_to_f128.exit:                                ; preds = %alignment_of_long_double.exit.split.i, %alignment_of_long_double.exit.split.us.i, %opal_dt_swap_bytes.exit88
  %i.kq = phi i64 [ %i.fz, %opal_dt_swap_bytes.exit88 ], [ %i.jw, %alignment_of_long_double.exit.split.us.i ], [ %i.jw, %alignment_of_long_double.exit.split.i ] ; 3 uses
  %.1 = phi ptr [ %.0, %opal_dt_swap_bytes.exit88 ], [ %.066, %alignment_of_long_double.exit.split.us.i ], [ %.066, %alignment_of_long_double.exit.split.i ] ; 4 uses
end_hunk_2
begin_hunk_3_@copy_long_double_complex_heterogeneous:datatype_check.exit
  store i1 true, ptr @alignment_of_long_double.val, align 8
  br label %alignment_of_long_double.exit.i89

alignment_of_long_double.exit.i89:                ; preds = %.preheader.preheader.i.i100, %bb.b
  %i.ks = phi i64 [ 16, %.preheader.preheader.i.i100 ], [ %i.kq, %bb.b ] ; 3 uses
  %i.kt = ptrtoint ptr %.066 to i64
  %i.ku = shl i64 %i.ks, 32
  %sext.i90 = add i64 %i.ku, -4294967296
  %i.kv = ashr exact i64 %sext.i90, 32
  %i.kw = or i64 %i.q, %i.kt
  %i.kx = and i64 %i.kv, %i.kw
  %i.ky = ptrtoint ptr %.1 to i64
  %i.kz = and i64 %i.ky, 15
  %i.la = or i64 %i.kx, %i.kz
  %or.cond.i91 = icmp eq i64 %i.la, 0
  br i1 %or.cond.i91, label %alignment_of_long_double.exit.split.us.i96, label %alignment_of_long_double.exit.split.i92

alignment_of_long_double.exit.split.us.i96:       ; preds = %alignment_of_long_double.exit.i89, %alignment_of_long_double.exit.split.us.i96
  %.020.us.i97 = phi i64 [ %i.lf, %alignment_of_long_double.exit.split.us.i96 ], [ %.064, %alignment_of_long_double.exit.i89 ] ; 2 uses
  %.018.us.i98 = phi ptr [ %i.le, %alignment_of_long_double.exit.split.us.i96 ], [ %.1, %alignment_of_long_double.exit.i89 ] ; 2 uses
  %.0.us.i99 = phi ptr [ %i.ld, %alignment_of_long_double.exit.split.us.i96 ], [ %.066, %alignment_of_long_double.exit.i89 ] ; 2 uses
  %i.lb = load fp128, ptr %.018.us.i98, align 16, !tbaa !58
  %i.lc = fptrunc fp128 %i.lb to x86_fp80
  store x86_fp80 %i.lc, ptr %.0.us.i99, align 16, !tbaa !56
  %i.ld = getelementptr inbounds i8, ptr %.0.us.i99, i64 %i.q
  %i.le = getelementptr inbounds nuw i8, ptr %.018.us.i98, i64 16
  %i.lf = add nsw i64 %.020.us.i97, -1
  %i.lg = icmp sgt i64 %.020.us.i97, 1
  br i1 %i.lg, label %alignment_of_long_double.exit.split.us.i96, label %f128_to_ldbl.exit, !llvm.loop !61

alignment_of_long_double.exit.split.i92:          ; preds = %alignment_of_long_double.exit.i89, %alignment_of_long_double.exit.split.i92
  %.020.i93 = phi i64 [ %i.lk, %alignment_of_long_double.exit.split.i92 ], [ %.064, %alignment_of_long_double.exit.i89 ] ; 2 uses
  %.018.i94 = phi ptr [ %i.lj, %alignment_of_long_double.exit.split.i92 ], [ %.1, %alignment_of_long_double.exit.i89 ] ; 2 uses
  %.0.i95 = phi ptr [ %i.li, %alignment_of_long_double.exit.split.i92 ], [ %.066, %alignment_of_long_double.exit.i89 ] ; 2 uses
  %.0.copyload2.i = load fp128, ptr %.018.i94, align 1
  %i.lh = fptrunc fp128 %.0.copyload2.i to x86_fp80
  store x86_fp80 %i.lh, ptr %.0.i95, align 1
  %i.li = getelementptr inbounds i8, ptr %.0.i95, i64 %i.q
  %i.lj = getelementptr inbounds nuw i8, ptr %.018.i94, i64 16
  %i.lk = add nsw i64 %.020.i93, -1
  %i.ll = icmp sgt i64 %.020.i93, 1
  br i1 %i.ll, label %alignment_of_long_double.exit.split.i92, label %f128_to_ldbl.exit, !llvm.loop !61

f128_to_ldbl.exit:                                ; preds = %alignment_of_long_double.exit.split.i92, %alignment_of_long_double.exit.split.us.i96, %ldbl_to_f128.exit
  %i.lm = phi i64 [ %i.kq, %ldbl_to_f128.exit ], [ %i.ks, %alignment_of_long_double.exit.split.us.i96 ], [ %i.ks, %alignment_of_long_double.exit.split.i92 ]
  %.2 = phi ptr [ %.1, %ldbl_to_f128.exit ], [ %.066, %alignment_of_long_double.exit.split.us.i96 ], [ %.066, %alignment_of_long_double.exit.split.i92 ]
  %i.ln = load i32, ptr @opal_local_arch, align 4, !tbaa !20
  %i.lo = xor i32 %i.ln, %.060
  %i.lp = and i32 %i.lo, 8
  %.not69 = icmp eq i32 %i.lp, 0
  br i1 %.not69, label %opal_dt_swap_bytes.exit, label %bb.c

bb.c:                                             ; preds = %f128_to_ldbl.exit
  %i.lq = icmp eq ptr %.2, %.065
  br i1 %i.lq, label %.preheader125.preheader, label %bb.d

.preheader125.preheader:                          ; preds = %bb.c
  %i.lr = load i8, ptr %.065, align 1, !tbaa !25
  %i.ls = getelementptr inbounds nuw i8, ptr %.066, i64 15
  store i8 %i.lr, ptr %i.ls, align 1, !tbaa !25
  %i.lt = getelementptr inbounds nuw i8, ptr %.065, i64 1
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !25
  %i.lv = getelementptr inbounds nuw i8, ptr %.066, i64 14
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !25
  %i.lw = getelementptr inbounds nuw i8, ptr %.065, i64 2
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !25
  %i.ly = getelementptr inbounds nuw i8, ptr %.066, i64 13
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !25
  %i.lz = getelementptr inbounds nuw i8, ptr %.065, i64 3
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !25
  %i.mb = getelementptr inbounds nuw i8, ptr %.066, i64 12
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !25
  %i.mc = getelementptr inbounds nuw i8, ptr %.065, i64 4
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !25
  %i.me = getelementptr inbounds nuw i8, ptr %.066, i64 11
  store i8 %i.md, ptr %i.me, align 1, !tbaa !25
  %i.mf = getelementptr inbounds nuw i8, ptr %.065, i64 5
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !25
  %i.mh = getelementptr inbounds nuw i8, ptr %.066, i64 10
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !25
  %i.mi = getelementptr inbounds nuw i8, ptr %.065, i64 6
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !25
  %i.mk = getelementptr inbounds nuw i8, ptr %.066, i64 9
  store i8 %i.mj, ptr %i.mk, align 1, !tbaa !25
  %i.ml = getelementptr inbounds nuw i8, ptr %.065, i64 7
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !25
  %i.mn = getelementptr inbounds nuw i8, ptr %.066, i64 8
  store i8 %i.mm, ptr %i.mn, align 1, !tbaa !25
  %i.mo = getelementptr inbounds nuw i8, ptr %.065, i64 8
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !25
  %i.mq = getelementptr inbounds nuw i8, ptr %.066, i64 7
  store i8 %i.mp, ptr %i.mq, align 1, !tbaa !25
  %i.mr = getelementptr inbounds nuw i8, ptr %.065, i64 9
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !25
  %i.mt = getelementptr inbounds nuw i8, ptr %.066, i64 6
  store i8 %i.ms, ptr %i.mt, align 1, !tbaa !25
  %i.mu = getelementptr inbounds nuw i8, ptr %.065, i64 10
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !25
  %i.mw = getelementptr inbounds nuw i8, ptr %.066, i64 5
  store i8 %i.mv, ptr %i.mw, align 1, !tbaa !25
  %i.mx = getelementptr inbounds nuw i8, ptr %.065, i64 11
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !25
  %i.mz = getelementptr inbounds nuw i8, ptr %.066, i64 4
  store i8 %i.my, ptr %i.mz, align 1, !tbaa !25
  %i.na = getelementptr inbounds nuw i8, ptr %.065, i64 12
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !25
  %i.nc = getelementptr inbounds nuw i8, ptr %.066, i64 3
  store i8 %i.nb, ptr %i.nc, align 1, !tbaa !25
  %i.nd = getelementptr inbounds nuw i8, ptr %.065, i64 13
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !25
  %i.nf = getelementptr inbounds nuw i8, ptr %.066, i64 2
  store i8 %i.ne, ptr %i.nf, align 1, !tbaa !25
  %i.ng = getelementptr inbounds nuw i8, ptr %.065, i64 14
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !25
  %i.ni = getelementptr inbounds nuw i8, ptr %.066, i64 1
  store i8 %i.nh, ptr %i.ni, align 1, !tbaa !25
  %i.nj = getelementptr inbounds nuw i8, ptr %.065, i64 15
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !25
  store i8 %i.nk, ptr %.066, align 1, !tbaa !25
  br i1 %.not120, label %opal_dt_swap_bytes.exit, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.preheader125.preheader, %.lr.ph.i105
  %.036.i106 = phi ptr [ %i.nm, %.lr.ph.i105 ], [ %.065, %.preheader125.preheader ] ; 16 uses
  %.02535.i107 = phi ptr [ %i.nl, %.lr.ph.i105 ], [ %.066, %.preheader125.preheader ] ; 16 uses
  %.02934.i108 = phi i64 [ %i.ph, %.lr.ph.i105 ], [ %.064, %.preheader125.preheader ]
  %i.nl = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 16 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.036.i106, i64 16 ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !25
  %i.no = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 31
  store i8 %i.nn, ptr %i.no, align 1, !tbaa !25
  %i.np = getelementptr inbounds nuw i8, ptr %.036.i106, i64 17
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !25
  %i.nr = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 30
  store i8 %i.nq, ptr %i.nr, align 1, !tbaa !25
  %i.ns = getelementptr inbounds nuw i8, ptr %.036.i106, i64 18
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !25
  %i.nu = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 29
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !25
  %i.nv = getelementptr inbounds nuw i8, ptr %.036.i106, i64 19
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !25
  %i.nx = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 28
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !25
  %i.ny = getelementptr inbounds nuw i8, ptr %.036.i106, i64 20
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !25
  %i.oa = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 27
  store i8 %i.nz, ptr %i.oa, align 1, !tbaa !25
  %i.ob = getelementptr inbounds nuw i8, ptr %.036.i106, i64 21
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !25
  %i.od = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 26
  store i8 %i.oc, ptr %i.od, align 1, !tbaa !25
  %i.oe = getelementptr inbounds nuw i8, ptr %.036.i106, i64 22
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !25
  %i.og = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 25
  store i8 %i.of, ptr %i.og, align 1, !tbaa !25
  %i.oh = getelementptr inbounds nuw i8, ptr %.036.i106, i64 23
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !25
  %i.oj = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 24
  store i8 %i.oi, ptr %i.oj, align 1, !tbaa !25
  %i.ok = getelementptr inbounds nuw i8, ptr %.036.i106, i64 24
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !25
  %i.om = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 23
  store i8 %i.ol, ptr %i.om, align 1, !tbaa !25
  %i.on = getelementptr inbounds nuw i8, ptr %.036.i106, i64 25
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !25
  %i.op = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 22
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !25
  %i.oq = getelementptr inbounds nuw i8, ptr %.036.i106, i64 26
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !25
  %i.os = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 21
  store i8 %i.or, ptr %i.os, align 1, !tbaa !25
  %i.ot = getelementptr inbounds nuw i8, ptr %.036.i106, i64 27
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !25
  %i.ov = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 20
  store i8 %i.ou, ptr %i.ov, align 1, !tbaa !25
  %i.ow = getelementptr inbounds nuw i8, ptr %.036.i106, i64 28
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !25
  %i.oy = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 19
  store i8 %i.ox, ptr %i.oy, align 1, !tbaa !25
  %i.oz = getelementptr inbounds nuw i8, ptr %.036.i106, i64 29
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !25
  %i.pb = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 18
  store i8 %i.pa, ptr %i.pb, align 1, !tbaa !25
  %i.pc = getelementptr inbounds nuw i8, ptr %.036.i106, i64 30
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !25
  %i.pe = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 17
  store i8 %i.pd, ptr %i.pe, align 1, !tbaa !25
  %i.pf = getelementptr inbounds nuw i8, ptr %.036.i106, i64 31
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !25
  store i8 %i.pg, ptr %i.nl, align 1, !tbaa !25
  %i.ph = add i64 %.02934.i108, -1                ; 2 uses
  %i.pi = icmp ugt i64 %i.ph, 1
  br i1 %i.pi, label %.lr.ph.i105, label %opal_dt_swap_bytes.exit, !llvm.loop !42

bb.d:                                             ; preds = %bb.c
  %i.pj = load <16 x i8>, ptr %.066, align 1, !tbaa !25
  %i.pk = shufflevector <16 x i8> %i.pj, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.pk, ptr %.066, align 1, !tbaa !25
  br i1 %.not120, label %opal_dt_swap_bytes.exit, label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %bb.d, %.lr.ph.i114
  %.046.i = phi ptr [ %i.pl, %.lr.ph.i114 ], [ %.066, %bb.d ]
  %.03545.i = phi i64 [ %indvar.next.i, %.lr.ph.i114 ], [ %.064, %bb.d ]
  %i.pl = getelementptr inbounds nuw i8, ptr %.046.i, i64 16 ; 3 uses
  %i.pm = load <16 x i8>, ptr %i.pl, align 1, !tbaa !25
  %i.pn = shufflevector <16 x i8> %i.pm, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.pn, ptr %i.pl, align 1, !tbaa !25
  %indvar.next.i = add i64 %.03545.i, -1          ; 2 uses
  %9 = icmp ugt i64 %indvar.next.i, 1
  br i1 %9, label %.lr.ph.i114, label %opal_dt_swap_bytes.exit, !llvm.loop !62

opal_dt_swap_bytes.exit:                          ; preds = %.lr.ph.i114, %.lr.ph.i105, %bb.d, %.preheader125.preheader, %f128_to_ldbl.exit
  %i.po = getelementptr inbounds i8, ptr %.066, i64 %7
  %i.pp = getelementptr inbounds i8, ptr %.065, i64 %4
  %i.pq = add i64 %.163, -1                       ; 2 uses
  %.not71 = icmp eq i64 %i.pq, 0
  br i1 %.not71, label %.split.us, label %datatype_check.exit.split, !llvm.loop !70

.split.us:                                        ; preds = %opal_dt_swap_bytes.exit, %opal_dt_swap_bytes.exit.loopexit.us, %.preheader.us.us, %opal_dt_swap_bytes.exit.us.us.prol.loopexit, %opal_dt_swap_bytes.exit.us.us
  %i.pr = mul i64 %spec.select, %4
  store i64 %i.pr, ptr %8, align 8, !tbaa !38
  %i.ps = trunc i64 %spec.select to i32
  ret i32 %i.ps
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @copy_cxx_bool_heterogeneous(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 %6, i64 noundef %7, ptr nofree noundef writeonly captures(none) %8) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %i.c = and i32 %i.b, 3072                       ; 2 uses
  %i.d = load i32, ptr @opal_local_arch, align 4, !tbaa !20 ; 2 uses
  %i.e = and i32 %i.d, 3072
  %.not = icmp eq i32 %i.c, %i.e
  br i1 %.not, label %datatype_check.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr exact i32 %i.c, 10
  switch i32 %i.f, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %datatype_check.exit.thread
    i32 2, label %bb.d
    i32 3, label %datatype_check.exit
  ]

bb.c:                                             ; preds = %bb.b
  br label %datatype_check.exit

bb.d:                                             ; preds = %bb.b
  br label %datatype_check.exit.thread

default.unreachable:                              ; preds = %bb.f, %bb.b
  unreachable

datatype_check.exit.thread:                       ; preds = %bb.d, %bb.b
  %.045.ph = phi i64 [ 4, %bb.d ], [ 2, %bb.b ]
  %spec.select82 = tail call i64 @llvm.umin.i64(i64 %1, i64 %3)
  br label %bb.f

datatype_check.exit:                              ; preds = %bb.c, %bb.b, %bb.a
  %.045 = phi i64 [ 1, %bb.c ], [ %4, %bb.b ], [ %4, %bb.a ] ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %1, i64 %3) ; 4 uses
  %i.g = icmp ne i64 %7, 1
  %i.h = icmp ne i64 %.045, 1
  %or.cond = or i1 %i.g, %i.h
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %datatype_check.exit
  %i.i = xor i32 %i.d, %i.b
  %i.j = and i32 %i.i, 3072
  %.not52 = icmp eq i32 %i.j, 0
  br i1 %.not52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %datatype_check.exit.thread, %bb.e, %datatype_check.exit
  %spec.select87 = phi i64 [ %spec.select82, %datatype_check.exit.thread ], [ %spec.select, %bb.e ], [ %spec.select, %datatype_check.exit ] ; 19 uses
  %.04584 = phi i64 [ %.045.ph, %datatype_check.exit.thread ], [ 1, %bb.e ], [ %.045, %datatype_check.exit ] ; 25 uses
  %i.k = lshr i32 %i.b, 10
  %i.l = and i32 %i.k, 3
  switch i32 %i.l, label %default.unreachable [
    i32 0, label %.preheader
    i32 1, label %.preheader59
    i32 2, label %.preheader61
    i32 3, label %.loopexit
  ]

.preheader61:                                     ; preds = %bb.f
  %.not74 = icmp eq i64 %spec.select87, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader61
  %xtraiter = and i64 %spec.select87, 3           ; 3 uses
  %i.m = icmp ult i64 %spec.select87, 4
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select87, -4
  br label %.lr.ph

.preheader59:                                     ; preds = %bb.f
  %.not75 = icmp eq i64 %spec.select87, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %.preheader59
  %xtraiter95 = and i64 %spec.select87, 3         ; 3 uses
  %i.n = icmp ult i64 %spec.select87, 4
  br i1 %i.n, label %.lr.ph69.epil.preheader, label %.lr.ph69.preheader.new

.lr.ph69.preheader.new:                           ; preds = %.lr.ph69.preheader
  %unroll_iter99 = and i64 %spec.select87, -4
  br label %.lr.ph69

.preheader:                                       ; preds = %bb.f
  %.not76 = icmp eq i64 %spec.select87, 0
  br i1 %.not76, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %xtraiter101 = and i64 %spec.select87, 3        ; 3 uses
  %i.o = icmp ult i64 %spec.select87, 4
  br i1 %i.o, label %.lr.ph73.epil.preheader, label %.lr.ph73.preheader.new

.lr.ph73.preheader.new:                           ; preds = %.lr.ph73.preheader
  %unroll_iter105 = and i64 %spec.select87, -4
  br label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73, %.lr.ph73.preheader.new
  %.072 = phi ptr [ %2, %.lr.ph73.preheader.new ], [ %i.ai, %.lr.ph73 ] ; 2 uses
  %.04771 = phi ptr [ %5, %.lr.ph73.preheader.new ], [ %i.ah, %.lr.ph73 ] ; 2 uses
  %niter106 = phi i64 [ 0, %.lr.ph73.preheader.new ], [ %niter106.next.3, %.lr.ph73 ]
  %i.p = load i8, ptr %.072, align 1, !tbaa !25
  %i.q = icmp ne i8 %i.p, 0
  %i.r = zext i1 %i.q to i8
  store i8 %i.r, ptr %.04771, align 1, !tbaa !72
  %i.s = getelementptr inbounds i8, ptr %.04771, i64 %7 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.072, i64 %.04584 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !25
  %i.v = icmp ne i8 %i.u, 0
  %i.w = zext i1 %i.v to i8
  store i8 %i.w, ptr %i.s, align 1, !tbaa !72
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %7 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %.04584 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !25
  %i.aa = icmp ne i8 %i.z, 0
  %i.ab = zext i1 %i.aa to i8
  store i8 %i.ab, ptr %i.x, align 1, !tbaa !72
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %7 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 %.04584 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !25
  %i.af = icmp ne i8 %i.ae, 0
  %i.ag = zext i1 %i.af to i8
  store i8 %i.ag, ptr %i.ac, align 1, !tbaa !72
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 %7 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 %.04584 ; 2 uses
  %niter106.next.3 = add nuw i64 %niter106, 4     ; 2 uses
  %niter106.ncmp.3 = icmp eq i64 %niter106.next.3, %unroll_iter105
  br i1 %niter106.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph73, !llvm.loop !74

.lr.ph69:                                         ; preds = %.lr.ph69, %.lr.ph69.preheader.new
  %.168 = phi ptr [ %2, %.lr.ph69.preheader.new ], [ %i.bc, %.lr.ph69 ] ; 2 uses
  %.14866 = phi ptr [ %5, %.lr.ph69.preheader.new ], [ %i.bb, %.lr.ph69 ] ; 2 uses
  %niter100 = phi i64 [ 0, %.lr.ph69.preheader.new ], [ %niter100.next.3, %.lr.ph69 ]
  %i.aj = load i16, ptr %.168, align 2, !tbaa !75
  %i.ak = icmp ne i16 %i.aj, 0
  %i.al = zext i1 %i.ak to i8
  store i8 %i.al, ptr %.14866, align 1, !tbaa !72
  %i.am = getelementptr inbounds i8, ptr %.14866, i64 %7 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.168, i64 %.04584 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !75
  %i.ap = icmp ne i16 %i.ao, 0
  %i.aq = zext i1 %i.ap to i8
  store i8 %i.aq, ptr %i.am, align 1, !tbaa !72
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %7 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 %.04584 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !75
  %i.au = icmp ne i16 %i.at, 0
  %i.av = zext i1 %i.au to i8
  store i8 %i.av, ptr %i.ar, align 1, !tbaa !72
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %7 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %.04584 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !75
  %i.az = icmp ne i16 %i.ay, 0
  %i.ba = zext i1 %i.az to i8
  store i8 %i.ba, ptr %i.aw, align 1, !tbaa !72
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 %7 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 %.04584 ; 2 uses
  %niter100.next.3 = add nuw i64 %niter100, 4     ; 2 uses
  %niter100.ncmp.3 = icmp eq i64 %niter100.next.3, %unroll_iter99
  br i1 %niter100.ncmp.3, label %.loopexit.loopexit92.unr-lcssa, label %.lr.ph69, !llvm.loop !77

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.265 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.bw, %.lr.ph ] ; 2 uses
  %.24963 = phi ptr [ %5, %.lr.ph.preheader.new ], [ %i.bv, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bd = load i32, ptr %.265, align 4, !tbaa !20
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = zext i1 %i.be to i8
  store i8 %i.bf, ptr %.24963, align 1, !tbaa !72
  %i.bg = getelementptr inbounds i8, ptr %.24963, i64 %7 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.265, i64 %.04584 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !20
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = zext i1 %i.bj to i8
  store i8 %i.bk, ptr %i.bg, align 1, !tbaa !72
  %i.bl = getelementptr inbounds i8, ptr %i.bg, i64 %7 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 %.04584 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !20
  %i.bo = icmp ne i32 %i.bn, 0
  %i.bp = zext i1 %i.bo to i8
  store i8 %i.bp, ptr %i.bl, align 1, !tbaa !72
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %7 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bm, i64 %.04584 ; 2 uses
end_hunk_3
