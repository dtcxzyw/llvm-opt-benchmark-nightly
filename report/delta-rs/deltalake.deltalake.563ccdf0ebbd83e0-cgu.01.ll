inline.NumInlined: 10669
inline.NumDeleted: 3626
begin_hunk_0_@_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.1129.073 = phi i8 [ undef, %.lr.ph ], [ %.sroa.1129.1, %_RNvXshJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 2 uses
  %i.y = add i64 %.sroa.10.075, -1                ; 2 uses
  %i.z = icmp eq ptr %.sroa.024.078, %i.u
  br i1 %i.z, label %.thread, label %bb.d

.thread:                                          ; preds = %_RNvXshJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10455)
  %i.ac = load i64, ptr %.sroa.024.078, align 8, !range !296, !alias.scope !10455, !noalias !10458, !noundef !3 ; 3 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10460
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10464)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ah)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 392
  %i.ak = load i32, ptr %i.aj, align 8, !range !10466, !alias.scope !10464, !noalias !10461, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.al, i64 32, i1 false), !alias.scope !10467
  store i32 %i.ak, ptr %i.x, align 8, !alias.scope !10461, !noalias !10464
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10468)
  %i.am = load i64, ptr %i.ai, align 8, !range !201, !alias.scope !10468, !noalias !10471, !noundef !3
  %i.an = tail call i64 @llvm.usub.sat.i64(i64 %i.am, i64 68)
  switch i64 %i.an, label %default.unreachable [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.p
  ]

default.unreachable:                              ; preds = %bb.l, %.noexc12, %.noexc
  unreachable

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10473
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ai) #30
          to label %.noexc20 unwind label %bb.o, !inline_history !10474

.noexc20:                                         ; preds = %bb.g
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8, !noalias !10475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 24, i1 false), !noalias !10475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.8.sroa.0, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.8.0..sroa_idx, i64 288, i1 false), !noalias !10475
  %.sroa.8.sroa.4.0.copyload = load i64, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8, !noalias !10475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10473
  br label %bb.p

bb.h:                                             ; preds = %.noexc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10476), !noalias !10458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10479
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !10481, !noalias !10484, !nonnull !3, !noundef !3
  %i.ar = load i64, ptr %i.ao, align 8, !alias.scope !10481, !noalias !10484, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aq, i64 noundef %i.ar) #30
          to label %.noexc21 unwind label %bb.o, !inline_history !10474

.noexc21:                                         ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !10475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10479
  br label %bb.p

bb.i:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 328 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10460
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(664) %.sroa.024.078) #30
          to label %.noexc12 unwind label %.loopexit, !inline_history !10486

.noexc12:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.691)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10487)
  %i.at = load i64, ptr %i.as, align 8, !range !201, !alias.scope !10487, !noalias !10490, !noundef !3
  %i.au = tail call i64 @llvm.usub.sat.i64(i64 %i.at, i64 68)
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.s
  ]

bb.j:                                             ; preds = %.noexc12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10492
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.as) #30
          to label %.noexc17 unwind label %bb.r, !inline_history !10474

.noexc17:                                         ; preds = %bb.j
  %.sroa.089.0.copyload = load i64, ptr %i.d, align 8, !noalias !10493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.691, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.691.0..sroa_idx, i64 24, i1 false), !noalias !10493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i64 40, i1 false), !noalias !10493
  %.sroa.792.0.copyload = load i8, ptr %.sroa.792.0..sroa_idx, align 8, !noalias !10493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %.sroa.893, ptr noundef nonnull align 1 dereferenceable(255) %.sroa.893.0..sroa_idx, i64 255, i1 false), !noalias !10493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10492
  br label %bb.s

bb.k:                                             ; preds = %.noexc12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10494), !noalias !10458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10497
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 352
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 344
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !10499, !noalias !10502, !nonnull !3, !noundef !3
  %i.ay = load i64, ptr %i.av, align 8, !alias.scope !10499, !noalias !10502, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ax, i64 noundef %i.ay) #30
          to label %.noexc18 unwind label %bb.r, !inline_history !10474

.noexc18:                                         ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.691, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !10493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10497
  br label %bb.s

bb.l:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.649)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10504)
  %i.ba = load i64, ptr %i.az, align 8, !range !201, !alias.scope !10504, !noalias !10507, !noundef !3
  %i.bb = tail call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 68)
  switch i64 %i.bb, label %default.unreachable [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %.noexc13
  ]

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10509
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.az) #30
          to label %.noexc15 unwind label %.loopexit, !inline_history !10474

.noexc15:                                         ; preds = %bb.m
  %.sroa.047.0.copyload = load i64, ptr %i.f, align 8, !noalias !10504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.649, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.649.0..sroa_idx, i64 24, i1 false), !noalias !10504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.750.sroa.0, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.750.0..sroa_idx, i64 288, i1 false), !noalias !10504
  %.sroa.750.sroa.4.0.copyload = load i64, ptr %.sroa.750.sroa.4.0..sroa.750.0..sroa_idx.sroa_idx, align 8, !noalias !10504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10509
  br label %.noexc13

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10513
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !10515, !noalias !10518, !nonnull !3, !noundef !3
  %i.bf = load i64, ptr %i.bc, align 8, !alias.scope !10515, !noalias !10518, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.be, i64 noundef %i.bf) #30
          to label %.noexc16 unwind label %.loopexit, !inline_history !10474

.noexc16:                                         ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.649, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !10504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10513
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
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %bb.u unwind label %bb.q

bb.p:                                             ; preds = %.noexc, %.noexc20, %.noexc21
  %.sroa.8.sroa.4.1 = phi i64 [ %.sroa.8.sroa.4.0.copyload, %.noexc20 ], [ %.sroa.8.sroa.4.0, %.noexc21 ], [ %.sroa.8.sroa.4.0, %.noexc ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %.noexc20 ], [ 69, %.noexc21 ], [ 70, %.noexc ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 400
  %.val5.i = load i8, ptr %i.bh, align 8, !range !5680, !alias.scope !10455, !noalias !10458, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.sroa.7.sroa.7, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.6.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.8.sroa.0, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10460
  br label %_RNvXshJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.q:                                             ; preds = %bb.o, %bb.r
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !10458, !inline_history !10486
  unreachable

bb.r:                                             ; preds = %bb.k, %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.g) #25
          to label %bb.u unwind label %bb.q, !noalias !10458, !inline_history !10486

bb.s:                                             ; preds = %.noexc12, %.noexc17, %.noexc18
  %.sroa.792.1 = phi i8 [ %.sroa.792.0.copyload, %.noexc17 ], [ %.sroa.792.0, %.noexc18 ], [ %.sroa.792.0, %.noexc12 ] ; 2 uses
  %.sroa.089.0 = phi i64 [ %.sroa.089.0.copyload, %.noexc17 ], [ 69, %.noexc18 ], [ 70, %.noexc12 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 656
  %.val.i = load i8, ptr %i.bk, align 8, !range !5680, !alias.scope !10455, !noalias !10458, !noundef !3
  %.sroa.025.0.copyload26 = load i64, ptr %i.g, align 8, !noalias !10455
  %.sroa.6.sroa.0.0.copyload52 = load i64, ptr %.sroa.6.0..sroa_idx27, align 8, !noalias !10455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx27.sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.6.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx27.sroa_idx, i64 288, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.7.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.691, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.sroa.7.sroa.7.320..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(255) %.sroa.893, i64 255, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.691)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.893)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10460
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.u:                                             ; preds = %.loopexit, %bb.o, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.bj, %bb.r ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.076, ptr %i.t, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.j) #25
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast13SetAssignmentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 25620477880152156) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.015 = alloca [352 x i8], align 8         ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 360)
  %i.f = load i64, ptr %i.d, align 8, !range !4, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !62, !noundef !3 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
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

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  %.sroa.015.328..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015, i64 328
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.10.038 = phi i64 [ %i.i, %.lr.ph ], [ %i.r, %bb.g ]
  %.sroa.014.037 = phi ptr [ %1, %.lr.ph ], [ %i.t, %bb.g ] ; 6 uses
  %.sroa.7.036 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.g ] ; 3 uses
  %i.r = add i64 %.sroa.10.038, -1                ; 2 uses
  %i.s = icmp eq ptr %.sroa.014.037, %i.p
  br i1 %i.s, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.g, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10520)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.037, i64 352
  %i.w = load i8, ptr %i.v, align 8, !range !10523, !alias.scope !10520, !noalias !10524, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10526
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10527)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10530
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.014.037, i64 344
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.037, i64 336
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !10532, !noalias !10535, !nonnull !3, !noundef !3
  %i.aa = load i64, ptr %i.x, align 8, !alias.scope !10532, !noalias !10535, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.z, i64 noundef %i.aa) #30
          to label %.noexc unwind label %.loopexit, !inline_history !10537

.noexc:                                           ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !10527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10526
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.014.037)
          to label %bb.g unwind label %bb.e, !noalias !10524, !inline_history !10538

bb.e:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.c) #25
          to label %bb.i unwind label %bb.f, !noalias !10524, !inline_history !10538

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !10524, !inline_history !10538
  unreachable

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015.328..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.015, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10526
  %i.ad = getelementptr inbounds nuw [360 x i8], ptr %i.l, i64 %.sroa.7.036 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.ad, ptr noundef nonnull align 8 dereferenceable(352) %.sroa.015, i64 352, i1 false)
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 352
  store i8 %i.w, ptr %.sroa.424.0..sroa_idx, align 8
  %i.ae = icmp eq i64 %i.r, 0
  br i1 %i.ae, label %.thread, label %bb.c

bb.h:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.i:                                             ; preds = %.loopexit, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.036, ptr %i.o, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast13SetAssignmentEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.e) #25
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 104811045873349726) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 88)
  %i.f = load i64, ptr %i.d, align 8, !range !4, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !62, !noundef !3 ; 5 uses
end_hunk_0
begin_hunk_1_@_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake:bb.a
bb.j:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.aj = load i64, ptr %.sroa.015.051, align 8, !range !88, !alias.scope !10580, !noalias !10583, !noundef !3
  %.not6.i = icmp eq i64 %i.aj, 69
  br i1 %.not6.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10585
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(456) %.sroa.015.051)
          to label %bb.n unwind label %bb.m, !noalias !10583, !inline_history !10592

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.c) #25
          to label %bb.h unwind label %bb.o, !noalias !10583, !inline_history !10592

bb.n:                                             ; preds = %bb.l
  %.sroa.01.0.copyload2.i = load i64, ptr %i.a, align 8, !noalias !10585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx3.i, i64 320, i1 false), !noalias !10585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10585
  br label %bb.p

bb.o:                                             ; preds = %bb.i, %bb.m
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !10583, !inline_history !10592
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10585
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.r:                                             ; preds = %.loopexit, %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.i ], [ %.pn.i, %bb.h ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.050, ptr %i.p, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.f) #25
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 27450512014448738) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 336)
  %i.i = load i64, ptr %i.g, align 8, !range !4, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !62, !noundef !3 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #23
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
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

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
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

.thread:                                          ; preds = %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10596)
  %i.y = load i64, ptr %.sroa.024.093, align 8, !range !4227, !alias.scope !10596, !noalias !10599, !noundef !3 ; 3 uses
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
  %.val.i = load i8, ptr %i.ad, align 8, !range !4240, !alias.scope !10596, !noalias !10599, !noundef !3
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10601
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !10602, !noalias !10605, !nonnull !3, !noundef !3
  %i.ah = load i64, ptr %i.ae, align 8, !alias.scope !10602, !noalias !10605, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ag, i64 noundef %i.ah) #30
          to label %.noexc unwind label %.loopexit, !inline_history !10607

.noexc:                                           ; preds = %bb.g
  %.sroa.11.8.copyload31 = load i8, ptr %i.f, align 8, !noalias !10596
  %.sroa.18.sroa.0.0.copyload54 = load i8, ptr %.sroa.18.8..sroa_idx36, align 1, !noalias !10596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9.0..sroa.18.8..sroa_idx36.sroa_idx, i64 6, i1 false)
  %.sroa.18.sroa.10.0.copyload59 = load ptr, ptr %.sroa.18.sroa.10.0..sroa.18.8..sroa_idx36.sroa_idx, align 8, !noalias !10596
  %i.ai = load i64, ptr %.sroa.18.sroa.11.0..sroa.18.8..sroa_idx36.sroa_idx, align 8, !noalias !10596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10601
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10601
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aj) #30
          to label %.noexc12 unwind label %.loopexit, !inline_history !10608

.noexc12:                                         ; preds = %bb.h
  %.sroa.11.8.copyload = load i8, ptr %i.e, align 8, !noalias !10596
  %.sroa.18.sroa.0.0.copyload50 = load i8, ptr %.sroa.18.8..sroa_idx, align 1, !noalias !10596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9.0..sroa.18.8..sroa_idx.sroa_idx, i64 6, i1 false)
  %.sroa.18.sroa.10.0.copyload55 = load ptr, ptr %.sroa.18.sroa.10.0..sroa.18.8..sroa_idx.sroa_idx, align 8, !noalias !10596
  %.sroa.18.sroa.11.sroa.0.sroa.0.0.copyload = load i64, ptr %.sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx, align 8, !noalias !10596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.18.sroa.11.sroa.0.sroa.8, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.18.sroa.11.sroa.0.sroa.8.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx.sroa_idx, i64 296, i1 false)
  %.sroa.18.sroa.11.sroa.8.0.copyload = load i8, ptr %.sroa.18.sroa.11.sroa.8.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx.sroa_idx, align 8, !noalias !10596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.sroa.11.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.sroa.11.sroa.9.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx.sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10601
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10609)
  %i.al = load i8, ptr %i.ak, align 8, !range !4240, !alias.scope !10609, !noalias !10612, !noundef !3
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !10609, !noalias !10612, !align !773, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCs7p2uQeJxui2_9deltalake()
          to label %.noexc21 unwind label %.loopexit, !inline_history !10614 ; 3 uses

.noexc21:                                         ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10615
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ao) #30
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.l, !inline_history !10620

bb.l:                                             ; preds = %.noexc21
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef 328, i64 noundef 8) #27, !noalias !10621
  br label %bb.s

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.noexc21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ap, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !10615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10615
  br label %bb.m

bb.m:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i, %bb.j
  %.sroa.0.0.i20 = phi ptr [ %i.ap, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i ], [ null, %bb.j ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !range !4240, !alias.scope !10609, !noalias !10612, !noundef !3 ; 2 uses
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.n:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10622)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 328
  %.val.i18 = load i8, ptr %i.at, align 8, !range !4240, !alias.scope !10622, !noalias !10625, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10627
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %.sroa.024.093) #30
          to label %.noexc14 unwind label %.loopexit, !inline_history !10628

.noexc14:                                         ; preds = %bb.n
  %.sroa.060.0.copyload = load i64, ptr %i.b, align 8, !noalias !10622
  %.sroa.461.0.copyload = load i8, ptr %.sroa.461.0..sroa_idx, align 8, !noalias !10622
  %.sroa.562.0.copyload = load i8, ptr %.sroa.562.0..sroa_idx, align 1, !noalias !10622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.663.0..sroa_idx, i64 6, i1 false)
  %.sroa.764.0.copyload = load ptr, ptr %.sroa.764.0..sroa_idx, align 8, !noalias !10622
  %.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !10622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.18.sroa.11.sroa.0.sroa.8, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10627
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10601
  invoke fastcc void @_RNvXsl_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.au) #30
          to label %.noexc15 unwind label %.loopexit, !inline_history !10608

.noexc15:                                         ; preds = %bb.o
  %.sroa.11.8.copyload30 = load i8, ptr %i.d, align 8, !noalias !10596
  %.sroa.18.sroa.0.0.copyload53 = load i8, ptr %.sroa.18.8..sroa_idx35, align 1, !noalias !10596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9.0..sroa.18.8..sroa_idx35.sroa_idx, i64 6, i1 false)
  %.sroa.18.sroa.10.0.copyload58 = load ptr, ptr %.sroa.18.sroa.10.0..sroa.18.8..sroa_idx35.sroa_idx, align 8, !noalias !10596
  %.sroa.18.sroa.11.sroa.0.sroa.0.0.copyload104 = load i64, ptr %.sroa.18.sroa.11.0..sroa.18.8..sroa_idx35.sroa_idx, align 8, !noalias !10596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.sroa.11.sroa.0.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.sroa.11.sroa.0.sroa.8.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx35.sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10601
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.p:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  %.val1.i = load i8, ptr %i.av, align 8, !range !4240, !alias.scope !10596, !noalias !10599, !noundef !3
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.q:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10629
  invoke fastcc void @_RNvXsh_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aw) #30
          to label %.noexc16 unwind label %.loopexit, !inline_history !10633

.noexc16:                                         ; preds = %bb.q
  %.sroa.067.0.copyload = load i8, ptr %i.c, align 8, !noalias !10634
  %.sroa.468.0.copyload = load i8, ptr %.sroa.468.0..sroa_idx, align 1, !noalias !10634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.569.0..sroa_idx, i64 6, i1 false)
  %.sroa.670.0.copyload = load ptr, ptr %.sroa.670.0..sroa_idx, align 8, !noalias !10634
  %.sroa.771.sroa.0.0.copyload = load i64, ptr %.sroa.771.0..sroa_idx, align 8, !noalias !10634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.sroa.11.sroa.0.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.771.sroa.4.0..sroa.771.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10629
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.s:                                             ; preds = %.loopexit, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.l ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.090, ptr %i.r, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h) #25
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast3TagNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 192153584101141163) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.g = load i64, ptr %i.d, align 8, !range !4, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !62, !noundef !3 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #23
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
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

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.10.026 = phi i64 [ %i.j, %.lr.ph ], [ %i.t, %bb.g ]
  %.sroa.013.025 = phi ptr [ %1, %.lr.ph ], [ %i.v, %bb.g ] ; 5 uses
  %.sroa.7.024 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.g ] ; 3 uses
  %i.t = add i64 %.sroa.10.026, -1                ; 2 uses
  %i.u = icmp eq ptr %.sroa.013.025, %i.q
  br i1 %i.u, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.g, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10639)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10642
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.025, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.025, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !10644, !noalias !10647, !nonnull !3, !noundef !3
  %i.aa = load i64, ptr %i.x, align 8, !alias.scope !10644, !noalias !10647, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.z, i64 noundef %i.aa) #30
          to label %.noexc unwind label %.loopexit, !inline_history !10649

.noexc:                                           ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !10639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10635
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.025, i64 24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.g unwind label %bb.e, !noalias !10650, !inline_history !10651

bb.e:                                             ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.c) #25
          to label %bb.i unwind label %bb.f, !noalias !10650, !inline_history !10651

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !10650, !inline_history !10651
  unreachable

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10635
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.sroa.7.024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.af = icmp eq i64 %i.t, 0
  br i1 %i.af, label %.thread, label %bb.c

bb.h:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.i:                                             ; preds = %.loopexit, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.024, ptr %i.p, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast3TagEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.f) #25
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 67818912035696881) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 136)
  %i.f = load i64, ptr %i.d, align 8, !range !4, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
end_hunk_1
begin_hunk_2_@_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake:bb.a

bb.af:                                            ; preds = %.noexc15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1044, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1044.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10698
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs7p2uQeJxui2_9deltalake.exit.i, %bb.ab, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i23, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs7p2uQeJxui2_9deltalake.exit.i ], [ %lpad.loopexit.i.i.i, %bb.m ], [ %i.dl, %bb.ae ], [ %i.dj, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store i64 %.sroa.7.090, ptr %i.z, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.p) #25
          to label %bb.ai unwind label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast9StatementNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 3431314001806093) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [2688 x i8], align 8              ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 2688)
  %i.d = load i64, ptr %i.a, align 8, !range !4, !noundef !3
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !62, !noundef !3 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #23
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
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

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit, %bb.d
  %.sroa.10.023 = phi i64 [ %i.p, %bb.d ], [ %i.g, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit ]
  %.sroa.012.022 = phi ptr [ %i.s, %bb.d ], [ %1, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit ] ; 3 uses
  %.sroa.7.021 = phi i64 [ %i.r, %bb.d ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit ] ; 3 uses
  %i.p = add i64 %.sroa.10.023, -1                ; 2 uses
  %i.q = icmp eq ptr %.sroa.012.022, %i.n
  br i1 %i.q, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.d, %.lr.ph, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021, ptr %i.m, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast9StatementEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.c) #25
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 27450512014448738) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 336)
  %i.f = load i64, ptr %i.d, align 8, !range !4, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !62, !noundef !3 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
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

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
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

.thread:                                          ; preds = %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  store i64 %2, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 336
  %i.u = add nuw nsw i64 %.sroa.7.062, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10760)
  %i.v = load i8, ptr %.sroa.015.064, align 8, !range !1474, !alias.scope !10760, !noalias !10757, !noundef !3 ; 2 uses
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
  %.sroa.13.sroa.10.0.copyload47 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx30.sroa_idx, align 8, !alias.scope !10762
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx30.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10762
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.w) #30
          to label %.noexc unwind label %bb.q, !inline_history !10763

.noexc:                                           ; preds = %bb.f
  %.sroa.13.sroa.10.7.copyload49 = load i64, ptr %i.c, align 8, !noalias !10760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.13.sroa.13.7..sroa_idx50, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10762
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx29, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx29.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload46 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx29.sroa_idx, align 8, !alias.scope !10762
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx29.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx29.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx28, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload45 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx28.sroa_idx, align 8, !alias.scope !10762
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx28.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx27, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx27.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload44 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx27.sroa_idx, align 8, !alias.scope !10762
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx27.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx27.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx26, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx26.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload43 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx26.sroa_idx, align 8, !alias.scope !10762
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx26.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx26.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.k:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10764)
  %i.y = load i64, ptr %i.x, align 8, !range !88, !alias.scope !10764, !noalias !10767, !noundef !3
  %i.z = icmp eq i64 %i.y, 69
  br i1 %i.z, label %.noexc12, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10769
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.x) #30
          to label %.noexc14 unwind label %bb.q, !inline_history !10770

.noexc14:                                         ; preds = %bb.l
  %.sroa.039.0.copyload = load i64, ptr %i.a, align 8, !noalias !10764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.541, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.541.0..sroa_idx, i64 320, i1 false), !noalias !10764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10769
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
  %.sroa.13.sroa.10.0.copyload42 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx25.sroa_idx, align 8, !alias.scope !10762
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx25.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx25.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.n:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx24, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx24.sroa_idx, align 8, !alias.scope !10762
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx24.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10762
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aa) #30
          to label %.noexc13 unwind label %bb.q, !inline_history !10763

.noexc13:                                         ; preds = %bb.o
  %.sroa.13.sroa.10.7.copyload = load i64, ptr %i.b, align 8, !noalias !10760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.13.sroa.13.7..sroa_idx, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10762
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o, %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.062, ptr %i.o, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.e) #25
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %lpad.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 6664286153796804) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 1384)
  %i.k = load i64, ptr %i.i, align 8, !range !4, !noundef !3
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !62, !noundef !3 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #23
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
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

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
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

.thread:                                          ; preds = %bb.z, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10771)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10774
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10779)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10781
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1384) %.sroa.026.059) #30
          to label %.noexc20 unwind label %.loopexit, !inline_history !10782

.noexc20:                                         ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.026.059, i64 1312
  %.val.i = load i8, ptr %i.af, align 1, !range !544, !alias.scope !10779, !noalias !10776, !noundef !3
  %i.ag = getelementptr i8, ptr %.sroa.026.059, i64 1313
  %.val4.i = load i8, ptr %i.ag, align 1, !range !544, !alias.scope !10779, !noalias !10776, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i14.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i14.sroa.5)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.026.059, i64 328 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !201, !alias.scope !10779, !noalias !10776, !noundef !3 ; 2 uses
  %.not.i15 = icmp eq i64 %i.ai, 70
  br i1 %.not.i15, label %.noexc, label %bb.f

bb.e:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit ], [ %.pn.i.i, %bb.m ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.f) #25
          to label %bb.ab unwind label %bb.u, !noalias !10776, !inline_history !10782

bb.f:                                             ; preds = %.noexc20
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10783)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10786
  %.not.i.i = icmp eq i64 %i.ai, 69
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10786
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(984) %i.ah) #30
          to label %.noexc.i unwind label %bb.e, !noalias !10776, !inline_history !10788

.noexc.i:                                         ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.e, ptr noundef nonnull align 8 dereferenceable(328) %i.c, i64 328, i1 false), !noalias !10786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10786
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 69, ptr %i.e, align 8, !noalias !10786
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10786
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.026.059, i64 656 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !88, !alias.scope !10789, !noalias !10790, !noundef !3
  %.not4.i.i = icmp eq i64 %i.al, 69
  br i1 %.not4.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10786
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ak)
          to label %bb.o unwind label %bb.n, !noalias !10790, !inline_history !10788

bb.k:                                             ; preds = %bb.i
  store i64 69, ptr %i.d, align 8, !noalias !10786
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
end_hunk_2
begin_hunk_3_@_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl19AlterTableOperationNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.122.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.122.sroa.13.0..sroa.122.8..sroa_idx746.sroa_idx, i64 16, i1 false)
  %.sroa.123.8.copyload756 = load i8, ptr %.sroa.123.8..sroa_idx755, align 8, !noalias !10825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.124.sroa.0, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.124.8..sroa_idx762, i64 15, i1 false)
  %i.hl = load <2 x i32>, ptr %.sroa.124.sroa.12.0..sroa.124.8..sroa_idx762.sroa_idx, align 8, !noalias !10825
  %i.hm = load <2 x i8>, ptr %.sroa.124763.8..sroa_idx772, align 8, !noalias !10825
  %.sroa.126.sroa.0.0.copyload1338 = load i16, ptr %.sroa.126.8..sroa_idx788, align 2, !noalias !10825
  %.sroa.126.sroa.10.0.copyload1344 = load i32, ptr %.sroa.126.sroa.10.0..sroa.126.8..sroa_idx788.sroa_idx, align 4, !noalias !10825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.126.sroa.11, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.126.sroa.11.0..sroa.126.8..sroa_idx788.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !10830
  br label %_RNvXs15_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 216
  %i.hp = load <2 x i8>, ptr %i.ho, align 8, !alias.scope !10825, !noalias !10828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !10830
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10832)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10835
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10840)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.hn)
          to label %.noexc207 unwind label %.loopexit1413, !inline_history !10842

.noexc207:                                        ; preds = %bb.g
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 64
  %i.hr = load i32, ptr %i.hq, align 8, !range !10466, !alias.scope !10843, !noalias !10844, !noundef !3
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fu, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.hs, i64 32, i1 false), !alias.scope !10845, !noalias !10846
  store i32 %i.hr, ptr %i.fv, align 8, !alias.scope !10837, !noalias !10847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10835
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 96
  invoke fastcc void @_RNvXsh_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ht)
          to label %bb.j unwind label %bb.i, !noalias !10846, !inline_history !10842

bb.h:                                             ; preds = %bb.k, %bb.i
  %.pn.i206 = phi { ptr, i32 } [ %i.hz, %bb.k ], [ %i.hu, %bb.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %bb.fx unwind label %bb.l, !noalias !10846, !inline_history !10842

bb.i:                                             ; preds = %.noexc207
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %.noexc207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10835
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 88
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 80
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !10848, !noalias !10851, !nonnull !3, !noundef !3
  %i.hy = load i64, ptr %i.hv, align 8, !alias.scope !10848, !noalias !10851, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl15ColumnOptionDefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.hx, i64 noundef %i.hy) #30
          to label %.noexc13 unwind label %bb.k, !noalias !10846, !inline_history !10853

bb.k:                                             ; preds = %bb.j
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.l) #25
          to label %bb.h unwind label %bb.l, !noalias !10846, !inline_history !10842

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !10846, !inline_history !10842
  unreachable

.noexc13:                                         ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ch, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false), !noalias !10832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fw, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !10832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !10832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10835
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.sroa.4.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.sroa.6.sroa.0)
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 152 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !range !189, !alias.scope !10825, !noalias !10828, !noundef !3 ; 2 uses
  %.not47.i = icmp eq i64 %i.ic, -9223372036854775807
  br i1 %.not47.i, label %bb.dz, label %bb.dx

bb.m:                                             ; preds = %bb.d
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 192
  %i.if = load i8, ptr %i.ie, align 8, !range !4240, !alias.scope !10825, !noalias !10828, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !10830
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10857)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.id)
          to label %.noexc14 unwind label %.loopexit1413

.noexc14:                                         ; preds = %bb.m
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 64
  %i.ih = load i32, ptr %i.ig, align 8, !range !10466, !alias.scope !10857, !noalias !10854, !noundef !3 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fq, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ii, i64 32, i1 false), !alias.scope !10859
  store i32 %i.ih, ptr %i.fr, align 8, !alias.scope !10854, !noalias !10857
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10860)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10863
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 88
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 80
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !10865, !noalias !10868, !nonnull !3, !noundef !3 ; 2 uses
  %i.im = load i64, ptr %i.ij, align 8, !alias.scope !10865, !noalias !10868, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10870
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 12397005425880076) %i.im, i1 noundef zeroext false, i64 noundef 8, i64 noundef 744)
          to label %.noexc1784 unwind label %.loopexit, !inline_history !10874

.noexc1784:                                       ; preds = %.noexc14
  %i.in = load i64, ptr %i.a, align 8, !range !4, !noalias !10870, !noundef !3
  %i.io = trunc nuw i64 %i.in to i1
  %i.ip = load i64, ptr %i.fy, align 8, !range !62, !noalias !10870, !noundef !3 ; 5 uses
  br i1 %i.io, label %bb.n, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i, !prof !10

bb.n:                                             ; preds = %.noexc1784
  %i.iq = load i64, ptr %i.fz, align 8, !noalias !10870
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ip, i64 %i.iq) #23
          to label %.noexc1785 unwind label %.loopexit.split-lp, !inline_history !10874

.noexc1785:                                       ; preds = %bb.n
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.noexc1784
  %i.ir = load ptr, ptr %i.fz, align 8, !noalias !10870, !nonnull !3, !noundef !3 ; 2 uses
  %i.is = icmp ule i64 %i.im, %i.ip
  tail call void @llvm.assume(i1 %i.is)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10870
  store i64 %i.ip, ptr %i.c, align 8, !noalias !10870
  store ptr %i.ir, ptr %i.ga, align 8, !noalias !10870
  %i.it = getelementptr inbounds nuw [744 x i8], ptr %i.il, i64 %i.im
  %i.iu = icmp eq i64 %i.ip, 0
  br i1 %i.iu, label %.noexc201, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i, %bb.p
  %.sroa.10.023.i = phi i64 [ %i.iv, %bb.p ], [ %i.ip, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.012.022.i = phi ptr [ %i.iy, %bb.p ], [ %i.il, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.ix, %bb.p ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i ] ; 3 uses
  %i.iv = add i64 %.sroa.10.023.i, -1             ; 2 uses
  %i.iw = icmp eq ptr %.sroa.012.022.i, %i.it
  br i1 %i.iw, label %.noexc201, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RNvXs3X_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(744) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(744) %.sroa.012.022.i)
          to label %bb.p unwind label %bb.r, !noalias !10875, !inline_history !10874

bb.p:                                             ; preds = %bb.o
  %i.ix = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 744
  %i.iz = getelementptr inbounds nuw [744 x i8], ptr %i.ir, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(744) %i.iz, ptr noundef nonnull align 8 dereferenceable(744) %i.b, i64 744, i1 false), !noalias !10875
  %i.ja = icmp eq i64 %i.iv, 0
  br i1 %i.ja, label %.noexc201, label %.lr.ph.i

bb.q:                                             ; preds = %bb.r
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !10875, !inline_history !10874
  unreachable

bb.r:                                             ; preds = %bb.o
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i, ptr %i.gb, align 8, !noalias !10870
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.c) #25
          to label %.body202 unwind label %bb.q, !noalias !10875, !inline_history !10874

.noexc201:                                        ; preds = %bb.p, %.lr.ph.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i
  store i64 %i.im, ptr %i.gb, align 8, !noalias !10870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !10876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10863
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 96
  %i.jd = load i64, ptr %i.jc, align 8, !range !189, !alias.scope !10860, !noalias !10877, !noundef !3 ; 2 uses
  %.not.i194 = icmp eq i64 %i.jd, -9223372036854775807
  br i1 %.not.i194, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %.noexc201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10878)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10881
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10886)
  %.not.i230 = icmp eq i64 %i.jd, -9223372036854775808
  br i1 %.not.i230, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10888
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 112
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 104
  %i.jg = load ptr, ptr %i.jf, align 8, !alias.scope !10889, !noalias !10892, !nonnull !3, !noundef !3
  %i.jh = load i64, ptr %i.je, align 8, !alias.scope !10889, !noalias !10892, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.jg, i64 noundef %i.jh) #30
          to label %.noexc232 unwind label %bb.ac, !inline_history !10894

.noexc232:                                        ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !10895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10888
  br label %.noexc.i

bb.u:                                             ; preds = %bb.s
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 104
  %.val.i231 = load i8, ptr %i.ji, align 8, !range !544, !alias.scope !10886, !noalias !10896, !noundef !3
  %i.jj = getelementptr i8, ptr %.sroa.0233.01650, i64 105
  %.val1.i = load i8, ptr %i.jj, align 1, !range !544, !alias.scope !10886, !noalias !10896, !noundef !3
  store i8 %.val.i231, ptr %i.fs, align 8, !alias.scope !10883, !noalias !10895
  store i8 %.val1.i, ptr %i.ft, align 1, !alias.scope !10883, !noalias !10895
  store i64 -9223372036854775808, ptr %i.q, align 8, !alias.scope !10883, !noalias !10895
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.u, %.noexc232
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 120
  %i.jl = load i64, ptr %i.jk, align 8, !range !189, !alias.scope !10897, !noalias !10898, !noundef !3 ; 2 uses
  %.not.i.i196 = icmp eq i64 %i.jl, -9223372036854775807
  br i1 %.not.i.i196, label %_RNvXsbd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, label %bb.v

bb.v:                                             ; preds = %.noexc.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10899)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i224)
  %.not.i225 = icmp eq i64 %i.jl, -9223372036854775808
  br i1 %.not.i225, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10902
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 136
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 128
  %i.jo = load ptr, ptr %i.jn, align 8, !alias.scope !10904, !noalias !10907, !nonnull !3, !noundef !3
  %i.jp = load i64, ptr %i.jm, align 8, !alias.scope !10904, !noalias !10907, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15InterpolateExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.jo, i64 noundef %i.jp) #30
          to label %.noexc229 unwind label %bb.x, !inline_history !10909

.noexc229:                                        ; preds = %bb.w
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !10902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i224, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i226, i64 16, i1 false), !noalias !10902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10902
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByKindECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.q) #25
          to label %.body.i unwind label %bb.z, !noalias !10898, !inline_history !10910

bb.y:                                             ; preds = %.noexc229, %bb.v
  %.sroa.0.0.i227 = phi i64 [ %.sroa.0.0.copyload.i, %.noexc229 ], [ -9223372036854775808, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i224, i64 16, i1 false), !noalias !10898
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i224)
  br label %_RNvXsbd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.z:                                             ; preds = %bb.x
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !10898, !inline_history !10910
  unreachable

_RNvXsbd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.y, %.noexc.i
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.i227, %bb.y ], [ -9223372036854775807, %.noexc.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !10863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.51387.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !10863
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10881
  store i64 %.sroa.0.0.i.i, ptr %.sroa.41386.0..sroa_idx, align 8, !noalias !10863
  br label %bb.ab

bb.aa:                                            ; preds = %.noexc201
  store i64 -9223372036854775807, ptr %i.r, align 8, !noalias !10863
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvXsbd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i193.sroa.5.sroa.4)
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 144 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !range !189, !alias.scope !10860, !noalias !10877, !noundef !3 ; 2 uses
  %.not4.i = icmp eq i64 %i.jt, -9223372036854775807
  br i1 %.not4.i, label %bb.ec, label %bb.ad

.body.i:                                          ; preds = %bb.ac, %bb.x, %.body9.i
  %.pn.i195 = phi { ptr, i32 } [ %eh.lpad-body10.i, %.body9.i ], [ %i.ju, %bb.ac ], [ %i.jq, %bb.x ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.s) #25
          to label %.body202 unwind label %bb.ak, !noalias !10877, !inline_history !10911

bb.ac:                                            ; preds = %bb.t
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.81391.sroa.5)
  %.not.i6.i = icmp eq i64 %i.jt, -9223372036854775808
  br i1 %.not.i6.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10912
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.js)
          to label %.noexc7.i unwind label %bb.aj, !noalias !10877, !inline_history !10916

.noexc7.i:                                        ; preds = %bb.ae
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10912
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jv)
          to label %bb.ah unwind label %bb.ag, !noalias !10917, !inline_history !10916

bb.af:                                            ; preds = %bb.ad
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10912
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jw)
          to label %.noexc8.i unwind label %bb.aj, !noalias !10877, !inline_history !10916

.noexc8.i:                                        ; preds = %bb.af
  %.sroa.51389.8.copyload = load i64, ptr %i.p, align 8, !noalias !10918
  %i.jx = load <2 x i64>, ptr %.sroa.71390.8..sroa_idx, align 8, !noalias !10918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10912
  br label %_RNvXsez_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11GroupByExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.ag:                                            ; preds = %.noexc7.i
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.o) #25
          to label %.body9.i unwind label %bb.ai, !noalias !10917, !inline_history !10916

bb.ah:                                            ; preds = %.noexc7.i
  %.sroa.01388.0.copyload = load i64, ptr %i.o, align 8, !noalias !10918
  %.sroa.51389.0.copyload = load i64, ptr %.sroa.51389.0..sroa_idx, align 8, !noalias !10918
  %.sroa.71390.0.copyload = load i64, ptr %.sroa.71390.0..sroa_idx, align 8, !noalias !10918
  %.sroa.81391.sroa.0.0.copyload = load i64, ptr %i.n, align 8, !noalias !10918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.81391.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.81391.sroa.5.0..sroa_idx, i64 16, i1 false), !noalias !10918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10912
  %i.jz = insertelement <2 x i64> poison, i64 %.sroa.71390.0.copyload, i64 0
  %i.ka = insertelement <2 x i64> %i.jz, i64 %.sroa.81391.sroa.0.0.copyload, i64 1
  br label %_RNvXsez_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11GroupByExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !10917, !inline_history !10916
  unreachable

_RNvXsez_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11GroupByExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.ah, %.noexc8.i
  %.sroa.01388.0 = phi i64 [ -9223372036854775808, %.noexc8.i ], [ %.sroa.01388.0.copyload, %bb.ah ]
  %.sroa.51389.0 = phi i64 [ %.sroa.51389.8.copyload, %.noexc8.i ], [ %.sroa.51389.0.copyload, %bb.ah ]
  %i.kc = phi <2 x i64> [ %i.jx, %.noexc8.i ], [ %i.ka, %bb.ah ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i193.sroa.5.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.81391.sroa.5, i64 16, i1 false), !noalias !10863
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81391.sroa.5)
  br label %bb.ec

bb.aj:                                            ; preds = %bb.af, %bb.ae
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %.body9.i

.body9.i:                                         ; preds = %bb.ag, %bb.aj
  %eh.lpad-body10.i = phi { ptr, i32 } [ %i.kd, %bb.aj ], [ %i.jy, %bb.ag ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7OrderByEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.r) #25
          to label %.body.i unwind label %bb.ak, !noalias !10877, !inline_history !10911

bb.ak:                                            ; preds = %.body9.i, %.body.i
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !10877, !inline_history !10911
  unreachable

bb.al:                                            ; preds = %bb.d
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 72
  %i.kh = load i8, ptr %i.kg, align 8, !range !4240, !alias.scope !10825, !noalias !10828, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !10830
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10922)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.kf)
          to label %.noexc15 unwind label %.loopexit1413

.noexc15:                                         ; preds = %bb.al
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 64
  %i.kj = load i32, ptr %i.ki, align 8, !range !10466, !alias.scope !10922, !noalias !10919, !noundef !3 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fo, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.kk, i64 32, i1 false), !alias.scope !10924
  store i32 %i.kj, ptr %i.fp, align 8, !alias.scope !10919, !noalias !10922
  %.sroa.50.8.copyload264 = load i8, ptr %i.cf, align 8, !noalias !10825
  %.sroa.91.8.copyload330 = load i8, ptr %.sroa.91.8..sroa_idx329, align 1, !noalias !10825
  %.sroa.93.sroa.0.0.copyload1056 = load i48, ptr %.sroa.93.8..sroa_idx378, align 2, !noalias !10825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.93.sroa.42, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.93.sroa.42.0..sroa.93.8..sroa_idx378.sroa_idx, i64 16, i1 false)
  %.sroa.93389.8.copyload445 = load i8, ptr %i.fo, align 8, !noalias !10825
  %.sroa.97.8.copyload505 = load i8, ptr %.sroa.97.8..sroa_idx504, align 1, !noalias !10825
  %.sroa.98.8.copyload565 = load i8, ptr %.sroa.98.8..sroa_idx564, align 2, !noalias !10825
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.99.sroa.0, ptr noundef nonnull align 1 dereferenceable(29) %i.kl, i64 29, i1 false)
  %.sroa.99.sroa.36.0.copyload1207 = load i32, ptr %.sroa.99.sroa.36.0..sroa.99.8..sroa_idx597.sroa_idx, align 4, !noalias !10825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !10830
  br label %_RNvXs15_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.am:                                            ; preds = %bb.d
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 136
  %i.ko = load i8, ptr %i.kn, align 8, !range !4240, !alias.scope !10825, !noalias !10828, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !10830
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10928)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.km)
          to label %.noexc16 unwind label %.loopexit1413

.noexc16:                                         ; preds = %bb.am
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0233.01650, i64 64
end_hunk_3
begin_hunk_4_@_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake:bb.a
  %i.cz = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 744
  %i.db = getelementptr inbounds nuw [744 x i8], ptr %i.cs, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(744) %i.db, ptr noundef nonnull align 8 dereferenceable(744) %i.e, i64 744, i1 false), !noalias !11433
  %i.dc = icmp eq i64 %i.cx, 0
  br i1 %i.dc, label %.noexc15, label %.lr.ph.i

bb.m:                                             ; preds = %bb.n
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !11433, !inline_history !11432
  unreachable

bb.n:                                             ; preds = %bb.k
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i, ptr %i.br, align 8, !noalias !11428
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.f) #25
          to label %.loopexit.body unwind label %bb.m, !noalias !11433, !inline_history !11432

.noexc15:                                         ; preds = %bb.l, %.lr.ph.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i
  store i64 %i.cl, ptr %i.br, align 8, !noalias !11428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.d
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !11434, !noalias !11437, !nonnull !3, !noundef !3 ; 2 uses
  %i.dh = load i64, ptr %i.de, align 8, !alias.scope !11434, !noalias !11437, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11439
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 12397005425880076) %i.dh, i1 noundef zeroext false, i64 noundef 8, i64 noundef 744)
          to label %.noexc294 unwind label %.loopexit.loopexit, !inline_history !11432

.noexc294:                                        ; preds = %bb.o
  %i.di = load i64, ptr %i.a, align 8, !range !4, !noalias !11439, !noundef !3
  %i.dj = trunc nuw i64 %i.di to i1
  %i.dk = load i64, ptr %i.bk, align 8, !range !62, !noalias !11439, !noundef !3 ; 6 uses
  br i1 %i.dj, label %bb.p, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i288, !prof !10

bb.p:                                             ; preds = %.noexc294
  %i.dl = load i64, ptr %i.bl, align 8, !noalias !11439
  br label %.invoke

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i288: ; preds = %.noexc294
  %i.dm = load ptr, ptr %i.bl, align 8, !noalias !11439, !nonnull !3, !noundef !3 ; 2 uses
  %i.dn = icmp ule i64 %i.dh, %i.dk
  tail call void @llvm.assume(i1 %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11439
  store i64 %i.dk, ptr %i.c, align 8, !noalias !11439
  store ptr %i.dm, ptr %i.bm, align 8, !noalias !11439
  %i.do = getelementptr inbounds nuw [744 x i8], ptr %i.dg, i64 %i.dh
  %i.dp = icmp eq i64 %i.dk, 0
  %i.dq = inttoptr i64 %i.dk to ptr
  br i1 %i.dp, label %.noexc16, label %.lr.ph.i289

.lr.ph.i289:                                      ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i288, %bb.r
  %.sroa.10.023.i290 = phi i64 [ %i.dr, %bb.r ], [ %i.dk, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i288 ]
  %.sroa.012.022.i291 = phi ptr [ %i.du, %bb.r ], [ %i.dg, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i288 ] ; 3 uses
  %.sroa.7.021.i292 = phi i64 [ %i.dt, %bb.r ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i288 ] ; 3 uses
  %i.dr = add i64 %.sroa.10.023.i290, -1          ; 2 uses
  %i.ds = icmp eq ptr %.sroa.012.022.i291, %i.do
  br i1 %i.ds, label %.noexc16, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i289
  invoke fastcc void @_RNvXs3X_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(744) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(744) %.sroa.012.022.i291)
          to label %bb.r unwind label %bb.t, !noalias !11443, !inline_history !11432

bb.r:                                             ; preds = %bb.q
  %i.dt = add nuw nsw i64 %.sroa.7.021.i292, 1
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i291, i64 744
  %i.dv = getelementptr inbounds nuw [744 x i8], ptr %i.dm, i64 %.sroa.7.021.i292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(744) %i.dv, ptr noundef nonnull align 8 dereferenceable(744) %i.b, i64 744, i1 false), !noalias !11443
  %i.dw = icmp eq i64 %i.dr, 0
  br i1 %i.dw, label %.noexc16, label %.lr.ph.i289

bb.s:                                             ; preds = %bb.t
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !11443, !inline_history !11432
  unreachable

bb.t:                                             ; preds = %bb.q
  %lpad.loopexit.i293 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i292, ptr %i.bn, align 8, !noalias !11439
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.c) #25
          to label %.loopexit.body unwind label %bb.s, !noalias !11443, !inline_history !11432

.noexc16:                                         ; preds = %bb.r, %.lr.ph.i289, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i288
  store i64 %i.dh, ptr %i.bn, align 8, !noalias !11439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.u:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !11415
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !11444, !noalias !11447, !nonnull !3, !noundef !3
  %i.eb = load i64, ptr %i.dy, align 8, !alias.scope !11444, !noalias !11447, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10AssignmentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ea, i64 noundef %i.eb) #30
          to label %.noexc17 unwind label %.loopexit.loopexit, !inline_history !11449

.noexc17:                                         ; preds = %bb.u
  %.sroa.21.8.copyload78 = load ptr, ptr %i.af, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx94, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !11415
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.v:                                             ; preds = %bb.d
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !11415
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ec)
          to label %.noexc18 unwind label %.loopexit.loopexit, !inline_history !11416

.noexc18:                                         ; preds = %bb.v
  %.sroa.21.8.copyload77 = load ptr, ptr %i.ae, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx93, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !11415
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.w:                                             ; preds = %bb.d
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !11415
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11453)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ed)
          to label %.noexc19 unwind label %.loopexit.loopexit

.noexc19:                                         ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 64
  %i.ef = load i32, ptr %i.ee, align 8, !range !10466, !alias.scope !11453, !noalias !11450, !noundef !3
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.eg, i64 32, i1 false), !alias.scope !11455
  store i32 %i.ef, ptr %i.bj, align 8, !alias.scope !11450, !noalias !11453
  %.sroa.21.8.copyload70 = load ptr, ptr %i.ad, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx86, i64 16, i1 false)
  %.sroa.3898.8.copyload108 = load i8, ptr %i.bi, align 8, !noalias !11410
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42, ptr noundef nonnull align 1 dereferenceable(31) %i.eh, i64 31, i1 false)
  %i.ei = load i64, ptr %i.bj, align 8, !noalias !11410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !11415
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.x:                                             ; preds = %bb.d
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !11415
  invoke fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ej)
          to label %.noexc20 unwind label %.loopexit.loopexit, !inline_history !11416

.noexc20:                                         ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !11415
  invoke fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ek)
          to label %bb.aq unwind label %bb.ap, !noalias !11413, !inline_history !11416

bb.y:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11456)
  %i.el = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableSampleE13new_uninit_inCs7p2uQeJxui2_9deltalake()
          to label %.noexc52 unwind label %.loopexit.loopexit, !inline_history !11459 ; 3 uses

.noexc52:                                         ; preds = %bb.y
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !11456, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11460
  invoke fastcc void @_RNvXs7l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableSampleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1152) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.en) #30
          to label %.noexc21 unwind label %bb.z, !noalias !11456, !inline_history !11463

bb.z:                                             ; preds = %.noexc52
  %i.eo = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.el, i64 noundef 1152, i64 noundef 8) #27, !noalias !11456, !inline_history !11459
  br label %.loopexit.body

.noexc21:                                         ; preds = %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1152) %i.el, ptr noundef nonnull align 8 dereferenceable(1152) %i.g, i64 1152, i1 false), !noalias !11460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11460
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.aa:                                            ; preds = %bb.d
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !11415
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ep)
          to label %.noexc22 unwind label %.loopexit.loopexit, !inline_history !11416

.noexc22:                                         ; preds = %bb.aa
  %.sroa.21.8.copyload75 = load ptr, ptr %i.aa, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx91, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !11415
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ab:                                            ; preds = %bb.d
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  %.val27.i = load i8, ptr %i.eq, align 8, !range !1226, !alias.scope !11410, !noalias !11413, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !11415
  invoke fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.er)
          to label %.noexc23 unwind label %.loopexit.loopexit, !inline_history !11416

.noexc23:                                         ; preds = %bb.ab
  %.sroa.21.8.copyload74 = load ptr, ptr %i.z, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx90, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !11415
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ac:                                            ; preds = %bb.d
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  %.val26.i = load i8, ptr %i.es, align 8, !range !1226, !alias.scope !11410, !noalias !11413, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !11415
  invoke fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.et)
          to label %.noexc24 unwind label %.loopexit.loopexit, !inline_history !11416

.noexc24:                                         ; preds = %bb.ac
  %.sroa.21.8.copyload73 = load ptr, ptr %i.y, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx89, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !11415
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ad:                                            ; preds = %bb.d
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  %.val.i = load i8, ptr %i.eu, align 8, !range !1226, !alias.scope !11410, !noalias !11413, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !11415
  invoke fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ev)
          to label %.noexc25 unwind label %.loopexit.loopexit, !inline_history !11416

.noexc25:                                         ; preds = %bb.ad
  %.sroa.21.8.copyload72 = load ptr, ptr %i.x, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx88, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11415
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ae:                                            ; preds = %bb.d
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !11415
  invoke fastcc void @_RNvXsin_NtCs4lawaffTVVK_9sqlparser3astNtB6_8FunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ew) #30
          to label %.noexc26 unwind label %.loopexit.loopexit, !inline_history !11416

.noexc26:                                         ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55.i)
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 336 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !range !62, !alias.scope !11410, !noalias !11413, !noundef !3
  %.not22.i = icmp eq i64 %i.ey, -9223372036854775808
  br i1 %.not22.i, label %bb.as, label %bb.ar

bb.af:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11415
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 56
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 48
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !11464, !noalias !11467, !nonnull !3, !noundef !3
  %i.fc = load i64, ptr %i.ez, align 8, !alias.scope !11464, !noalias !11467, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fb, i64 noundef %i.fc) #30
          to label %.noexc27 unwind label %.loopexit.loopexit, !inline_history !11469

.noexc27:                                         ; preds = %bb.af
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !11415
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fd)
          to label %bb.ax unwind label %bb.aw, !noalias !11413, !inline_history !11416

bb.ag:                                            ; preds = %bb.d
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !11415
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11473)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fe)
          to label %.noexc28 unwind label %.loopexit.loopexit

.noexc28:                                         ; preds = %bb.ag
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 72
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 64
  %i.fh = load i32, ptr %i.fg, align 8, !range !10466, !alias.scope !11473, !noalias !11470, !noundef !3
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fi, i64 32, i1 false), !alias.scope !11475
  store i32 %i.fh, ptr %i.ay, align 8, !alias.scope !11470, !noalias !11473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11415
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11479)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ff)
          to label %bb.bi unwind label %bb.bh

bb.ah:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11481)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11484
  invoke fastcc void @_RNvXs71_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(616) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1280) %.sroa.062.0232) #30
          to label %.noexc43 unwind label %.loopexit.loopexit, !inline_history !11486

.noexc43:                                         ; preds = %bb.ah
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 1272
  %i.fk = load i8, ptr %i.fj, align 8, !range !4240, !alias.scope !11481, !noalias !11487, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11484
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 616
  invoke fastcc void @_RNvXsaJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12JoinOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(656) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(656) %i.fl)
          to label %.noexc29 unwind label %bb.ai, !noalias !11487, !inline_history !11486

bb.ai:                                            ; preds = %.noexc43
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableFactorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(616) %i.i) #25
          to label %.loopexit.body unwind label %bb.aj, !noalias !11487, !inline_history !11486

bb.aj:                                            ; preds = %bb.ai
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !11487, !inline_history !11486
  unreachable

.noexc29:                                         ; preds = %.noexc43
  %.sroa.0181.0.copyload = load i64, ptr %i.i, align 8, !noalias !11481
  %.sroa.4182.0.copyload = load ptr, ptr %.sroa.4182.0..sroa_idx, align 8, !noalias !11481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5183.0..sroa_idx, i64 16, i1 false)
  %.sroa.6184.0.copyload = load i8, ptr %.sroa.6184.0..sroa_idx, align 8, !noalias !11481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7185.0..sroa_idx, i64 31, i1 false)
  %.sroa.8186.sroa.0.0.copyload = load i64, ptr %.sroa.8186.0..sroa_idx, align 8, !noalias !11481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8186.sroa.4.0..sroa.8186.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.9187.0.copyload = load i64, ptr %.sroa.9187.0..sroa_idx, align 8, !noalias !11481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.46, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10188.0..sroa_idx, i64 64, i1 false)
  %.sroa.11189.0.copyload = load i64, ptr %.sroa.11189.0..sroa_idx, align 8, !noalias !11481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12190.0..sroa_idx, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.50, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.13191.0..sroa_idx, i64 112, i1 false)
  %.sroa.14192.0.copyload = load i64, ptr %.sroa.14192.0..sroa_idx, align 8, !noalias !11481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.15193, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.15193.0..sroa_idx, i64 272, i1 false), !noalias !11481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %.sroa.15193.616..sroa_idx, ptr noundef nonnull align 8 dereferenceable(656) %i.h, i64 656, i1 false), !noalias !11481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.52, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.15193, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %.sroa.54.sroa.0, ptr noundef nonnull align 8 dereferenceable(608) %.sroa.15193.664..sroa_idx, i64 608, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15193)
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ak:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11415
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.cb)
          to label %bb.an unwind label %bb.am, !noalias !11413, !inline_history !11416

bb.al:                                            ; preds = %bb.an, %.noexc
  %.sroa.0.0.i12 = phi i64 [ %.sroa.0.0.copyload1.i, %bb.an ], [ 69, %.noexc ]
  %.sroa.21.8.copyload68 = load ptr, ptr %i.ai, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx84, i64 16, i1 false)
  %.sroa.3898.8.copyload104 = load i8, ptr %.sroa.3898.8..sroa_idx103, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42.8..sroa_idx113, i64 31, i1 false)
  %.sroa.43.sroa.0.0.copyload258 = load i64, ptr %.sroa.43.8..sroa_idx119, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.10.0..sroa.43.8..sroa_idx119.sroa_idx, i64 16, i1 false)
  %.sroa.45.8.copyload127 = load i64, ptr %.sroa.45.8..sroa_idx126, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.46, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.46.8..sroa_idx130, i64 64, i1 false)
  %.sroa.48.8.copyload136 = load i64, ptr %.sroa.48.8..sroa_idx135, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49.8..sroa_idx139, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.50, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.50.8..sroa_idx142, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.52, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !11415
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.am:                                            ; preds = %bb.ak
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.ai) #25
          to label %.loopexit.body unwind label %bb.ao, !noalias !11413, !inline_history !11416

bb.an:                                            ; preds = %bb.ak
  %.sroa.0.0.copyload1.i = load i64, ptr %i.p, align 8, !noalias !11415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx2.i, i64 320, i1 false), !noalias !11415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11415
  br label %bb.al

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs7p2uQeJxui2_9deltalake.exit, %bb.bj, %bb.bo, %bb.bf, %.body39, %bb.av, %bb.at, %bb.ap, %bb.am
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !11413, !inline_history !11416
  unreachable

bb.ap:                                            ; preds = %.noexc20
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #25
          to label %.loopexit.body unwind label %bb.ao, !noalias !11413, !inline_history !11416

bb.aq:                                            ; preds = %.noexc20
  %.sroa.21.8.copyload76 = load ptr, ptr %i.ac, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx92, i64 16, i1 false)
  %.sroa.3898.32.copyload = load i8, ptr %i.ab, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.42, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.42.32..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !11415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !11415
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ar:                                            ; preds = %.noexc26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11415
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11491)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ex)
          to label %bb.au unwind label %bb.at

bb.as:                                            ; preds = %bb.au, %.noexc26
  %.sroa.03.0.i = phi i64 [ %.sroa.03.0.copyload4.i, %bb.au ], [ -9223372036854775808, %.noexc26 ]
  %.sroa.21.8.copyload = load ptr, ptr %i.w, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx, i64 16, i1 false)
  %.sroa.3898.8.copyload = load i8, ptr %.sroa.3898.8..sroa_idx, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42.8..sroa_idx, i64 31, i1 false)
  %.sroa.43.sroa.0.0.copyload = load i64, ptr %.sroa.43.8..sroa_idx, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.10.0..sroa.43.8..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.45.8.copyload = load i64, ptr %.sroa.45.8..sroa_idx, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.46, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.46.8..sroa_idx, i64 64, i1 false)
  %.sroa.48.8.copyload = load i64, ptr %.sroa.48.8..sroa_idx, align 8, !noalias !11410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49.8..sroa_idx, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.50, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.50.8..sroa_idx, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.52, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.55.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11415
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.at:                                            ; preds = %bb.ar
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast8FunctionECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.w) #25
          to label %.loopexit.body unwind label %bb.ao, !noalias !11413, !inline_history !11416

bb.au:                                            ; preds = %bb.ar
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 392
  %i.ft = load i32, ptr %i.fs, align 8, !range !10466, !alias.scope !11491, !noalias !11493, !noundef !3
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 360
end_hunk_4
begin_hunk_5_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtB2l_3map3MapINtNtNtB2p_5slice4iter4IterTB12_B12_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B43_NtB43_13RawDeltaTable21get_active_partitionss4_0ENCB4R_s5_0EE9from_iterB43_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.o = invoke noundef align 8 ptr @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrB1o_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B2d_NtB2d_13RawDeltaTable21get_active_partitionss4_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Y_4find5checkRB1o_QNCB31_s5_0E0INtNtNtBc_3ops12control_flow11ControlFlowB52_EEB2d_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  %.not7.i.i = icmp eq ptr %i.o, null
  br i1 %.not7.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtB22_3map3MapINtNtNtB26_5slice4iter4IterTBS_BS_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B3I_NtB3I_13RawDeltaTable21get_active_partitionss4_0ENCB4w_s5_0EE11spec_extendB3I_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc, %.noexc9
  %i.p = phi ptr [ %i.x, %.noexc9 ], [ %i.o, %.noexc ]
  %i.q = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !13789, !noalias !13794, !noundef !3 ; 5 uses
  %i.r = icmp ult i64 %i.q, 1152921504606846976
  call void @llvm.assume(i1 %i.r)
  %i.s = load i64, ptr %i.c, align 8, !range !9, !alias.scope !13789, !noalias !13794, !noundef !3
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i, label %.noexc8

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph.i.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.q, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.i.i
  %i.u = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !13789, !noalias !13794, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.q
  store ptr %i.p, ptr %i.v, align 8
  %i.w = add nuw nsw i64 %i.q, 1
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !13789, !noalias !13794
  %i.x = invoke noundef align 8 ptr @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrB1o_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B2d_NtB2d_13RawDeltaTable21get_active_partitionss4_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Y_4find5checkRB1o_QNCB31_s5_0E0INtNtNtBc_3ops12control_flow11ControlFlowB52_EEB2d_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %.noexc8
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtB22_3map3MapINtNtNtB26_5slice4iter4IterTBS_BS_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B3I_NtB3I_13RawDeltaTable21get_active_partitionss4_0ENCB4w_s5_0EE11spec_extendB3I_.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtB22_3map3MapINtNtNtB26_5slice4iter4IterTBS_BS_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B3I_NtB3I_13RawDeltaTable21get_active_partitionss4_0ENCB4w_s5_0EE11spec_extendB3I_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i, %.noexc8
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtB22_3map3MapINtNtNtB26_5slice4iter4IterTBS_BS_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B3I_NtB3I_13RawDeltaTable21get_active_partitionss4_0ENCB4w_s5_0EE11spec_extendB3I_.exit: ; preds = %.noexc9, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13800)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !4240, !alias.scope !13803, !noundef !3
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !13803, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !13803, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13804)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !13807, !noalias !13808, !noundef !3 ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.k, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !13807, !noalias !13808 ; 2 uses
  %i.l = icmp ult i64 %i.k, %.promoted.i.i.i
  %or.cond21.i.i.i = or i1 %.not.i.i.i, %i.l
  br i1 %or.cond21.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !13807, !noalias !13808, !noundef !3 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %.pre.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !13807, !noalias !13808 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i
  %i.t = phi i64 [ %i.ai, %bb.f ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %i.u = sub nuw i64 %i.k, %i.t                   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.t ; 2 uses
  %i.w = icmp samesign ult i64 %i.u, 16
  br i1 %i.w, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.x = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.u), !noalias !13810
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.u, %bb.d ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %i.y = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.z = insertvalue { i64, i64 } %i.y, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ad, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.01.05.i.i.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !13811, !noalias !13810, !noundef !3
  %i.ac = icmp eq i8 %i.ab, %.pre.i.i.i
  br i1 %i.ac, label %._crit_edge.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ad, %i.u
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.c
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.z, %._crit_edge.i.i.i.i ], [ %i.x, %bb.c ] ; 2 uses
  %i.ae = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.e, label %.split.us.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  %i.ag = extractvalue { i64, i64 } %.merged.i.i.i.i, 1
  %i.ah = add i64 %i.t, 1
  %i.ai = add i64 %i.ah, %i.ag                    ; 7 uses
  store i64 %i.ai, ptr %i.i, align 8, !alias.scope !13807, !noalias !13808
  %.not12.i.i.i = icmp ult i64 %i.ai, %i.p
  %.not13.i.i.i = icmp ugt i64 %i.ai, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not12.i.i.i, %.not13.i.i.i
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i:                                  ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !13807, !noalias !13808
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.aj = icmp ult i64 %i.k, %i.ai
  br i1 %i.aj, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i, label %.lr.ph.split.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = sub nuw i64 %i.ai, %i.p                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ak
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.al, ptr nonnull %i.m, i64 %i.p), !noalias !13808
  %i.am = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.am, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.f

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.g
  %i.an = load i64, ptr %1, align 8, !alias.scope !13803, !noundef !3 ; 2 uses
  %i.ao = sub nuw i64 %i.ak, %i.an
  store i64 %i.ai, ptr %1, align 8, !alias.scope !13803
  br label %select.unfold

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.f, %.split.us.i.i.i, %bb.b
  store i8 1, ptr %i.d, align 1, !alias.scope !13814
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = load i8, ptr %i.ap, align 8, !range !4240, !alias.scope !13814, !noundef !3
  %i.ar = trunc nuw i8 %i.aq to i1
  %.pre.i2.i.i = load i64, ptr %1, align 8, !alias.scope !13814 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !13814 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.ar, i1 true, i1 %.not.i3.i.i
  %cond.fr = freeze i1 %or.cond.not.i.i.i
  %i.as = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %cond.fr, label %select.unfold, label %bb.n

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.ao, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.as, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.pn = phi i64 [ %i.an, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.at = load i64, ptr %i.a, align 8, !range !4, !noundef !3
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !62, !noundef !3 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.au, label %bb.h, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit, !prof !10

bb.h:                                             ; preds = %select.unfold
  %i.ay = load i64, ptr %i.ax, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.aw, i64 %i.ay) #23
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %select.unfold
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  %i.az = load ptr, ptr %i.ax, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.ba = icmp ugt i64 %i.aw, 3
  tail call void @llvm.assume(i1 %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.1.i.i, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.4.1.i.i, ptr %i.bb, align 8
  store i64 %i.aw, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13825)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  %.promoted.i.i = load i8, ptr %i.bc, align 1, !alias.scope !13827, !noalias !13832
  %.promoted13.i.i = load i64, ptr %i.b, align 8, !alias.scope !13833, !noalias !13832 ; 4 uses
  %i.bd = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.bd, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !13827, !noalias !13832, !nonnull !3, !noundef !3 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !13827, !noalias !13832, !noundef !3 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !13834, !noalias !13837, !noundef !3 ; 5 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.bh, %.val1.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bk = load i8, ptr %i.bj, align 8, !alias.scope !13833, !noalias !13832 ; 2 uses
  %i.bl = zext nneg i8 %i.bk to i64               ; 4 uses
  %i.bm = icmp ult i8 %i.bk, 5
  %i.bn = getelementptr i8, ptr %i.bi, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bq = load i8, ptr %i.bp, align 8, !range !4240, !alias.scope !13833, !noalias !13832
  %i.br = trunc nuw i8 %i.bq to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !13833, !noalias !13832 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.promoted17.i.i = load i64, ptr %i.bs, align 8, !alias.scope !13834, !noalias !13837
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %.not.i3.i.i.us.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.promoted13.i.i
  %or.cond.not.i.i.i.us.i.i = select i1 %i.br, i1 true, i1 %.not.i3.i.i.us.i.i
  %cond.fr.us.i.i = freeze i1 %or.cond.not.i.i.i.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13841)
  br i1 %cond.fr.us.i.i, label %._crit_edge.split.us.split.us.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs7p2uQeJxui2_9deltalake.exit

._crit_edge.split.us.split.us.i.i:                ; preds = %.lr.ph.split.us.i.i
  %.sroa.0.1.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.promoted13.i.i
  %i.bt = sub nuw i64 %.pre2.i.i.i.i.i, %.promoted13.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %.sroa.0.1.i.i.us.i.i, ptr %i.bu, align 8, !noalias !13833
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %i.bt, ptr %i.bv, align 8, !noalias !13833
  store i64 2, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !13832, !noalias !13833
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs7p2uQeJxui2_9deltalake.exit

.lr.ph.split.i.i:                                 ; preds = %.noexc11, %.lr.ph.split.preheader.i.i
  %i.bw = phi i64 [ %i.ct, %.noexc11 ], [ %.promoted17.i.i, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %.lcssa111516.i.i = phi i64 [ %.lcssa1114.i.i, %.noexc11 ], [ %.promoted13.i.i, %.lr.ph.split.preheader.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13839)
  call void @llvm.experimental.noalias.scope.decl(metadata !13840)
  call void @llvm.experimental.noalias.scope.decl(metadata !13841)
  %i.bx = icmp ult i64 %i.bh, %i.bw
  br i1 %i.bx, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %.lr.ph.split.i.i
  call void @llvm.assume(i1 %i.bm)
  %.pre.i.i.i.i.i = load i8, ptr %i.bo, align 1, !alias.scope !13834, !noalias !13837 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.l, %.lr.ph.split.preheader.i.i.i.i.i
  %i.by = phi i64 [ %i.cn, %bb.l ], [ %i.bw, %.lr.ph.split.preheader.i.i.i.i.i ] ; 3 uses
  %i.bz = sub nuw i64 %i.bh, %i.by                ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.by ; 2 uses
  %i.cb = icmp samesign ult i64 %i.bz, 16
  br i1 %i.cb, label %.preheader.i.i.i.i.i.i, label %bb.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.cc = invoke { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef range(i64 0, -9223372036854775808) %i.bz)
          to label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i unwind label %.loopexit

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bz, %bb.j ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.j ]
  %i.cd = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.ce = insertvalue { i64, i64 } %i.cd, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.j
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.ci, %bb.j ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !13842, !noalias !13845, !noundef !3
  %i.ch = icmp eq i8 %i.cg, %.pre.i.i.i.i.i
  br i1 %i.ch, label %._crit_edge.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ci = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ci, %i.bz
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.ce, %._crit_edge.i.i.i.i.i.i ], [ %i.cc, %bb.i ] ; 2 uses
  %i.cj = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.k, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.k:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.cl = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1
  %i.cm = add i64 %i.by, 1
  %i.cn = add i64 %i.cm, %i.cl                    ; 8 uses
  %.not12.i.i.i.i.i = icmp ult i64 %i.cn, %i.bl
  %.not13.i.i.i.i.i = icmp ugt i64 %i.cn, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not12.i.i.i.i.i, %.not13.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.co = icmp ult i64 %i.bh, %i.cn
  br i1 %i.co, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cp = sub nuw i64 %i.cn, %i.bl                ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.cp
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.cq, ptr nonnull %i.bi, i64 %i.bl), !noalias !13846
  %i.cr = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cr, label %select.unfold.i.i, label %bb.l

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.l, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i, %.lr.ph.split.i.i
  %i.cs = phi i64 [ %i.bw, %.lr.ph.split.i.i ], [ %i.bh, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %i.cn, %bb.l ]
  store i8 1, ptr %i.bc, align 1, !alias.scope !13847, !noalias !13832
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa111516.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.br, i1 true, i1 %.not.i3.i.i.i.i
  %cond.fr.i.i = freeze i1 %or.cond.not.i.i.i.i.i
  br i1 %cond.fr.i.i, label %select.unfold.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs7p2uQeJxui2_9deltalake.exit

select.unfold.i.i:                                ; preds = %bb.m, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.ct = phi i64 [ %i.cs, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.cn, %bb.m ]
  %.lcssa1114.i.i = phi i64 [ %.lcssa111516.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.cn, %bb.m ]
  %i.cu = phi i1 [ true, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ false, %bb.m ]
  %.pn.i.i = phi i64 [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.cp, %bb.m ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa111516.i.i
  %.sroa.0.1.i.i.i.i9 = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa111516.i.i
  %i.cv = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !13832, !noalias !13833, !noundef !3 ; 5 uses
  %i.cw = icmp ult i64 %i.cv, 576460752303423488
  call void @llvm.assume(i1 %i.cw)
  %i.cx = load i64, ptr %i.c, align 8, !range !9, !alias.scope !13832, !noalias !13833, !noundef !3
  %i.cy = icmp eq i64 %i.cv, %i.cx
  br i1 %i.cy, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i, label %.noexc11

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %select.unfold.i.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cv, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i, %select.unfold.i.i
  %i.cz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !13832, !noalias !13833, !nonnull !3, !noundef !3
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cv ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i9, ptr %i.da, align 8, !noalias !13833
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %.sroa.4.1.i.i.i.i, ptr %i.db, align 8, !noalias !13833
  %i.dc = add nuw nsw i64 %i.cv, 1
  store i64 %i.dc, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !13832, !noalias !13833
  br i1 %i.cu, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.split.i.i

bb.n:                                             ; preds = %bb.a, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i
  store i64 0, ptr %0, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.de, align 8
  br label %bb.o

bb.o:                                             ; preds = %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs7p2uQeJxui2_9deltalake.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.q

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc11, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %._crit_edge.split.us.split.us.i.i, %.lr.ph.split.us.i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.p
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterB11_EE9from_iterCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = invoke { ptr, i64 } @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTReuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %i.g = extractvalue { ptr, i64 } %i.d, 1
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTReuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBR_EE11spec_extendCs7p2uQeJxui2_9deltalake.exit, %bb.d
  ret void

bb.f:                                             ; preds = %bb.h, %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.g:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.k, align 8, !noundef !3
  %i.l = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  %.sroa.0.0.i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.l, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.g
  %i.m = load i64, ptr %i.a, align 8, !range !4, !noundef !3
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !62, !noundef !3 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.h, label %bb.i, !prof !10

bb.h:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.q, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #23
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.t = icmp ule i64 %.sroa.0.0.i, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.g, ptr %i.u, align 8
  store i64 %i.p, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13858)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.i
  %i.w = invoke { ptr, i64 } @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTReuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.m unwind label %bb.l       ; 2 uses

bb.k:                                             ; preds = %bb.o, %bb.l
  %.pn.i.i = phi { ptr, i32 } [ %i.ai, %bb.o ], [ %i.x, %bb.l ]
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTReuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %.body unwind label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.y = extractvalue { ptr, i64 } %i.w, 0        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  %i.z = extractvalue { ptr, i64 } %i.w, 1
  br i1 %.not.i.i.i, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBG_EECs7p2uQeJxui2_9deltalake.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !13860, !noalias !13861, !noundef !3 ; 5 uses
  %i.ab = icmp ult i64 %i.aa, 576460752303423488
  call void @llvm.assume(i1 %i.ab)
  %i.ac = load i64, ptr %i.c, align 8, !range !9, !alias.scope !13860, !noalias !13861, !noundef !3
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.p, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.p, %bb.n
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !13860, !noalias !13861, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.aa ; 2 uses
  store ptr %i.y, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.z, ptr %i.ag, align 8
  %i.ah = add nuw nsw i64 %i.aa, 1
  store i64 %i.ah, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !13860, !noalias !13861
  br label %bb.j

bb.o:                                             ; preds = %bb.p
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

end_hunk_5
begin_hunk_6_@_RNvXs0_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs7p2uQeJxui2_9deltalake:bb.a
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !13921, !noundef !3 ; 5 uses
  %i.g = load i64, ptr %0, align 8, !range !9, !alias.scope !13921, !noundef !3
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.thread.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.i, !prof !10

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.thread.i: ; preds = %bb.c
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !13926, !noundef !3 ; 2 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.d

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.c
  %i.l = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !13926, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %i.c, i64 %i.d, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !13926
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.i
  %i.q = phi i64 [ %.pre.i, %bb.d ], [ %i.f, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.i ]
  %i.r = add i64 %i.q, %i.d
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !13926
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.t, ptr %i.u, align 8
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsgbCypRs12E4_4pyo35types8sequenceINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionENtNtB9_10conversion12FromPyObject13extract_boundB1g_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = tail call noundef i64 @PyType_GetFlags(ptr noundef %i.c) #27
  %i.e = and i64 %i.d, 268435456
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsgbCypRs12E4_4pyo35types8sequence16extract_sequenceNtCs7p2uQeJxui2_9deltalake13PyTransactionEBY_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.f = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #27 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #23
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store ptr @17, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 28, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  %.sroa.05.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.05.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %.sroa.05.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @18, ptr %.sroa.05.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 3, ptr %.sroa.46.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsgbCypRs12E4_4pyo35types8sequenceINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB9_8pybacked11PyBackedStrENtNtB9_10conversion12FromPyObject13extract_boundCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = tail call noundef i64 @PyType_GetFlags(ptr noundef %i.c) #27
  %i.e = and i64 %i.d, 268435456
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsgbCypRs12E4_4pyo35types8sequence16extract_sequenceNtNtB6_8pybacked11PyBackedStrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.f = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #27 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #23
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store ptr @17, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 28, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  %.sroa.05.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.05.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %.sroa.05.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @18, ptr %.sroa.05.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 3, ptr %.sroa.46.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyReE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13932)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13935)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13938
  store ptr %i.d, ptr %i.b, align 8, !noalias !13942
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %1, ptr %i.e, align 8, !noalias !13942
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 3 uses
  %.promoted.i.i.i = load i8, ptr %i.f, align 1, !alias.scope !13946, !noalias !13951
  %.promoted25.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !13952, !noalias !13951 ; 5 uses
  %i.g = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.g, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !13946, !noalias !13951, !nonnull !3, !noundef !3 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !13946, !noalias !13951, !noundef !3 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !13953, !noalias !13956, !noundef !3 ; 6 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !13952, !noalias !13951 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i8, ptr %i.t, align 8, !range !4240, !alias.scope !13952, !noalias !13951
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !13952, !noalias !13951 ; 5 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %.promoted29.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !13953, !noalias !13956
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  store i8 1, ptr %i.f, align 1, !alias.scope !13958, !noalias !13951
  %.not.i3.i.i.us.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted25.i.i.i
  %or.cond.not.i.i.i.us.i.i.i = select i1 %i.v, i1 true, i1 %.not.i3.i.i.us.i.i.i
  %cond.fr.us.i.i.i = freeze i1 %or.cond.not.i.i.i.us.i.i.i
  %i.w = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted25.i.i.i
  %.sroa.0.1.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted25.i.i.i
  br i1 %cond.fr.us.i.i.i, label %.lr.ph.split.us.split.us.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.i.i.i

.lr.ph.split.us.split.us.i.i.i:                   ; preds = %.lr.ph.split.us.i.i.i
  %.not.i.us.i.i.i = icmp eq i64 %.pre2.i.i.i.i.i.i, %.promoted25.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13963)
  br i1 %.not.i.us.i.i.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.us.i.i.i

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.us.i.i.i: ; preds = %.lr.ph.split.us.split.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13964
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtBU_7Builder11parse_lossyReEs_0INtB7_5FnMutTB2h_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i.i, i64 noundef %i.w), !noalias !13973
  %i.x = load i64, ptr %i.a, align 8, !range !402, !noalias !13964, !noundef !3 ; 2 uses
  %.not.i.i.us.us.i.i.i = icmp eq i64 %i.x, 6
  br i1 %.not.i.i.us.us.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread17.us.us.i.i.i, label %.loopexit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread17.us.us.i.i.i: ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13964
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13963)
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit

.lr.ph.split.i.i.i:                               ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, %.lr.ph.split.preheader.i.i.i
  %i.y = phi i64 [ %i.av, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i ], [ %.promoted29.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %.lcssa222728.i.i.i = phi i64 [ %.lcssa2226.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i ], [ %.promoted25.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13961)
  call void @llvm.experimental.noalias.scope.decl(metadata !13962)
  call void @llvm.experimental.noalias.scope.decl(metadata !13963)
  %i.z = icmp ult i64 %i.l, %i.y
  br i1 %i.z, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i
  call void @llvm.assume(i1 %i.q)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !13953, !noalias !13956 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.aa = phi i64 [ %i.ap, %bb.e ], [ %i.y, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ab = sub nuw i64 %i.l, %i.aa                 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.aa ; 2 uses
  %i.ad = icmp samesign ult i64 %i.ab, 16
  br i1 %i.ad, label %.preheader.i.i.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ae = call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.ab), !noalias !13974
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.ab, %bb.c ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.af = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.ag = insertvalue { i64, i64 } %i.af, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.c
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.c ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !13975, !noalias !13974, !noundef !3
  %i.aj = icmp eq i8 %i.ai, %.pre.i.i.i.i.i.i
  br i1 %i.aj, label %._crit_edge.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ak = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ak, %i.ab
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.b
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.ag, %._crit_edge.i.i.i.i.i.i.i ], [ %i.ae, %bb.b ] ; 2 uses
  %i.al = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.d, label %.split.us.i.i.i.i.i.i

bb.d:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.an = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1
  %i.ao = add i64 %i.aa, 1
  %i.ap = add i64 %i.ao, %i.an                    ; 10 uses
  store i64 %i.ap, ptr %i.j, align 8, !alias.scope !13953, !noalias !13956
  %.not12.i.i.i.i.i.i = icmp ult i64 %i.ap, %i.p
  %.not13.i.i.i.i.i.i = icmp ugt i64 %i.ap, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i, %.not13.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.e, label %bb.f

.split.us.i.i.i.i.i.i:                            ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !13953, !noalias !13956
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.aq = icmp ult i64 %i.l, %i.ap
  br i1 %i.aq, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ar = sub nuw i64 %i.ap, %i.p                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ar
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.as, ptr nonnull %i.m, i64 %i.p), !noalias !13978
  %i.at = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.at, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %bb.e

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i: ; preds = %bb.f
  store i64 %i.ap, ptr %i.c, align 8, !alias.scope !13946, !noalias !13951
  br label %select.unfold.i.i.i

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.e, %.split.us.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %i.au = phi i64 [ %i.y, %.lr.ph.split.i.i.i ], [ %i.l, %.split.us.i.i.i.i.i.i ], [ %i.ap, %bb.e ]
  store i8 1, ptr %i.f, align 1, !alias.scope !13958, !noalias !13951
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa222728.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.v, i1 true, i1 %.not.i3.i.i.i.i.i
  %cond.fr.i.i.i = freeze i1 %or.cond.not.i.i.i.i.i.i
  br i1 %cond.fr.i.i.i, label %select.unfold.i.i.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit

select.unfold.i.i.i:                              ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.av = phi i64 [ %i.ap, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %i.au, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  %.lcssa2226.i.i.i = phi i64 [ %i.ap, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.lcssa222728.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  %i.aw = phi i1 [ false, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ true, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  %.pn.i.i.i = phi i64 [ %i.ar, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.pn.i.i.i, %.lcssa222728.i.i.i
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i.i.i
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa222728.i.i.i
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa222728.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13964
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtBU_7Builder11parse_lossyReEs_0INtB7_5FnMutTB2h_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i), !noalias !13973
  %i.ax = load i64, ptr %i.a, align 8, !range !402, !noalias !13964, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ax, 6
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread17.i.i.i, label %.loopexit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread17.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13964
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread17.i.i.i, %select.unfold.i.i.i
  br i1 %i.aw, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.split.i.i.i

.loopexit.i:                                      ; preds = %bb.g, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %i.x, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.us.i.i.i ], [ %i.ax, %bb.g ]
  %.sroa.710.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.515.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.710.0..sroa_idx.i.i.i, i64 72, i1 false), !noalias !13979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13964
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, %bb.a, %.lr.ph.split.us.split.us.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread17.us.us.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.i.i.i, %.loopexit.i
  %.us-phi.i.i.sink.i = phi i64 [ %.us-phi.i.i.i, %.loopexit.i ], [ 6, %.lr.ph.split.us.split.us.i.i.i ], [ 6, %bb.a ], [ 6, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.i.i.i ], [ 6, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread17.us.us.i.i.i ], [ 6, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i ], [ 6, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13938
  store i64 %.us-phi.i.i.sink.i, ptr %0, align 8, !alias.scope !13927, !noalias !13979
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2m_5tableNtB3J_10DeltaTable13get_file_uris0ENCB3D_s_0EB1A_4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13980
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EBM_4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !13984
  %i.f = load i64, ptr %i.c, align 8, !range !62, !noalias !13980, !noundef !3
  %.not.i = icmp eq i64 %i.f, -9223372036854775808
  br i1 %.not.i, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.b

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13980
  br label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !13980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13980
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView17object_store_path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.c, !noalias !13984

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #25
          to label %common.resume unwind label %bb.h, !noalias !13985

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !13988)
  call void @llvm.experimental.noalias.scope.decl(metadata !13991)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13994)
  call void @llvm.experimental.noalias.scope.decl(metadata !13997)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !14000, !noalias !14002, !nonnull !3, !noundef !3
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !14003
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #26
          to label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit unwind label %bb.f, !noalias !13985

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #25
          to label %common.resume unwind label %bb.g, !noalias !13985

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !13985
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.c, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.l, %bb.f ], [ %i.ab, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !13985
  unreachable

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.e
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a), !noalias !13985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13980
  %.sroa.0.0.copyload1 = load i64, ptr %i.b, align 8, !noalias !14004 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !14004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13980
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -9223372036854775808
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.0.0.copyload1, ptr %i.d, align 8
  %.val = load ptr, ptr %i.o, align 8, !nonnull !3, !align !773, !noundef !3 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !noalias !14005, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !noalias !14005, !nonnull !3, !align !773, !noundef !3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !71, !invariant.load !3, !noalias !14005
  %i.v = add nsw i64 %i.u, -1
  %i.w = and i64 %i.v, -16
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !3, !noalias !14005, !nonnull !3
  invoke void %i.aa(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %_RNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB7_10DeltaTable13get_file_uriss_0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.k, !noalias !14009

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !14009
  unreachable

_RNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB7_10DeltaTable13get_file_uriss_0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !14009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m

bb.l:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit.thread, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB7_10DeltaTable13get_file_uriss_0Cs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoEEENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3P_13RawDeltaTable7historys_0ENtNtNtB9_6traits8iterator8Iterator4nextB3P_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(544) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [256 x i8], align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14013)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !14016, !noalias !14019, !noundef !3
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.q, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !14023, !noalias !14026, !nonnull !3, !noundef !3 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.j, align 8, !alias.scope !14023, !noalias !14026 ; 2 uses
  %i.k = icmp eq ptr %.promoted.i.i, %i.i
  br i1 %i.k, label %bb.q, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoEEEINtB5_8FuseImplBY_E4nextCs7p2uQeJxui2_9deltalake.exit.i.i

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoEEEINtB5_8FuseImplBY_E4nextCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoEECs7p2uQeJxui2_9deltalake.exit4.i.i
  %i.l = phi ptr [ %i.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoEECs7p2uQeJxui2_9deltalake.exit4.i.i ], [ %.promoted.i.i, %.lr.ph.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14029)
end_hunk_6
begin_hunk_7_@_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake:bb.a
bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !20005
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #23, !noalias !20005, !inline_history !16507
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !20005, !nonnull !3, !noundef !3 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20005
  store i64 %i.k, ptr %i.c, align 8, !noalias !20005
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !20005
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i, %bb.d
  %.sroa.10.023.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.012.022.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i ] ; 3 uses
  %i.t = add i64 %.sroa.10.023.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.022.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RNvXs9L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.012.022.i)
          to label %bb.d unwind label %bb.f, !noalias !20009, !inline_history !16507

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 72
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !20009
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !20009, !inline_history !16507
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i, ptr %i.q, align 8, !noalias !20005
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.c) #25
          to label %bb.g unwind label %bb.e, !noalias !20009, !inline_history !16507

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !20005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !20010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.d = load i64, ptr %i.a, align 8, !noundef !3
  tail call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.d) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query22XmlNamespaceDefinitionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.d = load i64, ptr %i.a, align 8, !noundef !3
  tail call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query22XmlNamespaceDefinitionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.d) #30
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20011
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 23058430092136940) %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 400), !noalias !20011
  %i.i = load i64, ptr %i.a, align 8, !range !4, !noalias !20011, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !62, !noalias !20011, !noundef !3 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !20011
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #23, !noalias !20011
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !20011, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p), !noalias !20011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20011
  store i64 %i.l, ptr %i.d, align 8, !noalias !20011
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !20011
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw [400 x i8], ptr %i.g, i64 %i.h
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
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
  br i1 %i.x, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit, label %bb.d

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.033, i64 400
  %i.z = add nuw nsw i64 %.sroa.7.032, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20018), !noalias !20021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20022
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %.sroa.03.033) #30
          to label %.noexc unwind label %.loopexit, !inline_history !20025

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.033, i64 328 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !62, !alias.scope !20026, !noalias !20027, !noundef !3
  %.not.i.i = icmp eq i64 %i.ab, -9223372036854775808
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20022
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20031)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aa)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.c) #25
          to label %bb.k unwind label %bb.h, !noalias !20027, !inline_history !20033

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.033, i64 384
  %i.ae = load i32, ptr %i.ad, align 8, !range !10466, !alias.scope !20031, !noalias !20034, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.033, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.af, i64 32, i1 false), !alias.scope !20035, !noalias !20027
  store i32 %i.ae, ptr %i.v, align 8, !alias.scope !20028, !noalias !20036
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.b, align 8, !noalias !20022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx2.i.i, i64 56, i1 false), !noalias !20022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20022
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !20027, !inline_history !20033
  unreachable

bb.i:                                             ; preds = %bb.g, %.noexc
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.g ], [ -9223372036854775808, %.noexc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.015.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.015.sroa.0, ptr noundef nonnull align 8 dereferenceable(328) %i.c, i64 328, i1 false), !noalias !20021
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.015.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.015.sroa.5, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i.i, i64 56, i1 false), !noalias !20021
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20022
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.033, i64 392
  %.val.i1 = load i8, ptr %i.ah, align 8, !range !544, !alias.scope !20015, !noalias !20037, !noundef !3
  %i.ai = getelementptr i8, ptr %.sroa.03.033, i64 393
  %.val1.i = load i8, ptr %i.ai, align 1, !range !544, !alias.scope !20015, !noalias !20037, !noundef !3
  %i.aj = getelementptr inbounds nuw [400 x i8], ptr %i.o, i64 %.sroa.7.032 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.aj, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.015.sroa.0, i64 328, i1 false), !noalias !20021
  %.sroa.015.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 328
  store i64 %.sroa.0.0.i.i, ptr %.sroa.015.sroa.4.0..sroa_idx, align 8, !noalias !20021
  %.sroa.015.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.015.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.015.sroa.5, i64 56, i1 false), !noalias !20021
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 392
  store i8 %.val.i1, ptr %.sroa.416.0..sroa_idx, align 8, !noalias !20021
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 393
  store i8 %.val1.i, ptr %.sroa.517.0..sroa_idx, align 1, !noalias !20021
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.015.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.015.sroa.5)
  %i.ak = icmp eq i64 %i.w, 0
  br i1 %i.ak, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.j:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !20021, !inline_history !20038
  unreachable

bb.k:                                             ; preds = %.loopexit, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.032, ptr %i.r, align 8, !noalias !20021
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.d) #25
          to label %bb.l unwind label %bb.j, !noalias !20021, !inline_history !20038

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  store i64 %i.h, ptr %i.r, align 8, !noalias !20011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !20039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20011
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3CteENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !20040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20040
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 36028797018963968) %i.n, i1 noundef zeroext false, i64 noundef 8, i64 noundef 256), !noalias !20040
  %i.o = load i64, ptr %i.a, align 8, !range !4, !noalias !20040, !noundef !3
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !62, !noalias !20040, !noundef !3 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.s, align 8, !noalias !20040
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #23, !noalias !20040
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.u = load ptr, ptr %i.s, align 8, !noalias !20040, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = icmp ule i64 %i.n, %i.r
  tail call void @llvm.assume(i1 %i.v), !noalias !20040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20040
  store i64 %i.r, ptr %i.j, align 8, !noalias !20040
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.u, ptr %i.w, align 8, !noalias !20040
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw [256 x i8], ptr %i.m, i64 %i.n
  %i.z = icmp eq i64 %i.r, 0
  br i1 %i.z, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3CteNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
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
  br i1 %i.ah, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3CteNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit, label %bb.d

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 256
  %i.aj = add nuw nsw i64 %.sroa.7.040, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20044)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20056)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.06.041)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 56
  %i.al = load i32, ptr %i.ak, align 8, !range !10466, !alias.scope !20056, !noalias !20053, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.am, i64 32, i1 false), !alias.scope !20058
  store i32 %i.al, ptr %i.ab, align 8, !alias.scope !20053, !noalias !20056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20049
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 64
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an)
          to label %_RNvXsa5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10TableAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.e, !noalias !20059, !inline_history !20060

bb.e:                                             ; preds = %.noexc
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %bb.r unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !20059, !inline_history !20060
  unreachable

_RNvXsa5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10TableAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !20061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !20061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20047
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20062), !noalias !20065
  %i.aq = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryE13new_uninit_inCs7p2uQeJxui2_9deltalake()
          to label %.noexc.i unwind label %bb.h, !noalias !20066, !inline_history !20067 ; 4 uses

.noexc.i:                                         ; preds = %_RNvXsa5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10TableAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 240
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !20068, !noalias !20066, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20069
  invoke fastcc void @_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.as) #30
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.g, !noalias !20072, !inline_history !20073

bb.g:                                             ; preds = %.noexc.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef 1400, i64 noundef 8) #27, !noalias !20072, !inline_history !20067
  br label %.body.i

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.aq, ptr noundef nonnull align 8 dereferenceable(1400) %i.c, i64 1400, i1 false), !noalias !20074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20069
  store ptr %i.aq, ptr %i.h, align 8, !noalias !20047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20047
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 88 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !62, !alias.scope !20044, !noalias !20066, !noundef !3
  %.not.i1 = icmp eq i64 %i.av, -9223372036854775808
  br i1 %.not.i1, label %bb.j, label %bb.i

.body.i:                                          ; preds = %bb.g, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs7p2uQeJxui2_9deltalake.exit.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.aw, %bb.h ], [ %i.at, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10TableAliasECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(88) %i.i) #25
          to label %bb.r unwind label %bb.o, !noalias !20066, !inline_history !20075

bb.h:                                             ; preds = %_RNvXsa5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10TableAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20047
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20076), !noalias !20065
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20079), !noalias !20065
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.au)
          to label %_RNvXs3T_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.l, !noalias !20066, !inline_history !20075

_RNvXs3T_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 144
  %i.ay = load i32, ptr %i.ax, align 8, !range !10466, !alias.scope !20081, !noalias !20082, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.041, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.az, i64 32, i1 false), !alias.scope !20083, !noalias !20066
  store i32 %i.ay, ptr %i.ae, align 8, !alias.scope !20076, !noalias !20084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !20047
end_hunk_7
begin_hunk_8_@_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake:bb.a
bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !20154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20154
  br label %bb.n

.body.i.i:                                        ; preds = %.body47.i.i, %bb.ba, %bb.az, %bb.ay, %bb.al, %bb.ak, %bb.aj, %bb.m
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %.body47.i.i ], [ %i.bm, %bb.m ], [ %i.iy, %bb.aj ], [ %i.iy, %bb.al ], [ %i.iy, %bb.ak ], [ %i.ks, %bb.ba ], [ %i.ks, %bb.az ], [ %i.ks, %bb.ay ] ; 2 uses
  %i.bk = load i64, ptr %i.o, align 8, !range !62, !alias.scope !20165, !noalias !20154, !noundef !3
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.body.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.cy, !noalias !20154

bb.m:                                             ; preds = %bb.at, %bb.ae
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 360
  %i.bo = load <2 x i64>, ptr %i.bn, align 8, !noalias !20154
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 344
  %i.bq = load <2 x i32>, ptr %i.bp, align 8, !noalias !20154
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 376
  %i.bs = load <2 x i64>, ptr %i.br, align 8, !noalias !20154
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 392
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !20154, !noundef !3
  %i.bv = load i64, ptr %.sroa.013.0212.i, align 8, !range !4, !noalias !20154, !noundef !3
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noalias !20154, !noundef !3
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.5.0.i.i = phi i64 [ %i.by, %bb.o ], [ undef, %bb.n ]
  %.sroa.0.0.i12.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !4, !noalias !20154, !noundef !3
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !20154, !noundef !3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.52.0.i.i = phi i64 [ %i.cd, %bb.q ], [ undef, %bb.p ]
  %.sroa.01.0.i.i = phi i64 [ 1, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20154
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 96
  %i.cf = load i64, ptr %i.ce, align 8, !range !422, !noalias !20154, !noundef !3 ; 3 uses
  %.not23.i.i = icmp eq i64 %i.cf, 8
  br i1 %.not23.i.i, label %bb.bg, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.91.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i22.i.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i.i.sroa.8.i.i)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 104 ; 8 uses
  switch i64 %i.cf, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
    i64 3, label %bb.w
    i64 4, label %bb.aa
    i64 5, label %bb.ab
    i64 6, label %bb.ac
    i64 7, label %bb.ar
  ]

default.unreachable:                              ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.ci = load i8, ptr %i.ch, align 4, !range !544, !alias.scope !20168, !noalias !20171, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 141
  %i.ck = load i8, ptr %i.cj, align 1, !range !544, !alias.scope !20168, !noalias !20171, !noundef !3
  %i.cl = load i64, ptr %i.cg, align 8, !range !4, !alias.scope !20168, !noalias !20171, !noundef !3 ; 2 uses
  %i.cm = trunc nuw i64 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !20168, !noalias !20171
  %.sroa.5.0.i.i.i.i = select i1 %i.cm, i64 %i.co, i64 undef
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.cq = load i64, ptr %i.cp, align 8, !range !4, !alias.scope !20168, !noalias !20171, !noundef !3 ; 2 uses
  %i.cr = trunc nuw i64 %i.cq to i1
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !20168, !noalias !20171
  %.sroa.54.0.i.i.i.i = select i1 %i.cr, i64 %i.ct, i64 undef
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.cv = load i8, ptr %i.cu, align 8, !range !4240, !alias.scope !20168, !noalias !20171, !noundef !3
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 137
  %i.cx = load i8, ptr %i.cw, align 1, !range !4240, !alias.scope !20168, !noalias !20171, !noundef !3
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 138
  %i.cz = load i8, ptr %i.cy, align 2, !range !4240, !alias.scope !20168, !noalias !20171, !noundef !3
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 139
  %i.db = load i8, ptr %i.da, align 1, !range !4240, !alias.scope !20168, !noalias !20171, !noundef !3
  br label %bb.bi

bb.u:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.dd = load i32, ptr %i.dc, align 8, !range !20175, !alias.scope !20176, !noalias !20179, !noundef !3 ; 2 uses
  %i.de = trunc nuw i32 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.dg = load i32, ptr %i.df, align 4, !alias.scope !20176, !noalias !20179
  %.sroa.5.0.i1.i.i.i = select i1 %i.de, i32 %i.dg, i32 undef ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.di = load i32, ptr %i.dh, align 8, !range !20175, !alias.scope !20176, !noalias !20179, !noundef !3 ; 2 uses
  %i.dj = trunc nuw i32 %i.di to i1
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 148
  %i.dl = load i32, ptr %i.dk, align 4, !alias.scope !20176, !noalias !20179
  %.sroa.52.0.i.i.i.i = select i1 %i.dj, i32 %i.dl, i32 undef
  %i.dm = load i64, ptr %i.cg, align 8, !range !4, !alias.scope !20176, !noalias !20179, !noundef !3 ; 2 uses
  %i.dn = trunc nuw i64 %i.dm to i1
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !20176, !noalias !20179
  %.sroa.54.0.i2.i.i.i = select i1 %i.dn, i64 %i.dp, i64 undef
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.dr = load i64, ptr %i.dq, align 8, !range !4, !alias.scope !20176, !noalias !20179, !noundef !3 ; 2 uses
  %i.ds = trunc nuw i64 %i.dr to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !20176, !noalias !20179
  %.sroa.56.0.i.i.i.i = select i1 %i.ds, i64 %i.du, i64 undef
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.dw = load i8, ptr %i.dv, align 8, !range !4240, !alias.scope !20176, !noalias !20179, !noundef !3
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 153
  %i.dy = load i8, ptr %i.dx, align 1, !range !4240, !alias.scope !20176, !noalias !20179, !noundef !3
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 154
  %i.ea = load i8, ptr %i.dz, align 2, !range !4240, !alias.scope !20176, !noalias !20179, !noundef !3
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 155
  %i.ec = load i8, ptr %i.eb, align 1, !range !4240, !alias.scope !20176, !noalias !20179, !noundef !3
  %.sroa.37.sroa.0.0.extract.trunc180.i.i = trunc nuw nsw i32 %i.dd to i8
  %.sroa.46.sroa.0.0.extract.trunc149.i.i = trunc i32 %.sroa.5.0.i1.i.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift159.i.i = lshr i32 %.sroa.5.0.i1.i.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc160.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift159.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift171.i.i = and i32 %.sroa.5.0.i1.i.i.i, -65536
  br label %bb.bi

bb.v:                                             ; preds = %bb.s
  %i.ed = load i64, ptr %i.cg, align 8, !range !4, !alias.scope !20181, !noalias !20184, !noundef !3 ; 2 uses
  %i.ee = trunc nuw i64 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !20181, !noalias !20184
  %.sroa.5.0.i3.i.i.i = select i1 %i.ee, i64 %i.eg, i64 undef
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.ei = load i64, ptr %i.eh, align 8, !range !4, !alias.scope !20181, !noalias !20184, !noundef !3 ; 2 uses
  %i.ej = trunc nuw i64 %i.ei to i1
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !20181, !noalias !20184
  %.sroa.52.0.i4.i.i.i = select i1 %i.ej, i64 %i.el, i64 undef
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136 ; 2 uses
  %i.en = load i32, ptr %i.em, align 8, !noalias !20154 ; 4 uses
  %.sroa_idx68.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.eo = load i32, ptr %.sroa_idx68.i.i, align 4, !noalias !20154 ; 3 uses
  %i.ep = load i64, ptr %i.em, align 8, !range !4, !alias.scope !20181, !noalias !20184, !noundef !3
  %i.eq = trunc nuw i64 %i.ep to i1
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !20181, !noalias !20184
  %.sroa.54.0.i5.i.i.i = select i1 %i.eq, i64 %i.es, i64 undef ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.eu = load i64, ptr %i.et, align 8, !range !4, !alias.scope !20181, !noalias !20184, !noundef !3 ; 2 uses
  %i.ev = trunc nuw i64 %i.eu to i1
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !20181, !noalias !20184
  %.sroa.56.0.i6.i.i.i = select i1 %i.ev, i64 %i.ex, i64 undef
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.ez = load <4 x i8>, ptr %i.ey, align 8, !alias.scope !20181, !noalias !20184
  %.sroa.37.sroa.0.0.extract.trunc177.i.i = trunc i32 %i.en to i8
  %.sroa.37.sroa.11.0.extract.shift185.i.i = lshr i32 %i.en, 8
  %.sroa.37.sroa.11.0.extract.trunc186.i.i = trunc i32 %.sroa.37.sroa.11.0.extract.shift185.i.i to i8
  %.sroa.37.sroa.12.0.extract.shift197.i.i = lshr i32 %i.en, 16
  %.sroa.37.sroa.12.0.extract.trunc198.i.i = trunc i32 %.sroa.37.sroa.12.0.extract.shift197.i.i to i8
  %.sroa.37.sroa.13.0.extract.shift209.i.i = lshr i32 %i.en, 24
  %.sroa.37.sroa.13.0.extract.trunc210.i.i = trunc nuw i32 %.sroa.37.sroa.13.0.extract.shift209.i.i to i8
  %.sroa.46.sroa.0.0.extract.trunc148.i.i = trunc i32 %i.eo to i8
  %.sroa.46.sroa.11.0.extract.shift157.i.i = lshr i32 %i.eo, 8
  %.sroa.46.sroa.11.0.extract.trunc158.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift157.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift169.i.i = and i32 %i.eo, -65536
  %.sroa.53.sroa.0.0.extract.trunc138.i.i = trunc i64 %.sroa.54.0.i5.i.i.i to i32
  %.sroa.53.sroa.10.0.extract.shift143.i.i = lshr i64 %.sroa.54.0.i5.i.i.i, 32
  %.sroa.53.sroa.10.0.extract.trunc144.i.i = trunc nuw i64 %.sroa.53.sroa.10.0.extract.shift143.i.i to i32
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc106.i.i = trunc nuw nsw i64 %i.eu to i8
  br label %bb.bi

bb.w:                                             ; preds = %bb.s
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.fb = load i32, ptr %i.fa, align 8, !range !20175, !alias.scope !20186, !noalias !20189, !noundef !3
  %i.fc = trunc nuw i32 %i.fb to i1
  br i1 %i.fc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %.sroa.5.i.i.sroa.0.0.copyload.i.i = load i32, ptr %i.fd, align 4, !noalias !20191
  %.sroa.5.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %.sroa.5.i.i.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.5.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !20191
  %.sroa.5.i.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 148
  %.sroa.5.i.i.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.i.i.sroa.5.0..sroa_idx.i.i, align 4, !noalias !20191
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.5.i.i.sroa.5.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.5.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.4.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.4.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.0.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.0.0.copyload.i.i, %bb.x ], [ undef, %bb.w ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i8 [ 1, %bb.x ], [ 0, %bb.w ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.ff = load i32, ptr %i.fe, align 8, !range !20175, !alias.scope !20186, !noalias !20189, !noundef !3
  %i.fg = trunc nuw i32 %i.ff to i1
  br i1 %i.fg, label %bb.z, label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 156
  %.sroa.52.i.i.sroa.0.0.copyload.i.i = load i32, ptr %i.fh, align 4, !noalias !20191
  %.sroa.52.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %.sroa.52.i.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.52.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !20191
  br label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i

_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.sroa.52.i.i.sroa.4.0.i.i = phi i64 [ %.sroa.52.i.i.sroa.4.0.copyload.i.i, %bb.z ], [ undef, %bb.y ]
  %.sroa.52.i.i.sroa.0.0.i.i = phi i32 [ %.sroa.52.i.i.sroa.0.0.copyload.i.i, %bb.z ], [ undef, %bb.y ]
  %.sroa.01.0.i.i.i.i = phi i8 [ 1, %bb.z ], [ 0, %bb.y ]
  %i.fi = load i64, ptr %i.cg, align 8, !range !4, !alias.scope !20186, !noalias !20189, !noundef !3 ; 2 uses
  %i.fj = trunc nuw i64 %i.fi to i1
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !20186, !noalias !20189
  %.sroa.54.0.i7.i.i.i = select i1 %i.fj, i64 %i.fl, i64 undef
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.fn = load i64, ptr %i.fm, align 8, !range !4, !alias.scope !20186, !noalias !20189, !noundef !3 ; 2 uses
  %i.fo = trunc nuw i64 %i.fn to i1
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !20186, !noalias !20189
  %.sroa.56.0.i8.i.i.i = select i1 %i.fo, i64 %i.fq, i64 undef
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.fs = load <4 x i8>, ptr %i.fr, align 8, !alias.scope !20186, !noalias !20189
  %.sroa.46.sroa.0.0.extract.trunc150.i.i = trunc i32 %.sroa.5.i.i.sroa.0.0.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift161.i.i = lshr i32 %.sroa.5.i.i.sroa.0.0.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc162.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift161.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift173.i.i = and i32 %.sroa.5.i.i.sroa.0.0.i.i, -65536
  br label %bb.bi

bb.aa:                                            ; preds = %bb.s
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.fu = load i32, ptr %i.ft, align 8, !range !20175, !alias.scope !20192, !noalias !20195, !noundef !3 ; 2 uses
  %i.fv = trunc nuw i32 %i.fu to i1
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.fx = load i32, ptr %i.fw, align 4, !alias.scope !20192, !noalias !20195
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.fz = load i32, ptr %i.fy, align 8, !range !20175, !alias.scope !20192, !noalias !20195, !noundef !3 ; 2 uses
  %i.ga = trunc nuw i32 %i.fz to i1
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 148
  %i.gc = load i32, ptr %i.gb, align 4, !alias.scope !20192, !noalias !20195
  %i.gd = load i64, ptr %i.cg, align 8, !range !4, !alias.scope !20192, !noalias !20195, !noundef !3 ; 2 uses
  %i.ge = trunc nuw i64 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !20192, !noalias !20195
  %.sroa.54.0.i11.i.i.i = select i1 %i.ge, i64 %i.gg, i64 undef
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.gi = load i64, ptr %i.gh, align 8, !range !4, !alias.scope !20192, !noalias !20195, !noundef !3 ; 2 uses
  %i.gj = trunc nuw i64 %i.gi to i1
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !20192, !noalias !20195
  %.sroa.56.0.i12.i.i.i = select i1 %i.gj, i64 %i.gl, i64 undef
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.gn = load i8, ptr %i.gm, align 8, !range !4240, !alias.scope !20192, !noalias !20195, !noundef !3
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 153
  %i.gp = load i8, ptr %i.go, align 1, !range !4240, !alias.scope !20192, !noalias !20195, !noundef !3
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 154
  %i.gr = load i8, ptr %i.gq, align 2, !range !4240, !alias.scope !20192, !noalias !20195, !noundef !3
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 155
  %i.gt = load i8, ptr %i.gs, align 1, !range !4240, !alias.scope !20192, !noalias !20195, !noundef !3
  %.sroa.37.sroa.0.0.extract.trunc178.i.i = trunc nuw nsw i32 %i.fu to i8
  %i.gu = select i1 %i.fv, i32 %i.fx, i32 undef   ; 3 uses
  %.sroa.46.sroa.0.0.extract.trunc146.i.i = trunc i32 %i.gu to i8
  %.sroa.46.sroa.11.0.extract.shift153.i.i = lshr i32 %i.gu, 8
  %.sroa.46.sroa.11.0.extract.trunc154.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift153.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift165.i.i = and i32 %i.gu, -65536
  %i.gv = select i1 %i.ga, i32 %i.gc, i32 undef
  br label %bb.bi

bb.ab:                                            ; preds = %bb.s
  %i.gw = load i64, ptr %i.cg, align 8, !range !4, !alias.scope !20197, !noalias !20200, !noundef !3 ; 2 uses
  %i.gx = trunc nuw i64 %i.gw to i1
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !20197, !noalias !20200
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.hb = load i64, ptr %i.ha, align 8, !range !4, !alias.scope !20197, !noalias !20200, !noundef !3 ; 2 uses
  %i.hc = trunc nuw i64 %i.hb to i1
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.he = load i64, ptr %i.hd, align 8, !alias.scope !20197, !noalias !20200
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 8, !noalias !20154 ; 4 uses
  %.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.hh = load i32, ptr %.sroa_idx.i.i, align 4, !noalias !20154 ; 3 uses
  %i.hi = load i64, ptr %i.hf, align 8, !range !4, !alias.scope !20197, !noalias !20200, !noundef !3
  %i.hj = trunc nuw i64 %i.hi to i1
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !20197, !noalias !20200
  %.sroa.54.0.i15.i.i.i = select i1 %i.hj, i64 %i.hl, i64 undef ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.hn = load i64, ptr %i.hm, align 8, !range !4, !alias.scope !20197, !noalias !20200, !noundef !3 ; 2 uses
  %i.ho = trunc nuw i64 %i.hn to i1
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !20197, !noalias !20200
  %.sroa.56.0.i16.i.i.i = select i1 %i.ho, i64 %i.hq, i64 undef
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.hs = load <4 x i8>, ptr %i.hr, align 8, !alias.scope !20197, !noalias !20200
  %i.ht = select i1 %i.gx, i64 %i.gz, i64 undef
  %i.hu = select i1 %i.hc, i64 %i.he, i64 undef
  %.sroa.37.sroa.0.0.extract.trunc176.i.i = trunc i32 %i.hg to i8
  %.sroa.37.sroa.11.0.extract.shift183.i.i = lshr i32 %i.hg, 8
  %.sroa.37.sroa.11.0.extract.trunc184.i.i = trunc i32 %.sroa.37.sroa.11.0.extract.shift183.i.i to i8
  %.sroa.37.sroa.12.0.extract.shift195.i.i = lshr i32 %i.hg, 16
  %.sroa.37.sroa.12.0.extract.trunc196.i.i = trunc i32 %.sroa.37.sroa.12.0.extract.shift195.i.i to i8
  %.sroa.37.sroa.13.0.extract.shift207.i.i = lshr i32 %i.hg, 24
  %.sroa.37.sroa.13.0.extract.trunc208.i.i = trunc nuw i32 %.sroa.37.sroa.13.0.extract.shift207.i.i to i8
  %.sroa.46.sroa.0.0.extract.trunc147.i.i = trunc i32 %i.hh to i8
  %.sroa.46.sroa.11.0.extract.shift155.i.i = lshr i32 %i.hh, 8
  %.sroa.46.sroa.11.0.extract.trunc156.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift155.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift167.i.i = and i32 %i.hh, -65536
  %.sroa.53.sroa.0.0.extract.trunc137.i.i = trunc i64 %.sroa.54.0.i15.i.i.i to i32
  %.sroa.53.sroa.10.0.extract.shift141.i.i = lshr i64 %.sroa.54.0.i15.i.i.i, 32
  %.sroa.53.sroa.10.0.extract.trunc142.i.i = trunc nuw i64 %.sroa.53.sroa.10.0.extract.shift141.i.i to i32
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc105.i.i = trunc nuw nsw i64 %i.hn to i8
  br label %bb.bi

bb.ac:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !20202
  %i.hv = load i64, ptr %i.cg, align 8, !range !4, !noalias !20202, !noundef !3
  %i.hw = trunc nuw i64 %i.hv to i1               ; 2 uses
  br i1 %i.hw, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !20205, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i.i.i, label %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !20208, !nonnull !3, !noundef !3
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !20205, !noundef !3
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.ie = load i64, ptr %i.id, align 8, !noalias !20205, !noundef !3
  invoke void %i.hz(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %i.ia, ptr noundef %i.ic, i64 noundef %i.ie)
          to label %.noexc42.i.i unwind label %bb.m, !noalias !20154, !inline_history !20209

.noexc42.i.i:                                     ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8, !noalias !20202
  br label %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc42.i.i, %bb.ad
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i, %.noexc42.i.i ], [ null, %bb.ad ] ; 3 uses
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.al, align 8, !noalias !20202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !20202
  %i.if = ptrtoint ptr %.sroa.0.0.i.i.i.i.i to i64
  br label %bb.af

bb.af:                                            ; preds = %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, %bb.ac
  %.sroa.19.8.copyload72.i.i = phi i64 [ %i.if, %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ]
  %.sroa.11.8.copyload70.i.i = phi i64 [ 1, %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %bb.ac ] ; 2 uses
  %i.ig = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ] ; 2 uses
  store i64 %.sroa.11.8.copyload70.i.i, ptr %i.j, align 8, !noalias !20202
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.ii = load i64, ptr %i.ih, align 8, !range !4, !noalias !20202, !noundef !3
  %i.ij = trunc nuw i64 %i.ii to i1
  br i1 %i.ij, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20202
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !20210, !noundef !3 ; 2 uses
  %.not.i6.i.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i6.i.i.i.i, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.im = load ptr, ptr %i.il, align 8, !noalias !20213, !nonnull !3, !noundef !3
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 176
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !20210, !noundef !3
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.ir = load i64, ptr %i.iq, align 8, !noalias !20210, !noundef !3
  invoke void %i.im(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.in, ptr noundef %i.ip, i64 noundef %i.ir)
          to label %.noexc.i.i.i.i unwind label %bb.aj, !noalias !20214, !inline_history !20215

.noexc.i.i.i.i:                                   ; preds = %bb.ah
  %.sroa.0.0.copyload.i7.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !20210
  %i.is = ptrtoint ptr %.sroa.0.0.copyload.i7.i.i.i.i to i64
  %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.pre.i.i = load i64, ptr %.phi.trans.insert241.i.i, align 8, !noalias !20191
  %i.it = load <4 x i8>, ptr %.sroa.5.sroa.4.i.i.sroa.4.0..sroa_idx.phi.trans.insert.i.i, align 8, !noalias !20191
  br label %bb.am

bb.ai:                                            ; preds = %bb.am, %bb.af
  %.sroa.5.sroa.4.i.i.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.i.i, %bb.am ], [ undef, %bb.af ]
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.i8.i.i.i.i, %bb.am ], [ undef, %bb.af ] ; 5 uses
  %.sroa.0.0.i17.i.i.i = phi i32 [ 1, %bb.am ], [ 0, %bb.af ]
  %i.iu = phi <4 x i8> [ %i.je, %bb.am ], [ undef, %bb.af ]
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 184
  %i.iw = load i64, ptr %i.iv, align 8, !range !4, !noalias !20202, !noundef !3
  %i.ix = trunc nuw i64 %i.iw to i1
  br i1 %i.ix, label %bb.an, label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20216)
  br i1 %i.hw, label %bb.ak, label %.body.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !20219)
  call void @llvm.experimental.noalias.scope.decl(metadata !20222)
  %i.iz = icmp eq ptr %i.ig, null
  br i1 %i.iz, label %.body.i.i, label %bb.al

end_hunk_8
begin_hunk_9_@_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field5MatchENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake:bb.a

bb.k:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.0180.i, i64 32
  %.val.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !20434, !noalias !20435 ; 32 uses
  %i.bo = invoke noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCs7p2uQeJxui2_9deltalake()
          to label %.noexc.i.i unwind label %bb.ag, !noalias !20427 ; 16 uses

.noexc.i.i:                                       ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20437)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20440)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.9.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.13.i.i.i.i.i.i)
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20443)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20446
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 120
  %.val20.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !20449, !noalias !20450, !nonnull !3, !noundef !3
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 128
  %.val21.i.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !20449, !noalias !20450, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20451
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, 2305843009213693952) %.val21.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i unwind label %.loopexit37.i, !noalias !20436

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i
  %i.bs = load i64, ptr %i.f, align 8, !range !4, !noalias !20451, !noundef !3
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = load i64, ptr %i.ac, align 8, !range !62, !noalias !20451, !noundef !3 ; 3 uses
  br i1 %i.bt, label %bb.l, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i, !prof !10

bb.l:                                             ; preds = %.noexc.i.i.i.i
  %i.bv = load i64, ptr %i.ad, align 8, !noalias !20451
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bu, i64 %i.bv) #23
          to label %.noexc1.i.i.i.i unwind label %.loopexit.split-lp38.i, !noalias !20436

.noexc1.i.i.i.i:                                  ; preds = %bb.l
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.bw = load ptr, ptr %i.ad, align 8, !noalias !20451, !nonnull !3, !noundef !3 ; 2 uses
  %i.bx = icmp ule i64 %.val21.i.i.i.i.i.i.i, %i.bu
  tail call void @llvm.assume(i1 %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20451
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val21.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i
  %i.by = shl nuw nsw i64 %.val21.i.i.i.i.i.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr nonnull readonly align 4 %.val20.i.i.i.i.i.i.i, i64 %i.by, i1 false), !noalias !20457
  br label %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i

_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(256) %i.bz, i64 256, i1 false), !noalias !20450
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 392
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !20449, !noalias !20450, !noundef !3
  store i64 %i.bu, ptr %i.i, align 8, !noalias !20446
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx35.i.i.i.i.i.i.i, align 8, !noalias !20446
  store i64 %.val21.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !20446
  store i64 %i.cb, ptr %i.af, align 8, !noalias !20446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20446
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 504
  %.val18.i.i.i.i.i.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !20449, !noalias !20450, !nonnull !3, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 512
  %.val19.i.i.i.i.i.i.i = load i64, ptr %i.cd, align 8, !alias.scope !20449, !noalias !20450, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20458
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, 2305843009213693952) %.val19.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i.i.i.i unwind label %.loopexit42.i, !noalias !20464

.noexc.i.i.i.i.i.i.i:                             ; preds = %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i
  %i.ce = load i64, ptr %i.e, align 8, !range !4, !noalias !20458, !noundef !3
  %i.cf = trunc nuw i64 %i.ce to i1
  %i.cg = load i64, ptr %i.ag, align 8, !range !62, !noalias !20458, !noundef !3 ; 3 uses
  br i1 %i.cf, label %bb.n, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i22.i.i.i.i.i.i.i, !prof !10

bb.n:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.ch = load i64, ptr %i.ah, align 8, !noalias !20458
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cg, i64 %i.ch) #23
          to label %.noexc24.i.i.i.i.i.i.i unwind label %.loopexit.split-lp43.i, !noalias !20464

.noexc24.i.i.i.i.i.i.i:                           ; preds = %bb.n
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i22.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i
  %i.ci = load ptr, ptr %i.ah, align 8, !noalias !20458, !nonnull !3, !noundef !3 ; 2 uses
  %i.cj = icmp ule i64 %.val19.i.i.i.i.i.i.i, %i.cg
  tail call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20458
  %.not.i.i23.i.i.i.i.i.i.i = icmp eq i64 %.val19.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i23.i.i.i.i.i.i.i, label %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit25.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i22.i.i.i.i.i.i.i
  %i.ck = shl nuw nsw i64 %.val19.i.i.i.i.i.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ci, ptr nonnull readonly align 4 %.val18.i.i.i.i.i.i.i, i64 %i.ck, i1 false), !noalias !20465
  br label %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit25.i.i.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCslw7hBPHc6qc_14regex_automata3dfa5dense10StartTableINtNtCs6Po7BT7Nknu_5alloc3vec3VecmEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i: ; preds = %.body.i.i.i.i.i.i.i, %.loopexit.split-lp43.i, %.loopexit42.i
  %.pn.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %lpad.loopexit44.i, %.loopexit42.i ], [ %lpad.loopexit.split-lp45.i, %.loopexit.split-lp43.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(288) %i.i)
          to label %bb.ae unwind label %bb.ac, !noalias !20464

.loopexit42.i:                                    ; preds = %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i
  %lpad.loopexit44.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCslw7hBPHc6qc_14regex_automata3dfa5dense10StartTableINtNtCs6Po7BT7Nknu_5alloc3vec3VecmEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i

.loopexit.split-lp43.i:                           ; preds = %bb.n
  %lpad.loopexit.split-lp45.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCslw7hBPHc6qc_14regex_automata3dfa5dense10StartTableINtNtCs6Po7BT7Nknu_5alloc3vec3VecmEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i

_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit25.i.i.i.i.i.i.i: ; preds = %bb.o, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i22.i.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 480
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 800
  %i.cn = load i8, ptr %i.cm, align 16, !range !544, !alias.scope !20449, !noalias !20450, !noundef !3
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(256) %i.co, i64 256, i1 false), !noalias !20450
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 792
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !20449, !noalias !20450, !noundef !3
  %i.cr = load i64, ptr %i.cl, align 16, !range !4, !alias.scope !20449, !noalias !20450, !noundef !3 ; 2 uses
  %i.cs = trunc nuw i64 %i.cr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 488
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !20449, !noalias !20450
  %.sroa.55.0.i.i.i.i.i.i.i = select i1 %i.cs, i64 %i.cu, i64 undef
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 520
  %i.cw = load i32, ptr %i.cv, align 8, !range !20175, !alias.scope !20449, !noalias !20450, !noundef !3 ; 2 uses
  %i.cx = trunc nuw i32 %i.cw to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 524
  %i.cz = load i32, ptr %i.cy, align 4, !alias.scope !20449, !noalias !20450
  %.sroa.57.0.i.i.i.i.i.i.i = select i1 %i.cx, i32 %i.cz, i32 undef
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 528
  %i.db = load i32, ptr %i.da, align 16, !range !20175, !alias.scope !20449, !noalias !20450, !noundef !3 ; 2 uses
  %i.dc = trunc nuw i32 %i.db to i1
  %i.dd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 532
  %i.de = load i32, ptr %i.dd, align 4, !alias.scope !20449, !noalias !20450
  %.sroa.59.0.i.i.i.i.i.i.i = select i1 %i.dc, i32 %i.de, i32 undef
  store i64 %i.cg, ptr %i.aj, align 8, !noalias !20446
  store ptr %i.ci, ptr %.sroa.437.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !20446
  store i64 %.val19.i.i.i.i.i.i.i, ptr %.sroa.538.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !20446
  store i8 %i.cn, ptr %i.ak, align 8, !noalias !20446
  store i64 %i.cq, ptr %i.al, align 8, !noalias !20446
  store i64 %i.cr, ptr %i.h, align 8, !noalias !20446
  store i64 %.sroa.55.0.i.i.i.i.i.i.i, ptr %i.am, align 8, !noalias !20446
  store i32 %i.cw, ptr %i.an, align 8, !noalias !20446
  store i32 %.sroa.57.0.i.i.i.i.i.i.i, ptr %i.ao, align 4, !noalias !20446
  store i32 %i.db, ptr %i.ap, align 8, !noalias !20446
  store i32 %.sroa.59.0.i.i.i.i.i.i.i, ptr %i.aq, align 4, !noalias !20446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20469)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20471
  %i.df = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 408
  %.val2.i.i.i.i.i.i.i.i = load ptr, ptr %i.df, align 8, !alias.scope !20472, !noalias !20473, !nonnull !3, !noundef !3
  %i.dg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 416
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.dg, align 16, !alias.scope !20472, !noalias !20473, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20477)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20480
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 2305843009213693952) %.val3.i.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc27.i.i.i.i.i.i.i unwind label %.loopexit47.i, !noalias !20464

.noexc27.i.i.i.i.i.i.i:                           ; preds = %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit25.i.i.i.i.i.i.i
  %i.dh = load i64, ptr %i.c, align 8, !range !4, !noalias !20480, !noundef !3
  %i.di = trunc nuw i64 %i.dh to i1
  %i.dj = load i64, ptr %i.ar, align 8, !range !62, !noalias !20480, !noundef !3 ; 3 uses
  br i1 %i.di, label %bb.p, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i, !prof !10

bb.p:                                             ; preds = %.noexc27.i.i.i.i.i.i.i
  %i.dk = load i64, ptr %i.as, align 8, !noalias !20480
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.dj, i64 %i.dk) #23
          to label %.noexc28.i.i.i.i.i.i.i unwind label %.loopexit.split-lp48.i, !noalias !20464

.noexc28.i.i.i.i.i.i.i:                           ; preds = %bb.p
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc27.i.i.i.i.i.i.i
  %i.dl = load ptr, ptr %i.as, align 8, !noalias !20480, !nonnull !3, !noundef !3 ; 2 uses
  %i.dm = icmp ule i64 %.val3.i.i.i.i.i.i.i.i, %i.dj
  tail call void @llvm.assume(i1 %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20480
  store i64 %i.dj, ptr %i.d, align 8, !alias.scope !20482, !noalias !20483
  store ptr %i.dl, ptr %i.at, align 8, !alias.scope !20482, !noalias !20483
  store i64 0, ptr %i.au, align 8, !alias.scope !20482, !noalias !20483
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i
  %i.dn = shl nuw nsw i64 %.val3.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dl, ptr nonnull readonly align 4 %.val2.i.i.i.i.i.i.i.i, i64 %i.dn, i1 false), !noalias !20484
  store i64 %.val3.i.i.i.i.i.i.i.i, ptr %i.au, align 8, !alias.scope !20482, !noalias !20483
  br label %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i

_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 432
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.do, align 16, !alias.scope !20472, !noalias !20473, !nonnull !3, !noundef !3
  %i.dp = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 440
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.dp, align 8, !alias.scope !20472, !noalias !20473, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20485
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 2305843009213693952) %.val1.i.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit52.i, !noalias !20491

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i
  %i.dq = load i64, ptr %i.b, align 8, !range !4, !noalias !20485, !noundef !3
  %i.dr = trunc nuw i64 %i.dq to i1
  %i.ds = load i64, ptr %i.av, align 8, !range !62, !noalias !20485, !noundef !3 ; 3 uses
  br i1 %i.dr, label %bb.r, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i4.i.i.i.i.i.i.i.i, !prof !10

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.dt = load i64, ptr %i.aw, align 8, !noalias !20485
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ds, i64 %i.dt) #23
          to label %.noexc6.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp53.i, !noalias !20491

.noexc6.i.i.i.i.i.i.i.i:                          ; preds = %bb.r
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i4.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.du = load ptr, ptr %i.aw, align 8, !noalias !20485, !nonnull !3, !noundef !3 ; 2 uses
  %i.dv = icmp ule i64 %.val1.i.i.i.i.i.i.i.i, %i.ds
  tail call void @llvm.assume(i1 %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20485
  %.not.i.i5.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i5.i.i.i.i.i.i.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i4.i.i.i.i.i.i.i.i
  %i.dw = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.du, ptr nonnull readonly align 4 %.val.i.i.i.i.i.i.i.i, i64 %i.dw, i1 false), !noalias !20492
  br label %bb.v

.loopexit52.i:                                    ; preds = %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit54.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp53.i:                           ; preds = %bb.r
  %lpad.loopexit.split-lp55.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp53.i, %.loopexit52.i
  %lpad.phi56.i = phi { ptr, i32 } [ %lpad.loopexit54.i, %.loopexit52.i ], [ %lpad.loopexit.split-lp55.i, %.loopexit.split-lp53.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.u, !noalias !20491

bb.u:                                             ; preds = %bb.t
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !20491
  unreachable

.body.i.i.i.i.i.i.i:                              ; preds = %bb.y, %.loopexit.split-lp48.i, %.loopexit47.i, %bb.t
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi61.i, %bb.y ], [ %lpad.phi56.i, %bb.t ], [ %lpad.loopexit49.i, %.loopexit47.i ], [ %lpad.loopexit.split-lp50.i, %.loopexit.split-lp48.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCslw7hBPHc6qc_14regex_automata3dfa5dense10StartTableINtNtCs6Po7BT7Nknu_5alloc3vec3VecmEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i unwind label %bb.ac, !noalias !20464

.loopexit47.i:                                    ; preds = %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit25.i.i.i.i.i.i.i
  %lpad.loopexit49.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.loopexit.split-lp48.i:                           ; preds = %bb.p
  %lpad.loopexit.split-lp50.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.s, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i4.i.i.i.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 448
  %i.dz = load i64, ptr %i.dy, align 16, !alias.scope !20472, !noalias !20473, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !20493
  store i64 %i.ds, ptr %i.ax, align 8, !alias.scope !20466, !noalias !20493
  store ptr %i.du, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !20466, !noalias !20493
  store i64 %.val1.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !20466, !noalias !20493
  store i64 %i.dz, ptr %i.ay, align 8, !alias.scope !20466, !noalias !20493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20471
  %i.ea = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 464
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ea, align 16, !alias.scope !20449, !noalias !20450, !nonnull !3, !noundef !3
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 472
  %.val17.i.i.i.i.i.i.i = load i64, ptr %i.eb, align 8, !alias.scope !20449, !noalias !20450, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20494
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %.val17.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc32.i.i.i.i.i.i.i unwind label %.loopexit57.i, !noalias !20464

.noexc32.i.i.i.i.i.i.i:                           ; preds = %bb.v
  %i.ec = load i64, ptr %i.a, align 8, !range !4, !noalias !20494, !noundef !3
  %i.ed = trunc nuw i64 %i.ec to i1
  %i.ee = load i64, ptr %i.az, align 8, !range !62, !noalias !20494, !noundef !3 ; 3 uses
  br i1 %i.ed, label %bb.w, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i30.i.i.i.i.i.i.i, !prof !10

bb.w:                                             ; preds = %.noexc32.i.i.i.i.i.i.i
  %i.ef = load i64, ptr %i.ba, align 8, !noalias !20494
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ee, i64 %i.ef) #23
          to label %.noexc33.i.i.i.i.i.i.i unwind label %.loopexit.split-lp58.i, !noalias !20464

.noexc33.i.i.i.i.i.i.i:                           ; preds = %bb.w
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i30.i.i.i.i.i.i.i: ; preds = %.noexc32.i.i.i.i.i.i.i
  %i.eg = load ptr, ptr %i.ba, align 8, !noalias !20494, !nonnull !3, !noundef !3 ; 2 uses
  %i.eh = icmp ule i64 %.val17.i.i.i.i.i.i.i, %i.ee
  tail call void @llvm.assume(i1 %i.eh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20494
  %.not.i.i31.i.i.i.i.i.i.i = icmp eq i64 %.val17.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i31.i.i.i.i.i.i.i, label %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit34.i.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i30.i.i.i.i.i.i.i
  %i.ei = shl nuw nsw i64 %.val17.i.i.i.i.i.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eg, ptr nonnull readonly align 4 %.val.i.i.i.i.i.i.i, i64 %i.ei, i1 false), !noalias !20500
  br label %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit34.i.i.i.i.i.i.i

.loopexit57.i:                                    ; preds = %bb.v
  %lpad.loopexit59.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp58.i:                           ; preds = %bb.w
  %lpad.loopexit.split-lp60.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp58.i, %.loopexit57.i
  %lpad.phi61.i = phi { ptr, i32 } [ %lpad.loopexit59.i, %.loopexit57.i ], [ %lpad.loopexit.split-lp60.i, %.loopexit.split-lp58.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCslw7hBPHc6qc_14regex_automata3dfa5dense11MatchStatesINtNtCs6Po7BT7Nknu_5alloc3vec3VecmEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.g) #25
          to label %.body.i.i.i.i.i.i.i unwind label %bb.ac, !noalias !20464

_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit34.i.i.i.i.i.i.i: ; preds = %bb.x, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i30.i.i.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 104
  %i.ek = load i8, ptr %i.ej, align 8, !range !544, !alias.scope !20449, !noalias !20450, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ek, 2
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsD_NtNtCslw7hBPHc6qc_14regex_automata3dfa5denseINtB5_3DFAINtNtCs6Po7BT7Nknu_5alloc3vec3VecmEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit34.i.i.i.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 80 ; 2 uses
  %i.em = load <2 x ptr>, ptr %i.el, align 16, !alias.scope !20449, !noalias !20450
  %i.en = load ptr, ptr %i.el, align 16, !alias.scope !20449, !noalias !20450, !nonnull !3, !noundef !3
  %i.eo = atomicrmw add ptr %i.en, i64 1 monotonic, align 8, !noalias !20464
  %i.ep = icmp slt i64 %i.eo, 0
  br i1 %i.ep, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 96
  %i.er = load i64, ptr %i.eq, align 16, !alias.scope !20449, !noalias !20450, !noundef !3
  br label %_RNvXsD_NtNtCslw7hBPHc6qc_14regex_automata3dfa5denseINtB5_3DFAINtNtCs6Po7BT7Nknu_5alloc3vec3VecmEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  tail call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.y, %.body.i.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCslw7hBPHc6qc_14regex_automata3dfa5dense10StartTableINtNtCs6Po7BT7Nknu_5alloc3vec3VecmEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !20464
  unreachable

_RNvXsD_NtNtCslw7hBPHc6qc_14regex_automata3dfa5denseINtB5_3DFAINtNtCs6Po7BT7Nknu_5alloc3vec3VecmEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i: ; preds = %bb.aa, %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit34.i.i.i.i.i.i.i
  %.sroa.0.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.er, %bb.aa ], [ undef, %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit34.i.i.i.i.i.i.i ]
  %i.et = phi <2 x ptr> [ %i.em, %bb.aa ], [ undef, %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecmENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit34.i.i.i.i.i.i.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.02.32..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.eu, i64 32, i1 false), !noalias !20501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(288) %.sroa.9.96..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %i.i, i64 288, i1 false), !noalias !20502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(328) %.sroa.0.sroa.13.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(328) %i.h, i64 328, i1 false), !noalias !20502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.0.sroa.9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !20502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.02.i.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.bp, i64 32, i1 false), !noalias !20501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20446
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 816
  %i.ew = load <2 x i32>, ptr %i.ev, align 16, !alias.scope !20503, !noalias !20501
  %i.ex = load ptr, ptr %.val.i.i.i, align 16, !alias.scope !20503, !noalias !20501, !nonnull !3, !noundef !3 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !20503, !noalias !20501, !noundef !3
  %i.fa = atomicrmw add ptr %i.ex, i64 1 monotonic, align 8, !noalias !20504
  %i.fb = icmp slt i64 %i.fa, 0
  br i1 %i.fb, label %bb.ad, label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.ad:                                            ; preds = %_RNvXsD_NtNtCslw7hBPHc6qc_14regex_automata3dfa5denseINtB5_3DFAINtNtCs6Po7BT7Nknu_5alloc3vec3VecmEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i
  tail call void @llvm.trap()
  unreachable

.loopexit37.i:                                    ; preds = %.noexc.i.i
  %lpad.loopexit39.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp38.i:                           ; preds = %bb.l
  %lpad.loopexit.split-lp40.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp38.i, %.loopexit37.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCslw7hBPHc6qc_14regex_automata3dfa5dense10StartTableINtNtCs6Po7BT7Nknu_5alloc3vec3VecmEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCslw7hBPHc6qc_14regex_automata3dfa5dense10StartTableINtNtCs6Po7BT7Nknu_5alloc3vec3VecmEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i ], [ %lpad.loopexit39.i, %.loopexit37.i ], [ %lpad.loopexit.split-lp40.i, %.loopexit.split-lp38.i ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef 832, i64 noundef 16) #27, !noalias !20436
  br label %.body.i.i

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %_RNvXsD_NtNtCslw7hBPHc6qc_14regex_automata3dfa5denseINtB5_3DFAINtNtCs6Po7BT7Nknu_5alloc3vec3VecmEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.02.i.i.i.i.i.i, i64 64, i1 false), !noalias !20505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(295) %.sroa.10.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(295) %.sroa.9.i.i.i.i.i.i, i64 295, i1 false), !noalias !20505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.11.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.0.sroa.9.i.i.i.i.i.i, i64 56, i1 false), !noalias !20505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(328) %.sroa.15.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(328) %.sroa.0.sroa.13.i.i.i.i.i.i, i64 328, i1 false), !noalias !20505
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.9.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.13.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i)
  store ptr %i.ex, ptr %i.bo, align 16, !noalias !20506
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.ez, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20506
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.i.i.i.i.i, i64 64, i1 false), !noalias !20506
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  store <2 x ptr> %i.et, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 16, !noalias !20506
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  store i64 %.sroa.0.sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 16, !noalias !20506
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  store i8 %i.ek, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20506
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(295) %.sroa.10.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(295) %.sroa.10.i.i.i.i.i, i64 295, i1 false), !noalias !20506
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.11.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.11.i.i.i.i.i, i64 56, i1 false), !noalias !20506
  %.sroa.12.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 456
  store i64 %i.ee, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20506
  %.sroa.13.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 464
  store ptr %i.eg, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i, align 16, !noalias !20506
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 472
  store i64 %.val17.i.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20506
  %.sroa.15.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(328) %.sroa.15.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(328) %.sroa.15.i.i.i.i.i, i64 328, i1 false), !noalias !20506
  %.sroa.16.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 808
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.16.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.fc, i64 3, i1 false), !noalias !20436
  %.sroa.171.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 816
  store <2 x i32> %i.ew, ptr %.sroa.171.0..sroa_idx.i.i.i.i.i, align 16, !noalias !20506
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i.i.i)
  br label %bb.ai

bb.af:                                            ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.k
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ag, %bb.ae
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.fd, %bb.ag ], [ %eh.lpad-body.i.i.i.i, %bb.ae ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ak unwind label %bb.ah, !noalias !20427

bb.ah:                                            ; preds = %.body.i.i
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !20427
  unreachable

bb.ai:                                            ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.noexc.i
  %.sroa.5.sroa.5.0.i.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.13.0.copyload22.i.i, %bb.f ], [ %.sroa.13.0.copyload20.i.i, %bb.g ], [ %.sroa.13.0.copyload18.i.i, %bb.h ], [ %.sroa.13.0.copyload.i.i, %bb.i ], [ undef, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ undef, %bb.e ], [ %i.bk, %bb.j ]
  %.sroa.5.sroa.4.0.i.i = phi ptr [ undef, %.noexc.i ], [ %.sroa.11.0.copyload16.i.i, %bb.f ], [ %.sroa.11.0.copyload14.i.i, %bb.g ], [ %.sroa.11.0.copyload12.i.i, %bb.h ], [ %.sroa.11.0.copyload.i.i, %bb.i ], [ %i.bo, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ undef, %bb.e ], [ %i.bi, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.027.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.027.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !20418
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.529.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.i.i, i64 7, i1 false), !noalias !20418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20424
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  %i.ff = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %.sroa.7.0179.i ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.027.i, i64 24, i1 false), !noalias !20420
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store i8 %i.bg, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !20420
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.529.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.529.i, i64 7, i1 false), !noalias !20420
  %.sroa.630.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  store ptr %.sroa.5.sroa.4.0.i.i, ptr %.sroa.630.0..sroa_idx.i, align 8, !noalias !20420
  %.sroa.731.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store i64 %.sroa.5.sroa.5.0.i.i, ptr %.sroa.731.0..sroa_idx.i, align 8, !noalias !20420
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.027.i)
end_hunk_9
