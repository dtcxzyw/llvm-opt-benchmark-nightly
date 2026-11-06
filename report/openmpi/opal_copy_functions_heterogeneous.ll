Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/opal_copy_functions_heterogeneous?download=true
inline.NumInlined: 51
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 100
begin_hunk_0_@copy_wchar_heterogeneous:datatype_check.exit
  %.not34 = icmp eq i32 %i.k, 0
  %i.l = shl i64 %.030, 2                         ; 5 uses
  br i1 %.not34, label %opal_dt_swap_bytes.exit.us.preheader, label %datatype_check.exit.split

opal_dt_swap_bytes.exit.us.preheader:             ; preds = %datatype_check.exit
  %i.m = add i64 %.029, -1
  %xtraiter54 = and i64 %.029, 3                  ; 2 uses
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol

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
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter54
  br i1 %prol.iter.cmp.not, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol, !llvm.loop !84

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
  br i1 %.not35.us.3, label %.split.us, label %opal_dt_swap_bytes.exit.us, !llvm.loop !85

datatype_check.exit.split:                        ; preds = %datatype_check.exit
  %i.aa = icmp ugt i64 %.030, 1
  br i1 %i.aa, label %.preheader.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %datatype_check.exit.split
  %xtraiter = and i64 %.029, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.ab = load i8, ptr %2, align 1, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !27
  store i8 %i.ak, ptr %5, align 1, !tbaa !27
  %i.al = getelementptr inbounds i8, ptr %5, i64 %7
  %i.am = getelementptr inbounds i8, ptr %2, i64 %4
  %i.an = add nsw i64 %.029, -1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.032.unr = phi ptr [ %5, %.preheader.preheader ], [ %i.al, %.preheader.prol ]
  %.031.unr = phi ptr [ %2, %.preheader.preheader ], [ %i.am, %.preheader.prol ]
  %.1.unr = phi i64 [ %.029, %.preheader.preheader ], [ %i.an, %.preheader.prol ]
  %i.ao = icmp eq i64 %.029, 1
  br i1 %i.ao, label %.split.us, label %.preheader

.preheader.us:                                    ; preds = %datatype_check.exit.split, %opal_dt_swap_bytes.exit.loopexit.us
  %.032.us40 = phi ptr [ %i.bn, %opal_dt_swap_bytes.exit.loopexit.us ], [ %5, %datatype_check.exit.split ] ; 6 uses
  %.031.us41 = phi ptr [ %i.bo, %opal_dt_swap_bytes.exit.loopexit.us ], [ %2, %datatype_check.exit.split ] ; 6 uses
  %.1.us42 = phi i64 [ %i.bp, %opal_dt_swap_bytes.exit.loopexit.us ], [ %.029, %datatype_check.exit.split ]
  %i.ap = load i8, ptr %.031.us41, align 1, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %.032.us40, i64 3
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %.031.us41, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %.032.us40, i64 2
  store i8 %i.as, ptr %i.at, align 1, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %.031.us41, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %.032.us40, i64 1
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %.031.us41, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !27
  store i8 %i.ay, ptr %.032.us40, align 1, !tbaa !27
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.preheader.us, %.lr.ph.i.us
  %.036.i.us = phi ptr [ %i.ba, %.lr.ph.i.us ], [ %.031.us41, %.preheader.us ] ; 4 uses
  %.02535.i.us = phi ptr [ %i.az, %.lr.ph.i.us ], [ %.032.us40, %.preheader.us ] ; 4 uses
  %.02934.i.us = phi i64 [ %i.bl, %.lr.ph.i.us ], [ %spec.select, %.preheader.us ]
  %i.az = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 4 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 7
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 6
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 5
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 7
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !27
  store i8 %i.bk, ptr %i.az, align 1, !tbaa !27
  %i.bl = add i64 %.02934.i.us, -1                ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, 1
  br i1 %i.bm, label %.lr.ph.i.us, label %opal_dt_swap_bytes.exit.loopexit.us, !llvm.loop !0

opal_dt_swap_bytes.exit.loopexit.us:              ; preds = %.lr.ph.i.us
  %i.bn = getelementptr inbounds i8, ptr %.032.us40, i64 %7
  %i.bo = getelementptr inbounds i8, ptr %.031.us41, i64 %4
  %i.bp = add i64 %.1.us42, -1                    ; 2 uses
  %.not35.us44 = icmp eq i64 %i.bp, 0
  br i1 %.not35.us44, label %.split.us, label %.preheader.us, !llvm.loop !85

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.032 = phi ptr [ %i.cm, %.preheader ], [ %.032.unr, %.preheader.prol.loopexit ] ; 5 uses
  %.031 = phi ptr [ %i.cn, %.preheader ], [ %.031.unr, %.preheader.prol.loopexit ] ; 5 uses
  %.1 = phi i64 [ %i.co, %.preheader ], [ %.1.unr, %.preheader.prol.loopexit ]
  %i.bq = load i8, ptr %.031, align 1, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %.032, i64 3
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !27
  %i.bs = getelementptr inbounds nuw i8, ptr %.031, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %.032, i64 2
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %.031, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %.032, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !27
  %i.by = getelementptr inbounds nuw i8, ptr %.031, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !27
  store i8 %i.bz, ptr %.032, align 1, !tbaa !27
  %i.ca = getelementptr inbounds i8, ptr %.032, i64 %7 ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %.031, i64 %4 ; 5 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !27
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !27
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !27
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !27
  store i8 %i.cl, ptr %i.ca, align 1, !tbaa !27
  %i.cm = getelementptr inbounds i8, ptr %i.ca, i64 %7
  %i.cn = getelementptr inbounds i8, ptr %i.cb, i64 %4
  %i.co = add i64 %.1, -2                         ; 2 uses
  %.not35.1 = icmp eq i64 %i.co, 0
  br i1 %.not35.1, label %.split.us, label %.preheader, !llvm.loop !85

.split.us:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %opal_dt_swap_bytes.exit.loopexit.us, %opal_dt_swap_bytes.exit.us.prol.loopexit, %opal_dt_swap_bytes.exit.us
  %i.cp = mul i64 %spec.select, %4
  store i64 %i.cp, ptr %8, align 8, !tbaa !28
  %i.cq = trunc i64 %spec.select to i32
  ret i32 %i.cq
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @copy_long_heterogeneous(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 %6, i64 noundef %7, ptr nofree noundef writeonly captures(none) %8) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = mul i64 %i.d, %1
  %i.f = icmp ugt i64 %i.e, %3
  br i1 %i.f, label %bb.b, label %datatype_check.exit

bb.b:                                             ; preds = %bb.a
  %i.g = udiv i64 %3, %i.d
  br label %datatype_check.exit

datatype_check.exit:                              ; preds = %bb.a, %bb.b
  %.0154 = phi i64 [ %i.g, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34
  %i.j = load i32, ptr @opal_local_arch, align 4, !tbaa !24 ; 2 uses
  %i.k = xor i32 %i.j, %i.i                       ; 3 uses
  %i.l = and i32 %i.k, 16384
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %datatype_check.exit
  %i.m = and i32 %i.k, 8
  %.not119 = icmp eq i32 %i.m, 0
  %.not221 = icmp eq i64 %.0154, 0                ; 2 uses
  br i1 %.not119, label %.preheader, label %.preheader156

.preheader156:                                    ; preds = %bb.c
  br i1 %.not221, label %.loopexit, label %.preheader155

.preheader:                                       ; preds = %bb.c
  br i1 %.not221, label %.loopexit, label %.lr.ph211.preheader

.lr.ph211.preheader:                              ; preds = %.preheader
  %i.n = add i64 %.0154, -1
  %xtraiter316 = and i64 %.0154, 7                ; 3 uses
  %i.o = icmp ult i64 %i.n, 7
  br i1 %i.o, label %.lr.ph211.epil.preheader, label %.lr.ph211.preheader.new

.lr.ph211.preheader.new:                          ; preds = %.lr.ph211.preheader
  %unroll_iter320 = and i64 %.0154, -8
  br label %.lr.ph211

.preheader155:                                    ; preds = %.preheader156, %.preheader155
  %.0207 = phi ptr [ %i.am, %.preheader155 ], [ %2, %.preheader156 ] ; 9 uses
  %.099206 = phi ptr [ %i.al, %.preheader155 ], [ %5, %.preheader156 ] ; 9 uses
  %.0109205 = phi i64 [ %i.an, %.preheader155 ], [ 0, %.preheader156 ]
  %i.p = load i8, ptr %.0207, align 1, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %.099206, i64 7
  store i8 %i.p, ptr %i.q, align 1, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %.0207, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %.099206, i64 6
  store i8 %i.s, ptr %i.t, align 1, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %.0207, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %.099206, i64 5
  store i8 %i.v, ptr %i.w, align 1, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %.0207, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %.099206, i64 4
  store i8 %i.y, ptr %i.z, align 1, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %.0207, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %.099206, i64 3
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %.0207, i64 5
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %.099206, i64 2
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %.0207, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %.099206, i64 1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %.0207, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !27
  store i8 %i.ak, ptr %.099206, align 1, !tbaa !27
  %i.al = getelementptr inbounds i8, ptr %.099206, i64 %7
  %i.am = getelementptr inbounds i8, ptr %.0207, i64 %4
  %i.an = add nuw i64 %.0109205, 1                ; 2 uses
  %exitcond238.not = icmp eq i64 %i.an, %.0154
  br i1 %exitcond238.not, label %.loopexit, label %.preheader155, !llvm.loop !86

.lr.ph211:                                        ; preds = %.lr.ph211, %.lr.ph211.preheader.new
  %.1210 = phi ptr [ %2, %.lr.ph211.preheader.new ], [ %i.bl, %.lr.ph211 ] ; 2 uses
  %.1100209 = phi ptr [ %5, %.lr.ph211.preheader.new ], [ %i.bk, %.lr.ph211 ] ; 2 uses
  %niter321 = phi i64 [ 0, %.lr.ph211.preheader.new ], [ %niter321.next.7, %.lr.ph211 ]
  %i.ao = load i64, ptr %.1210, align 8, !tbaa !28
  store i64 %i.ao, ptr %.1100209, align 8, !tbaa !28
  %i.ap = getelementptr inbounds i8, ptr %.1100209, i64 %7 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.1210, i64 %4 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !28
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !28
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %7 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %4 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !28
  store i64 %i.au, ptr %i.as, align 8, !tbaa !28
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %7 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %4 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !28
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !28
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 %7 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 %4 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !28
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !28
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %7 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %4 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !28
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !28
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 %7 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 %4 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !28
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !28
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 %7 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 %4 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !28
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !28
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 %7 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 %4 ; 2 uses
  %niter321.next.7 = add nuw i64 %niter321, 8     ; 2 uses
  %niter321.ncmp.7 = icmp eq i64 %niter321.next.7, %unroll_iter320
  br i1 %niter321.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph211, !llvm.loop !87

bb.d:                                             ; preds = %datatype_check.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !23
  %i.bo = and i32 %i.bn, 262144
  %.not120 = icmp eq i32 %i.bo, 0
  %i.bp = and i32 %i.k, 8
  %.not121 = icmp eq i32 %i.bp, 0                 ; 2 uses
  %i.bq = and i32 %i.j, 16384
  %.not122 = icmp eq i32 %i.bq, 0                 ; 4 uses
  %.not219 = icmp eq i64 %.0154, 0                ; 8 uses
  br i1 %.not120, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not122, label %.preheader170, label %.preheader172

.preheader172:                                    ; preds = %bb.f
  br i1 %.not219, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader172
  %xtraiter = and i64 %.0154, 1
  %i.br = icmp eq i64 %.0154, 1
  br i1 %i.br, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.0154, -2
  br label %.lr.ph

.preheader170:                                    ; preds = %bb.f
  br i1 %.not219, label %.loopexit, label %.preheader170.a

.preheader170.a:                                  ; preds = %.preheader170
  %xtraiter287 = and i64 %.0154, 1
  %9 = icmp eq i64 %.0154, 1
  br i1 %9, label %.lr.ph180.epil.preheader, label %.lr.ph180.preheader.new

.lr.ph180.preheader.new:                          ; preds = %.preheader170.a
  %unroll_iter290 = and i64 %.0154, -2
  br label %.lr.ph180

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.2176 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 2 uses
  %.2101175 = phi ptr [ %5, %.lr.ph.preheader.new ], [ %i.cc, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bs = load i64, ptr %.2176, align 8, !tbaa !28 ; 4 uses
  %.sroa.0252.0.extract.trunc = trunc i64 %i.bs to i8
  %.sroa.4253.0.extract.shift256 = lshr i64 %i.bs, 8
  %.sroa.4253.0.extract.trunc = trunc i64 %.sroa.4253.0.extract.shift256 to i8
  %.sroa.5254.0.extract.shift257 = lshr i64 %i.bs, 16
  %.sroa.5254.0.extract.trunc = trunc i64 %.sroa.5254.0.extract.shift257 to i8
  %.sroa.6255.0.extract.shift258 = lshr i64 %i.bs, 24
  %.sroa.6255.0.extract.trunc = trunc i64 %.sroa.6255.0.extract.shift258 to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %.2101175, i64 3
  store i8 %.sroa.0252.0.extract.trunc, ptr %i.bt, align 1, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %.2101175, i64 2
  store i8 %.sroa.4253.0.extract.trunc, ptr %i.bu, align 1, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %.2101175, i64 1
  store i8 %.sroa.5254.0.extract.trunc, ptr %i.bv, align 1, !tbaa !27
  store i8 %.sroa.6255.0.extract.trunc, ptr %.2101175, align 1, !tbaa !27
  %i.bw = getelementptr inbounds i8, ptr %.2101175, i64 %7 ; 5 uses
  %i.bx = getelementptr inbounds i8, ptr %.2176, i64 %4 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !28 ; 4 uses
  %.sroa.0252.0.extract.trunc.1 = trunc i64 %i.by to i8
  %.sroa.4253.0.extract.shift256.1 = lshr i64 %i.by, 8
  %.sroa.4253.0.extract.trunc.1 = trunc i64 %.sroa.4253.0.extract.shift256.1 to i8
  %.sroa.5254.0.extract.shift257.1 = lshr i64 %i.by, 16
  %.sroa.5254.0.extract.trunc.1 = trunc i64 %.sroa.5254.0.extract.shift257.1 to i8
  %.sroa.6255.0.extract.shift258.1 = lshr i64 %i.by, 24
  %.sroa.6255.0.extract.trunc.1 = trunc i64 %.sroa.6255.0.extract.shift258.1 to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  store i8 %.sroa.0252.0.extract.trunc.1, ptr %i.bz, align 1, !tbaa !27
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store i8 %.sroa.4253.0.extract.trunc.1, ptr %i.ca, align 1, !tbaa !27
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store i8 %.sroa.5254.0.extract.trunc.1, ptr %i.cb, align 1, !tbaa !27
  store i8 %.sroa.6255.0.extract.trunc.1, ptr %i.bw, align 1, !tbaa !27
  %i.cc = getelementptr inbounds i8, ptr %i.bw, i64 %7 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.bx, i64 %4 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit285.unr-lcssa, label %.lr.ph, !llvm.loop !88

.lr.ph180:                                        ; preds = %.lr.ph180, %.lr.ph180.preheader.new
  %.3179 = phi ptr [ %2, %.lr.ph180.preheader.new ], [ %i.cm, %.lr.ph180 ] ; 2 uses
  %.3102178 = phi ptr [ %5, %.lr.ph180.preheader.new ], [ %i.cl, %.lr.ph180 ] ; 6 uses
  %.3112177 = phi i64 [ 0, %.lr.ph180.preheader.new ], [ %i.cn, %.lr.ph180 ]
  %i.ce = load i32, ptr %.3179, align 4, !tbaa !24 ; 3 uses
  %i.cf = sext i32 %i.ce to i64                   ; 3 uses
  %10 = ashr i32 %i.ce, 31
  %.sroa.0244.0.extract.trunc = trunc nsw i32 %10 to i8
  %.sroa.8249.0.extract.shift = lshr i64 %i.cf, 40
  %.sroa.4245.0.extract.trunc = trunc i64 %.sroa.8249.0.extract.shift to i8
  %.sroa.9250.0.extract.shift = lshr i64 %i.cf, 48
  %.sroa.5246.0.extract.trunc = trunc i64 %.sroa.9250.0.extract.shift to i8
  %.sroa.10251.0.extract.shift = lshr i64 %i.cf, 56
  %.sroa.6247.0.extract.trunc = trunc nuw i64 %.sroa.10251.0.extract.shift to i8
  %11 = getelementptr inbounds nuw i8, ptr %.3102178, i64 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %i.ce)
  store i32 %12, ptr %11, align 1, !tbaa !27
  %13 = getelementptr inbounds nuw i8, ptr %.3102178, i64 3
  store i8 %.sroa.0244.0.extract.trunc, ptr %13, align 1, !tbaa !27
  %14 = getelementptr inbounds nuw i8, ptr %.3102178, i64 2
  store i8 %.sroa.4245.0.extract.trunc, ptr %14, align 1, !tbaa !27
  %15 = getelementptr inbounds nuw i8, ptr %.3102178, i64 1
  store i8 %.sroa.5246.0.extract.trunc, ptr %15, align 1, !tbaa !27
  store i8 %.sroa.6247.0.extract.trunc, ptr %.3102178, align 1, !tbaa !27
  %16 = getelementptr inbounds i8, ptr %.3102178, i64 %7 ; 6 uses
  %i.cg = getelementptr inbounds i8, ptr %.3179, i64 %4 ; 2 uses
  %17 = load i32, ptr %i.cg, align 4, !tbaa !24   ; 3 uses
  %18 = sext i32 %17 to i64                       ; 3 uses
  %19 = ashr i32 %17, 31
  %.sroa.7248.0.extract.trunc.1 = trunc nsw i32 %19 to i8
  %.sroa.8249.0.extract.shift.1 = lshr i64 %18, 40
  %.sroa.8249.0.extract.trunc.1 = trunc i64 %.sroa.8249.0.extract.shift.1 to i8
  %.sroa.9250.0.extract.shift.1 = lshr i64 %18, 48
  %.sroa.9250.0.extract.trunc.1 = trunc i64 %.sroa.9250.0.extract.shift.1 to i8
  %.sroa.10251.0.extract.shift.1 = lshr i64 %18, 56
  %.sroa.10251.0.extract.trunc.1 = trunc nuw i64 %.sroa.10251.0.extract.shift.1 to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %16, i64 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %17)
  store i32 %20, ptr %i.ch, align 1, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %16, i64 3
  store i8 %.sroa.7248.0.extract.trunc.1, ptr %i.ci, align 1, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 2
  store i8 %.sroa.8249.0.extract.trunc.1, ptr %i.cj, align 1, !tbaa !27
  %i.ck = getelementptr inbounds nuw i8, ptr %16, i64 1
  store i8 %.sroa.9250.0.extract.trunc.1, ptr %i.ck, align 1, !tbaa !27
  store i8 %.sroa.10251.0.extract.trunc.1, ptr %16, align 1, !tbaa !27
  %i.cl = getelementptr inbounds i8, ptr %16, i64 %7 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 %4 ; 2 uses
  %i.cn = add nuw i64 %.3112177, 2                ; 2 uses
  %exitcond231.not = icmp eq i64 %i.cn, %unroll_iter290
  br i1 %exitcond231.not, label %.loopexit.loopexit284.unr-lcssa, label %.lr.ph180, !llvm.loop !89

bb.g:                                             ; preds = %bb.e
  br i1 %.not122, label %.preheader166, label %.preheader168

.preheader168:                                    ; preds = %bb.g
  br i1 %.not219, label %.loopexit, label %.lr.ph184.preheader

.lr.ph184.preheader:                              ; preds = %.preheader168
  %i.co = add i64 %.0154, -1
  %xtraiter287.a = and i64 %.0154, 7              ; 3 uses
  %i.cp = icmp ult i64 %i.co, 7
  br i1 %i.cp, label %.lr.ph184.epil.preheader, label %.lr.ph184.preheader.new

.lr.ph184.preheader.new:                          ; preds = %.lr.ph184.preheader
  %unroll_iter290.a = and i64 %.0154, -8
  br label %.lr.ph184

.preheader166:                                    ; preds = %bb.g
  br i1 %.not219, label %.loopexit, label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %.preheader166
  %i.cq = add i64 %.0154, -1
  %xtraiter292 = and i64 %.0154, 7                ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 7
  br i1 %i.cr, label %.lr.ph188.epil.preheader, label %.lr.ph188.preheader.new

.lr.ph188.preheader.new:                          ; preds = %.lr.ph188.preheader
  %unroll_iter296 = and i64 %.0154, -8
  br label %.lr.ph188

.lr.ph184:                                        ; preds = %.lr.ph184, %.lr.ph184.preheader.new
  %.4183 = phi ptr [ %2, %.lr.ph184.preheader.new ], [ %i.dx, %.lr.ph184 ] ; 2 uses
  %.4103182 = phi ptr [ %5, %.lr.ph184.preheader.new ], [ %i.dw, %.lr.ph184 ] ; 2 uses
  %niter291 = phi i64 [ 0, %.lr.ph184.preheader.new ], [ %niter291.next.7, %.lr.ph184 ]
  %i.cs = load i64, ptr %.4183, align 8, !tbaa !28
  %i.ct = trunc i64 %i.cs to i32
  store i32 %i.ct, ptr %.4103182, align 4, !tbaa !24
  %i.cu = getelementptr inbounds i8, ptr %.4103182, i64 %7 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.4183, i64 %4 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !28
  %i.cx = trunc i64 %i.cw to i32
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !24
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 %7 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cv, i64 %4 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !28
  %i.db = trunc i64 %i.da to i32
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !24
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %7 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 %4 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !28
  %i.df = trunc i64 %i.de to i32
  store i32 %i.df, ptr %i.dc, align 4, !tbaa !24
  %i.dg = getelementptr inbounds i8, ptr %i.dc, i64 %7 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 %4 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !28
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !24
  %i.dk = getelementptr inbounds i8, ptr %i.dg, i64 %7 ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 %4 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !28
  %i.dn = trunc i64 %i.dm to i32
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !24
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 %7 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 %4 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !28
  %i.dr = trunc i64 %i.dq to i32
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !24
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 %7 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dp, i64 %4 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !28
  %i.dv = trunc i64 %i.du to i32
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !24
  %i.dw = getelementptr inbounds i8, ptr %i.ds, i64 %7 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dt, i64 %4 ; 2 uses
  %niter291.next.7 = add nuw i64 %niter291, 8     ; 2 uses
  %niter291.ncmp.7 = icmp eq i64 %niter291.next.7, %unroll_iter290.a
  br i1 %niter291.ncmp.7, label %.loopexit.loopexit283.unr-lcssa, label %.lr.ph184, !llvm.loop !90

.lr.ph188:                                        ; preds = %.lr.ph188, %.lr.ph188.preheader.new
  %.5187 = phi ptr [ %2, %.lr.ph188.preheader.new ], [ %i.ev, %.lr.ph188 ] ; 2 uses
  %.5104186 = phi ptr [ %5, %.lr.ph188.preheader.new ], [ %i.eu, %.lr.ph188 ] ; 2 uses
  %niter297 = phi i64 [ 0, %.lr.ph188.preheader.new ], [ %niter297.next.7, %.lr.ph188 ]
  %i.dy = load i64, ptr %.5187, align 8, !tbaa !28
  store i64 %i.dy, ptr %.5104186, align 8, !tbaa !28
  %i.dz = getelementptr inbounds i8, ptr %.5104186, i64 %7 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %.5187, i64 %4 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !28
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !28
  %i.ec = getelementptr inbounds i8, ptr %i.dz, i64 %7 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ea, i64 %4 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !28
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !28
  %i.ef = getelementptr inbounds i8, ptr %i.ec, i64 %7 ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ed, i64 %4 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !28
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !28
  %i.ei = getelementptr inbounds i8, ptr %i.ef, i64 %7 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.eg, i64 %4 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !28
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !28
  %i.el = getelementptr inbounds i8, ptr %i.ei, i64 %7 ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %4 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !28
  store i64 %i.en, ptr %i.el, align 8, !tbaa !28
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 %7 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.em, i64 %4 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !28
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !28
  %i.er = getelementptr inbounds i8, ptr %i.eo, i64 %7 ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %i.ep, i64 %4 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !28
  store i64 %i.et, ptr %i.er, align 8, !tbaa !28
  %i.eu = getelementptr inbounds i8, ptr %i.er, i64 %7 ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.es, i64 %4 ; 2 uses
  %niter297.next.7 = add nuw i64 %niter297, 8     ; 2 uses
  %niter297.ncmp.7 = icmp eq i64 %niter297.next.7, %unroll_iter296
  br i1 %niter297.ncmp.7, label %.loopexit.loopexit282.unr-lcssa, label %.lr.ph188, !llvm.loop !91

bb.h:                                             ; preds = %bb.d
  br i1 %.not121, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not122, label %.preheader162, label %.preheader164

.preheader164:                                    ; preds = %bb.i
  br i1 %.not219, label %.loopexit, label %.lr.ph192.preheader

.lr.ph192.preheader:                              ; preds = %.preheader164
  %i.ew = add i64 %.0154, -1
  %xtraiter298 = and i64 %.0154, 3                ; 3 uses
  %i.ex = icmp ult i64 %i.ew, 3
  br i1 %i.ex, label %.lr.ph192.epil.preheader, label %.lr.ph192.preheader.new

.lr.ph192.preheader.new:                          ; preds = %.lr.ph192.preheader
  %unroll_iter302 = and i64 %.0154, -4
  br label %.lr.ph192

.preheader162:                                    ; preds = %bb.i
  br i1 %.not219, label %.loopexit, label %.lr.ph196

.lr.ph192:                                        ; preds = %.lr.ph192, %.lr.ph192.preheader.new
  %.6191 = phi ptr [ %2, %.lr.ph192.preheader.new ], [ %i.fr, %.lr.ph192 ] ; 2 uses
  %.6105190 = phi ptr [ %5, %.lr.ph192.preheader.new ], [ %i.fq, %.lr.ph192 ] ; 2 uses
  %niter303 = phi i64 [ 0, %.lr.ph192.preheader.new ], [ %niter303.next.3, %.lr.ph192 ]
  %i.ey = load i32, ptr %.6191, align 1
  %i.ez = tail call i32 @llvm.bswap.i32(i32 %i.ey)
  %i.fa = sext i32 %i.ez to i64
  store i64 %i.fa, ptr %.6105190, align 8, !tbaa !28
  %i.fb = getelementptr inbounds i8, ptr %.6105190, i64 %7 ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.6191, i64 %4 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 1
  %i.fe = tail call i32 @llvm.bswap.i32(i32 %i.fd)
  %i.ff = sext i32 %i.fe to i64
  store i64 %i.ff, ptr %i.fb, align 8, !tbaa !28
  %i.fg = getelementptr inbounds i8, ptr %i.fb, i64 %7 ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fc, i64 %4 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 1
  %i.fj = tail call i32 @llvm.bswap.i32(i32 %i.fi)
  %i.fk = sext i32 %i.fj to i64
  store i64 %i.fk, ptr %i.fg, align 8, !tbaa !28
  %i.fl = getelementptr inbounds i8, ptr %i.fg, i64 %7 ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fh, i64 %4 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 1
  %i.fo = tail call i32 @llvm.bswap.i32(i32 %i.fn)
  %i.fp = sext i32 %i.fo to i64
  store i64 %i.fp, ptr %i.fl, align 8, !tbaa !28
  %i.fq = getelementptr inbounds i8, ptr %i.fl, i64 %7 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fm, i64 %4 ; 2 uses
  %niter303.next.3 = add nuw i64 %niter303, 4     ; 2 uses
  %niter303.ncmp.3 = icmp eq i64 %niter303.next.3, %unroll_iter302
  br i1 %niter303.ncmp.3, label %.loopexit.loopexit281.unr-lcssa, label %.lr.ph192, !llvm.loop !92

.lr.ph196:                                        ; preds = %.preheader162, %.lr.ph196
  %.7195 = phi ptr [ %i.gi, %.lr.ph196 ], [ %2, %.preheader162 ] ; 9 uses
  %.7106194 = phi ptr [ %i.gh, %.lr.ph196 ], [ %5, %.preheader162 ] ; 2 uses
  %.7116193 = phi i64 [ %i.gj, %.lr.ph196 ], [ 0, %.preheader162 ]
  %i.fs = load i8, ptr %.7195, align 1, !tbaa !27
  %i.ft = getelementptr inbounds nuw i8, ptr %.7195, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !27
  %i.fv = getelementptr inbounds nuw i8, ptr %.7195, i64 2
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !27
  %i.fx = getelementptr inbounds nuw i8, ptr %.7195, i64 3
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !27
  %i.fz = getelementptr inbounds nuw i8, ptr %.7195, i64 4
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !27
  %i.gb = getelementptr inbounds nuw i8, ptr %.7195, i64 5
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !27
  %i.gd = getelementptr inbounds nuw i8, ptr %.7195, i64 6
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !27
  %i.gf = getelementptr inbounds nuw i8, ptr %.7195, i64 7
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !27
  %.sroa.10.0.insert.ext = zext i8 %i.fs to i64
  %.sroa.10.0.insert.shift = shl nuw i64 %.sroa.10.0.insert.ext, 56
  %.sroa.9.0.insert.ext = zext i8 %i.fu to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 48
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.10.0.insert.shift, %.sroa.9.0.insert.shift
  %.sroa.8.0.insert.ext = zext i8 %i.fw to i64
  %.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.8.0.insert.ext, 40
  %.sroa.8.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.8.0.insert.shift
  %.sroa.7.0.insert.ext = zext i8 %i.fy to i64
end_hunk_0
begin_hunk_1_@copy_long_heterogeneous:bb.a
  %i.hj = sext i32 %i.hi to i64
  store i64 %i.hj, ptr %i.hg, align 8, !tbaa !28
  %i.hk = getelementptr inbounds i8, ptr %i.hg, i64 %7 ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %i.hh, i64 %4 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !24
  %i.hn = sext i32 %i.hm to i64
  store i64 %i.hn, ptr %i.hk, align 8, !tbaa !28
  %i.ho = getelementptr inbounds i8, ptr %i.hk, i64 %7 ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %i.hl, i64 %4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !24
  %i.hr = sext i32 %i.hq to i64
  store i64 %i.hr, ptr %i.ho, align 8, !tbaa !28
  %i.hs = getelementptr inbounds i8, ptr %i.ho, i64 %7 ; 2 uses
  %i.ht = getelementptr inbounds i8, ptr %i.hp, i64 %4 ; 2 uses
  %niter309.next.7 = add nuw i64 %niter309, 8     ; 2 uses
  %niter309.ncmp.7 = icmp eq i64 %niter309.next.7, %unroll_iter308
  br i1 %niter309.ncmp.7, label %.loopexit.loopexit279.unr-lcssa, label %.lr.ph200, !llvm.loop !94

.lr.ph204:                                        ; preds = %.lr.ph204, %.lr.ph204.preheader.new
  %.9203 = phi ptr [ %2, %.lr.ph204.preheader.new ], [ %i.ir, %.lr.ph204 ] ; 2 uses
  %.9108202 = phi ptr [ %5, %.lr.ph204.preheader.new ], [ %i.iq, %.lr.ph204 ] ; 2 uses
  %niter315 = phi i64 [ 0, %.lr.ph204.preheader.new ], [ %niter315.next.7, %.lr.ph204 ]
  %i.hu = load i64, ptr %.9203, align 8, !tbaa !28
  store i64 %i.hu, ptr %.9108202, align 8, !tbaa !28
  %i.hv = getelementptr inbounds i8, ptr %.9108202, i64 %7 ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %.9203, i64 %4 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !28
  store i64 %i.hx, ptr %i.hv, align 8, !tbaa !28
  %i.hy = getelementptr inbounds i8, ptr %i.hv, i64 %7 ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %i.hw, i64 %4 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !28
  store i64 %i.ia, ptr %i.hy, align 8, !tbaa !28
  %i.ib = getelementptr inbounds i8, ptr %i.hy, i64 %7 ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %i.hz, i64 %4 ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !28
  store i64 %i.id, ptr %i.ib, align 8, !tbaa !28
  %i.ie = getelementptr inbounds i8, ptr %i.ib, i64 %7 ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %i.ic, i64 %4 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !28
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !28
  %i.ih = getelementptr inbounds i8, ptr %i.ie, i64 %7 ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %i.if, i64 %4 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !28
  store i64 %i.ij, ptr %i.ih, align 8, !tbaa !28
  %i.ik = getelementptr inbounds i8, ptr %i.ih, i64 %7 ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %i.ii, i64 %4 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !28
  store i64 %i.im, ptr %i.ik, align 8, !tbaa !28
  %i.in = getelementptr inbounds i8, ptr %i.ik, i64 %7 ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %i.il, i64 %4 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !28
  store i64 %i.ip, ptr %i.in, align 8, !tbaa !28
  %i.iq = getelementptr inbounds i8, ptr %i.in, i64 %7 ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %i.io, i64 %4 ; 2 uses
  %niter315.next.7 = add nuw i64 %niter315, 8     ; 2 uses
  %niter315.ncmp.7 = icmp eq i64 %niter315.next.7, %unroll_iter314
  br i1 %niter315.ncmp.7, label %.loopexit.loopexit278.unr-lcssa, label %.lr.ph204, !llvm.loop !95

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph211
  %lcmp.mod318.not = icmp eq i64 %xtraiter316, 0
  br i1 %lcmp.mod318.not, label %.loopexit, label %.lr.ph211.epil.preheader

.lr.ph211.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph211.preheader
  %.1210.epil.init = phi ptr [ %2, %.lr.ph211.preheader ], [ %i.bl, %.loopexit.loopexit.unr-lcssa ]
  %.1100209.epil.init = phi ptr [ %5, %.lr.ph211.preheader ], [ %i.bk, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod319 = icmp ne i64 %xtraiter316, 0
  tail call void @llvm.assume(i1 %lcmp.mod319)
  br label %.lr.ph211.epil

.lr.ph211.epil:                                   ; preds = %.lr.ph211.epil, %.lr.ph211.epil.preheader
  %.1210.epil = phi ptr [ %i.iu, %.lr.ph211.epil ], [ %.1210.epil.init, %.lr.ph211.epil.preheader ] ; 2 uses
  %.1100209.epil = phi ptr [ %i.it, %.lr.ph211.epil ], [ %.1100209.epil.init, %.lr.ph211.epil.preheader ] ; 2 uses
  %epil.iter317 = phi i64 [ %epil.iter317.next, %.lr.ph211.epil ], [ 0, %.lr.ph211.epil.preheader ]
  %i.is = load i64, ptr %.1210.epil, align 8, !tbaa !28
  store i64 %i.is, ptr %.1100209.epil, align 8, !tbaa !28
  %i.it = getelementptr inbounds i8, ptr %.1100209.epil, i64 %7
  %i.iu = getelementptr inbounds i8, ptr %.1210.epil, i64 %4
  %epil.iter317.next = add i64 %epil.iter317, 1   ; 2 uses
  %epil.iter317.cmp.not = icmp eq i64 %epil.iter317.next, %xtraiter316
  br i1 %epil.iter317.cmp.not, label %.loopexit, label %.lr.ph211.epil, !llvm.loop !96

.loopexit.loopexit278.unr-lcssa:                  ; preds = %.lr.ph204
  %lcmp.mod312.not = icmp eq i64 %xtraiter310, 0
  br i1 %lcmp.mod312.not, label %.loopexit, label %.lr.ph204.epil.preheader

.lr.ph204.epil.preheader:                         ; preds = %.loopexit.loopexit278.unr-lcssa, %.lr.ph204.preheader
  %.9203.epil.init = phi ptr [ %2, %.lr.ph204.preheader ], [ %i.ir, %.loopexit.loopexit278.unr-lcssa ]
  %.9108202.epil.init = phi ptr [ %5, %.lr.ph204.preheader ], [ %i.iq, %.loopexit.loopexit278.unr-lcssa ]
  %lcmp.mod313 = icmp ne i64 %xtraiter310, 0
  tail call void @llvm.assume(i1 %lcmp.mod313)
  br label %.lr.ph204.epil

.lr.ph204.epil:                                   ; preds = %.lr.ph204.epil, %.lr.ph204.epil.preheader
  %.9203.epil = phi ptr [ %i.ix, %.lr.ph204.epil ], [ %.9203.epil.init, %.lr.ph204.epil.preheader ] ; 2 uses
  %.9108202.epil = phi ptr [ %i.iw, %.lr.ph204.epil ], [ %.9108202.epil.init, %.lr.ph204.epil.preheader ] ; 2 uses
  %epil.iter311 = phi i64 [ %epil.iter311.next, %.lr.ph204.epil ], [ 0, %.lr.ph204.epil.preheader ]
  %i.iv = load i64, ptr %.9203.epil, align 8, !tbaa !28
  store i64 %i.iv, ptr %.9108202.epil, align 8, !tbaa !28
  %i.iw = getelementptr inbounds i8, ptr %.9108202.epil, i64 %7
  %i.ix = getelementptr inbounds i8, ptr %.9203.epil, i64 %4
  %epil.iter311.next = add i64 %epil.iter311, 1   ; 2 uses
  %epil.iter311.cmp.not = icmp eq i64 %epil.iter311.next, %xtraiter310
  br i1 %epil.iter311.cmp.not, label %.loopexit, label %.lr.ph204.epil, !llvm.loop !97

.loopexit.loopexit279.unr-lcssa:                  ; preds = %.lr.ph200
  %lcmp.mod306.not = icmp eq i64 %xtraiter304, 0
  br i1 %lcmp.mod306.not, label %.loopexit, label %.lr.ph200.epil.preheader

.lr.ph200.epil.preheader:                         ; preds = %.loopexit.loopexit279.unr-lcssa, %.lr.ph200.preheader
  %.8199.epil.init = phi ptr [ %2, %.lr.ph200.preheader ], [ %i.ht, %.loopexit.loopexit279.unr-lcssa ]
  %.8107198.epil.init = phi ptr [ %5, %.lr.ph200.preheader ], [ %i.hs, %.loopexit.loopexit279.unr-lcssa ]
  %lcmp.mod307 = icmp ne i64 %xtraiter304, 0
  tail call void @llvm.assume(i1 %lcmp.mod307)
  br label %.lr.ph200.epil

.lr.ph200.epil:                                   ; preds = %.lr.ph200.epil, %.lr.ph200.epil.preheader
  %.8199.epil = phi ptr [ %i.jb, %.lr.ph200.epil ], [ %.8199.epil.init, %.lr.ph200.epil.preheader ] ; 2 uses
  %.8107198.epil = phi ptr [ %i.ja, %.lr.ph200.epil ], [ %.8107198.epil.init, %.lr.ph200.epil.preheader ] ; 2 uses
  %epil.iter305 = phi i64 [ %epil.iter305.next, %.lr.ph200.epil ], [ 0, %.lr.ph200.epil.preheader ]
  %i.iy = load i32, ptr %.8199.epil, align 4, !tbaa !24
  %i.iz = sext i32 %i.iy to i64
  store i64 %i.iz, ptr %.8107198.epil, align 8, !tbaa !28
  %i.ja = getelementptr inbounds i8, ptr %.8107198.epil, i64 %7
  %i.jb = getelementptr inbounds i8, ptr %.8199.epil, i64 %4
  %epil.iter305.next = add i64 %epil.iter305, 1   ; 2 uses
  %epil.iter305.cmp.not = icmp eq i64 %epil.iter305.next, %xtraiter304
  br i1 %epil.iter305.cmp.not, label %.loopexit, label %.lr.ph200.epil, !llvm.loop !98

.loopexit.loopexit281.unr-lcssa:                  ; preds = %.lr.ph192
  %lcmp.mod300.not = icmp eq i64 %xtraiter298, 0
  br i1 %lcmp.mod300.not, label %.loopexit, label %.lr.ph192.epil.preheader

.lr.ph192.epil.preheader:                         ; preds = %.loopexit.loopexit281.unr-lcssa, %.lr.ph192.preheader
  %.6191.epil.init = phi ptr [ %2, %.lr.ph192.preheader ], [ %i.fr, %.loopexit.loopexit281.unr-lcssa ]
  %.6105190.epil.init = phi ptr [ %5, %.lr.ph192.preheader ], [ %i.fq, %.loopexit.loopexit281.unr-lcssa ]
  %lcmp.mod301 = icmp ne i64 %xtraiter298, 0
  tail call void @llvm.assume(i1 %lcmp.mod301)
  br label %.lr.ph192.epil

.lr.ph192.epil:                                   ; preds = %.lr.ph192.epil, %.lr.ph192.epil.preheader
  %.6191.epil = phi ptr [ %i.jg, %.lr.ph192.epil ], [ %.6191.epil.init, %.lr.ph192.epil.preheader ] ; 2 uses
  %.6105190.epil = phi ptr [ %i.jf, %.lr.ph192.epil ], [ %.6105190.epil.init, %.lr.ph192.epil.preheader ] ; 2 uses
  %epil.iter299 = phi i64 [ %epil.iter299.next, %.lr.ph192.epil ], [ 0, %.lr.ph192.epil.preheader ]
  %i.jc = load i32, ptr %.6191.epil, align 1
  %i.jd = tail call i32 @llvm.bswap.i32(i32 %i.jc)
  %i.je = sext i32 %i.jd to i64
  store i64 %i.je, ptr %.6105190.epil, align 8, !tbaa !28
  %i.jf = getelementptr inbounds i8, ptr %.6105190.epil, i64 %7
  %i.jg = getelementptr inbounds i8, ptr %.6191.epil, i64 %4
  %epil.iter299.next = add i64 %epil.iter299, 1   ; 2 uses
  %epil.iter299.cmp.not = icmp eq i64 %epil.iter299.next, %xtraiter298
  br i1 %epil.iter299.cmp.not, label %.loopexit, label %.lr.ph192.epil, !llvm.loop !99

.loopexit.loopexit282.unr-lcssa:                  ; preds = %.lr.ph188
  %lcmp.mod294.not = icmp eq i64 %xtraiter292, 0
  br i1 %lcmp.mod294.not, label %.loopexit, label %.lr.ph188.epil.preheader

.lr.ph188.epil.preheader:                         ; preds = %.loopexit.loopexit282.unr-lcssa, %.lr.ph188.preheader
  %.5187.epil.init = phi ptr [ %2, %.lr.ph188.preheader ], [ %i.ev, %.loopexit.loopexit282.unr-lcssa ]
  %.5104186.epil.init = phi ptr [ %5, %.lr.ph188.preheader ], [ %i.eu, %.loopexit.loopexit282.unr-lcssa ]
  %lcmp.mod295 = icmp ne i64 %xtraiter292, 0
  tail call void @llvm.assume(i1 %lcmp.mod295)
  br label %.lr.ph188.epil

.lr.ph188.epil:                                   ; preds = %.lr.ph188.epil, %.lr.ph188.epil.preheader
  %.5187.epil = phi ptr [ %i.jj, %.lr.ph188.epil ], [ %.5187.epil.init, %.lr.ph188.epil.preheader ] ; 2 uses
  %.5104186.epil = phi ptr [ %i.ji, %.lr.ph188.epil ], [ %.5104186.epil.init, %.lr.ph188.epil.preheader ] ; 2 uses
  %epil.iter293 = phi i64 [ %epil.iter293.next, %.lr.ph188.epil ], [ 0, %.lr.ph188.epil.preheader ]
  %i.jh = load i64, ptr %.5187.epil, align 8, !tbaa !28
  store i64 %i.jh, ptr %.5104186.epil, align 8, !tbaa !28
  %i.ji = getelementptr inbounds i8, ptr %.5104186.epil, i64 %7
  %i.jj = getelementptr inbounds i8, ptr %.5187.epil, i64 %4
  %epil.iter293.next = add i64 %epil.iter293, 1   ; 2 uses
  %epil.iter293.cmp.not = icmp eq i64 %epil.iter293.next, %xtraiter292
  br i1 %epil.iter293.cmp.not, label %.loopexit, label %.lr.ph188.epil, !llvm.loop !100

.loopexit.loopexit283.unr-lcssa:                  ; preds = %.lr.ph184
  %lcmp.mod288.not.a = icmp eq i64 %xtraiter287.a, 0
  br i1 %lcmp.mod288.not.a, label %.loopexit, label %.lr.ph184.epil.preheader

.lr.ph184.epil.preheader:                         ; preds = %.loopexit.loopexit283.unr-lcssa, %.lr.ph184.preheader
  %.4183.epil.init = phi ptr [ %2, %.lr.ph184.preheader ], [ %i.dx, %.loopexit.loopexit283.unr-lcssa ]
  %.4103182.epil.init = phi ptr [ %5, %.lr.ph184.preheader ], [ %i.dw, %.loopexit.loopexit283.unr-lcssa ]
  %lcmp.mod289.a = icmp ne i64 %xtraiter287.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod289.a)
  br label %.lr.ph184.epil

.lr.ph184.epil:                                   ; preds = %.lr.ph184.epil, %.lr.ph184.epil.preheader
  %.4183.epil = phi ptr [ %i.jn, %.lr.ph184.epil ], [ %.4183.epil.init, %.lr.ph184.epil.preheader ] ; 2 uses
  %.4103182.epil = phi ptr [ %i.jm, %.lr.ph184.epil ], [ %.4103182.epil.init, %.lr.ph184.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph184.epil ], [ 0, %.lr.ph184.epil.preheader ]
  %i.jk = load i64, ptr %.4183.epil, align 8, !tbaa !28
  %i.jl = trunc i64 %i.jk to i32
  store i32 %i.jl, ptr %.4103182.epil, align 4, !tbaa !24
  %i.jm = getelementptr inbounds i8, ptr %.4103182.epil, i64 %7
  %i.jn = getelementptr inbounds i8, ptr %.4183.epil, i64 %4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter287.a
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph184.epil, !llvm.loop !101

.loopexit.loopexit284.unr-lcssa:                  ; preds = %.lr.ph180
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %.loopexit, label %.lr.ph180.epil.preheader

.lr.ph180.epil.preheader:                         ; preds = %.loopexit.loopexit284.unr-lcssa, %.preheader170.a
  %.3179.epil.init = phi ptr [ %2, %.preheader170.a ], [ %i.cm, %.loopexit.loopexit284.unr-lcssa ]
  %.3102178.epil.init = phi ptr [ %5, %.preheader170.a ], [ %i.cl, %.loopexit.loopexit284.unr-lcssa ] ; 5 uses
  %lcmp.mod289 = trunc i64 %.0154 to i1
  tail call void @llvm.assume(i1 %lcmp.mod289)
  %21 = load i32, ptr %.3179.epil.init, align 4, !tbaa !24 ; 3 uses
  %22 = sext i32 %21 to i64                       ; 3 uses
  %23 = ashr i32 %21, 31
  %.sroa.7248.0.extract.trunc.epil = trunc nsw i32 %23 to i8
  %.sroa.8249.0.extract.shift.epil = lshr i64 %22, 40
  %.sroa.8249.0.extract.trunc.epil = trunc i64 %.sroa.8249.0.extract.shift.epil to i8
  %.sroa.9250.0.extract.shift.epil = lshr i64 %22, 48
  %.sroa.9250.0.extract.trunc.epil = trunc i64 %.sroa.9250.0.extract.shift.epil to i8
  %.sroa.10251.0.extract.shift.epil = lshr i64 %22, 56
  %.sroa.10251.0.extract.trunc.epil = trunc nuw i64 %.sroa.10251.0.extract.shift.epil to i8
  %24 = getelementptr inbounds nuw i8, ptr %.3102178.epil.init, i64 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %21)
  store i32 %25, ptr %24, align 1, !tbaa !27
  %26 = getelementptr inbounds nuw i8, ptr %.3102178.epil.init, i64 3
  store i8 %.sroa.7248.0.extract.trunc.epil, ptr %26, align 1, !tbaa !27
  %27 = getelementptr inbounds nuw i8, ptr %.3102178.epil.init, i64 2
  store i8 %.sroa.8249.0.extract.trunc.epil, ptr %27, align 1, !tbaa !27
  %28 = getelementptr inbounds nuw i8, ptr %.3102178.epil.init, i64 1
  store i8 %.sroa.9250.0.extract.trunc.epil, ptr %28, align 1, !tbaa !27
  store i8 %.sroa.10251.0.extract.trunc.epil, ptr %.3102178.epil.init, align 1, !tbaa !27
  br label %.loopexit

.loopexit.loopexit285.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit285.unr-lcssa, %.lr.ph.preheader
  %.2176.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.cd, %.loopexit.loopexit285.unr-lcssa ]
  %.2101175.epil.init = phi ptr [ %5, %.lr.ph.preheader ], [ %i.cc, %.loopexit.loopexit285.unr-lcssa ] ; 4 uses
  %lcmp.mod286 = trunc i64 %.0154 to i1
  tail call void @llvm.assume(i1 %lcmp.mod286)
  %i.jo = load i64, ptr %.2176.epil.init, align 8, !tbaa !28 ; 4 uses
  %.sroa.0252.0.extract.trunc.epil = trunc i64 %i.jo to i8
  %.sroa.4253.0.extract.shift256.epil = lshr i64 %i.jo, 8
  %.sroa.4253.0.extract.trunc.epil = trunc i64 %.sroa.4253.0.extract.shift256.epil to i8
  %.sroa.5254.0.extract.shift257.epil = lshr i64 %i.jo, 16
  %.sroa.5254.0.extract.trunc.epil = trunc i64 %.sroa.5254.0.extract.shift257.epil to i8
  %.sroa.6255.0.extract.shift258.epil = lshr i64 %i.jo, 24
  %.sroa.6255.0.extract.trunc.epil = trunc i64 %.sroa.6255.0.extract.shift258.epil to i8
  %i.jp = getelementptr inbounds nuw i8, ptr %.2101175.epil.init, i64 3
  store i8 %.sroa.0252.0.extract.trunc.epil, ptr %i.jp, align 1, !tbaa !27
  %i.jq = getelementptr inbounds nuw i8, ptr %.2101175.epil.init, i64 2
  store i8 %.sroa.4253.0.extract.trunc.epil, ptr %i.jq, align 1, !tbaa !27
  %i.jr = getelementptr inbounds nuw i8, ptr %.2101175.epil.init, i64 1
  store i8 %.sroa.5254.0.extract.trunc.epil, ptr %i.jr, align 1, !tbaa !27
  store i8 %.sroa.6255.0.extract.trunc.epil, ptr %.2101175.epil.init, align 1, !tbaa !27
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit285.unr-lcssa, %.lr.ph180.epil.preheader, %.loopexit.loopexit284.unr-lcssa, %.loopexit.loopexit283.unr-lcssa, %.lr.ph184.epil, %.loopexit.loopexit282.unr-lcssa, %.lr.ph188.epil, %.loopexit.loopexit281.unr-lcssa, %.lr.ph192.epil, %.lr.ph196, %.loopexit.loopexit279.unr-lcssa, %.lr.ph200.epil, %.loopexit.loopexit278.unr-lcssa, %.lr.ph204.epil, %.preheader155, %.loopexit.loopexit.unr-lcssa, %.lr.ph211.epil, %.preheader172, %.preheader170, %.preheader168, %.preheader166, %.preheader164, %.preheader162, %.preheader160, %.preheader158, %.preheader156, %.preheader
  %i.js = mul i64 %.0154, %4
  store i64 %i.js, ptr %8, align 8, !tbaa !28
  %i.jt = trunc i64 %.0154 to i32
  ret i32 %i.jt
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @copy_unsigned_long_heterogeneous(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 %6, i64 noundef %7, ptr nofree noundef writeonly captures(none) %8) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = mul i64 %i.d, %1
  %i.f = icmp ugt i64 %i.e, %3
  br i1 %i.f, label %bb.b, label %datatype_check.exit

bb.b:                                             ; preds = %bb.a
  %i.g = udiv i64 %3, %i.d
  br label %datatype_check.exit

datatype_check.exit:                              ; preds = %bb.a, %bb.b
  %.0154 = phi i64 [ %i.g, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34
  %i.j = load i32, ptr @opal_local_arch, align 4, !tbaa !24 ; 2 uses
  %i.k = xor i32 %i.j, %i.i                       ; 3 uses
  %i.l = and i32 %i.k, 16384
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %datatype_check.exit
  %i.m = and i32 %i.k, 8
  %.not119 = icmp eq i32 %i.m, 0
  %.not221 = icmp eq i64 %.0154, 0                ; 2 uses
  br i1 %.not119, label %.preheader, label %.preheader156

.preheader156:                                    ; preds = %bb.c
  br i1 %.not221, label %.loopexit, label %.preheader155

.preheader:                                       ; preds = %bb.c
  br i1 %.not221, label %.loopexit, label %.lr.ph211.preheader

.lr.ph211.preheader:                              ; preds = %.preheader
  %i.n = add i64 %.0154, -1
  %xtraiter321 = and i64 %.0154, 7                ; 3 uses
  %i.o = icmp ult i64 %i.n, 7
  br i1 %i.o, label %.lr.ph211.epil.preheader, label %.lr.ph211.preheader.new

.lr.ph211.preheader.new:                          ; preds = %.lr.ph211.preheader
  %unroll_iter325 = and i64 %.0154, -8
  br label %.lr.ph211

.preheader155:                                    ; preds = %.preheader156, %.preheader155
  %.0207 = phi ptr [ %i.am, %.preheader155 ], [ %2, %.preheader156 ] ; 9 uses
  %.099206 = phi ptr [ %i.al, %.preheader155 ], [ %5, %.preheader156 ] ; 9 uses
  %.0109205 = phi i64 [ %i.an, %.preheader155 ], [ 0, %.preheader156 ]
  %i.p = load i8, ptr %.0207, align 1, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %.099206, i64 7
  store i8 %i.p, ptr %i.q, align 1, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %.0207, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %.099206, i64 6
  store i8 %i.s, ptr %i.t, align 1, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %.0207, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %.099206, i64 5
  store i8 %i.v, ptr %i.w, align 1, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %.0207, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %.099206, i64 4
  store i8 %i.y, ptr %i.z, align 1, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %.0207, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %.099206, i64 3
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %.0207, i64 5
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %.099206, i64 2
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %.0207, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %.099206, i64 1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %.0207, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !27
  store i8 %i.ak, ptr %.099206, align 1, !tbaa !27
  %i.al = getelementptr inbounds i8, ptr %.099206, i64 %7
  %i.am = getelementptr inbounds i8, ptr %.0207, i64 %4
  %i.an = add nuw i64 %.0109205, 1                ; 2 uses
  %exitcond238.not = icmp eq i64 %i.an, %.0154
  br i1 %exitcond238.not, label %.loopexit, label %.preheader155, !llvm.loop !102

.lr.ph211:                                        ; preds = %.lr.ph211, %.lr.ph211.preheader.new
  %.1210 = phi ptr [ %2, %.lr.ph211.preheader.new ], [ %i.bl, %.lr.ph211 ] ; 2 uses
  %.1100209 = phi ptr [ %5, %.lr.ph211.preheader.new ], [ %i.bk, %.lr.ph211 ] ; 2 uses
  %niter326 = phi i64 [ 0, %.lr.ph211.preheader.new ], [ %niter326.next.7, %.lr.ph211 ]
  %i.ao = load i64, ptr %.1210, align 8, !tbaa !28
  store i64 %i.ao, ptr %.1100209, align 8, !tbaa !28
  %i.ap = getelementptr inbounds i8, ptr %.1100209, i64 %7 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.1210, i64 %4 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !28
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !28
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %7 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %4 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !28
  store i64 %i.au, ptr %i.as, align 8, !tbaa !28
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %7 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %4 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !28
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !28
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 %7 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 %4 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !28
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !28
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %7 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %4 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !28
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !28
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 %7 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 %4 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !28
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !28
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 %7 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 %4 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !28
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !28
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 %7 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 %4 ; 2 uses
  %niter326.next.7 = add nuw i64 %niter326, 8     ; 2 uses
  %niter326.ncmp.7 = icmp eq i64 %niter326.next.7, %unroll_iter325
  br i1 %niter326.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph211, !llvm.loop !103

bb.d:                                             ; preds = %datatype_check.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !23
  %i.bo = and i32 %i.bn, 262144
  %.not120 = icmp eq i32 %i.bo, 0
  %i.bp = and i32 %i.k, 8
  %.not121 = icmp eq i32 %i.bp, 0                 ; 2 uses
  %i.bq = and i32 %i.j, 16384
  %.not122 = icmp eq i32 %i.bq, 0                 ; 4 uses
  %.not219 = icmp eq i64 %.0154, 0                ; 8 uses
  br i1 %.not120, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not122, label %.preheader170, label %.preheader172

.preheader172:                                    ; preds = %bb.f
  br i1 %.not219, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader172
  %xtraiter = and i64 %.0154, 1
  %i.br = icmp eq i64 %.0154, 1
  br i1 %i.br, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.0154, -2
  br label %.lr.ph

.preheader170:                                    ; preds = %bb.f
  br i1 %.not219, label %.loopexit, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %.preheader170
  %xtraiter287 = and i64 %.0154, 1
  %i.bs = icmp eq i64 %.0154, 1
  br i1 %i.bs, label %.lr.ph180.epil.preheader, label %.lr.ph180.preheader.new

.lr.ph180.preheader.new:                          ; preds = %.lr.ph180.preheader
  %unroll_iter290 = and i64 %.0154, -2
  br label %.lr.ph180

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.2176 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.ce, %.lr.ph ] ; 2 uses
  %.2101175 = phi ptr [ %5, %.lr.ph.preheader.new ], [ %i.cd, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bt = load i64, ptr %.2176, align 8, !tbaa !28 ; 4 uses
  %.sroa.0252.0.extract.trunc = trunc i64 %i.bt to i8
  %.sroa.4253.0.extract.shift256 = lshr i64 %i.bt, 8
  %.sroa.4253.0.extract.trunc = trunc i64 %.sroa.4253.0.extract.shift256 to i8
  %.sroa.5254.0.extract.shift257 = lshr i64 %i.bt, 16
  %.sroa.5254.0.extract.trunc = trunc i64 %.sroa.5254.0.extract.shift257 to i8
  %.sroa.6255.0.extract.shift258 = lshr i64 %i.bt, 24
  %.sroa.6255.0.extract.trunc = trunc i64 %.sroa.6255.0.extract.shift258 to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.2101175, i64 3
  store i8 %.sroa.0252.0.extract.trunc, ptr %i.bu, align 1, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %.2101175, i64 2
  store i8 %.sroa.4253.0.extract.trunc, ptr %i.bv, align 1, !tbaa !27
  %i.bw = getelementptr inbounds nuw i8, ptr %.2101175, i64 1
  store i8 %.sroa.5254.0.extract.trunc, ptr %i.bw, align 1, !tbaa !27
  store i8 %.sroa.6255.0.extract.trunc, ptr %.2101175, align 1, !tbaa !27
  %i.bx = getelementptr inbounds i8, ptr %.2101175, i64 %7 ; 5 uses
  %i.by = getelementptr inbounds i8, ptr %.2176, i64 %4 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !28 ; 4 uses
  %.sroa.0252.0.extract.trunc.1 = trunc i64 %i.bz to i8
  %.sroa.4253.0.extract.shift256.1 = lshr i64 %i.bz, 8
  %.sroa.4253.0.extract.trunc.1 = trunc i64 %.sroa.4253.0.extract.shift256.1 to i8
end_hunk_1
