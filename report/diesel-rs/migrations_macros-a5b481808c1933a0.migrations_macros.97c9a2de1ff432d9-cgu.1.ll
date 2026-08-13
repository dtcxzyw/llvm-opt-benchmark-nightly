inline.NumInlined: 163
inline.NumDeleted: 100
begin_hunk_0_@_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCsa9b9a3U8I3h_20migrations_internals22migrations_directories0ENtB1m_8DirEntryINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB1o_2io5error5ErrorENCINvXso_B3d_IB3b_INtNtCs40k4W9msRzi_5alloc3vec3VecB2V_EB3X_EINtNtNtB4_6traits7collect12FromIteratorIB3b_B2V_B3X_EE9from_iterBQ_E0B4F_ECsd1XE8irAZDx_17migrations_macros:bb.a
bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i = load ptr, ptr %i.k, align 8, !alias.scope !140, !nonnull !4, !noundef !4
  %i.l = mul nuw i64 %.val2.i, 40
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !141
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEECsd1XE8irAZDx_17migrations_macros.exit

bb.g:                                             ; preds = %bb.d
  %.val.i = load i64, ptr %i.b, align 8, !range !5, !alias.scope !135, !noundef !4 ; 2 uses
  %i.m = icmp eq i64 %.val.i, 0
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsgczF5crJ4sT_3std2fs8DirEntryEECsd1XE8irAZDx_17migrations_macros.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load ptr, ptr %i.n, align 8, !alias.scope !140, !nonnull !4, !noundef !4
  %i.o = mul nuw i64 %.val.i, 40
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !144
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsgczF5crJ4sT_3std2fs8DirEntryEECsd1XE8irAZDx_17migrations_macros.exit

bb.i:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEECsd1XE8irAZDx_17migrations_macros.exit: ; preds = %bb.e, %bb.f, %bb.j, %.body
  %.pn12 = phi { ptr, i32 } [ %i.e, %.body ], [ %i.e, %bb.j ], [ %i.i, %bb.f ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %.pn12

bb.j:                                             ; preds = %.body
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEECsd1XE8irAZDx_17migrations_macros.exit unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyNtNtB10_4path7PathBufNvMsA_BY_BW_4pathE0ECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef range(i64 0, 230584300921369396) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.z ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cb, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyNtNtB17_4path7PathBufNvMsA_B15_B13_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit
  %.sroa.021.0 = phi i8 [ %i.av, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyNtNtB17_4path7PathBufNvMsA_B15_B13_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyNtNtB17_4path7PathBufNvMsA_B15_B13_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyNtNtB16_4path7PathBufNvMsA_B14_B12_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtCsgczF5crJ4sT_3std2fs8DirEntry7reverseCsd1XE8irAZDx_17migrations_macros.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSNtNtCsgczF5crJ4sT_3std2fs8DirEntry11sort_by_keyNtNtBC_4path7PathBufNvMsA_BA_By_4pathE0Csd1XE8irAZDx_17migrations_macros(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n), !noalias !147 ; 2 uses
  %.not28.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader.i, label %.preheader17.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtCsgczF5crJ4sT_3std2fs8DirEntry7reverseCsd1XE8irAZDx_17migrations_macros.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %.sroa.01.0.i19.i = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader17.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i19.i ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -40
  %i.t = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSNtNtCsgczF5crJ4sT_3std2fs8DirEntry11sort_by_keyNtNtBC_4path7PathBufNvMsA_BA_By_4pathE0Csd1XE8irAZDx_17migrations_macros(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s), !noalias !147
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyNtNtB16_4path7PathBufNvMsA_B14_B12_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.u = add nuw nsw i64 %.sroa.01.0.i19.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyNtNtB16_4path7PathBufNvMsA_B14_B12_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i22.i = phi i64 [ %i.y, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.1.i22.i ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -40
  %i.x = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSNtNtCsgczF5crJ4sT_3std2fs8DirEntry11sort_by_keyNtNtBC_4path7PathBufNvMsA_BA_By_4pathE0Csd1XE8irAZDx_17migrations_macros(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w), !noalias !147
  br i1 %i.x, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyNtNtB16_4path7PathBufNvMsA_B14_B12_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.y = add nuw nsw i64 %.sroa.01.1.i22.i, 1     ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.y, %i.m
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyNtNtB16_4path7PathBufNvMsA_B14_B12_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit.i, label %.lr.ph23.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyNtNtB16_4path7PathBufNvMsA_B14_B12_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph23.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 5 uses
  %i.z = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.z)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyNtNtB16_4path7PathBufNvMsA_B14_B12_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit.i
  %i.aa = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  %or.cond.not.i = and i1 %i.q, %.not.i.i.i
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtCsgczF5crJ4sT_3std2fs8DirEntry7reverseCsd1XE8irAZDx_17migrations_macros.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i7.i = tail call noundef range(i64 0, 230584300921369396) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.ab = shl nuw nsw i64 %.sroa.0.0.i7.i, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyNtNtB17_4path7PathBufNvMsA_B15_B13_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i8.i = tail call noundef range(i64 0, 230584300921369396) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyNtNtB19_4path7PathBufNvMsA_B17_B15_4pathE0ECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i8.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i8.i, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyNtNtB17_4path7PathBufNvMsA_B15_B13_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtCsgczF5crJ4sT_3std2fs8DirEntry7reverseCsd1XE8irAZDx_17migrations_macros.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgczF5crJ4sT_3std2fs8DirEntryECsd1XE8irAZDx_17migrations_macros.exit.i.i.i, %.preheader17.i, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i404751.i, %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgczF5crJ4sT_3std2fs8DirEntryECsd1XE8irAZDx_17migrations_macros.exit.i.i.i ]
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyNtNtB17_4path7PathBufNvMsA_B15_B13_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ag = phi i64 [ %i.aa, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i404751.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i404751.i
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgczF5crJ4sT_3std2fs8DirEntryECsd1XE8irAZDx_17migrations_macros.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.am, %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgczF5crJ4sT_3std2fs8DirEntryECsd1XE8irAZDx_17migrations_macros.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ai = xor i64 %.sroa.0.017.i.i.i, -1
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ak = getelementptr [40 x i8], ptr %i.ah, i64 %i.ai
  invoke void @_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsd1XE8irAZDx_17migrations_macros(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, i64 noundef 5)
          to label %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgczF5crJ4sT_3std2fs8DirEntryECsd1XE8irAZDx_17migrations_macros.exit.i.i.i unwind label %bb.r, !noalias !147

bb.r:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #23, !noalias !147
  unreachable

_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgczF5crJ4sT_3std2fs8DirEntryECsd1XE8irAZDx_17migrations_macros.exit.i.i.i: ; preds = %bb.q
  %i.am = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.am, %i.ag
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtCsgczF5crJ4sT_3std2fs8DirEntry7reverseCsd1XE8irAZDx_17migrations_macros.exit.i, label %bb.q

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyNtNtB17_4path7PathBufNvMsA_B15_B13_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtCsgczF5crJ4sT_3std2fs8DirEntry7reverseCsd1XE8irAZDx_17migrations_macros.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.af, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtCsgczF5crJ4sT_3std2fs8DirEntry7reverseCsd1XE8irAZDx_17migrations_macros.exit.i ], [ %i.ad, %bb.p ], [ %i.ab, %bb.o ] ; 2 uses
  %i.an = lshr i64 %.sroa.023.0, 1
  %i.ao = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ap = sub nsw i64 %factor, %i.an
  %i.aq = add nuw nsw i64 %i.ao, %factor
  %i.ar = mul i64 %i.ap, %.sroa.0.0
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = xor i64 %i.as, %i.ar
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 false)
  %i.av = trunc nuw nsw i64 %i.au to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyNtNtB1a_4path7PathBufNvMsA_B18_B16_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit
  %.sroa.02.138 = phi i64 [ %7, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyNtNtB1a_4path7PathBufNvMsA_B18_B16_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit ], [ %.sroa.02.0, %bb.g ] ; 4 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyNtNtB1a_4path7PathBufNvMsA_B18_B16_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %6 = getelementptr i8, ptr %i.a, i64 %.sroa.02.138
  %i.aw = getelementptr i8, ptr %6, i64 -1
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !4
  %.not29 = icmp ult i8 %i.ax, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyNtNtB1a_4path7PathBufNvMsA_B18_B16_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyNtNtB1a_4path7PathBufNvMsA_B18_B16_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyNtNtB1a_4path7PathBufNvMsA_B18_B16_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.az, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.s:                                             ; preds = %.lr.ph
  %7 = add i64 %.sroa.02.138, -1                  ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.b, i64 %.sroa.02.138
  %8 = getelementptr i8, ptr %i.ba, i64 -8
  %i.bb = load i64, ptr %8, align 8, !noundef !4  ; 3 uses
  %i.bc = lshr i64 %i.bb, 1                       ; 5 uses
  %i.bd = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.be = add nuw i64 %i.bc, %i.bd                ; 5 uses
  %i.bf = sub i64 %.sroa.09.0, %i.be
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bf ; 3 uses
  %i.bh = icmp samesign ugt i64 %i.be, %3
  %i.bi = trunc i64 %.sroa.023.137 to i1
  %i.bj = or i64 %i.bb, %.sroa.023.137
  %i.bk = trunc i64 %i.bj to i1
  %or.cond3.i = or i1 %i.bh, %i.bk
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bl = trunc i64 %i.bb to i1
  br i1 %i.bl, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bm = shl nuw nsw i64 %i.be, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyNtNtB1a_4path7PathBufNvMsA_B18_B16_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bi, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.bn = or i64 %i.bc, 1
  %i.bo = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true)
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 1
  %i.br = xor i32 %i.bq, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyNtNtB19_4path7PathBufNvMsA_B17_B15_4pathE0ECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 %i.bg, i64 noundef range(i64 0, 230584300921369396) %i.bc, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.v

bb.x:                                             ; preds = %bb.y, %bb.v
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyNtNtB11_4path7PathBufNvMsA_BZ_BX_4pathE0ECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 %i.bg, i64 noundef range(i64 0, 230584300921369396) %i.be, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.bs = shl nuw nsw i64 %i.be, 1
  %i.bt = or disjoint i64 %i.bs, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyNtNtB1a_4path7PathBufNvMsA_B18_B16_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit

bb.y:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bg, i64 %i.bc
  %i.bv = or i64 %i.bd, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyNtNtB19_4path7PathBufNvMsA_B17_B15_4pathE0ECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 230584300921369396) %i.bd, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyNtNtB1a_4path7PathBufNvMsA_B18_B16_4pathE0ECsd1XE8irAZDx_17migrations_macros.exit: ; preds = %bb.u, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.bt, %bb.x ], [ %i.bm, %bb.u ] ; 2 uses
  %i.ca = icmp ugt i64 %7, 1
  br i1 %i.ca, label %.lr.ph, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.cb = add i64 %.sroa.02.1.lcssa, 1
  %i.cc = lshr i64 %.sroa.018.0, 1
  %i.cd = add nuw i64 %i.cc, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.ce = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ce, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cf = or i64 %1, 1
  %i.cg = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtCsgczF5crJ4sT_3std2fs8DirEntryNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyNtNtB19_4path7PathBufNvMsA_B17_B15_4pathE0ECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsd1XE8irAZDx_17migrations_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !154

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !5, !alias.scope !151, !noundef !4 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !151
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !151
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !151
  %i.j = load i64, ptr %i.a, align 8, !range !155, !noalias !151, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !156, !noalias !151, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !151
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #24
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !151, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !151
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !151
  %i.q = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !151
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSNtNtCsgczF5crJ4sT_3std2fs8DirEntry11sort_by_keyNtNtBC_4path7PathBufNvMsA_BA_By_4pathE0Csd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsA_NtCsgczF5crJ4sT_3std2fsNtB5_8DirEntry4path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMsA_NtCsgczF5crJ4sT_3std2fsNtB5_8DirEntry4path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %_RNvYNvMsA_NtCsgczF5crJ4sT_3std2fsNtB8_8DirEntry4pathINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRBv_EE8call_mutCsd1XE8irAZDx_17migrations_macros.exit unwind label %bb.b

.body:                                            ; preds = %bb.e, %bb.f, %bb.b, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.e, %bb.b ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef align 8 dereferenceable(24) %i.d) #25
          to label %common.resume unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvYNvMsA_NtCsgczF5crJ4sT_3std2fsNtB8_8DirEntry4pathINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRBv_EE8call_mutCsd1XE8irAZDx_17migrations_macros.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val2 = load i64, ptr %i.g, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.val3 = load ptr, ptr %i.h, align 8            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val4 = load i64, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs16_NtCsgczF5crJ4sT_3std4pathNtB6_4Path10components(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val2)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_RNvYNvMsA_NtCsgczF5crJ4sT_3std2fsNtB8_8DirEntry4pathINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRBv_EE8call_mutCsd1XE8irAZDx_17migrations_macros.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void @_RNvMs16_NtCsgczF5crJ4sT_3std4pathNtB6_4Path10components(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val3, i64 noundef %.val4)
          to label %.noexc5 unwind label %bb.c

.noexc5:                                          ; preds = %.noexc
  %i.j = invoke noundef range(i8 -1, 2) i8 @_RNvNtCsgczF5crJ4sT_3std4path18compare_components(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.noexc5, %.noexc, %_RNvYNvMsA_NtCsgczF5crJ4sT_3std2fsNtB8_8DirEntry4pathINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRBv_EE8call_mutCsd1XE8irAZDx_17migrations_macros.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros(ptr noalias noundef align 8 dereferenceable(24) %i.c) #25
          to label %.body unwind label %bb.m

bb.d:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.c, align 8, !range !5, !alias.scope !157, !noundef !4 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.m, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val3.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !168, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !169
  br label %.body

bb.g:                                             ; preds = %bb.d
  %.val.i.i.i.i = load i64, ptr %i.c, align 8, !range !5, !alias.scope !157, !noundef !4 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val1.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !168, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !172
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsd1XE8irAZDx_17migrations_macros(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i7 = load i64, ptr %i.d, align 8, !range !5, !alias.scope !175, !noundef !4 ; 2 uses
  %i.p = icmp eq i64 %.val2.i.i.i.i7, 0
  br i1 %i.p, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val3.i.i.i.i8 = load ptr, ptr %i.f, align 8, !alias.scope !186, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i8, i64 noundef %.val2.i.i.i.i7, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !187
  br label %common.resume

bb.k:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit
  %.val.i.i.i.i10 = load i64, ptr %i.d, align 8, !range !5, !alias.scope !175, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i.i.i10, 0
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit12, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i11 = load ptr, ptr %i.f, align 8, !alias.scope !186, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i11, i64 noundef %.val.i.i.i.i10, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !190
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit12

common.resume:                                    ; preds = %.body, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.i ], [ %i.o, %bb.j ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsd1XE8irAZDx_17migrations_macros.exit12: ; preds = %bb.k, %bb.l
  %i.r = icmp slt i8 %i.j, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.r
end_hunk_0
