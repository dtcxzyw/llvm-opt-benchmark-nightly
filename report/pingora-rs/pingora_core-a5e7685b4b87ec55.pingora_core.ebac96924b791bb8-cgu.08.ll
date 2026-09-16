Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.08?download=true
inline.NumInlined: 763
inline.NumDeleted: 289
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2P_4SyncEL_ENCINvMNtB1e_5sliceSB19_11sort_by_keysNCNvMB1L_NtB1L_11HttpModules10add_module0E0EB1P_:.lr.ph.i
  %i.dl = zext i1 %i.di to i64
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.dl
  %.sroa.017.0.val.i.3 = load ptr, ptr %i.cu, align 8, !alias.scope !983, !nonnull !10, !noundef !10
  %i.dn = getelementptr i8, ptr %i.cu, i64 8
  %.sroa.017.0.val24.i.3 = load ptr, ptr %i.dn, align 8, !alias.scope !983, !nonnull !10, !align !14, !noundef !10
  %.sroa.015.0.val.i.3 = load ptr, ptr %i.cv, align 8, !alias.scope !983 ; 2 uses
  %i.do = getelementptr i8, ptr %i.cv, i64 8
  %.sroa.015.0.val25.i.3 = load ptr, ptr %i.do, align 8, !alias.scope !983 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.val24.i.3, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !invariant.load !10, !noalias !983, !nonnull !10
  %i.dr = tail call noundef i16 %i.dq(ptr noundef nonnull %.sroa.017.0.val.i.3) #26, !noalias !983, !inline_history !976
  %i.ds = sub i16 0, %i.dr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.val.i.3) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.val25.i.3) ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.015.0.val25.i.3, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !invariant.load !10, !noalias !983, !nonnull !10
  %i.dv = tail call noundef i16 %i.du(ptr noundef nonnull %.sroa.015.0.val.i.3) #26, !noalias !983, !inline_history !976
  %i.dw = sub i16 0, %i.dv
  %i.dx = icmp slt i16 %i.ds, %i.dw               ; 3 uses
  %..i.i.3 = select i1 %i.dx, ptr %i.cv, ptr %i.cu
  %i.dy = xor i1 %i.dx, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.3, i64 16, i1 false), !noalias !985
  %.neg.i.i.3 = sext i1 %i.dy to i64
  %i.dz = getelementptr [16 x i8], ptr %i.cu, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.dx to i64
  %i.ea = getelementptr [16 x i8], ptr %i.cv, i64 %.neg13.i.i.3
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  %i.ec = getelementptr i8, ptr %i.dz, i64 16
  %i.ed = icmp ne ptr %i.dm, %i.eb
  %i.ee = icmp ne ptr %i.dk, %i.ec
  %or.cond.i = select i1 %i.ed, i1 true, i1 %i.ee, !prof !21
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2W_4SyncEL_ENCINvMNtB1l_5sliceSB1g_11sort_by_keysNCNvMB1S_NtB1S_11HttpModules10add_module0E0EB1W_.exit, !prof !21

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #21, !noalias !983
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2W_4SyncEL_ENCINvMNtB1l_5sliceSB1g_11sort_by_keysNCNvMB1S_NtB1S_11HttpModules10add_module0E0EB1W_.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB32_4SyncEL_ENCINvMNtB1r_5sliceSB1m_11sort_by_keysNCNvMB1Y_NtB1Y_11HttpModules10add_module0E0EB22_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %.not6 = icmp samesign eq i64 %2, %1
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2O_4SyncEL_ENCINvMNtB1d_5sliceSB18_11sort_by_keysNCNvMB1K_NtB1K_11HttpModules10add_module0E0EB1O_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2O_4SyncEL_ENCINvMNtB1d_5sliceSB18_11sort_by_keysNCNvMB1K_NtB1K_11HttpModules10add_module0E0EB1O_.exit
  %.sroa.0.07 = phi ptr [ %i.af, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2O_4SyncEL_ENCINvMNtB1d_5sliceSB18_11sort_by_keysNCNvMB1K_NtB1K_11HttpModules10add_module0E0EB1O_.exit ], [ %i.c, %.lr.ph.preheader ] ; 7 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -16 ; 4 uses
  %.val11.i = load ptr, ptr %.sroa.0.07, align 8, !nonnull !10, !noundef !10
  %i.e = getelementptr i8, ptr %.sroa.0.07, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.e, align 8, !nonnull !10, !align !14, !noundef !10
  %.val13.i = load ptr, ptr %i.d, align 8         ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.0.07, i64 -8
  %.val14.i = load ptr, ptr %i.f, align 8         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val12.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !10, !nonnull !10
  %i.i = tail call noundef i16 %i.h(ptr noundef nonnull %.val11.i) #26, !inline_history !986
  %i.j = sub i16 0, %i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val14.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !10, !nonnull !10
  %i.m = tail call noundef i16 %i.l(ptr noundef nonnull %.val13.i) #26, !inline_history !986
  %i.n = sub i16 0, %i.m
  %i.o = icmp slt i16 %i.j, %i.n
  br i1 %i.o, label %bb.d, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2O_4SyncEL_ENCINvMNtB1d_5sliceSB18_11sort_by_keysNCNvMB1K_NtB1K_11HttpModules10add_module0E0EB1O_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %.sroa.0.07, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.q = load ptr, ptr %i.e, align 8, !nonnull !10, !align !14, !noundef !10 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.s = icmp eq ptr %i.d, %0
  br i1 %i.s, label %._crit_edge21, label %.lr.ph20.preheader

.lr.ph20.preheader:                               ; preds = %bb.d
  %i.t = load ptr, ptr %i.r, align 8, !invariant.load !10, !nonnull !10
  br label %.lr.ph20

bb.e:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i18, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.u = icmp eq ptr %i.v, %0
  br i1 %i.u, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %.lr.ph20.preheader, %bb.e
  %.sroa.0.0.i18 = phi ptr [ %i.v, %bb.e ], [ %i.d, %.lr.ph20.preheader ] ; 6 uses
  %i.v = getelementptr inbounds i8, ptr %.sroa.0.0.i18, i64 -16 ; 4 uses
  %.val9.i = load ptr, ptr %i.v, align 8          ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.0.0.i18, i64 -8
  %.val10.i = load ptr, ptr %i.w, align 8         ; 2 uses
  %i.x = invoke noundef i16 %i.t(ptr noundef nonnull %i.p) #26
          to label %.noexc.i unwind label %bb.g, !inline_history !2

.noexc.i:                                         ; preds = %.lr.ph20
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  %i.y = getelementptr inbounds nuw i8, ptr %.val10.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !10, !nonnull !10
  %i.aa = invoke noundef i16 %i.z(ptr noundef nonnull %.val9.i) #26
          to label %bb.f unwind label %bb.g, !inline_history !2

bb.f:                                             ; preds = %.noexc.i
  %i.ab = sub i16 0, %i.x
  %i.ac = sub i16 0, %i.aa
  %i.ad = icmp slt i16 %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %._crit_edge21

._crit_edge21:                                    ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i18, %bb.f ] ; 2 uses
  store ptr %i.p, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !995
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store ptr %i.q, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !995
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2O_4SyncEL_ENCINvMNtB1d_5sliceSB18_11sort_by_keysNCNvMB1K_NtB1K_11HttpModules10add_module0E0EB1O_.exit

bb.g:                                             ; preds = %.noexc.i, %.lr.ph20
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %.sroa.0.0.i18, align 8, !noalias !996
  %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i18, i64 8
  store ptr %i.q, ptr %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i, align 8, !noalias !996
  resume { ptr, i32 } %i.ae

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2O_4SyncEL_ENCINvMNtB1d_5sliceSB18_11sort_by_keysNCNvMB1K_NtB1K_11HttpModules10add_module0E0EB1O_.exit: ; preds = %.lr.ph, %._crit_edge21
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2C_4SyncEL_ENCINvMNtB11_5sliceSBW_11sort_by_keysNCNvMB1y_NtB1y_11HttpModules10add_module0E0EB1C_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fn, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fl, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2J_4SyncEL_ENCINvMNtB18_5sliceSB13_11sort_by_keysNCNvMB1F_NtB1F_11HttpModules10add_module0E0EB1J_.exit
  %.sroa.021.0 = phi i8 [ %i.ce, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2J_4SyncEL_ENCINvMNtB18_5sliceSB13_11sort_by_keysNCNvMB1F_NtB1F_11HttpModules10add_module0E0EB1J_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2J_4SyncEL_ENCINvMNtB18_5sliceSB13_11sort_by_keysNCNvMB1F_NtB1F_11HttpModules10add_module0E0EB1J_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i.thread117, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E7reverseB1a_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !1026, !noalias !1027, !nonnull !10, !noundef !10 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 24
  %.val15.i = load ptr, ptr %i.r, align 8, !alias.scope !1026, !noalias !1027, !nonnull !10, !align !14, !noundef !10
  %.val16.i = load ptr, ptr %i.o, align 8, !alias.scope !1026, !noalias !1027 ; 2 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val17.i = load ptr, ptr %i.s, align 8, !alias.scope !1026, !noalias !1027 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val15.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !10, !noalias !1028, !nonnull !10 ; 3 uses
  %i.v = tail call noundef i16 %i.u(ptr noundef nonnull %.val14.i) #26, !noalias !1028, !inline_history !1001
  %i.w = sub i16 0, %i.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ], !noalias !1028
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i) ], !noalias !1028
  %i.x = getelementptr inbounds nuw i8, ptr %.val17.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !10, !noalias !1028, !nonnull !10
  %i.z = tail call noundef i16 %i.y(ptr noundef nonnull %.val16.i) #26, !noalias !1028, !inline_history !1001
  %i.aa = sub i16 0, %i.z
  %i.ab = icmp slt i16 %i.w, %i.aa                ; 2 uses
  %.not79 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.ab, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i.thread117, label %.lr.ph66

.lr.ph:                                           ; preds = %.preheader47, %bb.l
  %i.ac = phi ptr [ %i.ag, %bb.l ], [ %i.u, %.preheader47 ]
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader47 ]
  %.sroa.01.0.i.i62 = phi i64 [ %i.am, %bb.l ], [ 2, %.preheader47 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62 ; 2 uses
  %.val10.i = load ptr, ptr %i.ad, align 8, !alias.scope !1026, !noalias !1027, !nonnull !10, !noundef !10 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val11.i = load ptr, ptr %i.ae, align 8, !alias.scope !1026, !noalias !1027, !nonnull !10, !align !14, !noundef !10
  %i.af = getelementptr inbounds nuw i8, ptr %.val11.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !10, !noalias !1028, !nonnull !10 ; 2 uses
  %i.ah = tail call noundef i16 %i.ag(ptr noundef nonnull %.val10.i) #26, !noalias !1028, !inline_history !1001
  %i.ai = sub i16 0, %i.ah
  %i.aj = tail call noundef i16 %i.ac(ptr noundef nonnull %.val12.i) #26, !noalias !1028, !inline_history !1001
  %i.ak = sub i16 0, %i.aj
  %i.al = icmp slt i16 %i.ai, %i.ak
  br i1 %i.al, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.am = add nuw i64 %.sroa.01.0.i.i62, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i, label %.lr.ph

.lr.ph66:                                         ; preds = %.preheader, %bb.m
  %i.an = phi ptr [ %i.ar, %bb.m ], [ %i.u, %.preheader ]
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i65 = phi i64 [ %i.ax, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65 ; 2 uses
  %.val.i = load ptr, ptr %i.ao, align 8, !alias.scope !1026, !noalias !1027, !nonnull !10, !noundef !10 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val7.i = load ptr, ptr %i.ap, align 8, !alias.scope !1026, !noalias !1027, !nonnull !10, !align !14, !noundef !10
  %i.aq = getelementptr inbounds nuw i8, ptr %.val7.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !invariant.load !10, !noalias !1028, !nonnull !10 ; 2 uses
  %i.as = tail call noundef i16 %i.ar(ptr noundef nonnull %.val.i) #26, !noalias !1028, !inline_history !1001
  %i.at = sub i16 0, %i.as
  %i.au = tail call noundef i16 %i.an(ptr noundef nonnull %.val8.i) #26, !noalias !1028, !inline_history !1001
  %i.av = sub i16 0, %i.au
  %i.aw = icmp slt i16 %i.at, %i.av
  br i1 %i.aw, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i

bb.m:                                             ; preds = %.lr.ph66
  %i.ax = add nuw i64 %.sroa.01.1.i.i65, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ax, %i.n
  br i1 %exitcond92.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i, label %.lr.ph66

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph66
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i65, %.lr.ph66 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i62, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ay = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ay)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i.thread117: ; preds = %.preheader
  br i1 %.not5.i119, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.preheader.i.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i.thread: ; preds = %.preheader47
  br i1 %.not5.i114, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E7reverseB1a_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i
  br i1 %i.ab, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E7reverseB1a_.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.az = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2J_4SyncEL_ENCINvMNtB18_5sliceSB13_11sort_by_keysNCNvMB1F_NtB1F_11HttpModules10add_module0E0EB1J_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2L_4SyncEL_ENCINvMNtB1a_5sliceSB15_11sort_by_keysNCNvMB1H_NtB1H_11HttpModules10add_module0E0EB1L_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #20, !inline_history !1002
  %i.ba = shl nuw nsw i64 %..i36, 1
  %i.bb = or disjoint i64 %i.ba, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2J_4SyncEL_ENCINvMNtB18_5sliceSB13_11sort_by_keysNCNvMB1F_NtB1F_11HttpModules10add_module0E0EB1J_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E7reverseB1a_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E7reverseB1a_.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.i.i.epil.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E7reverseB1a_.exit.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.preheader.i.i ], [ %i.bv, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E7reverseB1a_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod163 = trunc i64 %i.bj to i1
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.bc = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.be = getelementptr [16 x i8], ptr %i.bk, i64 %i.bc ; 2 uses
  %i.bf = load <2 x ptr>, ptr %i.bd, align 8, !alias.scope !1029, !noalias !1030
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !alias.scope !1031, !noalias !1027
  store <2 x ptr> %i.bf, ptr %i.be, align 8, !alias.scope !1032, !noalias !1033
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E7reverseB1a_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E7reverseB1a_.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E7reverseB1a_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4245 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i.thread ], [ %.sroa.0.0.i.i115122126, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E7reverseB1a_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i115122126, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.i.i.epil.preheader ]
  %i.bg = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.bh = or disjoint i64 %i.bg, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2J_4SyncEL_ENCINvMNtB18_5sliceSB13_11sort_by_keysNCNvMB1F_NtB1F_11HttpModules10add_module0E0EB1J_.exit

bb.q:                                             ; preds = %bb.n
  %i.bi = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034), !noalias !1027
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035), !noalias !1027
  %.not.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E7reverseB1a_.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.preheader.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i.thread117, %bb.q
  %i.bj = phi i64 [ %i.bi, %bb.q ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i.thread117 ] ; 4 uses
  %.sroa.0.0.i.i115122126 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB8_6marker4SendNtB2I_4SyncEL_ENCINvMNtB17_5sliceSB12_11sort_by_keysNCNvMB1E_NtB1E_11HttpModules10add_module0E0EB1I_.exit.i.thread117 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i115122126 ; 3 uses
  %xtraiter = and i64 %i.bj, 1
  %i.bl = icmp eq i64 %i.bj, 1
  br i1 %i.bl, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.preheader.i.i.new

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.preheader.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.preheader.i.i
  %unroll_iter = and i64 %i.bj, 9223372036854775806
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.preheader.i.i.new ], [ %i.bv, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.i.i ]
  %i.bm = xor i64 %.sroa.0.016.i.i, -1
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bo = getelementptr [16 x i8], ptr %i.bk, i64 %i.bm ; 2 uses
  %i.bp = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !1029, !noalias !1030
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !alias.scope !1031, !noalias !1027
  store <2 x ptr> %i.bp, ptr %i.bo, align 8, !alias.scope !1032, !noalias !1033
  %i.bq = xor i64 %.sroa.0.016.i.i, -2
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bt = getelementptr [16 x i8], ptr %i.bk, i64 %i.bq ; 2 uses
  %i.bu = load <2 x ptr>, ptr %i.bs, align 8, !alias.scope !1029, !noalias !1030
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !alias.scope !1031, !noalias !1027
  store <2 x ptr> %i.bu, ptr %i.bt, align 8, !alias.scope !1032, !noalias !1033
  %i.bv = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E7reverseB1a_.exit.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E12split_at_mutB1a_.exit11.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2J_4SyncEL_ENCINvMNtB18_5sliceSB13_11sort_by_keysNCNvMB1F_NtB1F_11HttpModules10add_module0E0EB1J_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E7reverseB1a_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.bh, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtB4_6marker4SendNtB2a_4SyncEL_E7reverseB1a_.exit ], [ %i.bb, %bb.p ], [ %i.az, %bb.o ] ; 2 uses
  %i.bw = lshr i64 %.sroa.023.0, 1
  %i.bx = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.by = sub nsw i64 %factor, %i.bw
  %i.bz = add nuw nsw i64 %i.bx, %factor
  %i.ca = mul i64 %i.by, %.sroa.0.0
  %i.cb = mul i64 %i.bz, %.sroa.0.0
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 false)
  %i.ce = trunc nuw nsw i64 %i.cd to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph72, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2M_4SyncEL_ENCINvMNtB1b_5sliceSB16_11sort_by_keysNCNvMB1I_NtB1I_11HttpModules10add_module0E0EB1M_.exit
  %.sroa.02.171 = phi i64 [ %.sroa.02.0, %.lr.ph72 ], [ %i.cf, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2M_4SyncEL_ENCINvMNtB1b_5sliceSB16_11sort_by_keysNCNvMB1I_NtB1I_11HttpModules10add_module0E0EB1M_.exit ] ; 2 uses
  %.sroa.023.170 = phi i64 [ %.sroa.023.0, %.lr.ph72 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2M_4SyncEL_ENCINvMNtB1b_5sliceSB16_11sort_by_keysNCNvMB1I_NtB1I_11HttpModules10add_module0E0EB1M_.exit ] ; 4 uses
  %i.cf = add i64 %.sroa.02.171, -1               ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !noundef !10
  %.not28 = icmp ult i8 %i.ch, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2M_4SyncEL_ENCINvMNtB1b_5sliceSB16_11sort_by_keysNCNvMB1I_NtB1I_11HttpModules10add_module0E0EB1M_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.170, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2M_4SyncEL_ENCINvMNtB1b_5sliceSB16_11sort_by_keysNCNvMB1I_NtB1I_11HttpModules10add_module0E0EB1M_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.171, %bb.r ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2M_4SyncEL_ENCINvMNtB1b_5sliceSB16_11sort_by_keysNCNvMB1I_NtB1I_11HttpModules10add_module0E0EB1M_.exit ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cj, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cf
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !10 ; 3 uses
  %i.cm = lshr i64 %i.cl, 1                       ; 8 uses
  %i.cn = lshr i64 %.sroa.023.170, 1              ; 6 uses
  %i.co = add nuw i64 %i.cm, %i.cn                ; 4 uses
  %i.cp = sub i64 %.sroa.09.0, %i.co
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cp ; 6 uses
  %i.cr = icmp samesign ugt i64 %i.co, %3
  %i.cs = trunc i64 %.sroa.023.170 to i1
  %i.ct = or i64 %i.cl, %.sroa.023.170
  %i.cu = trunc i64 %i.ct to i1
  %or.cond3.i = or i1 %i.cr, %i.cu
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cv = trunc i64 %i.cl to i1
  br i1 %i.cv, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cw = shl nuw nsw i64 %i.co, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2M_4SyncEL_ENCINvMNtB1b_5sliceSB16_11sort_by_keysNCNvMB1I_NtB1I_11HttpModules10add_module0E0EB1M_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cs, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cx = or i64 %i.cm, 1
  %i.cy = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2L_4SyncEL_ENCINvMNtB1a_5sliceSB15_11sort_by_keysNCNvMB1H_NtB1H_11HttpModules10add_module0E0EB1L_(ptr noalias nofree noundef nonnull align 8 %i.cq, i64 noundef range(i64 0, 576460752303423488) %i.cm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #20, !inline_history !1008
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.cm
  %i.dd = or i64 %i.cn, 1
  %i.de = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dd, i1 true)
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = xor i32 %i.dg, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2L_4SyncEL_ENCINvMNtB1a_5sliceSB15_11sort_by_keysNCNvMB1H_NtB1H_11HttpModules10add_module0E0EB1L_(ptr noalias nofree noundef nonnull align 8 %i.dc, i64 noundef range(i64 0, 576460752303423488) %i.cn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #20, !inline_history !1008
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  %i.di = icmp eq i64 %i.cm, 0
  %i.dj = icmp eq i64 %i.cn, 0
  %or.cond.i = or i1 %i.dj, %i.di
  br i1 %or.cond.i, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2D_4SyncEL_ENCINvMNtB12_5sliceSBX_11sort_by_keysNCNvMB1z_NtB1z_11HttpModules10add_module0E0EB1D_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 range(i64 0, -9223372036854775808) %i.cm) ; 2 uses
  %i.dk = icmp samesign ult i64 %3, %..i.i
  br i1 %i.dk, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtCskeugdADtBsi_12pingora_core7modules4http17HttpModuleBuilderNtNtBa_6marker4SendNtB2D_4SyncEL_ENCINvMNtB12_5sliceSBX_11sort_by_keysNCNvMB1z_NtB1z_11HttpModules10add_module0E0EB1D_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.cm ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.cm, %i.cn  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.dl, ptr %i.cq
  %i.dm = shl nuw nsw i64 %..i.i, 4               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.dm, i1 false), !alias.scope !1038
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 %i.dm ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc18.i
  %.sroa.13.0.i = phi ptr [ %i.ee, %.noexc18.i ], [ %i.dl, %.critedge.i ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.eg, %.noexc18.i ], [ %i.dn, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.dq, %.noexc18.i ], [ %i.m, %.critedge.i ]
  %i.do = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -16 ; 2 uses
  %.val.i.i = load ptr, ptr %i.dp, align 8, !alias.scope !1037, !noalias !1039, !nonnull !10, !noundef !10
  %i.dr = getelementptr i8, ptr %.sroa.7.0.i, i64 -8
  %.val12.i.i = load ptr, ptr %i.dr, align 8, !alias.scope !1037, !noalias !1039, !nonnull !10, !align !14, !noundef !10
  %.val13.i.i = load ptr, ptr %i.do, align 8, !alias.scope !1036, !noalias !1040 ; 2 uses
  %i.ds = getelementptr i8, ptr %.sroa.13.0.i, i64 -8
  %.val14.i.i = load ptr, ptr %i.ds, align 8, !alias.scope !1036, !noalias !1040 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession22retry_buffer_truncated
declare noundef zeroext i1 @_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession22retry_buffer_truncated(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(464)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession3new(ptr dead_on_unwind noalias nofree noundef writable sret([464 x i8]) align 8 captures(none) dereferenceable(464), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession21get_headers_raw_bytes(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v26serverNtB4_11HttpSession28pseudo_raw_h1_request_header(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession21get_headers_raw_bytes(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(464)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2awuzAz5vY4_5tokio4sync7oneshotNtB2_4Task9drop_task(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs9_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotNtB5_5State12set_complete(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs9_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotNtB5_5State4load(ptr noundef nonnull align 8, i8 noundef range(i8 0, 5)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2awuzAz5vY4_5tokio4sync7oneshotNtB2_4Task8set_task(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1r_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEENCNvMs9_BZ_BW_3new0ECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4SlotNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseEENCNvMs9_BZ_BW_3new0EB2b_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtCs2awuzAz5vY4_5tokio4util11linked_list10LinkedListINtNtNtB1t_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB2m_9scheduler14current_thread6HandleEEEENCNvMs9_BZ_BW_3new0ECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtCs2awuzAz5vY4_5tokio4util11linked_list10LinkedListINtNtNtB1t_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB2m_9scheduler12multi_thread6handle6HandleEEEENCNvMs9_BZ_BW_3new0ECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer6BufferNtNtB1v_5frame5FrameEENCNvMs9_BZ_BW_3new0ECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailENCNvMs9_BZ_BW_3new0ECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io16registration_set6SyncedENCNvMs9_BZ_BW_3new0ECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerENCNvMs9_BZ_BW_3new0ECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 4) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardbENCNvMse_BZ_BW_3new0ECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8, i1 noundef zeroext, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs3_Cse0v0U5LqnG1_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB22_10connection14ConnectionMetaEEEE10get_or_tryNCINvB2_6get_orNCNvMs_B20_INtB20_3LrulB2D_E3pop0E0uECskeugdADtBsi_12pingora_core(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs3_Cse0v0U5LqnG1_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB22_10connection14ConnectionMetaEEEE10get_or_tryNCINvB2_6get_orNCNvMs_B20_INtB20_3LrulB2D_E3put0E0uECskeugdADtBsi_12pingora_core(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtNtCs2awuzAz5vY4_5tokio4sync6notifyNtB5_6Notify10notify_one(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #10

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskeugdADtBsi_12pingora_core(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCsV59zIgVS5P_9getrandom8backends27linux_android_with_fallback4init() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RINvNtNtNtCsV59zIgVS5P_9getrandom8backends8use_file9util_libc14sys_fill_exactNCNvNtB6_27linux_android_with_fallback10fill_inner0ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef i32 @_RNvNtNtCsV59zIgVS5P_9getrandom8backends27linux_android_with_fallback17use_file_fallback(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #14

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCshOOEgrNSCIs_4rand4rngs6thread10thread_rng() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 4 ptr @_RINvXNtCshOOEgrNSCIs_4rand3seqSNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtB3_11SliceRandom6chooseNtNtNtB5_4rngs6thread9ThreadRngECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 288230376151711744), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsg_NtNtNtCskeugdADtBsi_12pingora_core9protocols2l46streamNtB5_6StreamNtNtNtCs2awuzAz5vY4_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef align 8 dereferenceable(344), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtNtCs2awuzAz5vY4_5tokio2io4util10read_exact3eof() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRbNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtCskKLDkoKarTP_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtCsG258MDvU3F_3std4timeNtB5_10SystemTimeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtNtCs2awuzAz5vY4_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEE9drop_slowCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerbEE9drop_slowCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsaHowi4STlW6_9hashbrown3rawINtB5_7RawIterTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2o_10connection14ConnectionMetaEEEEE13drop_elementsCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net11socket_addr10SocketAddrNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRTttENtB6_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCsaHowi4STlW6_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB1g_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2O_10connection14ConnectionMetaEEEENtNtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6global6GlobalECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtNtNtCshOOEgrNSCIs_4rand4rngs7adapter9reseeding12ReseedingRngNtNtCsiZkILOpdhTx_11rand_chacha6chacha12ChaCha12CoreNtNtCsdOELMQXDeDk_9rand_core2os5OsRngEEE9drop_slowB1r_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { noinline }
attributes #21 = { noinline noreturn }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { cold }
attributes #26 = { inlinehint }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 2, !"RtLibUseGOT", i32 1}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!9 = !{i16 0, i16 3}
!10 = !{}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{i64 0, i64 3}
!14 = !{i64 8}
!15 = !{ptr @_RNvXs0_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_6SenderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core}
!16 = !{ptr @_RNvXs0_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_6SenderuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core}
!17 = !{i8 0, i8 5}
!18 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4sync6notify8NotifiedECskeugdADtBsi_12pingora_core}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!"branch_weights", i32 4001, i32 4000000}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{i8 0, i8 2}
!24 = !{i8 0, i8 4}
!25 = !{i64 0, i64 2}
!26 = !{i64 4}
!27 = !{i64 0, i64 -9223372036854775807}
!28 = !{i16 0, i16 2}
!29 = !{i64 0, i64 7}
!30 = !{i32 -1, i32 1000000000}
!31 = !{!"branch_weights", i32 -294967296, i32 6003000}
!32 = !{!"branch_weights", i32 2002, i32 2000}
!33 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!34 = !{i8 0, i8 3}
!35 = !{i32 0, i32 134}
!36 = distinct !{!36, !"_RNvCsV59zIgVS5P_9getrandom4fill"}
!37 = distinct !{!37, !36, !"_RNvCsV59zIgVS5P_9getrandom4fill: argument 0"}
!38 = distinct !{!38, !"_RNvNtNtCsV59zIgVS5P_9getrandom8backends27linux_android_with_fallback10fill_inner"}
!39 = distinct !{!39, !38, !"_RNvNtNtCsV59zIgVS5P_9getrandom8backends27linux_android_with_fallback10fill_inner: argument 0"}
!40 = distinct !{!40, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxAAyj4_j2_E3newCskeugdADtBsi_12pingora_core"}
!41 = distinct !{!41, !40, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxAAyj4_j2_E3newCskeugdADtBsi_12pingora_core: argument 0"}
!42 = !{!39, !37}
!43 = !{!41}
!44 = distinct !{!44, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECskeugdADtBsi_12pingora_core"}
!45 = distinct !{!45, !44, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECskeugdADtBsi_12pingora_core: argument 0"}
!46 = !{!45}
!47 = distinct !{!47, !"_RNvXsJ_NtCsaHowi4STlW6_9hashbrown3rawINtB5_8RawDrainTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBS_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2p_10connection14ConnectionMetaEEEEENtNtNtB1q_3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!48 = distinct !{!48, !47, !"_RNvXsJ_NtCsaHowi4STlW6_9hashbrown3rawINtB5_8RawDrainTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBS_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2p_10connection14ConnectionMetaEEEEENtNtNtB1q_3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!49 = !{!48}
!50 = distinct !{!50, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEECskeugdADtBsi_12pingora_core"}
!51 = distinct !{!51, !50, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEECskeugdADtBsi_12pingora_core: argument 0"}
!52 = distinct !{!52, !"_RNvXs7_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_5InnerINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!53 = distinct !{!53, !52, !"_RNvXs7_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_5InnerINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!54 = !{!53, !51}
!55 = !{!51}
!56 = distinct !{!56, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerbEECskeugdADtBsi_12pingora_core"}
!57 = distinct !{!57, !56, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerbEECskeugdADtBsi_12pingora_core: argument 0"}
!58 = distinct !{!58, !"_RNvXs7_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_5InnerbENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!59 = distinct !{!59, !58, !"_RNvXs7_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_5InnerbENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!60 = !{!59, !57}
!61 = distinct !{!61, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEECskeugdADtBsi_12pingora_core"}
!62 = distinct !{!62, !61, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEECskeugdADtBsi_12pingora_core: argument 0"}
!63 = distinct !{!63, !"_RNvXs7_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_5InneruENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!64 = distinct !{!64, !63, !"_RNvXs7_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_5InneruENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!65 = !{!64, !62}
!66 = distinct !{!66, !"_RNvXs0_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_6SenderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!67 = distinct !{!67, !66, !"_RNvXs0_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_6SenderINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!68 = distinct !{!68, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEEECskeugdADtBsi_12pingora_core"}
!69 = distinct !{!69, !68, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEEECskeugdADtBsi_12pingora_core: argument 0"}
!70 = distinct !{!70, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtBG_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECskeugdADtBsi_12pingora_core"}
!71 = distinct !{!71, !70, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtBG_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECskeugdADtBsi_12pingora_core: argument 0"}
!72 = distinct !{!72, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!73 = distinct !{!73, !72, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!74 = distinct !{!74, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEEECskeugdADtBsi_12pingora_core"}
!75 = distinct !{!75, !74, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB12_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEEECskeugdADtBsi_12pingora_core: argument 0"}
!76 = distinct !{!76, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtBG_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECskeugdADtBsi_12pingora_core"}
!77 = distinct !{!77, !76, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtBG_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECskeugdADtBsi_12pingora_core: argument 0"}
!78 = distinct !{!78, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!79 = distinct !{!79, !78, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerINtNtB7_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!80 = !{!67}
!81 = !{!69}
!82 = !{!73, !71, !69}
!83 = !{!75}
!84 = !{!79, !77, !75}
!85 = distinct !{!85, !"_RNvXs0_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_6SenderuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!86 = distinct !{!86, !85, !"_RNvXs0_NtNtCs2awuzAz5vY4_5tokio4sync7oneshotINtB5_6SenderuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!87 = distinct !{!87, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECskeugdADtBsi_12pingora_core"}
!88 = distinct !{!88, !87, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECskeugdADtBsi_12pingora_core: argument 0"}
!89 = distinct !{!89, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEECskeugdADtBsi_12pingora_core"}
!90 = distinct !{!90, !89, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEECskeugdADtBsi_12pingora_core: argument 0"}
!91 = distinct !{!91, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!92 = distinct !{!92, !91, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!93 = distinct !{!93, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECskeugdADtBsi_12pingora_core"}
!94 = distinct !{!94, !93, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEEECskeugdADtBsi_12pingora_core: argument 0"}
!95 = distinct !{!95, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEECskeugdADtBsi_12pingora_core"}
!96 = distinct !{!96, !95, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEECskeugdADtBsi_12pingora_core: argument 0"}
!97 = distinct !{!97, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!98 = distinct !{!98, !97, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!99 = !{!86}
!100 = !{!88}
!101 = !{!92, !90, !88}
!102 = !{!94}
!103 = !{!98, !96, !94}
!104 = distinct !{!104, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECskeugdADtBsi_12pingora_core"}
!105 = distinct !{!105, !104, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECskeugdADtBsi_12pingora_core: argument 0"}
!106 = distinct !{!106, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECskeugdADtBsi_12pingora_core"}
!107 = distinct !{!107, !106, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECskeugdADtBsi_12pingora_core: argument 0"}
!108 = !{i64 0, i64 -9223372036854775808}
!109 = !{i64 1, i64 536870913}
!110 = !{!105}
!111 = !{!107}
!112 = !{!107, !105}
!113 = distinct !{null, null, null, null, null, null}
!114 = distinct !{!114, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEEE3newCskeugdADtBsi_12pingora_core"}
!115 = distinct !{!115, !114, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SharedbEEE3newCskeugdADtBsi_12pingora_core: argument 0"}
!116 = !{!115}
!117 = distinct !{!117, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerIBv_NtCsfsXztIhCltD_13pingora_error5ErrorEEEE3newCskeugdADtBsi_12pingora_core"}
!118 = distinct !{!118, !117, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerIBv_NtCsfsXztIhCltD_13pingora_error5ErrorEEEE3newCskeugdADtBsi_12pingora_core: argument 0"}
!119 = !{!118}
!120 = distinct !{!120, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerbEEE3newCskeugdADtBsi_12pingora_core"}
!121 = distinct !{!121, !120, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InnerbEEE3newCskeugdADtBsi_12pingora_core: argument 0"}
!122 = !{!121}
!123 = distinct !{!123, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEE3newCskeugdADtBsi_12pingora_core"}
!124 = distinct !{!124, !123, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5InneruEEE3newCskeugdADtBsi_12pingora_core: argument 0"}
!125 = !{!124}
!126 = distinct !{!126, !"_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramCommandECskeugdADtBsi_12pingora_core"}
!127 = distinct !{!127, !126, !"_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramCommandECskeugdADtBsi_12pingora_core: argument 0"}
!128 = distinct !{!128, !"_RNvXsl_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramCommandNtB5_13CostAccessors11total_count"}
!129 = distinct !{!129, !128, !"_RNvXsl_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramCommandNtB5_13CostAccessors11total_count: argument 0"}
!130 = distinct !{!130, !"_RNvXsl_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramCommandNtB5_13CostAccessors11total_count"}
!131 = distinct !{!131, !130, !"_RNvXsl_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramCommandNtB5_13CostAccessors11total_count: argument 0"}
!132 = distinct !{!132, !"_RNvXsl_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramCommandNtB5_13CostAccessors15set_total_count"}
!133 = distinct !{!133, !132, !"_RNvXsl_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramCommandNtB5_13CostAccessors15set_total_count: argument 0"}
!134 = distinct !{!134, !"LVerDomain"}
!135 = distinct !{!135, !134}
!136 = distinct !{!136, !134}
!137 = distinct !{!137, !19, !20}
!138 = distinct !{!138, !19}
!139 = distinct !{!139, !"_RNvXsl_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramCommandNtB5_13CostAccessors12set_bit_cost"}
!140 = distinct !{!140, !139, !"_RNvXsl_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramCommandNtB5_13CostAccessors12set_bit_cost: argument 0"}
!141 = distinct !{!141, !19, !20}
!142 = distinct !{!142, !19, !20}
!143 = distinct !{!143, !20, !19}
!144 = distinct !{!144, !20, !19}
!145 = !{!127}
!146 = !{!129, !127}
!147 = !{!131, !127}
!148 = !{!133, !127}
!149 = !{!127, !135}
!150 = !{!136}
!151 = !{!127, !136}
!152 = !{!140}
!153 = distinct !{!153, !"_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core"}
!154 = distinct !{!154, !153, !"_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core: argument 0"}
!155 = distinct !{!155, !"_RNvXsi_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramLiteralNtB5_13CostAccessors11total_count"}
!156 = distinct !{!156, !155, !"_RNvXsi_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramLiteralNtB5_13CostAccessors11total_count: argument 0"}
!157 = distinct !{!157, !"_RNvXsi_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramLiteralNtB5_13CostAccessors11total_count"}
!158 = distinct !{!158, !157, !"_RNvXsi_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramLiteralNtB5_13CostAccessors11total_count: argument 0"}
!159 = distinct !{!159, !"_RNvXsi_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramLiteralNtB5_13CostAccessors15set_total_count"}
!160 = distinct !{!160, !159, !"_RNvXsi_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramLiteralNtB5_13CostAccessors15set_total_count: argument 0"}
!161 = distinct !{!161, !"LVerDomain"}
!162 = distinct !{!162, !161}
!163 = distinct !{!163, !161}
!164 = distinct !{!164, !19, !20}
!165 = distinct !{!165, !19}
!166 = distinct !{!166, !"_RNvXsi_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramLiteralNtB5_13CostAccessors12set_bit_cost"}
!167 = distinct !{!167, !166, !"_RNvXsi_NtNtCsiRgJJXJ4lb7_6brotli3enc9histogramNtB5_16HistogramLiteralNtB5_13CostAccessors12set_bit_cost: argument 0"}
!168 = distinct !{!168, !19, !20}
end_hunk_1
