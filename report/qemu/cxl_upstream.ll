Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cxl_upstream?download=true
inline.NumInlined: 29
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cxl_usp_realize:bb.a
  store i16 %i.x, ptr %i.t, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x i32> <i32 239, i32 0, i32 0, i32 0>, ptr %i.y, align 4
  call void @cxl_component_create_dvsec(ptr noundef nonnull %i.f, i32 noundef 5, i16 noundef zeroext 32, i16 noundef zeroext 7, i8 noundef zeroext 2, ptr noundef nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 256, ptr %i.z, align 4
  call void @cxl_component_create_dvsec(ptr noundef nonnull %i.f, i32 noundef 5, i16 noundef zeroext 36, i16 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @cxl_component_register_block_init(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull @.str) #8
  call void @pci_register_bar(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 4, ptr noundef nonnull %i.f) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 2381384
  %i.ab = load i16, ptr %i.o, align 16
  call void @pcie_doe_init(ptr noundef %0, ptr noundef nonnull %i.aa, i16 noundef zeroext %i.ab, ptr noundef nonnull @doe_cdat_prot, i1 noundef zeroext true, i16 noundef zeroext 1) #8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 21760
  store ptr @build_cdat_table, ptr %i.ac, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 21768
  store ptr @free_default_cdat_table, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 21784
  store ptr %0, ptr %i.ae, align 8
  %i.af = call zeroext i1 @cxl_doe_cdat_init(ptr noundef nonnull %i.f, ptr noundef nonnull %spec.select) #8
  br i1 %i.af, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  call void @pcie_cap_exit(ptr noundef %0) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h
  call void @msi_uninit(ptr noundef %0) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  call void @pci_bridge_exitfn(ptr noundef %0) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  %.val = load ptr, ptr %5, align 8
  %.val51 = load ptr, ptr %i.a, align 8
  call void @error_propagate(ptr noundef %.val51, ptr noundef %.val) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cxl_usp_exitfn(ptr noundef %0) #1 {
bb.a:
  tail call void @pcie_aer_exit(ptr noundef %0) #8
  tail call void @pcie_cap_exit(ptr noundef %0) #8
  tail call void @msi_uninit(ptr noundef %0) #8
  tail call void @pci_bridge_exitfn(ptr noundef %0) #8
  ret void
}

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @cxl_usp_reset(ptr noundef %0) #1 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #8 ; 2 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, i32 noundef 66, ptr noundef nonnull @__func__.CXL_USP) #8 ; 7 uses
  tail call void @pci_bridge_reset(ptr noundef %0) #8
  tail call void @pcie_cap_deverr_reset(ptr noundef %i.a) #8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2381372
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2381368
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2381376 ; 2 uses
  %i.h = load i8, ptr %i.g, align 16, !range !9, !noundef !10
  %i.i = trunc nuw i8 %i.h to i1
  tail call void @pcie_cap_fill_link_ep_usp(ptr noundef %i.a, i32 noundef %i.d, i32 noundef %i.f, i1 noundef zeroext %i.i) #8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12272
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16368
  %i.l = load i8, ptr %i.g, align 16, !range !9, !noundef !10
  %i.m = trunc nuw i8 %i.l to i1
  tail call void @cxl_component_register_init_common(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i32 noundef 5, i1 noundef zeroext %i.m) #8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12568 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, -241
  %i.q = or disjoint i32 %i.p, 128
  store i32 %i.q, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 2381296
  tail call void @cxl_init_physical_port_control(ptr noundef nonnull %i.r) #8
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @pcie_doe_write_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @pci_bridge_write_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @pcie_cap_flr_write_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @pcie_aer_write_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @pcie_doe_read_config(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pci_default_read_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @pci_bridge_initfn(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pcie_port_init_reg(ptr noundef) local_unnamed_addr #2

declare i32 @msi_init(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @pcie_cap_init(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @pcie_cap_flr_init(ptr noundef) local_unnamed_addr #2

declare void @pcie_cap_deverr_init(ptr noundef) local_unnamed_addr #2

declare i32 @pcie_aer_init(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @pcie_dev_ser_num_init(ptr noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

declare void @cxl_component_register_block_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pci_register_bar(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @pcie_doe_init(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 3) i32 @build_cdat_table(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 14 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, i32 noundef 66, ptr noundef nonnull @__func__.CXL_USP) #8
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 55, ptr noundef nonnull @__func__.PCI_BRIDGE) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false), !annotation !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2952
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.06875 = phi i32 [ 0, %bb.a ], [ %.169, %bb.g ] ; 6 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.f, i64 1340
  %.val = load i32, ptr %i.g, align 4
  %i.h = and i32 %.val, 4
  %.not72 = icmp eq i32 %i.h, 0
  br i1 %.not72, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 2248
  %i.j = load i8, ptr %i.i, align 8
  %.not73 = icmp eq i8 %i.j, 0
  br i1 %.not73, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @object_dynamic_cast(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.1) #8
  %.not74 = icmp eq ptr %i.k, null
  br i1 %.not74, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16, i32 noundef 30, ptr noundef nonnull @__func__.PCIE_PORT) #8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 7616
  %i.n = load i8, ptr %i.m, align 16
  %i.o = zext i8 %i.n to i16
  %i.p = sext i32 %.06875 to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.p
  store i16 %i.o, ptr %i.q, align 2
  %i.r = add i32 %.06875, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %bb.f
  %.169 = phi i32 [ %i.r, %bb.f ], [ %.06875, %bb.b ], [ %.06875, %bb.d ], [ %.06875, %bb.c ], [ %.06875, %bb.e ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.h, label %bb.b, !llvm.loop !11

bb.h:                                             ; preds = %bb.g
  %i.s = icmp eq i32 %.169, 0
  br i1 %i.s, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = shl i32 %.169, 3
  %i.u = add i32 %i.t, 16                         ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = tail call noalias ptr @g_malloc(i64 noundef %i.v) #10 ; 7 uses
  %i.x = trunc i32 %i.u to i16                    ; 2 uses
  store i8 5, ptr %i.w, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 0, ptr %.sroa.220.0..sroa_idx, align 1
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i16 %i.x, ptr %.sroa.321.0..sroa_idx, align 2
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 0, ptr %.sroa.422.0..sroa_idx, align 4
  store i64 10000, ptr %.sroa.624.0..sroa_idx, align 8
  %i.y = icmp sgt i32 %.169, 0                    ; 2 uses
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %wide.trip.count = zext nneg i32 %.169 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.aa = icmp ult i32 %.169, 4
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv83 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next84.3, %bb.j ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.j ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv83
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv83
  %i.ad = load i16, ptr %i.ac, align 8
  %i.ae = insertelement <4 x i16> <i16 256, i16 poison, i16 15, i16 0>, i16 %i.ad, i64 1
  store <4 x i16> %i.ae, ptr %i.ab, align 8
  %indvars.iv.next84 = or disjoint i64 %indvars.iv83, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next84
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next84
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = insertelement <4 x i16> <i16 256, i16 poison, i16 15, i16 0>, i16 %i.ah, i64 1
  store <4 x i16> %i.ai, ptr %i.af, align 8
  %indvars.iv.next84.1 = or disjoint i64 %indvars.iv83, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next84.1
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next84.1
  %i.al = load i16, ptr %i.ak, align 4
  %i.am = insertelement <4 x i16> <i16 256, i16 poison, i16 15, i16 0>, i16 %i.al, i64 1
  store <4 x i16> %i.am, ptr %i.aj, align 8
  %indvars.iv.next84.2 = or disjoint i64 %indvars.iv83, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next84.2
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next84.2
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = insertelement <4 x i16> <i16 256, i16 poison, i16 15, i16 0>, i16 %i.ap, i64 1
  store <4 x i16> %i.aq, ptr %i.an, align 8
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.j, !llvm.loop !13

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv83.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next84.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv83.epil = phi i64 [ %indvars.iv83.epil.init, %.epil.preheader ], [ %indvars.iv.next84.epil, %bb.k ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv83.epil
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv83.epil
  %i.at = load i16, ptr %i.as, align 2
  %i.au = insertelement <4 x i16> <i16 256, i16 poison, i16 15, i16 0>, i16 %i.at, i64 1
  store <4 x i16> %i.au, ptr %i.ar, align 8
  %indvars.iv.next84.epil = add nuw nsw i64 %indvars.iv83.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.k, !llvm.loop !14

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.k, %bb.i
  %i.av = tail call noalias ptr @g_malloc(i64 noundef %i.v) #10 ; 8 uses
  store i8 5, ptr %i.av, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 0, ptr %.sroa.212.0..sroa_idx, align 1
  %.sroa.313.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.x, ptr %.sroa.313.0..sroa_idx.a, align 2
  %.sroa.414.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i8 3, ptr %.sroa.414.0..sroa_idx.a, align 4
  %.sroa.5.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.av, i64 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.a, i8 0, i64 3, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 1024, ptr %.sroa.6.0..sroa_idx, align 8
  br i1 %i.y, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 5 uses
  %wide.trip.count92 = zext nneg i32 %.169 to i64 ; 2 uses
  %xtraiter97 = and i64 %wide.trip.count92, 3     ; 3 uses
  %i.ax = icmp ult i32 %.169, 4
  br i1 %i.ax, label %.epil.preheader96, label %.lr.ph80.new

.lr.ph80.new:                                     ; preds = %.lr.ph80
  %unroll_iter101 = and i64 %wide.trip.count92, 2147483644
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph80.new
  %indvars.iv88 = phi i64 [ 0, %.lr.ph80.new ], [ %indvars.iv.next89.3, %bb.l ] ; 6 uses
  %niter102 = phi i64 [ 0, %.lr.ph80.new ], [ %niter102.next.3, %bb.l ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv88
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv88
  %i.ba = load i16, ptr %i.az, align 8
  %i.bb = insertelement <4 x i16> <i16 256, i16 poison, i16 16, i16 0>, i16 %i.ba, i64 1
  store <4 x i16> %i.bb, ptr %i.ay, align 8
  %indvars.iv.next89 = or disjoint i64 %indvars.iv88, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next89
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next89
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = insertelement <4 x i16> <i16 256, i16 poison, i16 16, i16 0>, i16 %i.be, i64 1
  store <4 x i16> %i.bf, ptr %i.bc, align 8
  %indvars.iv.next89.1 = or disjoint i64 %indvars.iv88, 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next89.1
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next89.1
  %i.bi = load i16, ptr %i.bh, align 4
  %i.bj = insertelement <4 x i16> <i16 256, i16 poison, i16 16, i16 0>, i16 %i.bi, i64 1
  store <4 x i16> %i.bj, ptr %i.bg, align 8
  %indvars.iv.next89.2 = or disjoint i64 %indvars.iv88, 3 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next89.2
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next89.2
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = insertelement <4 x i16> <i16 256, i16 poison, i16 16, i16 0>, i16 %i.bm, i64 1
  store <4 x i16> %i.bn, ptr %i.bk, align 8
  %indvars.iv.next89.3 = add nuw nsw i64 %indvars.iv88, 4 ; 2 uses
  %niter102.next.3 = add i64 %niter102, 4         ; 2 uses
  %niter102.ncmp.3 = icmp eq i64 %niter102.next.3, %unroll_iter101
  br i1 %niter102.ncmp.3, label %._crit_edge81.loopexit.unr-lcssa, label %bb.l, !llvm.loop !16

._crit_edge81.loopexit.unr-lcssa:                 ; preds = %bb.l
  %lcmp.mod99.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod99.not, label %._crit_edge81, label %.epil.preheader96

.epil.preheader96:                                ; preds = %._crit_edge81.loopexit.unr-lcssa, %.lr.ph80
  %indvars.iv88.epil.init = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next89.3, %._crit_edge81.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter97, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader96
  %indvars.iv88.epil = phi i64 [ %indvars.iv88.epil.init, %.epil.preheader96 ], [ %indvars.iv.next89.epil, %bb.m ] ; 3 uses
  %epil.iter98 = phi i64 [ 0, %.epil.preheader96 ], [ %epil.iter98.next, %bb.m ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv88.epil
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv88.epil
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = insertelement <4 x i16> <i16 256, i16 poison, i16 16, i16 0>, i16 %i.bq, i64 1
  store <4 x i16> %i.br, ptr %i.bo, align 8
  %indvars.iv.next89.epil = add nuw nsw i64 %indvars.iv88.epil, 1
  %epil.iter98.next = add i64 %epil.iter98, 1     ; 2 uses
  %epil.iter98.cmp.not = icmp eq i64 %epil.iter98.next, %xtraiter97
  br i1 %epil.iter98.cmp.not, label %._crit_edge81, label %bb.m, !llvm.loop !17

._crit_edge81:                                    ; preds = %._crit_edge81.loopexit.unr-lcssa, %bb.m, %._crit_edge
  %i.bs = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #10 ; 3 uses
  store ptr %i.bs, ptr %0, align 8
  store ptr %i.w, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.av, ptr %i.bt, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %._crit_edge81
  %.0 = phi i32 [ 2, %._crit_edge81 ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @free_default_cdat_table(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @g_free(ptr noundef %0) #8
  ret void
}

declare zeroext i1 @cxl_doe_cdat_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pcie_cap_exit(ptr noundef) local_unnamed_addr #2

declare void @msi_uninit(ptr noundef) local_unnamed_addr #2

declare void @pci_bridge_exitfn(ptr noundef) local_unnamed_addr #2

declare void @error_propagate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @cxl_component_create_dvsec(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @cxl_doe_cdat_rsp(ptr noundef %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, i32 noundef 66, ptr noundef nonnull @__func__.CXL_USP) #8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 21744
  %i.d = tail call ptr @pcie_doe_get_write_mbox_ptr(ptr noundef nonnull %0) #8 ; 2 uses
  %i.e = load ptr, ptr %0, align 8
  %i.f = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.e, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, i32 noundef 66, ptr noundef nonnull @__func__.CXL_USP) #8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 7632
  tail call void @cxl_doe_cdat_update(ptr noundef nonnull %i.g, ptr noundef nonnull @error_fatal) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 21752 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.15, i32 noundef 152, ptr noundef nonnull @__PRETTY_FUNCTION__.cxl_doe_cdat_rsp) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i32 @pcie_doe_get_obj_len(ptr noundef %i.d) #8
  %i.k = icmp ult i32 %i.j, 3
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.m = load i16, ptr %i.l, align 1              ; 3 uses
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %i.o = load i32, ptr %i.h, align 8              ; 2 uses
  %.not23 = icmp sgt i32 %i.o, %i.n
  br i1 %.not23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = zext i16 %i.m to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 15
  %i.x = lshr i64 %i.w, 2
  %i.y = trunc nuw nsw i64 %i.x to i32            ; 2 uses
  %i.z = add nsw i32 %i.o, -1
  %i.aa = icmp samesign ugt i32 %i.z, %i.n
  %i.ab = add i16 %i.m, 1
  %i.ac = select i1 %i.aa, i16 %i.ab, i16 -1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 7 uses
  store i16 7832, ptr %i.ae, align 1
  %.sroa.4.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i8 2, ptr %.sroa.4.0..sroa_idx26, align 1
  %.sroa.5.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  store i8 0, ptr %.sroa.5.0..sroa_idx27, align 1
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.y, ptr %.sroa.6.0..sroa_idx28, align 1
  %.sroa.7.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i8 0, ptr %.sroa.7.0..sroa_idx29, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  store i16 %i.ac, ptr %.sroa.9.0..sroa_idx, align 1
  %i.af = load ptr, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ag, ptr noundef nonnull align 1 %i.s, i64 noundef range(i64 0, 4294967296) %i.v, i1 noundef false) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = add i32 %i.ai, %i.y
  store i32 %i.aj, ptr %i.ah, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.0
}

declare ptr @pcie_doe_get_write_mbox_ptr(ptr noundef) local_unnamed_addr #2

declare void @cxl_doe_cdat_update(ptr noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
