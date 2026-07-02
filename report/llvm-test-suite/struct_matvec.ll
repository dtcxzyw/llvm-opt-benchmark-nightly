inline.NumInlined: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@hypre_StructMatvecCompute:bb.a
  %i.lw = add nuw nsw i32 %.527653326.us.us, 1    ; 2 uses
  %exitcond3830.not = icmp eq i32 %i.lw, %i.ke
  br i1 %exitcond3830.not, label %.loopexit3316, label %.preheader3309.us.us, !llvm.loop !69

.loopexit3316:                                    ; preds = %._crit_edge3323.split.us.us.us, %.preheader3313.lr.ph, %bb.s
  %indvars.iv.next3832 = add nuw nsw i64 %indvars.iv3831, 1 ; 2 uses
  %i.lx = load i32, ptr %i.ev, align 8, !tbaa !37
  %i.ly = sext i32 %i.lx to i64
  %i.lz = icmp slt i64 %indvars.iv.next3832, %i.ly
  br i1 %i.lz, label %.lr.ph.split, label %.loopexit3317, !llvm.loop !59

bb.t:                                             ; preds = %bb.i
  %i.ma = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.mb = call i32 @hypre_FinalizeIndtComputations(ptr noundef %i.ma) #4 ; 0 uses
  %i.mc = load ptr, ptr %i.eg, align 8, !tbaa !72
  br label %.loopexit3317

.loopexit3317:                                    ; preds = %.loopexit3316, %.loopexit3315.us, %bb.k, %bb.j, %bb.t
  %.12617 = phi ptr [ %i.mc, %bb.t ], [ %i.er, %bb.j ], [ %i.er, %bb.k ], [ %i.er, %.loopexit3315.us ], [ %i.er, %.loopexit3316 ] ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.12617, i64 8 ; 2 uses
  %i.me = load i32, ptr %i.md, align 8, !tbaa !73 ; 2 uses
  %i.mf = icmp sgt i32 %i.me, 0
  br i1 %i.mf, label %.lr.ph3676, label %._crit_edge3677

.lr.ph3676:                                       ; preds = %.loopexit3317, %._crit_edge3673
  %i.mg = phi i32 [ %i.cim, %._crit_edge3673 ], [ %i.me, %.loopexit3317 ]
  %indvars.iv3953 = phi i64 [ %indvars.iv.next3954, %._crit_edge3673 ], [ 0, %.loopexit3317 ] ; 14 uses
  %i.mh = load ptr, ptr %.12617, align 8, !tbaa !76
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv3953
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !77 ; 2 uses
  %i.mk = load ptr, ptr %i.eh, align 8, !tbaa !78
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !39
  %i.mm = getelementptr inbounds nuw [24 x i8], ptr %i.ml, i64 %indvars.iv3953 ; 11 uses
  %i.mn = load ptr, ptr %i.ei, align 8, !tbaa !23
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !39
  %i.mp = getelementptr inbounds nuw [24 x i8], ptr %i.mo, i64 %indvars.iv3953 ; 11 uses
  %i.mq = load ptr, ptr %i.dy, align 8, !tbaa !23
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !39
  %i.ms = getelementptr inbounds nuw [24 x i8], ptr %i.mr, i64 %indvars.iv3953 ; 12 uses
  %i.mt = load ptr, ptr %i.dt, align 8, !tbaa !40 ; 57 uses
  %i.mu = load ptr, ptr %i.ej, align 8, !tbaa !41
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv3953
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !4
  %i.mx = sext i32 %i.mw to i64                   ; 8 uses
  %i.my = getelementptr inbounds [8 x i8], ptr %i.mt, i64 %i.mx ; 28 uses
  %i.mz = load ptr, ptr %i.dz, align 8, !tbaa !40 ; 15 uses
  %i.na = load ptr, ptr %i.ea, align 8, !tbaa !41
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv3953
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !4
  %i.nd = sext i32 %i.nc to i64                   ; 8 uses
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.mz, i64 %i.nd ; 22 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mj, i64 8 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !37
  %i.nh = icmp sgt i32 %i.ng, 0
  br i1 %i.nh, label %.lr.ph3672, label %._crit_edge3673

.lr.ph3672:                                       ; preds = %.lr.ph3676
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mp, i64 12 ; 7 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mp, i64 16 ; 7 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mp, i64 4 ; 7 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mm, i64 4 ; 7 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mm, i64 12 ; 7 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16 ; 7 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 7 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 7 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ms, i64 4 ; 8 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ms, i64 12 ; 8 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 8 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 8 uses
  %i.nu = shl nsw i64 %i.nd, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.mz, i64 %i.nu
  %scevgep4218 = getelementptr i8, ptr %i.mz, i64 8
  %scevgep4219 = getelementptr i8, ptr %scevgep4218, i64 %i.nu
  %i.nv = shl nsw i64 %i.mx, 3                    ; 14 uses
  %scevgep4264 = getelementptr i8, ptr %i.mt, i64 %i.nv
  %scevgep4267 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4268 = getelementptr i8, ptr %scevgep4267, i64 %i.nv
  %scevgep4272 = getelementptr i8, ptr %i.mt, i64 %i.nv
  %scevgep4275 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4276 = getelementptr i8, ptr %scevgep4275, i64 %i.nv
  %scevgep4280 = getelementptr i8, ptr %i.mt, i64 %i.nv
  %scevgep4283 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4284 = getelementptr i8, ptr %scevgep4283, i64 %i.nv
  %scevgep4288 = getelementptr i8, ptr %i.mt, i64 %i.nv
  %scevgep4291 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4292 = getelementptr i8, ptr %scevgep4291, i64 %i.nv
  %scevgep4296 = getelementptr i8, ptr %i.mt, i64 %i.nv
  %scevgep4299 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4300 = getelementptr i8, ptr %scevgep4299, i64 %i.nv
  %scevgep4304 = getelementptr i8, ptr %i.mt, i64 %i.nv
  %scevgep4307 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4308 = getelementptr i8, ptr %scevgep4307, i64 %i.nv
  %scevgep4312 = getelementptr i8, ptr %i.mt, i64 %i.nv
  %scevgep4315 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4316 = getelementptr i8, ptr %scevgep4315, i64 %i.nv
  %i.nw = shl nsw i64 %i.nd, 3                    ; 2 uses
  %scevgep4403 = getelementptr i8, ptr %i.mz, i64 %i.nw
  %scevgep4405 = getelementptr i8, ptr %i.mz, i64 8
  %scevgep4406 = getelementptr i8, ptr %scevgep4405, i64 %i.nw
  %i.nx = shl nsw i64 %i.mx, 3                    ; 12 uses
  %scevgep4445 = getelementptr i8, ptr %i.mt, i64 %i.nx
  %scevgep4448 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4449 = getelementptr i8, ptr %scevgep4448, i64 %i.nx
  %scevgep4453 = getelementptr i8, ptr %i.mt, i64 %i.nx
  %scevgep4456 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4457 = getelementptr i8, ptr %scevgep4456, i64 %i.nx
  %scevgep4461 = getelementptr i8, ptr %i.mt, i64 %i.nx
  %scevgep4464 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4465 = getelementptr i8, ptr %scevgep4464, i64 %i.nx
  %scevgep4469 = getelementptr i8, ptr %i.mt, i64 %i.nx
  %scevgep4472 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4473 = getelementptr i8, ptr %scevgep4472, i64 %i.nx
  %scevgep4477 = getelementptr i8, ptr %i.mt, i64 %i.nx
  %scevgep4480 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4481 = getelementptr i8, ptr %scevgep4480, i64 %i.nx
  %scevgep4485 = getelementptr i8, ptr %i.mt, i64 %i.nx
  %scevgep4488 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4489 = getelementptr i8, ptr %scevgep4488, i64 %i.nx
  %i.ny = shl nsw i64 %i.nd, 3                    ; 2 uses
  %scevgep4570 = getelementptr i8, ptr %i.mz, i64 %i.ny
  %scevgep4572 = getelementptr i8, ptr %i.mz, i64 8
  %scevgep4573 = getelementptr i8, ptr %scevgep4572, i64 %i.ny
  %i.nz = shl nsw i64 %i.mx, 3                    ; 10 uses
  %scevgep4606 = getelementptr i8, ptr %i.mt, i64 %i.nz
  %scevgep4609 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4610 = getelementptr i8, ptr %scevgep4609, i64 %i.nz
  %scevgep4614 = getelementptr i8, ptr %i.mt, i64 %i.nz
  %scevgep4617 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4618 = getelementptr i8, ptr %scevgep4617, i64 %i.nz
  %scevgep4622 = getelementptr i8, ptr %i.mt, i64 %i.nz
  %scevgep4625 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4626 = getelementptr i8, ptr %scevgep4625, i64 %i.nz
  %scevgep4630 = getelementptr i8, ptr %i.mt, i64 %i.nz
  %scevgep4633 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4634 = getelementptr i8, ptr %scevgep4633, i64 %i.nz
  %scevgep4638 = getelementptr i8, ptr %i.mt, i64 %i.nz
  %scevgep4641 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4642 = getelementptr i8, ptr %scevgep4641, i64 %i.nz
  %i.oa = shl nsw i64 %i.nd, 3                    ; 2 uses
  %scevgep4713 = getelementptr i8, ptr %i.mz, i64 %i.oa
  %scevgep4715 = getelementptr i8, ptr %i.mz, i64 8
  %scevgep4716 = getelementptr i8, ptr %scevgep4715, i64 %i.oa
  %i.ob = shl nsw i64 %i.mx, 3                    ; 8 uses
  %scevgep4743 = getelementptr i8, ptr %i.mt, i64 %i.ob
  %scevgep4746 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4747 = getelementptr i8, ptr %scevgep4746, i64 %i.ob
  %scevgep4751 = getelementptr i8, ptr %i.mt, i64 %i.ob
  %scevgep4754 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4755 = getelementptr i8, ptr %scevgep4754, i64 %i.ob
  %scevgep4759 = getelementptr i8, ptr %i.mt, i64 %i.ob
  %scevgep4762 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4763 = getelementptr i8, ptr %scevgep4762, i64 %i.ob
  %scevgep4767 = getelementptr i8, ptr %i.mt, i64 %i.ob
  %scevgep4770 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4771 = getelementptr i8, ptr %scevgep4770, i64 %i.ob
  %i.oc = shl nsw i64 %i.nd, 3                    ; 2 uses
  %scevgep4832 = getelementptr i8, ptr %i.mz, i64 %i.oc
  %scevgep4834 = getelementptr i8, ptr %i.mz, i64 8
  %scevgep4835 = getelementptr i8, ptr %scevgep4834, i64 %i.oc
  %i.od = shl nsw i64 %i.mx, 3                    ; 6 uses
  %scevgep4856 = getelementptr i8, ptr %i.mt, i64 %i.od
  %scevgep4859 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4860 = getelementptr i8, ptr %scevgep4859, i64 %i.od
  %scevgep4864 = getelementptr i8, ptr %i.mt, i64 %i.od
  %scevgep4867 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4868 = getelementptr i8, ptr %scevgep4867, i64 %i.od
  %scevgep4872 = getelementptr i8, ptr %i.mt, i64 %i.od
  %scevgep4875 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4876 = getelementptr i8, ptr %scevgep4875, i64 %i.od
  %i.oe = shl nsw i64 %i.nd, 3                    ; 2 uses
  %scevgep4927 = getelementptr i8, ptr %i.mz, i64 %i.oe
  %scevgep4929 = getelementptr i8, ptr %i.mz, i64 8
  %scevgep4930 = getelementptr i8, ptr %scevgep4929, i64 %i.oe
  %i.of = shl nsw i64 %i.mx, 3                    ; 4 uses
  %scevgep4945 = getelementptr i8, ptr %i.mt, i64 %i.of
  %scevgep4948 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4949 = getelementptr i8, ptr %scevgep4948, i64 %i.of
  %scevgep4953 = getelementptr i8, ptr %i.mt, i64 %i.of
  %scevgep4956 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep4957 = getelementptr i8, ptr %scevgep4956, i64 %i.of
  %i.og = shl nsw i64 %i.nd, 3                    ; 2 uses
  %scevgep4998 = getelementptr i8, ptr %i.mz, i64 %i.og
  %scevgep5000 = getelementptr i8, ptr %i.mz, i64 8
  %scevgep5001 = getelementptr i8, ptr %scevgep5000, i64 %i.og
  %i.oh = shl nsw i64 %i.mx, 3                    ; 2 uses
  %scevgep5010 = getelementptr i8, ptr %i.mt, i64 %i.oh
  %scevgep5013 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep5014 = getelementptr i8, ptr %scevgep5013, i64 %i.oh
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph3672, %.loopexit3310
  %indvars.iv3950 = phi i64 [ 0, %.lr.ph3672 ], [ %indvars.iv.next3951, %.loopexit3310 ] ; 2 uses
  %i.oi = load ptr, ptr %i.mj, align 8, !tbaa !39
  %i.oj = getelementptr inbounds nuw [24 x i8], ptr %i.oi, i64 %indvars.iv3950 ; 13 uses
  %i.ok = call i32 @hypre_BoxGetSize(ptr noundef %i.oj, ptr noundef nonnull %i.b) #4 ; 0 uses
  br i1 %i.ek, label %.lr.ph3632, label %._crit_edge

.lr.ph3632:                                       ; preds = %bb.u
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 4 ; 7 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 21 uses
  %i.on = load i32, ptr %i.b, align 4             ; 42 uses
  %i.oo = load i32, ptr %i.ee, align 4            ; 14 uses
  %i.op = load i32, ptr %i.ef, align 4            ; 5 uses
  %.02661 = call i32 @llvm.smax.i32(i32 %i.oo, i32 %i.on)
  %.12662 = call i32 @llvm.smax.i32(i32 %i.op, i32 %.02661)
  %i.oq = icmp sgt i32 %.12662, 0                 ; 3 uses
  %i.or = icmp slt i32 %i.op, 1                   ; 3 uses
  %i.os = icmp slt i32 %i.oo, 1                   ; 3 uses
  %i.ot = icmp slt i32 %i.on, 1                   ; 7 uses
  %brmerge3731 = select i1 %i.or, i1 true, i1 %i.os
  %brmerge3728 = select i1 %i.or, i1 true, i1 %i.os
  %brmerge3725 = select i1 %i.or, i1 true, i1 %i.os
  %i.ou = add i32 %i.on, -1
  %i.ov = zext i32 %i.ou to i64
  %i.ow = shl nuw nsw i64 %i.ov, 3                ; 15 uses
  %scevgep4220 = getelementptr i8, ptr %scevgep4219, i64 %i.ow
  %scevgep4269 = getelementptr i8, ptr %scevgep4268, i64 %i.ow
  %scevgep4277 = getelementptr i8, ptr %scevgep4276, i64 %i.ow
  %scevgep4285 = getelementptr i8, ptr %scevgep4284, i64 %i.ow
  %scevgep4293 = getelementptr i8, ptr %scevgep4292, i64 %i.ow
  %scevgep4301 = getelementptr i8, ptr %scevgep4300, i64 %i.ow
  %scevgep4309 = getelementptr i8, ptr %scevgep4308, i64 %i.ow
  %scevgep4317 = getelementptr i8, ptr %scevgep4316, i64 %i.ow
  %i.ox = add i32 %i.on, -1
  %i.oy = zext i32 %i.ox to i64
  %i.oz = shl nuw nsw i64 %i.oy, 3                ; 13 uses
  %scevgep4407 = getelementptr i8, ptr %scevgep4406, i64 %i.oz
  %scevgep4450 = getelementptr i8, ptr %scevgep4449, i64 %i.oz
  %scevgep4458 = getelementptr i8, ptr %scevgep4457, i64 %i.oz
  %scevgep4466 = getelementptr i8, ptr %scevgep4465, i64 %i.oz
  %scevgep4474 = getelementptr i8, ptr %scevgep4473, i64 %i.oz
  %scevgep4482 = getelementptr i8, ptr %scevgep4481, i64 %i.oz
  %scevgep4490 = getelementptr i8, ptr %scevgep4489, i64 %i.oz
  %i.pa = add i32 %i.on, -1
  %i.pb = zext i32 %i.pa to i64
  %i.pc = shl nuw nsw i64 %i.pb, 3                ; 11 uses
  %scevgep4574 = getelementptr i8, ptr %scevgep4573, i64 %i.pc
  %scevgep4611 = getelementptr i8, ptr %scevgep4610, i64 %i.pc
  %scevgep4619 = getelementptr i8, ptr %scevgep4618, i64 %i.pc
  %scevgep4627 = getelementptr i8, ptr %scevgep4626, i64 %i.pc
  %scevgep4635 = getelementptr i8, ptr %scevgep4634, i64 %i.pc
  %scevgep4643 = getelementptr i8, ptr %scevgep4642, i64 %i.pc
  %i.pd = add i32 %i.on, -1
  %i.pe = zext i32 %i.pd to i64
  %i.pf = shl nuw nsw i64 %i.pe, 3                ; 9 uses
  %scevgep4717 = getelementptr i8, ptr %scevgep4716, i64 %i.pf
  %scevgep4748 = getelementptr i8, ptr %scevgep4747, i64 %i.pf
  %scevgep4756 = getelementptr i8, ptr %scevgep4755, i64 %i.pf
  %scevgep4764 = getelementptr i8, ptr %scevgep4763, i64 %i.pf
  %scevgep4772 = getelementptr i8, ptr %scevgep4771, i64 %i.pf
  %i.pg = add i32 %i.on, -1
  %i.ph = zext i32 %i.pg to i64
  %i.pi = shl nuw nsw i64 %i.ph, 3                ; 7 uses
  %scevgep4836 = getelementptr i8, ptr %scevgep4835, i64 %i.pi
  %scevgep4861 = getelementptr i8, ptr %scevgep4860, i64 %i.pi
  %scevgep4869 = getelementptr i8, ptr %scevgep4868, i64 %i.pi
  %scevgep4877 = getelementptr i8, ptr %scevgep4876, i64 %i.pi
  %i.pj = add i32 %i.on, -1                       ; 2 uses
  %i.pk = zext i32 %i.pj to i64
  %i.pl = shl nuw nsw i64 %i.pk, 3                ; 5 uses
  %scevgep4931 = getelementptr i8, ptr %scevgep4930, i64 %i.pl
  %scevgep4950 = getelementptr i8, ptr %scevgep4949, i64 %i.pl
  %scevgep4958 = getelementptr i8, ptr %scevgep4957, i64 %i.pl
  %i.pm = zext i32 %i.pj to i64
  %i.pn = shl nuw nsw i64 %i.pm, 3                ; 3 uses
  %scevgep5002 = getelementptr i8, ptr %scevgep5001, i64 %i.pn
  %scevgep5015 = getelementptr i8, ptr %scevgep5014, i64 %i.pn
  %brmerge4169 = select i1 %brmerge3731, i1 true, i1 %i.ot
  %6 = zext nneg i32 %i.on to i64                 ; 2 uses
  %min.iters.check5026 = icmp ugt i32 %i.on, 5
  %n.vec5029 = and i64 %6, 2147483644             ; 6 uses
  %i.po = trunc nuw nsw i64 %n.vec5029 to i32
  %cmp.n5040 = icmp eq i64 %n.vec5029, %6
  %brmerge4167 = select i1 %brmerge3728, i1 true, i1 %i.ot
  %7 = zext nneg i32 %i.on to i64                 ; 2 uses
  %min.iters.check4977 = icmp ugt i32 %i.on, 5
  %n.vec4980 = and i64 %7, 2147483646             ; 6 uses
  %i.pp = trunc nuw nsw i64 %n.vec4980 to i32
  %cmp.n4990 = icmp eq i64 %n.vec4980, %7
  %brmerge4165 = select i1 %brmerge3725, i1 true, i1 %i.ot
  %8 = zext nneg i32 %i.on to i64                 ; 2 uses
  %min.iters.check4904 = icmp ugt i32 %i.on, 5
  %n.vec4907 = and i64 %8, 2147483646             ; 6 uses
  %i.pq = trunc nuw nsw i64 %n.vec4907 to i32
  %cmp.n4919 = icmp eq i64 %n.vec4907, %8
  %9 = zext nneg i32 %i.on to i64                 ; 2 uses
  %min.iters.check4807 = icmp ugt i32 %i.on, 5
  %n.vec4810 = and i64 %9, 2147483646             ; 6 uses
  %i.pr = trunc nuw nsw i64 %n.vec4810 to i32
  %cmp.n4824 = icmp eq i64 %n.vec4810, %9
  %10 = zext nneg i32 %i.on to i64                ; 2 uses
  %min.iters.check4686 = icmp ugt i32 %i.on, 5
  %n.vec4689 = and i64 %10, 2147483646            ; 6 uses
  %i.ps = trunc nuw nsw i64 %n.vec4689 to i32
  %cmp.n4705 = icmp eq i64 %n.vec4689, %10
  %11 = zext nneg i32 %i.on to i64                ; 2 uses
  %min.iters.check4541 = icmp ugt i32 %i.on, 7
  %n.vec4544 = and i64 %11, 2147483646            ; 6 uses
  %i.pt = trunc nuw nsw i64 %n.vec4544 to i32
  %cmp.n4562 = icmp eq i64 %n.vec4544, %11
  %12 = zext nneg i32 %i.on to i64                ; 2 uses
  %min.iters.check4372 = icmp ugt i32 %i.on, 7
  %n.vec4375 = and i64 %12, 2147483646            ; 6 uses
  %i.pu = trunc nuw nsw i64 %n.vec4375 to i32
  %cmp.n4395 = icmp eq i64 %n.vec4375, %12
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph3632, %.loopexit3301
  %indvars.iv3941 = phi i64 [ 0, %.lr.ph3632 ], [ %indvars.iv.next3942, %.loopexit3301 ] ; 37 uses
  %i.pv = trunc i64 %indvars.iv3941 to i32
  %i.pw = sub i32 %i.ds, %i.pv
  %i.px = call i32 @llvm.smin.i32(i32 %i.pw, i32 7)
  switch i32 %i.px, label %.unreachabledefault [
    i32 7, label %bb.w
    i32 6, label %bb.ax
    i32 5, label %bb.bw
    i32 4, label %bb.ct
    i32 3, label %bb.do
    i32 2, label %bb.eh
    i32 1, label %bb.ey
    i32 0, label %.loopexit3301
  ]

bb.w:                                             ; preds = %bb.v
  %i.py = load ptr, ptr %i.el, align 8, !tbaa !79 ; 21 uses
  %i.pz = load ptr, ptr %i.em, align 8, !tbaa !80
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %indvars.iv3953
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !81 ; 7 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %indvars.iv3941
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !4
  %i.qe = sext i32 %i.qd to i64                   ; 2 uses
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.py, i64 %i.qe ; 2 uses
  %i.qg = add nuw nsw i64 %indvars.iv3941, 1      ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !4
  %i.qj = sext i32 %i.qi to i64                   ; 2 uses
  %i.qk = getelementptr inbounds [8 x i8], ptr %i.py, i64 %i.qj ; 2 uses
  %i.ql = add nuw nsw i64 %indvars.iv3941, 2      ; 2 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !4
  %i.qo = sext i32 %i.qn to i64                   ; 2 uses
  %i.qp = getelementptr inbounds [8 x i8], ptr %i.py, i64 %i.qo ; 2 uses
  %i.qq = add nuw nsw i64 %indvars.iv3941, 3      ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.qq
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !4
  %i.qt = sext i32 %i.qs to i64                   ; 2 uses
  %i.qu = getelementptr inbounds [8 x i8], ptr %i.py, i64 %i.qt ; 2 uses
  %i.qv = add nuw nsw i64 %indvars.iv3941, 4      ; 2 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.qv
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !4
  %i.qy = sext i32 %i.qx to i64                   ; 2 uses
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.py, i64 %i.qy ; 2 uses
  %i.ra = add nuw nsw i64 %indvars.iv3941, 5      ; 2 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !4
  %i.rd = sext i32 %i.rc to i64                   ; 2 uses
  %i.re = getelementptr inbounds [8 x i8], ptr %i.py, i64 %i.rd ; 2 uses
  %i.rf = add nuw nsw i64 %indvars.iv3941, 6      ; 2 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !4
  %i.ri = sext i32 %i.rh to i64                   ; 2 uses
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.py, i64 %i.ri ; 2 uses
  %i.rk = getelementptr inbounds nuw [12 x i8], ptr %i.dq, i64 %indvars.iv3941 ; 3 uses
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !4
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !4
  %i.ro = load i32, ptr %i.nj, align 4, !tbaa !4
  %i.rp = load i32, ptr %i.nk, align 4, !tbaa !4  ; 2 uses
  %i.rq = sub nsw i32 %i.ro, %i.rp                ; 10 uses
  %i.rr = icmp sgt i32 %i.rq, -1                  ; 9 uses
  br i1 %i.rr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !4
  %i.ru = add nuw nsw i32 %i.rq, 1
  %i.rv = mul nsw i32 %i.rt, %i.ru
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.rw = phi i32 [ %i.rv, %bb.x ], [ 0, %bb.w ]
  %i.rx = load i32, ptr %i.ni, align 4, !tbaa !4
  %i.ry = load i32, ptr %i.mp, align 4, !tbaa !4  ; 2 uses
  %i.rz = sub nsw i32 %i.rx, %i.ry                ; 2 uses
  %i.sa = icmp sgt i32 %i.rz, -1                  ; 9 uses
  %i.sb = add nsw i32 %i.rw, %i.rn
  %i.sc = add nuw nsw i32 %i.rz, 1                ; 10 uses
  %i.sd = mul nsw i32 %i.sc, %i.sb
  %i.se = select i1 %i.sa, i32 %i.sd, i32 0
  %i.sf = add i32 %i.se, %i.rl
  %i.sg = getelementptr inbounds nuw [12 x i8], ptr %i.dq, i64 %i.qg ; 3 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !4
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !4
  br i1 %i.rr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !4
  %i.sm = add nuw nsw i32 %i.rq, 1
  %i.sn = mul nsw i32 %i.sl, %i.sm
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.so = phi i32 [ %i.sn, %bb.z ], [ 0, %bb.y ]
  %i.sp = add nsw i32 %i.so, %i.sj
  %i.sq = mul nsw i32 %i.sp, %i.sc
  %i.sr = select i1 %i.sa, i32 %i.sq, i32 0
  %i.ss = add i32 %i.sr, %i.sh
  %i.st = getelementptr inbounds nuw [12 x i8], ptr %i.dq, i64 %i.ql ; 3 uses
  %i.su = load i32, ptr %i.st, align 4, !tbaa !4
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 4
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !4
  br i1 %i.rr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !4
  %i.sz = add nuw nsw i32 %i.rq, 1
  %i.ta = mul nsw i32 %i.sy, %i.sz
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.tb = phi i32 [ %i.ta, %bb.ab ], [ 0, %bb.aa ]
  %i.tc = add nsw i32 %i.tb, %i.sw
  %i.td = mul nsw i32 %i.tc, %i.sc
  %i.te = select i1 %i.sa, i32 %i.td, i32 0
  %i.tf = add i32 %i.te, %i.su
  %i.tg = getelementptr inbounds nuw [12 x i8], ptr %i.dq, i64 %i.qq ; 3 uses
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !4
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 4
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !4
  br i1 %i.rr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !4
  %i.tm = add nuw nsw i32 %i.rq, 1
  %i.tn = mul nsw i32 %i.tl, %i.tm
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.to = phi i32 [ %i.tn, %bb.ad ], [ 0, %bb.ac ]
  %i.tp = add nsw i32 %i.to, %i.tj
  %i.tq = mul nsw i32 %i.tp, %i.sc
  %i.tr = select i1 %i.sa, i32 %i.tq, i32 0
  %i.ts = add i32 %i.tr, %i.th
  %i.tt = getelementptr inbounds nuw [12 x i8], ptr %i.dq, i64 %i.qv ; 3 uses
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !4
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !4
  br i1 %i.rr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !4
  %i.tz = add nuw nsw i32 %i.rq, 1
  %i.ua = mul nsw i32 %i.ty, %i.tz
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.ub = phi i32 [ %i.ua, %bb.af ], [ 0, %bb.ae ]
  %i.uc = add nsw i32 %i.ub, %i.tw
  %i.ud = mul nsw i32 %i.uc, %i.sc
  %i.ue = select i1 %i.sa, i32 %i.ud, i32 0
  %i.uf = add i32 %i.ue, %i.tu
  %i.ug = getelementptr inbounds nuw [12 x i8], ptr %i.dq, i64 %i.ra ; 3 uses
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !4
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !4
  br i1 %i.rr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !4
  %i.um = add nuw nsw i32 %i.rq, 1
  %i.un = mul nsw i32 %i.ul, %i.um
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.uo = phi i32 [ %i.un, %bb.ah ], [ 0, %bb.ag ]
  %i.up = add nsw i32 %i.uo, %i.uj
  %i.uq = mul nsw i32 %i.up, %i.sc
  %i.ur = select i1 %i.sa, i32 %i.uq, i32 0
  %i.us = add i32 %i.ur, %i.uh
  %i.ut = getelementptr inbounds nuw [12 x i8], ptr %i.dq, i64 %i.rf ; 3 uses
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !4
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 4
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !4
  br i1 %i.rr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !4
  %i.uz = add nuw nsw i32 %i.rq, 1
  %i.va = mul nsw i32 %i.uy, %i.uz
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.vb = phi i32 [ %i.va, %bb.aj ], [ 0, %bb.ai ]
  %i.vc = add nsw i32 %i.vb, %i.uw
  %i.vd = mul nsw i32 %i.vc, %i.sc
  %i.ve = select i1 %i.sa, i32 %i.vd, i32 0
  %i.vf = add i32 %i.ve, %i.uu
  %i.vg = load i32, ptr %i.oj, align 4, !tbaa !4  ; 3 uses
end_hunk_0
