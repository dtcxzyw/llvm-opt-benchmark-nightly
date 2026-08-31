Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Zscaleoffset?download=true
inline.NumInlined: 45
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 65
begin_hunk_0_@H5Z__scaleoffset_postdecompress_i:bb.a
  %exitcond886.not = icmp eq i64 %indvars.iv.next883, %wide.trip.count885
  br i1 %exitcond886.not, label %.loopexit750, label %scalar.ph1041, !llvm.loop !87

.lr.ph769:                                        ; preds = %.lr.ph769.preheader1471, %.lr.ph769
  %indvars.iv874 = phi i64 [ %indvars.iv.next875, %.lr.ph769 ], [ %indvars.iv874.ph, %.lr.ph769.preheader1471 ] ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv874 ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !13
  %i.mv = add nsw i64 %i.mu, %6
  store i64 %i.mv, ptr %i.mt, align 8, !tbaa !13
  %indvars.iv.next875 = add nuw nsw i64 %indvars.iv874, 1 ; 2 uses
  %exitcond878.not = icmp eq i64 %indvars.iv.next875, %wide.trip.count877
  br i1 %exitcond878.not, label %.loopexit750, label %.lr.ph769, !llvm.loop !88

.loopexit750:                                     ; preds = %.lr.ph769, %scalar.ph1041, %middle.block1038, %middle.block1056, %.preheader754, %.loopexit752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %.loopexit

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  store i64 0, ptr %i.g, align 8, !tbaa !16
  %i.mw = icmp eq i32 %3, 1
  br i1 %i.mw, label %bb.s, label %.preheader760

.preheader760:                                    ; preds = %bb.r
  %.not829 = icmp eq i32 %1, 0
  br i1 %.not829, label %.loopexit756, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader760
  %wide.trip.count = zext i32 %1 to i64           ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader1473, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %6, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.mx, align 8, !tbaa !16
  %wide.load1008 = load <2 x i64>, ptr %i.my, align 8, !tbaa !16
  %i.mz = add nsw <2 x i64> %wide.load, %broadcast.splat
  %i.na = add nsw <2 x i64> %wide.load1008, %broadcast.splat
  store <2 x i64> %i.mz, ptr %i.mx, align 8, !tbaa !16
  store <2 x i64> %i.na, ptr %i.my, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nb = icmp eq i64 %index.next, %n.vec
  br i1 %i.nb, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit756, label %.lr.ph.preheader1473

.lr.ph.preheader1473:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.nc = load i32, ptr @H5T_native_order_g, align 4, !tbaa !15
  %i.nd = icmp eq i32 %i.nc, 0
  br i1 %i.nd, label %.preheader757, label %.loopexit759

.preheader757:                                    ; preds = %bb.s, %.preheader757
  %.0534 = phi i32 [ %i.ni, %.preheader757 ], [ 8, %bb.s ] ; 2 uses
  %.0532 = phi ptr [ %i.nj, %.preheader757 ], [ %i.g, %bb.s ] ; 2 uses
  %.0530 = phi i64 [ %spec.select691, %.preheader757 ], [ 4, %bb.s ]
  %.0 = phi i64 [ %i.nk, %.preheader757 ], [ 8, %bb.s ] ; 3 uses
  %i.ne = icmp ult i64 %.0, 4
  %spec.select691 = select i1 %i.ne, i64 %.0, i64 %.0530 ; 4 uses
  %i.nf = zext i32 %.0534 to i64
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !15
  store i32 %i.nh, ptr %i.h, align 4, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0532, ptr nonnull align 4 %i.h, i64 %spec.select691, i1 false)
  %i.ni = add i32 %.0534, 1
  %i.nj = getelementptr inbounds nuw i8, ptr %.0532, i64 %spec.select691
  %i.nk = sub i64 %.0, %spec.select691            ; 2 uses
  %.not665 = icmp eq i64 %i.nk, 0
  br i1 %.not665, label %.loopexit758, label %.preheader757, !llvm.loop !90

.loopexit759:                                     ; preds = %bb.s
  %i.nl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.nm = load <2 x i32>, ptr %i.nl, align 4, !tbaa !15
  %i.nn = shufflevector <2 x i32> %i.nm, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.nn, ptr %i.g, align 8
  br label %.loopexit758

.loopexit758:                                     ; preds = %.preheader757, %.loopexit759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not830 = icmp eq i32 %1, 0
  br i1 %.not830, label %.loopexit756, label %.lr.ph767

.lr.ph767:                                        ; preds = %.loopexit758
  %i.no = zext nneg i32 %5 to i64
  %notmask = shl nsw i64 -1, %i.no                ; 2 uses
  %i.np = load i64, ptr %i.g, align 8             ; 2 uses
  %wide.trip.count872 = zext i32 %1 to i64        ; 3 uses
  %min.iters.check1010 = icmp ult i32 %1, 4
  br i1 %min.iters.check1010, label %scalar.ph1009.preheader, label %vector.ph1011

vector.ph1011:                                    ; preds = %.lr.ph767
  %n.vec1012 = and i64 %wide.trip.count872, 4294967292 ; 3 uses
  %broadcast.splatinsert1013 = insertelement <2 x i64> poison, i64 %notmask, i64 0
  %broadcast.splat1014 = shufflevector <2 x i64> %broadcast.splatinsert1013, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1015 = insertelement <2 x i64> poison, i64 %i.np, i64 0
  %broadcast.splat1016 = shufflevector <2 x i64> %broadcast.splatinsert1015, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1017 = insertelement <2 x i64> poison, i64 %6, i64 0
  %broadcast.splat1018 = shufflevector <2 x i64> %broadcast.splatinsert1017, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %vector.ph1011
  %index1020 = phi i64 [ 0, %vector.ph1011 ], [ %index.next1023, %vector.body1019 ] ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index1020 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16 ; 2 uses
  %wide.load1021.a = load <2 x i64>, ptr %i.nq, align 8, !tbaa !16 ; 2 uses
  %wide.load1022 = load <2 x i64>, ptr %i.nr, align 8, !tbaa !16 ; 2 uses
  %i.ns = xor <2 x i64> %wide.load1021.a, %broadcast.splat1014
  %i.nt = xor <2 x i64> %wide.load1022, %broadcast.splat1014
  %i.nu = icmp eq <2 x i64> %i.ns, splat (i64 -1)
  %i.nv = icmp eq <2 x i64> %i.nt, splat (i64 -1)
  %i.nw = add nsw <2 x i64> %wide.load1021.a, %broadcast.splat1018
  %i.nx = add nsw <2 x i64> %wide.load1022, %broadcast.splat1018
  %i.ny = select <2 x i1> %i.nu, <2 x i64> %broadcast.splat1016, <2 x i64> %i.nw
  %i.nz = select <2 x i1> %i.nv, <2 x i64> %broadcast.splat1016, <2 x i64> %i.nx
  store <2 x i64> %i.ny, ptr %i.nq, align 8, !tbaa !16
  store <2 x i64> %i.nz, ptr %i.nr, align 8, !tbaa !16
  %index.next1023 = add nuw i64 %index1020, 4     ; 2 uses
  %i.oa = icmp eq i64 %index.next1023, %n.vec1012
  br i1 %i.oa, label %middle.block1024, label %vector.body1019, !llvm.loop !91

middle.block1024:                                 ; preds = %vector.body1019
  %cmp.n1025 = icmp eq i64 %n.vec1012, %wide.trip.count872
  br i1 %cmp.n1025, label %.loopexit756, label %scalar.ph1009.preheader

scalar.ph1009.preheader:                          ; preds = %.lr.ph767, %middle.block1024
  %indvars.iv869.ph = phi i64 [ 0, %.lr.ph767 ], [ %n.vec1012, %middle.block1024 ]
  br label %scalar.ph1009

scalar.ph1009:                                    ; preds = %scalar.ph1009.preheader, %scalar.ph1009
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %scalar.ph1009 ], [ %indvars.iv869.ph, %scalar.ph1009.preheader ] ; 2 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv869 ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !16 ; 2 uses
  %i.od = xor i64 %i.oc, %notmask
  %i.oe = icmp eq i64 %i.od, -1
  %i.of = add nsw i64 %i.oc, %6
  %i.og = select i1 %i.oe, i64 %i.np, i64 %i.of
  store i64 %i.og, ptr %i.ob, align 8, !tbaa !16
  %indvars.iv.next870 = add nuw nsw i64 %indvars.iv869, 1 ; 2 uses
  %exitcond873.not = icmp eq i64 %indvars.iv.next870, %wide.trip.count872
  br i1 %exitcond873.not, label %.loopexit756, label %scalar.ph1009, !llvm.loop !92

.lr.ph:                                           ; preds = %.lr.ph.preheader1473, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1473 ] ; 2 uses
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !16
  %i.oj = add nsw i64 %i.oi, %6
  store i64 %i.oj, ptr %i.oh, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit756, label %.lr.ph, !llvm.loop !93

.loopexit756:                                     ; preds = %.lr.ph, %scalar.ph1009, %middle.block, %middle.block1024, %.preheader760, %.loopexit758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph1059, %scalar.ph1073, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph1134, %vec.epilog.scalar.ph1169, %vec.epilog.scalar.ph1203, %scalar.ph1285, %scalar.ph1299, %vec.epilog.scalar.ph1334, %vec.epilog.scalar.ph1369, %vec.epilog.scalar.ph1404, %vec.epilog.scalar.ph1438, %middle.block1070, %middle.block1088, %middle.block1103, %vec.epilog.middle.block, %middle.block1130, %vec.epilog.middle.block1149, %middle.block1165, %vec.epilog.middle.block1180, %middle.block1199, %vec.epilog.middle.block1218, %middle.block1296, %middle.block1314, %middle.block1330, %vec.epilog.middle.block1345, %middle.block1365, %vec.epilog.middle.block1384, %middle.block1400, %vec.epilog.middle.block1415, %middle.block1434, %vec.epilog.middle.block1453, %.preheader747, %.preheader748, %.preheader725, %.preheader726, %.preheader744, %bb.n, %.preheader741, %bb.l, %.preheader722, %bb.e, %.preheader, %bb.c, %bb.a, %.loopexit728, %.loopexit756, %.loopexit750, %.loopexit734
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc void @H5Z__scaleoffset_postdecompress_fd(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef range(i32 1, 13) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i64 noundef %6, double noundef %7) unnamed_addr #6 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.sroa.4.0.extract.shift = lshr i64 %6, 32
  %i.c = load i8, ptr @H5Z_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %.loopexit, !prof !12

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %.loopexit [
    i32 11, label %bb.c
    i32 12, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @H5T_native_order_g, align 4, !tbaa !15
  %i.j = icmp eq i32 %i.i, 0
  %.0134.v.v = select i1 %i.j, i64 %6, i64 %.sroa.4.0.extract.shift
  %.0134.v = trunc i64 %.0134.v.v to i32
  %.0134 = bitcast i32 %.0134.v to float          ; 6 uses
  %i.k = icmp eq i32 %3, 1
  br i1 %i.k, label %.preheader, label %.preheader148

.preheader148:                                    ; preds = %bb.c
  %.not174 = icmp eq i32 %1, 0
  br i1 %.not174, label %.loopexit, label %.lr.ph163

.lr.ph163:                                        ; preds = %.preheader148
  %i.l = fptrunc double %7 to float               ; 3 uses
  %wide.trip.count190 = zext i32 %1 to i64        ; 2 uses
  %xtraiter9 = and i64 %wide.trip.count190, 1
  %i.m = icmp eq i32 %1, 1
  br i1 %i.m, label %.epil.preheader8, label %.lr.ph163.new

.lr.ph163.new:                                    ; preds = %.lr.ph163
  %unroll_iter12 = and i64 %wide.trip.count190, 4294967294
  br label %bb.i

.preheader:                                       ; preds = %bb.c
  %.0197.in = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.0197 = load float, ptr %.0197.in, align 4, !tbaa !15 ; 3 uses
  %.not175 = icmp eq i32 %1, 0
  br i1 %.not175, label %.loopexit, label %.lr.ph171

.lr.ph171:                                        ; preds = %.preheader
  %notmask147 = shl nsw i32 -1, %5                ; 3 uses
  %i.n = fptrunc double %7 to float               ; 3 uses
  %wide.trip.count195 = zext i32 %1 to i64        ; 2 uses
  %xtraiter15 = and i64 %wide.trip.count195, 1
  %i.o = icmp eq i32 %1, 1
  br i1 %i.o, label %.epil.preheader14, label %.lr.ph171.new

.lr.ph171.new:                                    ; preds = %.lr.ph171
  %unroll_iter18 = and i64 %wide.trip.count195, 4294967294
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph171.new
  %indvars.iv192 = phi i64 [ 0, %.lr.ph171.new ], [ %indvars.iv.next193.1, %bb.h ] ; 3 uses
  %niter19 = phi i64 [ 0, %.lr.ph171.new ], [ %niter19.next.1, %bb.h ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv192 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15   ; 2 uses
  %i.r = xor i32 %i.q, %notmask147
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = sitofp i32 %i.q to float
  %i.u = tail call float @powf(float noundef 1.000000e+01, float noundef %i.n) #13
  %i.v = fdiv float %i.t, %i.u
  %i.w = fadd float %i.v, %.0134
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.x = phi float [ %i.w, %bb.e ], [ %.0197, %bb.d ]
  store float %i.x, ptr %i.p, align 4, !tbaa !94
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv192
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !15  ; 2 uses
  %i.ab = xor i32 %i.aa, %notmask147
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = sitofp i32 %i.aa to float
  %i.ae = tail call float @powf(float noundef 1.000000e+01, float noundef %i.n) #13
  %i.af = fdiv float %i.ad, %i.ae
  %i.ag = fadd float %i.af, %.0134
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = phi float [ %i.ag, %bb.g ], [ %.0197, %bb.f ]
  store float %i.ah, ptr %i.z, align 4, !tbaa !94
  %indvars.iv.next193.1 = add nuw nsw i64 %indvars.iv192, 2 ; 2 uses
  %niter19.next.1 = add i64 %niter19, 2           ; 2 uses
  %niter19.ncmp.1 = icmp eq i64 %niter19.next.1, %unroll_iter18
  br i1 %niter19.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !96

bb.i:                                             ; preds = %bb.i, %.lr.ph163.new
  %indvars.iv187 = phi i64 [ 0, %.lr.ph163.new ], [ %indvars.iv.next188.1, %bb.i ] ; 3 uses
  %niter13 = phi i64 [ 0, %.lr.ph163.new ], [ %niter13.next.1, %bb.i ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv187 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !15
  %i.ak = sitofp i32 %i.aj to float
  %i.al = tail call float @powf(float noundef 1.000000e+01, float noundef %i.l) #13
  %i.am = fdiv float %i.ak, %i.al
  %i.an = fadd float %i.am, %.0134
  store float %i.an, ptr %i.ai, align 4, !tbaa !94
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv187
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !15
  %i.ar = sitofp i32 %i.aq to float
  %i.as = tail call float @powf(float noundef 1.000000e+01, float noundef %i.l) #13
  %i.at = fdiv float %i.ar, %i.as
  %i.au = fadd float %i.at, %.0134
  store float %i.au, ptr %i.ap, align 4, !tbaa !94
  %indvars.iv.next188.1 = add nuw nsw i64 %indvars.iv187, 2 ; 2 uses
  %niter13.next.1 = add i64 %niter13, 2           ; 2 uses
  %niter13.ncmp.1 = icmp eq i64 %niter13.next.1, %unroll_iter12
  br i1 %niter13.ncmp.1, label %.loopexit.loopexit5.unr-lcssa, label %bb.i, !llvm.loop !97

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !98
  %i.av = bitcast i64 %6 to double                ; 5 uses
  %i.aw = icmp eq i32 %3, 1
  br i1 %i.aw, label %bb.k, label %.preheader154

.preheader154:                                    ; preds = %bb.j
  %.not172.a = icmp eq i32 %1, 0
  br i1 %.not172.a, label %.loopexit150, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader154
  %i.ax = tail call double @pow(double noundef 1.000000e+01, double noundef %7) #13 ; 2 uses
  %wide.trip.count = zext i32 %1 to i64           ; 3 uses
  %min.iters.check = icmp eq i32 %1, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967294   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ax, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert3 = insertelement <2 x double> poison, double %i.av, i64 0
  %broadcast.splat4 = shufflevector <2 x double> %broadcast.splatinsert3, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ay, align 8, !tbaa !13
  %i.az = sitofp <2 x i64> %wide.load to <2 x double>
  %i.ba = fdiv <2 x double> %i.az, %broadcast.splat
  %i.bb = fadd <2 x double> %i.ba, %broadcast.splat4
  store <2 x double> %i.bb, ptr %i.ay, align 8, !tbaa !98
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit150, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bd = load i32, ptr @H5T_native_order_g, align 4, !tbaa !15
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.preheader151, label %.loopexit153

.preheader151:                                    ; preds = %bb.k, %.preheader151
  %.0118 = phi i32 [ %i.bj, %.preheader151 ], [ 8, %bb.k ] ; 2 uses
  %.0116 = phi ptr [ %i.bk, %.preheader151 ], [ %i.a, %bb.k ] ; 2 uses
  %.0114 = phi i64 [ %spec.select, %.preheader151 ], [ 4, %bb.k ]
  %.0 = phi i64 [ %i.bl, %.preheader151 ], [ 8, %bb.k ] ; 3 uses
  %i.bf = icmp ult i64 %.0, 4
  %spec.select = select i1 %i.bf, i64 %.0, i64 %.0114 ; 4 uses
  %i.bg = zext i32 %.0118 to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !15
  store i32 %i.bi, ptr %i.b, align 4, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0116, ptr nonnull align 4 %i.b, i64 %spec.select, i1 false)
  %i.bj = add i32 %.0118, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.0116, i64 %spec.select
  %i.bl = sub i64 %.0, %spec.select               ; 2 uses
  %.not145 = icmp eq i64 %i.bl, 0
  br i1 %.not145, label %.loopexit152, label %.preheader151, !llvm.loop !101

.loopexit153:                                     ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bn = load <2 x i32>, ptr %i.bm, align 4, !tbaa !15
  %i.bo = shufflevector <2 x i32> %i.bn, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bo, ptr %i.a, align 8
  br label %.loopexit152

.loopexit152:                                     ; preds = %.preheader151, %.loopexit153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not173 = icmp eq i32 %1, 0
  br i1 %.not173, label %.loopexit150, label %.lr.ph161

.lr.ph161:                                        ; preds = %.loopexit152
  %i.bp = zext nneg i32 %5 to i64
  %notmask = shl nsw i64 -1, %i.bp                ; 3 uses
  %i.bq = load double, ptr %i.a, align 8          ; 3 uses
  %wide.trip.count185 = zext i32 %1 to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count185, 1
  %i.br = icmp eq i32 %1, 1
  br i1 %i.br, label %.epil.preheader, label %.lr.ph161.new

.lr.ph161.new:                                    ; preds = %.lr.ph161
  %unroll_iter = and i64 %wide.trip.count185, 4294967294
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph161.new
  %indvars.iv182 = phi i64 [ 0, %.lr.ph161.new ], [ %indvars.iv.next183.1, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph161.new ], [ %niter.next.1, %bb.p ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv182 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !13 ; 2 uses
  %i.bu = xor i64 %i.bt, %notmask
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = sitofp i64 %i.bt to double
  %i.bx = tail call double @pow(double noundef 1.000000e+01, double noundef %7) #13
  %i.by = fdiv double %i.bw, %i.bx
  %i.bz = fadd double %i.by, %i.av
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ca = phi double [ %i.bz, %bb.m ], [ %i.bq, %bb.l ]
  store double %i.ca, ptr %i.bs, align 8, !tbaa !98
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv182
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !13 ; 2 uses
  %i.ce = xor i64 %i.cd, %notmask
  %i.cf = icmp eq i64 %i.ce, -1
  br i1 %i.cf, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = sitofp i64 %i.cd to double
  %i.ch = tail call double @pow(double noundef 1.000000e+01, double noundef %7) #13
  %i.ci = fdiv double %i.cg, %i.ch
  %i.cj = fadd double %i.ci, %i.av
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ck = phi double [ %i.cj, %bb.o ], [ %i.bq, %bb.n ]
  store double %i.ck, ptr %i.cc, align 8, !tbaa !98
  %indvars.iv.next183.1 = add nuw nsw i64 %indvars.iv182, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit150.loopexit.unr-lcssa, label %bb.l, !llvm.loop !102

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !13
  %i.cn = sitofp i64 %i.cm to double
  %i.co = fdiv double %i.cn, %i.ax
  %i.cp = fadd double %i.co, %i.av
  store double %i.cp, ptr %i.cl, align 8, !tbaa !98
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit150, label %scalar.ph, !llvm.loop !103

.loopexit150.loopexit.unr-lcssa:                  ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit150, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit150.loopexit.unr-lcssa, %.lr.ph161
  %indvars.iv182.epil.init = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next183.1, %.loopexit150.loopexit.unr-lcssa ]
  %lcmp.mod7 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv182.epil.init ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !13 ; 2 uses
  %i.cs = xor i64 %i.cr, %notmask
  %i.ct = icmp eq i64 %i.cs, -1
  br i1 %i.ct, label %.loopexit150.loopexit.epilog-lcssa, label %bb.q

bb.q:                                             ; preds = %.epil.preheader
  %i.cu = sitofp i64 %i.cr to double
  %i.cv = tail call double @pow(double noundef 1.000000e+01, double noundef %7) #13
  %i.cw = fdiv double %i.cu, %i.cv
  %i.cx = fadd double %i.cw, %i.av
  br label %.loopexit150.loopexit.epilog-lcssa

.loopexit150.loopexit.epilog-lcssa:               ; preds = %bb.q, %.epil.preheader
  %i.cy = phi double [ %i.cx, %bb.q ], [ %i.bq, %.epil.preheader ]
  store double %i.cy, ptr %i.cq, align 8, !tbaa !98
  br label %.loopexit150

.loopexit150:                                     ; preds = %scalar.ph, %.loopexit150.loopexit.epilog-lcssa, %.loopexit150.loopexit.unr-lcssa, %middle.block, %.preheader154, %.loopexit152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod16.not = icmp eq i64 %xtraiter15, 0
  br i1 %lcmp.mod16.not, label %.loopexit, label %.epil.preheader14

.epil.preheader14:                                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph171
  %indvars.iv192.epil.init = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next193.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod17 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv192.epil.init ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !15 ; 2 uses
  %i.db = xor i32 %i.da, %notmask147
  %i.dc = icmp eq i32 %i.db, -1
  br i1 %i.dc, label %.loopexit.loopexit.epilog-lcssa, label %bb.r

bb.r:                                             ; preds = %.epil.preheader14
  %i.dd = sitofp i32 %i.da to float
  %i.de = tail call float @powf(float noundef 1.000000e+01, float noundef %i.n) #13
  %i.df = fdiv float %i.dd, %i.de
  %i.dg = fadd float %i.df, %.0134
  br label %.loopexit.loopexit.epilog-lcssa

.loopexit.loopexit.epilog-lcssa:                  ; preds = %bb.r, %.epil.preheader14
  %i.dh = phi float [ %i.dg, %bb.r ], [ %.0197, %.epil.preheader14 ]
  store float %i.dh, ptr %i.cz, align 4, !tbaa !94
  br label %.loopexit

.loopexit.loopexit5.unr-lcssa:                    ; preds = %bb.i
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0
  br i1 %lcmp.mod10.not, label %.loopexit, label %.epil.preheader8

.epil.preheader8:                                 ; preds = %.loopexit.loopexit5.unr-lcssa, %.lr.ph163
  %indvars.iv187.epil.init = phi i64 [ 0, %.lr.ph163 ], [ %indvars.iv.next188.1, %.loopexit.loopexit5.unr-lcssa ]
  %lcmp.mod11 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv187.epil.init ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !15
  %i.dk = sitofp i32 %i.dj to float
  %i.dl = tail call float @powf(float noundef 1.000000e+01, float noundef %i.l) #13
  %i.dm = fdiv float %i.dk, %i.dl
  %i.dn = fadd float %i.dm, %.0134
  store float %i.dn, ptr %i.di, align 4, !tbaa !94
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader8, %.loopexit.loopexit5.unr-lcssa, %.loopexit.loopexit.epilog-lcssa, %.loopexit.loopexit.unr-lcssa, %.preheader, %.preheader148, %bb.b, %.loopexit150, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @H5Z__scaleoffset_precompress_i(ptr nofree noundef %0, i32 noundef %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull writeonly captures(none) %6) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 10 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  switch i32 %2, label %bb.ff [
    i32 1, label %bb.b
    i32 2, label %bb.v
    i32 3, label %bb.ag
    i32 4, label %bb.bb
    i32 5, label %bb.bp
    i32 6, label %bb.cd
    i32 7, label %bb.cx
    i32 8, label %bb.di
    i32 9, label %bb.ed
    i32 10, label %bb.er
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %3, 1
  br i1 %i.i, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @H5T_native_order_g, align 4, !tbaa !15
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15   ; 2 uses
  %.sroa.52199.0.extract.shift2200 = lshr i32 %i.m, 24
  %storemerge1909.in = select i1 %i.k, i32 %i.m, i32 %.sroa.52199.0.extract.shift2200
  %storemerge1909 = trunc i32 %storemerge1909.in to i8 ; 13 uses
  %i.n = load i32, ptr %5, align 4, !tbaa !15     ; 5 uses
  %i.o = icmp eq i32 %i.n, 0
  %.not2868 = icmp eq i32 %1, 0                   ; 2 uses
  br i1 %i.o, label %.preheader2255, label %.preheader2256

.preheader2256:                                   ; preds = %bb.c
  br i1 %.not2868, label %.critedge1913, label %.lr.ph2784.preheader

.lr.ph2784.preheader:                             ; preds = %.preheader2256
  %wide.trip.count3294 = zext i32 %1 to i64
  br label %.lr.ph2784

.preheader2255:                                   ; preds = %bb.c
  br i1 %.not2868, label %.critedge1912.a, label %.lr.ph2795.preheader

.lr.ph2795.preheader:                             ; preds = %.preheader2255
  %wide.trip.count3303 = zext i32 %1 to i64
  br label %.lr.ph2795

.lr.ph2795:                                       ; preds = %.lr.ph2795.preheader, %bb.d
  %indvars.iv3300 = phi i64 [ 0, %.lr.ph2795.preheader ], [ %indvars.iv.next3301, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3300
  %i.q = load i8, ptr %i.p, align 1, !tbaa !20    ; 2 uses
  %i.r = icmp eq i8 %i.q, %storemerge1909
  br i1 %i.r, label %bb.d, label %.critedge1912.loopexit.a

bb.d:                                             ; preds = %.lr.ph2795
  %indvars.iv.next3301 = add nuw nsw i64 %indvars.iv3300, 1 ; 2 uses
  %exitcond3304.not = icmp eq i64 %indvars.iv.next3301, %wide.trip.count3303
  br i1 %exitcond3304.not, label %._crit_edge2805, label %.lr.ph2795, !llvm.loop !104

.critedge1912.loopexit.a:                         ; preds = %.lr.ph2795
  %i.s = trunc nuw i64 %indvars.iv3300 to i32
  br label %.critedge1912.a

.critedge1912.a:                                  ; preds = %.critedge1912.loopexit.a, %.preheader2255
  %.01749.lcssa = phi i32 [ 0, %.preheader2255 ], [ %i.s, %.critedge1912.loopexit.a ] ; 2 uses
  %.01757 = phi i8 [ 0, %.preheader2255 ], [ %i.q, %.critedge1912.loopexit.a ] ; 8 uses
  %i.t = icmp ult i32 %.01749.lcssa, %1
  br i1 %i.t, label %.lr.ph2804.preheader, label %._crit_edge2805

.lr.ph2804.preheader:                             ; preds = %.critedge1912.a
  %i.u = zext i32 %.01749.lcssa to i64            ; 5 uses
  %wide.trip.count3307 = zext i32 %1 to i64       ; 3 uses
  %i.v = sub nsw i64 %wide.trip.count3307, %i.u
  %xtraiter4895 = and i64 %i.v, 1
  %lcmp.mod4896.not = icmp eq i64 %xtraiter4895, 0
  br i1 %lcmp.mod4896.not, label %.lr.ph2804.prol.loopexit, label %.lr.ph2804.prol

.lr.ph2804.prol:                                  ; preds = %.lr.ph2804.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !tbaa !20    ; 3 uses
  %i.y = icmp eq i8 %i.x, %storemerge1909         ; 2 uses
  %spec.select.prol = tail call i8 @llvm.umax.i8(i8 %i.x, i8 %.01757)
  %spec.select1974.prol.a = tail call i8 @llvm.umin.i8(i8 %i.x, i8 %.01757)
  %.21765.prol = select i1 %i.y, i8 %.01757, i8 %spec.select1974.prol.a ; 2 uses
  %.31760.prol = select i1 %i.y, i8 %.01757, i8 %spec.select.prol ; 2 uses
  %indvars.iv.next3306.prol = add nuw nsw i64 %i.u, 1
  br label %.lr.ph2804.prol.loopexit

.lr.ph2804.prol.loopexit:                         ; preds = %.lr.ph2804.prol, %.lr.ph2804.preheader
  %.21765.lcssa.unr = phi i8 [ poison, %.lr.ph2804.preheader ], [ %.21765.prol, %.lr.ph2804.prol ]
  %.31760.lcssa.unr = phi i8 [ poison, %.lr.ph2804.preheader ], [ %.31760.prol, %.lr.ph2804.prol ]
  %indvars.iv3305.unr = phi i64 [ %i.u, %.lr.ph2804.preheader ], [ %indvars.iv.next3306.prol, %.lr.ph2804.prol ]
  %.117582802.unr = phi i8 [ %.01757, %.lr.ph2804.preheader ], [ %.31760.prol, %.lr.ph2804.prol ]
  %.117642801.unr = phi i8 [ %.01757, %.lr.ph2804.preheader ], [ %.21765.prol, %.lr.ph2804.prol ]
  %i.z = add nsw i64 %wide.trip.count3307, -1
  %i.aa = icmp eq i64 %i.z, %i.u
  br i1 %i.aa, label %._crit_edge2805, label %.lr.ph2804

.lr.ph2804:                                       ; preds = %.lr.ph2804.prol.loopexit, %.lr.ph2804
  %indvars.iv3305 = phi i64 [ %indvars.iv.next3306.1, %.lr.ph2804 ], [ %indvars.iv3305.unr, %.lr.ph2804.prol.loopexit ] ; 3 uses
  %.117582802 = phi i8 [ %.31760.1, %.lr.ph2804 ], [ %.117582802.unr, %.lr.ph2804.prol.loopexit ] ; 2 uses
  %.117642801 = phi i8 [ %.21765.1, %.lr.ph2804 ], [ %.117642801.unr, %.lr.ph2804.prol.loopexit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3305
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !20  ; 3 uses
  %i.ad = icmp eq i8 %i.ac, %storemerge1909       ; 2 uses
  %spec.select = tail call i8 @llvm.umax.i8(i8 %i.ac, i8 %.117582802)
  %spec.select1974.a = tail call i8 @llvm.umin.i8(i8 %i.ac, i8 %.117642801)
  %.21765 = select i1 %i.ad, i8 %.117642801, i8 %spec.select1974.a ; 2 uses
  %.31760 = select i1 %i.ad, i8 %.117582802, i8 %spec.select ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3305
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20  ; 3 uses
  %i.ah = icmp eq i8 %i.ag, %storemerge1909       ; 2 uses
  %spec.select.1 = tail call i8 @llvm.umax.i8(i8 %i.ag, i8 %.31760)
  %spec.select1974.1.a = tail call i8 @llvm.umin.i8(i8 %i.ag, i8 %.21765)
  %.21765.1 = select i1 %i.ah, i8 %.21765, i8 %spec.select1974.1.a ; 2 uses
  %.31760.1 = select i1 %i.ah, i8 %.31760, i8 %spec.select.1 ; 2 uses
  %indvars.iv.next3306.1 = add nuw nsw i64 %indvars.iv3305, 2 ; 2 uses
  %exitcond3308.not.1 = icmp eq i64 %indvars.iv.next3306.1, %wide.trip.count3307
  br i1 %exitcond3308.not.1, label %._crit_edge2805, label %.lr.ph2804, !llvm.loop !105

._crit_edge2805:                                  ; preds = %bb.d, %.lr.ph2804.prol.loopexit, %.lr.ph2804, %.critedge1912.a
  %.11764.lcssa = phi i8 [ %.01757, %.critedge1912.a ], [ %.21765.1, %.lr.ph2804 ], [ %.21765.lcssa.unr, %.lr.ph2804.prol.loopexit ], [ 0, %bb.d ] ; 2 uses
  %.11758.lcssa = phi i8 [ %.01757, %.critedge1912.a ], [ %.31760.1, %.lr.ph2804 ], [ %.31760.lcssa.unr, %.lr.ph2804.prol.loopexit ], [ 0, %bb.d ]
  %i.ai = zext i8 %.11758.lcssa to i32
  %i.aj = zext i8 %.11764.lcssa to i32
  %i.ak = sub nsw i32 %i.ai, %i.aj                ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 253
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge2805
  store i32 8, ptr %5, align 4, !tbaa !15
  br label %bb.ff

bb.f:                                             ; preds = %._crit_edge2805
  %i.am = add nsw i32 %i.ak, 1
  %i.an = and i32 %i.am, 255
  %i.ao = add nuw nsw i32 %i.an, 1
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 1                       ; 2 uses
  %.not13.i = icmp eq i64 %i.aq, 0
  br i1 %.not13.i, label %H5Z__scaleoffset_log2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.ar = phi i64 [ %i.au, %.lr.ph.i ], [ %i.aq, %bb.f ]
  %.0915.i = phi i64 [ %i.at, %.lr.ph.i ], [ 1, %bb.f ]
  %.01014.i = phi i32 [ %i.as, %.lr.ph.i ], [ 0, %bb.f ]
  %i.as = add nuw nsw i32 %.01014.i, 1            ; 2 uses
  %i.at = shl nuw nsw i64 %.0915.i, 1             ; 2 uses
  %i.au = lshr i64 %i.ar, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %H5Z__scaleoffset_log2.exit, label %.lr.ph.i, !llvm.loop !106

H5Z__scaleoffset_log2.exit:                       ; preds = %.lr.ph.i, %bb.f
  %.010.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.as, %.lr.ph.i ]
  %.09.lcssa.i = phi i64 [ 1, %bb.f ], [ %i.at, %.lr.ph.i ]
  %i.av = icmp ne i64 %.09.lcssa.i, %i.ap
  %i.aw = zext i1 %i.av to i32
  %.011.i = add i32 %.010.lcssa.i, %i.aw          ; 2 uses
  store i32 %.011.i, ptr %5, align 4, !tbaa !15
  br label %thread-pre-split

.lr.ph2784:                                       ; preds = %.lr.ph2784.preheader, %bb.g
  %indvars.iv3291 = phi i64 [ 0, %.lr.ph2784.preheader ], [ %indvars.iv.next3292, %bb.g ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3291
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20  ; 2 uses
  %i.az = icmp eq i8 %i.ay, %storemerge1909
  br i1 %i.az, label %bb.g, label %.critedge1913.loopexit
end_hunk_0
