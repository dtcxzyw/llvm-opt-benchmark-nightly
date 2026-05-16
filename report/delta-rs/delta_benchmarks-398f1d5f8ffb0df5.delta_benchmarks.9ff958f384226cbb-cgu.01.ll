inline.NumInlined: 8088
inline.NumDeleted: 2392
begin_hunk_0_@_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %.sroa.1129.073 = phi i8 [ undef, %.lr.ph ], [ %.sroa.1129.1, %_RNvXshJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 2 uses
  %i.y = add i64 %.sroa.10.075, -1                ; 2 uses
  %i.z = icmp eq ptr %.sroa.024.078, %i.u
  br i1 %i.z, label %.thread, label %bb.d

.thread:                                          ; preds = %_RNvXshJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %2, ptr %i.t, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

.loopexit:                                        ; preds = %bb.i, %bb.m, %bb.n, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 664
  %i.ab = add nuw nsw i64 %.sroa.7.076, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7680)
  %i.ac = load i64, ptr %.sroa.024.078, align 8, !range !267, !alias.scope !7680, !noalias !7683, !noundef !3 ; 3 uses
  %i.ad = icmp ne i64 %i.ac, 70
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = add nsw i64 %i.ac, -69
  %i.af = icmp samesign ugt i64 %i.ac, 68
  %i.ag = select i1 %i.af, i64 %i.ae, i64 1
  switch i64 %i.ag, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.i
    i64 2, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 336
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7685
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7689)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ah)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 392
  %i.ak = load i32, ptr %i.aj, align 8, !range !7691, !alias.scope !7689, !noalias !7686, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.al, i64 32, i1 false), !alias.scope !7692
  store i32 %i.ak, ptr %i.x, align 8, !alias.scope !7686, !noalias !7689
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7693)
  %i.am = load i64, ptr %i.ai, align 8, !range !172, !alias.scope !7693, !noalias !7696, !noundef !3
  %i.an = tail call i64 @llvm.usub.sat.i64(i64 %i.am, i64 68)
  switch i64 %i.an, label %default.unreachable [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.p
  ]

default.unreachable:                              ; preds = %bb.l, %.noexc12, %.noexc
  unreachable

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7698
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ai) #28
          to label %.noexc20 unwind label %bb.o, !inline_history !7699

.noexc20:                                         ; preds = %bb.g
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8, !noalias !7700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 24, i1 false), !noalias !7700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.8.sroa.0, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.8.0..sroa_idx, i64 288, i1 false), !noalias !7700
  %.sroa.8.sroa.4.0.copyload = load i64, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8, !noalias !7700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7698
  br label %bb.p

bb.h:                                             ; preds = %.noexc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7701), !noalias !7683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7704
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !7706, !noalias !7709, !nonnull !3, !noundef !3
  %i.ar = load i64, ptr %i.ao, align 8, !alias.scope !7706, !noalias !7709, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aq, i64 noundef %i.ar) #28
          to label %.noexc21 unwind label %bb.o, !inline_history !7699

.noexc21:                                         ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !7700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7704
  br label %bb.p

bb.i:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 328 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7685
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(664) %.sroa.024.078) #28
          to label %.noexc12 unwind label %.loopexit, !inline_history !7711

.noexc12:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.691)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7712)
  %i.at = load i64, ptr %i.as, align 8, !range !172, !alias.scope !7712, !noalias !7715, !noundef !3
  %i.au = tail call i64 @llvm.usub.sat.i64(i64 %i.at, i64 68)
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.s
  ]

bb.j:                                             ; preds = %.noexc12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7717
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.as) #28
          to label %.noexc17 unwind label %bb.r, !inline_history !7699

.noexc17:                                         ; preds = %bb.j
  %.sroa.089.0.copyload = load i64, ptr %i.d, align 8, !noalias !7718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.691, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.691.0..sroa_idx, i64 24, i1 false), !noalias !7718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i64 40, i1 false), !noalias !7718
  %.sroa.792.0.copyload = load i8, ptr %.sroa.792.0..sroa_idx, align 8, !noalias !7718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %.sroa.893, ptr noundef nonnull align 1 dereferenceable(255) %.sroa.893.0..sroa_idx, i64 255, i1 false), !noalias !7718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7717
  br label %bb.s

bb.k:                                             ; preds = %.noexc12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7719), !noalias !7683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7722
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 352
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 344
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !7724, !noalias !7727, !nonnull !3, !noundef !3
  %i.ay = load i64, ptr %i.av, align 8, !alias.scope !7724, !noalias !7727, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ax, i64 noundef %i.ay) #28
          to label %.noexc18 unwind label %bb.r, !inline_history !7699

.noexc18:                                         ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.691, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !7718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7722
  br label %bb.s

bb.l:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.649)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7729)
  %i.ba = load i64, ptr %i.az, align 8, !range !172, !alias.scope !7729, !noalias !7732, !noundef !3
  %i.bb = tail call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 68)
  switch i64 %i.bb, label %default.unreachable [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %.noexc13
  ]

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7734
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.az) #28
          to label %.noexc15 unwind label %.loopexit, !inline_history !7699

.noexc15:                                         ; preds = %bb.m
  %.sroa.047.0.copyload = load i64, ptr %i.f, align 8, !noalias !7729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.649, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.649.0..sroa_idx, i64 24, i1 false), !noalias !7729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.750.sroa.0, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.750.0..sroa_idx, i64 288, i1 false), !noalias !7729
  %.sroa.750.sroa.4.0.copyload = load i64, ptr %.sroa.750.sroa.4.0..sroa.750.0..sroa_idx.sroa_idx, align 8, !noalias !7729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7734
  br label %.noexc13

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7738
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !7740, !noalias !7743, !nonnull !3, !noundef !3
  %i.bf = load i64, ptr %i.bc, align 8, !alias.scope !7740, !noalias !7743, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.be, i64 noundef %i.bf) #28
          to label %.noexc16 unwind label %.loopexit, !inline_history !7699

.noexc16:                                         ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.649, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !7729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7738
  br label %.noexc13

.noexc13:                                         ; preds = %.noexc16, %.noexc15, %bb.l
  %.sroa.750.sroa.4.1 = phi i64 [ %.sroa.750.sroa.4.0.copyload, %.noexc15 ], [ %.sroa.750.sroa.4.0, %.noexc16 ], [ %.sroa.750.sroa.4.0, %bb.l ] ; 2 uses
  %.sroa.047.0 = phi i64 [ %.sroa.047.0.copyload, %.noexc15 ], [ 69, %.noexc16 ], [ 70, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.649, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.6.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.750.sroa.0, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.649)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750.sroa.0)
  br label %_RNvXshJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.h, %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %bb.u unwind label %bb.q

bb.p:                                             ; preds = %.noexc, %.noexc20, %.noexc21
  %.sroa.8.sroa.4.1 = phi i64 [ %.sroa.8.sroa.4.0.copyload, %.noexc20 ], [ %.sroa.8.sroa.4.0, %.noexc21 ], [ %.sroa.8.sroa.4.0, %.noexc ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %.noexc20 ], [ 69, %.noexc21 ], [ 70, %.noexc ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 400
  %.val5.i = load i8, ptr %i.bh, align 1, !range !4101, !alias.scope !7680, !noalias !7683, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.sroa.7.sroa.7, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.6.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.8.sroa.0, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7685
  br label %_RNvXshJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.q:                                             ; preds = %bb.o, %bb.r
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !7683, !inline_history !7711
  unreachable

bb.r:                                             ; preds = %bb.k, %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %i.g) #23
          to label %bb.u unwind label %bb.q, !noalias !7683, !inline_history !7711

bb.s:                                             ; preds = %.noexc12, %.noexc17, %.noexc18
  %.sroa.792.1 = phi i8 [ %.sroa.792.0.copyload, %.noexc17 ], [ %.sroa.792.0, %.noexc18 ], [ %.sroa.792.0, %.noexc12 ] ; 2 uses
  %.sroa.089.0 = phi i64 [ %.sroa.089.0.copyload, %.noexc17 ], [ 69, %.noexc18 ], [ 70, %.noexc12 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 656
  %.val.i = load i8, ptr %i.bk, align 1, !range !4101, !alias.scope !7680, !noalias !7683, !noundef !3
  %.sroa.025.0.copyload26 = load i64, ptr %i.g, align 8, !noalias !7680
  %.sroa.6.sroa.0.0.copyload52 = load i64, ptr %.sroa.6.0..sroa_idx27, align 8, !noalias !7680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx27.sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.6.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx27.sroa_idx, i64 288, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.7.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.691, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.sroa.7.sroa.7.320..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(255) %.sroa.893, i64 255, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.691)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.893)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7685
  br label %_RNvXshJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXshJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.s, %bb.p, %.noexc13
  %.sroa.750.sroa.4.2 = phi i64 [ %.sroa.750.sroa.4.0, %bb.p ], [ %.sroa.750.sroa.4.0, %bb.s ], [ %.sroa.750.sroa.4.1, %.noexc13 ]
  %.sroa.8.sroa.4.2 = phi i64 [ %.sroa.8.sroa.4.1, %bb.p ], [ %.sroa.8.sroa.4.0, %bb.s ], [ %.sroa.8.sroa.4.0, %.noexc13 ]
  %.sroa.6.sroa.7.sroa.6.0 = phi i64 [ %.sroa.8.sroa.4.1, %bb.p ], [ %.sroa.089.0, %bb.s ], [ %.sroa.750.sroa.4.1, %.noexc13 ]
  %.sroa.792.2 = phi i8 [ %.sroa.792.0, %bb.p ], [ %.sroa.792.1, %bb.s ], [ %.sroa.792.0, %.noexc13 ]
  %.sroa.1129.1 = phi i8 [ %.sroa.1129.073, %bb.p ], [ %.val.i, %bb.s ], [ %.sroa.1129.073, %.noexc13 ] ; 2 uses
  %.sroa.1028.1 = phi i8 [ %.val5.i, %bb.p ], [ %.sroa.792.1, %bb.s ], [ %.sroa.1028.074, %.noexc13 ] ; 2 uses
  %.sroa.025.0 = phi i64 [ 69, %bb.p ], [ %.sroa.025.0.copyload26, %bb.s ], [ 71, %.noexc13 ]
  %.sroa.6.sroa.0.0 = phi i64 [ %.sroa.0.0, %bb.p ], [ %.sroa.6.sroa.0.0.copyload52, %bb.s ], [ %.sroa.047.0, %.noexc13 ]
  %i.bl = getelementptr inbounds nuw [664 x i8], ptr %i.q, i64 %.sroa.7.076 ; 9 uses
  store i64 %.sroa.025.0, ptr %i.bl, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.sroa.6.sroa.0.0, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6, i64 24, i1 false)
  %.sroa.442.sroa.5.0..sroa.442.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.442.sroa.5.0..sroa.442.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.6.sroa.7.sroa.0, i64 288, i1 false)
  %.sroa.442.sroa.5.sroa.4.0..sroa.442.sroa.5.0..sroa.442.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 328
  store i64 %.sroa.6.sroa.7.sroa.6.0, ptr %.sroa.442.sroa.5.sroa.4.0..sroa.442.sroa.5.0..sroa.442.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.442.sroa.5.sroa.5.0..sroa.442.sroa.5.0..sroa.442.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.442.sroa.5.sroa.5.0..sroa.442.sroa.5.0..sroa.442.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.sroa.7.sroa.7, i64 64, i1 false)
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 400
  store i8 %.sroa.1028.1, ptr %.sroa.543.0..sroa_idx, align 8
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %.sroa.644.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(255) %.sroa.11, i64 255, i1 false)
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 656
  store i8 %.sroa.1129.1, ptr %.sroa.745.0..sroa_idx, align 8
  %i.bm = icmp eq i64 %i.y, 0
  br i1 %i.bm, label %.thread, label %bb.c

bb.t:                                             ; preds = %bb.u
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.u:                                             ; preds = %.loopexit, %bb.o, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.bj, %bb.r ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.076, ptr %i.t, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.j) #23
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast13SetAssignmentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 25620477880152156) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.015 = alloca [352 x i8], align 8         ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 360)
  %i.f = load i64, ptr %i.d, align 8, !range !4, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !43, !noundef !3 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.m = icmp ule i64 %2, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.i, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw [360 x i8], ptr %1, i64 %2
  %i.q = icmp eq i64 %i.i, 0
  br i1 %i.q, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  %.sroa.015.328..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015, i64 328
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.10.038 = phi i64 [ %i.i, %.lr.ph ], [ %i.r, %bb.g ]
  %.sroa.014.037 = phi ptr [ %1, %.lr.ph ], [ %i.t, %bb.g ] ; 6 uses
  %.sroa.7.036 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.g ] ; 3 uses
  %i.r = add i64 %.sroa.10.038, -1                ; 2 uses
  %i.s = icmp eq ptr %.sroa.014.037, %i.p
  br i1 %i.s, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.g, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %2, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.014.037, i64 360
  %i.u = add nuw nsw i64 %.sroa.7.036, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7745)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.037, i64 352
  %i.w = load i8, ptr %i.v, align 8, !range !7748, !alias.scope !7745, !noalias !7749, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7751
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7752)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7755
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.014.037, i64 344
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.037, i64 336
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !7757, !noalias !7760, !nonnull !3, !noundef !3
  %i.aa = load i64, ptr %i.x, align 8, !alias.scope !7757, !noalias !7760, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.z, i64 noundef %i.aa) #28
          to label %.noexc unwind label %.loopexit, !inline_history !7762

.noexc:                                           ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !7752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7751
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.014.037)
          to label %bb.g unwind label %bb.e, !noalias !7749, !inline_history !7763

bb.e:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.c) #23
          to label %bb.i unwind label %bb.f, !noalias !7749, !inline_history !7763

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !7749, !inline_history !7763
  unreachable

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015.328..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.015, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7751
  %i.ad = getelementptr inbounds nuw [360 x i8], ptr %i.l, i64 %.sroa.7.036 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.ad, ptr noundef nonnull align 8 dereferenceable(352) %.sroa.015, i64 352, i1 false)
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 352
  store i8 %i.w, ptr %.sroa.424.0..sroa_idx, align 8
  %i.ae = icmp eq i64 %i.r, 0
  br i1 %i.ae, label %.thread, label %bb.c

bb.h:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %.loopexit, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.036, ptr %i.o, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast13SetAssignmentEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.e) #23
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 104811045873349726) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.431 = alloca [80 x i8], align 8          ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.518 = alloca [64 x i8], align 8          ; 3 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 88)
  %i.f = load i64, ptr %i.d, align 8, !range !4, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !43, !noundef !3 ; 5 uses
end_hunk_0
begin_hunk_1_@_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks:bb.a
bb.j:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.aj = load i64, ptr %.sroa.015.051, align 8, !range !69, !alias.scope !7805, !noalias !7808, !noundef !3
  %.not6.i = icmp eq i64 %i.aj, 69
  br i1 %.not6.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7810
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(456) %.sroa.015.051)
          to label %bb.n unwind label %bb.m, !noalias !7808, !inline_history !7817

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.c) #23
          to label %bb.h unwind label %bb.o, !noalias !7808, !inline_history !7817

bb.n:                                             ; preds = %bb.l
  %.sroa.01.0.copyload2.i = load i64, ptr %i.a, align 8, !noalias !7810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx3.i, i64 320, i1 false), !noalias !7810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7810
  br label %bb.p

bb.o:                                             ; preds = %bb.i, %bb.m
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !7808, !inline_history !7817
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.k
  %.sroa.01.0.i = phi i64 [ %.sroa.01.0.copyload2.i, %bb.n ], [ 69, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.534)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.534, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.635)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.635, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.433)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.433, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7810
  %i.am = getelementptr inbounds nuw [456 x i8], ptr %i.m, i64 %.sroa.7.050 ; 5 uses
  store i64 %.sroa.01.0.i, ptr %i.am, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.433, i64 320, i1 false)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.534, i64 64, i1 false)
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.635.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.635, i64 56, i1 false)
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 448
  store i8 %i.z, ptr %.sroa.736.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.433)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.534)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635)
  %i.an = icmp eq i64 %i.u, 0
  br i1 %i.an, label %.thread, label %bb.c

bb.q:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.r:                                             ; preds = %.loopexit, %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.i ], [ %.pn.i, %bb.h ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.050, ptr %i.p, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.f) #23
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 27450512014448738) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [328 x i8], align 8               ; 10 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [328 x i8], align 8               ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.18.sroa.9 = alloca [6 x i8], align 2     ; 6 uses
  %.sroa.18.sroa.11.sroa.0.sroa.8 = alloca [296 x i8], align 8 ; 5 uses
  %.sroa.18.sroa.11.sroa.9 = alloca [7 x i8], align 1 ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 336)
  %i.i = load i64, ptr %i.g, align 8, !range !4, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !43, !noundef !3 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #21
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = icmp ule i64 %2, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.l, ptr %i.h, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw [336 x i8], ptr %1, i64 %2
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.18.8..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.18.sroa.9.0..sroa.18.8..sroa_idx35.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.18.sroa.10.0..sroa.18.8..sroa_idx35.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.18.sroa.11.0..sroa.18.8..sroa_idx35.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.sroa.764.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.18.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.18.sroa.9.0..sroa.18.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.18.sroa.10.0..sroa.18.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.18.sroa.11.sroa.8.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %.sroa.18.sroa.11.sroa.9.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 321
  %.sroa.18.8..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.18.sroa.9.0..sroa.18.8..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.18.sroa.10.0..sroa.18.8..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.18.sroa.11.0..sroa.18.8..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.771.sroa.4.0..sroa.771.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.18.sroa.11.sroa.0.sroa.8.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx35.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.18.sroa.11.sroa.0.sroa.8.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  %.sroa.18.sroa.11.sroa.0.sroa.0.0 = phi i64 [ undef, %.lr.ph ], [ %.sroa.18.sroa.11.sroa.0.sroa.0.1, %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 4 uses
  %.sroa.18.sroa.11.sroa.8.094 = phi i8 [ undef, %.lr.ph ], [ %.sroa.18.sroa.11.sroa.8.1, %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 7 uses
  %.sroa.024.093 = phi ptr [ %1, %.lr.ph ], [ %i.w, %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 15 uses
  %.sroa.18.sroa.10.092 = phi ptr [ undef, %.lr.ph ], [ %.sroa.18.sroa.10.1, %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 2 uses
  %.sroa.7.090 = phi i64 [ 0, %.lr.ph ], [ %i.x, %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.10.089 = phi i64 [ %i.l, %.lr.ph ], [ %i.u, %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ]
  %.sroa.18.sroa.0.088 = phi i8 [ undef, %.lr.ph ], [ %.sroa.18.sroa.0.1, %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 2 uses
  %.sroa.649.087 = phi ptr [ undef, %.lr.ph ], [ %.sroa.649.1, %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 9 uses
  %.sroa.448.086 = phi i8 [ undef, %.lr.ph ], [ %.sroa.448.1, %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 9 uses
  %i.u = add i64 %.sroa.10.089, -1                ; 2 uses
  %i.v = icmp eq ptr %.sroa.024.093, %i.s
  br i1 %i.v, label %.thread, label %bb.d

.thread:                                          ; preds = %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %2, ptr %i.r, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

.loopexit:                                        ; preds = %bb.h, %bb.o, %bb.q, %bb.n, %bb.k, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 336
  %i.x = add nuw nsw i64 %.sroa.7.090, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7821)
  %i.y = load i64, ptr %.sroa.024.093, align 8, !range !2698, !alias.scope !7821, !noalias !7824, !noundef !3 ; 3 uses
  %i.z = icmp ne i64 %i.y, 73
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nsw i64 %i.y, -69
  %i.ab = icmp samesign ugt i64 %i.y, 68
  %i.ac = select i1 %i.ab, i64 %i.aa, i64 4
  switch i64 %i.ac, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 4, label %bb.n
    i64 5, label %bb.o
    i64 6, label %bb.p
    i64 7, label %bb.q
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  %.val.i = load i8, ptr %i.ad, align 1, !range !2711, !alias.scope !7821, !noalias !7824, !noundef !3
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7826
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !7827, !noalias !7830, !nonnull !3, !noundef !3
  %i.ah = load i64, ptr %i.ae, align 8, !alias.scope !7827, !noalias !7830, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ag, i64 noundef %i.ah) #28
          to label %.noexc unwind label %.loopexit, !inline_history !7832

.noexc:                                           ; preds = %bb.g
  %.sroa.11.8.copyload31 = load i8, ptr %i.f, align 8, !noalias !7821
  %.sroa.18.sroa.0.0.copyload54 = load i8, ptr %.sroa.18.8..sroa_idx36, align 1, !noalias !7821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9.0..sroa.18.8..sroa_idx36.sroa_idx, i64 6, i1 false)
  %.sroa.18.sroa.10.0.copyload59 = load ptr, ptr %.sroa.18.sroa.10.0..sroa.18.8..sroa_idx36.sroa_idx, align 8, !noalias !7821
  %i.ai = load i64, ptr %.sroa.18.sroa.11.0..sroa.18.8..sroa_idx36.sroa_idx, align 8, !noalias !7821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7826
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7826
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aj) #28
          to label %.noexc12 unwind label %.loopexit, !inline_history !7833

.noexc12:                                         ; preds = %bb.h
  %.sroa.11.8.copyload = load i8, ptr %i.e, align 8, !noalias !7821
  %.sroa.18.sroa.0.0.copyload50 = load i8, ptr %.sroa.18.8..sroa_idx, align 1, !noalias !7821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9.0..sroa.18.8..sroa_idx.sroa_idx, i64 6, i1 false)
  %.sroa.18.sroa.10.0.copyload55 = load ptr, ptr %.sroa.18.sroa.10.0..sroa.18.8..sroa_idx.sroa_idx, align 8, !noalias !7821
  %.sroa.18.sroa.11.sroa.0.sroa.0.0.copyload = load i64, ptr %.sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx, align 8, !noalias !7821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.18.sroa.11.sroa.0.sroa.8, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.18.sroa.11.sroa.0.sroa.8.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx.sroa_idx, i64 296, i1 false)
  %.sroa.18.sroa.11.sroa.8.0.copyload = load i8, ptr %.sroa.18.sroa.11.sroa.8.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx.sroa_idx, align 8, !noalias !7821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.sroa.11.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.sroa.11.sroa.9.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx.sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7826
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7834)
  %i.al = load i8, ptr %i.ak, align 8, !range !2711, !alias.scope !7834, !noalias !7837, !noundef !3
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !7834, !noalias !7837, !align !1750, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks()
          to label %.noexc21 unwind label %.loopexit, !inline_history !7839 ; 3 uses

.noexc21:                                         ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7840
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ao) #28
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.l, !inline_history !7845

bb.l:                                             ; preds = %.noexc21
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef 328, i64 noundef 8) #24, !noalias !7846
  br label %bb.s

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %.noexc21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ap, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !7840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7840
  br label %bb.m

bb.m:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.j
  %.sroa.0.0.i20 = phi ptr [ %i.ap, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ null, %bb.j ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !range !2711, !alias.scope !7834, !noalias !7837, !noundef !3 ; 2 uses
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.n:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7847)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 328
  %.val.i18 = load i8, ptr %i.at, align 1, !range !2711, !alias.scope !7847, !noalias !7850, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7852
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %.sroa.024.093) #28
          to label %.noexc14 unwind label %.loopexit, !inline_history !7853

.noexc14:                                         ; preds = %bb.n
  %.sroa.060.0.copyload = load i64, ptr %i.b, align 8, !noalias !7847
  %.sroa.461.0.copyload = load i8, ptr %.sroa.461.0..sroa_idx, align 8, !noalias !7847
  %.sroa.562.0.copyload = load i8, ptr %.sroa.562.0..sroa_idx, align 1, !noalias !7847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.663.0..sroa_idx, i64 6, i1 false)
  %.sroa.764.0.copyload = load ptr, ptr %.sroa.764.0..sroa_idx, align 8, !noalias !7847
  %.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !7847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.18.sroa.11.sroa.0.sroa.8, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7852
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7826
  invoke fastcc void @_RNvXsl_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.au) #28
          to label %.noexc15 unwind label %.loopexit, !inline_history !7833

.noexc15:                                         ; preds = %bb.o
  %.sroa.11.8.copyload30 = load i8, ptr %i.d, align 8, !noalias !7821
  %.sroa.18.sroa.0.0.copyload53 = load i8, ptr %.sroa.18.8..sroa_idx35, align 1, !noalias !7821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9.0..sroa.18.8..sroa_idx35.sroa_idx, i64 6, i1 false)
  %.sroa.18.sroa.10.0.copyload58 = load ptr, ptr %.sroa.18.sroa.10.0..sroa.18.8..sroa_idx35.sroa_idx, align 8, !noalias !7821
  %.sroa.18.sroa.11.sroa.0.sroa.0.0.copyload104 = load i64, ptr %.sroa.18.sroa.11.0..sroa.18.8..sroa_idx35.sroa_idx, align 8, !noalias !7821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.sroa.11.sroa.0.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.sroa.11.sroa.0.sroa.8.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx35.sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7826
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.p:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  %.val1.i = load i8, ptr %i.av, align 1, !range !2711, !alias.scope !7821, !noalias !7824, !noundef !3
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.q:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7854
  invoke fastcc void @_RNvXsh_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aw) #28
          to label %.noexc16 unwind label %.loopexit, !inline_history !7858

.noexc16:                                         ; preds = %bb.q
  %.sroa.067.0.copyload = load i8, ptr %i.c, align 8, !noalias !7859
  %.sroa.468.0.copyload = load i8, ptr %.sroa.468.0..sroa_idx, align 1, !noalias !7859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.569.0..sroa_idx, i64 6, i1 false)
  %.sroa.670.0.copyload = load ptr, ptr %.sroa.670.0..sroa_idx, align 8, !noalias !7859
  %.sroa.771.sroa.0.0.copyload = load i64, ptr %.sroa.771.0..sroa_idx, align 8, !noalias !7859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.sroa.11.sroa.0.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.771.sroa.4.0..sroa.771.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7854
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.i, %bb.m, %.noexc16, %bb.p, %.noexc15, %.noexc14, %.noexc12, %.noexc, %bb.f
  %.sroa.18.sroa.11.sroa.0.sroa.0.1 = phi i64 [ %.sroa.18.sroa.11.sroa.0.sroa.0.0, %bb.f ], [ %i.ai, %.noexc ], [ %.sroa.18.sroa.11.sroa.0.sroa.0.0.copyload, %.noexc12 ], [ %.sroa.18.sroa.11.sroa.0.sroa.0.0, %bb.m ], [ %.sroa.18.sroa.11.sroa.0.sroa.0.0, %bb.i ], [ %.sroa.8.sroa.0.0.copyload, %.noexc14 ], [ %.sroa.18.sroa.11.sroa.0.sroa.0.0.copyload104, %.noexc15 ], [ %.sroa.18.sroa.11.sroa.0.sroa.0.0, %bb.p ], [ %.sroa.771.sroa.0.0.copyload, %.noexc16 ] ; 2 uses
  %.sroa.448.1 = phi i8 [ %.sroa.448.086, %bb.f ], [ %.sroa.448.086, %.noexc ], [ %.sroa.448.086, %.noexc12 ], [ %i.as, %bb.m ], [ %.sroa.448.086, %bb.i ], [ %.sroa.448.086, %.noexc14 ], [ %.sroa.448.086, %.noexc15 ], [ %.sroa.448.086, %bb.p ], [ %.sroa.448.086, %.noexc16 ]
  %.sroa.649.1 = phi ptr [ %.sroa.649.087, %bb.f ], [ %.sroa.649.087, %.noexc ], [ %.sroa.649.087, %.noexc12 ], [ %.sroa.0.0.i20, %bb.m ], [ %.sroa.649.087, %bb.i ], [ %.sroa.649.087, %.noexc14 ], [ %.sroa.649.087, %.noexc15 ], [ %.sroa.649.087, %bb.p ], [ %.sroa.649.087, %.noexc16 ]
  %.sroa.18.sroa.0.1 = phi i8 [ %.sroa.18.sroa.0.088, %bb.f ], [ %.sroa.18.sroa.0.0.copyload54, %.noexc ], [ %.sroa.18.sroa.0.0.copyload50, %.noexc12 ], [ %i.as, %bb.m ], [ %.sroa.448.086, %bb.i ], [ %.sroa.562.0.copyload, %.noexc14 ], [ %.sroa.18.sroa.0.0.copyload53, %.noexc15 ], [ %.sroa.18.sroa.0.088, %bb.p ], [ %.sroa.468.0.copyload, %.noexc16 ] ; 2 uses
  %.sroa.11.0 = phi i8 [ %.val.i, %bb.f ], [ %.sroa.11.8.copyload31, %.noexc ], [ %.sroa.11.8.copyload, %.noexc12 ], [ 1, %bb.m ], [ 0, %bb.i ], [ %.sroa.461.0.copyload, %.noexc14 ], [ %.sroa.11.8.copyload30, %.noexc15 ], [ %.val1.i, %bb.p ], [ %.sroa.067.0.copyload, %.noexc16 ]
  %.sroa.025.0 = phi i64 [ 69, %bb.f ], [ 70, %.noexc ], [ 71, %.noexc12 ], [ 72, %bb.m ], [ 72, %bb.i ], [ %.sroa.060.0.copyload, %.noexc14 ], [ 74, %.noexc15 ], [ 75, %bb.p ], [ 76, %.noexc16 ]
  %.sroa.18.sroa.10.1 = phi ptr [ %.sroa.18.sroa.10.092, %bb.f ], [ %.sroa.18.sroa.10.0.copyload59, %.noexc ], [ %.sroa.18.sroa.10.0.copyload55, %.noexc12 ], [ %.sroa.0.0.i20, %bb.m ], [ %.sroa.649.087, %bb.i ], [ %.sroa.764.0.copyload, %.noexc14 ], [ %.sroa.18.sroa.10.0.copyload58, %.noexc15 ], [ %.sroa.18.sroa.10.092, %bb.p ], [ %.sroa.670.0.copyload, %.noexc16 ] ; 2 uses
  %.sroa.18.sroa.11.sroa.8.1 = phi i8 [ %.sroa.18.sroa.11.sroa.8.094, %bb.f ], [ %.sroa.18.sroa.11.sroa.8.094, %.noexc ], [ %.sroa.18.sroa.11.sroa.8.0.copyload, %.noexc12 ], [ %.sroa.18.sroa.11.sroa.8.094, %bb.m ], [ %.sroa.18.sroa.11.sroa.8.094, %bb.i ], [ %.val.i18, %.noexc14 ], [ %.sroa.18.sroa.11.sroa.8.094, %.noexc15 ], [ %.sroa.18.sroa.11.sroa.8.094, %bb.p ], [ %.sroa.18.sroa.11.sroa.8.094, %.noexc16 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [336 x i8], ptr %i.o, i64 %.sroa.7.090 ; 9 uses
  store i64 %.sroa.025.0, ptr %i.ax, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i8 %.sroa.11.0, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  store i8 %.sroa.18.sroa.0.1, ptr %.sroa.546.0..sroa_idx, align 1
  %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, i64 6, i1 false)
  %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %.sroa.18.sroa.10.1, ptr %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx, align 8
  %.sroa.546.sroa.6.0..sroa.546.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 %.sroa.18.sroa.11.sroa.0.sroa.0.1, ptr %.sroa.546.sroa.6.0..sroa.546.0..sroa_idx.sroa_idx, align 8
  %.sroa.546.sroa.6.sroa.0.sroa.4.0..sroa.546.sroa.6.0..sroa.546.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(296) %.sroa.546.sroa.6.sroa.0.sroa.4.0..sroa.546.sroa.6.0..sroa.546.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.18.sroa.11.sroa.0.sroa.8, i64 296, i1 false)
  %.sroa.546.sroa.6.sroa.4.0..sroa.546.sroa.6.0..sroa.546.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 328
  store i8 %.sroa.18.sroa.11.sroa.8.1, ptr %.sroa.546.sroa.6.sroa.4.0..sroa.546.sroa.6.0..sroa.546.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.546.sroa.6.sroa.5.0..sroa.546.sroa.6.0..sroa.546.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.546.sroa.6.sroa.5.0..sroa.546.sroa.6.0..sroa.546.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.sroa.11.sroa.9, i64 7, i1 false)
  %i.ay = icmp eq i64 %i.u, 0
  br i1 %i.ay, label %.thread, label %bb.c

bb.r:                                             ; preds = %bb.s
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.s:                                             ; preds = %.loopexit, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.l ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.090, ptr %i.r, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.h) #23
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast3TagNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 192153584101141163) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.g = load i64, ptr %i.d, align 8, !range !4, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !43, !noundef !3 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #21
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = icmp ule i64 %2, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.j, ptr %i.f, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %2
  %i.r = icmp eq i64 %i.j, 0
  br i1 %i.r, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.10.026 = phi i64 [ %i.j, %.lr.ph ], [ %i.t, %bb.g ]
  %.sroa.013.025 = phi ptr [ %1, %.lr.ph ], [ %i.v, %bb.g ] ; 5 uses
  %.sroa.7.024 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.g ] ; 3 uses
  %i.t = add i64 %.sroa.10.026, -1                ; 2 uses
  %i.u = icmp eq ptr %.sroa.013.025, %i.q
  br i1 %i.u, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.g, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %2, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.025, i64 48
  %i.w = add nuw nsw i64 %.sroa.7.024, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7860
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7864)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7867
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.025, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.025, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !7869, !noalias !7872, !nonnull !3, !noundef !3
  %i.aa = load i64, ptr %i.x, align 8, !alias.scope !7869, !noalias !7872, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.z, i64 noundef %i.aa) #28
          to label %.noexc unwind label %.loopexit, !inline_history !7874

.noexc:                                           ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !7864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7867
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7860
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.025, i64 24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.g unwind label %bb.e, !noalias !7875, !inline_history !7876

bb.e:                                             ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.c) #23
          to label %bb.i unwind label %bb.f, !noalias !7875, !inline_history !7876

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !7875, !inline_history !7876
  unreachable

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7860
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.sroa.7.024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.af = icmp eq i64 %i.t, 0
  br i1 %i.af, label %.thread, label %bb.c

bb.h:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %.loopexit, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.024, ptr %i.p, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast3TagEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.f) #23
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 67818912035696881) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.534 = alloca [120 x i8], align 8         ; 6 uses
  %.sroa.5.i = alloca [120 x i8], align 8         ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.430 = alloca [120 x i8], align 8         ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 136)
  %i.f = load i64, ptr %i.d, align 8, !range !4, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
end_hunk_1
begin_hunk_2_@_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks:bb.a

bb.af:                                            ; preds = %.noexc15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1044, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1044.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7923
  br label %_RNvXsmU_NtCs4lawaffTVVK_9sqlparser3astNtB6_9SqlOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXsmU_NtCs4lawaffTVVK_9sqlparser3astNtB6_9SqlOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.af, %bb.ac, %.noexc18, %.noexc17, %.noexc16, %.noexc13, %.noexc
  %.sroa.042.0 = phi i64 [ 69, %.noexc ], [ 70, %.noexc13 ], [ %.sroa.042.0.copyload43, %bb.ac ], [ 72, %bb.af ], [ 73, %.noexc16 ], [ 74, %.noexc17 ], [ 75, %.noexc18 ]
  %.sroa.17.1 = phi i8 [ %.sroa.17.095, %.noexc ], [ %.sroa.17.095, %.noexc13 ], [ %.sroa.17.0.copyload47, %bb.ac ], [ %i.cn, %bb.af ], [ %.sroa.17.095, %.noexc16 ], [ %.sroa.17.095, %.noexc17 ], [ %.sroa.561.88.copyload, %.noexc18 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [392 x i8], ptr %i.w, i64 %.sroa.7.090 ; 4 uses
  store i64 %.sroa.042.0, ptr %i.dm, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.457.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.1044, i64 88, i1 false)
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  store i8 %.sroa.17.1, ptr %.sroa.558.0..sroa_idx, align 8
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(295) %.sroa.659.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(295) %.sroa.18, i64 295, i1 false)
  %i.dn = icmp eq i64 %i.ar, 0
  br i1 %i.dn, label %.thread, label %bb.c

bb.ag:                                            ; preds = %bb.ah
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.ab, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i23, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ %lpad.loopexit.i.i.i, %bb.m ], [ %i.dl, %bb.ae ], [ %i.dj, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store i64 %.sroa.7.090, ptr %i.z, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.p) #23
          to label %bb.ai unwind label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast9StatementNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 3431314001806093) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [2688 x i8], align 8              ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 2688)
  %i.d = load i64, ptr %i.a, align 8, !range !4, !noundef !3
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !43, !noundef !3 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #21
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.k = icmp ule i64 %2, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw [2688 x i8], ptr %1, i64 %2
  %i.o = icmp eq i64 %i.g, 0
  br i1 %i.o, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.d
  %.sroa.10.023 = phi i64 [ %i.p, %bb.d ], [ %i.g, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %.sroa.012.022 = phi ptr [ %i.s, %bb.d ], [ %1, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit ] ; 3 uses
  %.sroa.7.021 = phi i64 [ %i.r, %bb.d ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit ] ; 3 uses
  %i.p = add i64 %.sroa.10.023, -1                ; 2 uses
  %i.q = icmp eq ptr %.sroa.012.022, %i.n
  br i1 %i.q, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.d, %.lr.ph, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %2, ptr %i.m, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.c:                                             ; preds = %.lr.ph
  invoke fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %.sroa.012.022)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = add nuw nsw i64 %.sroa.7.021, 1
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.022, i64 2688
  %i.t = getelementptr inbounds nuw [2688 x i8], ptr %i.j, i64 %.sroa.7.021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2688) %i.t, ptr noundef nonnull align 8 dereferenceable(2688) %i.b, i64 2688, i1 false)
  %i.u = icmp eq i64 %i.p, 0
  br i1 %i.u, label %.thread, label %.lr.ph

bb.e:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021, ptr %i.m, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast9StatementEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.c) #23
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 27450512014448738) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %i.b = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.541 = alloca [320 x i8], align 8         ; 4 uses
  %i.c = alloca [328 x i8], align 8               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.13.sroa.0 = alloca [7 x i8], align 1     ; 8 uses
  %.sroa.13.sroa.13 = alloca [320 x i8], align 1  ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 336)
  %i.f = load i64, ptr %i.d, align 8, !range !4, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !43, !noundef !3 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.m = icmp ule i64 %2, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.i, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw [336 x i8], ptr %1, i64 %2
  %i.q = icmp eq i64 %i.i, 0
  br i1 %i.q, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  %.sroa.13.sroa.13.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.13.sroa.13.7..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  %.sroa.015.064 = phi ptr [ %1, %.lr.ph ], [ %i.t, %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 27 uses
  %.sroa.7.062 = phi i64 [ 0, %.lr.ph ], [ %i.u, %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.10.061 = phi i64 [ %i.i, %.lr.ph ], [ %i.r, %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ]
  %i.r = add i64 %.sroa.10.061, -1                ; 2 uses
  %i.s = icmp eq ptr %.sroa.015.064, %i.p
  br i1 %i.s, label %.thread, label %bb.d

.thread:                                          ; preds = %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %2, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 336
  %i.u = add nuw nsw i64 %.sroa.7.062, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7986)
  %i.v = load i8, ptr %.sroa.015.064, align 8, !range !948, !alias.scope !7986, !noalias !7983, !noundef !3 ; 2 uses
  switch i8 %i.v, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.m
    i8 8, label %bb.n
    i8 9, label %bb.o
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx30, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload47 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx30.sroa_idx, align 1, !alias.scope !7988
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx30.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7988
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.w) #28
          to label %.noexc unwind label %bb.q, !inline_history !7989

.noexc:                                           ; preds = %bb.f
  %.sroa.13.sroa.10.7.copyload49 = load i64, ptr %i.c, align 8, !noalias !7986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.13.sroa.13.7..sroa_idx50, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7988
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx29, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx29.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload46 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx29.sroa_idx, align 1, !alias.scope !7988
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx29.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx29.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx28, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload45 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx28.sroa_idx, align 1, !alias.scope !7988
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx28.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx27, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx27.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload44 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx27.sroa_idx, align 1, !alias.scope !7988
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx27.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx27.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx26, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx26.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload43 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx26.sroa_idx, align 1, !alias.scope !7988
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx26.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx26.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.k:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7990)
  %i.y = load i64, ptr %i.x, align 8, !range !69, !alias.scope !7990, !noalias !7993, !noundef !3
  %i.z = icmp eq i64 %i.y, 69
  br i1 %i.z, label %.noexc12, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7995
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.x) #28
          to label %.noexc14 unwind label %bb.q, !inline_history !7996

.noexc14:                                         ; preds = %bb.l
  %.sroa.039.0.copyload = load i64, ptr %i.a, align 8, !noalias !7990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.541, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.541.0..sroa_idx, i64 320, i1 false), !noalias !7990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7995
  br label %.noexc12

.noexc12:                                         ; preds = %.noexc14, %bb.k
  %.sroa.039.0 = phi i64 [ %.sroa.039.0.copyload, %.noexc14 ], [ 69, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.541, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.541)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.m:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx25, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx25.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload42 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx25.sroa_idx, align 1, !alias.scope !7988
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx25.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx25.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.n:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx24, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx24.sroa_idx, align 1, !alias.scope !7988
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx24.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7988
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aa) #28
          to label %.noexc13 unwind label %bb.q, !inline_history !7989

.noexc13:                                         ; preds = %bb.o
  %.sroa.13.sroa.10.7.copyload = load i64, ptr %i.b, align 8, !noalias !7986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.13.sroa.13.7..sroa_idx, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7988
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %.noexc13, %bb.n, %bb.m, %.noexc12, %bb.j, %bb.i, %bb.h, %bb.g, %.noexc, %bb.e
  %.sroa.13.sroa.10.0 = phi i64 [ %.sroa.13.sroa.10.0.copyload47, %bb.e ], [ %.sroa.13.sroa.10.7.copyload49, %.noexc ], [ %.sroa.13.sroa.10.0.copyload46, %bb.g ], [ %.sroa.13.sroa.10.0.copyload45, %bb.h ], [ %.sroa.13.sroa.10.0.copyload44, %bb.i ], [ %.sroa.13.sroa.10.0.copyload43, %bb.j ], [ %.sroa.039.0, %.noexc12 ], [ %.sroa.13.sroa.10.0.copyload42, %bb.m ], [ %.sroa.13.sroa.10.0.copyload, %bb.n ], [ %.sroa.13.sroa.10.7.copyload, %.noexc13 ]
  %i.ab = getelementptr inbounds nuw [336 x i8], ptr %i.l, i64 %.sroa.7.062 ; 4 uses
  store i8 %i.v, ptr %i.ab, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.438.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, i64 7, i1 false)
  %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %.sroa.13.sroa.10.0, ptr %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  %.sroa.438.sroa.5.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.438.sroa.5.0..sroa.438.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, i64 320, i1 false)
  %i.ac = icmp eq i64 %i.r, 0
  br i1 %i.ac, label %.thread, label %bb.c

bb.p:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o, %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.062, ptr %i.o, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.e) #23
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %lpad.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 6664286153796804) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [328 x i8], align 8               ; 4 uses
  %.sroa.5.i.i = alloca [320 x i8], align 8       ; 4 uses
  %i.d = alloca [328 x i8], align 8               ; 7 uses
  %i.e = alloca [328 x i8], align 8               ; 8 uses
  %.sroa.440 = alloca [648 x i8], align 8         ; 5 uses
  %.sroa.5.i14.sroa.0 = alloca [648 x i8], align 8 ; 4 uses
  %.sroa.5.i14.sroa.5 = alloca [320 x i8], align 8 ; 4 uses
  %i.f = alloca [328 x i8], align 8               ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.5.i = alloca [56 x i8], align 8          ; 4 uses
  %i.h = alloca [1320 x i8], align 8              ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.036 = alloca [1320 x i8], align 8        ; 4 uses
  %.sroa.538 = alloca [56 x i8], align 8          ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 1384)
  %i.k = load i64, ptr %i.i, align 8, !range !4, !noundef !3
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !43, !noundef !3 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #21
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.r = icmp ule i64 %2, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.n, ptr %i.j, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw [1384 x i8], ptr %1, i64 %2
  %i.v = icmp eq i64 %i.n, 0
  br i1 %i.v, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.440.328..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.440, i64 320
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 1312
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 1313
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 328
  %.sroa.5.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %.sroa.5.i14.sroa.4.0..sroa.5.0..sroa_idx.i19.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 984
  %.sroa.5.i14.sroa.5.0..sroa.5.0..sroa_idx.i19.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 992
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.z
  %.sroa.5.i14.sroa.4.060 = phi i64 [ undef, %.lr.ph ], [ %.sroa.5.i14.sroa.4.1, %bb.z ]
  %.sroa.026.059 = phi ptr [ %1, %.lr.ph ], [ %i.ad, %bb.z ] ; 11 uses
  %.sroa.10.058 = phi i64 [ %i.n, %.lr.ph ], [ %i.ab, %bb.z ]
  %.sroa.7.057 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.z ] ; 3 uses
  %i.ab = add i64 %.sroa.10.058, -1               ; 2 uses
  %i.ac = icmp eq ptr %.sroa.026.059, %i.u
  br i1 %i.ac, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.z, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %2, ptr %i.t, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.026.059, i64 1384
  %i.ae = add nuw nsw i64 %.sroa.7.057, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7997)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8000
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8005)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8007
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1384) %.sroa.026.059) #28
          to label %.noexc20 unwind label %.loopexit, !inline_history !8008

.noexc20:                                         ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.026.059, i64 1312
  %.val.i = load i8, ptr %i.af, align 1, !range !7944, !alias.scope !8005, !noalias !8002, !noundef !3
  %i.ag = getelementptr i8, ptr %.sroa.026.059, i64 1313
  %.val4.i = load i8, ptr %i.ag, align 1, !range !7944, !alias.scope !8005, !noalias !8002, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i14.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i14.sroa.5)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.026.059, i64 328 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !172, !alias.scope !8005, !noalias !8002, !noundef !3 ; 2 uses
  %.not.i15 = icmp eq i64 %i.ai, 70
  br i1 %.not.i15, label %.noexc, label %bb.f

bb.e:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %.pn.i.i, %bb.m ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %i.f) #23
          to label %bb.ab unwind label %bb.u, !noalias !8002, !inline_history !8008

bb.f:                                             ; preds = %.noexc20
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8009)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8012
  %.not.i.i = icmp eq i64 %i.ai, 69
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8012
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(984) %i.ah) #28
          to label %.noexc.i unwind label %bb.e, !noalias !8002, !inline_history !8014

.noexc.i:                                         ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.e, ptr noundef nonnull align 8 dereferenceable(328) %i.c, i64 328, i1 false), !noalias !8012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8012
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 69, ptr %i.e, align 8, !noalias !8012
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8012
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.026.059, i64 656 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !69, !alias.scope !8015, !noalias !8016, !noundef !3
  %.not4.i.i = icmp eq i64 %i.al, 69
  br i1 %.not4.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8012
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ak)
          to label %bb.o unwind label %bb.n, !noalias !8016, !inline_history !8014

bb.k:                                             ; preds = %bb.i
  store i64 69, ptr %i.d, align 8, !noalias !8012
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
end_hunk_2
begin_hunk_3_@_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl19AlterTableOperationNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.122.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.122.sroa.13.0..sroa.122.8..sroa_idx746.sroa_idx, i64 16, i1 false)
  %.sroa.123.8.copyload756 = load i8, ptr %.sroa.123.8..sroa_idx755, align 8, !noalias !8051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.124.sroa.0, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.124.8..sroa_idx762, i64 15, i1 false)
  %i.hl = load <2 x i32>, ptr %.sroa.124.sroa.12.0..sroa.124.8..sroa_idx762.sroa_idx, align 8, !noalias !8051
  %i.hm = load <2 x i8>, ptr %.sroa.124763.8..sroa_idx772, align 8, !noalias !8051
  %.sroa.126.sroa.0.0.copyload1338 = load i16, ptr %.sroa.126.8..sroa_idx788, align 2, !noalias !8051
  %.sroa.126.sroa.10.0.copyload1344 = load i32, ptr %.sroa.126.sroa.10.0..sroa.126.8..sroa_idx788.sroa_idx, align 4, !noalias !8051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.126.sroa.11, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.126.sroa.11.0..sroa.126.8..sroa_idx788.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !8056
  br label %_RNvXs15_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 216
  %i.hp = load <2 x i8>, ptr %i.ho, align 8, !alias.scope !8051, !noalias !8054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !8056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8058)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8061
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8066)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.hn)
          to label %.noexc207 unwind label %.loopexit1413, !inline_history !8068

.noexc207:                                        ; preds = %bb.g
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 64
  %i.hr = load i32, ptr %i.hq, align 8, !range !7691, !alias.scope !8069, !noalias !8070, !noundef !3
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fu, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.hs, i64 32, i1 false), !alias.scope !8071, !noalias !8072
  store i32 %i.hr, ptr %i.fv, align 8, !alias.scope !8063, !noalias !8073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8061
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 96
  invoke fastcc void @_RNvXsh_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ht)
          to label %bb.j unwind label %bb.i, !noalias !8072, !inline_history !8068

bb.h:                                             ; preds = %bb.k, %bb.i
  %.pn.i206 = phi { ptr, i32 } [ %i.hz, %bb.k ], [ %i.hu, %bb.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %bb.fx unwind label %bb.l, !noalias !8072, !inline_history !8068

bb.i:                                             ; preds = %.noexc207
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %.noexc207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8061
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 88
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 80
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !8074, !noalias !8077, !nonnull !3, !noundef !3
  %i.hy = load i64, ptr %i.hv, align 8, !alias.scope !8074, !noalias !8077, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl15ColumnOptionDefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.hx, i64 noundef %i.hy) #28
          to label %.noexc13 unwind label %bb.k, !noalias !8072, !inline_history !8079

bb.k:                                             ; preds = %bb.j
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.l) #23
          to label %bb.h unwind label %bb.l, !noalias !8072, !inline_history !8068

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !8072, !inline_history !8068
  unreachable

.noexc13:                                         ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ch, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false), !noalias !8058
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fw, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !8058
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !8058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8061
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.sroa.4.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.sroa.6.sroa.0)
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 152 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !range !160, !alias.scope !8051, !noalias !8054, !noundef !3 ; 2 uses
  %.not47.i = icmp eq i64 %i.ic, -9223372036854775807
  br i1 %.not47.i, label %bb.dz, label %bb.dx

bb.m:                                             ; preds = %bb.d
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 192
  %i.if = load i8, ptr %i.ie, align 8, !range !2711, !alias.scope !8051, !noalias !8054, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !8056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8083)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.id)
          to label %.noexc14 unwind label %.loopexit1413

.noexc14:                                         ; preds = %bb.m
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 64
  %i.ih = load i32, ptr %i.ig, align 8, !range !7691, !alias.scope !8083, !noalias !8080, !noundef !3 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fq, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ii, i64 32, i1 false), !alias.scope !8085
  store i32 %i.ih, ptr %i.fr, align 8, !alias.scope !8080, !noalias !8083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8086)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !8089
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 88
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 80
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !8091, !noalias !8094, !nonnull !3, !noundef !3 ; 2 uses
  %i.im = load i64, ptr %i.ij, align 8, !alias.scope !8091, !noalias !8094, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8096
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 12397005425880076) %i.im, i1 noundef zeroext false, i64 noundef 8, i64 noundef 744)
          to label %.noexc1784 unwind label %.loopexit, !inline_history !8100

.noexc1784:                                       ; preds = %.noexc14
  %i.in = load i64, ptr %i.a, align 8, !range !4, !noalias !8096, !noundef !3
  %i.io = trunc nuw i64 %i.in to i1
  %i.ip = load i64, ptr %i.fy, align 8, !range !43, !noalias !8096, !noundef !3 ; 5 uses
  br i1 %i.io, label %bb.n, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i, !prof !10

bb.n:                                             ; preds = %.noexc1784
  %i.iq = load i64, ptr %i.fz, align 8, !noalias !8096
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ip, i64 %i.iq) #21
          to label %.noexc1785 unwind label %.loopexit.split-lp, !inline_history !8100

.noexc1785:                                       ; preds = %bb.n
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %.noexc1784
  %i.ir = load ptr, ptr %i.fz, align 8, !noalias !8096, !nonnull !3, !noundef !3 ; 2 uses
  %i.is = icmp ule i64 %i.im, %i.ip
  tail call void @llvm.assume(i1 %i.is)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8096
  store i64 %i.ip, ptr %i.c, align 8, !noalias !8096
  store ptr %i.ir, ptr %i.ga, align 8, !noalias !8096
  %i.it = getelementptr inbounds nuw [744 x i8], ptr %i.il, i64 %i.im
  %i.iu = icmp eq i64 %i.ip, 0
  br i1 %i.iu, label %.noexc201, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.p
  %.sroa.10.023.i = phi i64 [ %i.iv, %bb.p ], [ %i.ip, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i ]
  %.sroa.012.022.i = phi ptr [ %i.iy, %bb.p ], [ %i.il, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.ix, %bb.p ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i ] ; 3 uses
  %i.iv = add i64 %.sroa.10.023.i, -1             ; 2 uses
  %i.iw = icmp eq ptr %.sroa.012.022.i, %i.it
  br i1 %i.iw, label %.noexc201, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RNvXs3X_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(744) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(744) %.sroa.012.022.i)
          to label %bb.p unwind label %bb.r, !noalias !8101, !inline_history !8100

bb.p:                                             ; preds = %bb.o
  %i.ix = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 744
  %i.iz = getelementptr inbounds nuw [744 x i8], ptr %i.ir, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(744) %i.iz, ptr noundef nonnull align 8 dereferenceable(744) %i.b, i64 744, i1 false), !noalias !8101
  %i.ja = icmp eq i64 %i.iv, 0
  br i1 %i.ja, label %.noexc201, label %.lr.ph.i

bb.q:                                             ; preds = %bb.r
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !8101, !inline_history !8100
  unreachable

bb.r:                                             ; preds = %bb.o
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i, ptr %i.gb, align 8, !noalias !8096
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.c) #23
          to label %.body202 unwind label %bb.q, !noalias !8101, !inline_history !8100

.noexc201:                                        ; preds = %bb.p, %.lr.ph.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  store i64 %i.im, ptr %i.gb, align 8, !noalias !8096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !8102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !8089
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 96
  %i.jd = load i64, ptr %i.jc, align 8, !range !160, !alias.scope !8086, !noalias !8103, !noundef !3 ; 2 uses
  %.not.i194 = icmp eq i64 %i.jd, -9223372036854775807
  br i1 %.not.i194, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %.noexc201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8112)
  %.not.i230 = icmp eq i64 %i.jd, -9223372036854775808
  br i1 %.not.i230, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8114
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 112
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 104
  %i.jg = load ptr, ptr %i.jf, align 8, !alias.scope !8115, !noalias !8118, !nonnull !3, !noundef !3
  %i.jh = load i64, ptr %i.je, align 8, !alias.scope !8115, !noalias !8118, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.jg, i64 noundef %i.jh) #28
          to label %.noexc232 unwind label %bb.ac, !inline_history !8120

.noexc232:                                        ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !8121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8114
  br label %.noexc.i

bb.u:                                             ; preds = %bb.s
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 104
  %.val.i231 = load i8, ptr %i.ji, align 1, !range !7944, !alias.scope !8112, !noalias !8122, !noundef !3
  %i.jj = getelementptr i8, ptr %.sroa.0233.01650, i64 105
  %.val1.i = load i8, ptr %i.jj, align 1, !range !7944, !alias.scope !8112, !noalias !8122, !noundef !3
  store i8 %.val.i231, ptr %i.fs, align 8, !alias.scope !8109, !noalias !8121
  store i8 %.val1.i, ptr %i.ft, align 1, !alias.scope !8109, !noalias !8121
  store i64 -9223372036854775808, ptr %i.q, align 8, !alias.scope !8109, !noalias !8121
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.u, %.noexc232
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 120
  %i.jl = load i64, ptr %i.jk, align 8, !range !160, !alias.scope !8123, !noalias !8124, !noundef !3 ; 2 uses
  %.not.i.i196 = icmp eq i64 %i.jl, -9223372036854775807
  br i1 %.not.i.i196, label %_RNvXsbd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, label %bb.v

bb.v:                                             ; preds = %.noexc.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8125)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i224)
  %.not.i225 = icmp eq i64 %i.jl, -9223372036854775808
  br i1 %.not.i225, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8128
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 136
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 128
  %i.jo = load ptr, ptr %i.jn, align 8, !alias.scope !8130, !noalias !8133, !nonnull !3, !noundef !3
  %i.jp = load i64, ptr %i.jm, align 8, !alias.scope !8130, !noalias !8133, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15InterpolateExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.jo, i64 noundef %i.jp) #28
          to label %.noexc229 unwind label %bb.x, !inline_history !8135

.noexc229:                                        ; preds = %bb.w
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !8128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i224, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i226, i64 16, i1 false), !noalias !8128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8128
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByKindECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.q) #23
          to label %.body.i unwind label %bb.z, !noalias !8124, !inline_history !8136

bb.y:                                             ; preds = %.noexc229, %bb.v
  %.sroa.0.0.i227 = phi i64 [ %.sroa.0.0.copyload.i, %.noexc229 ], [ -9223372036854775808, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i224, i64 16, i1 false), !noalias !8124
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i224)
  br label %_RNvXsbd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.z:                                             ; preds = %bb.x
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !8124, !inline_history !8136
  unreachable

_RNvXsbd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.y, %.noexc.i
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.i227, %bb.y ], [ -9223372036854775807, %.noexc.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !8089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.51387.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !8089
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8107
  store i64 %.sroa.0.0.i.i, ptr %.sroa.41386.0..sroa_idx, align 8, !noalias !8089
  br label %bb.ab

bb.aa:                                            ; preds = %.noexc201
  store i64 -9223372036854775807, ptr %i.r, align 8, !noalias !8089
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvXsbd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i193.sroa.5.sroa.4)
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 144 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !range !160, !alias.scope !8086, !noalias !8103, !noundef !3 ; 2 uses
  %.not4.i = icmp eq i64 %i.jt, -9223372036854775807
  br i1 %.not4.i, label %bb.ec, label %bb.ad

.body.i:                                          ; preds = %bb.ac, %bb.x, %.body9.i
  %.pn.i195 = phi { ptr, i32 } [ %eh.lpad-body10.i, %.body9.i ], [ %i.ju, %bb.ac ], [ %i.jq, %bb.x ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.s) #23
          to label %.body202 unwind label %bb.ak, !noalias !8103, !inline_history !8137

bb.ac:                                            ; preds = %bb.t
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.81391.sroa.5)
  %.not.i6.i = icmp eq i64 %i.jt, -9223372036854775808
  br i1 %.not.i6.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8138
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.js)
          to label %.noexc7.i unwind label %bb.aj, !noalias !8103, !inline_history !8142

.noexc7.i:                                        ; preds = %bb.ae
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8138
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jv)
          to label %bb.ah unwind label %bb.ag, !noalias !8143, !inline_history !8142

bb.af:                                            ; preds = %bb.ad
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8138
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jw)
          to label %.noexc8.i unwind label %bb.aj, !noalias !8103, !inline_history !8142

.noexc8.i:                                        ; preds = %bb.af
  %.sroa.51389.8.copyload = load i64, ptr %i.p, align 8, !noalias !8144
  %i.jx = load <2 x i64>, ptr %.sroa.71390.8..sroa_idx, align 8, !noalias !8144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8138
  br label %_RNvXsez_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11GroupByExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.ag:                                            ; preds = %.noexc7.i
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.o) #23
          to label %.body9.i unwind label %bb.ai, !noalias !8143, !inline_history !8142

bb.ah:                                            ; preds = %.noexc7.i
  %.sroa.01388.0.copyload = load i64, ptr %i.o, align 8, !noalias !8144
  %.sroa.51389.0.copyload = load i64, ptr %.sroa.51389.0..sroa_idx, align 8, !noalias !8144
  %.sroa.71390.0.copyload = load i64, ptr %.sroa.71390.0..sroa_idx, align 8, !noalias !8144
  %.sroa.81391.sroa.0.0.copyload = load i64, ptr %i.n, align 8, !noalias !8144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.81391.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.81391.sroa.5.0..sroa_idx, i64 16, i1 false), !noalias !8144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !8138
  %i.jz = insertelement <2 x i64> poison, i64 %.sroa.71390.0.copyload, i64 0
  %i.ka = insertelement <2 x i64> %i.jz, i64 %.sroa.81391.sroa.0.0.copyload, i64 1
  br label %_RNvXsez_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11GroupByExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !8143, !inline_history !8142
  unreachable

_RNvXsez_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11GroupByExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.ah, %.noexc8.i
  %.sroa.01388.0 = phi i64 [ -9223372036854775808, %.noexc8.i ], [ %.sroa.01388.0.copyload, %bb.ah ]
  %.sroa.51389.0 = phi i64 [ %.sroa.51389.8.copyload, %.noexc8.i ], [ %.sroa.51389.0.copyload, %bb.ah ]
  %i.kc = phi <2 x i64> [ %i.jx, %.noexc8.i ], [ %i.ka, %bb.ah ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i193.sroa.5.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.81391.sroa.5, i64 16, i1 false), !noalias !8089
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81391.sroa.5)
  br label %bb.ec

bb.aj:                                            ; preds = %bb.af, %bb.ae
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %.body9.i

.body9.i:                                         ; preds = %bb.ag, %bb.aj
  %eh.lpad-body10.i = phi { ptr, i32 } [ %i.kd, %bb.aj ], [ %i.jy, %bb.ag ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7OrderByEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.r) #23
          to label %.body.i unwind label %bb.ak, !noalias !8103, !inline_history !8137

bb.ak:                                            ; preds = %.body9.i, %.body.i
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !8103, !inline_history !8137
  unreachable

bb.al:                                            ; preds = %bb.d
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 72
  %i.kh = load i8, ptr %i.kg, align 8, !range !2711, !alias.scope !8051, !noalias !8054, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !8056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8148)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.kf)
          to label %.noexc15 unwind label %.loopexit1413

.noexc15:                                         ; preds = %bb.al
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 64
  %i.kj = load i32, ptr %i.ki, align 8, !range !7691, !alias.scope !8148, !noalias !8145, !noundef !3 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fo, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.kk, i64 32, i1 false), !alias.scope !8150
  store i32 %i.kj, ptr %i.fp, align 8, !alias.scope !8145, !noalias !8148
  %.sroa.50.8.copyload264 = load i8, ptr %i.cf, align 8, !noalias !8051
  %.sroa.91.8.copyload330 = load i8, ptr %.sroa.91.8..sroa_idx329, align 1, !noalias !8051
  %.sroa.93.sroa.0.0.copyload1056 = load i48, ptr %.sroa.93.8..sroa_idx378, align 2, !noalias !8051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.93.sroa.42, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.93.sroa.42.0..sroa.93.8..sroa_idx378.sroa_idx, i64 16, i1 false)
  %.sroa.93389.8.copyload445 = load i8, ptr %i.fo, align 8, !noalias !8051
  %.sroa.97.8.copyload505 = load i8, ptr %.sroa.97.8..sroa_idx504, align 1, !noalias !8051
  %.sroa.98.8.copyload565 = load i8, ptr %.sroa.98.8..sroa_idx564, align 2, !noalias !8051
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.99.sroa.0, ptr noundef nonnull align 1 dereferenceable(29) %i.kl, i64 29, i1 false)
  %.sroa.99.sroa.36.0.copyload1207 = load i32, ptr %.sroa.99.sroa.36.0..sroa.99.8..sroa_idx597.sroa_idx, align 4, !noalias !8051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !8056
  br label %_RNvXs15_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.am:                                            ; preds = %bb.d
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 136
  %i.ko = load i8, ptr %i.kn, align 8, !range !2711, !alias.scope !8051, !noalias !8054, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !8056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8154)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.km)
          to label %.noexc16 unwind label %.loopexit1413

.noexc16:                                         ; preds = %bb.am
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 64
end_hunk_3
begin_hunk_4_@_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %i.cz = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 744
  %i.db = getelementptr inbounds nuw [744 x i8], ptr %i.cs, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(744) %i.db, ptr noundef nonnull align 8 dereferenceable(744) %i.e, i64 744, i1 false), !noalias !8659
  %i.dc = icmp eq i64 %i.cx, 0
  br i1 %i.dc, label %.noexc15, label %.lr.ph.i

bb.m:                                             ; preds = %bb.n
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !8659, !inline_history !8658
  unreachable

bb.n:                                             ; preds = %bb.k
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i, ptr %i.br, align 8, !noalias !8654
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.f) #23
          to label %.loopexit.body unwind label %bb.m, !noalias !8659, !inline_history !8658

.noexc15:                                         ; preds = %bb.l, %.lr.ph.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  store i64 %i.cl, ptr %i.br, align 8, !noalias !8654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.d
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !8660, !noalias !8663, !nonnull !3, !noundef !3 ; 2 uses
  %i.dh = load i64, ptr %i.de, align 8, !alias.scope !8660, !noalias !8663, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8665
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 12397005425880076) %i.dh, i1 noundef zeroext false, i64 noundef 8, i64 noundef 744)
          to label %.noexc294 unwind label %.loopexit.loopexit, !inline_history !8658

.noexc294:                                        ; preds = %bb.o
  %i.di = load i64, ptr %i.a, align 8, !range !4, !noalias !8665, !noundef !3
  %i.dj = trunc nuw i64 %i.di to i1
  %i.dk = load i64, ptr %i.bk, align 8, !range !43, !noalias !8665, !noundef !3 ; 6 uses
  br i1 %i.dj, label %bb.p, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i288, !prof !10

bb.p:                                             ; preds = %.noexc294
  %i.dl = load i64, ptr %i.bl, align 8, !noalias !8665
  br label %.invoke

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i288: ; preds = %.noexc294
  %i.dm = load ptr, ptr %i.bl, align 8, !noalias !8665, !nonnull !3, !noundef !3 ; 2 uses
  %i.dn = icmp ule i64 %i.dh, %i.dk
  tail call void @llvm.assume(i1 %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8665
  store i64 %i.dk, ptr %i.c, align 8, !noalias !8665
  store ptr %i.dm, ptr %i.bm, align 8, !noalias !8665
  %i.do = getelementptr inbounds nuw [744 x i8], ptr %i.dg, i64 %i.dh
  %i.dp = icmp eq i64 %i.dk, 0
  %i.dq = inttoptr i64 %i.dk to ptr
  br i1 %i.dp, label %.noexc16, label %.lr.ph.i289

.lr.ph.i289:                                      ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i288, %bb.r
  %.sroa.10.023.i290 = phi i64 [ %i.dr, %bb.r ], [ %i.dk, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i288 ]
  %.sroa.012.022.i291 = phi ptr [ %i.du, %bb.r ], [ %i.dg, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i288 ] ; 3 uses
  %.sroa.7.021.i292 = phi i64 [ %i.dt, %bb.r ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i288 ] ; 3 uses
  %i.dr = add i64 %.sroa.10.023.i290, -1          ; 2 uses
  %i.ds = icmp eq ptr %.sroa.012.022.i291, %i.do
  br i1 %i.ds, label %.noexc16, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i289
  invoke fastcc void @_RNvXs3X_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(744) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(744) %.sroa.012.022.i291)
          to label %bb.r unwind label %bb.t, !noalias !8669, !inline_history !8658

bb.r:                                             ; preds = %bb.q
  %i.dt = add nuw nsw i64 %.sroa.7.021.i292, 1
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i291, i64 744
  %i.dv = getelementptr inbounds nuw [744 x i8], ptr %i.dm, i64 %.sroa.7.021.i292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(744) %i.dv, ptr noundef nonnull align 8 dereferenceable(744) %i.b, i64 744, i1 false), !noalias !8669
  %i.dw = icmp eq i64 %i.dr, 0
  br i1 %i.dw, label %.noexc16, label %.lr.ph.i289

bb.s:                                             ; preds = %bb.t
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !8669, !inline_history !8658
  unreachable

bb.t:                                             ; preds = %bb.q
  %lpad.loopexit.i293 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i292, ptr %i.bn, align 8, !noalias !8665
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.c) #23
          to label %.loopexit.body unwind label %bb.s, !noalias !8669, !inline_history !8658

.noexc16:                                         ; preds = %bb.r, %.lr.ph.i289, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i288
  store i64 %i.dh, ptr %i.bn, align 8, !noalias !8665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.u:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !8641
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !8670, !noalias !8673, !nonnull !3, !noundef !3
  %i.eb = load i64, ptr %i.dy, align 8, !alias.scope !8670, !noalias !8673, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10AssignmentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ea, i64 noundef %i.eb) #28
          to label %.noexc17 unwind label %.loopexit.loopexit, !inline_history !8675

.noexc17:                                         ; preds = %bb.u
  %.sroa.21.8.copyload78 = load ptr, ptr %i.af, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx94, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !8641
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.v:                                             ; preds = %bb.d
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !8641
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ec)
          to label %.noexc18 unwind label %.loopexit.loopexit, !inline_history !8642

.noexc18:                                         ; preds = %bb.v
  %.sroa.21.8.copyload77 = load ptr, ptr %i.ae, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx93, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !8641
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.w:                                             ; preds = %bb.d
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !8641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8679)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ed)
          to label %.noexc19 unwind label %.loopexit.loopexit

.noexc19:                                         ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 64
  %i.ef = load i32, ptr %i.ee, align 8, !range !7691, !alias.scope !8679, !noalias !8676, !noundef !3
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.eg, i64 32, i1 false), !alias.scope !8681
  store i32 %i.ef, ptr %i.bj, align 8, !alias.scope !8676, !noalias !8679
  %.sroa.21.8.copyload70 = load ptr, ptr %i.ad, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx86, i64 16, i1 false)
  %.sroa.3898.8.copyload108 = load i8, ptr %i.bi, align 8, !noalias !8636
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42, ptr noundef nonnull align 1 dereferenceable(31) %i.eh, i64 31, i1 false)
  %i.ei = load i64, ptr %i.bj, align 8, !noalias !8636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !8641
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.x:                                             ; preds = %bb.d
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !8641
  invoke fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ej)
          to label %.noexc20 unwind label %.loopexit.loopexit, !inline_history !8642

.noexc20:                                         ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !8641
  invoke fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ek)
          to label %bb.aq unwind label %bb.ap, !noalias !8639, !inline_history !8642

bb.y:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8682)
  %i.el = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableSampleE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks()
          to label %.noexc52 unwind label %.loopexit.loopexit, !inline_history !8685 ; 3 uses

.noexc52:                                         ; preds = %bb.y
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !8682, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8686
  invoke fastcc void @_RNvXs7l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableSampleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1152) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.en) #28
          to label %.noexc21 unwind label %bb.z, !noalias !8682, !inline_history !8689

bb.z:                                             ; preds = %.noexc52
  %i.eo = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.el, i64 noundef 1152, i64 noundef 8) #24, !noalias !8682, !inline_history !8685
  br label %.loopexit.body

.noexc21:                                         ; preds = %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1152) %i.el, ptr noundef nonnull align 8 dereferenceable(1152) %i.g, i64 1152, i1 false), !noalias !8686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8686
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.aa:                                            ; preds = %bb.d
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !8641
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ep)
          to label %.noexc22 unwind label %.loopexit.loopexit, !inline_history !8642

.noexc22:                                         ; preds = %bb.aa
  %.sroa.21.8.copyload75 = load ptr, ptr %i.aa, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx91, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8641
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ab:                                            ; preds = %bb.d
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  %.val27.i = load i8, ptr %i.eq, align 1, !range !742, !alias.scope !8636, !noalias !8639, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !8641
  invoke fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.er)
          to label %.noexc23 unwind label %.loopexit.loopexit, !inline_history !8642

.noexc23:                                         ; preds = %bb.ab
  %.sroa.21.8.copyload74 = load ptr, ptr %i.z, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx90, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !8641
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ac:                                            ; preds = %bb.d
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  %.val26.i = load i8, ptr %i.es, align 1, !range !742, !alias.scope !8636, !noalias !8639, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !8641
  invoke fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.et)
          to label %.noexc24 unwind label %.loopexit.loopexit, !inline_history !8642

.noexc24:                                         ; preds = %bb.ac
  %.sroa.21.8.copyload73 = load ptr, ptr %i.y, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx89, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !8641
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ad:                                            ; preds = %bb.d
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  %.val.i = load i8, ptr %i.eu, align 1, !range !742, !alias.scope !8636, !noalias !8639, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !8641
  invoke fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ev)
          to label %.noexc25 unwind label %.loopexit.loopexit, !inline_history !8642

.noexc25:                                         ; preds = %bb.ad
  %.sroa.21.8.copyload72 = load ptr, ptr %i.x, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx88, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !8641
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ae:                                            ; preds = %bb.d
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !8641
  invoke fastcc void @_RNvXsin_NtCs4lawaffTVVK_9sqlparser3astNtB6_8FunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ew) #28
          to label %.noexc26 unwind label %.loopexit.loopexit, !inline_history !8642

.noexc26:                                         ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55.i)
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 336 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !range !43, !alias.scope !8636, !noalias !8639, !noundef !3
  %.not22.i = icmp eq i64 %i.ey, -9223372036854775808
  br i1 %.not22.i, label %bb.as, label %bb.ar

bb.af:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !8641
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 56
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 48
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !8690, !noalias !8693, !nonnull !3, !noundef !3
  %i.fc = load i64, ptr %i.ez, align 8, !alias.scope !8690, !noalias !8693, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fb, i64 noundef %i.fc) #28
          to label %.noexc27 unwind label %.loopexit.loopexit, !inline_history !8695

.noexc27:                                         ; preds = %bb.af
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !8641
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fd)
          to label %bb.ax unwind label %bb.aw, !noalias !8639, !inline_history !8642

bb.ag:                                            ; preds = %bb.d
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !8641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8699)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fe)
          to label %.noexc28 unwind label %.loopexit.loopexit

.noexc28:                                         ; preds = %bb.ag
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 72
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 64
  %i.fh = load i32, ptr %i.fg, align 8, !range !7691, !alias.scope !8699, !noalias !8696, !noundef !3
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fi, i64 32, i1 false), !alias.scope !8701
  store i32 %i.fh, ptr %i.ay, align 8, !alias.scope !8696, !noalias !8699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !8641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8705)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ff)
          to label %bb.bi unwind label %bb.bh

bb.ah:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8707)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8710
  invoke fastcc void @_RNvXs71_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(616) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1280) %.sroa.062.0232) #28
          to label %.noexc43 unwind label %.loopexit.loopexit, !inline_history !8712

.noexc43:                                         ; preds = %bb.ah
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 1272
  %i.fk = load i8, ptr %i.fj, align 8, !range !2711, !alias.scope !8707, !noalias !8713, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8710
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 616
  invoke fastcc void @_RNvXsaJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12JoinOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(656) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(656) %i.fl)
          to label %.noexc29 unwind label %bb.ai, !noalias !8713, !inline_history !8712

bb.ai:                                            ; preds = %.noexc43
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableFactorECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(616) %i.i) #23
          to label %.loopexit.body unwind label %bb.aj, !noalias !8713, !inline_history !8712

bb.aj:                                            ; preds = %bb.ai
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !8713, !inline_history !8712
  unreachable

.noexc29:                                         ; preds = %.noexc43
  %.sroa.0181.0.copyload = load i64, ptr %i.i, align 8, !noalias !8707
  %.sroa.4182.0.copyload = load ptr, ptr %.sroa.4182.0..sroa_idx, align 8, !noalias !8707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5183.0..sroa_idx, i64 16, i1 false)
  %.sroa.6184.0.copyload = load i8, ptr %.sroa.6184.0..sroa_idx, align 8, !noalias !8707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7185.0..sroa_idx, i64 31, i1 false)
  %.sroa.8186.sroa.0.0.copyload = load i64, ptr %.sroa.8186.0..sroa_idx, align 8, !noalias !8707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8186.sroa.4.0..sroa.8186.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.9187.0.copyload = load i64, ptr %.sroa.9187.0..sroa_idx, align 8, !noalias !8707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.46, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10188.0..sroa_idx, i64 64, i1 false)
  %.sroa.11189.0.copyload = load i64, ptr %.sroa.11189.0..sroa_idx, align 8, !noalias !8707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12190.0..sroa_idx, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.50, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.13191.0..sroa_idx, i64 112, i1 false)
  %.sroa.14192.0.copyload = load i64, ptr %.sroa.14192.0..sroa_idx, align 8, !noalias !8707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.15193, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.15193.0..sroa_idx, i64 272, i1 false), !noalias !8707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %.sroa.15193.616..sroa_idx, ptr noundef nonnull align 8 dereferenceable(656) %i.h, i64 656, i1 false), !noalias !8707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.52, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.15193, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %.sroa.54.sroa.0, ptr noundef nonnull align 8 dereferenceable(608) %.sroa.15193.664..sroa_idx, i64 608, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15193)
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ak:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8641
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.cb)
          to label %bb.an unwind label %bb.am, !noalias !8639, !inline_history !8642

bb.al:                                            ; preds = %bb.an, %.noexc
  %.sroa.0.0.i12 = phi i64 [ %.sroa.0.0.copyload1.i, %bb.an ], [ 69, %.noexc ]
  %.sroa.21.8.copyload68 = load ptr, ptr %i.ai, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx84, i64 16, i1 false)
  %.sroa.3898.8.copyload104 = load i8, ptr %.sroa.3898.8..sroa_idx103, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42.8..sroa_idx113, i64 31, i1 false)
  %.sroa.43.sroa.0.0.copyload258 = load i64, ptr %.sroa.43.8..sroa_idx119, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.10.0..sroa.43.8..sroa_idx119.sroa_idx, i64 16, i1 false)
  %.sroa.45.8.copyload127 = load i64, ptr %.sroa.45.8..sroa_idx126, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.46, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.46.8..sroa_idx130, i64 64, i1 false)
  %.sroa.48.8.copyload136 = load i64, ptr %.sroa.48.8..sroa_idx135, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49.8..sroa_idx139, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.50, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.50.8..sroa_idx142, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.52, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !8641
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.am:                                            ; preds = %bb.ak
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %i.ai) #23
          to label %.loopexit.body unwind label %bb.ao, !noalias !8639, !inline_history !8642

bb.an:                                            ; preds = %bb.ak
  %.sroa.0.0.copyload1.i = load i64, ptr %i.p, align 8, !noalias !8641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx2.i, i64 320, i1 false), !noalias !8641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8641
  br label %bb.al

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.bj, %bb.bo, %bb.bf, %.body39, %bb.av, %bb.at, %bb.ap, %bb.am
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !8639, !inline_history !8642
  unreachable

bb.ap:                                            ; preds = %.noexc20
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #23
          to label %.loopexit.body unwind label %bb.ao, !noalias !8639, !inline_history !8642

bb.aq:                                            ; preds = %.noexc20
  %.sroa.21.8.copyload76 = load ptr, ptr %i.ac, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx92, i64 16, i1 false)
  %.sroa.3898.32.copyload = load i8, ptr %i.ab, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.42, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.42.32..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !8641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !8641
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ar:                                            ; preds = %.noexc26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8717)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ex)
          to label %bb.au unwind label %bb.at

bb.as:                                            ; preds = %bb.au, %.noexc26
  %.sroa.03.0.i = phi i64 [ %.sroa.03.0.copyload4.i, %bb.au ], [ -9223372036854775808, %.noexc26 ]
  %.sroa.21.8.copyload = load ptr, ptr %i.w, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx, i64 16, i1 false)
  %.sroa.3898.8.copyload = load i8, ptr %.sroa.3898.8..sroa_idx, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42.8..sroa_idx, i64 31, i1 false)
  %.sroa.43.sroa.0.0.copyload = load i64, ptr %.sroa.43.8..sroa_idx, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.10.0..sroa.43.8..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.45.8.copyload = load i64, ptr %.sroa.45.8..sroa_idx, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.46, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.46.8..sroa_idx, i64 64, i1 false)
  %.sroa.48.8.copyload = load i64, ptr %.sroa.48.8..sroa_idx, align 8, !noalias !8636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49.8..sroa_idx, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.50, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.50.8..sroa_idx, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.52, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.55.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !8641
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.at:                                            ; preds = %bb.ar
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast8FunctionECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %i.w) #23
          to label %.loopexit.body unwind label %bb.ao, !noalias !8639, !inline_history !8642

bb.au:                                            ; preds = %bb.ar
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 392
  %i.ft = load i32, ptr %i.fs, align 8, !range !7691, !alias.scope !8717, !noalias !8719, !noundef !3
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 360
end_hunk_4
begin_hunk_5_@_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks:bb.a
bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !15575
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #21, !noalias !15575, !inline_history !12445
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !15575, !nonnull !3, !noundef !3 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15575
  store i64 %i.k, ptr %i.c, align 8, !noalias !15575
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !15575
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.d
  %.sroa.10.023.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i ]
  %.sroa.012.022.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i ] ; 3 uses
  %i.t = add i64 %.sroa.10.023.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.022.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RNvXs9L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.012.022.i)
          to label %bb.d unwind label %bb.f, !noalias !15579, !inline_history !12445

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 72
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !15579
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !15579, !inline_history !12445
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i, ptr %i.q, align 8, !noalias !15575
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.c) #23
          to label %bb.g unwind label %bb.e, !noalias !15579, !inline_history !12445

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !15575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !15580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.d = load i64, ptr %i.a, align 8, !noundef !3
  tail call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.d) #28
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query22XmlNamespaceDefinitionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.d = load i64, ptr %i.a, align 8, !noundef !3
  tail call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query22XmlNamespaceDefinitionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.d) #28
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.5.i.i = alloca [56 x i8], align 8        ; 4 uses
  %i.c = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.015.sroa.0 = alloca [328 x i8], align 8  ; 4 uses
  %.sroa.015.sroa.5 = alloca [56 x i8], align 8   ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15581
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15581
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 23058430092136940) %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 400), !noalias !15581
  %i.i = load i64, ptr %i.a, align 8, !range !4, !noalias !15581, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !43, !noalias !15581, !noundef !3 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !15581
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #21, !noalias !15581
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !15581, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p), !noalias !15581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15581
  store i64 %i.l, ptr %i.d, align 8, !noalias !15581
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !15581
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw [400 x i8], ptr %i.g, i64 %i.h
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.10.034 = phi i64 [ %i.l, %.lr.ph ], [ %i.w, %bb.i ]
  %.sroa.03.033 = phi ptr [ %i.g, %.lr.ph ], [ %i.y, %bb.i ] ; 8 uses
  %.sroa.7.032 = phi i64 [ 0, %.lr.ph ], [ %i.z, %bb.i ] ; 3 uses
  %i.w = add i64 %.sroa.10.034, -1                ; 2 uses
  %i.x = icmp eq ptr %.sroa.03.033, %i.s
  br i1 %i.x, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.d

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.033, i64 400
  %i.z = add nuw nsw i64 %.sroa.7.032, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15588), !noalias !15591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15592
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %.sroa.03.033) #28
          to label %.noexc unwind label %.loopexit, !inline_history !15595

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.033, i64 328 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !43, !alias.scope !15596, !noalias !15597, !noundef !3
  %.not.i.i = icmp eq i64 %i.ab, -9223372036854775808
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15601)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aa)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %i.c) #23
          to label %bb.k unwind label %bb.h, !noalias !15597, !inline_history !15603

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.033, i64 384
  %i.ae = load i32, ptr %i.ad, align 8, !range !7691, !alias.scope !15601, !noalias !15604, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.033, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.af, i64 32, i1 false), !alias.scope !15605, !noalias !15597
  store i32 %i.ae, ptr %i.v, align 8, !alias.scope !15598, !noalias !15606
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.b, align 8, !noalias !15592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx2.i.i, i64 56, i1 false), !noalias !15592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15592
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !15597, !inline_history !15603
  unreachable

bb.i:                                             ; preds = %bb.g, %.noexc
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.g ], [ -9223372036854775808, %.noexc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.015.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.015.sroa.0, ptr noundef nonnull align 8 dereferenceable(328) %i.c, i64 328, i1 false), !noalias !15591
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.015.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.015.sroa.5, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i.i, i64 56, i1 false), !noalias !15591
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15592
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.033, i64 392
  %.val.i1 = load i8, ptr %i.ah, align 1, !range !7944, !alias.scope !15585, !noalias !15607, !noundef !3
  %i.ai = getelementptr i8, ptr %.sroa.03.033, i64 393
  %.val1.i = load i8, ptr %i.ai, align 1, !range !7944, !alias.scope !15585, !noalias !15607, !noundef !3
  %i.aj = getelementptr inbounds nuw [400 x i8], ptr %i.o, i64 %.sroa.7.032 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.aj, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.015.sroa.0, i64 328, i1 false), !noalias !15591
  %.sroa.015.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 328
  store i64 %.sroa.0.0.i.i, ptr %.sroa.015.sroa.4.0..sroa_idx, align 8, !noalias !15591
  %.sroa.015.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.015.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.015.sroa.5, i64 56, i1 false), !noalias !15591
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 392
  store i8 %.val.i1, ptr %.sroa.416.0..sroa_idx, align 8, !noalias !15591
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 393
  store i8 %.val1.i, ptr %.sroa.517.0..sroa_idx, align 1, !noalias !15591
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.015.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.015.sroa.5)
  %i.ak = icmp eq i64 %i.w, 0
  br i1 %i.ak, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.c

bb.j:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !15591, !inline_history !15608
  unreachable

bb.k:                                             ; preds = %.loopexit, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.032, ptr %i.r, align 8, !noalias !15591
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.d) #23
          to label %bb.l unwind label %bb.j, !noalias !15591, !inline_history !15608

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.i, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.h, ptr %i.r, align 8, !noalias !15581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !15609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15581
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3CteENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
  %i.c = alloca [1400 x i8], align 8              ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [64 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [88 x i8], align 8                ; 6 uses
  %.sroa.07 = alloca [240 x i8], align 8          ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = load i64, ptr %i.k, align 8, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15610
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 36028797018963968) %i.n, i1 noundef zeroext false, i64 noundef 8, i64 noundef 256), !noalias !15610
  %i.o = load i64, ptr %i.a, align 8, !range !4, !noalias !15610, !noundef !3
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !43, !noalias !15610, !noundef !3 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.s, align 8, !noalias !15610
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #21, !noalias !15610
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a
  %i.u = load ptr, ptr %i.s, align 8, !noalias !15610, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = icmp ule i64 %i.n, %i.r
  tail call void @llvm.assume(i1 %i.v), !noalias !15610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15610
  store i64 %i.r, ptr %i.j, align 8, !noalias !15610
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.u, ptr %i.w, align 8, !noalias !15610
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw [256 x i8], ptr %i.m, i64 %i.n
  %i.z = icmp eq i64 %i.r, 0
  br i1 %i.z, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3CteNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.07.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 88
  %.sroa.07.152..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07, i64 152
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.10.042 = phi i64 [ %i.r, %.lr.ph ], [ %i.ag, %bb.p ]
  %.sroa.06.041 = phi ptr [ %i.m, %.lr.ph ], [ %i.ai, %bb.p ] ; 13 uses
  %.sroa.7.040 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %bb.p ] ; 3 uses
  %i.ag = add i64 %.sroa.10.042, -1               ; 2 uses
  %i.ah = icmp eq ptr %.sroa.06.041, %i.y
  br i1 %i.ah, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3CteNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.d

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 256
  %i.aj = add nuw nsw i64 %.sroa.7.040, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15619
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15626)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.06.041)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 56
  %i.al = load i32, ptr %i.ak, align 8, !range !7691, !alias.scope !15626, !noalias !15623, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.am, i64 32, i1 false), !alias.scope !15628
  store i32 %i.al, ptr %i.ab, align 8, !alias.scope !15623, !noalias !15626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15619
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 64
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an)
          to label %_RNvXsa5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10TableAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.e, !noalias !15629, !inline_history !15630

bb.e:                                             ; preds = %.noexc
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %bb.r unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !15629, !inline_history !15630
  unreachable

_RNvXsa5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10TableAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !15631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !15631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15617
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15632), !noalias !15635
  %i.aq = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks()
          to label %.noexc.i unwind label %bb.h, !noalias !15636, !inline_history !15637 ; 4 uses

.noexc.i:                                         ; preds = %_RNvXsa5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10TableAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 240
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !15638, !noalias !15636, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15639
  invoke fastcc void @_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.as) #28
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.g, !noalias !15642, !inline_history !15643

bb.g:                                             ; preds = %.noexc.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef 1400, i64 noundef 8) #24, !noalias !15642, !inline_history !15637
  br label %.body.i

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.aq, ptr noundef nonnull align 8 dereferenceable(1400) %i.c, i64 1400, i1 false), !noalias !15644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15639
  store ptr %i.aq, ptr %i.h, align 8, !noalias !15617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15617
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 88 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !43, !alias.scope !15614, !noalias !15636, !noundef !3
  %.not.i1 = icmp eq i64 %i.av, -9223372036854775808
  br i1 %.not.i1, label %bb.j, label %bb.i

.body.i:                                          ; preds = %bb.g, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ %i.aw, %bb.h ], [ %i.at, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10TableAliasECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(88) %i.i) #23
          to label %bb.r unwind label %bb.o, !noalias !15636, !inline_history !15645

bb.h:                                             ; preds = %_RNvXsa5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10TableAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15617
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15646), !noalias !15635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15649), !noalias !15635
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.au)
          to label %_RNvXs3T_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.l, !noalias !15636, !inline_history !15645

_RNvXs3T_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 144
  %i.ay = load i32, ptr %i.ax, align 8, !range !7691, !alias.scope !15651, !noalias !15652, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.az, i64 32, i1 false), !alias.scope !15653, !noalias !15636
  store i32 %i.ay, ptr %i.ae, align 8, !alias.scope !15646, !noalias !15654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !15617
end_hunk_5
