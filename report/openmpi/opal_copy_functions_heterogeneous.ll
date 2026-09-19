Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/opal_copy_functions_heterogeneous?download=true
inline.NumInlined: 51
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 97
begin_hunk_0_@copy_float16_heterogeneous:datatype_check.exit
  %i.lk = phi i64 [ %i.ko, %ldbl_to_f128.exit ], [ %i.kq, %alignment_of_long_double.exit.split.us.i96 ], [ %i.kq, %alignment_of_long_double.exit.split.i92 ]
  %.2 = phi ptr [ %.1, %ldbl_to_f128.exit ], [ %.066, %alignment_of_long_double.exit.split.us.i96 ], [ %.066, %alignment_of_long_double.exit.split.i92 ]
  %i.ll = load i32, ptr @opal_local_arch, align 4, !tbaa !24
  %i.lm = xor i32 %i.ll, %.060
  %i.ln = and i32 %i.lm, 8
  %.not69 = icmp eq i32 %i.ln, 0
  br i1 %.not69, label %opal_dt_swap_bytes.exit, label %bb.c

bb.c:                                             ; preds = %f128_to_ldbl.exit
  %i.lo = icmp eq ptr %.2, %.065
  br i1 %i.lo, label %.preheader120.preheader, label %bb.d

.preheader120.preheader:                          ; preds = %bb.c
  %i.lp = load i8, ptr %.065, align 1, !tbaa !27
  %i.lq = getelementptr inbounds nuw i8, ptr %.066, i64 15
  store i8 %i.lp, ptr %i.lq, align 1, !tbaa !27
  %i.lr = getelementptr inbounds nuw i8, ptr %.065, i64 1
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !27
  %i.lt = getelementptr inbounds nuw i8, ptr %.066, i64 14
  store i8 %i.ls, ptr %i.lt, align 1, !tbaa !27
  %i.lu = getelementptr inbounds nuw i8, ptr %.065, i64 2
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !27
  %i.lw = getelementptr inbounds nuw i8, ptr %.066, i64 13
  store i8 %i.lv, ptr %i.lw, align 1, !tbaa !27
  %i.lx = getelementptr inbounds nuw i8, ptr %.065, i64 3
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !27
  %i.lz = getelementptr inbounds nuw i8, ptr %.066, i64 12
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !27
  %i.ma = getelementptr inbounds nuw i8, ptr %.065, i64 4
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !27
  %i.mc = getelementptr inbounds nuw i8, ptr %.066, i64 11
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !27
  %i.md = getelementptr inbounds nuw i8, ptr %.065, i64 5
  %i.me = load i8, ptr %i.md, align 1, !tbaa !27
  %i.mf = getelementptr inbounds nuw i8, ptr %.066, i64 10
  store i8 %i.me, ptr %i.mf, align 1, !tbaa !27
  %i.mg = getelementptr inbounds nuw i8, ptr %.065, i64 6
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !27
  %i.mi = getelementptr inbounds nuw i8, ptr %.066, i64 9
  store i8 %i.mh, ptr %i.mi, align 1, !tbaa !27
  %i.mj = getelementptr inbounds nuw i8, ptr %.065, i64 7
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !27
  %i.ml = getelementptr inbounds nuw i8, ptr %.066, i64 8
  store i8 %i.mk, ptr %i.ml, align 1, !tbaa !27
  %i.mm = getelementptr inbounds nuw i8, ptr %.065, i64 8
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !27
  %i.mo = getelementptr inbounds nuw i8, ptr %.066, i64 7
  store i8 %i.mn, ptr %i.mo, align 1, !tbaa !27
  %i.mp = getelementptr inbounds nuw i8, ptr %.065, i64 9
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !27
  %i.mr = getelementptr inbounds nuw i8, ptr %.066, i64 6
  store i8 %i.mq, ptr %i.mr, align 1, !tbaa !27
  %i.ms = getelementptr inbounds nuw i8, ptr %.065, i64 10
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !27
  %i.mu = getelementptr inbounds nuw i8, ptr %.066, i64 5
  store i8 %i.mt, ptr %i.mu, align 1, !tbaa !27
  %i.mv = getelementptr inbounds nuw i8, ptr %.065, i64 11
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !27
  %i.mx = getelementptr inbounds nuw i8, ptr %.066, i64 4
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !27
  %i.my = getelementptr inbounds nuw i8, ptr %.065, i64 12
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !27
  %i.na = getelementptr inbounds nuw i8, ptr %.066, i64 3
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !27
  %i.nb = getelementptr inbounds nuw i8, ptr %.065, i64 13
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !27
  %i.nd = getelementptr inbounds nuw i8, ptr %.066, i64 2
  store i8 %i.nc, ptr %i.nd, align 1, !tbaa !27
  %i.ne = getelementptr inbounds nuw i8, ptr %.065, i64 14
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !27
  %i.ng = getelementptr inbounds nuw i8, ptr %.066, i64 1
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !27
  %i.nh = getelementptr inbounds nuw i8, ptr %.065, i64 15
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !27
  store i8 %i.ni, ptr %.066, align 1, !tbaa !27
  br i1 %i.m, label %.lr.ph.i105, label %opal_dt_swap_bytes.exit

.lr.ph.i105:                                      ; preds = %.preheader120.preheader, %.lr.ph.i105
  %.036.i106 = phi ptr [ %i.nk, %.lr.ph.i105 ], [ %.065, %.preheader120.preheader ] ; 16 uses
  %.02535.i107 = phi ptr [ %i.nj, %.lr.ph.i105 ], [ %.066, %.preheader120.preheader ] ; 16 uses
  %.02934.i108 = phi i64 [ %i.pf, %.lr.ph.i105 ], [ %spec.select, %.preheader120.preheader ]
  %i.nj = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 16 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.036.i106, i64 16 ; 2 uses
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !27
  %i.nm = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 31
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !27
  %i.nn = getelementptr inbounds nuw i8, ptr %.036.i106, i64 17
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !27
  %i.np = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 30
  store i8 %i.no, ptr %i.np, align 1, !tbaa !27
  %i.nq = getelementptr inbounds nuw i8, ptr %.036.i106, i64 18
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !27
  %i.ns = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 29
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !27
  %i.nt = getelementptr inbounds nuw i8, ptr %.036.i106, i64 19
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !27
  %i.nv = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 28
  store i8 %i.nu, ptr %i.nv, align 1, !tbaa !27
  %i.nw = getelementptr inbounds nuw i8, ptr %.036.i106, i64 20
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !27
  %i.ny = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 27
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !27
  %i.nz = getelementptr inbounds nuw i8, ptr %.036.i106, i64 21
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !27
  %i.ob = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 26
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !27
  %i.oc = getelementptr inbounds nuw i8, ptr %.036.i106, i64 22
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !27
  %i.oe = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 25
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !27
  %i.of = getelementptr inbounds nuw i8, ptr %.036.i106, i64 23
  %i.og = load i8, ptr %i.of, align 1, !tbaa !27
  %i.oh = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 24
  store i8 %i.og, ptr %i.oh, align 1, !tbaa !27
  %i.oi = getelementptr inbounds nuw i8, ptr %.036.i106, i64 24
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !27
  %i.ok = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 23
  store i8 %i.oj, ptr %i.ok, align 1, !tbaa !27
  %i.ol = getelementptr inbounds nuw i8, ptr %.036.i106, i64 25
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !27
  %i.on = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 22
  store i8 %i.om, ptr %i.on, align 1, !tbaa !27
  %i.oo = getelementptr inbounds nuw i8, ptr %.036.i106, i64 26
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !27
  %i.oq = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 21
  store i8 %i.op, ptr %i.oq, align 1, !tbaa !27
  %i.or = getelementptr inbounds nuw i8, ptr %.036.i106, i64 27
  %i.os = load i8, ptr %i.or, align 1, !tbaa !27
  %i.ot = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 20
  store i8 %i.os, ptr %i.ot, align 1, !tbaa !27
  %i.ou = getelementptr inbounds nuw i8, ptr %.036.i106, i64 28
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !27
  %i.ow = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 19
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !27
  %i.ox = getelementptr inbounds nuw i8, ptr %.036.i106, i64 29
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !27
  %i.oz = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 18
  store i8 %i.oy, ptr %i.oz, align 1, !tbaa !27
  %i.pa = getelementptr inbounds nuw i8, ptr %.036.i106, i64 30
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !27
  %i.pc = getelementptr inbounds nuw i8, ptr %.02535.i107, i64 17
  store i8 %i.pb, ptr %i.pc, align 1, !tbaa !27
  %i.pd = getelementptr inbounds nuw i8, ptr %.036.i106, i64 31
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !27
  store i8 %i.pe, ptr %i.nj, align 1, !tbaa !27
  %i.pf = add i64 %.02934.i108, -1                ; 2 uses
  %i.pg = icmp ugt i64 %i.pf, 1
  br i1 %i.pg, label %.lr.ph.i105, label %opal_dt_swap_bytes.exit, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %i.ph = load <16 x i8>, ptr %.066, align 1, !tbaa !27
  %i.pi = shufflevector <16 x i8> %i.ph, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.pi, ptr %.066, align 1, !tbaa !27
  br i1 %i.m, label %.lr.ph.i114, label %opal_dt_swap_bytes.exit

.lr.ph.i114:                                      ; preds = %bb.d, %.lr.ph.i114
  %.046.i = phi ptr [ %i.pj, %.lr.ph.i114 ], [ %.066, %bb.d ]
  %.03545.i = phi i64 [ %i.pm, %.lr.ph.i114 ], [ %spec.select, %bb.d ]
  %i.pj = getelementptr inbounds nuw i8, ptr %.046.i, i64 16 ; 3 uses
  %i.pk = load <16 x i8>, ptr %i.pj, align 1, !tbaa !27
  %i.pl = shufflevector <16 x i8> %i.pk, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.pl, ptr %i.pj, align 1, !tbaa !27
  %i.pm = add i64 %.03545.i, -1                   ; 2 uses
  %i.pn = icmp ugt i64 %i.pm, 1
  br i1 %i.pn, label %.lr.ph.i114, label %opal_dt_swap_bytes.exit, !llvm.loop !3

opal_dt_swap_bytes.exit:                          ; preds = %.lr.ph.i114, %.lr.ph.i105, %bb.d, %.preheader120.preheader, %f128_to_ldbl.exit
  %i.po = getelementptr inbounds i8, ptr %.066, i64 %7
  %i.pp = getelementptr inbounds i8, ptr %.065, i64 %4
  %i.pq = add i64 %.163, -1                       ; 2 uses
  %.not71 = icmp eq i64 %i.pq, 0
  br i1 %.not71, label %.split.us, label %datatype_check.exit.split, !llvm.loop !64

.split.us:                                        ; preds = %opal_dt_swap_bytes.exit, %.preheader.us, %opal_dt_swap_bytes.exit.loopexit.us.us, %opal_dt_swap_bytes.exit.us.us.prol.loopexit, %opal_dt_swap_bytes.exit.us.us
  %i.pr = mul i64 %spec.select, %4
  store i64 %i.pr, ptr %8, align 8, !tbaa !28
  %i.ps = trunc i64 %spec.select to i32
  ret i32 %i.ps
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @copy_short_float_complex_heterogeneous(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 %6, i64 noundef %7, ptr nofree noundef writeonly captures(none) %8) #0 {
datatype_check.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23
  %i.c = and i32 %i.b, 65536
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.opal_local_arch = select i1 %.not, ptr %i.d, ptr @opal_local_arch
  %opal_local_arch. = select i1 %.not, ptr @opal_local_arch, ptr %i.d
  %.0 = load i32, ptr %opal_local_arch., align 4, !tbaa !24
  %.028 = load i32, ptr %.opal_local_arch, align 4, !tbaa !24
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
  %xtraiter55.a = and i64 %.029, 3                ; 2 uses
  %lcmp.mod56.not.a = icmp eq i64 %xtraiter55.a, 0
  br i1 %lcmp.mod56.not.a, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol

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
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter55.a
  br i1 %prol.iter.cmp.not, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol, !llvm.loop !65

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
  br i1 %.not35.us.3, label %.split.us, label %opal_dt_swap_bytes.exit.us, !llvm.loop !66

datatype_check.exit.split:                        ; preds = %datatype_check.exit
  %.not40 = icmp eq i64 %.030, 0
  br i1 %.not40, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %datatype_check.exit.split
  %xtraiter = and i64 %.029, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.us.prol.loopexit, label %.preheader.us.prol

.preheader.us.prol:                               ; preds = %.preheader.us.preheader
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
  %i.ap = load i8, ptr %.031.us42, align 1, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %.032.us41, i64 3
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %.031.us42, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %.032.us41, i64 2
  store i8 %i.as, ptr %i.at, align 1, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %.031.us42, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %.032.us41, i64 1
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %.031.us42, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !27
  store i8 %i.ay, ptr %.032.us41, align 1, !tbaa !27
  %i.az = getelementptr inbounds i8, ptr %.032.us41, i64 %7 ; 5 uses
  %i.ba = getelementptr inbounds i8, ptr %.031.us42, i64 %4 ; 5 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !27
  store i8 %i.bk, ptr %i.az, align 1, !tbaa !27
  %i.bl = getelementptr inbounds i8, ptr %i.az, i64 %7
  %i.bm = getelementptr inbounds i8, ptr %i.ba, i64 %4
  %i.bn = add i64 %.1.us43, -2                    ; 2 uses
  %.not35.us45.1 = icmp eq i64 %i.bn, 0
  br i1 %.not35.us45.1, label %.split.us, label %.preheader.us, !llvm.loop !66

.preheader:                                       ; preds = %datatype_check.exit.split, %opal_dt_swap_bytes.exit.loopexit
  %.032 = phi ptr [ %i.cm, %opal_dt_swap_bytes.exit.loopexit ], [ %5, %datatype_check.exit.split ] ; 6 uses
  %.031 = phi ptr [ %i.cn, %opal_dt_swap_bytes.exit.loopexit ], [ %2, %datatype_check.exit.split ] ; 6 uses
  %.1 = phi i64 [ %i.co, %opal_dt_swap_bytes.exit.loopexit ], [ %.029, %datatype_check.exit.split ]
  %i.bo = load i8, ptr %.031, align 1, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %.032, i64 3
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !27
  %i.bq = getelementptr inbounds nuw i8, ptr %.031, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !27
  %i.bs = getelementptr inbounds nuw i8, ptr %.032, i64 2
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %.031, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %.032, i64 1
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !27
  %i.bw = getelementptr inbounds nuw i8, ptr %.031, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !27
  store i8 %i.bx, ptr %.032, align 1, !tbaa !27
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader, %.lr.ph.i
  %.036.i = phi ptr [ %i.bz, %.lr.ph.i ], [ %.031, %.preheader ] ; 4 uses
  %.02535.i = phi ptr [ %i.by, %.lr.ph.i ], [ %.032, %.preheader ] ; 4 uses
  %.02934.i = phi i64 [ %i.ck, %.lr.ph.i ], [ %.030, %.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %.02535.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.036.i, i64 4 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !27
  %i.cb = getelementptr inbounds nuw i8, ptr %.02535.i, i64 7
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %.036.i, i64 5
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %.02535.i, i64 6
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %.036.i, i64 6
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !27
  %i.ch = getelementptr inbounds nuw i8, ptr %.02535.i, i64 5
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %.036.i, i64 7
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !27
  store i8 %i.cj, ptr %i.by, align 1, !tbaa !27
  %i.ck = add i64 %.02934.i, -1                   ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, 1
  br i1 %i.cl, label %.lr.ph.i, label %opal_dt_swap_bytes.exit.loopexit, !llvm.loop !0

opal_dt_swap_bytes.exit.loopexit:                 ; preds = %.lr.ph.i
  %i.cm = getelementptr inbounds i8, ptr %.032, i64 %7
  %i.cn = getelementptr inbounds i8, ptr %.031, i64 %4
  %i.co = add i64 %.1, -1                         ; 2 uses
  %.not35 = icmp eq i64 %i.co, 0
  br i1 %.not35, label %.split.us, label %.preheader, !llvm.loop !66

.split.us:                                        ; preds = %opal_dt_swap_bytes.exit.loopexit, %.preheader.us.prol.loopexit, %.preheader.us, %opal_dt_swap_bytes.exit.us.prol.loopexit, %opal_dt_swap_bytes.exit.us
  %i.cp = mul i64 %spec.select, %4
  store i64 %i.cp, ptr %8, align 8, !tbaa !28
  %i.cq = trunc i64 %spec.select to i32
  ret i32 %i.cq
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @copy_float_complex_heterogeneous(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 %6, i64 noundef %7, ptr nofree noundef writeonly captures(none) %8) #0 {
datatype_check.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23
  %i.c = and i32 %i.b, 65536
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.opal_local_arch = select i1 %.not, ptr %i.d, ptr @opal_local_arch
  %opal_local_arch. = select i1 %.not, ptr @opal_local_arch, ptr %i.d
  %.0 = load i32, ptr %opal_local_arch., align 4, !tbaa !24
  %.028 = load i32, ptr %.opal_local_arch, align 4, !tbaa !24
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
  %xtraiter55.a = and i64 %.029, 3                ; 2 uses
  %lcmp.mod56.not.a = icmp eq i64 %xtraiter55.a, 0
  br i1 %lcmp.mod56.not.a, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol

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
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter55.a
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
  br i1 %.not40, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %datatype_check.exit.split
  %xtraiter = and i64 %.029, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.us.prol.loopexit, label %.preheader.us.prol

.preheader.us.prol:                               ; preds = %.preheader.us.preheader
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
  %i.ap = load i8, ptr %.031.us42, align 1, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %.032.us41, i64 3
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %.031.us42, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %.032.us41, i64 2
  store i8 %i.as, ptr %i.at, align 1, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %.031.us42, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %.032.us41, i64 1
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %.031.us42, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !27
  store i8 %i.ay, ptr %.032.us41, align 1, !tbaa !27
  %i.az = getelementptr inbounds i8, ptr %.032.us41, i64 %7 ; 5 uses
  %i.ba = getelementptr inbounds i8, ptr %.031.us42, i64 %4 ; 5 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !27
  store i8 %i.bk, ptr %i.az, align 1, !tbaa !27
  %i.bl = getelementptr inbounds i8, ptr %i.az, i64 %7
  %i.bm = getelementptr inbounds i8, ptr %i.ba, i64 %4
  %i.bn = add i64 %.1.us43, -2                    ; 2 uses
  %.not35.us45.1 = icmp eq i64 %i.bn, 0
  br i1 %.not35.us45.1, label %.split.us, label %.preheader.us, !llvm.loop !68

.preheader:                                       ; preds = %datatype_check.exit.split, %opal_dt_swap_bytes.exit.loopexit
  %.032 = phi ptr [ %i.cm, %opal_dt_swap_bytes.exit.loopexit ], [ %5, %datatype_check.exit.split ] ; 6 uses
  %.031 = phi ptr [ %i.cn, %opal_dt_swap_bytes.exit.loopexit ], [ %2, %datatype_check.exit.split ] ; 6 uses
  %.1 = phi i64 [ %i.co, %opal_dt_swap_bytes.exit.loopexit ], [ %.029, %datatype_check.exit.split ]
  %i.bo = load i8, ptr %.031, align 1, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %.032, i64 3
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !27
  %i.bq = getelementptr inbounds nuw i8, ptr %.031, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !27
  %i.bs = getelementptr inbounds nuw i8, ptr %.032, i64 2
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %.031, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %.032, i64 1
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !27
  %i.bw = getelementptr inbounds nuw i8, ptr %.031, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !27
  store i8 %i.bx, ptr %.032, align 1, !tbaa !27
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader, %.lr.ph.i
  %.036.i = phi ptr [ %i.bz, %.lr.ph.i ], [ %.031, %.preheader ] ; 4 uses
  %.02535.i = phi ptr [ %i.by, %.lr.ph.i ], [ %.032, %.preheader ] ; 4 uses
  %.02934.i = phi i64 [ %i.ck, %.lr.ph.i ], [ %.030, %.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %.02535.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.036.i, i64 4 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !27
  %i.cb = getelementptr inbounds nuw i8, ptr %.02535.i, i64 7
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %.036.i, i64 5
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %.02535.i, i64 6
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %.036.i, i64 6
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !27
  %i.ch = getelementptr inbounds nuw i8, ptr %.02535.i, i64 5
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %.036.i, i64 7
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !27
  store i8 %i.cj, ptr %i.by, align 1, !tbaa !27
  %i.ck = add i64 %.02934.i, -1                   ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, 1
  br i1 %i.cl, label %.lr.ph.i, label %opal_dt_swap_bytes.exit.loopexit, !llvm.loop !0

opal_dt_swap_bytes.exit.loopexit:                 ; preds = %.lr.ph.i
  %i.cm = getelementptr inbounds i8, ptr %.032, i64 %7
  %i.cn = getelementptr inbounds i8, ptr %.031, i64 %4
  %i.co = add i64 %.1, -1                         ; 2 uses
  %.not35 = icmp eq i64 %i.co, 0
  br i1 %.not35, label %.split.us, label %.preheader, !llvm.loop !68

.split.us:                                        ; preds = %opal_dt_swap_bytes.exit.loopexit, %.preheader.us.prol.loopexit, %.preheader.us, %opal_dt_swap_bytes.exit.us.prol.loopexit, %opal_dt_swap_bytes.exit.us
  %i.cp = mul i64 %spec.select, %4
  store i64 %i.cp, ptr %8, align 8, !tbaa !28
  %i.cq = trunc i64 %spec.select to i32
  ret i32 %i.cq
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @copy_double_complex_heterogeneous(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 %6, i64 noundef %7, ptr nofree noundef writeonly captures(none) %8) #0 {
datatype_check.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23
  %i.c = and i32 %i.b, 65536
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.opal_local_arch = select i1 %.not, ptr %i.d, ptr @opal_local_arch
  %opal_local_arch. = select i1 %.not, ptr @opal_local_arch, ptr %i.d
  %.0 = load i32, ptr %opal_local_arch., align 4, !tbaa !24
  %.028 = load i32, ptr %.opal_local_arch, align 4, !tbaa !24
  %i.e = shl i64 %1, 3
  %i.f = icmp ugt i64 %i.e, %3
  %i.g = lshr i64 %3, 3
  %spec.select = select i1 %i.f, i64 %i.g, i64 %1 ; 4 uses
  %i.h = icmp eq i64 %7, 16
  %i.i = icmp eq i64 %4, 16
  %or.cond = and i1 %i.i, %i.h                    ; 2 uses
  %i.j = shl i64 %spec.select, 1
  %.030 = select i1 %or.cond, i64 %i.j, i64 2     ; 3 uses
  %.029 = select i1 %or.cond, i64 1, i64 %spec.select ; 6 uses
  %i.k = xor i32 %.028, %.0
  %i.l = and i32 %i.k, 8
  %.not34 = icmp eq i32 %i.l, 0
  %i.m = shl i64 %.030, 3                         ; 5 uses
  br i1 %.not34, label %opal_dt_swap_bytes.exit.us.preheader, label %datatype_check.exit.split

opal_dt_swap_bytes.exit.us.preheader:             ; preds = %datatype_check.exit
  %i.n = add i64 %.029, -1
  %xtraiter = and i64 %.029, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol

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
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol, !llvm.loop !69

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
  br i1 %.not35.us.3, label %.split.us, label %opal_dt_swap_bytes.exit.us, !llvm.loop !70

datatype_check.exit.split:                        ; preds = %datatype_check.exit
  %.not40 = icmp eq i64 %.030, 0
  br i1 %.not40, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %datatype_check.exit.split, %.preheader.us
  %.032.us41 = phi ptr [ %i.ax, %.preheader.us ], [ %5, %datatype_check.exit.split ] ; 9 uses
  %.031.us42 = phi ptr [ %i.ay, %.preheader.us ], [ %2, %datatype_check.exit.split ] ; 9 uses
  %.1.us43 = phi i64 [ %i.az, %.preheader.us ], [ %.029, %datatype_check.exit.split ]
  %i.ab = load i8, ptr %.031.us42, align 1, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %.032.us41, i64 7
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %.031.us42, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %.032.us41, i64 6
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %.031.us42, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %.032.us41, i64 5
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %.031.us42, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %.032.us41, i64 4
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %.031.us42, i64 4
  %i.an = load i8, ptr %i.am, align 1, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %.032.us41, i64 3
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %.031.us42, i64 5
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %.032.us41, i64 2
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %.031.us42, i64 6
  %i.at = load i8, ptr %i.as, align 1, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %.032.us41, i64 1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %.031.us42, i64 7
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !27
  store i8 %i.aw, ptr %.032.us41, align 1, !tbaa !27
  %i.ax = getelementptr inbounds i8, ptr %.032.us41, i64 %7
  %i.ay = getelementptr inbounds i8, ptr %.031.us42, i64 %4
  %i.az = add i64 %.1.us43, -1                    ; 2 uses
  %.not35.us45 = icmp eq i64 %i.az, 0
  br i1 %.not35.us45, label %.split.us, label %.preheader.us, !llvm.loop !70

.preheader:                                       ; preds = %datatype_check.exit.split, %opal_dt_swap_bytes.exit.loopexit
  %.032 = phi ptr [ %i.cw, %opal_dt_swap_bytes.exit.loopexit ], [ %5, %datatype_check.exit.split ] ; 10 uses
  %.031 = phi ptr [ %i.cx, %opal_dt_swap_bytes.exit.loopexit ], [ %2, %datatype_check.exit.split ] ; 10 uses
  %.1 = phi i64 [ %i.cy, %opal_dt_swap_bytes.exit.loopexit ], [ %.029, %datatype_check.exit.split ]
  %i.ba = load i8, ptr %.031, align 1, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %.032, i64 7
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %.031, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !27
  %i.be = getelementptr inbounds nuw i8, ptr %.032, i64 6
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %.031, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %.032, i64 5
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %.031, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %.032, i64 4
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %.031, i64 4
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %.032, i64 3
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !27
  %i.bo = getelementptr inbounds nuw i8, ptr %.031, i64 5
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !27
  %i.bq = getelementptr inbounds nuw i8, ptr %.032, i64 2
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %.031, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %.032, i64 1
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %.031, i64 7
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !27
  store i8 %i.bv, ptr %.032, align 1, !tbaa !27
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader, %.lr.ph.i
  %.036.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %.031, %.preheader ] ; 8 uses
  %.02535.i = phi ptr [ %i.bw, %.lr.ph.i ], [ %.032, %.preheader ] ; 8 uses
  %.02934.i = phi i64 [ %i.cu, %.lr.ph.i ], [ %.030, %.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.02535.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.036.i, i64 8 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %.02535.i, i64 15
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !27
  %i.ca = getelementptr inbounds nuw i8, ptr %.036.i, i64 9
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %.02535.i, i64 14
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !27
  %i.cd = getelementptr inbounds nuw i8, ptr %.036.i, i64 10
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %.02535.i, i64 13
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %.036.i, i64 11
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %.02535.i, i64 12
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %.036.i, i64 12
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !27
  %i.cl = getelementptr inbounds nuw i8, ptr %.02535.i, i64 11
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !27
  %i.cm = getelementptr inbounds nuw i8, ptr %.036.i, i64 13
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !27
  %i.co = getelementptr inbounds nuw i8, ptr %.02535.i, i64 10
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !27
  %i.cp = getelementptr inbounds nuw i8, ptr %.036.i, i64 14
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !27
  %i.cr = getelementptr inbounds nuw i8, ptr %.02535.i, i64 9
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !27
end_hunk_0
