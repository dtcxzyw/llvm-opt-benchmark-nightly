inline.NumInlined: 17049
inline.NumDeleted: 6599
begin_hunk_0_@_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.1129.073 = phi i8 [ undef, %.lr.ph ], [ %.sroa.1129.1, %_RNvXshJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 2 uses
  %i.y = add i64 %.sroa.10.075, -1                ; 2 uses
  %i.z = icmp eq ptr %.sroa.024.078, %i.u
  br i1 %i.z, label %.thread, label %bb.d

.thread:                                          ; preds = %_RNvXshJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13135)
  %i.ac = load i64, ptr %.sroa.024.078, align 8, !range !380, !alias.scope !13135, !noalias !13138, !noundef !8 ; 3 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13140
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13144)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ah)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 392
  %i.ak = load i32, ptr %i.aj, align 8, !range !13146, !alias.scope !13144, !noalias !13141, !noundef !8
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.al, i64 32, i1 false), !alias.scope !13147
  store i32 %i.ak, ptr %i.x, align 8, !alias.scope !13141, !noalias !13144
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13148)
  %i.am = load i64, ptr %i.ai, align 8, !range !274, !alias.scope !13148, !noalias !13151, !noundef !8
  %i.an = tail call i64 @llvm.usub.sat.i64(i64 %i.am, i64 68)
  switch i64 %i.an, label %default.unreachable [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.p
  ]

default.unreachable:                              ; preds = %bb.l, %.noexc12, %.noexc
  unreachable

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13153
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ai) #34
          to label %.noexc20 unwind label %bb.o, !inline_history !13154

.noexc20:                                         ; preds = %bb.g
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8, !noalias !13155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 24, i1 false), !noalias !13155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.8.sroa.0, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.8.0..sroa_idx, i64 288, i1 false), !noalias !13155
  %.sroa.8.sroa.4.0.copyload = load i64, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8, !noalias !13155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13153
  br label %bb.p

bb.h:                                             ; preds = %.noexc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13156), !noalias !13138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13159
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !13161, !noalias !13164, !nonnull !8, !noundef !8
  %i.ar = load i64, ptr %i.ao, align 8, !alias.scope !13161, !noalias !13164, !noundef !8
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aq, i64 noundef %i.ar) #34
          to label %.noexc21 unwind label %bb.o, !inline_history !13154

.noexc21:                                         ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !13155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13159
  br label %bb.p

bb.i:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 328 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13140
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(664) %.sroa.024.078) #34
          to label %.noexc12 unwind label %.loopexit, !inline_history !13166

.noexc12:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.691)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13167)
  %i.at = load i64, ptr %i.as, align 8, !range !274, !alias.scope !13167, !noalias !13170, !noundef !8
  %i.au = tail call i64 @llvm.usub.sat.i64(i64 %i.at, i64 68)
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.s
  ]

bb.j:                                             ; preds = %.noexc12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13172
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.as) #34
          to label %.noexc17 unwind label %bb.r, !inline_history !13154

.noexc17:                                         ; preds = %bb.j
  %.sroa.089.0.copyload = load i64, ptr %i.d, align 8, !noalias !13173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.691, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.691.0..sroa_idx, i64 24, i1 false), !noalias !13173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i64 40, i1 false), !noalias !13173
  %.sroa.792.0.copyload = load i8, ptr %.sroa.792.0..sroa_idx, align 8, !noalias !13173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %.sroa.893, ptr noundef nonnull align 1 dereferenceable(255) %.sroa.893.0..sroa_idx, i64 255, i1 false), !noalias !13173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13172
  br label %bb.s

bb.k:                                             ; preds = %.noexc12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13174), !noalias !13138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13177
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 352
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 344
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !13179, !noalias !13182, !nonnull !8, !noundef !8
  %i.ay = load i64, ptr %i.av, align 8, !alias.scope !13179, !noalias !13182, !noundef !8
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ax, i64 noundef %i.ay) #34
          to label %.noexc18 unwind label %bb.r, !inline_history !13154

.noexc18:                                         ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.691, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !13173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13177
  br label %bb.s

bb.l:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.649)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13184)
  %i.ba = load i64, ptr %i.az, align 8, !range !274, !alias.scope !13184, !noalias !13187, !noundef !8
  %i.bb = tail call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 68)
  switch i64 %i.bb, label %default.unreachable [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %.noexc13
  ]

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13189
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.az) #34
          to label %.noexc15 unwind label %.loopexit, !inline_history !13154

.noexc15:                                         ; preds = %bb.m
  %.sroa.047.0.copyload = load i64, ptr %i.f, align 8, !noalias !13184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.649, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.649.0..sroa_idx, i64 24, i1 false), !noalias !13184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.750.sroa.0, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.750.0..sroa_idx, i64 288, i1 false), !noalias !13184
  %.sroa.750.sroa.4.0.copyload = load i64, ptr %.sroa.750.sroa.4.0..sroa.750.0..sroa_idx.sroa_idx, align 8, !noalias !13184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13189
  br label %.noexc13

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13190)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13193
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !13195, !noalias !13198, !nonnull !8, !noundef !8
  %i.bf = load i64, ptr %i.bc, align 8, !alias.scope !13195, !noalias !13198, !noundef !8
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.be, i64 noundef %i.bf) #34
          to label %.noexc16 unwind label %.loopexit, !inline_history !13154

.noexc16:                                         ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.649, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !13184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13193
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
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %bb.u unwind label %bb.q

bb.p:                                             ; preds = %.noexc, %.noexc20, %.noexc21
  %.sroa.8.sroa.4.1 = phi i64 [ %.sroa.8.sroa.4.0.copyload, %.noexc20 ], [ %.sroa.8.sroa.4.0, %.noexc21 ], [ %.sroa.8.sroa.4.0, %.noexc ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %.noexc20 ], [ 69, %.noexc21 ], [ 70, %.noexc ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 400
  %.val5.i = load i8, ptr %i.bh, align 8, !range !7088, !alias.scope !13135, !noalias !13138, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.sroa.7.sroa.7, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.6.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.8.sroa.0, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13140
  br label %_RNvXshJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.q:                                             ; preds = %bb.o, %bb.r
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !13138, !inline_history !13166
  unreachable

bb.r:                                             ; preds = %bb.k, %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(328) %i.g) #29
          to label %bb.u unwind label %bb.q, !noalias !13138, !inline_history !13166

bb.s:                                             ; preds = %.noexc12, %.noexc17, %.noexc18
  %.sroa.792.1 = phi i8 [ %.sroa.792.0.copyload, %.noexc17 ], [ %.sroa.792.0, %.noexc18 ], [ %.sroa.792.0, %.noexc12 ] ; 2 uses
  %.sroa.089.0 = phi i64 [ %.sroa.089.0.copyload, %.noexc17 ], [ 69, %.noexc18 ], [ 70, %.noexc12 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.024.078, i64 656
  %.val.i = load i8, ptr %i.bk, align 8, !range !7088, !alias.scope !13135, !noalias !13138, !noundef !8
  %.sroa.025.0.copyload26 = load i64, ptr %i.g, align 8, !noalias !13135
  %.sroa.6.sroa.0.0.copyload52 = load i64, ptr %.sroa.6.0..sroa_idx27, align 8, !noalias !13135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx27.sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.6.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx27.sroa_idx, i64 288, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.7.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.691, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.sroa.7.sroa.7.320..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(255) %.sroa.893, i64 255, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.691)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.893)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13140
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.u:                                             ; preds = %.loopexit, %bb.o, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.bj, %bb.r ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.076, ptr %i.t, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.j) #29
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast13SetAssignmentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 25620477880152156) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.015 = alloca [352 x i8], align 8         ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 360)
  %i.f = load i64, ptr %i.d, align 8, !range !79, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noundef !8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8 ; 2 uses
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

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.015.328..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015, i64 328
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.10.038 = phi i64 [ %i.i, %.lr.ph ], [ %i.r, %bb.g ]
  %.sroa.014.037 = phi ptr [ %1, %.lr.ph ], [ %i.t, %bb.g ] ; 6 uses
  %.sroa.7.036 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.g ] ; 3 uses
  %i.r = add i64 %.sroa.10.038, -1                ; 2 uses
  %i.s = icmp eq ptr %.sroa.014.037, %i.p
  br i1 %i.s, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.g, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13200)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.037, i64 352
  %i.w = load i8, ptr %i.v, align 8, !range !2901, !alias.scope !13200, !noalias !13203, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13205
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13206)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13209
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.014.037, i64 344
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.037, i64 336
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !13211, !noalias !13214, !nonnull !8, !noundef !8
  %i.aa = load i64, ptr %i.x, align 8, !alias.scope !13211, !noalias !13214, !noundef !8
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.z, i64 noundef %i.aa) #34
          to label %.noexc unwind label %.loopexit, !inline_history !13216

.noexc:                                           ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !13206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13205
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.014.037)
          to label %bb.g unwind label %bb.e, !noalias !13203, !inline_history !13217

bb.e:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.i unwind label %bb.f, !noalias !13203, !inline_history !13217

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !13203, !inline_history !13217
  unreachable

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015.328..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.015, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13205
  %i.ad = getelementptr inbounds nuw [360 x i8], ptr %i.l, i64 %.sroa.7.036 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.ad, ptr noundef nonnull align 8 dereferenceable(352) %.sroa.015, i64 352, i1 false)
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 352
  store i8 %i.w, ptr %.sroa.424.0..sroa_idx, align 8
  %i.ae = icmp eq i64 %i.r, 0
  br i1 %i.ae, label %.thread, label %bb.c

bb.h:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.i:                                             ; preds = %.loopexit, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.036, ptr %i.o, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast13SetAssignmentEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #29
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 104811045873349726) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 88)
  %i.f = load i64, ptr %i.d, align 8, !range !79, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noundef !8 ; 5 uses
end_hunk_0
begin_hunk_1_@_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core:bb.a
bb.j:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.aj = load i64, ptr %.sroa.015.051, align 8, !range !162, !alias.scope !13259, !noalias !13262, !noundef !8
  %.not6.i = icmp eq i64 %i.aj, 69
  br i1 %.not6.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13264
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(456) %.sroa.015.051)
          to label %bb.n unwind label %bb.m, !noalias !13262, !inline_history !13271

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.c) #29
          to label %bb.h unwind label %bb.o, !noalias !13262, !inline_history !13271

bb.n:                                             ; preds = %bb.l
  %.sroa.01.0.copyload2.i = load i64, ptr %i.a, align 8, !noalias !13264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx3.i, i64 320, i1 false), !noalias !13264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13264
  br label %bb.p

bb.o:                                             ; preds = %bb.i, %bb.m
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !13262, !inline_history !13271
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13264
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.r:                                             ; preds = %.loopexit, %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.i ], [ %.pn.i, %bb.h ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.050, ptr %i.p, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.f) #29
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 27450512014448738) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 336)
  %i.i = load i64, ptr %i.g, align 8, !range !79, !noundef !8
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !107, !noundef !8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #27
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8 ; 2 uses
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

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
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

.thread:                                          ; preds = %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13275)
  %i.y = load i64, ptr %.sroa.024.093, align 8, !range !5506, !alias.scope !13275, !noalias !13278, !noundef !8 ; 3 uses
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
  %.val.i = load i8, ptr %i.ad, align 8, !range !5519, !alias.scope !13275, !noalias !13278, !noundef !8
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13280
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !13281, !noalias !13284, !nonnull !8, !noundef !8
  %i.ah = load i64, ptr %i.ae, align 8, !alias.scope !13281, !noalias !13284, !noundef !8
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ag, i64 noundef %i.ah) #34
          to label %.noexc unwind label %.loopexit, !inline_history !13286

.noexc:                                           ; preds = %bb.g
  %.sroa.11.8.copyload31 = load i8, ptr %i.f, align 8, !noalias !13275
  %.sroa.18.sroa.0.0.copyload54 = load i8, ptr %.sroa.18.8..sroa_idx36, align 1, !noalias !13275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9.0..sroa.18.8..sroa_idx36.sroa_idx, i64 6, i1 false)
  %.sroa.18.sroa.10.0.copyload59 = load ptr, ptr %.sroa.18.sroa.10.0..sroa.18.8..sroa_idx36.sroa_idx, align 8, !noalias !13275
  %i.ai = load i64, ptr %.sroa.18.sroa.11.0..sroa.18.8..sroa_idx36.sroa_idx, align 8, !noalias !13275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13280
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13280
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aj) #34
          to label %.noexc12 unwind label %.loopexit, !inline_history !13287

.noexc12:                                         ; preds = %bb.h
  %.sroa.11.8.copyload = load i8, ptr %i.e, align 8, !noalias !13275
  %.sroa.18.sroa.0.0.copyload50 = load i8, ptr %.sroa.18.8..sroa_idx, align 1, !noalias !13275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9.0..sroa.18.8..sroa_idx.sroa_idx, i64 6, i1 false)
  %.sroa.18.sroa.10.0.copyload55 = load ptr, ptr %.sroa.18.sroa.10.0..sroa.18.8..sroa_idx.sroa_idx, align 8, !noalias !13275
  %.sroa.18.sroa.11.sroa.0.sroa.0.0.copyload = load i64, ptr %.sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx, align 8, !noalias !13275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.18.sroa.11.sroa.0.sroa.8, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.18.sroa.11.sroa.0.sroa.8.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx.sroa_idx, i64 296, i1 false)
  %.sroa.18.sroa.11.sroa.8.0.copyload = load i8, ptr %.sroa.18.sroa.11.sroa.8.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx.sroa_idx, align 8, !noalias !13275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.sroa.11.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.sroa.11.sroa.9.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx.sroa_idx.sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13280
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13288)
  %i.al = load i8, ptr %i.ak, align 8, !range !5519, !alias.scope !13288, !noalias !13291, !noundef !8
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !13288, !noalias !13291, !align !1742, !noundef !8 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCs14kWLkQVSKO_14deltalake_core()
          to label %.noexc21 unwind label %.loopexit, !inline_history !13293 ; 3 uses

.noexc21:                                         ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13294
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ao) #34
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.l, !inline_history !13299

bb.l:                                             ; preds = %.noexc21
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef 328, i64 noundef 8) #31, !noalias !13300
  br label %bb.s

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ap, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !13294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13294
  br label %bb.m

bb.m:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.j
  %.sroa.0.0.i20 = phi ptr [ %i.ap, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i ], [ null, %bb.j ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !range !5519, !alias.scope !13288, !noalias !13291, !noundef !8 ; 2 uses
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.n:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13301)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 328
  %.val.i18 = load i8, ptr %i.at, align 8, !range !5519, !alias.scope !13301, !noalias !13304, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13306
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %.sroa.024.093) #34
          to label %.noexc14 unwind label %.loopexit, !inline_history !13307

.noexc14:                                         ; preds = %bb.n
  %.sroa.060.0.copyload = load i64, ptr %i.b, align 8, !noalias !13301
  %.sroa.461.0.copyload = load i8, ptr %.sroa.461.0..sroa_idx, align 8, !noalias !13301
  %.sroa.562.0.copyload = load i8, ptr %.sroa.562.0..sroa_idx, align 1, !noalias !13301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.663.0..sroa_idx, i64 6, i1 false)
  %.sroa.764.0.copyload = load ptr, ptr %.sroa.764.0..sroa_idx, align 8, !noalias !13301
  %.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !13301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.18.sroa.11.sroa.0.sroa.8, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13306
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13280
  invoke fastcc void @_RNvXsl_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.au) #34
          to label %.noexc15 unwind label %.loopexit, !inline_history !13287

.noexc15:                                         ; preds = %bb.o
  %.sroa.11.8.copyload30 = load i8, ptr %i.d, align 8, !noalias !13275
  %.sroa.18.sroa.0.0.copyload53 = load i8, ptr %.sroa.18.8..sroa_idx35, align 1, !noalias !13275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9.0..sroa.18.8..sroa_idx35.sroa_idx, i64 6, i1 false)
  %.sroa.18.sroa.10.0.copyload58 = load ptr, ptr %.sroa.18.sroa.10.0..sroa.18.8..sroa_idx35.sroa_idx, align 8, !noalias !13275
  %.sroa.18.sroa.11.sroa.0.sroa.0.0.copyload104 = load i64, ptr %.sroa.18.sroa.11.0..sroa.18.8..sroa_idx35.sroa_idx, align 8, !noalias !13275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.sroa.11.sroa.0.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.sroa.11.sroa.0.sroa.8.0..sroa.18.sroa.11.0..sroa.18.8..sroa_idx35.sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13280
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.p:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  %.val1.i = load i8, ptr %i.av, align 8, !range !5519, !alias.scope !13275, !noalias !13278, !noundef !8
  br label %_RNvXsiR_NtCs4lawaffTVVK_9sqlparser3astNtB6_22FunctionArgumentClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.q:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.024.093, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13308
  invoke fastcc void @_RNvXsh_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aw) #34
          to label %.noexc16 unwind label %.loopexit, !inline_history !13312

.noexc16:                                         ; preds = %bb.q
  %.sroa.067.0.copyload = load i8, ptr %i.c, align 8, !noalias !13313
  %.sroa.468.0.copyload = load i8, ptr %.sroa.468.0..sroa_idx, align 1, !noalias !13313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.569.0..sroa_idx, i64 6, i1 false)
  %.sroa.670.0.copyload = load ptr, ptr %.sroa.670.0..sroa_idx, align 8, !noalias !13313
  %.sroa.771.sroa.0.0.copyload = load i64, ptr %.sroa.771.0..sroa_idx, align 8, !noalias !13313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.sroa.11.sroa.0.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.771.sroa.4.0..sroa.771.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13308
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.s:                                             ; preds = %.loopexit, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.l ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.090, ptr %i.r, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h) #29
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast3TagNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 192153584101141163) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.g = load i64, ptr %i.d, align 8, !range !79, !noundef !8
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !107, !noundef !8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #27
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8 ; 2 uses
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

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.10.026 = phi i64 [ %i.j, %.lr.ph ], [ %i.t, %bb.g ]
  %.sroa.013.025 = phi ptr [ %1, %.lr.ph ], [ %i.v, %bb.g ] ; 5 uses
  %.sroa.7.024 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.g ] ; 3 uses
  %i.t = add i64 %.sroa.10.026, -1                ; 2 uses
  %i.u = icmp eq ptr %.sroa.013.025, %i.q
  br i1 %i.u, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.g, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13314
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13318)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13321
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.025, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.025, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !13323, !noalias !13326, !nonnull !8, !noundef !8
  %i.aa = load i64, ptr %i.x, align 8, !alias.scope !13323, !noalias !13326, !noundef !8
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.z, i64 noundef %i.aa) #34
          to label %.noexc unwind label %.loopexit, !inline_history !13328

.noexc:                                           ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !13318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13314
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.025, i64 24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.g unwind label %bb.e, !noalias !13329, !inline_history !13330

bb.e:                                             ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.i unwind label %bb.f, !noalias !13329, !inline_history !13330

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !13329, !inline_history !13330
  unreachable

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13314
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.sroa.7.024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.af = icmp eq i64 %i.t, 0
  br i1 %i.af, label %.thread, label %bb.c

bb.h:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.i:                                             ; preds = %.loopexit, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.024, ptr %i.p, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast3TagEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.f) #29
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 67818912035696881) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 136)
  %i.f = load i64, ptr %i.d, align 8, !range !79, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
end_hunk_1
begin_hunk_2_@_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core:bb.a

bb.af:                                            ; preds = %.noexc15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1044, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1044.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13377
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ab, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i23, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %lpad.loopexit.i.i.i, %bb.m ], [ %i.dl, %bb.ae ], [ %i.dj, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store i64 %.sroa.7.090, ptr %i.z, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.p) #29
          to label %bb.ai unwind label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast9StatementNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 3431314001806093) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [2688 x i8], align 8              ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 2688)
  %i.d = load i64, ptr %i.a, align 8, !range !79, !noundef !8
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !107, !noundef !8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #27
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8 ; 2 uses
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

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  %.sroa.10.023 = phi i64 [ %i.p, %bb.d ], [ %i.g, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.012.022 = phi ptr [ %i.s, %bb.d ], [ %1, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %.sroa.7.021 = phi i64 [ %i.r, %bb.d ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.p = add i64 %.sroa.10.023, -1                ; 2 uses
  %i.q = icmp eq ptr %.sroa.012.022, %i.n
  br i1 %i.q, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.d, %.lr.ph, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021, ptr %i.m, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast9StatementEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 27450512014448738) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 336)
  %i.f = load i64, ptr %i.d, align 8, !range !79, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noundef !8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8 ; 2 uses
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

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
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

.thread:                                          ; preds = %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  store i64 %2, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 336
  %i.u = add nuw nsw i64 %.sroa.7.062, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13440)
  %i.v = load i8, ptr %.sroa.015.064, align 8, !range !1796, !alias.scope !13440, !noalias !13437, !noundef !8 ; 2 uses
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
  %.sroa.13.sroa.10.0.copyload47 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx30.sroa_idx, align 8, !alias.scope !13442
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx30.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13442
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.w) #34
          to label %.noexc unwind label %bb.q, !inline_history !13443

.noexc:                                           ; preds = %bb.f
  %.sroa.13.sroa.10.7.copyload49 = load i64, ptr %i.c, align 8, !noalias !13440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.13.sroa.13.7..sroa_idx50, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13442
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx29, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx29.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload46 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx29.sroa_idx, align 8, !alias.scope !13442
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx29.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx29.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx28, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload45 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx28.sroa_idx, align 8, !alias.scope !13442
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx28.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx27, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx27.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload44 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx27.sroa_idx, align 8, !alias.scope !13442
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx27.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx27.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx26, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx26.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload43 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx26.sroa_idx, align 8, !alias.scope !13442
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx26.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx26.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.k:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13444)
  %i.y = load i64, ptr %i.x, align 8, !range !162, !alias.scope !13444, !noalias !13447, !noundef !8
  %i.z = icmp eq i64 %i.y, 69
  br i1 %i.z, label %.noexc12, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13449
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.x) #34
          to label %.noexc14 unwind label %bb.q, !inline_history !13450

.noexc14:                                         ; preds = %bb.l
  %.sroa.039.0.copyload = load i64, ptr %i.a, align 8, !noalias !13444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.541, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.541.0..sroa_idx, i64 320, i1 false), !noalias !13444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13449
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
  %.sroa.13.sroa.10.0.copyload42 = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx25.sroa_idx, align 8, !alias.scope !13442
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx25.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx25.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.n:                                             ; preds = %bb.d
  %.sroa.13.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx24, i64 7, i1 false)
  %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  %.sroa.13.sroa.10.0.copyload = load i64, ptr %.sroa.13.sroa.10.0..sroa.13.0..sroa_idx24.sroa_idx, align 8, !alias.scope !13442
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx24.sroa_idx, i64 320, i1 false)
  br label %_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.015.064, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13442
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aa) #34
          to label %.noexc13 unwind label %bb.q, !inline_history !13443

.noexc13:                                         ; preds = %bb.o
  %.sroa.13.sroa.10.7.copyload = load i64, ptr %i.b, align 8, !noalias !13440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %.sroa.13.sroa.13, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.13.sroa.13.7..sroa_idx, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13442
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o, %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.062, ptr %i.o, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #29
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %lpad.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 6664286153796804) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 1384)
  %i.k = load i64, ptr %i.i, align 8, !range !79, !noundef !8
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !107, !noundef !8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #27
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !8, !noundef !8 ; 2 uses
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

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
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

.thread:                                          ; preds = %bb.z, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13451)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13459)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13461
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1384) %.sroa.026.059) #34
          to label %.noexc20 unwind label %.loopexit, !inline_history !13462

.noexc20:                                         ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.026.059, i64 1312
  %.val.i = load i8, ptr %i.af, align 1, !range !13398, !alias.scope !13459, !noalias !13456, !noundef !8
  %i.ag = getelementptr i8, ptr %.sroa.026.059, i64 1313
  %.val4.i = load i8, ptr %i.ag, align 1, !range !13398, !alias.scope !13459, !noalias !13456, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i14.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i14.sroa.5)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.026.059, i64 328 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !274, !alias.scope !13459, !noalias !13456, !noundef !8 ; 2 uses
  %.not.i15 = icmp eq i64 %i.ai, 70
  br i1 %.not.i15, label %.noexc, label %bb.f

bb.e:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.pn.i.i, %bb.m ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(328) %i.f) #29
          to label %bb.ab unwind label %bb.u, !noalias !13456, !inline_history !13462

bb.f:                                             ; preds = %.noexc20
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13463)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13466
  %.not.i.i = icmp eq i64 %i.ai, 69
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13466
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(984) %i.ah) #34
          to label %.noexc.i unwind label %bb.e, !noalias !13456, !inline_history !13468

.noexc.i:                                         ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.e, ptr noundef nonnull align 8 dereferenceable(328) %i.c, i64 328, i1 false), !noalias !13466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13466
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 69, ptr %i.e, align 8, !noalias !13466
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13466
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.026.059, i64 656 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !162, !alias.scope !13469, !noalias !13470, !noundef !8
  %.not4.i.i = icmp eq i64 %i.al, 69
  br i1 %.not4.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13466
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ak)
          to label %bb.o unwind label %bb.n, !noalias !13470, !inline_history !13468

bb.k:                                             ; preds = %bb.i
  store i64 69, ptr %i.d, align 8, !noalias !13466
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
end_hunk_2
begin_hunk_3_@_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl19AlterTableOperationNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.122.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.122.sroa.13.0..sroa.122.8..sroa_idx747.sroa_idx, i64 16, i1 false)
  %.sroa.123.8.copyload757 = load i8, ptr %.sroa.123.8..sroa_idx756, align 8, !noalias !13505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.124.sroa.0, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.124.8..sroa_idx763, i64 15, i1 false)
  %i.hl = load <2 x i32>, ptr %.sroa.124.sroa.12.0..sroa.124.8..sroa_idx763.sroa_idx, align 8, !noalias !13505
  %i.hm = load <2 x i8>, ptr %.sroa.124764.8..sroa_idx773, align 8, !noalias !13505
  %.sroa.126.sroa.0.0.copyload1339 = load i16, ptr %.sroa.126.8..sroa_idx789, align 2, !noalias !13505
  %.sroa.126.sroa.10.0.copyload1345 = load i32, ptr %.sroa.126.sroa.10.0..sroa.126.8..sroa_idx789.sroa_idx, align 4, !noalias !13505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.126.sroa.11, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.126.sroa.11.0..sroa.126.8..sroa_idx789.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !13510
  br label %_RNvXs15_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 216
  %i.hp = load <2 x i8>, ptr %i.ho, align 8, !alias.scope !13505, !noalias !13508
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !13510
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13515
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13520)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.hn)
          to label %.noexc207 unwind label %.loopexit1414, !inline_history !13522

.noexc207:                                        ; preds = %bb.g
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 64
  %i.hr = load i32, ptr %i.hq, align 8, !range !13146, !alias.scope !13523, !noalias !13524, !noundef !8
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fu, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.hs, i64 32, i1 false), !alias.scope !13525, !noalias !13526
  store i32 %i.hr, ptr %i.fv, align 8, !alias.scope !13517, !noalias !13527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13515
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 96
  invoke fastcc void @_RNvXsh_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ht)
          to label %bb.j unwind label %bb.i, !noalias !13526, !inline_history !13522

bb.h:                                             ; preds = %bb.k, %bb.i
  %.pn.i206 = phi { ptr, i32 } [ %i.hz, %bb.k ], [ %i.hu, %bb.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %bb.fx unwind label %bb.l, !noalias !13526, !inline_history !13522

bb.i:                                             ; preds = %.noexc207
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %.noexc207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13515
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 88
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 80
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !13528, !noalias !13531, !nonnull !8, !noundef !8
  %i.hy = load i64, ptr %i.hv, align 8, !alias.scope !13528, !noalias !13531, !noundef !8
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl15ColumnOptionDefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.hx, i64 noundef %i.hy) #34
          to label %.noexc13 unwind label %bb.k, !noalias !13526, !inline_history !13533

bb.k:                                             ; preds = %bb.j
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.l) #29
          to label %bb.h unwind label %bb.l, !noalias !13526, !inline_history !13522

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !13526, !inline_history !13522
  unreachable

.noexc13:                                         ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ch, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false), !noalias !13512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fw, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !13512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !13512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13515
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.sroa.4.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.sroa.6.sroa.0)
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 152 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !range !271, !alias.scope !13505, !noalias !13508, !noundef !8 ; 2 uses
  %.not47.i = icmp eq i64 %i.ic, -9223372036854775807
  br i1 %.not47.i, label %bb.dz, label %bb.dx

bb.m:                                             ; preds = %bb.d
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 192
  %i.if = load i8, ptr %i.ie, align 8, !range !5519, !alias.scope !13505, !noalias !13508, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !13510
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13537)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.id)
          to label %.noexc14 unwind label %.loopexit1414

.noexc14:                                         ; preds = %bb.m
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 64
  %i.ih = load i32, ptr %i.ig, align 8, !range !13146, !alias.scope !13537, !noalias !13534, !noundef !8 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fq, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ii, i64 32, i1 false), !alias.scope !13539
  store i32 %i.ih, ptr %i.fr, align 8, !alias.scope !13534, !noalias !13537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13540)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !13543
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 88
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 80
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !13545, !noalias !13548, !nonnull !8, !noundef !8 ; 2 uses
  %i.im = load i64, ptr %i.ij, align 8, !alias.scope !13545, !noalias !13548, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13550
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 12397005425880076) %i.im, i1 noundef zeroext false, i64 noundef 8, i64 noundef 744)
          to label %.noexc1785 unwind label %.loopexit, !inline_history !13554

.noexc1785:                                       ; preds = %.noexc14
  %i.in = load i64, ptr %i.a, align 8, !range !79, !noalias !13550, !noundef !8
  %i.io = trunc nuw i64 %i.in to i1
  %i.ip = load i64, ptr %i.fy, align 8, !range !107, !noalias !13550, !noundef !8 ; 5 uses
  br i1 %i.io, label %bb.n, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.n:                                             ; preds = %.noexc1785
  %i.iq = load i64, ptr %i.fz, align 8, !noalias !13550
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ip, i64 %i.iq) #27
          to label %.noexc1786 unwind label %.loopexit.split-lp, !inline_history !13554

.noexc1786:                                       ; preds = %bb.n
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc1785
  %i.ir = load ptr, ptr %i.fz, align 8, !noalias !13550, !nonnull !8, !noundef !8 ; 2 uses
  %i.is = icmp ule i64 %i.im, %i.ip
  tail call void @llvm.assume(i1 %i.is)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13550
  store i64 %i.ip, ptr %i.c, align 8, !noalias !13550
  store ptr %i.ir, ptr %i.ga, align 8, !noalias !13550
  %i.it = getelementptr inbounds nuw [744 x i8], ptr %i.il, i64 %i.im
  %i.iu = icmp eq i64 %i.ip, 0
  br i1 %i.iu, label %.noexc201, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.p
  %.sroa.10.023.i = phi i64 [ %i.iv, %bb.p ], [ %i.ip, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.012.022.i = phi ptr [ %i.iy, %bb.p ], [ %i.il, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.ix, %bb.p ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %i.iv = add i64 %.sroa.10.023.i, -1             ; 2 uses
  %i.iw = icmp eq ptr %.sroa.012.022.i, %i.it
  br i1 %i.iw, label %.noexc201, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RNvXs3X_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(744) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(744) %.sroa.012.022.i)
          to label %bb.p unwind label %bb.r, !noalias !13555, !inline_history !13554

bb.p:                                             ; preds = %bb.o
  %i.ix = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 744
  %i.iz = getelementptr inbounds nuw [744 x i8], ptr %i.ir, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(744) %i.iz, ptr noundef nonnull align 8 dereferenceable(744) %i.b, i64 744, i1 false), !noalias !13555
  %i.ja = icmp eq i64 %i.iv, 0
  br i1 %i.ja, label %.noexc201, label %.lr.ph.i

bb.q:                                             ; preds = %bb.r
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !13555, !inline_history !13554
  unreachable

bb.r:                                             ; preds = %bb.o
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i, ptr %i.gb, align 8, !noalias !13550
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #29
          to label %.body202 unwind label %bb.q, !noalias !13555, !inline_history !13554

.noexc201:                                        ; preds = %bb.p, %.lr.ph.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.im, ptr %i.gb, align 8, !noalias !13550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !13556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !13543
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 96
  %i.jd = load i64, ptr %i.jc, align 8, !range !271, !alias.scope !13540, !noalias !13557, !noundef !8 ; 2 uses
  %.not.i194 = icmp eq i64 %i.jd, -9223372036854775807
  br i1 %.not.i194, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %.noexc201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13558)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !13561
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13566)
  %.not.i231 = icmp eq i64 %i.jd, -9223372036854775808
  br i1 %.not.i231, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13568
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 112
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 104
  %i.jg = load ptr, ptr %i.jf, align 8, !alias.scope !13569, !noalias !13572, !nonnull !8, !noundef !8
  %i.jh = load i64, ptr %i.je, align 8, !alias.scope !13569, !noalias !13572, !noundef !8
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.jg, i64 noundef %i.jh) #34
          to label %.noexc233 unwind label %bb.ac, !inline_history !13574

.noexc233:                                        ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !13575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13568
  br label %.noexc.i

bb.u:                                             ; preds = %bb.s
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 104
  %.val.i232 = load i8, ptr %i.ji, align 8, !range !13398, !alias.scope !13566, !noalias !13576, !noundef !8
  %i.jj = getelementptr i8, ptr %.sroa.0234.01651, i64 105
  %.val1.i = load i8, ptr %i.jj, align 1, !range !13398, !alias.scope !13566, !noalias !13576, !noundef !8
  store i8 %.val.i232, ptr %i.fs, align 8, !alias.scope !13563, !noalias !13575
  store i8 %.val1.i, ptr %i.ft, align 1, !alias.scope !13563, !noalias !13575
  store i64 -9223372036854775808, ptr %i.q, align 8, !alias.scope !13563, !noalias !13575
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.u, %.noexc233
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 120
  %i.jl = load i64, ptr %i.jk, align 8, !range !271, !alias.scope !13577, !noalias !13578, !noundef !8 ; 2 uses
  %.not.i.i196 = icmp eq i64 %i.jl, -9223372036854775807
  br i1 %.not.i.i196, label %_RNvXsbd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, label %bb.v

bb.v:                                             ; preds = %.noexc.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13579)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i225)
  %.not.i226 = icmp eq i64 %i.jl, -9223372036854775808
  br i1 %.not.i226, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13582
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 136
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 128
  %i.jo = load ptr, ptr %i.jn, align 8, !alias.scope !13584, !noalias !13587, !nonnull !8, !noundef !8
  %i.jp = load i64, ptr %i.jm, align 8, !alias.scope !13584, !noalias !13587, !noundef !8
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15InterpolateExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.jo, i64 noundef %i.jp) #34
          to label %.noexc230 unwind label %bb.x, !inline_history !13589

.noexc230:                                        ; preds = %bb.w
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !13582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i225, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i227, i64 16, i1 false), !noalias !13582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13582
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByKindECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %.body.i unwind label %bb.z, !noalias !13578, !inline_history !13590

bb.y:                                             ; preds = %.noexc230, %bb.v
  %.sroa.0.0.i228 = phi i64 [ %.sroa.0.0.copyload.i, %.noexc230 ], [ -9223372036854775808, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i225, i64 16, i1 false), !noalias !13578
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i225)
  br label %_RNvXsbd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.z:                                             ; preds = %bb.x
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !13578, !inline_history !13590
  unreachable

_RNvXsbd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.y, %.noexc.i
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.i228, %bb.y ], [ -9223372036854775807, %.noexc.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !13543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.51388.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !13543
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13561
  store i64 %.sroa.0.0.i.i, ptr %.sroa.41387.0..sroa_idx, align 8, !noalias !13543
  br label %bb.ab

bb.aa:                                            ; preds = %.noexc201
  store i64 -9223372036854775807, ptr %i.r, align 8, !noalias !13543
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvXsbd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i193.sroa.5.sroa.4)
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 144 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !range !271, !alias.scope !13540, !noalias !13557, !noundef !8 ; 2 uses
  %.not4.i = icmp eq i64 %i.jt, -9223372036854775807
  br i1 %.not4.i, label %bb.ec, label %bb.ad

.body.i:                                          ; preds = %bb.ac, %bb.x, %.body9.i
  %.pn.i195 = phi { ptr, i32 } [ %eh.lpad-body10.i, %.body9.i ], [ %i.ju, %bb.ac ], [ %i.jq, %bb.x ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.s) #29
          to label %.body202 unwind label %bb.ak, !noalias !13557, !inline_history !13591

bb.ac:                                            ; preds = %bb.t
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.81392.sroa.5)
  %.not.i6.i = icmp eq i64 %i.jt, -9223372036854775808
  br i1 %.not.i6.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13592
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.js)
          to label %.noexc7.i unwind label %bb.aj, !noalias !13557, !inline_history !13596

.noexc7.i:                                        ; preds = %bb.ae
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13592
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jv)
          to label %bb.ah unwind label %bb.ag, !noalias !13597, !inline_history !13596

bb.af:                                            ; preds = %bb.ad
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !13592
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jw)
          to label %.noexc8.i unwind label %bb.aj, !noalias !13557, !inline_history !13596

.noexc8.i:                                        ; preds = %bb.af
  %.sroa.51390.8.copyload = load i64, ptr %i.p, align 8, !noalias !13598
  %i.jx = load <2 x i64>, ptr %.sroa.71391.8..sroa_idx, align 8, !noalias !13598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13592
  br label %_RNvXsez_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11GroupByExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.ag:                                            ; preds = %.noexc7.i
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.o) #29
          to label %.body9.i unwind label %bb.ai, !noalias !13597, !inline_history !13596

bb.ah:                                            ; preds = %.noexc7.i
  %.sroa.01389.0.copyload = load i64, ptr %i.o, align 8, !noalias !13598
  %.sroa.51390.0.copyload = load i64, ptr %.sroa.51390.0..sroa_idx, align 8, !noalias !13598
  %.sroa.71391.0.copyload = load i64, ptr %.sroa.71391.0..sroa_idx, align 8, !noalias !13598
  %.sroa.81392.sroa.0.0.copyload = load i64, ptr %i.n, align 8, !noalias !13598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.81392.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.81392.sroa.5.0..sroa_idx, i64 16, i1 false), !noalias !13598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13592
  %i.jz = insertelement <2 x i64> poison, i64 %.sroa.71391.0.copyload, i64 0
  %i.ka = insertelement <2 x i64> %i.jz, i64 %.sroa.81392.sroa.0.0.copyload, i64 1
  br label %_RNvXsez_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11GroupByExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !13597, !inline_history !13596
  unreachable

_RNvXsez_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11GroupByExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.ah, %.noexc8.i
  %.sroa.01389.0 = phi i64 [ -9223372036854775808, %.noexc8.i ], [ %.sroa.01389.0.copyload, %bb.ah ]
  %.sroa.51390.0 = phi i64 [ %.sroa.51390.8.copyload, %.noexc8.i ], [ %.sroa.51390.0.copyload, %bb.ah ]
  %i.kc = phi <2 x i64> [ %i.jx, %.noexc8.i ], [ %i.ka, %bb.ah ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i193.sroa.5.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.81392.sroa.5, i64 16, i1 false), !noalias !13543
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81392.sroa.5)
  br label %bb.ec

bb.aj:                                            ; preds = %bb.af, %bb.ae
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %.body9.i

.body9.i:                                         ; preds = %bb.ag, %bb.aj
  %eh.lpad-body10.i = phi { ptr, i32 } [ %i.kd, %bb.aj ], [ %i.jy, %bb.ag ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7OrderByEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.r) #29
          to label %.body.i unwind label %bb.ak, !noalias !13557, !inline_history !13591

bb.ak:                                            ; preds = %.body9.i, %.body.i
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !13557, !inline_history !13591
  unreachable

bb.al:                                            ; preds = %bb.d
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 72
  %i.kh = load i8, ptr %i.kg, align 8, !range !5519, !alias.scope !13505, !noalias !13508, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !13510
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13602)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.kf)
          to label %.noexc15 unwind label %.loopexit1414

.noexc15:                                         ; preds = %bb.al
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 64
  %i.kj = load i32, ptr %i.ki, align 8, !range !13146, !alias.scope !13602, !noalias !13599, !noundef !8 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fo, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.kk, i64 32, i1 false), !alias.scope !13604
  store i32 %i.kj, ptr %i.fp, align 8, !alias.scope !13599, !noalias !13602
  %.sroa.50.8.copyload265 = load i8, ptr %i.cf, align 8, !noalias !13505
  %.sroa.91.8.copyload331 = load i8, ptr %.sroa.91.8..sroa_idx330, align 1, !noalias !13505
  %.sroa.93.sroa.0.0.copyload1057 = load i48, ptr %.sroa.93.8..sroa_idx379, align 2, !noalias !13505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.93.sroa.42, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.93.sroa.42.0..sroa.93.8..sroa_idx379.sroa_idx, i64 16, i1 false)
  %.sroa.93390.8.copyload446 = load i8, ptr %i.fo, align 8, !noalias !13505
  %.sroa.97.8.copyload506 = load i8, ptr %.sroa.97.8..sroa_idx505, align 1, !noalias !13505
  %.sroa.98.8.copyload566 = load i8, ptr %.sroa.98.8..sroa_idx565, align 2, !noalias !13505
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.99.sroa.0, ptr noundef nonnull align 1 dereferenceable(29) %i.kl, i64 29, i1 false)
  %.sroa.99.sroa.36.0.copyload1208 = load i32, ptr %.sroa.99.sroa.36.0..sroa.99.8..sroa_idx598.sroa_idx, align 4, !noalias !13505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !13510
  br label %_RNvXs15_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.am:                                            ; preds = %bb.d
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 136
  %i.ko = load i8, ptr %i.kn, align 8, !range !5519, !alias.scope !13505, !noalias !13508, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !13510
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13608)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.km)
          to label %.noexc16 unwind label %.loopexit1414

.noexc16:                                         ; preds = %bb.am
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0234.01651, i64 64
end_hunk_3
begin_hunk_4_@_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.cz = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 744
  %i.db = getelementptr inbounds nuw [744 x i8], ptr %i.cs, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(744) %i.db, ptr noundef nonnull align 8 dereferenceable(744) %i.e, i64 744, i1 false), !noalias !14113
  %i.dc = icmp eq i64 %i.cx, 0
  br i1 %i.dc, label %.noexc15, label %.lr.ph.i

bb.m:                                             ; preds = %bb.n
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !14113, !inline_history !14112
  unreachable

bb.n:                                             ; preds = %bb.k
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i, ptr %i.br, align 8, !noalias !14108
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.f) #29
          to label %.loopexit.body unwind label %bb.m, !noalias !14113, !inline_history !14112

.noexc15:                                         ; preds = %bb.l, %.lr.ph.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.cl, ptr %i.br, align 8, !noalias !14108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %bb.d
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !14114, !noalias !14117, !nonnull !8, !noundef !8 ; 2 uses
  %i.dh = load i64, ptr %i.de, align 8, !alias.scope !14114, !noalias !14117, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14119
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 12397005425880076) %i.dh, i1 noundef zeroext false, i64 noundef 8, i64 noundef 744)
          to label %.noexc294 unwind label %.loopexit.loopexit, !inline_history !14112

.noexc294:                                        ; preds = %bb.o
  %i.di = load i64, ptr %i.a, align 8, !range !79, !noalias !14119, !noundef !8
  %i.dj = trunc nuw i64 %i.di to i1
  %i.dk = load i64, ptr %i.bk, align 8, !range !107, !noalias !14119, !noundef !8 ; 6 uses
  br i1 %i.dj, label %bb.p, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i288, !prof !84

bb.p:                                             ; preds = %.noexc294
  %i.dl = load i64, ptr %i.bl, align 8, !noalias !14119
  br label %.invoke

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i288: ; preds = %.noexc294
  %i.dm = load ptr, ptr %i.bl, align 8, !noalias !14119, !nonnull !8, !noundef !8 ; 2 uses
  %i.dn = icmp ule i64 %i.dh, %i.dk
  tail call void @llvm.assume(i1 %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14119
  store i64 %i.dk, ptr %i.c, align 8, !noalias !14119
  store ptr %i.dm, ptr %i.bm, align 8, !noalias !14119
  %i.do = getelementptr inbounds nuw [744 x i8], ptr %i.dg, i64 %i.dh
  %i.dp = icmp eq i64 %i.dk, 0
  %i.dq = inttoptr i64 %i.dk to ptr
  br i1 %i.dp, label %.noexc16, label %.lr.ph.i289

.lr.ph.i289:                                      ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i288, %bb.r
  %.sroa.10.023.i290 = phi i64 [ %i.dr, %bb.r ], [ %i.dk, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i288 ]
  %.sroa.012.022.i291 = phi ptr [ %i.du, %bb.r ], [ %i.dg, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i288 ] ; 3 uses
  %.sroa.7.021.i292 = phi i64 [ %i.dt, %bb.r ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i288 ] ; 3 uses
  %i.dr = add i64 %.sroa.10.023.i290, -1          ; 2 uses
  %i.ds = icmp eq ptr %.sroa.012.022.i291, %i.do
  br i1 %i.ds, label %.noexc16, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i289
  invoke fastcc void @_RNvXs3X_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10SelectItemNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(744) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(744) %.sroa.012.022.i291)
          to label %bb.r unwind label %bb.t, !noalias !14123, !inline_history !14112

bb.r:                                             ; preds = %bb.q
  %i.dt = add nuw nsw i64 %.sroa.7.021.i292, 1
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i291, i64 744
  %i.dv = getelementptr inbounds nuw [744 x i8], ptr %i.dm, i64 %.sroa.7.021.i292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(744) %i.dv, ptr noundef nonnull align 8 dereferenceable(744) %i.b, i64 744, i1 false), !noalias !14123
  %i.dw = icmp eq i64 %i.dr, 0
  br i1 %i.dw, label %.noexc16, label %.lr.ph.i289

bb.s:                                             ; preds = %bb.t
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !14123, !inline_history !14112
  unreachable

bb.t:                                             ; preds = %bb.q
  %lpad.loopexit.i293 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i292, ptr %i.bn, align 8, !noalias !14119
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #29
          to label %.loopexit.body unwind label %bb.s, !noalias !14123, !inline_history !14112

.noexc16:                                         ; preds = %bb.r, %.lr.ph.i289, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i288
  store i64 %i.dh, ptr %i.bn, align 8, !noalias !14119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.u:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !14095
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !14124, !noalias !14127, !nonnull !8, !noundef !8
  %i.eb = load i64, ptr %i.dy, align 8, !alias.scope !14124, !noalias !14127, !noundef !8
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10AssignmentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ea, i64 noundef %i.eb) #34
          to label %.noexc17 unwind label %.loopexit.loopexit, !inline_history !14129

.noexc17:                                         ; preds = %bb.u
  %.sroa.21.8.copyload78 = load ptr, ptr %i.af, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx94, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !14095
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.v:                                             ; preds = %bb.d
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !14095
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ec)
          to label %.noexc18 unwind label %.loopexit.loopexit, !inline_history !14096

.noexc18:                                         ; preds = %bb.v
  %.sroa.21.8.copyload77 = load ptr, ptr %i.ae, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx93, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !14095
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.w:                                             ; preds = %bb.d
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !14095
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14133)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ed)
          to label %.noexc19 unwind label %.loopexit.loopexit

.noexc19:                                         ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 64
  %i.ef = load i32, ptr %i.ee, align 8, !range !13146, !alias.scope !14133, !noalias !14130, !noundef !8
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.eg, i64 32, i1 false), !alias.scope !14135
  store i32 %i.ef, ptr %i.bj, align 8, !alias.scope !14130, !noalias !14133
  %.sroa.21.8.copyload70 = load ptr, ptr %i.ad, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx86, i64 16, i1 false)
  %.sroa.3898.8.copyload108 = load i8, ptr %i.bi, align 8, !noalias !14090
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42, ptr noundef nonnull align 1 dereferenceable(31) %i.eh, i64 31, i1 false)
  %i.ei = load i64, ptr %i.bj, align 8, !noalias !14090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !14095
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.x:                                             ; preds = %bb.d
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !14095
  invoke fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ej)
          to label %.noexc20 unwind label %.loopexit.loopexit, !inline_history !14096

.noexc20:                                         ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !14095
  invoke fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ek)
          to label %bb.aq unwind label %bb.ap, !noalias !14093, !inline_history !14096

bb.y:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14136)
  %i.el = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableSampleE13new_uninit_inCs14kWLkQVSKO_14deltalake_core()
          to label %.noexc52 unwind label %.loopexit.loopexit, !inline_history !14139 ; 3 uses

.noexc52:                                         ; preds = %bb.y
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !14136, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14140
  invoke fastcc void @_RNvXs7l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableSampleNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1152) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.en) #34
          to label %.noexc21 unwind label %bb.z, !noalias !14136, !inline_history !14143

bb.z:                                             ; preds = %.noexc52
  %i.eo = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.el, i64 noundef 1152, i64 noundef 8) #31, !noalias !14136, !inline_history !14139
  br label %.loopexit.body

.noexc21:                                         ; preds = %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1152) %i.el, ptr noundef nonnull align 8 dereferenceable(1152) %i.g, i64 1152, i1 false), !noalias !14140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14140
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.aa:                                            ; preds = %bb.d
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !14095
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ep)
          to label %.noexc22 unwind label %.loopexit.loopexit, !inline_history !14096

.noexc22:                                         ; preds = %bb.aa
  %.sroa.21.8.copyload75 = load ptr, ptr %i.aa, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx91, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14095
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ab:                                            ; preds = %bb.d
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  %.val27.i = load i8, ptr %i.eq, align 8, !range !1482, !alias.scope !14090, !noalias !14093, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !14095
  invoke fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.er)
          to label %.noexc23 unwind label %.loopexit.loopexit, !inline_history !14096

.noexc23:                                         ; preds = %bb.ab
  %.sroa.21.8.copyload74 = load ptr, ptr %i.z, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx90, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !14095
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ac:                                            ; preds = %bb.d
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  %.val26.i = load i8, ptr %i.es, align 8, !range !1482, !alias.scope !14090, !noalias !14093, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !14095
  invoke fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.et)
          to label %.noexc24 unwind label %.loopexit.loopexit, !inline_history !14096

.noexc24:                                         ; preds = %bb.ac
  %.sroa.21.8.copyload73 = load ptr, ptr %i.y, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx89, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !14095
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ad:                                            ; preds = %bb.d
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  %.val.i = load i8, ptr %i.eu, align 8, !range !1482, !alias.scope !14090, !noalias !14093, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !14095
  invoke fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ev)
          to label %.noexc25 unwind label %.loopexit.loopexit, !inline_history !14096

.noexc25:                                         ; preds = %bb.ad
  %.sroa.21.8.copyload72 = load ptr, ptr %i.x, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx88, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !14095
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ae:                                            ; preds = %bb.d
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !14095
  invoke fastcc void @_RNvXsin_NtCs4lawaffTVVK_9sqlparser3astNtB6_8FunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ew) #34
          to label %.noexc26 unwind label %.loopexit.loopexit, !inline_history !14096

.noexc26:                                         ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55.i)
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 336 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !range !107, !alias.scope !14090, !noalias !14093, !noundef !8
  %.not22.i = icmp eq i64 %i.ey, -9223372036854775808
  br i1 %.not22.i, label %bb.as, label %bb.ar

bb.af:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !14095
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 56
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 48
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !14144, !noalias !14147, !nonnull !8, !noundef !8
  %i.fc = load i64, ptr %i.ez, align 8, !alias.scope !14144, !noalias !14147, !noundef !8
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fb, i64 noundef %i.fc) #34
          to label %.noexc27 unwind label %.loopexit.loopexit, !inline_history !14149

.noexc27:                                         ; preds = %bb.af
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !14095
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fd)
          to label %bb.ax unwind label %bb.aw, !noalias !14093, !inline_history !14096

bb.ag:                                            ; preds = %bb.d
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !14095
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14153)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fe)
          to label %.noexc28 unwind label %.loopexit.loopexit

.noexc28:                                         ; preds = %bb.ag
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 72
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 64
  %i.fh = load i32, ptr %i.fg, align 8, !range !13146, !alias.scope !14153, !noalias !14150, !noundef !8
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fi, i64 32, i1 false), !alias.scope !14155
  store i32 %i.fh, ptr %i.ay, align 8, !alias.scope !14150, !noalias !14153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !14095
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14159)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ff)
          to label %bb.bi unwind label %bb.bh

bb.ah:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14161)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14164
  invoke fastcc void @_RNvXs71_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(616) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1280) %.sroa.062.0232) #34
          to label %.noexc43 unwind label %.loopexit.loopexit, !inline_history !14166

.noexc43:                                         ; preds = %bb.ah
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 1272
  %i.fk = load i8, ptr %i.fj, align 8, !range !5519, !alias.scope !14161, !noalias !14167, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14164
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 616
  invoke fastcc void @_RNvXsaJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12JoinOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(656) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(656) %i.fl)
          to label %.noexc29 unwind label %bb.ai, !noalias !14167, !inline_history !14166

bb.ai:                                            ; preds = %.noexc43
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableFactorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(616) %i.i) #29
          to label %.loopexit.body unwind label %bb.aj, !noalias !14167, !inline_history !14166

bb.aj:                                            ; preds = %bb.ai
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !14167, !inline_history !14166
  unreachable

.noexc29:                                         ; preds = %.noexc43
  %.sroa.0181.0.copyload = load i64, ptr %i.i, align 8, !noalias !14161
  %.sroa.4182.0.copyload = load ptr, ptr %.sroa.4182.0..sroa_idx, align 8, !noalias !14161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5183.0..sroa_idx, i64 16, i1 false)
  %.sroa.6184.0.copyload = load i8, ptr %.sroa.6184.0..sroa_idx, align 8, !noalias !14161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7185.0..sroa_idx, i64 31, i1 false)
  %.sroa.8186.sroa.0.0.copyload = load i64, ptr %.sroa.8186.0..sroa_idx, align 8, !noalias !14161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8186.sroa.4.0..sroa.8186.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.9187.0.copyload = load i64, ptr %.sroa.9187.0..sroa_idx, align 8, !noalias !14161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.46, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10188.0..sroa_idx, i64 64, i1 false)
  %.sroa.11189.0.copyload = load i64, ptr %.sroa.11189.0..sroa_idx, align 8, !noalias !14161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12190.0..sroa_idx, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.50, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.13191.0..sroa_idx, i64 112, i1 false)
  %.sroa.14192.0.copyload = load i64, ptr %.sroa.14192.0..sroa_idx, align 8, !noalias !14161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.15193, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.15193.0..sroa_idx, i64 272, i1 false), !noalias !14161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %.sroa.15193.616..sroa_idx, ptr noundef nonnull align 8 dereferenceable(656) %i.h, i64 656, i1 false), !noalias !14161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.52, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.15193, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %.sroa.54.sroa.0, ptr noundef nonnull align 8 dereferenceable(608) %.sroa.15193.664..sroa_idx, i64 608, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15193)
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ak:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !14095
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.cb)
          to label %bb.an unwind label %bb.am, !noalias !14093, !inline_history !14096

bb.al:                                            ; preds = %bb.an, %.noexc
  %.sroa.0.0.i12 = phi i64 [ %.sroa.0.0.copyload1.i, %bb.an ], [ 69, %.noexc ]
  %.sroa.21.8.copyload68 = load ptr, ptr %i.ai, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx84, i64 16, i1 false)
  %.sroa.3898.8.copyload104 = load i8, ptr %.sroa.3898.8..sroa_idx103, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42.8..sroa_idx113, i64 31, i1 false)
  %.sroa.43.sroa.0.0.copyload258 = load i64, ptr %.sroa.43.8..sroa_idx119, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.10.0..sroa.43.8..sroa_idx119.sroa_idx, i64 16, i1 false)
  %.sroa.45.8.copyload127 = load i64, ptr %.sroa.45.8..sroa_idx126, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.46, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.46.8..sroa_idx130, i64 64, i1 false)
  %.sroa.48.8.copyload136 = load i64, ptr %.sroa.48.8..sroa_idx135, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49.8..sroa_idx139, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.50, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.50.8..sroa_idx142, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.52, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !14095
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.am:                                            ; preds = %bb.ak
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(328) %i.ai) #29
          to label %.loopexit.body unwind label %bb.ao, !noalias !14093, !inline_history !14096

bb.an:                                            ; preds = %bb.ak
  %.sroa.0.0.copyload1.i = load i64, ptr %i.p, align 8, !noalias !14095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx2.i, i64 320, i1 false), !noalias !14095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !14095
  br label %bb.al

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs14kWLkQVSKO_14deltalake_core.exit, %bb.bj, %bb.bo, %bb.bf, %.body39, %bb.av, %bb.at, %bb.ap, %bb.am
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !14093, !inline_history !14096
  unreachable

bb.ap:                                            ; preds = %.noexc20
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #29
          to label %.loopexit.body unwind label %bb.ao, !noalias !14093, !inline_history !14096

bb.aq:                                            ; preds = %.noexc20
  %.sroa.21.8.copyload76 = load ptr, ptr %i.ac, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx92, i64 16, i1 false)
  %.sroa.3898.32.copyload = load i8, ptr %i.ab, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.42, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.42.32..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !14095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !14095
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.ar:                                            ; preds = %.noexc26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14095
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14171)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ex)
          to label %bb.au unwind label %bb.at

bb.as:                                            ; preds = %bb.au, %.noexc26
  %.sroa.03.0.i = phi i64 [ %.sroa.03.0.copyload4.i, %bb.au ], [ -9223372036854775808, %.noexc26 ]
  %.sroa.21.8.copyload = load ptr, ptr %i.w, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.8..sroa_idx, i64 16, i1 false)
  %.sroa.3898.8.copyload = load i8, ptr %.sroa.3898.8..sroa_idx, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42.8..sroa_idx, i64 31, i1 false)
  %.sroa.43.sroa.0.0.copyload = load i64, ptr %.sroa.43.8..sroa_idx, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.sroa.10.0..sroa.43.8..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.45.8.copyload = load i64, ptr %.sroa.45.8..sroa_idx, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.46, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.46.8..sroa_idx, i64 64, i1 false)
  %.sroa.48.8.copyload = load i64, ptr %.sroa.48.8..sroa_idx, align 8, !noalias !14090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49.8..sroa_idx, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.50, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.50.8..sroa_idx, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.52, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.55.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !14095
  br label %_RNvXscJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12PipeOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.at:                                            ; preds = %bb.ar
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast8FunctionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(328) %i.w) #29
          to label %.loopexit.body unwind label %bb.ao, !noalias !14093, !inline_history !14096

bb.au:                                            ; preds = %bb.ar
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 392
  %i.ft = load i32, ptr %i.fs, align 8, !range !13146, !alias.scope !14171, !noalias !14173, !noundef !8
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.062.0232, i64 360
end_hunk_4
begin_hunk_5_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRReEINtB2_18SpecFromIterNestedB11_INtNtCs2HSpDNxY7OE_9hashbrown3set10DifferenceB12_NtNtB1E_6hasher18DefaultHashBuilderEE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.noexc10, %.lr.ph.i.i
  %i.v = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.ah, %.noexc10 ]
  %i.w = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !31033, !noalias !31034, !noundef !8 ; 5 uses
  %i.x = icmp ult i64 %i.w, 1152921504606846976
  call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %i.c, align 8, !range !83, !alias.scope !31033, !noalias !31034, !noundef !8
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.noexc9

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.t, align 8, !alias.scope !31034, !noalias !31033, !noundef !8
  %.val6.i.i = load ptr, ptr %i.u, align 8, !alias.scope !31034, !noalias !31033, !nonnull !8, !align !1742, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !31035, !noundef !8
  %i.ac = call i64 @llvm.usub.sat.i64(i64 %.val.i.i, i64 %i.ab)
  %i.ad = call i64 @llvm.uadd.sat.i64(i64 %i.ac, i64 1)
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.w, i64 noundef range(i64 1, 0) %i.ad, i64 noundef 8, i64 noundef 8)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.d
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !31033, !noalias !31034, !nonnull !8, !noundef !8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.w
  store ptr %i.v, ptr %i.af, align 8, !noalias !31034
  %i.ag = add nuw nsw i64 %i.w, 1
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !31033, !noalias !31034
  %i.ah = invoke fastcc noundef align 8 ptr @_RNvXsK_NtCs2HSpDNxY7OE_9hashbrown3setINtB5_10DifferenceReNtNtB7_6hasher18DefaultHashBuilderENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.noexc10 unwind label %.loopexit ; 2 uses

.noexc10:                                         ; preds = %.noexc9
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRReEINtB2_10SpecExtendBR_INtNtCs2HSpDNxY7OE_9hashbrown3set10DifferenceBS_NtNtB1l_6hasher18DefaultHashBuilderEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aj, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRReEINtB2_10SpecExtendBR_INtNtCs2HSpDNxY7OE_9hashbrown3set10DifferenceBS_NtNtB1l_6hasher18DefaultHashBuilderEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, %.noexc9
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRReEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.h

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRReEINtB2_10SpecExtendBR_INtNtCs2HSpDNxY7OE_9hashbrown3set10DifferenceBS_NtNtB1l_6hasher18DefaultHashBuilderEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc10, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRReEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31041)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !5519, !alias.scope !31044, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !31044, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !31044, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31045)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !31048, !noalias !31049, !noundef !8 ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.k, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !31048, !noalias !31049 ; 2 uses
  %i.l = icmp ult i64 %i.k, %.promoted.i.i.i
  %or.cond21.i.i.i = or i1 %.not.i.i.i, %i.l
  br i1 %or.cond21.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !31048, !noalias !31049, !noundef !8 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %.pre.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !31048, !noalias !31049 ; 2 uses
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
  %i.x = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.u), !noalias !31051
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
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !31052, !noalias !31051, !noundef !8
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
  store i64 %i.ai, ptr %i.i, align 8, !alias.scope !31048, !noalias !31049
  %.not12.i.i.i = icmp ult i64 %i.ai, %i.p
  %.not13.i.i.i = icmp ugt i64 %i.ai, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not12.i.i.i, %.not13.i.i.i
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i:                                  ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !31048, !noalias !31049
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.aj = icmp ult i64 %i.k, %i.ai
  br i1 %i.aj, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = sub nuw i64 %i.ai, %i.p                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ak
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.al, ptr nonnull %i.m, i64 %i.p), !noalias !31049
  %i.am = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.am, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.f

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.g
  %i.an = load i64, ptr %1, align 8, !alias.scope !31044, !noundef !8 ; 2 uses
  %i.ao = sub nuw i64 %i.ak, %i.an
  store i64 %i.ai, ptr %1, align 8, !alias.scope !31044
  br label %select.unfold

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.split.us.i.i.i, %bb.b
  store i8 1, ptr %i.d, align 1, !alias.scope !31055
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = load i8, ptr %i.ap, align 8, !range !5519, !alias.scope !31055, !noundef !8
  %i.ar = trunc nuw i8 %i.aq to i1
  %.pre.i2.i.i = load i64, ptr %1, align 8, !alias.scope !31055 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !31055 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.ar, i1 true, i1 %.not.i3.i.i
  %cond.fr = freeze i1 %or.cond.not.i.i.i
  %i.as = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %cond.fr, label %select.unfold, label %bb.n

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.ao, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.as, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.pn = phi i64 [ %i.an, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.at = load i64, ptr %i.a, align 8, !range !79, !noundef !8
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !107, !noundef !8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.au, label %bb.h, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !84

bb.h:                                             ; preds = %select.unfold
  %i.ay = load i64, ptr %i.ax, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.aw, i64 %i.ay) #27
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %select.unfold
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  %i.az = load ptr, ptr %i.ax, align 8, !nonnull !8, !noundef !8 ; 5 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31066)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  %.promoted.i.i = load i8, ptr %i.bc, align 1, !alias.scope !31068, !noalias !31073
  %.promoted13.i.i = load i64, ptr %i.b, align 8, !alias.scope !31074, !noalias !31073 ; 4 uses
  %i.bd = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.bd, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !31068, !noalias !31073, !nonnull !8, !noundef !8 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !31068, !noalias !31073, !noundef !8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !31075, !noalias !31078, !noundef !8 ; 5 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.bh, %.val1.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bk = load i8, ptr %i.bj, align 8, !alias.scope !31074, !noalias !31073 ; 2 uses
  %i.bl = zext nneg i8 %i.bk to i64               ; 4 uses
  %i.bm = icmp ult i8 %i.bk, 5
  %i.bn = getelementptr i8, ptr %i.bi, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bq = load i8, ptr %i.bp, align 8, !range !5519, !alias.scope !31074, !noalias !31073
  %i.br = trunc nuw i8 %i.bq to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !31074, !noalias !31073 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.promoted17.i.i = load i64, ptr %i.bs, align 8, !alias.scope !31075, !noalias !31078
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %.not.i3.i.i.us.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.promoted13.i.i
  %or.cond.not.i.i.i.us.i.i = select i1 %i.br, i1 true, i1 %.not.i3.i.i.us.i.i
  %cond.fr.us.i.i = freeze i1 %or.cond.not.i.i.i.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31082)
  br i1 %cond.fr.us.i.i, label %._crit_edge.split.us.split.us.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit

._crit_edge.split.us.split.us.i.i:                ; preds = %.lr.ph.split.us.i.i
  %.sroa.0.1.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.promoted13.i.i
  %i.bt = sub nuw i64 %.pre2.i.i.i.i.i, %.promoted13.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %.sroa.0.1.i.i.us.i.i, ptr %i.bu, align 8, !noalias !31074
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %i.bt, ptr %i.bv, align 8, !noalias !31074
  store i64 2, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !31073, !noalias !31074
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i.i:                                 ; preds = %.noexc12, %.lr.ph.split.preheader.i.i
  %i.bw = phi i64 [ %i.ct, %.noexc12 ], [ %.promoted17.i.i, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %.lcssa111516.i.i = phi i64 [ %.lcssa1114.i.i, %.noexc12 ], [ %.promoted13.i.i, %.lr.ph.split.preheader.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31080)
  call void @llvm.experimental.noalias.scope.decl(metadata !31081)
  call void @llvm.experimental.noalias.scope.decl(metadata !31082)
  %i.bx = icmp ult i64 %i.bh, %i.bw
  br i1 %i.bx, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %.lr.ph.split.i.i
  call void @llvm.assume(i1 %i.bm)
  %.pre.i.i.i.i.i = load i8, ptr %i.bo, align 1, !alias.scope !31075, !noalias !31078 ; 2 uses
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
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !31083, !noalias !31086, !noundef !8
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
  br i1 %i.ck, label %bb.k, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

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
  br i1 %i.co, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cp = sub nuw i64 %i.cn, %i.bl                ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.cp
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.cq, ptr nonnull %i.bi, i64 %i.bl), !noalias !31087
  %i.cr = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cr, label %select.unfold.i.i, label %bb.l

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.l, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i, %.lr.ph.split.i.i
  %i.cs = phi i64 [ %i.bw, %.lr.ph.split.i.i ], [ %i.bh, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %i.cn, %bb.l ]
  store i8 1, ptr %i.bc, align 1, !alias.scope !31088, !noalias !31073
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa111516.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.br, i1 true, i1 %.not.i3.i.i.i.i
  %cond.fr.i.i = freeze i1 %or.cond.not.i.i.i.i.i
  br i1 %cond.fr.i.i, label %select.unfold.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit

select.unfold.i.i:                                ; preds = %bb.m, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.ct = phi i64 [ %i.cs, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.cn, %bb.m ]
  %.lcssa1114.i.i = phi i64 [ %.lcssa111516.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.cn, %bb.m ]
  %i.cu = phi i1 [ true, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ false, %bb.m ]
  %.pn.i.i = phi i64 [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.cp, %bb.m ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa111516.i.i
  %.sroa.0.1.i.i.i.i10 = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa111516.i.i
  %i.cv = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !31073, !noalias !31074, !noundef !8 ; 5 uses
  %i.cw = icmp ult i64 %i.cv, 576460752303423488
  call void @llvm.assume(i1 %i.cw)
  %i.cx = load i64, ptr %i.c, align 8, !range !83, !alias.scope !31073, !noalias !31074, !noundef !8
  %i.cy = icmp eq i64 %i.cv, %i.cx
  br i1 %i.cy, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.noexc12

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %select.unfold.i.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cv, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, %select.unfold.i.i
  %i.cz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !31073, !noalias !31074, !nonnull !8, !noundef !8
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cv ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i10, ptr %i.da, align 8, !noalias !31074
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %.sroa.4.1.i.i.i.i, ptr %i.db, align 8, !noalias !31074
  %i.dc = add nuw nsw i64 %i.cv, 1
  store i64 %i.dc, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !31073, !noalias !31074
  br i1 %i.cu, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.split.i.i

bb.n:                                             ; preds = %bb.a, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i
  store i64 0, ptr %0, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.de, align 8
  br label %bb.o

bb.o:                                             ; preds = %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.q

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc12, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %._crit_edge.split.us.split.us.i.i, %.lr.ph.split.us.i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB1D_6filter6FilterINtNtNtB1H_5slice4iter4IterINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0ENCB4d_s0_0EE9from_iterB4l_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %2, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31094)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31097)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !31100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !31100
  store ptr %i.j, ptr %i.f, align 8, !noalias !31101
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = phi ptr [ %i.m, %bb.c ], [ %1, %bb.a ]   ; 4 uses
  %i.l = icmp eq ptr %i.k, %2
  br i1 %i.l, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !alias.scope !31103, !noalias !31104
  store ptr %i.k, ptr %i.e, align 8, !noalias !31101
  %i.n = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0INtB7_5FnMutTRRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE8call_mutBY_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e), !noalias !31097
  br i1 %i.n, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !31100
  %.val.i = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !8, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.r = load i64, ptr %i.q, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.s = load i64, ptr %i.d, align 8, !range !79, !noundef !8
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !107, !noundef !8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.t, label %bb.e, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !84

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %i.w, align 8
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.x) #27
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  %i.y = load ptr, ptr %i.w, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.z = icmp ugt i64 %i.v, 3
  call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.p, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.r, ptr %i.aa, align 8
  store i64 %i.v, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  %i.ab = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  %i.ac = load ptr, ptr %i.i, align 8, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31105)
  call void @llvm.experimental.noalias.scope.decl(metadata !31108)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31105
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !noalias !31111
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.noexc12, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  %.promoted.i.i.i.i.i = phi ptr [ %.promoted.i.i.i.pre.i.i, %.noexc12 ], [ %i.ab, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.af = phi ptr [ %.pre.i.i, %.noexc12 ], [ %i.ac, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !31112)
  call void @llvm.experimental.noalias.scope.decl(metadata !31115)
  call void @llvm.experimental.noalias.scope.decl(metadata !31118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31121
  store ptr %i.ae, ptr %i.b, align 8, !noalias !31122
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.f
  %i.ag = phi ptr [ %i.ai, %.noexc ], [ %.promoted.i.i.i.i.i, %bb.f ] ; 5 uses
  %i.ah = icmp eq ptr %i.ag, %i.af
  br i1 %i.ah, label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0ENtNtNtB9_6traits8iterator8Iterator4nextB2U_.exit.thread.i.i.i, label %bb.h

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0ENtNtNtB9_6traits8iterator8Iterator4nextB2U_.exit.thread.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31121
  br label %.loopexit17

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.c, align 8, !alias.scope !31124, !noalias !31125
  store ptr %i.ag, ptr %i.a, align 8, !noalias !31122
  %i.aj = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0INtB7_5FnMutTRRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE8call_mutBY_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.h
  br i1 %i.aj, label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0ENtNtNtB9_6traits8iterator8Iterator4nextB2U_.exit.i.i.i, label %bb.g

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0ENtNtNtB9_6traits8iterator8Iterator4nextB2U_.exit.i.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31121
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %.loopexit17, label %bb.i

bb.i:                                             ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0ENtNtNtB9_6traits8iterator8Iterator4nextB2U_.exit.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ag, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !8, !noundef !8
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !8
  %i.ao = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !31111, !noundef !8 ; 5 uses
  %i.ap = icmp ult i64 %i.ao, 576460752303423488
  call void @llvm.assume(i1 %i.ap)
  %i.aq = load i64, ptr %i.g, align 8, !range !83, !alias.scope !31111, !noundef !8
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br i1 %i.ar, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.noexc12
end_hunk_5
begin_hunk_6_@_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB1E_4Path5parts0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.w:                                             ; preds = %bb.m
  call fastcc void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false) #34
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %bb.w, %bb.v, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i
  %i.cn = load i64, ptr %i.a, align 8, !range !79, !noalias !33690, !noundef !8
  %i.co = trunc nuw i64 %i.cn to i1
  br i1 %i.co, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !33690, !noundef !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !33690, !noundef !8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !33690, !noundef !8 ; 2 uses
  %i.cv = sub nuw i64 %i.cq, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cu
  store i64 %i.cs, ptr %i.ct, align 8, !alias.scope !33690
  br label %bb.ac

bb.y:                                             ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %i.cx = load i8, ptr %i.b, align 1, !range !5519, !alias.scope !33715, !noundef !8
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread6, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.b, align 1, !alias.scope !33715
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.da = load i8, ptr %i.cz, align 8, !range !5519, !alias.scope !33715, !noundef !8
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %._crit_edge.i.i.i, label %bb.aa

._crit_edge.i.i.i:                                ; preds = %bb.z
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !33715
  %.phi.trans.insert2.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre3.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i, align 8, !alias.scope !33715
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !33715, !noundef !8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !33715, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dd, %i.df
  br i1 %.not.i.i.i, label %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread6, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i.i.i
  %i.dg = phi i64 [ %.pre3.i.i.i, %._crit_edge.i.i.i ], [ %i.dd, %bb.aa ]
  %i.dh = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.df, %bb.aa ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !33715, !nonnull !8, !noundef !8
  %i.di = sub nuw i64 %i.dg, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.dh
  br label %bb.ac

_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread6: ; preds = %bb.aa, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33690
  br label %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.sroa.4.0.i.i = phi i64 [ %i.cv, %bb.x ], [ %i.di, %bb.ab ]
  %.sroa.0.0.i.i = phi ptr [ %i.cw, %bb.x ], [ %i.dj, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33690
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.ad

_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a, %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread6
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.ac
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENCINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB1v_10ColumnNameINtNtNtB9_6traits7collect12FromIteratorReE9from_iterBW_E0ENtNtB2P_8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33721)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !5519, !alias.scope !33724, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !33724, !nonnull !8, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !33724, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33725)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !33728, !noalias !33729, !noundef !8 ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.i, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !33728, !noalias !33729 ; 2 uses
  %i.j = icmp ult i64 %i.i, %.promoted.i.i.i
  %or.cond21.i.i.i = or i1 %.not.i.i.i, %i.j
  br i1 %or.cond21.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !33728, !noalias !33729, !noundef !8 ; 2 uses
  %i.n = zext nneg i8 %i.m to i64                 ; 4 uses
  %i.o = icmp ult i8 %i.m, 5
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr i8, ptr %i.k, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %.pre.i.i.i = load i8, ptr %i.q, align 1, !alias.scope !33728, !noalias !33729 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i
  %i.r = phi i64 [ %i.ag, %bb.f ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %i.s = sub nuw i64 %i.i, %i.r                   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.r ; 2 uses
  %i.u = icmp samesign ult i64 %i.s, 16
  br i1 %i.u, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.v = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.s), !noalias !33731
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.s, %bb.d ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.05.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !33732, !noalias !33731, !noundef !8
  %i.aa = icmp eq i8 %i.z, %.pre.i.i.i
  br i1 %i.aa, label %._crit_edge.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %i.s
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.c
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.x, %._crit_edge.i.i.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.ac = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.split.us.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  %i.ae = extractvalue { i64, i64 } %.merged.i.i.i.i, 1
  %i.af = add i64 %i.r, 1
  %i.ag = add i64 %i.af, %i.ae                    ; 7 uses
  store i64 %i.ag, ptr %i.g, align 8, !alias.scope !33728, !noalias !33729
  %.not12.i.i.i = icmp ult i64 %i.ag, %i.n
  %.not13.i.i.i = icmp ugt i64 %i.ag, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not12.i.i.i, %.not13.i.i.i
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i:                                  ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !33728, !noalias !33729
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ah = icmp ult i64 %i.i, %i.ag
  br i1 %i.ah, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ai = sub nuw i64 %i.ag, %i.n                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ai
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.aj, ptr nonnull %i.k, i64 %i.n), !noalias !33729
  %i.ak = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ak, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.f

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.g
  %i.al = load i64, ptr %1, align 8, !alias.scope !33724, !noundef !8 ; 2 uses
  %i.am = sub nuw i64 %i.ai, %i.al
  store i64 %i.ag, ptr %1, align 8, !alias.scope !33724
  br label %select.unfold

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.split.us.i.i.i, %bb.b
  store i8 1, ptr %i.b, align 1, !alias.scope !33735
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load i8, ptr %i.an, align 8, !range !5519, !alias.scope !33735, !noundef !8
  %i.ap = trunc nuw i8 %i.ao to i1
  %.pre.i2.i.i = load i64, ptr %1, align 8, !alias.scope !33735 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !33735 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.ap, i1 true, i1 %.not.i3.i.i
  %cond.fr = freeze i1 %or.cond.not.i.i.i
  %i.aq = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %cond.fr, label %select.unfold, label %bb.j

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.am, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.aq, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 5 uses
  %.pn = phi i64 [ %i.al, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33738
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.1.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !33738
  %i.ar = load i64, ptr %i.a, align 8, !range !79, !noalias !33738, !noundef !8
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !107, !noalias !33738, !noundef !8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.as, label %bb.h, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, !prof !84

bb.h:                                             ; preds = %select.unfold
  %i.aw = load i64, ptr %i.av, align 8, !noalias !33738
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #27, !noalias !33738
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %select.unfold
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !33738, !nonnull !8, !noundef !8 ; 2 uses
  %i.ay = icmp ule i64 %.sroa.4.1.i.i, %i.au
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33738
  %.not.i.i.i.i3 = icmp eq i64 %.sroa.4.1.i.i, 0
  br i1 %.not.i.i.i.i3, label %_RNCINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB7_10ColumnNameINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB1u_3str4iter5SplitcEE0Cs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %.sroa.0.1.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.4.1.i.i, i1 false), !noalias !33751
  br label %_RNCINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB7_10ColumnNameINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB1u_3str4iter5SplitcEE0Cs14kWLkQVSKO_14deltalake_core.exit

_RNCINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB7_10ColumnNameINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB1u_3str4iter5SplitcEE0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.i
  store i64 %i.au, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.1.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.a, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNCINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB7_10ColumnNameINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB1u_3str4iter5SplitcEE0Cs14kWLkQVSKO_14deltalake_core.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENCNCNCNvNtCs14kWLkQVSKO_14deltalake_core10operations34get_num_idx_cols_and_stats_columnss0_000ENtNtNtB9_6traits8iterator8Iterator4nextB1x_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33755)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !5519, !alias.scope !33758, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !33758, !nonnull !8, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !33758, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33759)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !33762, !noalias !33763, !noundef !8 ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.i, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !33762, !noalias !33763 ; 2 uses
  %i.j = icmp ult i64 %i.i, %.promoted.i.i.i
  %or.cond21.i.i.i = or i1 %.not.i.i.i, %i.j
  br i1 %or.cond21.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !33762, !noalias !33763, !noundef !8 ; 2 uses
  %i.n = zext nneg i8 %i.m to i64                 ; 4 uses
  %i.o = icmp ult i8 %i.m, 5
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr i8, ptr %i.k, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %.pre.i.i.i = load i8, ptr %i.q, align 1, !alias.scope !33762, !noalias !33763 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i
  %i.r = phi i64 [ %i.ag, %bb.f ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %i.s = sub nuw i64 %i.i, %i.r                   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.r ; 2 uses
  %i.u = icmp samesign ult i64 %i.s, 16
  br i1 %i.u, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.v = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.s), !noalias !33765
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.s, %bb.d ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.05.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !33766, !noalias !33765, !noundef !8
  %i.aa = icmp eq i8 %i.z, %.pre.i.i.i
  br i1 %i.aa, label %._crit_edge.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %i.s
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.c
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.x, %._crit_edge.i.i.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.ac = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.split.us.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  %i.ae = extractvalue { i64, i64 } %.merged.i.i.i.i, 1
  %i.af = add i64 %i.r, 1
  %i.ag = add i64 %i.af, %i.ae                    ; 7 uses
  store i64 %i.ag, ptr %i.g, align 8, !alias.scope !33762, !noalias !33763
  %.not12.i.i.i = icmp ult i64 %i.ag, %i.n
  %.not13.i.i.i = icmp ugt i64 %i.ag, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not12.i.i.i, %.not13.i.i.i
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i:                                  ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !33762, !noalias !33763
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ah = icmp ult i64 %i.i, %i.ag
  br i1 %i.ah, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ai = sub nuw i64 %i.ag, %i.n                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ai
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.aj, ptr nonnull %i.k, i64 %i.n), !noalias !33763
  %i.ak = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ak, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.f

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.g
  %i.al = load i64, ptr %1, align 8, !alias.scope !33758, !noundef !8 ; 2 uses
  %i.am = sub nuw i64 %i.ai, %i.al
  store i64 %i.ag, ptr %1, align 8, !alias.scope !33758
  br label %select.unfold

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.split.us.i.i.i, %bb.b
  store i8 1, ptr %i.b, align 1, !alias.scope !33769
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load i8, ptr %i.an, align 8, !range !5519, !alias.scope !33769, !noundef !8
  %i.ap = trunc nuw i8 %i.ao to i1
  %.pre.i2.i.i = load i64, ptr %1, align 8, !alias.scope !33769 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !33769 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.ap, i1 true, i1 %.not.i3.i.i
  %cond.fr = freeze i1 %or.cond.not.i.i.i
  %i.aq = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %cond.fr, label %select.unfold, label %bb.k

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.am, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.aq, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 5 uses
  %.pn = phi i64 [ %i.al, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33772
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.1.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !33772
  %i.ar = load i64, ptr %i.a, align 8, !range !79, !noalias !33772, !noundef !8
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !107, !noalias !33772, !noundef !8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.as, label %bb.h, label %bb.i, !prof !84

bb.h:                                             ; preds = %select.unfold
  %i.aw = load i64, ptr %i.av, align 8, !noalias !33772
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #27, !noalias !33772
  unreachable

bb.i:                                             ; preds = %select.unfold
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !33772, !nonnull !8, !noundef !8 ; 2 uses
  %i.ay = icmp ule i64 %.sroa.4.1.i.i, %i.au
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33772
  %.not.i = icmp eq i64 %.sroa.4.1.i.i, 0
  br i1 %.not.i, label %_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core10operations34get_num_idx_cols_and_stats_columnss0_000B9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %.sroa.0.1.i.i, i64 %.sroa.4.1.i.i, i1 false), !noalias !33776
  br label %_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core10operations34get_num_idx_cols_and_stats_columnss0_000B9_.exit

_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core10operations34get_num_idx_cols_and_stats_columnss0_000B9_.exit: ; preds = %bb.i, %bb.j
  store i64 %i.au, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.1.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.a, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core10operations34get_num_idx_cols_and_stats_columnss0_000B9_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB1w_17RecordBatchWriter9for_tables_00ENtNtNtB9_6traits8iterator8Iterator4nextB1A_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33780)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !5519, !alias.scope !33783, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !33783, !nonnull !8, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !33783, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33784)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !33787, !noalias !33788, !noundef !8 ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.i, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !33787, !noalias !33788 ; 2 uses
  %i.j = icmp ult i64 %i.i, %.promoted.i.i.i
  %or.cond21.i.i.i = or i1 %.not.i.i.i, %i.j
  br i1 %or.cond21.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !33787, !noalias !33788, !noundef !8 ; 2 uses
  %i.n = zext nneg i8 %i.m to i64                 ; 4 uses
  %i.o = icmp ult i8 %i.m, 5
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr i8, ptr %i.k, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %.pre.i.i.i = load i8, ptr %i.q, align 1, !alias.scope !33787, !noalias !33788 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i
  %i.r = phi i64 [ %i.ag, %bb.f ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %i.s = sub nuw i64 %i.i, %i.r                   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.r ; 2 uses
  %i.u = icmp samesign ult i64 %i.s, 16
  br i1 %i.u, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.v = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.s), !noalias !33790
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.s, %bb.d ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.05.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !33791, !noalias !33790, !noundef !8
  %i.aa = icmp eq i8 %i.z, %.pre.i.i.i
  br i1 %i.aa, label %._crit_edge.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %i.s
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.c
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.x, %._crit_edge.i.i.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.ac = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.split.us.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  %i.ae = extractvalue { i64, i64 } %.merged.i.i.i.i, 1
  %i.af = add i64 %i.r, 1
  %i.ag = add i64 %i.af, %i.ae                    ; 7 uses
  store i64 %i.ag, ptr %i.g, align 8, !alias.scope !33787, !noalias !33788
  %.not12.i.i.i = icmp ult i64 %i.ag, %i.n
  %.not13.i.i.i = icmp ugt i64 %i.ag, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not12.i.i.i, %.not13.i.i.i
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i:                                  ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !33787, !noalias !33788
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ah = icmp ult i64 %i.i, %i.ag
  br i1 %i.ah, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ai = sub nuw i64 %i.ag, %i.n                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ai
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.aj, ptr nonnull %i.k, i64 %i.n), !noalias !33788
  %i.ak = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ak, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.f

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.g
  %i.al = load i64, ptr %1, align 8, !alias.scope !33783, !noundef !8 ; 2 uses
  %i.am = sub nuw i64 %i.ai, %i.al
  store i64 %i.ag, ptr %1, align 8, !alias.scope !33783
  br label %select.unfold

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.split.us.i.i.i, %bb.b
  store i8 1, ptr %i.b, align 1, !alias.scope !33794
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load i8, ptr %i.an, align 8, !range !5519, !alias.scope !33794, !noundef !8
  %i.ap = trunc nuw i8 %i.ao to i1
  %.pre.i2.i.i = load i64, ptr %1, align 8, !alias.scope !33794 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !33794 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.ap, i1 true, i1 %.not.i3.i.i
  %cond.fr = freeze i1 %or.cond.not.i.i.i
  %i.aq = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %cond.fr, label %select.unfold, label %bb.k

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.am, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.aq, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 5 uses
  %.pn = phi i64 [ %i.al, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33797
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.1.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !33797
  %i.ar = load i64, ptr %i.a, align 8, !range !79, !noalias !33797, !noundef !8
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !107, !noalias !33797, !noundef !8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.as, label %bb.h, label %bb.i, !prof !84

bb.h:                                             ; preds = %select.unfold
  %i.aw = load i64, ptr %i.av, align 8, !noalias !33797
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #27, !noalias !33797
  unreachable

bb.i:                                             ; preds = %select.unfold
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !33797, !nonnull !8, !noundef !8 ; 2 uses
  %i.ay = icmp ule i64 %.sroa.4.1.i.i, %i.au
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33797
  %.not.i = icmp eq i64 %.sroa.4.1.i.i, 0
  br i1 %.not.i, label %_RNCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB8_17RecordBatchWriter9for_tables_00Bc_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %.sroa.0.1.i.i, i64 %.sroa.4.1.i.i, i1 false), !noalias !33801
  br label %_RNCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB8_17RecordBatchWriter9for_tables_00Bc_.exit

_RNCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB8_17RecordBatchWriter9for_tables_00Bc_.exit: ; preds = %bb.i, %bb.j
  store i64 %i.au, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.1.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.a, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB8_17RecordBatchWriter9for_tables_00Bc_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay23extract_file_statisticss_00ENtNtNtB9_6traits8iterator8Iterator4nextB3p_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(288) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  %i.d = alloca [64 x i8], align 16               ; 4 uses
  %i.e = alloca [64 x i8], align 16               ; 3 uses
  %i.f = alloca [64 x i8], align 16               ; 3 uses
  %i.g = alloca [80 x i8], align 16               ; 6 uses
  %.sroa.418.i = alloca [64 x i8], align 16       ; 3 uses
  %i.h = alloca [80 x i8], align 16               ; 5 uses
  %i.i = alloca [80 x i8], align 16               ; 6 uses
  %.sroa.5 = alloca [64 x i8], align 16           ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !alias.scope !33802, !nonnull !8, !noundef !8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !33802, !nonnull !8, !noundef !8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store ptr %i.n, ptr %1, align 8, !alias.scope !33802
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33808)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !33805, !noalias !33810, !nonnull !8, !align !1742, !noundef !8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !33812, !align !1742, !noundef !8 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_RNCNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay23extract_file_statisticss_00Bf_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call noundef zeroext i1 @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.o), !noalias !33813
  br i1 %i.s, label %bb.d, label %_RNCNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay23extract_file_statisticss_00Bf_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !33805, !noalias !33810, !nonnull !8, !align !1742, !noundef !8 ; 5 uses
  %i.v = load i64, ptr %i.u, align 8, !range !107, !noalias !33813, !noundef !8
  %.not26.i = icmp eq i64 %i.v, -9223372036854775808
  br i1 %.not26.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !33808, !noalias !33813, !nonnull !8, !noundef !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !33808, !noalias !33813, !noundef !8
  %i.aa = tail call { i64, i64 } @_RNvXs5_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_extNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataNtB5_13StructDataExt8index_of(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z), !noalias !33813 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1      ; 3 uses
  %i.ad = trunc nuw i64 %i.ab to i1
  br i1 %i.ad, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.u, align 8, !range !107, !noalias !33813, !noundef !8
  %.not27.i = icmp eq i64 %i.ae, -9223372036854775808
  br i1 %.not27.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !noalias !33813, !noundef !8 ; 2 uses
  %i.ah = icmp ult i64 %i.ac, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !33813, !nonnull !8, !noundef !8
  %i.ak = getelementptr inbounds nuw [96 x i8], ptr %i.aj, i64 %i.ac ; 3 uses
  %i.al = load i64, ptr %i.ak, align 16, !range !12394, !noalias !33813, !noundef !8 ; 2 uses
  %i.am = xor i64 %i.al, -9223372036854775808
  %i.an = icmp slt i64 %i.al, 0
  %i.ao = select i1 %i.an, i64 %i.am, i64 16
  switch i64 %i.ao, label %bb.l [
    i64 0, label %bb.j
    i64 1, label %bb.k
  ]

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ac, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28, !noalias !33813
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !noalias !33813, !noundef !8
  %i.ar = sext i32 %i.aq to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noalias !33813, !noundef !8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.d
  %.sroa.410.1.i = phi i64 [ undef, %bb.e ], [ undef, %bb.d ], [ undef, %bb.f ], [ %i.at, %bb.k ], [ %i.ar, %bb.j ], [ undef, %bb.h ]
  %.sroa.09.1.i = phi i64 [ 2, %bb.e ], [ 2, %bb.d ], [ 2, %bb.f ], [ 0, %bb.k ], [ 0, %bb.j ], [ 2, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !33812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !33812
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !33805, !noalias !33810, !nonnull !8, !align !1742, !noundef !8
  call void @_RINvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay17extract_precisionRNtNtCs6Po7BT7Nknu_5alloc6string6StringEBc_(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.o), !noalias !33813
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !33805, !noalias !33810, !nonnull !8, !align !1742, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !33812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !33812
  %i.ay = load i128, ptr %i.h, align 16, !range !6563, !noalias !33812, !noundef !8
  %i.az = trunc nuw nsw i128 %i.ay to i64
  switch i64 %i.az, label %default.unreachable [
    i64 0, label %.sink.split
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

default.unreachable:                              ; preds = %bb.p, %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.m
  %.sink15 = phi ptr [ %i.e, %bb.m ], [ %i.f, %bb.l ] ; 2 uses
  %.sink.ph = phi i128 [ 1, %bb.m ], [ 0, %bb.l ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sink15, ptr noundef nonnull align 16 dereferenceable(64) %i.ba, i64 64, i1 false), !noalias !33812
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @_RNvMs_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtBa_15DeltaScanConfig16map_scalar_value(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ax, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(64) %.sink15), !noalias !33813
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.l
  %.sink = phi i128 [ 2, %bb.l ], [ %.sink.ph, %.sink.split ] ; 2 uses
  %switch.i.i = phi i1 [ false, %bb.l ], [ true, %.sink.split ]
  store i128 %.sink, ptr %i.i, align 16, !noalias !33812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !33812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !33812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !33812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !33812
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !33805, !noalias !33810, !nonnull !8, !align !1742, !noundef !8
  invoke void @_RINvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay17extract_precisionRNtNtCs6Po7BT7Nknu_5alloc6string6StringEBc_(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.o)
          to label %bb.p unwind label %bb.o, !noalias !33813

bb.o:                                             ; preds = %bb.r, %bb.q, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br i1 %switch.i.i, label %.sink.split.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i

.sink.split.i.i:                                  ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.v, !noalias !33813

bb.p:                                             ; preds = %bb.n
end_hunk_6
begin_hunk_7_@_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40782
  store i64 %i.i, ptr %0, align 8, !alias.scope !40779, !noalias !40784
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !40779, !noalias !40784
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !40779, !noalias !40784
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.p = shl nuw nsw i64 %i.e, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.d, i64 %i.p, i1 false), !noalias !40779
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !40779, !noalias !40784
  br label %_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 5 uses
  %i.b = alloca [80 x i8], align 16               ; 5 uses
  %i.c = alloca [80 x i8], align 16               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.013.i = alloca [240 x i8], align 16      ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40785)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !40788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40788
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 32025597350190194) %i.i, i1 noundef zeroext false, i64 noundef 16, i64 noundef 288), !noalias !40788
  %i.j = load i64, ptr %i.d, align 8, !range !79, !noalias !40788, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !107, !noalias !40788, !noundef !8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !noalias !40788
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #27, !noalias !40788
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !noalias !40788, !nonnull !8, !noundef !8 ; 2 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40788
  store i64 %i.m, ptr %i.e, align 8, !noalias !40788
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.p, ptr %i.r, align 8, !noalias !40788
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw [288 x i8], ptr %i.h, i64 %i.i
  %i.u = icmp eq i64 %i.m, 0
  br i1 %i.u, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.013.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.013.i, i64 80
  %.sroa.013.160..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.013.i, i64 160
  br label %bb.c

bb.c:                                             ; preds = %bb.m, %.lr.ph.i
  %.sroa.10.054.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.y, %bb.m ]
  %.sroa.012.053.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.aa, %bb.m ] ; 16 uses
  %.sroa.7.052.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ab, %bb.m ] ; 3 uses
  %i.y = add i64 %.sroa.10.054.i, -1              ; 2 uses
  %i.z = icmp eq ptr %.sroa.012.053.i, %i.t
  br i1 %i.z, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

.loopexit.i:                                      ; preds = %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.sink.split.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.053.i, i64 288
  %i.ab = add nuw nsw i64 %.sroa.7.052.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40790)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.053.i, i64 240
  %.val6.i.i = load i64, ptr %i.ac, align 8, !range !242, !alias.scope !40793, !noalias !40794, !noundef !8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.053.i, i64 248
  %.val7.i.i = load i64, ptr %i.ad, align 8, !alias.scope !40793, !noalias !40794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40800)
  %i.ae = load i128, ptr %.sroa.012.053.i, align 16, !range !6563, !alias.scope !40802, !noalias !40803, !noundef !8
  %i.af = trunc nuw nsw i128 %i.ae to i64
  switch i64 %i.af, label %default.unreachable [
    i64 0, label %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.sink.split.i.i
    i64 1, label %bb.e
    i64 2, label %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i
  ]

default.unreachable:                              ; preds = %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit10.i.i, %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  br label %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.sink.split.i.i

_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.sink.split.i.i: ; preds = %bb.e, %bb.d
  %.sink.ph.i.i = phi i128 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.053.i, i64 16
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.v, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ag) #34
          to label %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %.loopexit.i, !noalias !40804

_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.sink.split.i.i, %bb.d
  %.sink.i.i = phi i128 [ 2, %bb.d ], [ %.sink.ph.i.i, %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.sink.split.i.i ]
  %switch.i.i.i = phi i1 [ false, %bb.d ], [ true, %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.sink.split.i.i ]
  store i128 %.sink.i.i, ptr %i.c, align 16, !alias.scope !40797, !noalias !40805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40796
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.053.i, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40809)
  %i.ai = load i128, ptr %i.ah, align 16, !range !6563, !alias.scope !40811, !noalias !40812, !noundef !8
  %i.aj = trunc nuw nsw i128 %i.ai to i64
  switch i64 %i.aj, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit10.i.i
  ]

bb.f:                                             ; preds = %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.053.i, i64 96
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.w, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ak) #34
          to label %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit10.i.i unwind label %bb.h, !noalias !40794

bb.g:                                             ; preds = %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.053.i, i64 96
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.w, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.al) #34
          to label %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit10.i.i unwind label %bb.h, !noalias !40794

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit19.i.i: ; preds = %bb.k, %.sink.split.i17.i.i, %bb.h
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.h ], [ %i.as, %.sink.split.i17.i.i ], [ %i.as, %bb.k ] ; 2 uses
  br i1 %switch.i.i.i, label %.sink.split.i.i.i, label %bb.o

.sink.split.i.i.i:                                ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit19.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.v)
          to label %bb.o unwind label %bb.l, !noalias !40794

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit19.i.i

_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit10.i.i: ; preds = %bb.g, %bb.f, %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sink26.i.i = phi i128 [ 1, %bb.g ], [ 0, %bb.f ], [ 2, %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %switch.i16.i.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  store i128 %.sink26.i.i, ptr %i.b, align 16, !alias.scope !40806, !noalias !40813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40796
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.053.i, i64 160
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40817)
  %i.ao = load i128, ptr %i.an, align 16, !range !6563, !alias.scope !40819, !noalias !40820, !noundef !8
  %i.ap = trunc nuw nsw i128 %i.ao to i64
  switch i64 %i.ap, label %default.unreachable [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.m
  ]

bb.i:                                             ; preds = %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit10.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.053.i, i64 176
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.x, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.aq) #34
          to label %bb.m unwind label %bb.k, !noalias !40794

bb.j:                                             ; preds = %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit10.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.053.i, i64 176
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.x, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ar) #34
          to label %bb.m unwind label %bb.k, !noalias !40794

.sink.split.i17.i.i:                              ; preds = %bb.k
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit19.i.i unwind label %bb.l, !noalias !40794

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %switch.i16.i.i, label %.sink.split.i17.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit19.i.i

bb.l:                                             ; preds = %.sink.split.i17.i.i, %.sink.split.i.i.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40794
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.i, %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit10.i.i
  %.sink27.i.i = phi i128 [ 1, %bb.j ], [ 0, %bb.i ], [ 2, %_RNvXs8_NtCsjhHCjzi9uUI_17datafusion_common5statsINtB5_9PrecisionNtNtB7_6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit10.i.i ]
  store i128 %.sink27.i.i, ptr %i.a, align 16, !alias.scope !40814, !noalias !40821
  %i.au = icmp eq i64 %.val6.i.i, 2
  %spec.select.i.i.i = select i1 %i.au, i64 undef, i64 %.val7.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.053.i, i64 256
  %.val4.i.i = load i64, ptr %i.av, align 16, !range !242, !alias.scope !40793, !noalias !40794, !noundef !8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.053.i, i64 264
  %.val5.i.i = load i64, ptr %i.aw, align 8, !alias.scope !40793, !noalias !40794
  %i.ax = icmp eq i64 %.val4.i.i, 2
  %spec.select.i20.i.i = select i1 %i.ax, i64 undef, i64 %.val5.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.053.i, i64 272
  %.val.i.i = load i64, ptr %i.ay, align 16, !range !242, !alias.scope !40793, !noalias !40794, !noundef !8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.053.i, i64 280
  %.val3.i.i = load i64, ptr %i.az, align 8, !alias.scope !40793, !noalias !40794
  %i.ba = icmp eq i64 %.val.i.i, 2
  %spec.select.i25.i.i = select i1 %i.ba, i64 undef, i64 %.val3.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.013.i, ptr noundef nonnull align 16 dereferenceable(80) %i.c, i64 80, i1 false), !noalias !40788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.013.80..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !40788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.013.160..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !40788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40796
  %i.bb = getelementptr inbounds nuw [288 x i8], ptr %i.p, i64 %.sroa.7.052.i ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.bb, ptr noundef nonnull align 16 dereferenceable(240) %.sroa.013.i, i64 240, i1 false), !noalias !40804
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 240
  store i64 %.val6.i.i, ptr %.sroa.431.0..sroa_idx.i, align 16, !noalias !40804
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 248
  store i64 %spec.select.i.i.i, ptr %.sroa.532.0..sroa_idx.i, align 8, !noalias !40804
  %.sroa.633.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 256
  store i64 %.val4.i.i, ptr %.sroa.633.0..sroa_idx.i, align 16, !noalias !40804
  %.sroa.734.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 264
  store i64 %spec.select.i20.i.i, ptr %.sroa.734.0..sroa_idx.i, align 8, !noalias !40804
  %.sroa.835.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 272
  store i64 %.val.i.i, ptr %.sroa.835.0..sroa_idx.i, align 16, !noalias !40804
  %.sroa.936.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 280
  store i64 %spec.select.i25.i.i, ptr %.sroa.936.0..sroa_idx.i, align 8, !noalias !40804
  %i.bc = icmp eq i64 %i.y, 0
  br i1 %i.bc, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.n:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40804
  unreachable

bb.o:                                             ; preds = %.sink.split.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit19.i.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit19.i.i ], [ %.pn.pn.i.i, %.sink.split.i.i.i ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.052.i, ptr %i.s, align 8, !noalias !40788
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #29
          to label %bb.p unwind label %bb.n, !noalias !40804

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.m, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.i, ptr %i.s, align 8, !noalias !40788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !40785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !40788
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.013.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40822
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 88686269585142076) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104), !noalias !40822
  %i.h = load i64, ptr %i.a, align 8, !range !79, !noalias !40822, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !107, !noalias !40822, !noundef !8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !40822
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27, !noalias !40822
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !40822, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40822
  store i64 %i.k, ptr %i.c, align 8, !noalias !40822
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !40822
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [104 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.d
  %.sroa.10.023.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.012.022.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %i.t = add i64 %.sroa.10.023.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.022.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RNvXs7_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.012.022.i)
          to label %bb.d unwind label %bb.f, !noalias !40826

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 104
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.n, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !40826
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40826
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i, ptr %i.q, align 8, !noalias !40822
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.g unwind label %bb.e, !noalias !40826

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !40822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !40827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40828
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 144115188075855872) %i.g, i1 noundef zeroext false, i64 noundef 16, i64 noundef 64), !noalias !40828
  %i.h = load i64, ptr %i.a, align 8, !range !79, !noalias !40828, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !107, !noalias !40828, !noundef !8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !40828
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27, !noalias !40828
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !40828, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40828
  store i64 %i.k, ptr %i.c, align 8, !noalias !40828
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !40828
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.d
  %.sroa.10.023.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.012.022.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %i.t = add i64 %.sroa.10.023.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.022.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %.sroa.012.022.i)
          to label %bb.d unwind label %bb.f, !noalias !40832

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 64
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.x, ptr noundef nonnull align 16 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !40832
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !40832
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
end_hunk_7
begin_hunk_8_@_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core:bb.a
bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !41206
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27, !noalias !41206, !inline_history !36626
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !41206, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41206
  store i64 %i.k, ptr %i.c, align 8, !noalias !41206
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !41206
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.d
  %.sroa.10.023.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.012.022.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %i.t = add i64 %.sroa.10.023.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.022.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RNvXs9L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.012.022.i)
          to label %bb.d unwind label %bb.f, !noalias !41210, !inline_history !36626

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 72
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !41210
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !41210, !inline_history !36626
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i, ptr %i.q, align 8, !noalias !41206
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.g unwind label %bb.e, !noalias !41210, !inline_history !36626

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !41206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !41211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.d = load i64, ptr %i.a, align 8, !noundef !8
  tail call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.d) #34
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query22XmlNamespaceDefinitionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.d = load i64, ptr %i.a, align 8, !noundef !8
  tail call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query22XmlNamespaceDefinitionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.d) #34
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.5.i.i = alloca [56 x i8], align 8        ; 4 uses
  %i.c = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.016.sroa.0 = alloca [328 x i8], align 8  ; 4 uses
  %.sroa.016.sroa.5 = alloca [56 x i8], align 8   ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !41212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41212
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 23058430092136940) %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 400), !noalias !41212
  %i.i = load i64, ptr %i.a, align 8, !range !79, !noalias !41212, !noundef !8
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !107, !noalias !41212, !noundef !8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !41212
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #27, !noalias !41212
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !41212, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p), !noalias !41212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41212
  store i64 %i.l, ptr %i.d, align 8, !noalias !41212
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !41212
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw [400 x i8], ptr %i.g, i64 %i.h
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.10.035 = phi i64 [ %i.l, %.lr.ph ], [ %i.w, %bb.i ]
  %.sroa.04.034 = phi ptr [ %i.g, %.lr.ph ], [ %i.y, %bb.i ] ; 8 uses
  %.sroa.7.033 = phi i64 [ 0, %.lr.ph ], [ %i.z, %bb.i ] ; 3 uses
  %i.w = add i64 %.sroa.10.035, -1                ; 2 uses
  %i.x = icmp eq ptr %.sroa.04.034, %i.s
  br i1 %i.x, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.034, i64 400
  %i.z = add nuw nsw i64 %.sroa.7.033, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41219), !noalias !41222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41223
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %.sroa.04.034) #34
          to label %.noexc unwind label %.loopexit, !inline_history !41226

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.034, i64 328 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !107, !alias.scope !41227, !noalias !41228, !noundef !8
  %.not.i.i = icmp eq i64 %i.ab, -9223372036854775808
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41223
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41232)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aa)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(328) %i.c) #29
          to label %bb.k unwind label %bb.h, !noalias !41228, !inline_history !41234

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.034, i64 384
  %i.ae = load i32, ptr %i.ad, align 8, !range !13146, !alias.scope !41232, !noalias !41235, !noundef !8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.034, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.af, i64 32, i1 false), !alias.scope !41236, !noalias !41228
  store i32 %i.ae, ptr %i.v, align 8, !alias.scope !41229, !noalias !41237
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.b, align 8, !noalias !41223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx2.i.i, i64 56, i1 false), !noalias !41223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41223
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !41228, !inline_history !41234
  unreachable

bb.i:                                             ; preds = %bb.g, %.noexc
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.g ], [ -9223372036854775808, %.noexc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.016.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.016.sroa.0, ptr noundef nonnull align 8 dereferenceable(328) %i.c, i64 328, i1 false), !noalias !41222
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.016.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.016.sroa.5, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i.i, i64 56, i1 false), !noalias !41222
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41223
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.034, i64 392
  %.val.i1 = load i8, ptr %i.ah, align 8, !range !13398, !alias.scope !41216, !noalias !41238, !noundef !8
  %i.ai = getelementptr i8, ptr %.sroa.04.034, i64 393
  %.val1.i = load i8, ptr %i.ai, align 1, !range !13398, !alias.scope !41216, !noalias !41238, !noundef !8
  %i.aj = getelementptr inbounds nuw [400 x i8], ptr %i.o, i64 %.sroa.7.033 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.aj, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.016.sroa.0, i64 328, i1 false), !noalias !41222
  %.sroa.016.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 328
  store i64 %.sroa.0.0.i.i, ptr %.sroa.016.sroa.4.0..sroa_idx, align 8, !noalias !41222
  %.sroa.016.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.016.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.016.sroa.5, i64 56, i1 false), !noalias !41222
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 392
  store i8 %.val.i1, ptr %.sroa.417.0..sroa_idx, align 8, !noalias !41222
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 393
  store i8 %.val1.i, ptr %.sroa.518.0..sroa_idx, align 1, !noalias !41222
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.016.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.016.sroa.5)
  %i.ak = icmp eq i64 %i.w, 0
  br i1 %i.ak, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.j:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !41222, !inline_history !41239
  unreachable

bb.k:                                             ; preds = %.loopexit, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.033, ptr %i.r, align 8, !noalias !41222
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %bb.l unwind label %bb.j, !noalias !41222, !inline_history !41239

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  store i64 %i.h, ptr %i.r, align 8, !noalias !41212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !41240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !41212
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3CteENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.08 = alloca [240 x i8], align 8          ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.n = load i64, ptr %i.k, align 8, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !41241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41241
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 36028797018963968) %i.n, i1 noundef zeroext false, i64 noundef 8, i64 noundef 256), !noalias !41241
  %i.o = load i64, ptr %i.a, align 8, !range !79, !noalias !41241, !noundef !8
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !107, !noalias !41241, !noundef !8 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.s, align 8, !noalias !41241
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #27, !noalias !41241
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.u = load ptr, ptr %i.s, align 8, !noalias !41241, !nonnull !8, !noundef !8 ; 2 uses
  %i.v = icmp ule i64 %i.n, %i.r
  tail call void @llvm.assume(i1 %i.v), !noalias !41241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41241
  store i64 %i.r, ptr %i.j, align 8, !noalias !41241
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.u, ptr %i.w, align 8, !noalias !41241
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw [256 x i8], ptr %i.m, i64 %i.n
  %i.z = icmp eq i64 %i.r, 0
  br i1 %i.z, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3CteNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.08.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.08, i64 88
  %.sroa.08.152..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.08, i64 152
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.10.043 = phi i64 [ %i.r, %.lr.ph ], [ %i.ag, %bb.p ]
  %.sroa.07.042 = phi ptr [ %i.m, %.lr.ph ], [ %i.ai, %bb.p ] ; 13 uses
  %.sroa.7.041 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %bb.p ] ; 3 uses
  %i.ag = add i64 %.sroa.10.043, -1               ; 2 uses
  %i.ah = icmp eq ptr %.sroa.07.042, %i.y
  br i1 %i.ah, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3CteNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.042, i64 256
  %i.aj = add nuw nsw i64 %.sroa.7.041, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41245)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !41248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !41250
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41257)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.07.042)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.07.042, i64 56
  %i.al = load i32, ptr %i.ak, align 8, !range !13146, !alias.scope !41257, !noalias !41254, !noundef !8
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.07.042, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.am, i64 32, i1 false), !alias.scope !41259
  store i32 %i.al, ptr %i.ab, align 8, !alias.scope !41254, !noalias !41257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !41250
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.07.042, i64 64
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an)
          to label %_RNvXsa5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10TableAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.e, !noalias !41260, !inline_history !41261

bb.e:                                             ; preds = %.noexc
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %bb.r unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !41260, !inline_history !41261
  unreachable

_RNvXsa5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10TableAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !41262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !41262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !41250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !41250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !41248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41263), !noalias !41266
  %i.aq = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryE13new_uninit_inCs14kWLkQVSKO_14deltalake_core()
          to label %.noexc.i unwind label %bb.h, !noalias !41267, !inline_history !41268 ; 4 uses

.noexc.i:                                         ; preds = %_RNvXsa5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10TableAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.07.042, i64 240
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !41269, !noalias !41267, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41270
  invoke fastcc void @_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.as) #34
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !41273, !inline_history !41274

bb.g:                                             ; preds = %.noexc.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef 1400, i64 noundef 8) #31, !noalias !41273, !inline_history !41268
  br label %.body.i

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.aq, ptr noundef nonnull align 8 dereferenceable(1400) %i.c, i64 1400, i1 false), !noalias !41275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41270
  store ptr %i.aq, ptr %i.h, align 8, !noalias !41248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !41248
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.07.042, i64 88 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !107, !alias.scope !41245, !noalias !41267, !noundef !8
  %.not.i1 = icmp eq i64 %i.av, -9223372036854775808
  br i1 %.not.i1, label %bb.j, label %bb.i

.body.i:                                          ; preds = %bb.g, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.aw, %bb.h ], [ %i.at, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10TableAliasECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.i) #29
          to label %bb.r unwind label %bb.o, !noalias !41267, !inline_history !41276

bb.h:                                             ; preds = %_RNvXsa5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10TableAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !41248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41277), !noalias !41266
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41280), !noalias !41266
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.au)
          to label %_RNvXs3T_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.l, !noalias !41267, !inline_history !41276

_RNvXs3T_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.07.042, i64 144
  %i.ay = load i32, ptr %i.ax, align 8, !range !13146, !alias.scope !41282, !noalias !41283, !noundef !8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.07.042, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.az, i64 32, i1 false), !alias.scope !41284, !noalias !41267
  store i32 %i.ay, ptr %i.ae, align 8, !alias.scope !41277, !noalias !41285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !41248
end_hunk_8
begin_hunk_9_@_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core:bb.a
bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !41355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !41355
  br label %bb.n

.body.i.i:                                        ; preds = %.body47.i.i, %bb.ba, %bb.az, %bb.ay, %bb.al, %bb.ak, %bb.aj, %bb.m
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %.body47.i.i ], [ %i.bm, %bb.m ], [ %i.iy, %bb.aj ], [ %i.iy, %bb.al ], [ %i.iy, %bb.ak ], [ %i.ks, %bb.ba ], [ %i.ks, %bb.az ], [ %i.ks, %bb.ay ] ; 2 uses
  %i.bk = load i64, ptr %i.o, align 8, !range !107, !alias.scope !41366, !noalias !41355, !noundef !8
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.body.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.cy, !noalias !41355

bb.m:                                             ; preds = %bb.at, %bb.ae
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 360
  %i.bo = load <2 x i64>, ptr %i.bn, align 8, !noalias !41355
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 344
  %i.bq = load <2 x i32>, ptr %i.bp, align 8, !noalias !41355
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 376
  %i.bs = load <2 x i64>, ptr %i.br, align 8, !noalias !41355
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 392
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !41355, !noundef !8
  %i.bv = load i64, ptr %.sroa.013.0212.i, align 8, !range !79, !noalias !41355, !noundef !8
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noalias !41355, !noundef !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.5.0.i.i = phi i64 [ %i.by, %bb.o ], [ undef, %bb.n ]
  %.sroa.0.0.i12.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !79, !noalias !41355, !noundef !8
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !41355, !noundef !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.52.0.i.i = phi i64 [ %i.cd, %bb.q ], [ undef, %bb.p ]
  %.sroa.01.0.i.i = phi i64 [ 1, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !41355
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 96
  %i.cf = load i64, ptr %i.ce, align 8, !range !506, !noalias !41355, !noundef !8 ; 3 uses
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
  %i.ci = load i8, ptr %i.ch, align 4, !range !13398, !alias.scope !41369, !noalias !41372, !noundef !8
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 141
  %i.ck = load i8, ptr %i.cj, align 1, !range !13398, !alias.scope !41369, !noalias !41372, !noundef !8
  %i.cl = load i64, ptr %i.cg, align 8, !range !79, !alias.scope !41369, !noalias !41372, !noundef !8 ; 2 uses
  %i.cm = trunc nuw i64 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !41369, !noalias !41372
  %.sroa.5.0.i.i.i.i = select i1 %i.cm, i64 %i.co, i64 undef
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.cq = load i64, ptr %i.cp, align 8, !range !79, !alias.scope !41369, !noalias !41372, !noundef !8 ; 2 uses
  %i.cr = trunc nuw i64 %i.cq to i1
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !41369, !noalias !41372
  %.sroa.54.0.i.i.i.i = select i1 %i.cr, i64 %i.ct, i64 undef
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.cv = load i8, ptr %i.cu, align 8, !range !5519, !alias.scope !41369, !noalias !41372, !noundef !8
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 137
  %i.cx = load i8, ptr %i.cw, align 1, !range !5519, !alias.scope !41369, !noalias !41372, !noundef !8
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 138
  %i.cz = load i8, ptr %i.cy, align 2, !range !5519, !alias.scope !41369, !noalias !41372, !noundef !8
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 139
  %i.db = load i8, ptr %i.da, align 1, !range !5519, !alias.scope !41369, !noalias !41372, !noundef !8
  br label %bb.bi

bb.u:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.dd = load i32, ptr %i.dc, align 8, !range !19237, !alias.scope !41376, !noalias !41379, !noundef !8 ; 2 uses
  %i.de = trunc nuw i32 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.dg = load i32, ptr %i.df, align 4, !alias.scope !41376, !noalias !41379
  %.sroa.5.0.i1.i.i.i = select i1 %i.de, i32 %i.dg, i32 undef ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.di = load i32, ptr %i.dh, align 8, !range !19237, !alias.scope !41376, !noalias !41379, !noundef !8 ; 2 uses
  %i.dj = trunc nuw i32 %i.di to i1
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 148
  %i.dl = load i32, ptr %i.dk, align 4, !alias.scope !41376, !noalias !41379
  %.sroa.52.0.i.i.i.i = select i1 %i.dj, i32 %i.dl, i32 undef
  %i.dm = load i64, ptr %i.cg, align 8, !range !79, !alias.scope !41376, !noalias !41379, !noundef !8 ; 2 uses
  %i.dn = trunc nuw i64 %i.dm to i1
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !41376, !noalias !41379
  %.sroa.54.0.i2.i.i.i = select i1 %i.dn, i64 %i.dp, i64 undef
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.dr = load i64, ptr %i.dq, align 8, !range !79, !alias.scope !41376, !noalias !41379, !noundef !8 ; 2 uses
  %i.ds = trunc nuw i64 %i.dr to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !41376, !noalias !41379
  %.sroa.56.0.i.i.i.i = select i1 %i.ds, i64 %i.du, i64 undef
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.dw = load i8, ptr %i.dv, align 8, !range !5519, !alias.scope !41376, !noalias !41379, !noundef !8
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 153
  %i.dy = load i8, ptr %i.dx, align 1, !range !5519, !alias.scope !41376, !noalias !41379, !noundef !8
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 154
  %i.ea = load i8, ptr %i.dz, align 2, !range !5519, !alias.scope !41376, !noalias !41379, !noundef !8
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 155
  %i.ec = load i8, ptr %i.eb, align 1, !range !5519, !alias.scope !41376, !noalias !41379, !noundef !8
  %.sroa.37.sroa.0.0.extract.trunc180.i.i = trunc nuw nsw i32 %i.dd to i8
  %.sroa.46.sroa.0.0.extract.trunc149.i.i = trunc i32 %.sroa.5.0.i1.i.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift159.i.i = lshr i32 %.sroa.5.0.i1.i.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc160.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift159.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift171.i.i = and i32 %.sroa.5.0.i1.i.i.i, -65536
  br label %bb.bi

bb.v:                                             ; preds = %bb.s
  %i.ed = load i64, ptr %i.cg, align 8, !range !79, !alias.scope !41381, !noalias !41384, !noundef !8 ; 2 uses
  %i.ee = trunc nuw i64 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !41381, !noalias !41384
  %.sroa.5.0.i3.i.i.i = select i1 %i.ee, i64 %i.eg, i64 undef
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.ei = load i64, ptr %i.eh, align 8, !range !79, !alias.scope !41381, !noalias !41384, !noundef !8 ; 2 uses
  %i.ej = trunc nuw i64 %i.ei to i1
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !41381, !noalias !41384
  %.sroa.52.0.i4.i.i.i = select i1 %i.ej, i64 %i.el, i64 undef
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136 ; 2 uses
  %i.en = load i32, ptr %i.em, align 8, !noalias !41355 ; 4 uses
  %.sroa_idx68.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.eo = load i32, ptr %.sroa_idx68.i.i, align 4, !noalias !41355 ; 3 uses
  %i.ep = load i64, ptr %i.em, align 8, !range !79, !alias.scope !41381, !noalias !41384, !noundef !8
  %i.eq = trunc nuw i64 %i.ep to i1
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !41381, !noalias !41384
  %.sroa.54.0.i5.i.i.i = select i1 %i.eq, i64 %i.es, i64 undef ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.eu = load i64, ptr %i.et, align 8, !range !79, !alias.scope !41381, !noalias !41384, !noundef !8 ; 2 uses
  %i.ev = trunc nuw i64 %i.eu to i1
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !41381, !noalias !41384
  %.sroa.56.0.i6.i.i.i = select i1 %i.ev, i64 %i.ex, i64 undef
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.ez = load <4 x i8>, ptr %i.ey, align 8, !alias.scope !41381, !noalias !41384
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
  %i.fb = load i32, ptr %i.fa, align 8, !range !19237, !alias.scope !41386, !noalias !41389, !noundef !8
  %i.fc = trunc nuw i32 %i.fb to i1
  br i1 %i.fc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %.sroa.5.i.i.sroa.0.0.copyload.i.i = load i32, ptr %i.fd, align 4, !noalias !41391
  %.sroa.5.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %.sroa.5.i.i.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.5.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !41391
  %.sroa.5.i.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 148
  %.sroa.5.i.i.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.i.i.sroa.5.0..sroa_idx.i.i, align 4, !noalias !41391
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.5.i.i.sroa.5.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.5.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.4.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.4.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.0.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.0.0.copyload.i.i, %bb.x ], [ undef, %bb.w ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i8 [ 1, %bb.x ], [ 0, %bb.w ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.ff = load i32, ptr %i.fe, align 8, !range !19237, !alias.scope !41386, !noalias !41389, !noundef !8
  %i.fg = trunc nuw i32 %i.ff to i1
  br i1 %i.fg, label %bb.z, label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 156
  %.sroa.52.i.i.sroa.0.0.copyload.i.i = load i32, ptr %i.fh, align 4, !noalias !41391
  %.sroa.52.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %.sroa.52.i.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.52.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !41391
  br label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.sroa.52.i.i.sroa.4.0.i.i = phi i64 [ %.sroa.52.i.i.sroa.4.0.copyload.i.i, %bb.z ], [ undef, %bb.y ]
  %.sroa.52.i.i.sroa.0.0.i.i = phi i32 [ %.sroa.52.i.i.sroa.0.0.copyload.i.i, %bb.z ], [ undef, %bb.y ]
  %.sroa.01.0.i.i.i.i = phi i8 [ 1, %bb.z ], [ 0, %bb.y ]
  %i.fi = load i64, ptr %i.cg, align 8, !range !79, !alias.scope !41386, !noalias !41389, !noundef !8 ; 2 uses
  %i.fj = trunc nuw i64 %i.fi to i1
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !41386, !noalias !41389
  %.sroa.54.0.i7.i.i.i = select i1 %i.fj, i64 %i.fl, i64 undef
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.fn = load i64, ptr %i.fm, align 8, !range !79, !alias.scope !41386, !noalias !41389, !noundef !8 ; 2 uses
  %i.fo = trunc nuw i64 %i.fn to i1
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !41386, !noalias !41389
  %.sroa.56.0.i8.i.i.i = select i1 %i.fo, i64 %i.fq, i64 undef
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.fs = load <4 x i8>, ptr %i.fr, align 8, !alias.scope !41386, !noalias !41389
  %.sroa.46.sroa.0.0.extract.trunc150.i.i = trunc i32 %.sroa.5.i.i.sroa.0.0.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift161.i.i = lshr i32 %.sroa.5.i.i.sroa.0.0.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc162.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift161.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift173.i.i = and i32 %.sroa.5.i.i.sroa.0.0.i.i, -65536
  br label %bb.bi

bb.aa:                                            ; preds = %bb.s
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.fu = load i32, ptr %i.ft, align 8, !range !19237, !alias.scope !41392, !noalias !41395, !noundef !8 ; 2 uses
  %i.fv = trunc nuw i32 %i.fu to i1
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.fx = load i32, ptr %i.fw, align 4, !alias.scope !41392, !noalias !41395
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.fz = load i32, ptr %i.fy, align 8, !range !19237, !alias.scope !41392, !noalias !41395, !noundef !8 ; 2 uses
  %i.ga = trunc nuw i32 %i.fz to i1
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 148
  %i.gc = load i32, ptr %i.gb, align 4, !alias.scope !41392, !noalias !41395
  %i.gd = load i64, ptr %i.cg, align 8, !range !79, !alias.scope !41392, !noalias !41395, !noundef !8 ; 2 uses
  %i.ge = trunc nuw i64 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !41392, !noalias !41395
  %.sroa.54.0.i11.i.i.i = select i1 %i.ge, i64 %i.gg, i64 undef
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.gi = load i64, ptr %i.gh, align 8, !range !79, !alias.scope !41392, !noalias !41395, !noundef !8 ; 2 uses
  %i.gj = trunc nuw i64 %i.gi to i1
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !41392, !noalias !41395
  %.sroa.56.0.i12.i.i.i = select i1 %i.gj, i64 %i.gl, i64 undef
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.gn = load i8, ptr %i.gm, align 8, !range !5519, !alias.scope !41392, !noalias !41395, !noundef !8
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 153
  %i.gp = load i8, ptr %i.go, align 1, !range !5519, !alias.scope !41392, !noalias !41395, !noundef !8
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 154
  %i.gr = load i8, ptr %i.gq, align 2, !range !5519, !alias.scope !41392, !noalias !41395, !noundef !8
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 155
  %i.gt = load i8, ptr %i.gs, align 1, !range !5519, !alias.scope !41392, !noalias !41395, !noundef !8
  %.sroa.37.sroa.0.0.extract.trunc178.i.i = trunc nuw nsw i32 %i.fu to i8
  %i.gu = select i1 %i.fv, i32 %i.fx, i32 undef   ; 3 uses
  %.sroa.46.sroa.0.0.extract.trunc146.i.i = trunc i32 %i.gu to i8
  %.sroa.46.sroa.11.0.extract.shift153.i.i = lshr i32 %i.gu, 8
  %.sroa.46.sroa.11.0.extract.trunc154.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift153.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift165.i.i = and i32 %i.gu, -65536
  %i.gv = select i1 %i.ga, i32 %i.gc, i32 undef
  br label %bb.bi

bb.ab:                                            ; preds = %bb.s
  %i.gw = load i64, ptr %i.cg, align 8, !range !79, !alias.scope !41397, !noalias !41400, !noundef !8 ; 2 uses
  %i.gx = trunc nuw i64 %i.gw to i1
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !41397, !noalias !41400
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.hb = load i64, ptr %i.ha, align 8, !range !79, !alias.scope !41397, !noalias !41400, !noundef !8 ; 2 uses
  %i.hc = trunc nuw i64 %i.hb to i1
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.he = load i64, ptr %i.hd, align 8, !alias.scope !41397, !noalias !41400
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 8, !noalias !41355 ; 4 uses
  %.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.hh = load i32, ptr %.sroa_idx.i.i, align 4, !noalias !41355 ; 3 uses
  %i.hi = load i64, ptr %i.hf, align 8, !range !79, !alias.scope !41397, !noalias !41400, !noundef !8
  %i.hj = trunc nuw i64 %i.hi to i1
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !41397, !noalias !41400
  %.sroa.54.0.i15.i.i.i = select i1 %i.hj, i64 %i.hl, i64 undef ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.hn = load i64, ptr %i.hm, align 8, !range !79, !alias.scope !41397, !noalias !41400, !noundef !8 ; 2 uses
  %i.ho = trunc nuw i64 %i.hn to i1
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !41397, !noalias !41400
  %.sroa.56.0.i16.i.i.i = select i1 %i.ho, i64 %i.hq, i64 undef
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.hs = load <4 x i8>, ptr %i.hr, align 8, !alias.scope !41397, !noalias !41400
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !41391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !41402
  %i.hv = load i64, ptr %i.cg, align 8, !range !79, !noalias !41402, !noundef !8
  %i.hw = trunc nuw i64 %i.hv to i1               ; 2 uses
  br i1 %i.hw, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !41405, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i.i.i, label %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !41408, !nonnull !8, !noundef !8
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !41405, !noundef !8
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.ie = load i64, ptr %i.id, align 8, !noalias !41405, !noundef !8
  invoke void %i.hz(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %i.ia, ptr noundef %i.ic, i64 noundef %i.ie)
          to label %.noexc42.i.i unwind label %bb.m, !noalias !41355, !inline_history !41409

.noexc42.i.i:                                     ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8, !noalias !41402
  br label %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc42.i.i, %bb.ad
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i, %.noexc42.i.i ], [ null, %bb.ad ] ; 3 uses
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.al, align 8, !noalias !41402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !41402
  %i.if = ptrtoint ptr %.sroa.0.0.i.i.i.i.i to i64
  br label %bb.af

bb.af:                                            ; preds = %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, %bb.ac
  %.sroa.19.8.copyload72.i.i = phi i64 [ %i.if, %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ]
  %.sroa.11.8.copyload70.i.i = phi i64 [ 1, %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %bb.ac ] ; 2 uses
  %i.ig = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ] ; 2 uses
  store i64 %.sroa.11.8.copyload70.i.i, ptr %i.j, align 8, !noalias !41402
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.ii = load i64, ptr %i.ih, align 8, !range !79, !noalias !41402, !noundef !8
  %i.ij = trunc nuw i64 %i.ii to i1
  br i1 %i.ij, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !41402
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !41410, !noundef !8 ; 2 uses
  %.not.i6.i.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i6.i.i.i.i, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.im = load ptr, ptr %i.il, align 8, !noalias !41413, !nonnull !8, !noundef !8
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 176
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !41410, !noundef !8
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.ir = load i64, ptr %i.iq, align 8, !noalias !41410, !noundef !8
  invoke void %i.im(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.in, ptr noundef %i.ip, i64 noundef %i.ir)
          to label %.noexc.i.i.i.i unwind label %bb.aj, !noalias !41414, !inline_history !41415

.noexc.i.i.i.i:                                   ; preds = %bb.ah
  %.sroa.0.0.copyload.i7.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !41410
  %i.is = ptrtoint ptr %.sroa.0.0.copyload.i7.i.i.i.i to i64
  %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.pre.i.i = load i64, ptr %.phi.trans.insert241.i.i, align 8, !noalias !41391
  %i.it = load <4 x i8>, ptr %.sroa.5.sroa.4.i.i.sroa.4.0..sroa_idx.phi.trans.insert.i.i, align 8, !noalias !41391
  br label %bb.am

bb.ai:                                            ; preds = %bb.am, %bb.af
  %.sroa.5.sroa.4.i.i.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.i.i, %bb.am ], [ undef, %bb.af ]
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.i8.i.i.i.i, %bb.am ], [ undef, %bb.af ] ; 5 uses
  %.sroa.0.0.i17.i.i.i = phi i32 [ 1, %bb.am ], [ 0, %bb.af ]
  %i.iu = phi <4 x i8> [ %i.je, %bb.am ], [ undef, %bb.af ]
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 184
  %i.iw = load i64, ptr %i.iv, align 8, !range !79, !noalias !41402, !noundef !8
  %i.ix = trunc nuw i64 %i.iw to i1
  br i1 %i.ix, label %bb.an, label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41416)
  br i1 %i.hw, label %bb.ak, label %.body.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !41419)
  call void @llvm.experimental.noalias.scope.decl(metadata !41422)
  %i.iz = icmp eq ptr %i.ig, null
  br i1 %i.iz, label %.body.i.i, label %bb.al

end_hunk_9
begin_hunk_10_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core:bb.a
bb.c:                                             ; preds = %.lr.ph3
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBM_5value11HeaderValueEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBL_5value11HeaderValueEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBM_5value11HeaderValueEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBL_5value11HeaderValueEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBM_5value11HeaderValueEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBL_5value11HeaderValueEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.0.0.i14 = phi i64 [ %i.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBL_5value11HeaderValueEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.0.i14 ; 12 uses
  %i.h = add i64 %.sroa.0.0.i14, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44349)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44355)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !44358, !noundef !8 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44370)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !noalias !44373, !nonnull !8, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !44374, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !44374, !noundef !8
  invoke void %i.m(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.p, i64 noundef %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.c, !inline_history !2689

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44381)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !44384, !nonnull !8, !align !1742, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !44385, !nonnull !8, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !44384, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !44384, !noundef !8
  invoke void %i.w(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %.body.i unwind label %bb.d, !inline_history !2700

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.b, %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44392)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !44395, !nonnull !8, !align !1742, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !44396, !nonnull !8, !noundef !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !44395, !noundef !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !44395, !noundef !8
  invoke void %i.af(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ai, i64 noundef %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBL_5value11HeaderValueEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.f, !inline_history !44397

bb.d:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %.lr.ph16
  %i.am = add i64 %.sroa.0.1.i15, 1               ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.d
  br i1 %i.an, label %._crit_edge, label %.lr.ph16

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ao, %bb.f ], [ %i.s, %bb.c ]
  %i.ap = icmp eq i64 %i.h, %i.d
  br i1 %i.ap, label %._crit_edge, label %.lr.ph16

.lr.ph16:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i15 = phi i64 [ %i.am, %bb.e ], [ %i.h, %.body.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.1.i15
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBL_5value11HeaderValueEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.aq) #29
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.g:                                             ; preds = %.lr.ph16
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBM_5value11HeaderValueEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBL_5value11HeaderValueEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultIBw_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB2E_6errors15DeltaTableErrorEEENtNtNtB1V_3ops4drop4Drop4dropB2E_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB2T_6errors15DeltaTableErrorEEEB2T_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB2T_6errors15DeltaTableErrorEEEB2T_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB2S_6errors15DeltaTableErrorEEEB2S_(ptr noalias noundef align 16 dereferenceable(112) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB2S_6errors15DeltaTableErrorEEEB2S_(ptr noalias noundef align 16 dereferenceable(112) %i.m) #29
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB2T_6errors15DeltaTableErrorEEEB2T_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_3pin3PinINtNtB7_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1R_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB1V_6marker4SendEL_EEB4T_EEENtNtNtB1V_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1T_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4V_EEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1S_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4U_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.0.08.i = phi i64 [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1S_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4U_EEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %.sroa.0.08.i ; 4 uses
  %i.g = add nuw i64 %.sroa.0.08.i, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44401)
  %i.h = load i64, ptr %i.f, align 16, !range !2967, !alias.scope !44404, !noundef !8
  %i.i = icmp eq i64 %i.h, -9223372036854775743
  br i1 %i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !44404 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i.i.i = load ptr, ptr %i.k, align 16, !alias.scope !44404, !nonnull !8, !align !1742, !noundef !8 ; 5 uses
  %i.l = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !8, !noalias !44407 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.l(ptr noundef nonnull %.val.i.i.i)
          to label %bb.d unwind label %bb.f, !noalias !44407

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !83, !invariant.load !8, !noalias !44407 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1S_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4U_EEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !129, !invariant.load !8, !noalias !44407
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #31, !noalias !44407
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1S_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4U_EEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !83, !invariant.load !8, !noalias !44407 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.body.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !129, !invariant.load !8, !noalias !44407
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #31, !noalias !44407
  br label %.body.i

bb.h:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1S_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4U_EEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1S_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4U_EEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.h, %bb.e, %bb.d
  %i.x = icmp eq i64 %i.g, %i.d
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1T_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4V_EEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph
  %i.y = add i64 %.sroa.0.1.i13, 1                ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.d
  br i1 %i.z, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.g, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.r, %bb.g ], [ %i.r, %bb.f ]
  %i.ab = icmp eq i64 %i.g, %i.d
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.i
  %.sroa.0.1.i13 = phi i64 [ %i.y, %bb.i ], [ %i.g, %.body.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %.sroa.0.1.i13
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1S_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4U_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.ac) #29
          to label %bb.i unwind label %bb.k

._crit_edge:                                      ; preds = %bb.i, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.k:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1T_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4V_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1S_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4U_EEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEENtNtNtB1V_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.0.011.i = phi i64 [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.011.i ; 3 uses
  %i.g = add nuw i64 %.sroa.0.011.i, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44411)
  %i.h = load i64, ptr %i.f, align 8, !range !79, !alias.scope !44414, !noundef !8
  %i.i = icmp eq i64 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44417)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44423)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !44426, !nonnull !8, !noundef !8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !44427
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #30
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j) #29
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.c, %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h

bb.f:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.q = icmp eq i64 %i.g, %i.d
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph
  %i.r = add i64 %.sroa.0.1.i22, 1                ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.d
  br i1 %i.s, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.o, %bb.d ]
  %i.u = icmp eq i64 %i.g, %i.d
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i22 = phi i64 [ %i.r, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.1.i22
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.v) #29
          to label %bb.g unwind label %bb.i

._crit_edge:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.i:                                             ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.0.08.i = phi i64 [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %.sroa.0.08.i ; 6 uses
  %i.g = add nuw i64 %.sroa.0.08.i, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44431)
  %i.h = load i64, ptr %i.f, align 8, !range !3072, !alias.scope !44434, !noundef !8
  %i.i = icmp eq i64 %i.h, -9223372036854775790
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44440)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !44443, !nonnull !8, !align !1742, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !noalias !44444, !nonnull !8, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !44443, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !44443, !noundef !8
  invoke void %i.m(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.p, i64 noundef %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e, !inline_history !44445

bb.c:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c, %bb.b
  %i.s = icmp eq i64 %i.g, %i.d
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph
  %i.t = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.d
  br i1 %i.u, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = icmp eq i64 %i.g, %i.d
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.d
  %.sroa.0.1.i6 = phi i64 [ %i.t, %bb.d ], [ %i.g, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(80) %i.x) #29
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.v

bb.f:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.0.08.i = phi i64 [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %.sroa.0.08.i ; 6 uses
  %i.g = add nuw i64 %.sroa.0.08.i, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44449)
  %i.h = load i64, ptr %i.f, align 16, !range !2967, !alias.scope !44452, !noundef !8
  %i.i = icmp eq i64 %i.h, -9223372036854775743
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44458)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !44461, !nonnull !8, !align !1742, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !noalias !44462, !nonnull !8, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load ptr, ptr %i.o, align 16, !alias.scope !44461, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !44461, !noundef !8
  invoke void %i.m(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.p, i64 noundef %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e, !inline_history !44463

bb.c:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c, %bb.b
  %i.s = icmp eq i64 %i.g, %i.d
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph
  %i.t = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.d
  br i1 %i.u, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = icmp eq i64 %i.g, %i.d
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.d
  %.sroa.0.1.i6 = phi i64 [ %i.t, %bb.d ], [ %i.g, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.x) #29
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.v

bb.f:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2i_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.0.08.i = phi i64 [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %.sroa.0.08.i ; 3 uses
  %i.g = add nuw i64 %.sroa.0.08.i, 1             ; 4 uses
  %i.h = load i64, ptr %i.f, align 8, !range !3072, !alias.scope !44464, !noundef !8
  %i.i = icmp eq i64 %i.h, -9223372036854775790
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c, %bb.b
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2i_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph
  %i.l = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.d
  br i1 %i.m, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.g, %i.d
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.d
  %.sroa.0.1.i6 = phi i64 [ %i.l, %bb.d ], [ %i.g, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(80) %i.p) #29
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2i_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEENtNtBK_4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit7.i unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit7.i._crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENtNtNtB1H_3ops4drop4Drop4dropB2j_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB25_.exit, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB24_.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB25_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB24_.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB24_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEENtNtNtB1a_3ops4drop4Drop4dropB1M_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB24_.exit.i unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB24_.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB24_.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB24_.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB24_.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB24_.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEENtNtNtB1a_3ops4drop4Drop4dropB1M_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB24_.exit7.i unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB24_.exit7.i._crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB24_.exit7.i, %bb.b
end_hunk_10
begin_hunk_11_@_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8MetadataENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core:bb.a

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8MetadataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(256) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8MetadataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(256) %i.m) #29
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8MetadataECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.010.i ; 4 uses
  %i.g = add nuw i64 %.sroa.0.010.i, 1            ; 4 uses
  %i.h = load i64, ptr %i.f, align 8, !range !107, !alias.scope !44883, !noundef !8
  %i.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !107, !alias.scope !44890, !noundef !8
  %i.m = icmp eq i64 %i.l, -9223372036854775808
  br i1 %i.m, label %.body.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.b, %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !107, !alias.scope !44893, !noundef !8
  %i.p = icmp eq i64 %i.o, -9223372036854775808
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.r = icmp eq i64 %i.g, %i.d
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph
  %i.s = add i64 %.sroa.0.1.i22, 1                ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.d
  br i1 %i.t, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.d, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
  %i.v = icmp eq i64 %i.g, %i.d
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i22 = phi i64 [ %i.s, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.1.i22
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.w) #29
          to label %bb.g unwind label %bb.i

._crit_edge:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.i:                                             ; preds = %.lr.ph
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [320 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(320) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [320 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(320) %i.m) #29
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.0.08.i = phi i64 [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.08.i ; 3 uses
  %i.g = add nuw i64 %.sroa.0.08.i, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44896)
  %i.h = load i128, ptr %i.f, align 16, !range !7154, !alias.scope !44899, !noundef !8
  %i.i = icmp eq i128 %i.h, 50
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44905)
  %i.k = load ptr, ptr %i.j, align 16, !alias.scope !44908, !nonnull !8, !noundef !8
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !44909
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #30
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.g, %i.d
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.e
  %.sroa.0.1.i6 = phi i64 [ %i.o, %bb.e ], [ %i.g, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.s) #29
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.q

bb.g:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.0.0.i13 = phi i64 [ %i.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %.sroa.0.0.i13 ; 3 uses
  %i.h = add i64 %.sroa.0.0.i13, 1                ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.g)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.j) #29
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %.lr.ph15
  %i.m = add i64 %.sroa.0.1.i14, 1                ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.d
  br i1 %i.n, label %._crit_edge, label %.lr.ph15

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.i, %bb.b ]
  %i.p = icmp eq i64 %i.h, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i14 = phi i64 [ %i.m, %bb.e ], [ %i.h, %.body.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %i.q) #29
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.g:                                             ; preds = %.lr.ph15
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature13TypeSignatureENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature13TypeSignatureECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature13TypeSignatureECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature13TypeSignatureECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !44910

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature13TypeSignatureECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.m) #29
          to label %bb.c unwind label %bb.e, !inline_history !44910

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !inline_history !44910
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature13TypeSignatureECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature18TypeSignatureClassENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature18TypeSignatureClassECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature18TypeSignatureClassECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature18TypeSignatureClassECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw i64 %.sroa.0.09.i, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44911)
  %i.h = load i64, ptr %i.f, align 8, !range !7202, !alias.scope !44914, !noundef !8
  %i.i = icmp eq i64 %i.h, 5
  br i1 %i.i, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature18TypeSignatureClassECs14kWLkQVSKO_14deltalake_core.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44920)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !44923, !nonnull !8, !noundef !8
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !44924
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature18TypeSignatureClassECs14kWLkQVSKO_14deltalake_core.exit.i

bb.c:                                             ; preds = %bb.b
end_hunk_11
